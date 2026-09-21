Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_warmup?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
begin_hunk_0_@_ZN7CaDiCaL8Internal13warmup_assignEiPNS_6ClauseE:bb.a
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #12 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i32 %1, ptr %i.ax, align 4, !tbaa !172
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !189
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bc) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !171
  store ptr %i.az, ptr %i.i, align 8, !tbaa !170
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !189
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.be = sub nsw i32 0, %1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %i.be, i32 1)
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !173
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !175 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !175
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bk, i32 0, i32 1, i32 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  ret void
}

declare void @_ZN7CaDiCaL8Internal21build_chain_for_unitsEiPNS_6ClauseEb(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !193    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not23.i = icmp ult i64 %i.n, %i.i
  br i1 %.not23.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !191
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #12 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !177, !alias.scope !210
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i25.i = icmp eq ptr %i.c, null
  br i1 %.not.i25.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #13
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !193
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !192
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !191
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit: ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal13warmup_decideEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4, !tbaa !182
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !171  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.c
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.c
  %i.n = load i32, ptr %i.m, align 4, !tbaa !172  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !178
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !179   ; 2 uses
  %i.t = icmp slt i8 %i.s, 0
  br i1 %i.t, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not61 = icmp eq i8 %i.s, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal15new_trail_levelEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #14
  br label %.thread76

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.n) #14
  br label %.thread76

bb.f:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.k, %i.c
  br i1 %i.u, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !170  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !171  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = ashr exact i64 %i.ab, 2
  %.not = icmp eq ptr %i.x, %i.y
  br i1 %.not, label %bb.r, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %.04186 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.m ] ; 2 uses
  %.04285 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.m ]
  %.04484 = phi i32 [ 0, %.lr.ph ], [ %.246.ph, %bb.m ] ; 5 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !171 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.04186 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !172 ; 7 uses
  store i32 %.04285, ptr %i.af, align 4, !tbaa !172
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !178
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !179 ; 2 uses
  %i.al = icmp slt i8 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not55 = icmp eq i8 %i.ak, 0
  br i1 %.not55, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not56 = icmp eq i32 %.04484, 0
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal15better_decisionEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.ag, i32 noundef %.04484) #14
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.k
  %.246.ph = phi i32 [ %.04484, %bb.k ], [ %i.ag, %bb.l ], [ %.04484, %bb.h ] ; 2 uses
  %i.an = add i64 %.04186, 1                      ; 2 uses
  %.not54 = icmp eq i64 %i.an, %i.ac
  br i1 %.not54, label %.thread68.loopexit, label %bb.h, !llvm.loop !211

bb.n:                                             ; preds = %bb.i
  %.not57 = icmp eq i32 %i.ag, 0
  br i1 %.not57, label %.thread68, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !172
  tail call void @_ZN7CaDiCaL8Internal15new_trail_levelEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #14
  tail call void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14
  br label %.thread76

.thread68.loopexit:                               ; preds = %bb.m
  %.pre.pre = load ptr, ptr %i.v, align 8, !tbaa !171
  br label %.thread68

.thread68:                                        ; preds = %.thread68.loopexit, %bb.n
  %.pre = phi ptr [ %i.ae, %bb.n ], [ %.pre.pre, %.thread68.loopexit ] ; 3 uses
  %.04482 = phi i32 [ %.04484, %bb.n ], [ %.246.ph, %.thread68.loopexit ] ; 2 uses
  %.not5988 = icmp eq i64 %i.ab, 4
  br i1 %.not5988, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %.thread68
  %scevgep = getelementptr nuw i8, ptr %.pre, i64 4
  %i.ao = add i64 %i.ab, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.pre, ptr nonnull align 4 %scevgep, i64 %i.ao, i1 false), !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph90, %.thread68
  %i.ap = getelementptr i8, ptr %.pre, i64 %i.ab
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  store i32 %i.ag, ptr %i.aq, align 4, !tbaa !172
  %.not60 = icmp eq i32 %.04482, 0
  br i1 %.not60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.04482) #14
  br label %.thread76

