Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK8V3Number10toDecimalSB5cxx11Ev:bb.a
  resume { ptr, i32 } %.pn.pn.pn

_ZNK8V3Number10isNegativeEv.exit.thread:          ; preds = %_ZNK12V3NumberData3numEv.exit.i.i, %bb.b, %bb.a, %_ZNK8V3Number10isNegativeEv.exit
  tail call void @_ZNK8V3Number10toDecimalUB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit.thread, %_ZN8V3NumberD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z8cvtToStrIlENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !46
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
          to label %_ZNSolsEl.exit unwind label %bb.e ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !25, !alias.scope !359
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !28, !alias.scope !359
  store i8 0, ptr %i.c, align 8, !tbaa !29, !alias.scope !359
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !359 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !359 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEl.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34, !noalias !359 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !359 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !29, !alias.scope !359
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEl.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !45
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ai) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8V3Number10toDecimalUB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.V3Number, align 8            ; 31 uses
  %3 = alloca %class.V3Number, align 8            ; 22 uses
  %4 = alloca %class.V3Number, align 8            ; 25 uses
  %5 = alloca %class.V3Number, align 8            ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = shl i32 %i.b, 2
  %i.d = add i32 %i.c, 12                         ; 3 uses
  %i.e = sdiv i32 %i.d, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = add nsw i32 %i.e, 4                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store i32 0, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 8 uses
  store i8 0, ptr %i.h, align 4, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, -128
  store i8 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i32 noundef %i.f, i1 noundef zeroext true)
          to label %_ZN8V3NumberC2EPKS_i.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZN8V3NumberD2Ev.exit299, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn35.pn.pn, %_ZN8V3NumberD2Ev.exit299 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %2) #30
  br label %common.resume

_ZN8V3NumberC2EPKS_i.exit:                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  store ptr %i.p, ptr %i.n, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i8 0, ptr %i.r, align 4, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, -128
  store i8 %i.u, ptr %i.s, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i32 noundef %i.f, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN8V3NumberC2EPKS_i.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %3) #30
  br label %.body

bb.d:                                             ; preds = %_ZN8V3NumberC2EPKS_i.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !43
  store ptr %i.y, ptr %i.x, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 7 uses
  store i8 0, ptr %i.aa, align 4, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 37 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, -128
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i32 noundef %i.f, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %4) #30
  br label %.body40

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !43
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !43
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !47
  %.fr.i.i = freeze i32 %i.ai                     ; 3 uses
  %i.aj = icmp samesign ult i32 %.fr.i.i, 129
  %.026193 = add nsw i32 %.fr.i.i, -1             ; 3 uses
  %i.ak = icmp sgt i32 %.fr.i.i, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge220

.lr.ph:                                           ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !tbaa !48
  %i.an = add i8 %i.am, -3
  %spec.select.i.i = icmp ult i8 %i.an, -2
  br i1 %spec.select.i.i, label %.preheader.lr.ph, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.aj, label %_ZNK12V3NumberData3numEv.exit.i.us205, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %i.ao = load ptr, ptr %1, align 8
  br label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i.us205:            ; preds = %.lr.ph.split.split, %_ZNK8V3Number6bitIs0Ei.exit.backedge.us206
  %.026195.us202 = phi i32 [ %.026.us207, %_ZNK8V3Number6bitIs0Ei.exit.backedge.us206 ], [ %.026193, %.lr.ph.split.split ] ; 5 uses
  %i.ap = lshr i32 %.026195.us202, 5
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.us208 = load i32, ptr %i.ar, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx.i.us209 = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.4.0.copyload.i.us210 = load i32, ptr %.sroa.4.0..sroa_idx.i.us209, align 4, !tbaa !69
  %i.as = or i32 %.sroa.4.0.copyload.i.us210, %.sroa.0.0.copyload.i.us208
  %i.at = zext i32 %i.as to i64
  %i.au = and i32 %.026195.us202, 31
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 1, %i.av
  %i.ax = and i64 %i.aw, %i.at
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNK8V3Number6bitIs0Ei.exit.backedge.us206, label %.preheader.lr.ph

_ZNK8V3Number6bitIs0Ei.exit.backedge.us206:       ; preds = %_ZNK12V3NumberData3numEv.exit.i.us205
  %.026.us207 = add nsw i32 %.026195.us202, -1
  %i.az = icmp sgt i32 %.026195.us202, 0
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit.i.us205, label %._crit_edge220, !llvm.loop !360

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split.split.split.preheader, %_ZNK8V3Number6bitIs0Ei.exit.backedge
  %.026195 = phi i32 [ %.026, %_ZNK8V3Number6bitIs0Ei.exit.backedge ], [ %.026193, %.lr.ph.split.split.split.preheader ] ; 5 uses
  %i.ba = lshr i32 %.026195, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bb ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.bc, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %i.bd = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.be = zext i32 %i.bd to i64
  %i.bf = and i32 %.026195, 31
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 1, %i.bg
  %i.bi = and i64 %i.bh, %i.be
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZNK8V3Number6bitIs0Ei.exit.backedge, label %.preheader.lr.ph

