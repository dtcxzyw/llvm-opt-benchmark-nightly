Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaInit?download=true
inline.NumInlined: 8999
inline.NumDeleted: 3745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang22InitializationSequence14InitializeFromERNS_4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEN4llvm15MutableArrayRefIPNS_4ExprEEEbb:bb.a
  %.sroa.0.0.copyload.i310.pre = load i64, ptr %i.qn, align 16, !tbaa !713
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge397, %bb.dk
  %.sroa.0.0.copyload.i310 = phi i64 [ %.sroa.0.0.copyload.i310.pre, %._crit_edge397 ], [ %.sroa.0.0.copyload.i308, %bb.dk ]
  store i64 %.sroa.0.0.copyload.i310, ptr %14, align 8, !tbaa !713
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm, %bb.dj
  %.0219.not = phi i1 [ false, %bb.dm ], [ true, %bb.dl ], [ true, %bb.dj ]
  %.sroa.029.0.copyload = load i64, ptr %14, align 8, !tbaa !713
  %i.rg = load ptr, ptr %i.a, align 8, !tbaa !1274
  call fastcc void @_ZL24TryUserDefinedConversionRN5clang4SemaENS_8QualTypeERKNS_18InitializationKindEPNS_4ExprERNS_22InitializationSequenceEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, i64 %.sroa.029.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.rg, ptr noundef nonnull align 8 dereferenceable(8084) %0, i1 noundef zeroext %6)
  %.val257 = load ptr, ptr %i.eo, align 8, !tbaa !1152
  %i.rh = getelementptr i8, ptr %.val257, i64 96
  %.val257.val = load i64, ptr %i.rh, align 8
  call fastcc void @_ZL22MaybeProduceObjCObjectRN5clang4SemaERNS_22InitializationSequenceERKNS_17InitializedEntityE(i64 %.val257.val, ptr noundef nonnull align 8 dereferenceable(8084) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.ri = load i32, ptr %0, align 8, !tbaa !1264
  %i.rj = icmp eq i32 %i.ri, 0
  %or.cond14.not = or i1 %.0219.not, %i.rj
  br i1 %or.cond14.not, label %bb.ek, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.sroa.0.0.copyload.i311 = load i64, ptr %i.z, align 8, !tbaa !713
  call void @_ZN5clang22InitializationSequence23AddAtomicConversionStepENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(8084) %0, i64 %.sroa.0.0.copyload.i311)
  br label %bb.ek

bb.dp:                                            ; preds = %bb.di
  %.0.copyload.i.i.i.i312.pr.pre = load i64, ptr %15, align 8 ; 3 uses
  %i.rk = icmp ult i64 %.0.copyload.i.i.i.i312.pr.pre, 16
  br i1 %i.rk, label %.thread375, label %..thread422_crit_edge

..thread422_crit_edge:                            ; preds = %bb.dp
  %.pre431 = and i64 %.0.copyload.i.i.i.i312.pr.pre, -16
  %.pre432 = inttoptr i64 %.pre431 to ptr
  br label %.thread422

.thread422:                                       ; preds = %..thread422_crit_edge, %bb.dg
  %.pre-phi433 = phi ptr [ %.pre432, %..thread422_crit_edge ], [ %i.pu, %bb.dg ]
  %.0.copyload.i.i.i.i312.pr424 = phi i64 [ %.0.copyload.i.i.i.i312.pr.pre, %..thread422_crit_edge ], [ %.0.copyload.i.i.i.i303, %bb.dg ]
  %i.rl = load ptr, ptr %.pre-phi433, align 8, !tbaa !716
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.rm, align 8, !tbaa !713
  %i.rn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.ro = inttoptr i64 %i.rn to ptr
  %i.rp = load ptr, ptr %i.ro, align 16, !tbaa !716 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 16
  %i.rs = icmp eq i8 %i.rr, 13
  %.not7.i.i = icmp ne ptr %i.rp, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.rs
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type13isNullPtrTypeEv.exit, label %.thread375

