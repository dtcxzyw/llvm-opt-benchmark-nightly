Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/area_code_map?download=true
inline.NumInlined: 98
inline.NumDeleted: 47
begin_hunk_0_@_ZNK4i18n12phonenumbers11AreaCodeMap6LookupERKNS0_11PhoneNumberE:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage15GetNumOfEntriesEv(ptr noundef nonnull align 8 dereferenceable(44) %i.d) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !28
  store i8 0, ptr %i.f, align 8, !tbaa !29
  %i.h = load ptr, ptr %0, align 8, !tbaa !31, !nonnull !32, !align !33
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  invoke void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.j)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.k = load i64, ptr %i.g, align 8, !tbaa !28, !noalias !34 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28, !noalias !34
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.k
  br i1 %i.o, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !35, !noalias !34
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.p, i64 noundef %i.k)
          to label %.noexc56 unwind label %bb.n   ; 6 uses

.noexc56:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !25, !alias.scope !34
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc56
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc56
  store ptr %i.s, ptr %3, align 8, !tbaa !35, !alias.scope !34
  %i.z = load i64, ptr %i.t, align 8, !tbaa !29
  store i64 %i.z, ptr %i.r, align 8, !tbaa !29, !alias.scope !34
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.aa = phi i64 [ %i.w, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !28, !alias.scope !34
  store ptr %i.t, ptr %i.q, align 8, !tbaa !35
  store i64 0, ptr %i.ab, align 8, !tbaa !28
  store i8 0, ptr %i.t, align 8, !tbaa !29
  invoke void @_ZN4i18n12phonenumbers12safe_strto64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.h
  %i.af = load i64, ptr %i.r, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %i.ah = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !29
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.an = invoke noundef ptr @_ZNK4i18n12phonenumbers17DefaultMapStorage18GetPossibleLengthsEv(ptr noundef nonnull align 8 dereferenceable(44) %i.am)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ap = invoke noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage22GetPossibleLengthsSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %i.ao)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.au = icmp slt i32 %i.ap, 1
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = add nsw i32 %i.e, -1
  br label %bb.r

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.ax = trunc nuw i64 %i.bo to i32
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %._crit_edge, label %bb.r, !llvm.loop !20

bb.l:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.m:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.o:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.r
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.o
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !29
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !29
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.aj

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.q:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.r:                                             ; preds = %.lr.ph, %bb.k
  %.022145 = phi i32 [ %i.aw, %.lr.ph ], [ %.219.i89, %bb.k ] ; 2 uses
  %.036144 = phi ptr [ undef, %.lr.ph ], [ %.238, %bb.k ]
  %indvars.iv143 = phi i64 [ %i.av, %.lr.ph ], [ %i.bo, %bb.k ] ; 2 uses
  %i.bo = add nsw i64 %indvars.iv143, -1          ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv143
  %7 = getelementptr i8, ptr %i.bp, i64 -4
  %i.bq = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.br = load i64, ptr %i.b, align 8, !tbaa !38
  invoke void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 noundef %i.br)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.aq, align 8, !tbaa !28 ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp slt i32 %i.bq, %i.bt
  br i1 %i.bu, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.bv = sext i32 %i.bq to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  store ptr %i.ar, ptr %6, align 8, !tbaa !25, !alias.scope !39
  %i.bw = load ptr, ptr %5, align 8, !tbaa !35, !noalias !39 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bs) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10, !noalias !39
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !38, !noalias !39
  %i.bx = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bx, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.t
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc67 unwind label %bb.z   ; 2 uses