_ZNK8V3Number6bitIs0Ei.exit.backedge:             ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.026 = add nsw i32 %.026195, -1
  %i.bk = icmp sgt i32 %.026195, 0
  br i1 %i.bk, label %_ZNK12V3NumberData3numEv.exit.i, label %._crit_edge220, !llvm.loop !360

.loopexit177:                                     ; preds = %._crit_edge
  %lpad.loopexit179 = landingpad { ptr, i32 }
          cleanup
  br label %.body147

.loopexit.split-lp178:                            ; preds = %bb.ap, %.noexc86, %.noexc88, %.noexc89, %.noexc87
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %.body147

.preheader.lr.ph:                                 ; preds = %_ZNK12V3NumberData3numEv.exit.i, %_ZNK12V3NumberData3numEv.exit.i.us205, %.lr.ph
  %.026.lcssa.ph = phi i32 [ %.026193, %.lr.ph ], [ %.026195.us202, %_ZNK12V3NumberData3numEv.exit.i.us205 ], [ %.026195, %_ZNK12V3NumberData3numEv.exit.i ]
  %i.bl = icmp sgt i32 %i.d, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 37 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bs = sext i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN8V3Number6setBitEic.exit91
  %.127219 = phi i32 [ %.026.lcssa.ph, %.preheader.lr.ph ], [ %i.iy, %_ZN8V3Number6setBitEic.exit91 ] ; 5 uses
  br i1 %i.bl, label %.lr.ph218, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK8V3Number9bitsValueEii.exit.thread, %.preheader
  %i.bt = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext false)
          to label %_ZN8V3Number8opAssignERKS_.exit unwind label %.loopexit177, !inline_history !161 ; 0 uses

.lr.ph218:                                        ; preds = %.preheader, %_ZNK8V3Number9bitsValueEii.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK8V3Number9bitsValueEii.exit.thread ], [ 0, %.preheader ] ; 14 uses
  %i.bu = load i8, ptr %i.h, align 4, !tbaa !48
  %.fr11.i = freeze i8 %i.bu
  %i.bv = add i8 %.fr11.i, -3
  %spec.select.i.i.i = icmp ult i8 %i.bv, -2
  %i.bw = load i32, ptr %i.g, align 8             ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, 129
  %i.by = load ptr, ptr %2, align 8
  %spec.select.i10.i.i = select i1 %i.bx, ptr %2, ptr %i.by ; 4 uses
  br i1 %spec.select.i.i.i, label %_ZNK8V3Number9bitsValueEii.exit.thread, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph218
  %i.bz = sext i32 %i.bw to i64                   ; 4 uses
  %.not.i.i = icmp slt i64 %indvars.iv, %i.bz
  br i1 %.not.i.i, label %_ZNK12V3NumberData3numEv.exit.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.split.i.preheader
  %i.ca = lshr i64 %indvars.iv, 5
  %i.cb = and i64 %i.ca, 134217727
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cc, align 4, !tbaa !69
  %i.cd = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.ce = and i64 %indvars.iv, 28
  %i.cf = shl nuw nsw i64 1, %i.ce                ; 2 uses
  %i.cg = and i64 %i.cf, %i.cd
  %.not7.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !69
  %i.ch = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.ci = and i64 %i.cf, %i.ch
  %.not8.i.i = icmp eq i64 %i.ci, 0
  %i.cj = zext i1 %.not8.i.i to i32
  br label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %bb.g, %_ZNK12V3NumberData3numEv.exit.i.i, %.lr.ph.split.i.preheader
  %.0.i.i = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.cj, %bb.g ], [ 0, %_ZNK12V3NumberData3numEv.exit.i.i ] ; 3 uses
  %i.ck = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %.not.i.i.1 = icmp slt i64 %i.ck, %i.bz
  br i1 %.not.i.i.1, label %_ZNK12V3NumberData3numEv.exit.i.i.1, label %_ZNK8V3Number6bitIs1Ei.exit.i.1

_ZNK12V3NumberData3numEv.exit.i.i.1:              ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i
  %i.cl = lshr i64 %indvars.iv, 5
  %i.cm = and i64 %i.cl, 134217727
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.cm ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load i32, ptr %i.cn, align 4, !tbaa !69
  %i.co = zext i32 %.sroa.0.0.copyload.i.i.1 to i64
  %i.cp = and i64 %i.ck, 29
  %i.cq = shl nuw nsw i64 1, %i.cp                ; 2 uses
  %i.cr = and i64 %i.cq, %i.co
  %.not7.i.i.1 = icmp eq i64 %i.cr, 0
  br i1 %.not7.i.i.1, label %_ZNK8V3Number6bitIs1Ei.exit.i.1, label %bb.h

