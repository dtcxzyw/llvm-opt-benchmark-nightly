Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8V3Number9opModDivSERKS_S1_:bb.a
_ZNK12V3NumberData3numEv.exit.i.i44:              ; preds = %bb.w
  %i.cc = add nsw i32 %i.bz, -1                   ; 2 uses
  %i.cd = icmp samesign ult i32 %i.bz, 129
  %i.ce = load ptr, ptr %1, align 8
  %spec.select.i10.i.i45 = select i1 %i.cd, ptr %1, ptr %i.ce
  %i.cf = lshr i32 %i.cc, 5
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i45, i64 %i.cg ; 2 uses
  %.sroa.0.0.copyload.i.i46 = load i32, ptr %i.ch, align 4, !tbaa !66
  %i.ci = zext i32 %.sroa.0.0.copyload.i.i46 to i64
  %i.cj = and i32 %i.cc, 31
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 1, %i.ck                ; 2 uses
  %i.cm = and i64 %i.cl, %i.ci
  %.not7.i.i47 = icmp eq i64 %i.cm, 0
  br i1 %.not7.i.i47, label %_ZNK8V3Number10isNegativeEv.exit51.thread, label %_ZNK8V3Number10isNegativeEv.exit51

_ZNK8V3Number10isNegativeEv.exit51:               ; preds = %_ZNK12V3NumberData3numEv.exit.i.i44
  %.sroa.4.0..sroa_idx.i.i48 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.sroa.4.0.copyload.i.i49 = load i32, ptr %.sroa.4.0..sroa_idx.i.i48, align 4, !tbaa !66
  %i.cn = zext i32 %.sroa.4.0.copyload.i.i49 to i64
  %i.co = and i64 %i.cl, %i.cn
  %.not8.i.i50 = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i50, label %bb.x, label %_ZNK8V3Number10isNegativeEv.exit51.thread

bb.x:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit51
  %i.cp = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opNegateERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN8V3Number8opAssignERKS_.exit unwind label %bb.z ; 0 uses

bb.y:                                             ; preds = %bb.u, %_ZNK8V3Number10isNegativeEv.exit40.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit51.thread, %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #30
  br label %bb.am

_ZNK8V3Number10isNegativeEv.exit51.thread:        ; preds = %_ZNK12V3NumberData3numEv.exit.i.i44, %bb.w, %bb.v, %_ZNK8V3Number10isNegativeEv.exit51
  %i.cs = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %5, i1 noundef zeroext false)
          to label %_ZN8V3Number8opAssignERKS_.exit unwind label %bb.z, !inline_history !161 ; 0 uses

_ZN8V3Number8opAssignERKS_.exit:                  ; preds = %_ZNK8V3Number10isNegativeEv.exit51.thread, %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !48  ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 3
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit
  %i.cw = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN8V3NumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !29
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZN8V3NumberD2Ev.exit

bb.ab:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !47
  %i.dd = icmp sgt i32 %i.dc, 128
  %i.de = icmp eq i8 %i.cu, 1
  %i.df = and i1 %i.de, %i.dd
  br i1 %i.df, label %bb.ac, label %_ZN8V3NumberD2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !65
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #31
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !48  ; 2 uses
  %i.do = icmp eq i8 %i.dn, 3
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN8V3NumberD2Ev.exit
  %i.dp = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN8V3NumberD2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53: ; preds = %bb.ae
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !29
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #31
  br label %_ZN8V3NumberD2Ev.exit55

bb.af:                                            ; preds = %_ZN8V3NumberD2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !47
  %i.dw = icmp sgt i32 %i.dv, 128
  %i.dx = icmp eq i8 %i.dn, 1
  %i.dy = and i1 %i.dx, %i.dw
  br i1 %i.dy, label %bb.ag, label %_ZN8V3NumberD2Ev.exit55

bb.ag:                                            ; preds = %bb.af
  %i.dz = load ptr, ptr %4, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i52 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i52, label %_ZN8V3NumberD2Ev.exit55, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !65
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #31
  br label %_ZN8V3NumberD2Ev.exit55

_ZN8V3NumberD2Ev.exit55:                          ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !48  ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 3
  br i1 %i.eh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN8V3NumberD2Ev.exit55
  %i.ei = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN8V3NumberD2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57: ; preds = %bb.ai
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !29
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #31
  br label %_ZN8V3NumberD2Ev.exit59

