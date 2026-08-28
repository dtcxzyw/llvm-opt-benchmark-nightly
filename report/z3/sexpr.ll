Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sexpr?download=true
inline.NumInlined: 323
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK5sexpr12display_atomERSo:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cn, %bb.co
  %i.wb = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i220 = icmp eq ptr %i.wb, %i.bd
  %i.wc = icmp eq ptr %i.wb, null
  %or.cond.i.i.i221 = or i1 %.not.i.i.i220, %i.wc
  br i1 %or.cond.i.i.i221, label %_ZN6bufferIcLb0ELj16EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.wb)
          to label %_ZN6bufferIcLb0ELj16EED2Ev.exit unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wd = landingpad { ptr, i32 }
          catch ptr null
  %i.we = extractvalue { ptr, i32 } %i.wd, 0
  call void @__clang_call_terminate(ptr %i.we) #20
  unreachable

_ZN6bufferIcLb0ELj16EED2Ev.exit:                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.wf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !28 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.wf, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i222 unwind label %bb.cr

.noexc.i222:                                      ; preds = %_ZN6bufferIcLb0ELj16EED2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.wf, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN8rationalD2Ev.exit223 unwind label %bb.cr

bb.cr:                                            ; preds = %.noexc.i222, %_ZN6bufferIcLb0ELj16EED2Ev.exit
  %i.wg = landingpad { ptr, i32 }
          catch ptr null
  %i.wh = extractvalue { ptr, i32 } %i.wg, 0
  call void @__clang_call_terminate(ptr %i.wh) #20
  unreachable

_ZN8rationalD2Ev.exit223:                         ; preds = %.noexc.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZlsRSo6symbol.exit

bb.cs:                                            ; preds = %bb.cl, %bb.ck
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cj, %bb.cf, %bb.bd, %bb.az, %bb.ai
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.az ], [ %i.lj, %bb.bd ], [ %i.hq, %bb.ai ], [ %i.wi, %bb.cs ], [ %.pn35.pn, %bb.cf ], [ %i.ts, %bb.cj ]
  call void @_ZN6bufferIcLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.cu:                                            ; preds = %bb.a
  %i.wj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !30
  store ptr %i.wl, ptr %14, align 8, !tbaa !106
  %i.wm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.wm, align 8, !tbaa !109
  %i.wn = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %i.wn, align 4, !tbaa !110
  call void @_ZNK7escaped7displayERSo(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.wo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZlsRSo6symbol.exit

bb.cv:                                            ; preds = %bb.a, %bb.a
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.wp, align 8, !tbaa !22 ; 4 uses
  %i.wq = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  %i.wr = and i64 %i.wq, 7
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %.not.i224 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i224, label %bb.cx, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.cw
  %i.wt = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload) #18
  %i.wu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.wt) ; 0 uses
  br label %_ZlsRSo6symbol.exit

bb.cx:                                            ; preds = %bb.cw
  %i.wv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  br label %_ZlsRSo6symbol.exit

bb.cy:                                            ; preds = %bb.cv
  %i.ww = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 2) ; 0 uses
  %i.wx = lshr i64 %i.wq, 3
  %i.wy = trunc i64 %i.wx to i32
  %i.wz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.wy) ; 0 uses
  br label %_ZlsRSo6symbol.exit

bb.cz:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 183, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZlsRSo6symbol.exit

