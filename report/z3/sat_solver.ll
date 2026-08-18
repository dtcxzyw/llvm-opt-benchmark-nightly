inline.NumInlined: 5240
inline.NumDeleted: 1637
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN3sat6solver14propagate_coreEb:bb.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !175
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %.preheader, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit6.thread, !llvm.loop !363

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit6.thread: ; preds = %bb.f, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit6
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !217 ; 3 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit6.thread
  %i.aq = load i8, ptr %i.s, align 8, !tbaa !166, !range !257, !noundef !258
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.t, align 4, !tbaa !183
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.ap) ; 0 uses
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !197
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit6.thread
  %i.ay = phi ptr [ %.pre, %bb.i ], [ %i.aj, %bb.h ], [ %i.aj, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit6.thread ] ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, !llvm.loop !364

.critedge:                                        ; preds = %bb.e, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.j, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !167, !range !257, !noundef !258
  %i.bc = trunc nuw i8 %i.bb to i1
  %not. = xor i1 %i.bc, true
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.critedge
  %.3 = phi i1 [ %not., %.critedge ], [ false, %.preheader ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3sat6solver10checkpointEv(ptr noundef nonnull align 8 dereferenceable(4264) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13, !range !257, !noundef !258
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3sat6solver15memory_exceededEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !365, !nonnull !258, !align !271
  %i.f = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br i1 %i.f, label %_ZN3sat6solver13limit_reachedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i8 0, ptr %i.g, align 8, !tbaa !222
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3808
  %i.j = load i64, ptr %i.i, align 8, !tbaa !188
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull @.str.130, i64 noundef 12) ; 0 uses
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #36 ; 3 uses
  invoke void @_ZN3sat16solver_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN3sat16solver_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZN3sat6solver13limit_reachedEv.exit:             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4076 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !214
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !214
  %i.q = icmp ult i32 %i.p, 10
  br i1 %i.q, label %_ZN3sat6solver15memory_exceededEv.exit.thread, label %_ZN3sat6solver15memory_exceededEv.exit

_ZN3sat6solver15memory_exceededEv.exit:           ; preds = %_ZN3sat6solver13limit_reachedEv.exit
  store i32 0, ptr %i.n, align 4, !tbaa !214
  %i.r = tail call noundef i64 @_ZN6memory19get_allocation_sizeEv()
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !366
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_ZN3sat6solver15memory_exceededEv.exit.thread

bb.f:                                             ; preds = %_ZN3sat6solver15memory_exceededEv.exit
  %i.v = tail call ptr @__cxa_allocate_exception(i64 40) #36 ; 3 uses
  invoke void @_ZN3sat16solver_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @_ZN11common_msgs16g_max_memory_msgE)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN3sat16solver_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #39
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZN3sat6solver15memory_exceededEv.exit.thread:    ; preds = %_ZN3sat6solver13limit_reachedEv.exit, %bb.a, %_ZN3sat6solver15memory_exceededEv.exit
  ret void

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sink = phi ptr [ %i.v, %bb.h ], [ %i.l, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat6solver17propagate_literalENS_7literalEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.sat::justification", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 3 uses
  %i.b = lshr i32 %1, 1
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !169  ; 5 uses
  %i.g = xor i32 %1, 1                            ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !228
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !225  ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit200, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit:       ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !175  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2832 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !367
  %i.s = sub nsw i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !367
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2984 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !368
  %i.v = sub i32 %i.u, %i.o
  store i32 %i.v, ptr %i.t, align 8, !tbaa !368
  %i.w = load i32, ptr %i.n, align 4, !tbaa !175  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 4                  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y ; 7 uses
  %.not306 = icmp eq i32 %i.w, 0
  br i1 %.not306, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i199, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = zext i32 %i.g to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph311, %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread
  %indvar = phi i64 [ 0, %.lr.ph311 ], [ %indvar.next, %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread ] ; 3 uses
  %.0150308 = phi ptr [ %i.l, %.lr.ph311 ], [ %i.hv, %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread ] ; 17 uses
  %.0155307 = phi ptr [ %i.l, %.lr.ph311 ], [ %.11, %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread ] ; 29 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0150308, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !274 ; 2 uses
  %i.al = and i32 %i.ak, 3
  switch i32 %i.al, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.aj
    i32 3, label %bb.an
  ]

