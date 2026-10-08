Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Randomize?download=true
inline.NumInlined: 11007
inline.NumDeleted: 2421
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN20RandomizeMarkVisitor5visitEP15AstNodeFTaskRef:bb.a
  %i.dd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i150 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i150, label %.thread292, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.de = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %.thread292

bb.aj:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

.thread292:                                       ; preds = %bb.ai, %bb.ag, %bb.af
  %i.dg = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.23, ptr nonnull @.str.24, i32 481, ptr null) ; 2 uses
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.517, i64 noundef 66) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.cz, ptr noundef nonnull align 8 dereferenceable(112) %i.dg)
  br label %.thread294

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit.thread: ; preds = %bb.ad, %bb.ae, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit, %_ZN7AstNode4castI14AstCMethodHard11AstNodeExprEEPT_PT0_.exit.thread
  br i1 %.171, label %bb.ak, label %.thread294

bb.ak:                                            ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !234
  call void @_ZN14RandModeTarget3getEP11AstNodeExprP13AstNodeModule(ptr dead_on_unwind nonnull writable sret(%struct.RandModeTarget) align 8 %4, ptr noundef %i.co, ptr noundef %i.dj)
  %i.dk = load ptr, ptr %4, align 8, !tbaa !264   ; 5 uses
  %.not116 = icmp eq ptr %i.dk, null              ; 2 uses
  br i1 %.not116, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 252
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !265
  %i.dn = add i8 %i.dm, -1
  %spec.select.i.i = icmp ult i8 %i.dn, 2
  br i1 %spec.select.i.i, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !255 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !244
  %.not117 = icmp eq ptr %i.dq, null
  br i1 %.not117, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.dr = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.ds = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.ao, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit153, !prof !159

bb.ao:                                            ; preds = %bb.an
  %i.du = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i152 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i152, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit153, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dv = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit153

bb.ar:                                            ; preds = %bb.ap
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit153:         ; preds = %bb.an, %bb.ao, %bb.aq
  %i.dx = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.23, ptr nonnull @.str.24, i32 481, ptr null) ; 2 uses
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.518, i64 noundef 62) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.do, ptr noundef nonnull align 8 dereferenceable(112) %i.dx)
  br label %.thread297

bb.as:                                            ; preds = %bb.am, %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !266 ; 2 uses
  %.not118 = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !255 ; 4 uses
  br i1 %.not118, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ec = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.ed = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.au, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit155, !prof !159

bb.au:                                            ; preds = %bb.at
  %i.ef = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i154 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i154, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit155, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eg = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit155

bb.ax:                                            ; preds = %bb.av
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit155:         ; preds = %bb.at, %bb.au, %bb.aw
  %i.ei = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.23, ptr nonnull @.str.24, i32 481, ptr null) ; 2 uses
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.519, i64 noundef 59) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.eb, ptr noundef nonnull align 8 dereferenceable(112) %i.ei)
  br label %.thread297

bb.ay:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !244
  %.not119 = icmp eq ptr %i.el, null
  br i1 %.not119, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !248 ; 2 uses
  %.not.i156 = icmp eq ptr %i.en, null
  br i1 %.not.i156, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158.thread, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158:   ; preds = %bb.az
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %.sroa.0.0.copyload.i.i.i157 = load i16, ptr %i.eo, align 8, !tbaa !137
  %i.ep = icmp eq i16 %.sroa.0.0.copyload.i.i.i157, 455
  br i1 %i.ep, label %bb.be, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158.thread

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158.thread: ; preds = %bb.az, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158
  %i.eq = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.er = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.ba, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit160, !prof !159

bb.ba:                                            ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158.thread
  %i.et = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i159 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i159, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit160, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.eu = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit160

bb.bd:                                            ; preds = %bb.bb
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit160:         ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158.thread, %bb.ba, %bb.bc
  %i.ew = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.23, ptr nonnull @.str.24, i32 481, ptr null) ; 2 uses
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.520, i64 noundef 59) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.eb, ptr noundef nonnull align 8 dereferenceable(112) %i.ew)
  br label %.thread297

bb.be:                                            ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit158, %bb.ay
  br i1 %.not116, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 252
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !265
  %i.fa = add i8 %i.ez, -1
  %spec.select.i.i161 = icmp ult i8 %i.fa, 2
  br i1 %spec.select.i.i161, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  store i64 1, ptr %i.fb, align 8, !tbaa !41
  %i.fc = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !43
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !122
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN8AstClass13foreachMemberIZN20RandomizeMarkVisitor5visitEP15AstNodeFTaskRefEUlPS_P6AstVarE_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(336) %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bi

.thread297:                                       ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit160, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit155, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread294

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ek

.thread294:                                       ; preds = %.thread292, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit.thread, %.thread297
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !255 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !244
  %.not121 = icmp eq ptr %i.fg, null
  br i1 %.not121, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %.thread294
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !248 ; 2 uses
  %.not.i162 = icmp eq ptr %i.fi, null
  br i1 %.not.i162, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164.thread, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164:   ; preds = %bb.bj
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %.sroa.0.0.copyload.i.i.i163 = load i16, ptr %i.fj, align 8, !tbaa !137
  %i.fk = icmp eq i16 %.sroa.0.0.copyload.i.i.i163, 455
  br i1 %i.fk, label %bb.bn, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164.thread

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164.thread: ; preds = %bb.bj, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164
  %i.fl = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #29 ; 9 uses
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !155
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.fl, i16 121, ptr noundef %i.fo)
          to label %.noexc unwind label %bb.bm