bb.h:                                             ; preds = %_ZNK12V3NumberData3numEv.exit.i.i.1
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.sroa.4.0.copyload.i.i.1 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.1, align 4, !tbaa !69
  %i.cs = zext i32 %.sroa.4.0.copyload.i.i.1 to i64
  %i.ct = and i64 %i.cq, %i.cs
  %.not8.i.i.1 = icmp eq i64 %i.ct, 0
  %i.cu = select i1 %.not8.i.i.1, i32 2, i32 0
  %i.cv = or disjoint i32 %i.cu, %.0.i.i
  br label %_ZNK8V3Number6bitIs1Ei.exit.i.1

_ZNK8V3Number6bitIs1Ei.exit.i.1:                  ; preds = %bb.h, %_ZNK12V3NumberData3numEv.exit.i.i.1, %_ZNK8V3Number6bitIs1Ei.exit.i
  %.0.i.i.1 = phi i32 [ %.0.i.i, %_ZNK8V3Number6bitIs1Ei.exit.i ], [ %i.cv, %bb.h ], [ %.0.i.i, %_ZNK12V3NumberData3numEv.exit.i.i.1 ] ; 3 uses
  %i.cw = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %.not.i.i.2 = icmp slt i64 %i.cw, %i.bz
  br i1 %.not.i.i.2, label %_ZNK12V3NumberData3numEv.exit.i.i.2, label %_ZNK8V3Number6bitIs1Ei.exit.i.2

_ZNK12V3NumberData3numEv.exit.i.i.2:              ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i.1
  %i.cx = lshr i64 %indvars.iv, 5
  %i.cy = and i64 %i.cx, 134217727
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.cy ; 2 uses
  %.sroa.0.0.copyload.i.i.2 = load i32, ptr %i.cz, align 4, !tbaa !69
  %i.da = zext i32 %.sroa.0.0.copyload.i.i.2 to i64
  %i.db = and i64 %i.cw, 30
  %i.dc = shl nuw nsw i64 1, %i.db                ; 2 uses
  %i.dd = and i64 %i.dc, %i.da
  %.not7.i.i.2 = icmp eq i64 %i.dd, 0
  br i1 %.not7.i.i.2, label %_ZNK8V3Number6bitIs1Ei.exit.i.2, label %bb.i

bb.i:                                             ; preds = %_ZNK12V3NumberData3numEv.exit.i.i.2
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.4.0.copyload.i.i.2 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.2, align 4, !tbaa !69
  %i.de = zext i32 %.sroa.4.0.copyload.i.i.2 to i64
  %i.df = and i64 %i.dc, %i.de
  %.not8.i.i.2 = icmp eq i64 %i.df, 0
  %i.dg = select i1 %.not8.i.i.2, i32 4, i32 0
  %i.dh = or i32 %i.dg, %.0.i.i.1
  br label %_ZNK8V3Number6bitIs1Ei.exit.i.2

_ZNK8V3Number6bitIs1Ei.exit.i.2:                  ; preds = %bb.i, %_ZNK12V3NumberData3numEv.exit.i.i.2, %_ZNK8V3Number6bitIs1Ei.exit.i.1
  %.0.i.i.2 = phi i32 [ %.0.i.i.1, %_ZNK8V3Number6bitIs1Ei.exit.i.1 ], [ %i.dh, %bb.i ], [ %.0.i.i.1, %_ZNK12V3NumberData3numEv.exit.i.i.2 ] ; 3 uses
  %i.di = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %.not.i.i.3 = icmp slt i64 %i.di, %i.bz
  br i1 %.not.i.i.3, label %_ZNK12V3NumberData3numEv.exit.i.i.3, label %_ZNK8V3Number6bitIs1Ei.exit.i.3

_ZNK12V3NumberData3numEv.exit.i.i.3:              ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i.2
  %i.dj = lshr i64 %indvars.iv, 5
  %i.dk = and i64 %i.dj, 134217727
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.dk ; 2 uses
  %.sroa.0.0.copyload.i.i.3 = load i32, ptr %i.dl, align 4, !tbaa !69
  %i.dm = zext i32 %.sroa.0.0.copyload.i.i.3 to i64
  %i.dn = and i64 %i.di, 31
  %i.do = shl nuw nsw i64 1, %i.dn                ; 2 uses
  %i.dp = and i64 %i.do, %i.dm
  %.not7.i.i.3 = icmp eq i64 %i.dp, 0
  br i1 %.not7.i.i.3, label %_ZNK8V3Number6bitIs1Ei.exit.i.3, label %bb.j

bb.j:                                             ; preds = %_ZNK12V3NumberData3numEv.exit.i.i.3
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.sroa.4.0.copyload.i.i.3 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.3, align 4, !tbaa !69
  %i.dq = zext i32 %.sroa.4.0.copyload.i.i.3 to i64
  %i.dr = and i64 %i.do, %i.dq
  %.not8.i.i.3 = icmp eq i64 %i.dr, 0
  %i.ds = select i1 %.not8.i.i.3, i32 8, i32 0
  %i.dt = or i32 %i.ds, %.0.i.i.2
  br label %_ZNK8V3Number6bitIs1Ei.exit.i.3