bb.c:                                             ; preds = %bb.b
  %i.am = load i64, ptr %.0150308, align 8, !tbaa !276 ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !229
  %i.ap = and i64 %i.am, 4294967295
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !230
  switch i32 %i.ar, label %bb.f [
    i32 -1, label %.preheader
    i32 0, label %bb.e
  ]

.preheader:                                       ; preds = %bb.c
  %.not187329 = icmp eq ptr %.0150308, %i.z
  br i1 %.not187329, label %._crit_edge333, label %.lr.ph332.preheader

.lr.ph332.preheader:                              ; preds = %.preheader
  %i.as = add nsw i64 %i.y, -16
  %4 = shl i64 %indvar, 4
  %5 = sub i64 %i.as, %4                          ; 2 uses
  %6 = lshr exact i64 %5, 4
  %i.at = add nuw nsw i64 %6, 1
  %xtraiter457 = and i64 %i.at, 3                 ; 2 uses
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol

.lr.ph332.prol:                                   ; preds = %.lr.ph332.preheader, %.lr.ph332.prol
  %.1151331.prol = phi ptr [ %i.au, %.lr.ph332.prol ], [ %.0150308, %.lr.ph332.preheader ] ; 2 uses
  %.1156330.prol = phi ptr [ %i.av, %.lr.ph332.prol ], [ %.0155307, %.lr.ph332.preheader ] ; 2 uses
  %prol.iter459 = phi i64 [ %prol.iter459.next, %.lr.ph332.prol ], [ 0, %.lr.ph332.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.1156330.prol, ptr noundef nonnull align 8 dereferenceable(12) %.1151331.prol, i64 12, i1 false), !tbaa.struct !358
  %i.au = getelementptr inbounds nuw i8, ptr %.1151331.prol, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1156330.prol, i64 16 ; 3 uses
  %prol.iter459.next = add i64 %prol.iter459, 1   ; 2 uses
  %prol.iter459.cmp.not = icmp eq i64 %prol.iter459.next, %xtraiter457
  br i1 %prol.iter459.cmp.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol, !llvm.loop !369

.lr.ph332.prol.loopexit:                          ; preds = %.lr.ph332.prol, %.lr.ph332.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph332.preheader ], [ %i.av, %.lr.ph332.prol ]
  %.1151331.unr = phi ptr [ %.0150308, %.lr.ph332.preheader ], [ %i.au, %.lr.ph332.prol ]
  %.1156330.unr = phi ptr [ %.0155307, %.lr.ph332.preheader ], [ %i.av, %.lr.ph332.prol ]
  %i.aw = icmp ult i64 %5, 48
  br i1 %i.aw, label %._crit_edge333, label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332
  %.1151331 = phi ptr [ %i.bd, %.lr.ph332 ], [ %.1151331.unr, %.lr.ph332.prol.loopexit ] ; 5 uses
  %.1156330 = phi ptr [ %i.be, %.lr.ph332 ], [ %.1156330.unr, %.lr.ph332.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.1156330, ptr noundef nonnull align 8 dereferenceable(12) %.1151331, i64 12, i1 false), !tbaa.struct !358
  %i.ax = getelementptr inbounds nuw i8, ptr %.1151331, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.1156330, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.ax, i64 12, i1 false), !tbaa.struct !358
  %i.az = getelementptr inbounds nuw i8, ptr %.1151331, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.1156330, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false), !tbaa.struct !358
  %i.bb = getelementptr inbounds nuw i8, ptr %.1151331, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.1156330, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bc, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false), !tbaa.struct !358
  %i.bd = getelementptr inbounds nuw i8, ptr %.1151331, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1156330, i64 64 ; 2 uses
  %.not187.3 = icmp eq ptr %i.bd, %i.z
  br i1 %.not187.3, label %._crit_edge333, label %.lr.ph332, !llvm.loop !370

._crit_edge333:                                   ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332, %.preheader
  %.1156.lcssa = phi ptr [ %.0155307, %.preheader ], [ %.lcssa.unr, %.lr.ph332.prol.loopexit ], [ %i.be, %.lr.ph332 ]
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !225 ; 3 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i:     ; preds = %._crit_edge333
  %i.bg = ptrtoint ptr %.1156.lcssa to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 4
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !175
  br label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit

_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit: ; preds = %._crit_edge333, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i
  %i.bm = load i8, ptr %i.ab, align 8, !tbaa !167, !range !257, !noundef !258
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit
  %i.bo = xor i32 %i.an, 1
  store i8 1, ptr %i.ab, align 8, !tbaa !167
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i32 %i.f, ptr %i.bp, align 8, !tbaa !175
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !232
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3192
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !175
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store i32 %i.bo, ptr %i.bq, align 8, !tbaa !175
  br label %_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE.exit

bb.e:                                             ; preds = %bb.c
  %i.br = load i32, ptr %i.af, align 8, !tbaa !332
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.af, align 8, !tbaa !332
  store i32 %i.f, ptr %3, align 8, !tbaa !169
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !170
  store i32 1, ptr %i.ai, align 8, !tbaa !171
  tail call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %i.an, ptr noundef nonnull byval(%"class.sat::justification") align 8 %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0155307, ptr noundef nonnull align 8 dereferenceable(12) %.0150308, i64 12, i1 false), !tbaa.struct !358
  %i.bt = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.bu = lshr i32 %i.ak, 2
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !229
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !230
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0155307, ptr noundef nonnull align 8 dereferenceable(12) %.0150308, i64 12, i1 false), !tbaa.struct !358
  %i.ca = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %.0150308, align 8, !tbaa !276 ; 8 uses
  %i.cc = load i8, ptr %i.ae, align 8, !tbaa !164, !range !257, !noundef !258
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [568 x i8], ptr %i.ad, i64 %i.cd
  %i.cf = tail call noundef nonnull align 4 dereferenceable(20) ptr @_ZNK3sat16clause_allocator10get_clauseEm(ptr noundef nonnull align 8 dereferenceable(568) %i.ce, i64 noundef %i.cb) ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20 ; 8 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !172 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, %i.g
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !175 ; 2 uses
  store i32 %i.ck, ptr %i.cg, align 4, !tbaa !175
  store i32 %i.g, ptr %i.cj, align 4, !tbaa !175
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.011.0.copyload = phi i32 [ %i.ck, %bb.j ], [ %i.ch, %bb.i ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = and i32 %i.cm, 2
  %.not274 = icmp eq i32 %i.cn, 0
  br i1 %.not274, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !278 ; 3 uses
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 7 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !172
  %.not275 = icmp eq i32 %i.cs, %i.g
  br i1 %.not275, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0155307, ptr noundef nonnull align 8 dereferenceable(12) %.0150308, i64 12, i1 false), !tbaa.struct !358
  %i.ct = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.ac, align 8, !tbaa !229 ; 3 uses
  %i.cv = zext i32 %.sroa.011.0.copyload to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !230 ; 3 uses
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.cb, ptr %.0155307, align 8, !tbaa !276
  %i.cz = shl i32 %.sroa.011.0.copyload, 2
  %i.da = or disjoint i32 %i.cz, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.0155307, i64 8
  store i32 %i.da, ptr %i.db, align 8, !tbaa !274
  %i.dc = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.dd = icmp ugt i32 %i.cp, 2
  br i1 %i.dd, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.q
  %i.de = zext i32 %i.cp to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %.0167301 = phi i32 [ 0, %.lr.ph ], [ %.2169.ph, %bb.u ] ; 2 uses
  %.0171300 = phi i32 [ 1, %.lr.ph ], [ %.3174.ph, %bb.u ] ; 3 uses
  %.0176299 = phi i32 [ 0, %.lr.ph ], [ %.2178.ph, %bb.u ] ; 3 uses
  %.0297 = phi i32 [ %i.f, %.lr.ph ], [ %.1.ph, %bb.u ] ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %.sroa.016.0.copyload = load i32, ptr %i.df, align 4, !tbaa !175 ; 3 uses
  %i.dg = zext i32 %.sroa.016.0.copyload to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !230
  switch i32 %i.di, label %bb.u [
    i32 1, label %bb.ai
    i32 0, label %bb.s
    i32 -1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.dj = add nuw nsw i32 %.0176299, 1
  %i.dk = trunc nuw i64 %indvars.iv to i32
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dl = lshr i32 %.sroa.016.0.copyload, 1
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !169 ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, %.0297
  %spec.select272 = tail call i32 @llvm.umax.i32(i32 %i.dp, i32 %.0297)
  %i.dr = trunc nuw i64 %indvars.iv to i32
  %spec.select273 = select i1 %i.dq, i32 %i.dr, i32 %.0171300
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.1.ph = phi i32 [ %spec.select272, %bb.t ], [ %.0297, %bb.r ], [ %.0297, %bb.s ] ; 5 uses
  %.2178.ph = phi i32 [ %.0176299, %bb.t ], [ %.0176299, %bb.r ], [ %i.dj, %bb.s ] ; 3 uses
  %.3174.ph = phi i32 [ %spec.select273, %bb.t ], [ %.0171300, %bb.r ], [ %.0171300, %bb.s ] ; 5 uses
  %.2169.ph = phi i32 [ %.0167301, %bb.t ], [ %.0167301, %bb.r ], [ %i.dk, %bb.s ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next, %i.de
  %i.dt = icmp samesign ult i32 %.2178.ph, 2
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %i.du, label %bb.r, label %._crit_edge, !llvm.loop !371

._crit_edge:                                      ; preds = %bb.u
  %i.dv = icmp eq i32 %.2178.ph, 1                ; 2 uses
  %i.dw = icmp eq i32 %i.cx, -1
  br i1 %i.dw, label %bb.v, label %.thread261

._crit_edge.thread:                               ; preds = %bb.q
  %i.dx = icmp eq i32 %i.cx, -1
  br i1 %i.dx, label %bb.v, label %.thread266.thread

bb.v:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0167.lcssa380 = phi i32 [ 0, %._crit_edge.thread ], [ %.2169.ph, %._crit_edge ] ; 2 uses
  %.0176.lcssa377 = phi i1 [ false, %._crit_edge.thread ], [ %i.dv, %._crit_edge ]
  %.0.lcssa373 = phi i32 [ %i.f, %._crit_edge.thread ], [ %.1.ph, %._crit_edge ]
  %i.dy = lshr i32 %.sroa.011.0.copyload, 1
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !169
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.0.lcssa373, i32 %i.ec) ; 2 uses
  %.not184 = icmp eq i32 %.0167.lcssa380, 0
  br i1 %.not184, label %bb.aa, label %bb.w

.thread261:                                       ; preds = %._crit_edge
  %.not184263 = icmp eq i32 %.2169.ph, 0
  br i1 %.not184263, label %.thread266, label %bb.w

bb.w:                                             ; preds = %.thread261, %bb.v
  %.0167.lcssa381 = phi i32 [ %.2169.ph, %.thread261 ], [ %.0167.lcssa380, %bb.v ]
  %.0176.lcssa375 = phi i1 [ %i.dv, %.thread261 ], [ %.0176.lcssa377, %bb.v ]
  %.3265 = phi i32 [ %.1.ph, %.thread261 ], [ %.sroa.speculated, %bb.v ]
  %i.ed = zext i32 %.0167.lcssa381 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !175
  store i32 %i.ef, ptr %i.cr, align 4, !tbaa !175
  store i32 %i.g, ptr %i.ee, align 4, !tbaa !175
  %.sroa.01.0.copyload.i = load i32, ptr %i.cr, align 4, !tbaa !175
  %i.eg = xor i32 %.sroa.01.0.copyload.i, 1
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !228
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !225 ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !175 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !175
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.y, label %_ZN3sat6solver9set_watchERNS_6clauseEjm.exit

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_ZN6vectorIN3sat7watchedELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
  %.pre.i.i = load ptr, ptr %i.ej, align 8, !tbaa !225 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !175
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !229
  br label %_ZN3sat6solver9set_watchERNS_6clauseEjm.exit

_ZN3sat6solver9set_watchERNS_6clauseEjm.exit:     ; preds = %bb.x, %bb.y
  %i.er = phi ptr [ %.pre, %bb.y ], [ %i.cu, %bb.x ]
  %i.es = phi i32 [ %.pre2.i.i, %bb.y ], [ %i.en, %bb.x ] ; 2 uses
  %i.et = phi ptr [ %.pre.i.i, %bb.y ], [ %i.ek, %bb.x ] ; 2 uses
  %i.eu = shl i32 %.sroa.011.0.copyload, 2
  %i.ev = or disjoint i32 %i.eu, 1
  %i.ew = zext i32 %i.es to i64
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.ew ; 2 uses
  store i64 %i.cb, ptr %i.ex, align 8, !tbaa !232
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %i.ev, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !175
  %i.ey = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.ez = add i32 %i.es, 1
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !175
  %.sroa.09.0.copyload = load i32, ptr %i.cg, align 4, !tbaa !175 ; 2 uses
  %i.fa = zext i32 %.sroa.09.0.copyload to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !230
  %i.fd = icmp eq i32 %i.fc, -1
  %or.cond = select i1 %i.fd, i1 %.0176.lcssa375, i1 false
  br i1 %or.cond, label %bb.z, label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.z:                                             ; preds = %_ZN3sat6solver9set_watchERNS_6clauseEjm.exit
  %i.fe = load i32, ptr %i.cr, align 4, !tbaa !175
  store i32 %i.fe, ptr %i.cg, align 4, !tbaa !175
  store i32 %.sroa.09.0.copyload, ptr %i.cr, align 4, !tbaa !175
  tail call void @_ZN3sat6solver16propagate_clauseERNS_6clauseEbjm(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i1 noundef zeroext %2, i32 noundef %.3265, i64 noundef %i.cb)
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.aa:                                            ; preds = %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.fg = or i32 %i.cm, 8
  store i32 %i.fg, ptr %i.ff, align 4
  %.not186322 = icmp eq ptr %.0150308, %i.z
  br i1 %.not186322, label %._crit_edge327, label %.lr.ph326.preheader

.lr.ph326.preheader:                              ; preds = %bb.aa
  %i.fh = add nsw i64 %i.y, -16
  %7 = shl i64 %indvar, 4
  %8 = sub i64 %i.fh, %7                          ; 2 uses
  %9 = lshr exact i64 %8, 4
  %i.fi = add nuw nsw i64 %9, 1
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph326.prol.loopexit, label %.lr.ph326.prol

.lr.ph326.prol:                                   ; preds = %.lr.ph326.preheader, %.lr.ph326.prol
  %.2152324.prol = phi ptr [ %i.fj, %.lr.ph326.prol ], [ %.0150308, %.lr.ph326.preheader ] ; 2 uses
  %.5160323.prol = phi ptr [ %i.fk, %.lr.ph326.prol ], [ %.0155307, %.lr.ph326.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph326.prol ], [ 0, %.lr.ph326.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.5160323.prol, ptr noundef nonnull align 8 dereferenceable(12) %.2152324.prol, i64 12, i1 false), !tbaa.struct !358
  %i.fj = getelementptr inbounds nuw i8, ptr %.2152324.prol, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.5160323.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph326.prol.loopexit, label %.lr.ph326.prol, !llvm.loop !372

.lr.ph326.prol.loopexit:                          ; preds = %.lr.ph326.prol, %.lr.ph326.preheader
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph326.preheader ], [ %i.fk, %.lr.ph326.prol ]
  %.2152324.unr = phi ptr [ %.0150308, %.lr.ph326.preheader ], [ %i.fj, %.lr.ph326.prol ]
  %.5160323.unr = phi ptr [ %.0155307, %.lr.ph326.preheader ], [ %i.fk, %.lr.ph326.prol ]
  %i.fl = icmp ult i64 %8, 48
  br i1 %i.fl, label %._crit_edge327, label %.lr.ph326