bb.aj:                                            ; preds = %_ZN8V3NumberD2Ev.exit55
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !47
  %i.ep = icmp sgt i32 %i.eo, 128
  %i.eq = icmp eq i8 %i.eg, 1
  %i.er = and i1 %i.eq, %i.ep
  br i1 %i.er, label %bb.ak, label %_ZN8V3NumberD2Ev.exit59

bb.ak:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZN8V3NumberD2Ev.exit59, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #31
  br label %_ZN8V3NumberD2Ev.exit59

_ZN8V3NumberD2Ev.exit59:                          ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.aq

bb.am:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.z ], [ %i.cq, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.bs, %bb.t ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.an ], [ %i.br, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ao ], [ %i.au, %bb.o ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.aq:                                            ; preds = %_ZN8V3NumberD2Ev.exit59, %bb.k, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opPowERKS_S1_bb(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.V3Number, align 8            ; 20 uses
  %6 = alloca %class.V3Number, align 8            ; 17 uses
  %7 = alloca %class.V3Number, align 8            ; 23 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not37 = or i1 %i.a, %i.b
  br i1 %.not37, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2321) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2322) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not38 = icmp eq i8 %i.n, 1
  br i1 %.not38, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2322) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setValue1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

bb.l:                                             ; preds = %bb.j
  br i1 %4, label %bb.m, label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.y = load i8, ptr %i.m, align 4, !tbaa !48    ; 2 uses
  %i.z = icmp eq i8 %i.y, 3
  br i1 %i.z, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  %i.ac = add i8 %i.y, -3
  %spec.select.i.i.i = icmp ult i8 %i.ac, -2
  %i.ad = icmp slt i32 %i.ab, 1
  %or.cond.i.i = or i1 %spec.select.i.i.i, %i.ad
  br i1 %or.cond.i.i, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %bb.n
  %i.ae = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.af = icmp samesign ult i32 %i.ab, 129
  %i.ag = load ptr, ptr %2, align 8
  %spec.select.i10.i.i = select i1 %i.af, ptr %2, ptr %i.ag
  %i.ah = lshr i32 %i.ae, 5
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.ai ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.ak = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.al = and i32 %i.ae, 31
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 1, %i.am                ; 2 uses
  %i.ao = and i64 %i.an, %i.ak
  %.not7.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %_ZNK8V3Number10isNegativeEv.exit

_ZNK8V3Number10isNegativeEv.exit:                 ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.ap = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.aq = and i64 %i.an, %i.ap
  %.not8.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not8.i.i, label %bb.o, label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.o:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit
  %i.ar = tail call noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number18setAllBitsXRemovedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noundef zeroext i1 @_ZNK8V3Number7isEqOneEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setValue1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

bb.s:                                             ; preds = %bb.q
  br i1 %3, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.av = tail call noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 0)
  br i1 %i.av, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.aw = tail call noundef zeroext i1 @_ZNK8V3Number6bitIs1Ei(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0)
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBits1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

bb.w:                                             ; preds = %bb.u
  %i.ay = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setValue1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

bb.x:                                             ; preds = %bb.t, %bb.s
  %i.az = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.be

_ZNK8V3Number10isNegativeEv.exit.thread:          ; preds = %_ZNK12V3NumberData3numEv.exit.i.i, %bb.n, %bb.m, %_ZNK8V3Number10isNegativeEv.exit, %bb.l
  %i.ba = tail call noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.bb = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br i1 %i.ba, label %bb.be, label %bb.y

bb.y:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !48
  %i.be = add i8 %i.bd, -1
  %spec.select.i.i = icmp ult i8 %i.be, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData3numEv.exit, label %bb.z, !prof !49

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.118)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.bc)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi) #32
  unreachable

_ZN12V3NumberData3numEv.exit:                     ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !47 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 129
  %i.bm = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.bl, ptr %0, ptr %i.bm
  store i32 1, ptr %spec.select.i, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i8 0, ptr %i.bo, align 4, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 37 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = and i8 %i.bq, -128
  store i8 %i.br, ptr %i.bp, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i32 noundef %i.bk, i1 noundef zeroext true)
          to label %_ZN8V3NumberC2EPKS_i.exit unwind label %bb.aa

common.resume:                                    ; preds = %bb.bd, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.aa ], [ %.pn41.pn.pn, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %_ZN12V3NumberData3numEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %5) #30
  br label %common.resume

