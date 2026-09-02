Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !28
  store i8 0, ptr %i.at, align 8, !tbaa !29
  invoke void @_ZN7V3Error10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EEP8FileLine(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i26
  %i.av = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.k
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !29
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i26
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.at
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.l
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !29
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.e
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !45
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bj, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !29
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bj, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #30
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.g, %.body
  %.pn15 = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn, %.body ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(112)) #3

declare void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !25
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.126) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !46
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !35
  %i.g = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = load ptr, ptr %0, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @_ZN7V3Error10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EEP8FileLine(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) #4 align 2 {
bb.a:
  tail call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3NumberC2EP7AstNodeNS_20VerilogStringLiteralERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) initializes((32, 37), (40, 56)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef 8, i1 noundef zeroext true)
          to label %.loopexit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %.tr = trunc i64 %i.h to i32
  %i.k = shl i32 %.tr, 3
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %.sroa.speculated, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.u

.preheader:                                       ; preds = %bb.d
  %i.l = load i64, ptr %i.g, align 8, !tbaa !28   ; 5 uses
  %.not35 = icmp eq i64 %i.l, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = load i8, ptr %i.b, align 4, !tbaa !48
  %i.n = add i8 %i.m, -1
  %spec.select.i.i = icmp ult i8 %i.n, 2
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.v, !prof !49

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %i.a, align 8, !tbaa !47
  %.fr36 = freeze i32 %i.o
  %i.p = icmp slt i32 %.fr36, 129
  %i.q = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  br i1 %i.p, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.t
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.t ], [ 0, %.lr.ph.split ] ; 3 uses
  %3 = xor i64 %indvars.iv44, -1
  %4 = add i64 %i.l, %3
  %5 = trunc i64 %4 to i32                        ; 2 uses
  %i.r = sdiv i32 %5, 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv44 ; 8 uses
  %i.v = srem i32 %5, 4
  %i.w = shl nsw i32 %i.v, 3
  %i.x = zext i32 %i.w to i64                     ; 8 uses
  %i.y = load i8, ptr %i.u, align 1, !tbaa !29
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = and i64 %i.z, 1
  %.not.us = icmp eq i64 %i.aa, 0
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us
  %i.ab = shl nuw i64 1, %i.x
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !51
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = or i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !51
  %.pre54 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre6189 = zext i8 %.pre54 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.split.us
  %.pre-phi = phi i64 [ %.pre6189, %bb.e ], [ %i.z, %.lr.ph.split.split.us ] ; 2 uses
  %i.af = and i64 %.pre-phi, 2
  %.not.us.1 = icmp eq i64 %i.af, 0
  br i1 %.not.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = shl nuw i64 2, %i.x
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !51
  %i.ai = trunc i64 %i.ag to i32
  %i.aj = or i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !51
  %.pre55 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre6290 = zext i8 %.pre55 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi63 = phi i64 [ %.pre6290, %bb.g ], [ %.pre-phi, %bb.f ] ; 2 uses
  %i.ak = and i64 %.pre-phi63, 4
  %.not.us.2 = icmp eq i64 %i.ak, 0
  br i1 %.not.us.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = shl nuw i64 4, %i.x
  %i.am = load i32, ptr %i.t, align 8, !tbaa !51
  %i.an = trunc i64 %i.al to i32
  %i.ao = or i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !51
  %.pre56 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre6491 = zext i8 %.pre56 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi65 = phi i64 [ %.pre6491, %bb.i ], [ %.pre-phi63, %bb.h ] ; 2 uses
  %i.ap = and i64 %.pre-phi65, 8
  %.not.us.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.us.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = shl nuw i64 8, %i.x
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !51
  %i.as = trunc i64 %i.aq to i32
  %i.at = or i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.t, align 8, !tbaa !51
  %.pre57 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre6692 = zext i8 %.pre57 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi67 = phi i64 [ %.pre6692, %bb.k ], [ %.pre-phi65, %bb.j ] ; 2 uses
  %i.au = and i64 %.pre-phi67, 16
  %.not.us.4 = icmp eq i64 %i.au, 0
  br i1 %.not.us.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = shl nuw i64 16, %i.x
  %i.aw = load i32, ptr %i.t, align 8, !tbaa !51
  %i.ax = trunc i64 %i.av to i32
  %i.ay = or i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.t, align 8, !tbaa !51
  %.pre58 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre6893 = zext i8 %.pre58 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi69 = phi i64 [ %.pre6893, %bb.m ], [ %.pre-phi67, %bb.l ] ; 2 uses
  %i.az = and i64 %.pre-phi69, 32
  %.not.us.5 = icmp eq i64 %i.az, 0
  br i1 %.not.us.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = shl nuw i64 32, %i.x
  %i.bb = load i32, ptr %i.t, align 8, !tbaa !51
  %i.bc = trunc i64 %i.ba to i32
  %i.bd = or i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !51
  %.pre59 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre7094 = zext i8 %.pre59 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi71 = phi i64 [ %.pre7094, %bb.o ], [ %.pre-phi69, %bb.n ] ; 2 uses
  %i.be = and i64 %.pre-phi71, 64
  %.not.us.6 = icmp eq i64 %i.be, 0
  br i1 %.not.us.6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = shl nuw i64 64, %i.x
  %i.bg = load i32, ptr %i.t, align 8, !tbaa !51
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = or i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %i.t, align 8, !tbaa !51
  %.pre60 = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre7295 = zext i8 %.pre60 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi73 = phi i64 [ %.pre7295, %bb.q ], [ %.pre-phi71, %bb.p ]
  %i.bj = and i64 %.pre-phi73, 128
  %.not.us.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.us.7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = shl nuw i64 128, %i.x
  %i.bl = load i32, ptr %i.t, align 8, !tbaa !51
  %i.bm = trunc i64 %i.bk to i32
  %i.bn = or i32 %i.bl, %i.bm
  store i32 %i.bn, ptr %i.t, align 8, !tbaa !51
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next45 = add i64 %indvars.iv44, 1   ; 2 uses
  %i.bo = and i64 %indvars.iv.next45, 4294967295
  %i.bp = icmp ugt i64 %i.l, %i.bo
  br i1 %i.bp, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !234