.lr.ph326:                                        ; preds = %.lr.ph326.prol.loopexit, %.lr.ph326
  %.2152324 = phi ptr [ %i.fs, %.lr.ph326 ], [ %.2152324.unr, %.lr.ph326.prol.loopexit ] ; 5 uses
  %.5160323 = phi ptr [ %i.ft, %.lr.ph326 ], [ %.5160323.unr, %.lr.ph326.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.5160323, ptr noundef nonnull align 8 dereferenceable(12) %.2152324, i64 12, i1 false), !tbaa.struct !358
  %i.fm = getelementptr inbounds nuw i8, ptr %.2152324, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.5160323, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fn, ptr noundef nonnull align 8 dereferenceable(12) %i.fm, i64 12, i1 false), !tbaa.struct !358
  %i.fo = getelementptr inbounds nuw i8, ptr %.2152324, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %.5160323, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fp, ptr noundef nonnull align 8 dereferenceable(12) %i.fo, i64 12, i1 false), !tbaa.struct !358
  %i.fq = getelementptr inbounds nuw i8, ptr %.2152324, i64 48
  %i.fr = getelementptr inbounds nuw i8, ptr %.5160323, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fr, ptr noundef nonnull align 8 dereferenceable(12) %i.fq, i64 12, i1 false), !tbaa.struct !358
  %i.fs = getelementptr inbounds nuw i8, ptr %.2152324, i64 64 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.5160323, i64 64 ; 2 uses
  %.not186.3 = icmp eq ptr %i.fs, %i.z
  br i1 %.not186.3, label %._crit_edge327, label %.lr.ph326, !llvm.loop !373

