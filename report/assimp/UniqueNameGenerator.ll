Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/UniqueNameGenerator?download=true
inline.NumInlined: 535
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_0clB5cxx11ERKS9_":bb.a
  br i1 %.017, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.l = load ptr, ptr %i.e, align 8, !nonnull !40, !align !41
  %i.m = load i64, ptr %i.f, align 8
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  %.val21 = load ptr, ptr %2, align 8, !noalias !13
  %.val22 = load i64, ptr %i.g, align 8, !noalias !13
  %i.n = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.n, align 8, !noalias !13
  %i.o = getelementptr i8, ptr %.val, i64 40
  %.val.val23 = load i64, ptr %i.o, align 8, !noalias !13
  invoke fastcc void @"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_1clB5cxx11ERKS9_m"(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val.val, i64 %.val.val23, ptr %.val21, i64 %.val22, i64 noundef %i.m)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8                ; 6 uses
  %i.q = icmp eq ptr %i.p, %i.c
  %i.r = load ptr, ptr %3, align 8                ; 6 uses
  %i.s = icmp eq ptr %i.r, %i.h                   ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.s, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = load i64, ptr %i.i, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  switch i64 %i.t, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.r, align 1
  store i8 %i.v, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.w = load i64, ptr %i.i, align 8              ; 2 uses
  store i64 %i.w, ptr %i.d, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.r, ptr %0, align 8
  %i.z = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.z, ptr %i.d, align 8
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aa = load i64, ptr %i.c, align 8
  store ptr %i.r, ptr %0, align 8
  %i.ab = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.ab, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %3, align 8
  store i64 %i.aa, ptr %i.h, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ac = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.p, %bb.k ], [ %i.h, %bb.l ], [ %i.r, %bb.g ]
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.af = load i64, ptr %i.h, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.m:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load ptr, ptr %i.j, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 5                 ; 2 uses
  %i.aq = icmp eq ptr %i.ak, %i.al
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ar = load i64, ptr %i.d, align 8
  %.fr32 = freeze i64 %i.ar                       ; 3 uses
  %i.as = icmp eq i64 %.fr32, 0
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.030.us = phi i64 [ %i.ax, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.030.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp eq i64 %i.av, 0                    ; 2 uses
  %i.ax = add nuw i64 %.030.us, 1                 ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %i.ap
  %.not20.us = or i1 %i.aw, %i.ay
  br i1 %.not20.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !37

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28, %.lr.ph.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.018.lcssa = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.aw, %.lr.ph.split.us ], [ %i.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28 ]
  br i1 %.017, label %bb.n, label %bb.o

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28
  %.030 = phi i64 [ %i.bh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28 ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.030 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %.fr32, %i.bb
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph.split
  %i.bd = load ptr, ptr %i.az, align 8
  %i.be = load ptr, ptr %0, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.be, ptr %i.bd, i64 %.fr32)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.bf = icmp eq i32 %bcmp.i.fr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.lr.ph.split
  %i.bg = phi i1 [ false, %.lr.ph.split ], [ %i.bf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.bh = add nuw i64 %.030, 1                    ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %i.ap
  %.not20 = or i1 %i.bg, %i.bi
  br i1 %.not20, label %._crit_edge, label %.lr.ph.split, !llvm.loop !37

bb.n:                                             ; preds = %._crit_edge
  %i.bj = load i64, ptr %i.f, align 8
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.f, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  br i1 %.018.lcssa, label %bb.b, label %bb.q, !llvm.loop !38

bb.p:                                             ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.k, %bb.d ]
  %i.bl = load ptr, ptr %0, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.p
  %i.bn = load i64, ptr %i.c, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_1clB5cxx11ERKS9_m"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val.32.val, i64 %.0.val.40.val, ptr %.0.val1, i64 %.8.val, i64 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !47 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !48
  store i8 0, ptr %i.a, align 8, !alias.scope !48
  %i.c = add i64 %.8.val, %.0.val.40.val
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !48
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %.8.val
  br i1 %i.f, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.0.val1, i64 noundef %.8.val)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.h = load i64, ptr %i.b, align 8, !alias.scope !48
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %.0.val.40.val
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.0.val.32.val, i64 noundef %.0.val.40.val)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !alias.scope !48 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8, !alias.scope !48
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.q = icmp ult i64 %1, 10
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %4 = icmp ult i64 %1, 100
  br i1 %4, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %5