_ZNK8V3Number6bitIs1Ei.exit.i.3:                  ; preds = %bb.j, %_ZNK12V3NumberData3numEv.exit.i.i.3, %_ZNK8V3Number6bitIs1Ei.exit.i.2
  %.0.i.i.3 = phi i32 [ %.0.i.i.2, %_ZNK8V3Number6bitIs1Ei.exit.i.2 ], [ %i.dt, %bb.j ], [ %.0.i.i.2, %_ZNK12V3NumberData3numEv.exit.i.i.3 ]
  %i.du = icmp samesign ugt i32 %.0.i.i.3, 4
  br i1 %i.du, label %bb.k, label %_ZNK8V3Number9bitsValueEii.exit.thread

bb.k:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i.3
  %i.dv = load i32, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i, label %_ZN8V3Number11setAllBits0Ev.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.dx = load i8, ptr %i.aa, align 4, !tbaa !48
  %i.dy = add i8 %i.dx, -1
  %spec.select.i.i.i44 = icmp ult i8 %i.dy, 2
  br i1 %spec.select.i.i.i44, label %_ZN12V3NumberData3numEv.exit.i, label %bb.l, !prof !49

_ZN12V3NumberData3numEv.exit.i:                   ; preds = %.lr.ph.i, %_ZN12V3NumberData3numEv.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN12V3NumberData3numEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dz = phi i32 [ %i.ed, %_ZN12V3NumberData3numEv.exit.i ], [ %i.dv, %.lr.ph.i ]
  %i.ea = icmp slt i32 %i.dz, 129
  %i.eb = load ptr, ptr %4, align 8
  %spec.select.i.i45 = select i1 %i.ea, ptr %4, ptr %i.eb
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i45, i64 %indvars.iv.i ; 2 uses
  store i32 0, ptr %i.ec, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i46, align 4, !tbaa !69
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ed = load i32, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %i.ee = add nsw i32 %i.ed, 31
  %i.ef = sdiv i32 %i.ee, 32
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next.i, %i.eg
  br i1 %i.eh, label %_ZN12V3NumberData3numEv.exit.i, label %_ZN8V3Number11setAllBits0Ev.exit, !llvm.loop !3

bb.l:                                             ; preds = %.lr.ph.i
  %i.ei = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.l
  %i.ej = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.m, label %.noexc47, !prof !70

bb.m:                                             ; preds = %.noexc
  %i.el = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i146 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i146, label %.noexc47, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.em = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %.noexc47