._crit_edge327:                                   ; preds = %.lr.ph326.prol.loopexit, %.lr.ph326, %bb.aa
  %.5160.lcssa = phi ptr [ %.0155307, %bb.aa ], [ %.lcssa433.unr, %.lr.ph326.prol.loopexit ], [ %i.ft, %.lr.ph326 ]
  %i.fu = load ptr, ptr %i.k, align 8, !tbaa !225 ; 3 uses
  %.not.i192 = icmp eq ptr %i.fu, null
  br i1 %.not.i192, label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit194, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i193

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i193:  ; preds = %._crit_edge327
  %i.fv = ptrtoint ptr %.5160.lcssa to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 4
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = getelementptr inbounds i8, ptr %i.fu, i64 -4
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !175
  br label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit194

_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit194: ; preds = %._crit_edge327, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i193
  %i.gb = load i8, ptr %i.ab, align 8, !tbaa !167, !range !257, !noundef !258
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit194
  store i8 1, ptr %i.ab, align 8, !tbaa !167
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i32 %.sroa.speculated, ptr %i.gd, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store i64 %i.cb, ptr %.sroa.5232.0..sroa_idx, align 8
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3192
  store i32 2, ptr %.sroa.6233.0..sroa_idx, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store i32 -2, ptr %i.ge, align 8, !tbaa !175
  br label %_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE.exit