_ZN8V3NumberC2EPKS_i.exit:                        ; preds = %_ZN12V3NumberData3numEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !43
  %i.bx = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false)
          to label %_ZN8V3Number8opAssignERKS_.exit.preheader unwind label %bb.an, !inline_history !161 ; 0 uses

_ZN8V3Number8opAssignERKS_.exit.preheader:        ; preds = %_ZN8V3NumberC2EPKS_i.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !47 ; 5 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.ab, label %_ZN8V3Number8opAssignERKS_.exit._crit_edge

bb.ab:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 37 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 37 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %.pre = load i8, ptr %i.m, align 4, !tbaa !48
  %i.cn = add i8 %.pre, -3
  %spec.select.i.i51.peel = icmp ult i8 %i.cn, -2
  br i1 %spec.select.i.i51.peel, label %_ZNK8V3Number6bitIs1Ei.exit.thread.peel, label %_ZNK12V3NumberData3numEv.exit.i.peel

_ZNK12V3NumberData3numEv.exit.i.peel:             ; preds = %bb.ab
  %i.co = icmp samesign ult i32 %i.bz, 129
  %i.cp = load ptr, ptr %2, align 8
  %spec.select.i10.i.peel = select i1 %i.co, ptr %2, ptr %i.cp ; 2 uses
  %.sroa.0.0.copyload.i.peel = load i32, ptr %spec.select.i10.i.peel, align 4, !tbaa !66
  %i.cq = and i32 %.sroa.0.0.copyload.i.peel, 1
  %.not7.i.peel = icmp eq i32 %i.cq, 0
  br i1 %.not7.i.peel, label %_ZNK8V3Number6bitIs1Ei.exit.thread.peel, label %_ZNK8V3Number6bitIs1Ei.exit.peel

_ZNK8V3Number6bitIs1Ei.exit.peel:                 ; preds = %_ZNK12V3NumberData3numEv.exit.i.peel
  %.sroa.4.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %spec.select.i10.i.peel, i64 4
  %.sroa.4.0.copyload.i.peel = load i32, ptr %.sroa.4.0..sroa_idx.i.peel, align 4, !tbaa !66
  %i.cr = and i32 %.sroa.4.0.copyload.i.peel, 1
  %.not8.i.peel = icmp eq i32 %i.cr, 0
  br i1 %.not8.i.peel, label %bb.ac, label %_ZNK8V3Number6bitIs1Ei.exit.thread.peel

bb.ac:                                            ; preds = %_ZNK8V3Number6bitIs1Ei.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cs = load i32, ptr %i.bj, align 8, !tbaa !47
  store i32 0, ptr %i.ch, align 8, !tbaa !47
  store i8 0, ptr %i.ci, align 4, !tbaa !48
  %i.ct = load i8, ptr %i.cj, align 1
  %i.cu = and i8 %i.ct, -128
  store i8 %i.cu, ptr %i.cj, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i32 noundef %i.cs, i1 noundef zeroext true)
          to label %bb.ad unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.bv, align 8, !tbaa !43
  store ptr %i.cv, ptr %i.cl, align 8, !tbaa !43
  %i.cw = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
          to label %_ZN8V3Number8opAssignERKS_.exit55.peel unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp, !inline_history !161 ; 0 uses

_ZN8V3Number8opAssignERKS_.exit55.peel:           ; preds = %bb.ad
  %i.cx = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opMulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ae unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit55.peel
  %i.cy = load i8, ptr %i.ci, align 4, !tbaa !48  ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 3
  br i1 %i.cz, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = load i32, ptr %i.ch, align 8, !tbaa !47
  %i.db = icmp sgt i32 %i.da, 128
  %i.dc = icmp eq i8 %i.cy, 1
  %i.dd = and i1 %i.dc, %i.db
  br i1 %i.dd, label %bb.ag, label %_ZN8V3NumberD2Ev.exit59.peel

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i56.peel = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i.i56.peel, label %_ZN8V3NumberD2Ev.exit59.peel, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load ptr, ptr %i.cm, align 8, !tbaa !65
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #31
  br label %_ZN8V3NumberD2Ev.exit59.peel