.noexc:                                           ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164.thread
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.fl, align 8, !tbaa !92
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.fp, ptr noundef nonnull align 8 dereferenceable(208) %i.fl, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc165 unwind label %bb.bm

.noexc165:                                        ; preds = %.noexc
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 184
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !269
  %i.fs = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.fl, i32 noundef %i.fr, i32 noundef 0, i8 0)
          to label %.noexc.i unwind label %bb.bl  ; 2 uses

.noexc.i:                                         ; preds = %.noexc165
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 72 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !168
  %.not.i.i.i = icmp eq ptr %i.fu, %i.fs
  br i1 %.not.i.i.i, label %_ZN8AstConstC2EP8FileLinej.exit, label %bb.bk

bb.bk:                                            ; preds = %.noexc.i
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !168
  %i.fv = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !136
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !136
  br label %_ZN8AstConstC2EP8FileLinej.exit

bb.bl:                                            ; preds = %.noexc165
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.fp) #24
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit:                  ; preds = %bb.bk, %.noexc.i
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.fe, ptr noundef nonnull %i.fl)
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !255
  call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.fy)
  br label %bb.ek

bb.bm:                                            ; preds = %.noexc, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164.thread
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bl, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.fz, %bb.bm ], [ %i.fx, %bb.bl ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 208) #25
  br label %common.resume

bb.bn:                                            ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit164, %.thread294
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !247
  %i.gc = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.gb, ptr noundef null) ; 0 uses
  br label %bb.ek

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !255 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !92
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280) %i.gd)
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !40 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 15
  %.pre367.a = load ptr, ptr %6, align 8, !tbaa !39 ; 4 uses
  br i1 %i.gj, label %bb.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167

bb.bp:                                            ; preds = %bb.bo
  %i.gk = load i64, ptr %.pre367.a, align 1
  %i.gl = xor i64 %i.gk, 7593476291201757027
  %i.gm = getelementptr i8, ptr %.pre367.a, i64 7
  %i.gn = load i64, ptr %i.gm, align 1
  %i.go = xor i64 %i.gn, 7306087011045371497
  %i.gp = or i64 %i.gl, %i.go
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167: ; preds = %bb.bo, %bb.bp
  %i.gt = phi i1 [ false, %bb.bo ], [ %i.gs, %bb.bp ]
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %.pre367.a, %i.gu
  br i1 %i.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167
  %i.gw = icmp ult i64 %i.gi, 16
  call void @llvm.assume(i1 %i.gw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167
  %i.gx = load i64, ptr %i.gu, align 8, !tbaa !41
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %.pre367.a, i64 noundef %i.gy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.gt, label %bb.bq, label %bb.cw

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.gz = load ptr, ptr %i.a, align 8, !tbaa !255 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !244
  %.not106 = icmp eq ptr %i.hb, null
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !248 ; 4 uses
  %.not.i176 = icmp eq ptr %i.hd, null            ; 2 uses
  br i1 %.not106, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %.not.i176, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173.thread, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173:   ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %.sroa.0.0.copyload.i.i.i172 = load i16, ptr %i.he, align 8, !tbaa !137
  %i.hf = icmp eq i16 %.sroa.0.0.copyload.i.i.i172, 455
  br i1 %i.hf, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173.thread

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173.thread: ; preds = %bb.br, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173
  %i.hg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.hh = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.bs, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit175, !prof !159

bb.bs:                                            ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173.thread
  %i.hj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i174 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i174, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit175, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hk = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit175

bb.bv:                                            ; preds = %bb.bt
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit175:         ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173.thread, %bb.bs, %bb.bu
  %i.hm = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.23, ptr nonnull @.str.24, i32 481, ptr null) ; 2 uses
  %i.hn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.522, i64 noundef 65) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.gz, ptr noundef nonnull align 8 dereferenceable(112) %i.hm)
  br label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread

bb.bw:                                            ; preds = %bb.bq
  br i1 %.not.i176, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178:   ; preds = %bb.bw
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %.sroa.0.0.copyload.i.i.i177 = load i16, ptr %i.ho, align 8, !tbaa !137
  %i.hp = icmp eq i16 %.sroa.0.0.copyload.i.i.i177, 455
  br i1 %i.hp, label %bb.bx, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread

bb.bx:                                            ; preds = %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !155
  %i.hs = call noundef zeroext i1 @_ZNK8FileLine9warnIsOffE11V3ErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %i.hr, i8 67)
  br i1 %i.hs, label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ht = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.hu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 67) ; 0 uses
  %i.hv = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.hw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.517, i64 noundef 66) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ht, ptr noundef nonnull align 8 dereferenceable(112) %i.hv)
  br label %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread

_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178.thread: ; preds = %bb.bw, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit173, %_ZN7AstNode2isI11AstStmtExprS_EEbPKT0_.exit178, %bb.bx, %bb.by, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit175
end_hunk_0