.thread266:                                       ; preds = %.thread261
  %.not185 = icmp eq i32 %.3174.ph, 1
  br i1 %.not185, label %.thread266.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread266
  %i.gf = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.gg = icmp ugt i32 %i.gf, 19
  br i1 %i.gg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.gh = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.gh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Z12verbose_lockv()
  %i.gi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.gj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.9, i64 noundef 16) ; 0 uses
  %.sroa.07.0.copyload = load i32, ptr %i.cr, align 4, !tbaa !175
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i32 %.sroa.07.0.copyload) ; 2 uses
  %i.gl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.gm = zext i32 %.3174.ph to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gm
  %.sroa.06.0.copyload = load i32, ptr %i.gn, align 4, !tbaa !175
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, i32 %.sroa.06.0.copyload)
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.9, i64 noundef 16) ; 0 uses
  %.sroa.05.0.copyload = load i32, ptr %i.cr, align 4, !tbaa !175
  %i.gs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, i32 %.sroa.05.0.copyload) ; 2 uses
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.gu = zext i32 %.3174.ph to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gu
  %.sroa.04.0.copyload = load i32, ptr %i.gv, align 4, !tbaa !175
  %i.gw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, i32 %.sroa.04.0.copyload)
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac
  tail call void @_ZN3sat6solver9set_watchERNS_6clauseEjm(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i32 noundef %.3174.ph, i64 noundef %i.cb)
  br label %bb.ah

.thread266.thread:                                ; preds = %._crit_edge.thread, %.thread266
  %.0.lcssa374388393 = phi i32 [ %.1.ph, %.thread266 ], [ %i.f, %._crit_edge.thread ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0155307, ptr noundef nonnull align 8 dereferenceable(12) %.0150308, i64 12, i1 false), !tbaa.struct !358
  %i.gy = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %.thread266.thread, %bb.ag
  %.0.lcssa374388392 = phi i32 [ %.1.ph, %bb.ag ], [ %.0.lcssa374388393, %.thread266.thread ]
  %.6161 = phi ptr [ %.0155307, %bb.ag ], [ %i.gy, %.thread266.thread ]
  tail call void @_ZN3sat6solver16propagate_clauseERNS_6clauseEbjm(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i1 noundef zeroext %2, i32 noundef %.0.lcssa374388392, i64 noundef %i.cb)
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.ai:                                            ; preds = %bb.r
  store i64 %i.cb, ptr %.0155307, align 8, !tbaa !276
  %i.gz = shl i32 %.sroa.016.0.copyload, 2
  %i.ha = or disjoint i32 %i.gz, 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.0155307, i64 8
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !274
  %i.hc = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.aj:                                            ; preds = %bb.b
  %i.hd = load ptr, ptr %i.aa, align 8, !tbaa !217 ; 2 uses
  %i.he = load i64, ptr %.0150308, align 8, !tbaa !276
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = tail call noundef zeroext i1 %i.hh(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, i32 %1, i64 noundef %i.he) ; 2 uses
  %i.hj = load i8, ptr %i.ab, align 8, !tbaa !167, !range !257, !noundef !258
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %spec.select.idx = select i1 %i.hi, i64 0, i64 16
  %spec.select = getelementptr inbounds nuw i8, ptr %.0150308, i64 %spec.select.idx ; 2 uses
  %.not183315 = icmp eq ptr %spec.select, %i.z
  br i1 %.not183315, label %._crit_edge320, label %.lr.ph319