bb.ai:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cm
  br i1 %i.dk, label %_ZN8V3NumberD2Ev.exit59.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.peel: ; preds = %bb.ai
  %i.dl = load i64, ptr %i.cm, align 8, !tbaa !29
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #31
  br label %_ZN8V3NumberD2Ev.exit59.peel

_ZN8V3NumberD2Ev.exit59.peel:                     ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.peel, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.pre80 = load i32, ptr %i.by, align 8, !tbaa !47
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread.peel

_ZNK8V3Number6bitIs1Ei.exit.thread.peel:          ; preds = %_ZN8V3NumberD2Ev.exit59.peel, %_ZNK8V3Number6bitIs1Ei.exit.peel, %_ZNK12V3NumberData3numEv.exit.i.peel, %bb.ab
  %i.dn = phi i32 [ %i.bz, %bb.ab ], [ %.pre80, %_ZN8V3NumberD2Ev.exit59.peel ], [ %i.bz, %_ZNK8V3Number6bitIs1Ei.exit.peel ], [ %i.bz, %_ZNK12V3NumberData3numEv.exit.i.peel ]
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %.peel.next, label %_ZN8V3Number8opAssignERKS_.exit._crit_edge

_ZN8V3Number8opAssignERKS_.exit._crit_edge:       ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %_ZNK8V3Number6bitIs1Ei.exit.thread.peel, %_ZN8V3Number8opAssignERKS_.exit.preheader
  %i.dp = load i8, ptr %i.bo, align 4, !tbaa !48  ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 3
  br i1 %i.dq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit._crit_edge
  %i.dr = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN8V3NumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !29
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #31
  br label %_ZN8V3NumberD2Ev.exit

bb.ak:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit._crit_edge
  %i.dw = load i32, ptr %i.bn, align 8, !tbaa !47
  %i.dx = icmp sgt i32 %i.dw, 128
  %i.dy = icmp eq i8 %i.dp, 1
  %i.dz = and i1 %i.dy, %i.dx
  br i1 %i.dz, label %bb.al, label %_ZN8V3NumberD2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.ea = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !65
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #31
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.be

bb.an:                                            ; preds = %_ZN8V3NumberC2EPKS_i.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.peel.next:                                       ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread.peel, %_ZNK8V3Number6bitIs1Ei.exit.thread
  %.063 = phi i32 [ %i.gl, %_ZNK8V3Number6bitIs1Ei.exit.thread ], [ 1, %_ZNK8V3Number6bitIs1Ei.exit.thread.peel ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.eh = load i32, ptr %i.bj, align 8, !tbaa !47
  store i32 0, ptr %i.cb, align 8, !tbaa !47
  store i8 0, ptr %i.cc, align 4, !tbaa !48
  %i.ei = load i8, ptr %i.cd, align 1
  %i.ej = and i8 %i.ei, -128
  store i8 %i.ej, ptr %i.cd, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i32 noundef %i.eh, i1 noundef zeroext true)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %6) #30
  br label %.body

bb.ap:                                            ; preds = %.peel.next
  %i.ek = load ptr, ptr %i.bv, align 8, !tbaa !43
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !43
  %i.el = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i1 noundef zeroext false)
          to label %_ZN8V3Number8opAssignERKS_.exit46 unwind label %bb.av, !inline_history !161 ; 0 uses

_ZN8V3Number8opAssignERKS_.exit46:                ; preds = %bb.ap
  %i.em = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opMulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.aq unwind label %bb.av     ; 0 uses

bb.aq:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit46
  %i.en = load i8, ptr %i.cc, align 4, !tbaa !48  ; 2 uses
  %i.eo = icmp eq i8 %i.en, 3
  br i1 %i.eo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ep = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cg
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i48: ; preds = %bb.ar
  %i.er = load i64, ptr %i.cg, align 8, !tbaa !29
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49

bb.as:                                            ; preds = %bb.aq
  %i.et = load i32, ptr %i.cb, align 8, !tbaa !47
  %i.eu = icmp sgt i32 %i.et, 128
  %i.ev = icmp eq i8 %i.en, 1
  %i.ew = and i1 %i.ev, %i.eu
  br i1 %i.ew, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49

bb.at:                                            ; preds = %bb.as
  %i.ex = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = load ptr, ptr %i.cg, align 8, !tbaa !65
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49

bb.av:                                            ; preds = %bb.ap, %_ZN8V3Number8opAssignERKS_.exit46
  %lpad.loopexit67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #30
  br label %.body

