Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/re2_test?download=true
inline.NumInlined: 3450
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3re210RE2NoCrashEv:bb.a
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %12) #25
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.aa

bb.y:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit19
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %12) #25
  unreachable

bb.z:                                             ; preds = %bb.t
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr @.str.750, ptr %14, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.ae, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN3re23RE27OptionsC1ENS0_13CannedOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 3)
  call void @_ZN3re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(212) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !72
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.af, label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.u, %bb.q
  %.pn8 = phi { ptr, i32 } [ %i.v, %bb.q ], [ %i.ac, %bb.x ], [ %i.z, %bb.u ]
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ar

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %16, ptr noundef nonnull @.str.3, i32 noundef 1196)
          to label %_ZN15LogMessageFatalC2EPKci.exit20 unwind label %bb.ad

_ZN15LogMessageFatalC2EPKci.exit20:               ; preds = %bb.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.709)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZN15LogMessageFatalC2EPKci.exit20
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %16) #25
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN15LogMessageFatalC2EPKci.exit20
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %16) #25
  unreachable

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.am, ptr %17, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store i64 0, ptr %i.an, align 8, !tbaa !30
  store i8 0, ptr %i.am, align 8, !tbaa !29
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, i64 noundef 515, i8 noundef signext 99)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.ai ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.af
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !30
  %i.aq = icmp eq i64 %i.ap, 4611686018427387903
  br i1 %i.aq, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1024) #29
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.407, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.ai ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.as = load ptr, ptr %17, align 8, !tbaa !28
  %i.at = load i64, ptr %i.an, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %i.as, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8
  %i.av = invoke noundef zeroext i1 @_ZN3re23RE213PartialMatchNERKNS_11StringPieceERKS0_PKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(212) %13, ptr noundef null, i32 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br i1 %i.av, label %bb.ao, label %bb.ak

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.ag, %bb.af
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %18, ptr noundef nonnull @.str.3, i32 noundef 1200)
          to label %_ZN15LogMessageFatalC2EPKci.exit28 unwind label %bb.am

_ZN15LogMessageFatalC2EPKci.exit28:               ; preds = %bb.ak
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.751)
          to label %bb.al unwind label %bb.an     ; 0 uses

bb.al:                                            ; preds = %_ZN15LogMessageFatalC2EPKci.exit28
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %18) #25
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ap

bb.an:                                            ; preds = %_ZN15LogMessageFatalC2EPKci.exit28
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %18) #25
  unreachable

bb.ao:                                            ; preds = %bb.ah
  %i.bc = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.am
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.be = load i64, ptr %i.am, align 8, !tbaa !29
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void

bb.ap:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.am ], [ %i.ax, %bb.aj ], [ %i.aw, %bb.ai ]
  %i.bg = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.am
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ap
  %i.bi = load i64, ptr %i.am, align 8, !tbaa !29
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.ak, %bb.ad ]
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aa, %bb.n
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.n ], [ %.pn8, %bb.aa ], [ %.pn.pn, %bb.aq ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re212RE2RecursionEv() #0 {
bb.a:
  tail call fastcc void @_ZN3re2L13TestRecursionEiPKc(ptr noundef nonnull @.str.289)
  tail call fastcc void @_ZN3re2L13TestRecursionEiPKc(ptr noundef nonnull @.str.292)
  tail call fastcc void @_ZN3re2L13TestRecursionEiPKc(ptr noundef nonnull @.str.754)
  tail call fastcc void @_ZN3re2L13TestRecursionEiPKc(ptr noundef nonnull @.str.755)
  tail call fastcc void @_ZN3re2L13TestRecursionEiPKc(ptr noundef nonnull @.str.756)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3re2L13TestRecursionEiPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.re2::StringPiece", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.re2::RE2", align 8          ; 7 uses
  %4 = alloca %"class.re2::StringPiece", align 8  ; 6 uses
  %5 = alloca %"class.re2::RE2::Options", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 15360, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26 ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr @.str.987, ptr %4, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42, ptr %i.d, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN3re23RE27OptionsC1ENS0_13CannedOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 3)
          to label %bb.e unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %indvars.iv = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %indvars.iv.next.1.a, %bb.d ] ; 4 uses
  %i.f = urem i64 %indvars.iv, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29
  %i.i = load ptr, ptr %2, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.h, ptr %i.j, align 1, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = urem i64 %indvars.iv.next, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = load ptr, ptr %2, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next
  store i8 %i.m, ptr %i.o, align 1, !tbaa !29
  %indvars.iv.next.1.a = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1.a, 15360
  br i1 %exitcond.not.1, label %bb.b, label %bb.d, !llvm.loop !176

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN3re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(212) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.p = load ptr, ptr %2, align 8, !tbaa !28
  %i.q = load i64, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.p, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = invoke noundef zeroext i1 @_ZN3re23RE210FullMatchNERKNS_11StringPieceERKS0_PKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(212) %3, ptr noundef null, i32 noundef 0)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.t = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.a, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %3) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.e, %bb.c ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re223RE2BigCountedRepetitionEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.re2::StringPiece", align 8  ; 5 uses
  %1 = alloca %"class.re2::RE2::Options", align 8 ; 11 uses
  %2 = alloca %"class.re2::RE2", align 8          ; 8 uses
  %3 = alloca %"class.re2::StringPiece", align 8  ; 5 uses
  %4 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 1, ptr %1, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.a, align 4, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 0, ptr %i.b, align 1, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 1, ptr %i.c, align 2, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.f, align 4, !tbaa !77
  store i64 268435456, ptr %i.d, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr @.str.750, ptr %3, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.g, align 8, !tbaa !33
  call void @_ZN3re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(212) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !72
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull @.str.3, i32 noundef 1221)
          to label %_ZN15LogMessageFatalC2EPKci.exit unwind label %bb.d

_ZN15LogMessageFatalC2EPKci.exit:                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.709)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

bb.e:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #25
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !30
  store i8 0, ptr %i.o, align 8, !tbaa !29
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, i64 noundef 515, i8 noundef signext 99)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !30
  %i.s = icmp eq i64 %i.r, 4611686018427387903
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1024) #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.407, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.u = load ptr, ptr %5, align 8, !tbaa !28
  %i.v = load i64, ptr %i.p, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %i.u, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = invoke noundef zeroext i1 @_ZN3re23RE213PartialMatchNERKNS_11StringPieceERKS0_PKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(212) %2, ptr noundef null, i32 noundef 0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br i1 %i.x, label %bb.o, label %bb.k

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull @.str.3, i32 noundef 1225)
          to label %_ZN15LogMessageFatalC2EPKci.exit8 unwind label %bb.m

_ZN15LogMessageFatalC2EPKci.exit8:                ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.751)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit8
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %6) #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
end_hunk_0
