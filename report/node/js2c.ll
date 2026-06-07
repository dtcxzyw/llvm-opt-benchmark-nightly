inline.NumInlined: 1866
inline.NumDeleted: 631
begin_hunk_0_@_ZN4node4js2c15GetVariableNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.n, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %i.p = phi ptr [ %.pre9, %.lr.ph.preheader.new ], [ %i.w, %bb.j ] ; 2 uses
  %.08 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.x, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.08 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %.off = add i8 %i.r, -45
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  store i8 95, ptr %i.q, align 1
  %.pre = load ptr, ptr %0, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.h
  %i.s = phi ptr [ %i.p, %.lr.ph ], [ %.pre, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.08
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %.off.1 = add i8 %i.v, -45
  %switch.1 = icmp ult i8 %.off.1, 3
  br i1 %switch.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  store i8 95, ptr %i.u, align 1
  %.pre.1 = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.w = phi ptr [ %i.s, %.lr.ph.1 ], [ %.pre.1, %bb.i ] ; 2 uses
  %i.x = add nuw i64 %.08, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre9, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.08.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.y = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %.08.epil.init ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %.off.epil = add i8 %i.z, -45
  %switch.epil = icmp ult i8 %.off.epil, 3
  br i1 %switch.epil, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  store i8 95, ptr %i.y, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4node4js2c17precompute_stringEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.27") align 4 captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %1 = alloca %"struct.std::array", align 1       ; 4 uses
  %2 = alloca %"struct.std::array.29", align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i32 0, ptr %2, align 4
  br label %bb.c

bb.b:                                             ; preds = %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(644256) %0, ptr noundef nonnull align 1 dereferenceable(382106) %1, i64 382106, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 382108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(262148) %i.a, ptr noundef nonnull align 4 dereferenceable(262148) %2, i64 262148, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.c:                                             ; preds = %bb.a, %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit"
  %i.b = phi i32 [ 0, %bb.a ], [ %i.am, %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit" ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit" ] ; 2 uses
  %.010 = phi ptr [ %1, %bb.a ], [ %i.al, %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit" ] ; 9 uses
  %i.c = trunc i64 %indvars.iv to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv4.i = phi i32 [ %indvars.iv.next5.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.022.i = phi i32 [ %i.g, %bb.d ], [ 0, %bb.c ] ; 6 uses
  %.0.i = phi i16 [ %i.j, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.d = urem i16 %.0.i, 10
  %i.e = trunc nuw nsw i16 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  %i.g = add i32 %.022.i, 1                       ; 3 uses
  %i.h = zext i32 %.022.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.010, i64 %i.h
  store i8 %i.f, ptr %i.i, align 1
  %i.j = udiv i16 %.0.i, 10
  %.not.i = icmp ult i16 %.0.i, 10
  %indvars.iv.next5.i = add i32 %indvars.iv4.i, 1
  br i1 %.not.i, label %.preheader.i, label %bb.d, !llvm.loop !33

.preheader.i:                                     ; preds = %bb.d
  %.not2.i = icmp ult i32 %i.g, 2
  br i1 %.not2.i, label %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit", label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.k = lshr i32 %indvars.iv4.i, 1               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.010, i64 %indvars.iv.i ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.p = sub i32 %.022.i, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.010, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.m, align 1
  store i8 %i.n, ptr %i.r, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.010, i64 %indvars.iv.next.i ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.w = sub i32 %.022.i, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.010, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  store i8 %i.z, ptr %i.t, align 1
  store i8 %i.u, ptr %i.y, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit.loopexit.unr-lcssa", label %.lr.ph.i, !llvm.loop !34

"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit", label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod12 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.aa = getelementptr inbounds nuw i8, ptr %.010, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ad = sub i32 %.022.i, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.010, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  store i8 %i.ag, ptr %i.aa, align 1
  store i8 %i.ab, ptr %i.af, align 1
  br label %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit"

"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit": ; preds = %.lr.ph.i.epil.preheader, %"_ZZN4node4js2c17precompute_stringEvENK3$_0clEtPc.exit.loopexit.unr-lcssa", %.preheader.i
  %i.ah = zext i32 %i.g to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.010, i64 %i.ah
  store i8 44, ptr %i.ai, align 1
  %i.aj = add i32 %.022.i, 2                      ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.010, i64 %i.ak
  %i.am = add i32 %i.b, %i.aj                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.am, ptr %i.an, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !35
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, ptr } @_ZN4node4js2c7GetCodeEt(i16 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4node4js2c7GetCodeEtEDC14backing_string7offsetsE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node4js2c7GetCodeEtEDC14backing_string7offsetsE) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4node4js2c17precompute_stringEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.27") align 4 @_ZZN4node4js2c7GetCodeEtEDC14backing_string7offsetsE)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node4js2c7GetCodeEtEDC14backing_string7offsetsE) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = zext i16 %0 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr getelementptr (i8, ptr @_ZZN4node4js2c7GetCodeEtEDC14backing_string7offsetsE, i64 382108), i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN4node4js2c7GetCodeEtEDC14backing_string7offsetsE, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sub i32 %i.j, %i.f
  %i.l = zext i32 %i.k to i64
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.l, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %i.h, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4node4js2c8SimplifyERKSt6vectorIcSaIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEPS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 27
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread34

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = load i128, ptr %i.d, align 1
  %i.f = xor i128 %i.e, 146824514243725253505716286824977297001
  %i.g = getelementptr i8, ptr %i.d, i64 11
  %i.h = load i128, ptr %i.g, align 1
  %i.i = xor i128 %i.h, 140085114556420995412082770918661649264
  %i.j = or i128 %i.f, %i.i
  %i.k = icmp ne i128 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread34

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #29
  unreachable

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %2, align 8                ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.s
  br i1 %i.aa, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.y                     ; 3 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.ag = icmp sgt i64 %i.ae, 0
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.w, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.w, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #30
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.af, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store ptr %i.ah, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.s
  store ptr %i.ai, ptr %i.u, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt6vectorIcSaIcEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i
  %i.aj = phi ptr [ %i.p, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIcSaIcEE7reserveEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %.not.not = icmp eq i64 %.127, 0
  br i1 %.not.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread34, label %bb.v

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %.038 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ] ; 5 uses
  %.02637 = phi i64 [ 0, %.lr.ph ], [ %.127, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.038 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %cond = icmp eq i8 %i.am, -30
  br i1 %cond, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.an = add i64 %.038, 2                        ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.s
  br i1 %i.ao, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.al, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, -128
  br i1 %i.ar, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, -103
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.aw = load ptr, ptr %i.u, align 8
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 39, ptr %i.av, align 1
  %i.ax = load ptr, ptr %i.ak, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %i.ak, align 8
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.l:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %2, align 8               ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 8 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775807
  br i1 %i.bd, label %bb.m, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.be = add i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bc
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 9223372036854775807)
  %i.bh = select i1 %i.bf, i64 9223372036854775807, i64 %i.bg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #28 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc ; 2 uses
  store i8 39, ptr %i.bj, align 1
  %i.bk = icmp sgt i64 %i.bc, 0
  br i1 %i.bk, label %bb.n, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bi, ptr %2, align 8
  store ptr %i.bl, ptr %i.ak, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store ptr %i.bm, ptr %i.u, align 8
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i
  %i.bn = add i64 %.02637, 1
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

bb.p:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.038 ; 2 uses
  %i.bq = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.br = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load i8, ptr %i.bp, align 1
  store i8 %i.bs, ptr %i.bq, align 1
  %i.bt = load ptr, ptr %i.ak, align 8
end_hunk_0