_ZNK5clang4Type13isNullPtrTypeEv.exit:            ; preds = %.thread422
  %i.rt = load i32, ptr %i.rq, align 16
  %i.ru = and i32 %i.rt, 536346624
  %i.rv = icmp eq i32 %i.ru, 264765440
  br i1 %i.rv, label %bb.dq, label %.thread375

bb.dq:                                            ; preds = %_ZNK5clang4Type13isNullPtrTypeEv.exit
  %.0.copyload.i.i.i.i.i314 = load i64, ptr %14, align 8 ; 2 uses
  %i.rw = and i64 %.0.copyload.i.i.i.i.i314, -16
  %i.rx = inttoptr i64 %i.rw to ptr
  %i.ry = load ptr, ptr %i.rx, align 16, !tbaa !716
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %.sroa.0.0.copyload.i.i.i.i315 = load i64, ptr %i.rz, align 8, !tbaa !713
  %i.sa = and i64 %.sroa.0.0.copyload.i.i.i.i315, -16
  %i.sb = inttoptr i64 %i.sa to ptr
  %i.sc = load ptr, ptr %i.sb, align 16, !tbaa !716 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 16
  %i.sf = icmp eq i8 %i.se, 13
  %.not6.i = icmp ne ptr %i.sc, null
  %.not.not.not.i = and i1 %.not6.i, %i.sf
  br i1 %.not.not.not.i, label %_ZNK5clang4Type13isBooleanTypeEv.exit, label %.thread375

_ZNK5clang4Type13isBooleanTypeEv.exit:            ; preds = %bb.dq
  %i.sg = load i32, ptr %i.sd, align 16
  %i.sh = and i32 %i.sg, 536346624
  %i.si = icmp eq i32 %i.sh, 237502464
  br i1 %i.si, label %bb.dr, label %.thread375

bb.dr:                                            ; preds = %_ZNK5clang4Type13isBooleanTypeEv.exit
  %i.sj = load i16, ptr %3, align 4
  %i.sk = and i16 %i.sj, 255
  %i.sl = icmp eq i16 %i.sk, 0
  br i1 %i.sl, label %bb.ds, label %.thread375

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.sm = load ptr, ptr %i.a, align 8, !tbaa !1274
  %i.sn = load i24, ptr %i.sm, align 8
  %i.so = and i24 %i.sn, 1536
  %i.sp = icmp ne i24 %i.so, 0
  call void @_ZN5clang26ImplicitConversionSequence16getNullptrToBoolENS_8QualTypeES1_b(ptr dead_on_unwind nonnull writable sret(%"class.clang::ImplicitConversionSequence") align 8 %21, i64 %.0.copyload.i.i.i.i312.pr424, i64 %.0.copyload.i.i.i.i.i314, i1 noundef zeroext %i.sp)
  %.sroa.025.0.copyload = load i64, ptr %14, align 8, !tbaa !713
  call void @_ZN5clang22InitializationSequence25AddConversionSequenceStepERKNS_26ImplicitConversionSequenceENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(8084) %0, ptr noundef nonnull align 8 dereferenceable(152) %21, i64 %.sroa.025.0.copyload, i1 noundef zeroext false)
  %i.sq = load i32, ptr %21, align 8
  %i.sr = and i32 %i.sq, 2147483647
  %i.ss = icmp eq i32 %i.sr, 3
  br i1 %i.ss, label %bb.dt, label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit

bb.dt:                                            ; preds = %bb.ds
  %i.st = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN5clang27AmbiguousConversionSequence8destructEv(ptr noundef nonnull align 8 dereferenceable(96) %i.st) #25
  br label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit

_ZN5clang26ImplicitConversionSequenceD2Ev.exit:   ; preds = %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.ek