bb.q:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i8 1, ptr %i.ar, align 8, !tbaa !212
  br label %bb.u

bb.r:                                             ; preds = %bb.g, %bb.f
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %2 = load i8, ptr %1, align 4, !tbaa !213, !range !214, !noundef !215
  %3 = trunc nuw i8 %2 to i1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4412
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  %7 = select i1 %3, i1 true, i1 %6
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !216
  %i.au = add nsw i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !216
  %i.av = tail call noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ax = tail call noundef i32 @llvm.abs.i32(i32 %i.av, i1 true)
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !217
  %i.ba = getelementptr inbounds nuw [6 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.bc = load i8, ptr %i.bb, align 1
  %.mask.i = and i8 %i.bc, -32
  %i.bd = icmp eq i8 %.mask.i, 96
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !218
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !218
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bh = tail call noundef i32 @_ZN7CaDiCaL8Internal12decide_phaseEib(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.av, i1 noundef zeroext %7) #14 ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal15new_trail_levelEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.bh) #14
  %i.bi = load ptr, ptr @_ZN7CaDiCaL8Internal15decision_reasonE, align 8, !tbaa !176
  tail call void @_ZN7CaDiCaL8Internal13warmup_assignEiPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.bh, ptr noundef %i.bi)
  br label %.thread76

bb.u:                                             ; preds = %bb.b, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1185
  store i8 0, ptr %i.bj, align 1, !tbaa !219
  br label %.thread76

.thread76:                                        ; preds = %bb.p, %bb.o, %bb.d, %bb.e, %bb.t, %bb.u
  %.279 = phi i32 [ 20, %bb.u ], [ 0, %bb.t ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.o ], [ 0, %bb.p ]
  ret i32 %.279
}