bb.p:                                             ; preds = %bb.n
  %i.en = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN8V3Number8opOneHotERKS_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1443) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZNK8V3Number9countOnesEv.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4, !tbaa !48
  %i.k = add i8 %i.j, -3
  %spec.select.i.i.i = icmp ult i8 %i.k, -2
  %i.l = icmp samesign ult i32 %i.g, 129
  %i.m = load ptr, ptr %1, align 8
  %spec.select.i10.i.i = select i1 %i.l, ptr %1, ptr %i.m
  br i1 %spec.select.i.i.i, label %_ZNK8V3Number9countOnesEv.exit, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  %.09.i = phi i32 [ %i.z, %_ZNK8V3Number6bitIs1Ei.exit.thread.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.058.i = phi i32 [ %i.y, %_ZNK8V3Number6bitIs1Ei.exit.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.n = lshr i32 %.09.i, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4, !tbaa !69
  %i.q = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.r = and i32 %.09.i, 31
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = and i64 %i.t, %i.q
  %.not7.i.i = icmp eq i64 %i.u, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !69
  %i.v = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.w = and i64 %i.t, %i.v
  %.fr.i = freeze i64 %i.w
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  %i.x = zext i1 %.not8.i.i to i32
  %spec.select.i = add nsw i32 %.058.i, %i.x
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread.i

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i
  %i.y = phi i32 [ %.058.i, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %spec.select.i, %_ZNK8V3Number6bitIs1Ei.exit.i ] ; 2 uses
  %i.z = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, %i.g
  br i1 %exitcond.not.i, label %_ZNK8V3Number9countOnesEv.exit.loopexit, label %_ZNK12V3NumberData3numEv.exit.i.i, !llvm.loop !8

_ZNK8V3Number9countOnesEv.exit.loopexit:          ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  %i.aa = icmp eq i32 %i.y, 1
  %i.ab = zext i1 %i.aa to i8
  br label %_ZNK8V3Number9countOnesEv.exit

_ZNK8V3Number9countOnesEv.exit:                   ; preds = %_ZNK8V3Number9countOnesEv.exit.loopexit, %bb.e, %.lr.ph.i
  %.05.lcssa.i = phi i8 [ 0, %bb.e ], [ 0, %.lr.ph.i ], [ %i.ab, %_ZNK8V3Number9countOnesEv.exit.loopexit ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13setSingleBitsEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %.05.lcssa.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8V3Number9countOnesEv.exit, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opOneHot0ERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1448) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZNK8V3Number9countOnesEv.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4, !tbaa !48
  %i.k = add i8 %i.j, -3
  %spec.select.i.i.i = icmp ult i8 %i.k, -2
  %i.l = icmp samesign ult i32 %i.g, 129
  %i.m = load ptr, ptr %1, align 8
  %spec.select.i10.i.i = select i1 %i.l, ptr %1, ptr %i.m
  br i1 %spec.select.i.i.i, label %_ZNK8V3Number9countOnesEv.exit, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  %.09.i = phi i32 [ %i.z, %_ZNK8V3Number6bitIs1Ei.exit.thread.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.058.i = phi i32 [ %i.y, %_ZNK8V3Number6bitIs1Ei.exit.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.n = lshr i32 %.09.i, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4, !tbaa !69
  %i.q = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.r = and i32 %.09.i, 31
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = and i64 %i.t, %i.q
  %.not7.i.i = icmp eq i64 %i.u, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !69
  %i.v = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.w = and i64 %i.t, %i.v
  %.fr.i = freeze i64 %i.w
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  %i.x = zext i1 %.not8.i.i to i32
  %spec.select.i = add nsw i32 %.058.i, %i.x
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread.i

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i
  %i.y = phi i32 [ %.058.i, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %spec.select.i, %_ZNK8V3Number6bitIs1Ei.exit.i ] ; 2 uses
  %i.z = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, %i.g
  br i1 %exitcond.not.i, label %_ZNK8V3Number9countOnesEv.exit.loopexit, label %_ZNK12V3NumberData3numEv.exit.i.i, !llvm.loop !8

_ZNK8V3Number9countOnesEv.exit.loopexit:          ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  %i.aa = icmp ult i32 %i.y, 2
  %i.ab = zext i1 %i.aa to i8
  br label %_ZNK8V3Number9countOnesEv.exit

_ZNK8V3Number9countOnesEv.exit:                   ; preds = %_ZNK8V3Number9countOnesEv.exit.loopexit, %bb.e, %.lr.ph.i
  %.05.lcssa.i = phi i8 [ 1, %bb.e ], [ 1, %.lr.ph.i ], [ %i.ab, %_ZNK8V3Number9countOnesEv.exit.loopexit ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13setSingleBitsEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %.05.lcssa.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8V3Number9countOnesEv.exit, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opCLog2ERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1453) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %.not16 = icmp eq i8 %i.e, 1
  br i1 %.not16, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1454) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.74)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  %.fr30 = freeze i32 %i.n                        ; 7 uses
  %i.o = icmp sgt i32 %.fr30, 0
  br i1 %i.o, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %bb.g
  %i.p = load i8, ptr %i.d, align 4, !tbaa !48
  %i.q = add i8 %i.p, -3
  %spec.select.i.i.i = icmp ult i8 %i.q, -2
  %i.r = icmp samesign ult i32 %.fr30, 129
  %i.s = load ptr, ptr %1, align 8
  %spec.select.i10.i.i = select i1 %i.r, ptr %1, ptr %i.s
  br i1 %spec.select.i.i.i, label %.lr.ph, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  %.09.i = phi i32 [ %i.af, %_ZNK8V3Number6bitIs1Ei.exit.thread.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.058.i = phi i32 [ %i.ae, %_ZNK8V3Number6bitIs1Ei.exit.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.t = lshr i32 %.09.i, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.u ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.v, align 4, !tbaa !69
  %i.w = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.x = and i32 %.09.i, 31
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 1, %i.y                  ; 2 uses
  %i.aa = and i64 %i.z, %i.w
  %.not7.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread.i, label %_ZNK8V3Number6bitIs1Ei.exit.i

_ZNK8V3Number6bitIs1Ei.exit.i:                    ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !69
  %i.ab = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.ac = and i64 %i.z, %i.ab
  %.fr.i = freeze i64 %i.ac
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  %i.ad = zext i1 %.not8.i.i to i32
  %spec.select.i = add nsw i32 %.058.i, %i.ad
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread.i

_ZNK8V3Number6bitIs1Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.i, %_ZNK12V3NumberData3numEv.exit.i.i
  %i.ae = phi i32 [ %.058.i, %_ZNK12V3NumberData3numEv.exit.i.i ], [ %spec.select.i, %_ZNK8V3Number6bitIs1Ei.exit.i ] ; 2 uses
  %i.af = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.af, %.fr30
  br i1 %exitcond.not.i, label %_ZNK8V3Number9countOnesEv.exit, label %_ZNK12V3NumberData3numEv.exit.i.i, !llvm.loop !8

_ZNK8V3Number9countOnesEv.exit:                   ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread.i
  %i.ag = icmp ne i32 %i.ae, 1
  %i.ah = zext i1 %i.ag to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %_ZNK8V3Number9countOnesEv.exit
  %.05.lcssa.i43 = phi i32 [ %i.ah, %_ZNK8V3Number9countOnesEv.exit ], [ 1, %.lr.ph.i ]
  %i.ai = load i8, ptr %i.d, align 4, !tbaa !48
  %.fr29 = freeze i8 %i.ai
  %i.aj = add i8 %.fr29, -1
  %spec.select.i.i = icmp ult i8 %i.aj, 2
  br i1 %spec.select.i.i, label %.lr.ph.split, label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph
  %.0141944 = add nsw i32 %.fr30, -1              ; 2 uses
  %i.ak = icmp samesign ult i32 %.fr30, 129
  br i1 %i.ak, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.backedge.us24
  %.014.in20.us = phi i32 [ %.014.us25, %.backedge.us24 ], [ %.0141944, %.lr.ph.split ] ; 6 uses
  %.not.i.us.not.not = icmp slt i32 %.014.in20.us, %.fr30
  br i1 %.not.i.us.not.not, label %_ZNK12V3NumberData3numEv.exit.i.us, label %.backedge.us24

_ZNK12V3NumberData3numEv.exit.i.us:               ; preds = %.lr.ph.split.split.us
  %i.al = lshr i32 %.014.in20.us, 5
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.an, align 8, !tbaa !69
  %i.ao = zext i32 %.sroa.0.0.copyload.i.us to i64
  %i.ap = and i32 %.014.in20.us, 31
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 1, %i.aq                ; 2 uses
  %i.as = and i64 %i.ar, %i.ao
  %.not7.i.us = icmp eq i64 %i.as, 0
  br i1 %.not7.i.us, label %.backedge.us24, label %.split.us

.split.us:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.i.us
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !69
  %i.at = zext i32 %.sroa.4.0.copyload.i.us to i64
  %i.au = and i64 %i.ar, %i.at
  %.not8.i.us = icmp eq i64 %i.au, 0
  br i1 %.not8.i.us, label %.split27.us, label %.backedge.us24

.backedge.us24:                                   ; preds = %.lr.ph.split.split.us, %_ZNK12V3NumberData3numEv.exit.i.us, %.split.us
  %.014.us25 = add nsw i32 %.014.in20.us, -1
  %i.av = icmp slt i32 %.014.in20.us, 1
  br i1 %i.av, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !414

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.backedge
  %.014.in20 = phi i32 [ %.014, %.backedge ], [ %.0141944, %.lr.ph.split ] ; 6 uses
  %.not.i.not.not = icmp slt i32 %.014.in20, %.fr30
  br i1 %.not.i.not.not, label %_ZNK12V3NumberData3numEv.exit.i, label %.backedge

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split.split
  %i.aw = load ptr, ptr %1, align 8
  %i.ax = lshr i32 %.014.in20, 5
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4, !tbaa !69
  %i.ba = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bb = and i32 %.014.in20, 31
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 1, %i.bc                ; 2 uses
  %i.be = and i64 %i.bd, %i.ba
  %.not7.i = icmp eq i64 %i.be, 0
  br i1 %.not7.i, label %.backedge, label %.split

.split:                                           ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %i.bf = zext i32 %.sroa.4.0.copyload.i to i64
  %i.bg = and i64 %i.bd, %i.bf
  %.not8.i = icmp eq i64 %i.bg, 0
  br i1 %.not8.i, label %.split27.us, label %.backedge

.backedge:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.i, %.lr.ph.split.split, %.split
  %.014 = add nsw i32 %.014.in20, -1
  %i.bh = icmp slt i32 %.014.in20, 1
  br i1 %i.bh, label %.critedge, label %.lr.ph.split.split, !llvm.loop !414

.split27.us:                                      ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %.014.in20.us, %.split.us ], [ %.014.in20, %.split ]
  %i.bi = add nuw nsw i32 %.us-phi, %.05.lcssa.i43
  %i.bj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setLongEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.bi) ; 0 uses
  br label %bb.h

.critedge:                                        ; preds = %.backedge, %.backedge.us24, %bb.g, %.lr.ph
  %i.bk = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.split27.us, %.critedge, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number14opMostSetBitP1ERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1469) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %.not14 = icmp eq i8 %i.e, 1
  br i1 %.not14, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1470) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.74)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  %.fr29 = freeze i32 %i.n                        ; 5 uses
  %.01218 = add nsw i32 %.fr29, -1                ; 2 uses
  %i.o = icmp sgt i32 %.fr29, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.p = load i8, ptr %i.d, align 4, !tbaa !48
  %.fr28 = freeze i8 %i.p
  %i.q = add i8 %.fr28, -1
  %spec.select.i.i = icmp ult i8 %i.q, 2
  br i1 %spec.select.i.i, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.r = icmp samesign ult i32 %.fr29, 129
  br i1 %i.r, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.backedge.us23
  %.012.in19.us = phi i32 [ %.012.us24, %.backedge.us23 ], [ %.01218, %.lr.ph.split ] ; 6 uses
  %.not.i.us.not.not = icmp slt i32 %.012.in19.us, %.fr29
  br i1 %.not.i.us.not.not, label %_ZNK12V3NumberData3numEv.exit.i.us, label %.backedge.us23