_ZlsRSo6symbol.exit:                              ; preds = %bb.cy, %bb.cx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.cz, %bb.cu, %_ZN8rationalD2Ev.exit223, %_ZlsRSoRK8rational.exit
  ret void
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !28 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit:        ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIcLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIcLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIcLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIcLb0ELj16EE7destroyEv.exit:            ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5sexpr7displayERSo(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.vector, align 8              ; 12 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5sexpr12display_atomERSo(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr null, ptr %2, align 8, !tbaa !111
  invoke void @_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit.preheader unwind label %bb.f

_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit.preheader: ; preds = %bb.c
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !111 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !59
  %i.c = zext i32 %.pre2.i to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.c ; 2 uses
  store ptr %0, ptr %i.d, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %.sroa.562.0..sroa_idx, align 8
  br label %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit

_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit: ; preds = %bb.n, %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit.preheader
  %.sink97 = phi i32 [ 1, %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit.preheader ], [ -1, %bb.n ]
  %i.e = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %i.h = add i32 %i.g, %.sink97                   ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !59
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit, %bb.o
  %3 = phi ptr [ %i.au, %bb.o ], [ %i.e, %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit ] ; 3 uses
  %4 = getelementptr inbounds i8, ptr %3, i64 -4
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = add i32 %5, -1
  %i.j = zext i32 %6 to i64                       ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114  ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit ; 0 uses

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load i32, ptr %i.n, align 4, !tbaa !59   ; 3 uses
  %i.v = icmp ult i32 %i.u, %i.p
  br i1 %i.v, label %.invoke, label %bb.n

.invoke:                                          ; preds = %bb.g
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 3 uses
  %i.z = icmp eq i32 %i.u, 0
  %i.aa = select i1 %i.z, ptr @.str.3, ptr @.str.4
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %.invoke, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %.invoke
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !59
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.n, align 4, !tbaa !59
  %i.af = load i32, ptr %i.y, align 4, !tbaa !8
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.ah = load ptr, ptr %2, align 8, !tbaa !111   ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc50 unwind label %bb.l

.noexc50:                                         ; preds = %bb.k
  %.pre.i47 = load ptr, ptr %2, align 8, !tbaa !111 ; 2 uses
  %.phi.trans.insert.i48 = getelementptr inbounds i8, ptr %.pre.i47, i64 -4
  %.pre2.i49 = load i32, ptr %.phi.trans.insert.i48, align 4, !tbaa !59
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  invoke void @_ZNK5sexpr12display_atomERSo(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %bb.h, !llvm.loop !117

bb.n:                                             ; preds = %bb.g
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit unwind label %.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %.noexc50, %bb.j
  %i.aq = phi i32 [ %.pre2.i49, %.noexc50 ], [ %i.ak, %bb.j ]
  %i.ar = phi ptr [ %.pre.i47, %.noexc50 ], [ %i.ah, %bb.j ]
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  store ptr %i.y, ptr %i.at, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %.sroa.555.0..sroa_idx, align 8
  %i.au = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !59
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !59
  br label %bb.d

bb.p:                                             ; preds = %_ZNK6vectorISt4pairIPK15sexpr_compositejELb1EjE5emptyEv.exit
  %i.ay = getelementptr inbounds i8, ptr %i.e, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ay)
          to label %_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjED2Ev.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjED2Ev.exit, %bb.b
  ret void

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.h, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorISt4pairIPK15sexpr_compositejELb1EjE7destroyEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13sexpr_manager3delEP5sexpr(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIP5sexprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !59
  br label %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit.preheader

_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit.preheader: ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  store ptr %1, ptr %i.m, align 8, !tbaa !26
  %i.n = add i32 %i.i, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !59
  br label %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit

_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit:           ; preds = %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit.preheader, %bb.q
  %i.o = phi ptr [ %i.bm, %bb.q ], [ %i.j, %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit.preheader ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit.thread, label %_ZN6vectorIP5sexprLb0EjE4backEv.exit

_ZN6vectorIP5sexprLb0EjE4backEv.exit:             ; preds = %_ZNK6vectorIP5sexprLb0EjE5emptyEv.exit
  %i.s = add i32 %i.q, -1                         ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 14 uses
  store i32 %i.s, ptr %i.p, align 4, !tbaa !59
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  switch i32 %i.w, label %bb.p [
    i32 0, label %bb.d
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.n
    i32 5, label %bb.o
    i32 4, label %bb.o
  ]

bb.d:                                             ; preds = %_ZN6vectorIP5sexprLb0EjE4backEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %wide.trip.count = zext i32 %i.y to i64         ; 2 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.aa = shl nuw nsw i64 %wide.trip.count, 3
  %i.ab = add nuw nsw i64 %i.aa, 24
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.ab, %._crit_edge.loopexit ], [ 24, %bb.d ]
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %0, i64 noundef %.pre-phi, ptr noundef nonnull %i.v)
  br label %bb.q

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.ac = phi ptr [ %i.o, %.lr.ph ], [ %i.av, %bb.i ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !11
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq ptr %i.ac, null
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !59 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %_ZN6vectorIP5sexprLb0EjE9push_backERKS1_.exit20

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorIP5sexprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i17 = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.phi.trans.insert.i18 = getelementptr inbounds i8, ptr %.pre.i17, i64 -4
  %.pre2.i19 = load i32, ptr %.phi.trans.insert.i18, align 4, !tbaa !59
  br label %_ZN6vectorIP5sexprLb0EjE9push_backERKS1_.exit20

_ZN6vectorIP5sexprLb0EjE9push_backERKS1_.exit20:  ; preds = %bb.g, %bb.h
  %i.ap = phi ptr [ %.pre.i17, %bb.h ], [ %i.ac, %bb.g ] ; 3 uses
  %i.aq = phi i32 [ %.pre2.i19, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !26
  %i.au = add i32 %i.aq, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIP5sexprLb0EjE9push_backERKS1_.exit20, %bb.e
  %i.av = phi ptr [ %i.ap, %_ZN6vectorIP5sexprLb0EjE9push_backERKS1_.exit20 ], [ %i.ac, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !122

bb.j:                                             ; preds = %_ZN6vectorIP5sexprLb0EjE4backEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ax = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !28 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_ZN13sexpr_numeralD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %bb.j
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN13sexpr_numeralD2Ev.exit:                      ; preds = %.noexc.i.i
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %0, i64 noundef 48, ptr noundef nonnull %i.v)
  br label %bb.q
end_hunk_0