.body:                                            ; preds = %bb.ao, %bb.av
  %.pn = phi { ptr, i32 } [ %lpad.loopexit67, %bb.av ], [ %lpad.loopexit, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49: ; preds = %bb.ar, %bb.au, %bb.at, %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.pre82.pre = load i32, ptr %i.by, align 8, !tbaa !47 ; 5 uses
  %i.fc = load i8, ptr %i.m, align 4, !tbaa !48
  %i.fd = add i8 %i.fc, -1
  %spec.select.i.i51 = icmp ult i8 %i.fd, 2
  %.not.i = icmp slt i32 %.063, %.pre82.pre
  %or.cond = select i1 %spec.select.i.i51, i1 %.not.i, i1 false
  br i1 %or.cond, label %_ZNK12V3NumberData3numEv.exit.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49
  %i.fe = icmp samesign ult i32 %.pre82.pre, 129
  %i.ff = load ptr, ptr %2, align 8
  %spec.select.i10.i = select i1 %i.fe, ptr %2, ptr %i.ff
  %i.fg = lshr i32 %.063, 5
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.fh ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.fi, align 4, !tbaa !66
  %i.fj = zext i32 %.sroa.0.0.copyload.i to i64
  %i.fk = and i32 %.063, 31
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 1, %i.fl                ; 2 uses
  %i.fn = and i64 %i.fm, %i.fj
  %.not7.i = icmp eq i64 %i.fn, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.fo = zext i32 %.sroa.4.0.copyload.i to i64
  %i.fp = and i64 %i.fm, %i.fo
  %.not8.i = icmp eq i64 %i.fp, 0
  br i1 %.not8.i, label %bb.aw, label %_ZNK8V3Number6bitIs1Ei.exit.thread

bb.aw:                                            ; preds = %_ZNK8V3Number6bitIs1Ei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.fq = load i32, ptr %i.bj, align 8, !tbaa !47
  store i32 0, ptr %i.ch, align 8, !tbaa !47
  store i8 0, ptr %i.ci, align 4, !tbaa !48
  %i.fr = load i8, ptr %i.cj, align 1
  %i.fs = and i8 %i.fr, -128
  store i8 %i.fs, ptr %i.cj, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i32 noundef %i.fq, i1 noundef zeroext true)
          to label %bb.ax unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %bb.ac
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %7) #30
  br label %.body52

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %i.bv, align 8, !tbaa !43
  store ptr %i.ft, ptr %i.cl, align 8, !tbaa !43
  %i.fu = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
          to label %_ZN8V3Number8opAssignERKS_.exit55 unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp, !inline_history !161 ; 0 uses

_ZN8V3Number8opAssignERKS_.exit55:                ; preds = %bb.ax
  %i.fv = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opMulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ay unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ay:                                            ; preds = %_ZN8V3Number8opAssignERKS_.exit55
  %i.fw = load i8, ptr %i.ci, align 4, !tbaa !48  ; 2 uses
  %i.fx = icmp eq i8 %i.fw, 3
  br i1 %i.fx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fy = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.cm
  br i1 %i.fz, label %_ZN8V3NumberD2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57: ; preds = %bb.az
  %i.ga = load i64, ptr %i.cm, align 8, !tbaa !29
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #31
  br label %_ZN8V3NumberD2Ev.exit59

bb.ba:                                            ; preds = %bb.ay
  %i.gc = load i32, ptr %i.ch, align 8, !tbaa !47
  %i.gd = icmp sgt i32 %i.gc, 128
  %i.ge = icmp eq i8 %i.fw, 1
  %i.gf = and i1 %i.ge, %i.gd
  br i1 %i.gf, label %bb.bb, label %_ZN8V3NumberD2Ev.exit59

bb.bb:                                            ; preds = %bb.ba
  %i.gg = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZN8V3NumberD2Ev.exit59, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = load ptr, ptr %i.cm, align 8, !tbaa !65
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #31
  br label %_ZN8V3NumberD2Ev.exit59

_ZN8V3NumberD2Ev.exit59:                          ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57, %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.pre81 = load i32, ptr %i.by, align 8, !tbaa !47
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread

.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %_ZN8V3Number8opAssignERKS_.exit55, %bb.ad, %_ZN8V3Number8opAssignERKS_.exit55.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #30
  br label %.body52