.noexc67:                                         ; preds = %.noexc10.i.i
  store ptr %i.by, ptr %6, align 8, !tbaa !35, !alias.scope !39
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !39
  store i64 %i.bz, ptr %i.ar, align 8, !tbaa !29, !alias.scope !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc67, %bb.t
  %i.ca = phi ptr [ %i.by, %.noexc67 ], [ %i.ar, %bb.t ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !29
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !29
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.bw, i64 %spec.select.i.i.i, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !39 ; 2 uses
  store i64 %i.cc, ptr %i.as, align 8, !tbaa !28, !alias.scope !39
  %i.cd = load ptr, ptr %6, align 8, !tbaa !35, !alias.scope !39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10, !noalias !39
  invoke void @_ZN4i18n12phonenumbers12safe_strto64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.b)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ar
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.x
  %i.ch = load i64, ptr %i.ar, align 8, !tbaa !29
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ab

bb.y:                                             ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.z:                                             ; preds = %.noexc10.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.aa:                                            ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ar
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.aa
  %i.co = load i64, ptr %i.ar, align 8, !tbaa !29
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.z
  %.pn47 = phi { ptr, i32 } [ %i.ck, %bb.z ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.cl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ai

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.s
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.not33.i = icmp slt i32 %.022145, 0
  br i1 %.not33.i, label %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ac
  %.02035.i = phi i32 [ %.121.i, %bb.ac ], [ %.022145, %bb.ab ] ; 2 uses
  %.02334.i = phi i32 [ %.124.i, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.cr = add nuw nsw i32 %.02334.i, %.02035.i
  %i.cs = lshr i32 %i.cr, 1                       ; 6 uses
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.cu = invoke noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage9GetPrefixEi(ptr noundef nonnull align 8 dereferenceable(44) %i.ct, i32 noundef %i.cs)
          to label %.noexc74 unwind label %bb.ad

.noexc74:                                         ; preds = %.lr.ph.i
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %.not28.i = icmp eq i64 %i.cq, %i.cv
  br i1 %.not28.i, label %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %.noexc74
  %i.cw = icmp slt i64 %i.cq, %i.cv               ; 3 uses
  %i.cx = add nsw i32 %i.cs, -1                   ; 2 uses
  %i.cy = add nuw nsw i32 %i.cs, 1
  %.124.i = select i1 %i.cw, i32 %.02334.i, i32 %i.cy ; 2 uses
  %.121.i = select i1 %i.cw, i32 %i.cx, i32 %.02035.i ; 2 uses
  %.not.i = icmp sgt i32 %.124.i, %.121.i
  br i1 %.not.i, label %..thread_crit_edge36.i, label %.lr.ph.i

..thread_crit_edge36.i:                           ; preds = %bb.ac
  br i1 %i.cw, label %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit, label %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread

_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit: ; preds = %..thread_crit_edge36.i
  %i.cz = icmp eq i32 %i.cs, 0
  br i1 %i.cz, label %bb.ah, label %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread

bb.ad:                                            ; preds = %.lr.ph.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread: ; preds = %.noexc74, %..thread_crit_edge36.i, %bb.ab, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit
  %.219.i88 = phi i32 [ %i.cx, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit ], [ 0, %bb.ab ], [ %i.cs, %..thread_crit_edge36.i ], [ %i.cs, %.noexc74 ] ; 4 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.dc = invoke noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage9GetPrefixEi(ptr noundef nonnull align 8 dereferenceable(44) %i.db, i32 noundef %.219.i88)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !38
  %i.de = sext i32 %i.dc to i64
  %.not90 = icmp eq i64 %i.dd, %i.de
  br i1 %.not90, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.dg = invoke noundef ptr @_ZNK4i18n12phonenumbers17DefaultMapStorage14GetDescriptionEi(ptr noundef nonnull align 8 dereferenceable(44) %i.df, i32 noundef %.219.i88)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit.thread
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit
  %.219.i89 = phi i32 [ -1, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit ], [ %.219.i88, %bb.af ], [ %.219.i88, %bb.ae ]
  %.238 = phi ptr [ null, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit ], [ %i.dg, %bb.af ], [ %.036144, %bb.ae ] ; 2 uses
  %.134 = phi i1 [ false, %_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil.exit ], [ false, %bb.af ], [ true, %bb.ae ]
  %i.di = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.at
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ah
  %i.dk = load i64, ptr %i.at, align 8, !tbaa !29
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.134, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77._crit_edge, !llvm.loop !20

bb.ai:                                            ; preds = %bb.ag, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn49 = phi { ptr, i32 } [ %i.dh, %bb.ag ], [ %i.da, %bb.ad ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 2 uses
  %i.dm = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.at
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ai
  %i.do = load i64, ptr %i.at, align 8, !tbaa !29
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.y
  %.pn49.pn = phi { ptr, i32 } [ %i.cj, %bb.y ], [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn49, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  br label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77._crit_edge, %bb.j
  %spec.select = phi ptr [ %.238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77._crit_edge ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.dq = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.f
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %._crit_edge
  %i.ds = load i64, ptr %i.f, align 8, !tbaa !29
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.al

bb.aj:                                            ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.bm, %bb.p ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.bn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.l
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %bb.aj ], [ %i.az, %bb.l ]
  %i.du = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.f
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ak
  %i.dw = load i64, ptr %i.f, align 8, !tbaa !29
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn

bb.al:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.541 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ null, %bb.a ]
  ret ptr %.541
}

declare noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage15GetNumOfEntriesEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

declare void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN4i18n12phonenumbers12safe_strto64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4i18n12phonenumbers17DefaultMapStorage18GetPossibleLengthsEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

declare noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage22GetPossibleLengthsSizeEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

declare void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11El(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1073741825, 1073741824) i32 @_ZNK4i18n12phonenumbers11AreaCodeMap12BinarySearchEiil(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not33 = icmp sgt i32 %1, %2
  br i1 %.not33, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02035 = phi i32 [ %2, %.lr.ph ], [ %.121, %bb.c ] ; 2 uses
  %.02334 = phi i32 [ %1, %.lr.ph ], [ %.124, %bb.c ] ; 2 uses
  %i.b = add nsw i32 %.02035, %.02334
  %i.c = sdiv i32 %i.b, 2                         ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = tail call noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage9GetPrefixEi(ptr noundef nonnull align 8 dereferenceable(44) %i.d, i32 noundef %i.c)
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %.not28 = icmp eq i64 %3, %i.f
  br i1 %.not28, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %3, %i.f                    ; 3 uses
  %i.h = add nsw i32 %i.c, -1                     ; 2 uses
  %i.i = add nsw i32 %i.c, 1
  %.124 = select i1 %i.g, i32 %.02334, i32 %i.i   ; 2 uses
  %.121 = select i1 %i.g, i32 %i.h, i32 %.02035   ; 2 uses
  %.not = icmp sgt i32 %.124, %.121
  br i1 %.not, label %..thread_crit_edge36, label %bb.b

..thread_crit_edge36:                             ; preds = %bb.c
  %.1.le = select i1 %i.g, i32 %i.h, i32 %i.c
  br label %.thread

.thread:                                          ; preds = %bb.b, %..thread_crit_edge36, %bb.a
  %.219 = phi i32 [ %.1.le, %..thread_crit_edge36 ], [ 0, %bb.a ], [ %i.c, %bb.b ]
  ret i32 %.219
}

declare noundef i32 @_ZNK4i18n12phonenumbers17DefaultMapStorage9GetPrefixEi(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4i18n12phonenumbers17DefaultMapStorage14GetDescriptionEi(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN4i18n12phonenumbers15PhoneNumberUtilE", !8, i64 0}
!10 = !{!"p1 _ZTSN4i18n12phonenumbers17DefaultMapStorageE", !8, i64 0}
!11 = !{!"_ZTSN5boost10scoped_ptrIKN4i18n12phonenumbers17DefaultMapStorageEEE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !3, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{!18, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!19 = distinct !{!19, !18, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!20 = distinct !{!20, !36}
!21 = distinct !{!21, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!22 = distinct !{!22, !21, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!23 = !{!"p1 omnipotent char", !8, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !4, i64 0}
end_hunk_0