.lr.ph319:                                        ; preds = %bb.ak, %.lr.ph319
  %.6317 = phi ptr [ %i.hl, %.lr.ph319 ], [ %spec.select, %bb.ak ] ; 2 uses
  %.10316 = phi ptr [ %i.hm, %.lr.ph319 ], [ %.0155307, %bb.ak ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.10316, ptr noundef nonnull align 8 dereferenceable(12) %.6317, i64 12, i1 false), !tbaa.struct !358
  %i.hl = getelementptr inbounds nuw i8, ptr %.6317, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.10316, i64 16 ; 2 uses
  %.not183 = icmp eq ptr %i.hl, %i.z
  br i1 %.not183, label %._crit_edge320, label %.lr.ph319, !llvm.loop !374

._crit_edge320:                                   ; preds = %.lr.ph319, %bb.ak
  %.10.lcssa = phi ptr [ %.0155307, %bb.ak ], [ %i.hm, %.lr.ph319 ]
  %i.hn = load ptr, ptr %i.k, align 8, !tbaa !225 ; 3 uses
  %.not.i195 = icmp eq ptr %i.hn, null
  br i1 %.not.i195, label %_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE.exit, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i196

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i196:  ; preds = %._crit_edge320
  %i.ho = ptrtoint ptr %.10.lcssa to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = lshr exact i64 %i.hq, 4
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds i8, ptr %i.hn, i64 -4
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !175
  br label %_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE.exit

bb.al:                                            ; preds = %bb.aj
  br i1 %i.hi, label %bb.am, label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0155307, ptr noundef nonnull align 8 dereferenceable(12) %.0150308, i64 12, i1 false), !tbaa.struct !358
  %i.hu = getelementptr inbounds nuw i8, ptr %.0155307, i64 16
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.an:                                            ; preds = %bb.b
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1190, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread

_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread: ; preds = %bb.z, %_ZN3sat6solver9set_watchERNS_6clauseEjm.exit, %bb.ah, %bb.ai, %bb.p, %bb.n, %bb.f, %bb.h, %bb.an, %bb.am, %bb.al
  %.11 = phi ptr [ %.0155307, %bb.an ], [ %i.bt, %bb.f ], [ %i.ca, %bb.h ], [ %.0155307, %bb.al ], [ %i.hu, %bb.am ], [ %.0155307, %_ZN3sat6solver9set_watchERNS_6clauseEjm.exit ], [ %.0155307, %bb.z ], [ %.6161, %bb.ah ], [ %i.hc, %bb.ai ], [ %i.dc, %bb.p ], [ %i.ct, %bb.n ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0150308, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.hv, %i.z
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge312, label %bb.b, !llvm.loop !375

._crit_edge312:                                   ; preds = %_ZN3sat6solver12set_conflictENS_13justificationE.exit.thread
  %.pre352 = load ptr, ptr %i.k, align 8, !tbaa !225 ; 2 uses
  %.not.i198 = icmp eq ptr %.pre352, null
  br i1 %.not.i198, label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit200, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i199

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i199:  ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit, %._crit_edge312
  %.0155.lcssa399 = phi ptr [ %.11, %._crit_edge312 ], [ %i.l, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit ]
  %i.hw = phi ptr [ %.pre352, %._crit_edge312 ], [ %i.l, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit ] ; 2 uses
  %i.hx = ptrtoint ptr %.0155.lcssa399 to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = lshr exact i64 %i.hz, 4
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = getelementptr inbounds i8, ptr %i.hw, i64 -4
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !175
  br label %_ZN6vectorIN3sat7watchedELb1EjE7set_endEPS1_.exit200
end_hunk_0