.thread375:                                       ; preds = %bb.dq, %.thread422, %bb.df, %bb.dr, %_ZNK5clang4Type13isBooleanTypeEv.exit, %_ZNK5clang4Type13isNullPtrTypeEv.exit, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.su = load ptr, ptr %i.a, align 8, !tbaa !1274
  %.sroa.024.0.copyload = load i64, ptr %14, align 8, !tbaa !713
  %i.sv = load i16, ptr %3, align 4
  %i.sw = icmp ugt i16 %i.sv, 1023
  call void @_ZN5clang4Sema21TryImplicitConversionEPNS_4ExprENS_8QualTypeEbNS0_15AllowedExplicitEbbb(ptr dead_on_unwind nonnull writable sret(%"class.clang::ImplicitConversionSequence") align 8 %22, ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.su, i64 %.sroa.024.0.copyload, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %i.sw, i1 noundef zeroext %i.mv) #25
  %i.sx = load i32, ptr %22, align 8
  %i.sy = and i32 %i.sx, 2147483647
  switch i32 %i.sy, label %.thread381 [
    i32 0, label %bb.du
    i32 5, label %bb.ee
  ]

bb.du:                                            ; preds = %.thread375
  %i.sz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ta = load i64, ptr %i.sz, align 8            ; 2 uses
  %i.tb = and i64 %i.ta, 65280
  %i.tc = icmp eq i64 %i.tb, 6400
  br i1 %i.tc, label %bb.dv, label %.thread381

bb.dv:                                            ; preds = %bb.du
  %i.td = load i32, ptr %2, align 8, !tbaa !1162
  switch i32 %i.td, label %bb.dy [
    i32 0, label %bb.dw
    i32 6, label %bb.dw
    i32 22, label %bb.dw
    i32 21, label %bb.dw
    i32 2, label %bb.dw
    i32 1, label %bb.dx
    i32 20, label %bb.dx
    i32 3, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 4, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 5, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 8, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 9, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 10, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 11, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 7, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 12, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 13, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 16, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 14, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 15, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 17, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 18, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
    i32 19, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
  ]

bb.dw:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !713
  br label %_ZNK5clang17InitializedEntity7getDeclEv.exit319

bb.dx:                                            ; preds = %bb.dv, %bb.dv
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i.i.i.i318 = load i64, ptr %i.tg, align 8
  %i.th = and i64 %.0.copyload.i.i.i.i318, -8
  %i.ti = inttoptr i64 %i.th to ptr
  br label %_ZNK5clang17InitializedEntity7getDeclEv.exit319

bb.dy:                                            ; preds = %bb.dv
  unreachable

_ZNK5clang17InitializedEntity7getDeclEv.exit319:  ; preds = %bb.dw, %bb.dx
  %.0.i317 = phi ptr [ %i.tf, %bb.dw ], [ %i.ti, %bb.dx ] ; 2 uses
  %.not245 = icmp eq ptr %.0.i317, null
  br i1 %.not245, label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread, label %bb.dz

bb.dz:                                            ; preds = %_ZNK5clang17InitializedEntity7getDeclEv.exit319
  %i.tj = getelementptr inbounds nuw i8, ptr %.0.i317, i64 96
  %i.tk = load i32, ptr %i.tj, align 8
  %i.tl = and i32 %i.tk, 1044480
  %i.tm = icmp ne i32 %i.tl, 36864
  br label %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread

_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread: ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dz, %_ZNK5clang17InitializedEntity7getDeclEv.exit319
  %.0217 = phi i1 [ %i.tm, %bb.dz ], [ true, %_ZNK5clang17InitializedEntity7getDeclEv.exit319 ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ], [ true, %bb.dv ]
  %i.tn = trunc i64 %i.ta to i32
  %i.to = and i32 %i.tn, 255
  %.off = add nsw i32 %i.to, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  store i32 6, ptr %23, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.tp, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  call void @_ZN5clang26StandardConversionSequence23setAsIdentityConversionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.tq) #25
  %i.tr = load i32, ptr %23, align 8              ; 2 uses
  %i.ts = and i32 %i.tr, 2147483647
  %i.tt = icmp eq i32 %i.ts, 3
  br i1 %i.tt, label %bb.eb, label %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN5clang27AmbiguousConversionSequence8destructEv(ptr noundef nonnull align 8 dereferenceable(96) %i.tq) #25
  %.pre.i.i = load i32, ptr %23, align 8
  br label %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit

_ZN5clang26ImplicitConversionSequence11setStandardEv.exit: ; preds = %bb.ea, %bb.eb
  %i.tu = phi i32 [ %i.tr, %bb.ea ], [ %.pre.i.i, %bb.eb ]
  %i.tv = and i32 %i.tu, -2147483648
  store i32 %i.tv, ptr %23, align 8
  call void @_ZN5clang26StandardConversionSequence23setAsIdentityConversionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.tq) #25
  %i.tw = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !1267 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %i.tx, ptr %i.ty, align 8, !tbaa !1267
  %i.tz = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.tx, ptr %i.tz, align 8, !tbaa !1267
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.tx, ptr %i.ua, align 8, !tbaa !1267
  %i.ub = load i64, ptr %i.sz, align 8
  %25 = and i64 %i.ub, 255
  %26 = load i64, ptr %i.tq, align 8
  %27 = and i64 %26, -256
  %28 = or disjoint i64 %27, %25
  store i64 %28, ptr %i.tq, align 8
  %i.uc = ptrtoint ptr %i.tx to i64
  call void @_ZN5clang22InitializationSequence25AddConversionSequenceStepERKNS_26ImplicitConversionSequenceENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(8084) %0, ptr noundef nonnull align 8 dereferenceable(152) %23, i64 %i.uc, i1 noundef zeroext false)
  %i.ud = load i32, ptr %23, align 8
  %i.ue = and i32 %i.ud, 2147483647
  %i.uf = icmp eq i32 %i.ue, 3
  br i1 %i.uf, label %bb.ec, label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit322

bb.ec:                                            ; preds = %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit
  call void @_ZN5clang27AmbiguousConversionSequence8destructEv(ptr noundef nonnull align 8 dereferenceable(96) %i.tq) #25
  br label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit322

_ZN5clang26ImplicitConversionSequenceD2Ev.exit322: ; preds = %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNK5clang17InitializedEntity7getDeclEv.exit319.thread, %_ZN5clang26ImplicitConversionSequenceD2Ev.exit322
  %.sroa.020.0.copyload = load i64, ptr %14, align 8, !tbaa !713
  call void @_ZN5clang22InitializationSequence32AddPassByIndirectCopyRestoreStepENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(8084) %0, i64 %.sroa.020.0.copyload, i1 noundef zeroext %.0217)
  br label %bb.ei

bb.ee:                                            ; preds = %.thread375
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.ug = load ptr, ptr %i.a, align 8, !tbaa !1274 ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %.sroa.0.0.copyload.i323 = load i64, ptr %i.uh, align 8, !tbaa !713 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.h, i64 19344
  %.sroa.0.0.copyload.i324 = load i64, ptr %i.ui, align 8, !tbaa !713
  %i.uj = icmp eq i64 %.sroa.0.0.copyload.i323, %.sroa.0.0.copyload.i324
  br i1 %i.uj, label %bb.ef, label %.critedge16

bb.ef:                                            ; preds = %bb.ee
  %.sroa.019.0.copyload = load i64, ptr %14, align 8, !tbaa !713
  %i.uk = call noundef ptr @_ZN5clang4Sema34ResolveAddressOfOverloadedFunctionEPNS_4ExprENS_8QualTypeEbRNS_14DeclAccessPairEPb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.ug, i64 %.sroa.019.0.copyload, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef null) #25
  %.not = icmp eq ptr %i.uk, null
  br i1 %.not, label %bb.eh, label %..critedge16_crit_edge

..critedge16_crit_edge:                           ; preds = %bb.ef
  %.pre399 = load ptr, ptr %i.a, align 8, !tbaa !1274 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre399, i64 8
  %.sroa.0.0.copyload.i326.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !713
  br label %.critedge16