_ZNK12V3NumberData3numEv.exit.i.us:               ; preds = %.lr.ph.split.split.us
  %i.s = lshr i32 %.012.in19.us, 5
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.u, align 8, !tbaa !69
  %i.v = zext i32 %.sroa.0.0.copyload.i.us to i64
  %i.w = and i32 %.012.in19.us, 31
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 1, %i.x                  ; 2 uses
  %i.z = and i64 %i.y, %i.v
  %.not7.i.us = icmp eq i64 %i.z, 0
  br i1 %.not7.i.us, label %.backedge.us23, label %.split.us

.split.us:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.i.us
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !69
  %i.aa = zext i32 %.sroa.4.0.copyload.i.us to i64
  %i.ab = and i64 %i.y, %i.aa
  %.not8.i.us = icmp eq i64 %i.ab, 0
  br i1 %.not8.i.us, label %.split26.us, label %.backedge.us23

.backedge.us23:                                   ; preds = %.lr.ph.split.split.us, %_ZNK12V3NumberData3numEv.exit.i.us, %.split.us
  %.012.us24 = add nsw i32 %.012.in19.us, -1
  %i.ac = icmp sgt i32 %.012.in19.us, 0
  br i1 %i.ac, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !415

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.backedge
  %.012.in19 = phi i32 [ %.012, %.backedge ], [ %.01218, %.lr.ph.split ] ; 6 uses
  %.not.i.not.not = icmp slt i32 %.012.in19, %.fr29
  br i1 %.not.i.not.not, label %_ZNK12V3NumberData3numEv.exit.i, label %.backedge

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split.split
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = lshr i32 %.012.in19, 5
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 4, !tbaa !69
  %i.ah = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ai = and i32 %.012.in19, 31
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 1, %i.aj                ; 2 uses
  %i.al = and i64 %i.ak, %i.ah
  %.not7.i = icmp eq i64 %i.al, 0
  br i1 %.not7.i, label %.backedge, label %.split