declare void @_ZN7CaDiCaL8Internal15new_trail_levelEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal15better_decisionEii(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #3

declare noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #3

declare noundef i32 @_ZN7CaDiCaL8Internal12decide_phaseEib(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal6warmupEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4580
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !223
  %i.e = add nsw i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !224
  %i.r = icmp ne ptr %i.o, %i.q
  %i.s = zext i1 %i.r to i64
  %i.t = add nsw i64 %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %i.x = load i32, ptr %i.u, align 4, !tbaa !182  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !187
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !225
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef i32 @_ZN7CaDiCaL8Internal13warmup_decideEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal32warmup_propagate_beyond_conflictEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %.not10 = icmp eq i32 %i.ae, 0
  br i1 %.not10, label %bb.c, label %.critedge, !llvm.loop !220

.critedge:                                        ; preds = %bb.e
  %.pre = load i32, ptr %i.u, align 4, !tbaa !182
  %i.af = icmp eq i32 %.pre, 0
  %i.ag = zext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %.critedge12

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %i.ai = icmp eq i32 %i.x, 0
  %i.aj = zext i1 %i.ai to i8                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 4 uses
  store i8 1, ptr %i.ak, align 2, !tbaa !226
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %i.al = load i64, ptr %i.v, align 8, !tbaa !187
  %i.am = load i32, ptr %i.w, align 8, !tbaa !225
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call noundef i32 @_ZN7CaDiCaL8Internal13warmup_decideEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal32warmup_propagate_beyond_conflictEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %.not11 = icmp eq i32 %i.ap, 0
  br i1 %.not11, label %bb.f, label %.critedge12, !llvm.loop !221

bb.h:                                             ; preds = %bb.f
  store i8 %i.aj, ptr %i.ak, align 2, !tbaa !226
  tail call void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #14
  br label %bb.i

.critedge12:                                      ; preds = %bb.g, %.critedge
  %i.aq = phi ptr [ %i.ah, %.critedge ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ar = phi i8 [ %i.ag, %.critedge ], [ %i.aj, %bb.g ]
  %.1.lcssa = phi i32 [ %i.ae, %.critedge ], [ %i.ap, %bb.g ]
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !226
  br label %bb.i

bb.i:                                             ; preds = %.critedge12, %bb.h
  %i.as = phi ptr [ %i.aq, %.critedge12 ], [ %i.ak, %bb.h ]
  %.114 = phi i32 [ %.1.lcssa, %.critedge12 ], [ 0, %bb.h ]
  store i8 0, ptr %i.as, align 2, !tbaa !226
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.09 = phi i32 [ %.114, %bb.i ], [ 0, %bb.a ]
  ret i32 %.09
}

declare void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !180}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"_ZTSN7CaDiCaL9ReluctantE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !9, i64 41}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 long", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !14, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !15, i64 0}
!17 = !{!"_ZTSSt6vectorIlSaIlEE", !16, i64 0}
!18 = !{!"any p2 pointer", !12, i64 0}
!19 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !22, i64 0}
!24 = !{!"p1 _ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !12, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIS_IS_IlSaIlEESaIS1_EESaIS3_EE", !27, i64 0}
!29 = !{!"p1 omnipotent char", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIaSaIaEE", !32, i64 0}
!34 = !{!"_ZTSN7CaDiCaL6PhasesE", !33, i64 0, !33, i64 24, !33, i64 48, !33, i64 72, !33, i64 96}
!35 = !{!"p1 int", !12, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIjSaIjEE", !38, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIiSaIiEE", !42, i64 0}
!44 = !{!"_ZTSN7CaDiCaL5QueueE", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16}
!45 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !12, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !48, i64 0}
!50 = !{!"double", !5, i64 0}
!51 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !12, i64 0}
!52 = !{!"_ZTSN7CaDiCaL13score_smallerE", !51, i64 0}
!53 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !39, i64 0, !39, i64 24, !52, i64 48}
!54 = !{!"p1 double", !12, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIdSaIdEE", !57, i64 0}
!59 = !{!"p1 _ZTSN7CaDiCaL3VarE", !12, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !62, i64 0}
!64 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !12, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !67, i64 0}
!69 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !12, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !70, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !71, i64 0}
!73 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !72, i64 0}
!74 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !12, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !77, i64 0}
!79 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !12, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !12, i64 0}
!85 = !{!"_ZTS4Reap", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 24}
!86 = !{!"p1 _ZTS14cadical_kitten", !12, i64 0}
!87 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !12, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !90, i64 0}
!92 = !{!"_ZTSN7CaDiCaL3EMAE", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32}
!93 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !92, i64 0, !92, i64 40}
!94 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !92, i64 0, !92, i64 40}
!95 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !93, i64 0, !94, i64 80, !92, i64 160, !92, i64 200, !92, i64 240, !92, i64 280}
!96 = !{!"_ZTSN7CaDiCaL8AveragesE", !10, i64 0, !95, i64 8, !95, i64 328}
!97 = !{!"_ZTSN7CaDiCaL5DelayUt_E", !10, i64 0, !10, i64 8, !9, i64 16}
!98 = !{!"_ZTSN7CaDiCaL5DelayE", !97, i64 0}
!99 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !6, i64 0, !6, i64 4}
!100 = !{!"_ZTSN7CaDiCaL5LimitE", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !5, i64 160, !10, i64 176, !99, i64 184}
!101 = !{!"_ZTSN7CaDiCaL4LastUt_E", !10, i64 0}
!102 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !10, i64 0}
!103 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !10, i64 0, !10, i64 8, !10, i64 16}
!104 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !10, i64 0}
!105 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !10, i64 0}
!106 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !10, i64 0, !10, i64 8}
!107 = !{!"_ZTSN7CaDiCaL4LastUt5_E", !10, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt6_E", !10, i64 0, !10, i64 8}
!109 = !{!"_ZTSN7CaDiCaL4LastUt7_E", !10, i64 0, !10, i64 8, !10, i64 16}
!110 = !{!"_ZTSN7CaDiCaL4LastUt8_E", !10, i64 0}
!111 = !{!"_ZTSN7CaDiCaL4LastE", !101, i64 0, !102, i64 8, !102, i64 16, !102, i64 24, !102, i64 32, !102, i64 40, !103, i64 48, !104, i64 72, !105, i64 80, !105, i64 88, !106, i64 96, !107, i64 112, !108, i64 120, !109, i64 136, !110, i64 160}
!112 = !{!"_ZTSN7CaDiCaL3IncE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!113 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !12, i64 0}
!114 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !18, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!116 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !115, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !116, i64 0}
!118 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !117, i64 0}
!119 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !18, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !122, i64 0}
!124 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !18, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !125, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !126, i64 0}
!128 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !127, i64 0}
!129 = !{!"_ZTSN7CaDiCaL7OptionsE", !51, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !6, i64 480, !6, i64 484, !6, i64 488, !6, i64 492, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !6, i64 532, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552, !6, i64 556, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572, !6, i64 576, !6, i64 580, !6, i64 584, !6, i64 588, !6, i64 592, !6, i64 596, !6, i64 600, !6, i64 604, !6, i64 608, !6, i64 612, !6, i64 616, !6, i64 620, !6, i64 624, !6, i64 628, !6, i64 632, !6, i64 636, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !6, i64 668, !6, i64 672, !6, i64 676, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !6, i64 728, !6, i64 732, !6, i64 736, !6, i64 740, !6, i64 744, !6, i64 748, !6, i64 752, !6, i64 756, !6, i64 760, !6, i64 764, !6, i64 768, !6, i64 772, !6, i64 776, !6, i64 780, !6, i64 784, !6, i64 788, !6, i64 792, !6, i64 796, !6, i64 800, !6, i64 804, !6, i64 808, !6, i64 812, !6, i64 816, !6, i64 820, !6, i64 824, !6, i64 828, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !6, i64 856, !6, i64 860, !6, i64 864, !6, i64 868, !6, i64 872, !6, i64 876, !6, i64 880, !6, i64 884, !6, i64 888, !6, i64 892, !6, i64 896, !6, i64 900, !6, i64 904, !6, i64 908, !6, i64 912, !6, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !6, i64 940, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !6, i64 964, !6, i64 968, !6, i64 972, !6, i64 976, !6, i64 980, !6, i64 984, !6, i64 988, !6, i64 992, !6, i64 996, !6, i64 1000, !6, i64 1004, !6, i64 1008, !6, i64 1012}
!130 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!131 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !5, i64 0, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104}
!132 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!133 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!134 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !10, i64 0, !10, i64 8, !10, i64 16}
!135 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !50, i64 0, !50, i64 8}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut_E", !10, i64 0, !10, i64 8}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut0_E", !10, i64 0, !10, i64 8}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !10, i64 0, !10, i64 8, !137, i64 16, !137, i64 32, !137, i64 48, !138, i64 64}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !10, i64 0, !10, i64 8, !10, i64 16}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !10, i64 0, !10, i64 8}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !10, i64 0, !10, i64 8, !10, i64 16}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt13_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!147 = !{!"_ZTSN7CaDiCaL5StatsUt14_E", !10, i64 0, !10, i64 8}
!148 = !{!"_ZTSN7CaDiCaL5StatsUt15_E", !10, i64 0, !10, i64 8}
!149 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!150 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !149, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseImSaImEE", !150, i64 0}
!152 = !{!"_ZTSSt6vectorImSaImEE", !151, i64 0}
!153 = !{!"p1 _ZTSSt6vectorImSaImEE", !12, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !153, i64 0, !153, i64 8, !153, i64 16}
!155 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !154, i64 0}
!156 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !155, i64 0}
!157 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !156, i64 0}
!158 = !{!"_ZTSN7CaDiCaL5StatsUt16_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168}
!159 = !{!"_ZTSN7CaDiCaL5StatsUt17_E", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!160 = !{!"_ZTSN7CaDiCaL5StatsE", !51, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !130, i64 40, !131, i64 96, !132, i64 208, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !133, i64 384, !134, i64 424, !134, i64 448, !135, i64 472, !136, i64 488, !139, i64 520, !140, i64 600, !141, i64 656, !142, i64 696, !143, i64 736, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !10, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !10, i64 1464, !10, i64 1472, !10, i64 1480, !10, i64 1488, !10, i64 1496, !10, i64 1504, !10, i64 1512, !10, i64 1520, !10, i64 1528, !10, i64 1536, !10, i64 1544, !10, i64 1552, !10, i64 1560, !10, i64 1568, !10, i64 1576, !10, i64 1584, !10, i64 1592, !10, i64 1600, !10, i64 1608, !10, i64 1616, !10, i64 1624, !10, i64 1632, !10, i64 1640, !144, i64 1648, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !145, i64 1696, !10, i64 1720, !10, i64 1728, !10, i64 1736, !10, i64 1744, !10, i64 1752, !10, i64 1760, !10, i64 1768, !10, i64 1776, !10, i64 1784, !10, i64 1792, !10, i64 1800, !10, i64 1808, !10, i64 1816, !10, i64 1824, !10, i64 1832, !10, i64 1840, !10, i64 1848, !10, i64 1856, !10, i64 1864, !10, i64 1872, !10, i64 1880, !10, i64 1888, !10, i64 1896, !10, i64 1904, !10, i64 1912, !10, i64 1920, !10, i64 1928, !10, i64 1936, !10, i64 1944, !10, i64 1952, !10, i64 1960, !10, i64 1968, !10, i64 1976, !10, i64 1984, !10, i64 1992, !10, i64 2000, !10, i64 2008, !10, i64 2016, !10, i64 2024, !10, i64 2032, !10, i64 2040, !10, i64 2048, !10, i64 2056, !10, i64 2064, !10, i64 2072, !10, i64 2080, !10, i64 2088, !10, i64 2096, !10, i64 2104, !10, i64 2112, !10, i64 2120, !10, i64 2128, !10, i64 2136, !10, i64 2144, !10, i64 2152, !146, i64 2160, !146, i64 2200, !147, i64 2240, !10, i64 2256, !10, i64 2264, !10, i64 2272, !10, i64 2280, !148, i64 2288, !152, i64 2304, !157, i64 2328, !158, i64 2352, !159, i64 2528}
!161 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !29, i64 0, !29, i64 8, !29, i64 16}
!162 = !{!"_ZTSN7CaDiCaL5ArenaE", !51, i64 0, !161, i64 8, !161, i64 32}
!163 = !{!"_ZTSN7CaDiCaL6FormatE", !29, i64 0, !10, i64 8, !10, i64 16}
!164 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!165 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !164, i64 0, !10, i64 8, !5, i64 16}
!166 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !12, i64 0}
!167 = !{!"_ZTSN7CaDiCaL5RangeE", !35, i64 0}
!168 = !{!"_ZTSN7CaDiCaL5SangeE", !35, i64 0}
!169 = !{!"_ZTSN7CaDiCaL8InternalE", !6, i64 0, !5, i64 4, !5, i64 12, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !5, i64 35, !11, i64 40, !10, i64 88, !6, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !9, i64 144, !17, i64 152, !17, i64 176, !17, i64 200, !17, i64 224, !17, i64 248, !17, i64 272, !23, i64 296, !28, i64 320, !9, i64 344, !9, i64 345, !6, i64 348, !34, i64 352, !29, i64 472, !33, i64 480, !39, i64 504, !43, i64 528, !39, i64 552, !44, i64 576, !49, i64 600, !50, i64 624, !53, i64 632, !58, i64 688, !63, i64 712, !43, i64 736, !68, i64 760, !17, i64 784, !17, i64 808, !73, i64 832, !73, i64 856, !43, i64 880, !17, i64 904, !78, i64 928, !83, i64 952, !84, i64 976, !84, i64 984, !84, i64 992, !84, i64 1000, !84, i64 1008, !9, i64 1016, !9, i64 1017, !9, i64 1018, !6, i64 1020, !10, i64 1024, !84, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !10, i64 1072, !10, i64 1080, !43, i64 1088, !43, i64 1112, !43, i64 1136, !43, i64 1160, !9, i64 1184, !9, i64 1185, !43, i64 1192, !43, i64 1216, !43, i64 1240, !43, i64 1264, !43, i64 1288, !43, i64 1312, !43, i64 1336, !85, i64 1360, !43, i64 2176, !9, i64 2200, !10, i64 2208, !86, i64 2216, !10, i64 2224, !43, i64 2232, !91, i64 2256, !23, i64 2280, !96, i64 2304, !5, i64 2952, !98, i64 3000, !100, i64 3024, !111, i64 3216, !112, i64 3384, !98, i64 3440, !98, i64 3464, !113, i64 3488, !118, i64 3496, !123, i64 3520, !128, i64 3544, !129, i64 3568, !160, i64 4584, !162, i64 7144, !163, i64 7200, !165, i64 7224, !51, i64 7256, !166, i64 7264, !9, i64 7272, !167, i64 7280, !168, i64 7288}
!170 = !{!40, !35, i64 8}
!171 = !{!40, !35, i64 0}
!172 = !{!6, !6, i64 0}
!173 = !{!80, !79, i64 0}
!174 = !{!"p1 _ZTSN7CaDiCaL5WatchE", !12, i64 0}
!175 = !{!174, !174, i64 0}
!176 = !{!84, !84, i64 0}
!177 = !{i64 0, i64 8, !176, i64 8, i64 4, !172, i64 12, i64 4, !172}
!178 = !{!169, !29, i64 472}
!179 = !{!5, !5, i64 0}
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!60, !59, i64 0}
!182 = !{!169, !6, i64 348}
!183 = !{!"_ZTSN7CaDiCaL3VarE", !6, i64 0, !6, i64 4, !84, i64 8}
!184 = !{!183, !6, i64 0}
!185 = !{!183, !6, i64 4}
!186 = !{!183, !84, i64 8}
!187 = !{!169, !10, i64 2224}
!188 = !{!30, !29, i64 0}
!189 = !{!40, !35, i64 16}
!190 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE17_Vector_impl_dataE", !174, i64 0, !174, i64 8, !174, i64 16}
!191 = !{!190, !174, i64 8}
!192 = !{!190, !174, i64 16}
!193 = !{!190, !174, i64 0}
!194 = distinct !{!194, !180}
!195 = distinct !{!195, !180}
!196 = distinct !{!196, !180}
!197 = distinct !{!197, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!198 = distinct !{!198, !197, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!199 = distinct !{!199, !197, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!200 = distinct !{!200, !180}
!201 = !{!169, !10, i64 1040}
!202 = !{!169, !10, i64 5256}
!203 = !{!"_ZTSN7CaDiCaL5WatchE", !84, i64 0, !6, i64 8, !6, i64 12}
!204 = !{!203, !6, i64 8}
!205 = !{!199, !198}
!206 = !{!169, !10, i64 5264}
!207 = distinct !{!207, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!208 = distinct !{!208, !207, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!209 = distinct !{!209, !207, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!210 = !{!209, !208}
!211 = distinct !{!211, !180}
!212 = !{!169, !9, i64 1184}
!213 = !{!169, !9, i64 28}
!214 = !{i8 0, i8 2}
!215 = !{}
!216 = !{!169, !10, i64 5240}
!217 = !{!65, !64, i64 0}
!218 = !{!169, !10, i64 5248}
!219 = !{!169, !9, i64 1185}
!220 = distinct !{!220, !180}
!221 = distinct !{!221, !180}
!222 = !{!169, !6, i64 4580}
!223 = !{!169, !10, i64 5272}
!224 = !{!35, !35, i64 0}
!225 = !{!169, !6, i64 96}
!226 = !{!169, !9, i64 34}
end_hunk_0