5:                                                ; preds = %.lr.ph.i.i
  %6 = icmp ult i64 %1, 1000
  br i1 %6, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %7

7:                                                ; preds = %5
  %8 = icmp ult i64 %1, 10000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %9

9:                                                ; preds = %7
  %10 = icmp ult i64 %1, 100000
  br i1 %10, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %9
  %11 = icmp ult i64 %1, 1000000
  br i1 %11, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %12

12:                                               ; preds = %.lr.ph.i.i.1
  %13 = icmp ult i64 %1, 10000000
  br i1 %13, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %14

14:                                               ; preds = %12
  %15 = icmp ult i64 %1, 100000000
  br i1 %15, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %16

16:                                               ; preds = %14
  %17 = icmp ult i64 %1, 1000000000
  br i1 %17, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %16
  %18 = icmp ult i64 %1, 10000000000
  br i1 %18, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %19

19:                                               ; preds = %.lr.ph.i.i.2
  %20 = icmp ult i64 %1, 100000000000
  br i1 %20, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %21

21:                                               ; preds = %19
  %22 = icmp ult i64 %1, 1000000000000
  br i1 %22, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %21
  %i.r = icmp ult i64 %1, 10000000000000
  br i1 %i.r, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.a
  %23 = icmp ult i64 %1, 100000000000000
  br i1 %23, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ult i64 %1, 1000000000000000
  br i1 %i.s, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %24 = icmp ult i64 %1, 10000000000000000
  br i1 %24, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ult i64 %1, 100000000000000000
  br i1 %i.t, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %25 = icmp ult i64 %1, 1000000000000000000
  br i1 %25, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %26 = icmp ult i64 %1, -8446744073709551616
  %spec.select = select i1 %26, i64 19, i64 20
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %9, %16, %.lr.ph.i.i.a, %bb.g, %7, %14, %21, %bb.f, %5, %12, %19, %bb.e, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %bb.d, %bb.h, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %.022.i.i = phi i64 [ 17, %bb.g ], [ %spec.select, %bb.i ], [ 18, %bb.h ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ 2, %.lr.ph.i.i ], [ 6, %.lr.ph.i.i.1 ], [ 10, %.lr.ph.i.i.2 ], [ 14, %bb.d ], [ 3, %5 ], [ 7, %12 ], [ 11, %19 ], [ 15, %bb.e ], [ 4, %7 ], [ 8, %14 ], [ 12, %21 ], [ 16, %bb.f ], [ 5, %9 ], [ 9, %16 ], [ 13, %.lr.ph.i.i.a ]
  %27 = and i64 %.022.i.i, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.u, ptr %3, align 8, !alias.scope !49
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %27, i8 noundef signext 0)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.v = load ptr, ptr %3, align 8, !alias.scope !49 ; 4 uses
  %i.w = icmp ugt i64 %1, 99
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !49
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %i.z, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ad, %.lr.ph.i4.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.an, %.lr.ph.i4.i ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ab = urem i64 %.020.i.i, 100
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noalias !49
  %i.ah = zext i32 %.01819.i.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = load i8, ptr %i.ae, align 2, !noalias !49
  %i.ak = add i32 %.01819.i.i, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al
  store i8 %i.aj, ptr %i.am, align 1
  %i.an = add i32 %.01819.i.i, -2
  %i.ao = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ao, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !46

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %1, %.noexc ], [ %i.ad, %.lr.ph.i4.i ] ; 3 uses
  %i.ap = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !noalias !49
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.at, ptr %i.au, align 1
  %i.av = load i8, ptr %i.ar, align 2, !noalias !49
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.aw = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge.i.i = phi i8 [ %i.ax, %bb.k ], [ %i.av, %bb.j ]
  store i8 %storemerge.i.i, ptr %i.v, align 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %3, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.u
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ba = load i64, ptr %i.u, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bc = load ptr, ptr %2, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %3, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.u
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.o
  %i.bk = load i64, ptr %i.u, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bm = load ptr, ptr %2, align 8               ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.a
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.bo = load i64, ptr %i.a, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !guid !50 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !guid !51 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8
  %i.ab = load i64, ptr %i.v, align 8
  store i64 %i.ab, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  store ptr %i.v, ptr %i.s, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.v, align 8
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8
  %i.ar = load i64, ptr %i.al, align 8
  store i64 %i.ar, ptr %i.aj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8
  store ptr %i.al, ptr %i.ai, align 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !53 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %.02, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not8.i.i.i.i.i.i, label %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i.i.i.i, align 8  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit.i.i.i
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit: ; preds = %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 96) #23
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 !guid !55 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01113 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not14 = icmp eq ptr %.01113, null
  br i1 %.not14, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.01115 = phi ptr [ %.011, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.01113, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01115, i64 40
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %.8.val) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01115, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @memcmp(ptr noundef %.0.val, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph
  %i.i = sub i64 %.8.val, %i.d
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.i, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.j = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.j, i64 16, i64 24
  %.in = getelementptr i8, ptr %.01115, i64 %.in.v
  %.011 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.j, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.010.lcssa21 = phi ptr [ %.01115, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.k, align 8
  %i.l = icmp eq ptr %.010.lcssa21, %.val
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa21) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.010.lcssa20 = phi ptr [ %.010.lcssa21, %bb.b ], [ %.01115, %._crit_edge ]
  %.sroa.01.0 = phi ptr [ %i.m, %bb.b ], [ %.01115, %._crit_edge ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 40
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %.8.val, i64 %i.o) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i14, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @memcmp(ptr noundef %i.r, ptr noundef %.0.val, i64 noundef %.sroa.speculated.i.i.i14) #22 ; 2 uses
  %.not.i.i.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15, %bb.c
  %i.t = sub i64 %i.o, %.8.val
  %spec.select7.i.i.i.i19 = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i20 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i19, i64 2147483647)
  %.0.i6.i.i.i21 = trunc nsw i64 %.08.i.i.i.i20 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18
  %.0.i.i.i17 = phi i32 [ %i.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15 ], [ %.0.i6.i.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18 ]
  %i.u = icmp slt i32 %.0.i.i.i17, 0              ; 2 uses
  %spec.select = select i1 %i.u, ptr null, ptr %.sroa.01.0
  %spec.select12 = select i1 %i.u, ptr %.010.lcssa20, ptr null
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22, %._crit_edge.thread
  %.sroa.09.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select12, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22 ], [ %.010.lcssa21, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { noreturn }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!2 = distinct !{!2, !1, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{i64 -7938902719075450919}
!7 = !{i64 -1960504680067461544}
!8 = !{i64 -346735066841189461}
!9 = !{i64 -1463214614377579445}
!10 = !{i64 8026055088291796371}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!2}
!14 = !{i64 -5919905788668547607}
!15 = !{i64 7637034666290546367}
!16 = !{i64 1745155130196189577}
!17 = !{i64 4109697232087151988}
!18 = distinct !{!18, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!19 = distinct !{!19, !18, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!21 = distinct !{!21, !20, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!23 = distinct !{!23, !22, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = !{i64 -938995870779448626}
!31 = !{!19}
!32 = !{!21, !19}
!33 = !{!23}
!34 = !{i64 3327284803763892445}
!35 = distinct !{!35, !11}
!36 = !{i64 3910921378943706592}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = !{i64 -1514442610417968937}
!40 = !{}
!41 = !{i64 8}
!42 = distinct !{!42, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!43 = distinct !{!43, !42, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!45 = distinct !{!45, !44, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!46 = distinct !{!46, !11}
!47 = !{i64 8745413245605144908}
!48 = !{!43, !2}
!49 = !{!45}
!50 = !{i64 1080103601501470593}
!51 = !{i64 4436414345889955668}
!52 = distinct !{!52, !11}
!53 = !{i64 4707092374634700334}
!54 = distinct !{!54, !11}
!55 = !{i64 -1359931214437274792}
end_hunk_0