bb.u:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ 0, %.lr.ph.split ] ; 3 uses
  %6 = xor i64 %indvars.iv, -1
  %7 = add i64 %i.l, %6
  %8 = trunc i64 %7 to i32                        ; 2 uses
  %i.br = load ptr, ptr %0, align 8
  %i.bs = sdiv i32 %8, 4
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bt ; 16 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv ; 8 uses
  %i.bw = srem i32 %8, 4
  %i.bx = shl nsw i32 %i.bw, 3
  %i.by = zext i32 %i.bx to i64                   ; 8 uses
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !29
  %i.ca = zext i8 %i.bz to i64                    ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not = icmp eq i64 %i.cb, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.cc = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc unwind label %bb.w     ; 0 uses

.noexc:                                           ; preds = %bb.v
  %i.cd = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc25 unwind label %bb.w   ; 2 uses

.noexc25:                                         ; preds = %.noexc
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.118, i64 noundef 40)
          to label %.noexc26 unwind label %bb.w   ; 0 uses

.noexc26:                                         ; preds = %.noexc25
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc27 unwind label %bb.w

.noexc27:                                         ; preds = %.noexc26
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cf) #32
          to label %.noexc28 unwind label %bb.w

.noexc28:                                         ; preds = %.noexc27
  unreachable

bb.w:                                             ; preds = %.noexc25, %.noexc27, %.noexc26, %.noexc, %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %.lr.ph.split.split
  %i.ch = shl nuw i64 1, %i.by
  %i.ci = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.cj = trunc i64 %i.ch to i32
  %i.ck = or i32 %i.ci, %i.cj
  store i32 %i.ck, ptr %i.bu, align 4, !tbaa !51
  %.pre = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre7496 = zext i8 %.pre to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.split, %bb.x
  %.pre-phi75 = phi i64 [ %i.ca, %.lr.ph.split.split ], [ %.pre7496, %bb.x ] ; 2 uses
  %i.cl = and i64 %.pre-phi75, 2
  %.not.1 = icmp eq i64 %i.cl, 0
  br i1 %.not.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = shl nuw i64 2, %i.by
  %i.cn = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.co = trunc i64 %i.cm to i32
  %i.cp = or i32 %i.cn, %i.co
  store i32 %i.cp, ptr %i.bu, align 4, !tbaa !51
  %.pre48 = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre7697 = zext i8 %.pre48 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi77 = phi i64 [ %.pre7697, %bb.z ], [ %.pre-phi75, %bb.y ] ; 2 uses
  %i.cq = and i64 %.pre-phi77, 4
  %.not.2 = icmp eq i64 %i.cq, 0
  br i1 %.not.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = shl nuw i64 4, %i.by
  %i.cs = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = or i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.bu, align 4, !tbaa !51
  %.pre49 = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre7898 = zext i8 %.pre49 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi79 = phi i64 [ %.pre7898, %bb.ab ], [ %.pre-phi77, %bb.aa ] ; 2 uses
  %i.cv = and i64 %.pre-phi79, 8
  %.not.3 = icmp eq i64 %i.cv, 0
  br i1 %.not.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = shl nuw i64 8, %i.by
  %i.cx = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.cy = trunc i64 %i.cw to i32
  %i.cz = or i32 %i.cx, %i.cy
  store i32 %i.cz, ptr %i.bu, align 4, !tbaa !51
  %.pre50 = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre8099 = zext i8 %.pre50 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pre-phi81 = phi i64 [ %.pre8099, %bb.ad ], [ %.pre-phi79, %bb.ac ] ; 2 uses
  %i.da = and i64 %.pre-phi81, 16
  %.not.4 = icmp eq i64 %i.da, 0
  br i1 %.not.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = shl nuw i64 16, %i.by
  %i.dc = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.dd = trunc i64 %i.db to i32
  %i.de = or i32 %i.dc, %i.dd
  store i32 %i.de, ptr %i.bu, align 4, !tbaa !51
  %.pre51 = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre82100 = zext i8 %.pre51 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pre-phi83 = phi i64 [ %.pre82100, %bb.af ], [ %.pre-phi81, %bb.ae ] ; 2 uses
  %i.df = and i64 %.pre-phi83, 32
  %.not.5 = icmp eq i64 %i.df, 0
  br i1 %.not.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = shl nuw i64 32, %i.by
  %i.dh = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.di = trunc i64 %i.dg to i32
  %i.dj = or i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.bu, align 4, !tbaa !51
  %.pre52 = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre84101 = zext i8 %.pre52 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre-phi85 = phi i64 [ %.pre84101, %bb.ah ], [ %.pre-phi83, %bb.ag ] ; 2 uses
  %i.dk = and i64 %.pre-phi85, 64
  %.not.6 = icmp eq i64 %i.dk, 0
  br i1 %.not.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = shl nuw i64 64, %i.by
  %i.dm = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.dn = trunc i64 %i.dl to i32
  %i.do = or i32 %i.dm, %i.dn
  store i32 %i.do, ptr %i.bu, align 4, !tbaa !51
  %.pre53 = load i8, ptr %i.bv, align 1, !tbaa !29
  %.pre86102 = zext i8 %.pre53 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pre-phi87 = phi i64 [ %.pre86102, %bb.aj ], [ %.pre-phi85, %bb.ai ]
  %i.dp = and i64 %.pre-phi87, 128
  %.not.7 = icmp eq i64 %i.dp, 0
  br i1 %.not.7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = shl nuw i64 128, %i.by
  %i.dr = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.ds = trunc i64 %i.dq to i32
  %i.dt = or i32 %i.dr, %i.ds
  store i32 %i.dt, ptr %i.bu, align 4, !tbaa !51
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.du = and i64 %indvars.iv.next, 4294967295
  %i.dv = icmp ugt i64 %i.l, %i.du
  br i1 %i.dv, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !234

.loopexit:                                        ; preds = %bb.am, %bb.t, %.preheader, %bb.b
  %i.dw = load i8, ptr %i.c, align 1
  %i.dx = or i8 %i.dw, 16
  store i8 %i.dx, ptr %i.c, align 1
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.c

bb.an:                                            ; preds = %.loopexit
  ret void

bb.ao:                                            ; preds = %bb.w, %bb.u, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.cg, %bb.w ], [ %i.bq, %bb.u ]
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN8V3Number5nodepEP7AstNode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !43
  br label %_ZN8V3Number5nodepEP7AstNode.exit

_ZN8V3Number5nodepEP7AstNode.exit:                ; preds = %bb.a, %bb.b
  %i.e = icmp sgt i32 %2, -1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN8V3Number5nodepEP7AstNode.exit
  %i.f = icmp ne i32 %2, 0                        ; 2 uses
  %spec.select = and i1 %i.f, %3
end_hunk_0