.critedge16:                                      ; preds = %..critedge16_crit_edge, %bb.ee
  %.sroa.0.0.copyload.i326 = phi i64 [ %.sroa.0.0.copyload.i326.pre, %..critedge16_crit_edge ], [ %.sroa.0.0.copyload.i323, %bb.ee ]
  %i.ul = phi ptr [ %.pre399, %..critedge16_crit_edge ], [ %i.ug, %bb.ee ]
  %i.um = and i64 %.sroa.0.0.copyload.i326, -16
  %i.un = inttoptr i64 %i.um to ptr
  %i.uo = load ptr, ptr %i.un, align 16, !tbaa !716
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %.sroa.0.0.copyload.i.i.i.i328 = load i64, ptr %i.up, align 8, !tbaa !713
  %i.uq = and i64 %.sroa.0.0.copyload.i.i.i.i328, -16
  %i.ur = inttoptr i64 %i.uq to ptr
  %i.us = load ptr, ptr %i.ur, align 16, !tbaa !716
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = load i8, ptr %i.ut, align 16
  %i.uv = add i8 %i.uu, -23
  %spec.select.i.i.i.i.i.i.i.i.i329 = icmp ult i8 %i.uv, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i329, label %bb.eg, label %.critedge18

bb.eg:                                            ; preds = %.critedge16
  %i.uw = call fastcc noundef zeroext i1 @_ZL29isExprAnUnaddressableFunctionRN5clang4SemaEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.ul)
  br i1 %i.uw, label %bb.eh, label %.critedge18

.critedge18:                                      ; preds = %.critedge16, %bb.eg
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %.critedge18
  %.sink = phi i32 [ 12, %bb.ef ], [ 23, %.critedge18 ], [ 37, %bb.eg ]
  store i32 0, ptr %0, align 8, !tbaa !1264
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.sink, ptr %i.ux, align 8, !tbaa !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.ei

.thread381:                                       ; preds = %.thread375, %bb.du
  %.sroa.0.0.copyload = load i64, ptr %14, align 8, !tbaa !713
  call void @_ZN5clang22InitializationSequence25AddConversionSequenceStepERKNS_26ImplicitConversionSequenceENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(8084) %0, ptr noundef nonnull align 8 dereferenceable(152) %22, i64 %.sroa.0.0.copyload, i1 noundef zeroext %6)
  %.val256 = load ptr, ptr %i.eo, align 8, !tbaa !1152
  %i.uy = getelementptr i8, ptr %.val256, i64 96
  %.val256.val = load i64, ptr %i.uy, align 8
  call fastcc void @_ZL22MaybeProduceObjCObjectRN5clang4SemaERNS_22InitializationSequenceERKNS_17InitializedEntityE(i64 %.val256.val, ptr noundef nonnull align 8 dereferenceable(8084) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.thread381, %bb.ed
  %i.uz = load i32, ptr %22, align 8
  %i.va = and i32 %i.uz, 2147483647
  %i.vb = icmp eq i32 %i.va, 3
  br i1 %i.vb, label %bb.ej, label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit330

bb.ej:                                            ; preds = %bb.ei
  %i.vc = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN5clang27AmbiguousConversionSequence8destructEv(ptr noundef nonnull align 8 dereferenceable(96) %i.vc) #25
  br label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit330

_ZN5clang26ImplicitConversionSequenceD2Ev.exit330: ; preds = %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.ek

bb.ek:                                            ; preds = %bb.dn, %bb.do, %_ZN5clang26ImplicitConversionSequenceD2Ev.exit330, %_ZN5clang26ImplicitConversionSequenceD2Ev.exit, %bb.de, %bb.dc, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZL24TryDefaultInitializationRN5clang4SemaERKNS_17InitializedEntityERKNS_18InitializationKindERNS_22InitializationSequenceE.exit

_ZL24TryDefaultInitializationRN5clang4SemaERKNS_17InitializedEntityERKNS_18InitializationKindERNS_22InitializationSequenceE.exit: ; preds = %_ZN5clang22InitializationSequence25AddZeroInitializationStepENS_8QualTypeE.exit.i, %_ZNK5clang8QualType13getQualifiersEv.exit.i, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.bc, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.br, %bb.bw, %bb.bz, %bb.by, %bb.ca, %bb.ce, %bb.ch, %bb.cg, %bb.cc, %bb.bo, %_ZN4llvm16dyn_cast_or_nullIN5clang12InitListExprENS1_4ExprEEEDaPT0_.exit, %bb.cp, %bb.ek, %bb.ck, %bb.cn, %bb.co, %bb.cy, %bb.cx, %bb.ag, %_ZL26TryReferenceInitializationRN5clang4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEPNS_4ExprERNS_22InitializationSequenceEb.exit, %bb.ai, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.el

bb.el:                                            ; preds = %_ZL24TryDefaultInitializationRN5clang4SemaERKNS_17InitializedEntityERKNS_18InitializationKindERNS_22InitializationSequenceE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.em

bb.em:                                            ; preds = %bb.e, %bb.el
  ret void
}