.split:                                           ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %i.am = zext i32 %.sroa.4.0.copyload.i to i64
  %i.an = and i64 %i.ak, %i.am
  %.not8.i = icmp eq i64 %i.an, 0
  br i1 %.not8.i, label %.split26.us, label %.backedge

.backedge:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.i, %.lr.ph.split.split, %.split
  %.012 = add nsw i32 %.012.in19, -1
  %i.ao = icmp sgt i32 %.012.in19, 0
  br i1 %i.ao, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !415

.split26.us:                                      ; preds = %.split, %.split.us
  %.us-phi.a = phi i32 [ %.012.in19.us, %.split.us ], [ %.012.in19, %.split ]
  %.us-phi = add nuw nsw i32 %.us-phi.a, 1
  %i.ap = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setLongEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.us-phi) ; 0 uses
  br label %bb.h

._crit_edge:                                      ; preds = %.backedge, %.backedge.us23, %.lr.ph, %bb.g
  %i.aq = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.split26.us, %._crit_edge, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opLogNotERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1483) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %.not16 = icmp eq i8 %i.e, 1
  br i1 %.not16, label %.preheader, label %bb.d, !prof !49

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47
  %.fr.i.i = freeze i32 %i.g                      ; 3 uses
  %i.h = icmp sgt i32 %.fr.i.i, 0
  br i1 %i.h, label %_ZNK12V3NumberData3numEv.exit.i.lr.ph, label %._crit_edge

_ZNK12V3NumberData3numEv.exit.i.lr.ph:            ; preds = %.preheader
  %i.i = icmp samesign ult i32 %.fr.i.i, 129
  %i.j = load ptr, ptr %1, align 8
  %spec.select.i10.i = select i1 %i.i, ptr %1, ptr %i.j
  br label %_ZNK12V3NumberData3numEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1484) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.74)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.o) #32
  unreachable

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %_ZNK12V3NumberData3numEv.exit.i.lr.ph, %.thread
  %.01335 = phi i32 [ 0, %_ZNK12V3NumberData3numEv.exit.i.lr.ph ], [ %i.ad, %.thread ] ; 3 uses
  %.01434 = phi i8 [ 1, %_ZNK12V3NumberData3numEv.exit.i.lr.ph ], [ %spec.select, %.thread ]
  %i.p = lshr i32 %.01335, 5
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 4, !tbaa !69 ; 2 uses
  %i.s = zext i32 %.sroa.0.0.copyload.i to i64
  %i.t = and i32 %.01335, 31
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 1, %i.u                  ; 3 uses
  %i.w = and i64 %i.v, %i.s
  %.not7.i = icmp ne i64 %i.w, 0
  %.sroa.4.0..sroa_idx.i22.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.4.0.copyload.i23.pre = load i32, ptr %.sroa.4.0..sroa_idx.i22.phi.trans.insert, align 4, !tbaa !69 ; 2 uses
  %i.x = zext i32 %.sroa.4.0.copyload.i23.pre to i64
  %i.y = and i64 %i.v, %i.x
  %.not8.i = icmp eq i64 %i.y, 0
  %or.cond = select i1 %.not7.i, i1 %.not8.i, i1 false
  br i1 %or.cond, label %._crit_edge, label %.thread