.body52:                                          ; preds = %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp
  %.pn41 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bd

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %_ZNK12V3NumberData3numEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49, %_ZNK8V3Number6bitIs1Ei.exit, %_ZN8V3NumberD2Ev.exit59
  %.pre8284 = phi i32 [ %.pre82.pre, %_ZNK12V3NumberData3numEv.exit.i ], [ %.pre81, %_ZN8V3NumberD2Ev.exit59 ], [ %.pre82.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i49 ], [ %.pre82.pre, %_ZNK8V3Number6bitIs1Ei.exit ]
  %i.gl = add nuw nsw i32 %.063, 1                ; 2 uses
  %i.gm = icmp slt i32 %i.gl, %.pre8284
  br i1 %i.gm, label %.peel.next, label %_ZN8V3Number8opAssignERKS_.exit._crit_edge, !llvm.loop !470

bb.bd:                                            ; preds = %bb.an, %.body, %.body52
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn41, %.body52 ], [ %i.eg, %bb.an ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

bb.be:                                            ; preds = %_ZNK8V3Number10isNegativeEv.exit.thread, %_ZN8V3NumberD2Ev.exit, %bb.x, %bb.w, %bb.v, %bb.r, %bb.p, %bb.k, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opPowSUERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opPowERKS_S1_bb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opPowSSERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opPowERKS_S1_bb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext true, i1 noundef zeroext true) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opPowUSERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opPowERKS_S1_bb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opBufIf1ERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not15 = or i1 %i.a, %i.b
  br i1 %.not15, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2374) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2375) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not16 = icmp eq i8 %i.n, 1
  br i1 %.not16, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2375) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !47
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %bb.g
  ret ptr %0

bb.h:                                             ; preds = %.lr.ph, %_ZNK8V3Number6bitIs1Ei.exit.thread
  %.020 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %_ZNK8V3Number6bitIs1Ei.exit.thread ] ; 6 uses
  %i.y = load i8, ptr %i.f, align 4, !tbaa !48
  %i.z = add i8 %i.y, -3
  %spec.select.i.i = icmp ult i8 %i.z, -2
  br i1 %spec.select.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !47  ; 2 uses
  %.not.i = icmp slt i32 %.020, %i.aa
  br i1 %.not.i, label %_ZNK12V3NumberData3numEv.exit.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %bb.i
  %i.ab = icmp samesign ult i32 %i.aa, 129
  %i.ac = load ptr, ptr %1, align 8
  %spec.select.i10.i = select i1 %i.ab, ptr %1, ptr %i.ac
  %i.ad = lshr i32 %.020, 5
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4, !tbaa !66
  %i.ag = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ah = and i32 %.020, 31
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 1, %i.ai                ; 2 uses
  %i.ak = and i64 %i.aj, %i.ag
  %.not7.i = icmp eq i64 %i.ak, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.al = zext i32 %.sroa.4.0.copyload.i to i64
  %i.am = and i64 %i.aj, %i.al
  %.not8.i = icmp eq i64 %i.am, 0
  br i1 %.not8.i, label %bb.j, label %_ZNK8V3Number6bitIs1Ei.exit.thread

bb.j:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit
  %i.an = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.020)
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %_ZNK8V3Number6bitIs1Ei.exit, %bb.h, %bb.i, %_ZNK12V3NumberData3numEv.exit.i, %bb.j
  %.sink = phi i8 [ %i.an, %bb.j ], [ 122, %_ZNK12V3NumberData3numEv.exit.i ], [ 122, %bb.i ], [ 122, %bb.h ], [ 122, %_ZNK8V3Number6bitIs1Ei.exit ]
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.020, i8 noundef signext %.sink)
  %i.ao = add nuw nsw i32 %.020, 1                ; 2 uses
  %i.ap = load i32, ptr %i.u, align 8, !tbaa !47
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %._crit_edge, !llvm.loop !471
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number10opSetRangeEjjc(ptr noundef nonnull returned align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = add i32 %i.a, %2                         ; 2 uses
  %.not8 = icmp ugt i32 %1, %i.b
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.09, i8 noundef signext %3)
  %i.c = add i32 %.09, 1                          ; 2 uses
  %.not = icmp ugt i32 %i.c, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !472
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not24 = icmp eq i8 %i.c, 0
  br i1 %.not24, label %bb.d, label %bb.c, !prof !49

end_hunk_0