declare i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Expr28hasAnyTypeDependentArgumentsEN4llvm8ArrayRefIPS0_EE(ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang8SemaObjC33CheckObjCBridgeRelatedConversionsENS_14SourceLocationENS_8QualTypeES2_RPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(328), i32, i64, i64, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang8SemaObjC28CheckConversionToObjCLiteralENS_8QualTypeERPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(328), i64, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21TryListInitializationRN5clang4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEPNS_12InitListExprERNS_22InitializationSequenceEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8084) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.clang::InitializationSequence::Step", align 8 ; 6 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 8 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %9 = alloca %"class.clang::InitializedEntity", align 8 ; 8 uses
  %10 = alloca %"class.clang::InitializationKind", align 8 ; 5 uses
  %11 = alloca %"class.clang::InitializationSequence::Step", align 8 ; 5 uses
  %12 = alloca %"class.clang::Qualifiers", align 8 ; 10 uses
  %13 = alloca %"class.clang::QualType", align 8  ; 7 uses
  %14 = alloca %"class.clang::Qualifiers", align 8 ; 7 uses
  %15 = alloca %"class.clang::QualType", align 8  ; 7 uses
  %16 = alloca %"class.clang::Qualifiers", align 8 ; 6 uses
  %17 = alloca %"class.clang::InitializedEntity", align 8 ; 8 uses
  %18 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %19 = alloca %"class.clang::InitializationKind", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  %20 = alloca %"class.clang::InitializationKind", align 8 ; 5 uses
  %21 = alloca %"class.clang::InitializationKind", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %22 = alloca %"class.clang::ImplicitConversionSequence", align 8 ; 14 uses
  %23 = alloca %"class.clang::InitializationKind", align 8 ; 6 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %24 = alloca %"class.(anonymous namespace)::InitListChecker", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !713 ; 15 uses
  store i64 %.sroa.0.0.copyload.i, ptr %18, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1152, !nonnull !711, !align !712 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627776
  %.not188 = icmp eq i64 %i.j, 0
  br i1 %.not188, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1642
  %i.m = tail call noundef zeroext i1 @_ZN5clang8SemaHLSL17transformInitListERKNS_17InitializedEntityEPNS_12InitListExprE(ptr noundef nonnull align 8 dereferenceable(273) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %3) #25
  br i1 %i.m, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !1152
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %4, align 8, !tbaa !1264
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i32 41, ptr %i.n, align 8, !tbaa !1265
  br label %.critedge208

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.g, %bb.a ]
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4096
  %.not189 = icmp eq i64 %i.q, 0
  %.pre377 = and i64 %.sroa.0.0.copyload.i, -16
  %.pre379 = inttoptr i64 %.pre377 to ptr         ; 11 uses
  %.pre411 = load ptr, ptr %.pre379, align 16, !tbaa !716 ; 12 uses
  br i1 %.not189, label %_ZNK5clang4Type12isScalarTypeEv.exit.thread337, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pre411, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !713
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !716 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 16              ; 10 uses
  %i.x = icmp ne i8 %i.w, 13
  %.not.not24.i = icmp eq ptr %i.u, null          ; 2 uses
end_hunk_0
