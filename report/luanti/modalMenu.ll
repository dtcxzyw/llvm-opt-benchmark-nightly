inline.NumInlined: 365
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12GUIModalMenu8quitMenuEv:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(308) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12GUIModalMenu17remapClickOutsideERK6SEvent(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.PointerAction, align 8      ; 9 uses
  %4 = alloca %struct.SEvent, align 8             ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 2
  %or.cond = select i1 %i.c, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  switch i32 %i.f, label %bb.i [
    i32 0, label %_ZN13PointerAction9fromEventERK6SEvent.exit
    i32 4, label %_ZN13PointerAction9fromEventERK6SEvent.exit
  ]

_ZN13PointerAction9fromEventERK6SEvent.exit:      ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %.sroa.02.0.copyload25 = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.5.0.copyload27 = load i64, ptr %.sroa.5.0..sroa_idx26, align 8, !tbaa !101 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.j = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #22 ; 0 uses
  %i.k = load i64, ptr %2, align 8, !tbaa !13
  %i.l = mul i64 %i.k, 1000
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = udiv i64 %i.n, 1000000
  %i.p = add i64 %i.o, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i64 %i.i, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(308) %i.w, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 3 uses
  %.not7.i = icmp ne ptr %i.aa, null              ; 2 uses
  %i.ab = icmp ne ptr %i.aa, %0
  %or.cond.not8.i = and i1 %i.ab, %.not7.i
  br i1 %or.cond.not8.i, label %.lr.ph.i, label %_ZL7isChildPN3gui11IGUIElementES1_.exit

.lr.ph.i:                                         ; preds = %_ZN13PointerAction9fromEventERK6SEvent.exit, %.lr.ph.i
  %.059.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.aa, %_ZN13PointerAction9fromEventERK6SEvent.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.059.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  %i.ae = icmp ne ptr %i.ad, %0
  %or.cond.not.i = and i1 %i.ae, %.not.i
  br i1 %or.cond.not.i, label %.lr.ph.i, label %_ZL7isChildPN3gui11IGUIElementES1_.exit, !llvm.loop !102

_ZL7isChildPN3gui11IGUIElementES1_.exit:          ; preds = %.lr.ph.i, %_ZN13PointerAction9fromEventERK6SEvent.exit
  %.not.lcssa.i = phi i1 [ %.not7.i, %_ZN13PointerAction9fromEventERK6SEvent.exit ], [ %.not.i, %.lr.ph.i ]
  br i1 %.not.lcssa.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZL7isChildPN3gui11IGUIElementES1_.exit
  %i.af = load i32, ptr %i.e, align 4, !tbaa !12
  switch i32 %i.af, label %bb.h [
    i32 0, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !103
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc4.i = trunc i64 %.sroa.02.0.copyload25 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload25, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %.not.i.i = icmp ult i64 %i.ag, %.sroa.5.0.copyload27
  %i.ah = sub nuw i64 %i.ag, %.sroa.5.0.copyload27
  %i.ai = sub nuw i64 %.sroa.5.0.copyload27, %i.ag
  %.0.i.i = select i1 %.not.i.i, i64 %i.ai, i64 %i.ah
  %i.aj = load i32, ptr %3, align 8, !tbaa !20
  %i.ak = sub nsw i32 %i.aj, %.sroa.0.0.extract.trunc4.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = sub nsw i32 %i.am, %.sroa.2.0.extract.trunc.i
  %i.ao = sitofp nsz i32 %i.ak to float           ; 2 uses
  %i.ap = sitofp nsz i32 %i.an to float           ; 2 uses
  %i.aq = fmul nnan nsz float %i.ap, %i.ap
  %i.ar = call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.aq)
  %i.as = icmp ult i64 %.0.i.i, 400
  %i.at = fcmp nsz olt float %i.ar, 9.000000e+02
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, i8 0, i64 36, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 27, ptr %i.ax, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ay, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.az, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.ba, align 2, !tbaa !12
  %i.bb = invoke i64 @_ZN8KeyPress13getSpecialKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %._crit_edge.i.i
  %.sroa.022.0.extract.trunc = trunc i64 %i.bb to i32
  %i.bc = and i64 %i.bb, 1095216660480
  %.not.i18 = icmp eq i64 %i.bc, 0
  %spec.select.i = select i1 %.not.i18, i32 %.sroa.022.0.extract.trunc, i32 0
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %spec.select.i, ptr %i.bd, align 8, !tbaa !12
  %i.be = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 1, ptr %i.bi, align 4
  store i32 0, ptr %i.av, align 8, !tbaa !12
  %i.bj = load ptr, ptr %0, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ay
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.g
  %i.bq = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.bn

bb.h:                                             ; preds = %bb.e, %bb.c, %_ZL7isChildPN3gui11IGUIElementES1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.012 = phi i1 [ false, %_ZL7isChildPN3gui11IGUIElementES1_.exit ], [ true, %bb.d ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.c ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.h
  %.1 = phi i1 [ %.012, %bb.h ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

declare i64 @_ZN8KeyPress13getSpecialKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.SEvent, align 8             ; 14 uses
  %4 = alloca %struct.SEvent, align 8             ; 14 uses
  %.sink16.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sink16.sroa.gep20 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sink16.sroa.gep21 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sink16.sroa.gep22 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sink19.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sink19.sroa.gep23 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sink19.sroa.gep24 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sink19.sroa.gep25 = getelementptr inbounds nuw i8, ptr %3, i64 24
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi ptr [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.j, i8 0, i64 36, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !22
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 4, ptr %i.m, align 4
  switch i32 %1, label %.thread [
    i32 0, label %bb.h
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 8, ptr %i.n, align 4, !tbaa !12
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 10, ptr %i.o, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %.sink16.sroa.phi = phi ptr [ %.sink16.sroa.gep, %bb.g ], [ %.sink16.sroa.gep20, %bb.f ], [ %.sink16.sroa.gep21, %bb.e ], [ %.sink16.sroa.gep22, %bb.d ]
  %.sink = phi i32 [ 1, %bb.g ], [ 4, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i32 %.sink, ptr %.sink16.sroa.phi, align 4, !tbaa !12
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br i1 %i.s, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %.010, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(308) %.010, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i1 [ false, %bb.i ], [ %i.w, %bb.j ]  ; 2 uses
  %or.cond = or i1 %2, %.0
  br i1 %or.cond, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aa, i8 0, i64 36, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !9
  %i.ab = load <2 x i32>, ptr %i.k, align 4, !tbaa !22
  store <2 x i32> %i.ab, ptr %i.z, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 4, ptr %i.ac, align 4
  switch i32 %1, label %default.unreachable [
    i32 0, label %bb.p
    i32 2, label %bb.m
    i32 1, label %bb.n
    i32 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 8, ptr %i.ad, align 4, !tbaa !12
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 10, ptr %i.ae, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.n, %bb.m
  %.sink19.sroa.phi = phi ptr [ %.sink19.sroa.gep, %bb.o ], [ %.sink19.sroa.gep23, %bb.n ], [ %.sink19.sroa.gep24, %bb.m ], [ %.sink19.sroa.gep25, %bb.l ]
  %.sink17 = phi i32 [ 1, %bb.o ], [ 4, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ]
  store i32 %.sink17, ptr %.sink19.sroa.phi, align 4, !tbaa !12
  %i.af = load ptr, ptr %0, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 296
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !104
  br i1 %i.ai, label %_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(308) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !104
  br label %_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb.exit

default.unreachable:                              ; preds = %bb.l
  unreachable

_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.1.i = phi i1 [ false, %bb.q ], [ true, %bb.p ], [ %i.am, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.thread

.thread:                                          ; preds = %bb.h, %_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb.exit, %bb.k, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ %.1.i, %_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb.exit ], [ %.0, %bb.k ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.SEvent, align 8             ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12GUIModalMenu5enterEPN3gui11IGUIElementE) #23
  unreachable

_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit:  ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !67
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !67
  store ptr %1, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  store i32 1, ptr %2, align 8, !tbaa !9
  store ptr %1, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 2, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(308) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GUIModalMenu5leaveEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.SEvent, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  store i32 1, ptr %1, align 8, !tbaa !9
  store ptr %i.b, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.e, align 8, !tbaa !12
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1) ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !67
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !67
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #22, !inline_history !105
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12GUIModalMenu15preprocessEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.SEvent, align 8             ; 7 uses
  %5 = alloca %struct.SEvent, align 8             ; 7 uses
  %6 = alloca %struct.SEvent, align 8             ; 7 uses
  %7 = alloca %"class.core::vector2d", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !9
  switch i32 %i.d, label %bb.ap [
    i32 5, label %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit
    i32 2, label %bb.ak
  ]

_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit:       ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !23
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !67
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12
  switch i32 %i.m, label %_ZN12GUIModalMenu5leaveEv.exit47.thread [
    i32 1, label %bb.c
    i32 2, label %bb.ab
  ]

bb.c:                                             ; preds = %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  store i64 %i.o, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.x = load i64, ptr %i.q, align 4
  store i64 %i.x, ptr %7, align 8
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(308) %i.w, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.h       ; 9 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
end_hunk_0