.thread:                                          ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %i.z = or i32 %.sroa.4.0.copyload.i23.pre, %.sroa.0.0.copyload.i
  %i.aa = zext i32 %i.z to i64
  %i.ab = and i64 %i.v, %i.aa
  %.fr33 = freeze i64 %i.ab
  %i.ac = icmp eq i64 %.fr33, 0
  %spec.select = select i1 %i.ac, i8 %.01434, i8 120 ; 2 uses
  %i.ad = add nuw nsw i32 %.01335, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %.fr.i.i
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit.i, !llvm.loop !416

._crit_edge:                                      ; preds = %.thread, %_ZNK12V3NumberData3numEv.exit.i, %.preheader
  %.2 = phi i8 [ 1, %.preheader ], [ %spec.select, %.thread ], [ 0, %_ZNK12V3NumberData3numEv.exit.i ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13setSingleBitsEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %.2) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opNotERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1502) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %.not11 = icmp eq i8 %i.e, 1
  br i1 %.not11, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1503) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.74)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNK8V3Number7bitIsXZEi.exit.thread, %bb.e
  ret ptr %0

bb.f:                                             ; preds = %.lr.ph, %_ZNK8V3Number7bitIsXZEi.exit.thread
  %i.q = phi i32 [ %i.m, %.lr.ph ], [ %i.bw, %_ZNK8V3Number7bitIsXZEi.exit.thread ] ; 5 uses
  %.022 = phi i32 [ 0, %.lr.ph ], [ %i.bx, %_ZNK8V3Number7bitIsXZEi.exit.thread ] ; 9 uses
  %i.r = load i8, ptr %i.d, align 4, !tbaa !48
  %i.s = add i8 %i.r, -3
  %spec.select.i.i = icmp ult i8 %i.s, -2
  br i1 %spec.select.i.i, label %_ZNK8V3Number7bitIsXZEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.o, align 8, !tbaa !47
  %.fr.i.i = freeze i32 %i.t                      ; 9 uses
  %.not.i = icmp slt i32 %.022, %.fr.i.i
  br i1 %.not.i, label %_ZNK8V3Number6bitIs0Ei.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp slt i32 %.fr.i.i, 1
  br i1 %i.u, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %tailrecurse.preheader.i.i

tailrecurse.preheader.i.i:                        ; preds = %bb.h
  %i.v = add nsw i32 %.fr.i.i, -1                 ; 2 uses
  %i.w = icmp samesign ult i32 %.fr.i.i, 129
  %i.x = load ptr, ptr %1, align 8                ; 2 uses
  %spec.select.i7.i.i = select i1 %i.w, ptr %1, ptr %i.x
  %i.y = lshr i32 %i.v, 5
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.z
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !69
  %i.ab = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.ac = and i32 %i.v, 31
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ab
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %bb.g
  %i.ah = icmp samesign ult i32 %.fr.i.i, 129
  %i.ai = load ptr, ptr %1, align 8               ; 2 uses
  %spec.select.i9.i = select i1 %i.ah, ptr %1, ptr %i.ai
  %i.aj = lshr i32 %.022, 5
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %i.am = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.an = zext i32 %i.am to i64
  %i.ao = and i32 %.022, 31
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.an
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %.lr.ph.i

_ZNK8V3Number6bitIs0Ei.exit.thread:               ; preds = %bb.h, %tailrecurse.preheader.i.i, %_ZNK8V3Number6bitIs0Ei.exit
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.022, i8 noundef signext 1)
  %.pre = load i32, ptr %i.l, align 8, !tbaa !47
  br label %_ZNK8V3Number7bitIsXZEi.exit.thread

.lr.ph.i:                                         ; preds = %_ZNK8V3Number6bitIs0Ei.exit
  %i.at = icmp slt i32 %.fr.i.i, 1
  br i1 %i.at, label %_ZNK8V3Number7bitIsXZEi.exit.thread, label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK8V3Number7bitIsXZEi.exit:                     ; preds = %tailrecurse.preheader.i.i, %.lr.ph.i
  %i.au = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.x, %tailrecurse.preheader.i.i ]
  %i.av = add nsw i32 %.fr.i.i, -1
  %.not.peel.i = icmp samesign ult i32 %.022, %.fr.i.i
end_hunk_1
