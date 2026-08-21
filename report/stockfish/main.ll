Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/main?download=true
inline.NumInlined: 2325
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE17get_discriminatorEm:bb.a
  %i.co = load ptr, ptr %7, align 8, !tbaa !41, !noalias !248
  %i.cp = icmp eq ptr %i.co, %i.ba
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.m
  %i.cq = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.m
  %i.cr = load i64, ptr %i.ba, align 8, !tbaa !70, !noalias !248
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ch, %i.cs
  br i1 %.not.i, label %bb.o, label %.critedge.i16

.critedge.i16:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ci, i64 noundef %i.ce) #25, !noalias !248 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !202, !alias.scope !248
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !41 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.n:                                             ; preds = %.critedge.i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !45 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.critedge.i16
  store ptr %i.cv, ptr %4, align 8, !tbaa !41, !alias.scope !248
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !70
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !70, !alias.scope !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !45, !alias.scope !248
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !41
  store i64 0, ptr %i.dd, align 8, !tbaa !45
  store i8 0, ptr %i.cw, align 8, !tbaa !70
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.dg = sub i64 4611686018427387903, %i.ce
  %i.dh = icmp ult i64 %i.dg, %i.cg
  br i1 %i.dh, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #29, !noalias !248
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.o
  %i.di = load ptr, ptr %7, align 8, !tbaa !41, !noalias !248
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.di, i64 noundef %i.cg) #25, !noalias !248 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.dk, ptr %4, align 8, !tbaa !202, !alias.scope !248
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !41 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !45 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dl, ptr %4, align 8, !tbaa !41, !alias.scope !248
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !70
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !70, !alias.scope !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !45, !alias.scope !248
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !41
  store i64 0, ptr %i.dt, align 8, !tbaa !45
  store i8 0, ptr %i.dm, align 8, !tbaa !70
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  %i.dw = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ba
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.dy = load i64, ptr %i.ba, align 8, !tbaa !70
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ad
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i64, ptr %i.ad, align 8, !tbaa !70
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.ee = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !70
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ej = load ptr, ptr %4, align 8, !tbaa !41    ; 11 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !45 ; 5 uses
  %.not.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i25.preheader

.lr.ph.i.i25.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %xtraiter = and i64 %i.el, 7                    ; 3 uses
  %i.em = icmp ult i64 %i.el, 8
  br i1 %i.em, label %.lr.ph.i.i25.epil.preheader, label %.lr.ph.i.i25.preheader.new

.lr.ph.i.i25.preheader.new:                       ; preds = %.lr.ph.i.i25.preheader
  %unroll_iter = and i64 %i.el, -8
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25, %.lr.ph.i.i25.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i25.preheader.new ], [ %i.gi, %.lr.ph.i.i25 ] ; 9 uses
  %.078.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i25.preheader.new ], [ %i.gh, %.lr.ph.i.i25 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i25.preheader.new ], [ %niter.next.7, %.lr.ph.i.i25 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !70
  %i.ep = sext i8 %i.eo to i64
  %i.eq = xor i64 %.078.i.i, %i.ep
  %i.er = mul i64 %i.eq, 1099511628211
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !70
  %i.ev = sext i8 %i.eu to i64
  %i.ew = xor i64 %i.er, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !70
  %i.fb = sext i8 %i.fa to i64
  %i.fc = xor i64 %i.ex, %i.fb
  %i.fd = mul i64 %i.fc, 1099511628211
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !70
  %i.fh = sext i8 %i.fg to i64
  %i.fi = xor i64 %i.fd, %i.fh
  %i.fj = mul i64 %i.fi, 1099511628211
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !70
  %i.fn = sext i8 %i.fm to i64
  %i.fo = xor i64 %i.fj, %i.fn
  %i.fp = mul i64 %i.fo, 1099511628211
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 5
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !70
  %i.ft = sext i8 %i.fs to i64
  %i.fu = xor i64 %i.fp, %i.ft
  %i.fv = mul i64 %i.fu, 1099511628211
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !70
  %i.fz = sext i8 %i.fy to i64
  %i.ga = xor i64 %i.fv, %i.fz
  %i.gb = mul i64 %i.ga, 1099511628211
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 7
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !70
  %i.gf = sext i8 %i.ge to i64
  %i.gg = xor i64 %i.gb, %i.gf
  %i.gh = mul i64 %i.gg, 1099511628211            ; 3 uses
  %i.gi = add nuw nsw i64 %.09.i.i, 8             ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i25, !llvm.loop !251

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i25
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i25.epil.preheader

.lr.ph.i.i25.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i25.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i25.preheader ], [ %i.gi, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i25.preheader ], [ %i.gh, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i25.epil

.lr.ph.i.i25.epil:                                ; preds = %.lr.ph.i.i25.epil, %.lr.ph.i.i25.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.go, %.lr.ph.i.i25.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i25.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i64 [ %i.gn, %.lr.ph.i.i25.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i25.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i25.epil ], [ 0, %.lr.ph.i.i25.epil.preheader ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i.epil
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !70
  %i.gl = sext i8 %i.gk to i64
  %i.gm = xor i64 %.078.i.i.epil, %i.gl
  %i.gn = mul i64 %i.gm, 1099511628211            ; 2 uses
  %i.go = add nuw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i25.epil, !llvm.loop !252

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i25.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.07.lcssa.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.gh, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ], [ %i.gn, %.lr.ph.i.i25.epil ]
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.ej, %i.gp
  br i1 %i.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gr = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.gr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gs = load i64, ptr %i.gp, align 8, !tbaa !70
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.gt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef %i.gv)
  %i.gw = load ptr, ptr %2, align 8, !tbaa !138   ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !141 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %.lr.ph.i.i.i.i29
  %.05.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i29 ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.hb, %i.gy
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i29, !llvm.loop !142

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i29
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.hc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !143
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #30
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i64 %.07.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2ERKS3_m(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.134, align 1            ; 3 uses
  %4 = alloca %class.anon.134, align 1            ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [1024 x i8], align 16             ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca [4096 x i8], align 16             ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = alloca [1024 x i8], align 16             ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.Stockfish::SharedMemoryBackend", align 8 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  store i8 0, ptr %i.h, align 8, !tbaa !115
  %i.i = tail call noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(137849344) %1) #25
  %i.j = add i64 %i.i, 2654435769                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 131331904
  %i.l = tail call noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429) %i.k) #25
  %i.m = add i64 %i.l, 2654435769
  %i.n = shl i64 %i.j, 6
  %i.o = add i64 %i.m, %i.n
  %i.p = lshr i64 %i.j, 2
  %i.q = add i64 %i.o, %i.p
  %i.r = xor i64 %i.q, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false), !noalias !254
  %i.s = call i64 @readlink(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.f, i64 noundef 4095) #25, !noalias !254 ; 6 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.b, label %._crit_edge.i.i.thread.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.u, ptr %5, align 8, !tbaa !202, !alias.scope !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !254
  store i64 0, ptr %i.e, align 8, !tbaa !25, !noalias !254
  br label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !70, !noalias !254
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !202, !alias.scope !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !254
  store i64 %i.s, ptr %i.e, align 8, !tbaa !25, !noalias !254
  %i.x = icmp samesign ugt i64 %i.s, 15
  br i1 %i.x, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !41, !alias.scope !254
  %i.z = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !254
  store i64 %i.z, ptr %i.w, align 8, !tbaa !70, !alias.scope !254
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.y, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.f, align 16, !tbaa !70, !noalias !254
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !70
  br label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.f, i64 %i.s, i1 false)
  br label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit

_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.thread.i, %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !254 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !45, !alias.scope !254
  %i.ae = load ptr, ptr %5, align 8, !tbaa !41, !alias.scope !254
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !254
  %i.ag = load ptr, ptr %5, align 8, !tbaa !41    ; 11 uses
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !45 ; 5 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit
  %xtraiter = and i64 %i.ah, 7                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  br i1 %i.ai, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ah, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ce, %.lr.ph.i.i ] ; 9 uses
  %.078.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !70
  %i.al = sext i8 %i.ak to i64
  %i.am = xor i64 %.078.i.i, %i.al
  %i.an = mul i64 %i.am, 1099511628211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  %i.ar = sext i8 %i.aq to i64
  %i.as = xor i64 %i.an, %i.ar
  %i.at = mul i64 %i.as, 1099511628211
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !70
  %i.ax = sext i8 %i.aw to i64
  %i.ay = xor i64 %i.at, %i.ax
  %i.az = mul i64 %i.ay, 1099511628211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !70
  %i.bd = sext i8 %i.bc to i64
  %i.be = xor i64 %i.az, %i.bd
  %i.bf = mul i64 %i.be, 1099511628211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !70
  %i.bj = sext i8 %i.bi to i64
  %i.bk = xor i64 %i.bf, %i.bj
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !70
  %i.bp = sext i8 %i.bo to i64
  %i.bq = xor i64 %i.bl, %i.bp
  %i.br = mul i64 %i.bq, 1099511628211
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !70
  %i.bv = sext i8 %i.bu to i64
  %i.bw = xor i64 %i.br, %i.bv
  %i.bx = mul i64 %i.bw, 1099511628211
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !70
  %i.cb = sext i8 %i.ca to i64
  %i.cc = xor i64 %i.bx, %i.cb
  %i.cd = mul i64 %i.cc, 1099511628211            ; 3 uses
  %i.ce = add nuw nsw i64 %.09.i.i, 8             ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !251

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ce, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.cd, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i.epil
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !70
  %i.ch = sext i8 %i.cg to i64
  %i.ci = xor i64 %.078.i.i.epil, %i.ch
  %i.cj = mul i64 %i.ci, 1099511628211            ; 2 uses
  %i.ck = add nuw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !257

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit
  %.07.lcssa.i.i = phi i64 [ -3750763034362895579, %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit ], [ %i.cd, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil ]
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ag, %i.cl
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cn = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !70
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 1024, ptr noundef nonnull @.str.27, i64 noundef %i.r, i64 noundef %.07.lcssa.i.i, i64 noundef %2) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.cr, ptr %6, align 8, !tbaa !202
  %i.cs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !25
  %i.ct = icmp ugt i64 %i.cs, 15
  br i1 %i.ct, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #25 ; 2 uses
  store ptr %i.cu, ptr %6, align 8, !tbaa !41
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !70
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = phi ptr [ %i.cu, %bb.f ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.cs, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.cx = load i8, ptr %i.g, align 16, !tbaa !70
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 16 %i.g, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !45
  %i.da = load ptr, ptr %6, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !258
  %i.dc = load ptr, ptr %6, align 8, !tbaa !41, !noalias !258 ; 9 uses
  %i.dd = load i64, ptr %i.cz, align 8, !tbaa !45, !noalias !258 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %xtraiter79 = and i64 %i.dd, 7                  ; 3 uses
  %i.de = icmp ult i64 %i.dd, 8
  br i1 %i.de, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter84 = and i64 %i.dd, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fa, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.ez, %.lr.ph.i.i.i ]
  %niter85 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter85.next.7, %.lr.ph.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !70, !noalias !258
  %i.dh = sext i8 %i.dg to i64
  %i.di = xor i64 %.078.i.i.i, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !70, !noalias !258
  %i.dn = sext i8 %i.dm to i64
  %i.do = xor i64 %i.dj, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !70, !noalias !258
  %i.dt = sext i8 %i.ds to i64
  %i.du = xor i64 %i.dp, %i.dt
  %i.dv = mul i64 %i.du, 1099511628211
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !70, !noalias !258
  %i.dz = sext i8 %i.dy to i64
  %i.ea = xor i64 %i.dv, %i.dz
  %i.eb = mul i64 %i.ea, 1099511628211
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !70, !noalias !258
  %i.ef = sext i8 %i.ee to i64
  %i.eg = xor i64 %i.eb, %i.ef
  %i.eh = mul i64 %i.eg, 1099511628211
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !70, !noalias !258
  %i.el = sext i8 %i.ek to i64
  %i.em = xor i64 %i.eh, %i.el
  %i.en = mul i64 %i.em, 1099511628211
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !70, !noalias !258
  %i.er = sext i8 %i.eq to i64
  %i.es = xor i64 %i.en, %i.er
  %i.et = mul i64 %i.es, 1099511628211
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 7
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !70, !noalias !258
  %i.ex = sext i8 %i.ew to i64
  %i.ey = xor i64 %i.et, %i.ex
  %i.ez = mul i64 %i.ey, 1099511628211            ; 3 uses
  %i.fa = add nuw nsw i64 %.09.i.i.i, 8           ; 2 uses
  %niter85.next.7 = add nuw nsw i64 %niter85, 8   ; 2 uses
  %niter85.ncmp.7 = icmp eq i64 %niter85.next.7, %unroll_iter84
  br i1 %niter85.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !251

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod81.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fa, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.ez, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter79, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.fg, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.ff, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter80 = phi i64 [ %epil.iter80.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i.epil
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !70, !noalias !258
  %i.fd = sext i8 %i.fc to i64
  %i.fe = xor i64 %.078.i.i.i.epil, %i.fd
  %i.ff = mul i64 %i.fe, 1099511628211            ; 2 uses
  %i.fg = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter80.next = add i64 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i64 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !261

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ %i.ez, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph.i.i.i.epil ]
  %i.fh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.30, i64 noundef %.07.lcssa.i.i.i) #25, !noalias !258 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.fi, ptr %8, align 8, !tbaa !202, !alias.scope !258
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25, !noalias !258 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !258
  store i64 %i.fj, ptr %i.b, align 8, !tbaa !25, !noalias !258
  %i.fk = icmp ugt i64 %i.fj, 15
  br i1 %i.fk, label %bb.i, label %._crit_edge.i.i.i6

bb.i:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.fl, ptr %8, align 8, !tbaa !41, !alias.scope !258
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !258
  store i64 %i.fm, ptr %i.fi, align 8, !tbaa !70, !alias.scope !258
  br label %._crit_edge.i.i.i6

._crit_edge.i.i.i6:                               ; preds = %bb.i, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fn = phi ptr [ %i.fl, %bb.i ], [ %i.fi, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.fj, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i6
  %i.fo = load i8, ptr %i.c, align 16, !tbaa !70, !noalias !258
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !70
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 16 %i.c, i64 %i.fj, i1 false)
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i6, %bb.j, %bb.k
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !258 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !45, !alias.scope !258
  %i.fr = load ptr, ptr %8, align 8, !tbaa !41, !alias.scope !258
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !258
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.ft = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 4) #25, !noalias !262 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.fu, ptr %7, align 8, !tbaa !202, !alias.scope !262
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !41 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 5 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.l:                                             ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !45 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull align 8 dereferenceable(1) %i.fw, i64 %i.gb, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.fv, ptr %7, align 8, !tbaa !41, !alias.scope !262
  %i.gc = load i64, ptr %i.fw, align 8, !tbaa !70
  store i64 %i.gc, ptr %i.fu, align 8, !tbaa !70, !alias.scope !262
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !45
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.gd = phi i64 [ %i.fz, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.gd, ptr %i.gf, align 8, !tbaa !45, !alias.scope !262
  store ptr %i.fw, ptr %i.ft, align 8, !tbaa !41
  store i64 0, ptr %i.ge, align 8, !tbaa !45
  store i8 0, ptr %i.fw, align 8, !tbaa !70
  %i.gg = load ptr, ptr %6, align 8, !tbaa !41    ; 6 uses
  %i.gh = icmp eq ptr %i.gg, %i.cr
  %i.gi = load ptr, ptr %7, align 8, !tbaa !41    ; 5 uses
  %i.gj = icmp eq ptr %i.gi, %i.fu                ; 2 uses
  br i1 %i.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  br i1 %i.gj, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  br i1 %i.gj, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gk = load i64, ptr %i.gf, align 8, !tbaa !45 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  switch i64 %i.gk, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !70
  store i8 %i.gm, ptr %i.gg, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.gi, i64 %i.gk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.gn = load i64, ptr %i.gf, align 8, !tbaa !45 ; 2 uses
  store i64 %i.gn, ptr %i.cz, align 8, !tbaa !45
  %i.go = load ptr, ptr %6, align 8, !tbaa !41
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  store i8 0, ptr %i.gp, align 1, !tbaa !70
  %.pre.i8 = load ptr, ptr %7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gi, ptr %6, align 8, !tbaa !41
  %i.gq = load <2 x i64>, ptr %i.gf, align 8, !tbaa !70
  store <2 x i64> %i.gq, ptr %i.cz, align 8, !tbaa !70
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gr = load i64, ptr %i.cr, align 8, !tbaa !70
  store ptr %i.gi, ptr %6, align 8, !tbaa !41
  %i.gs = load <2 x i64>, ptr %i.gf, align 8, !tbaa !70
  store <2 x i64> %i.gs, ptr %i.cz, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.gg, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gg, ptr %7, align 8, !tbaa !41
  store i64 %i.gr, ptr %i.fu, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fu, ptr %7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.gt = phi ptr [ %i.gg, %bb.p ], [ %i.fu, %bb.q ], [ %.pre.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.gf, align 8, !tbaa !45
  store i8 0, ptr %i.gt, align 1, !tbaa !70
  %i.gu = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gw = load i64, ptr %i.fu, align 8, !tbaa !70
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.gy = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fi
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ha = load i64, ptr %i.fi, align 8, !tbaa !70
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.hc = load i64, ptr %i.cz, align 8, !tbaa !45
  %i.hd = icmp ugt i64 %i.hc, 255
  br i1 %i.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 40
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !37
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !319
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !36
  store ptr null, ptr %i.ah, align 8, !tbaa !33
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !34
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !35
  store i64 0, ptr %i.ar, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %i.ax, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.ak, %bb.e ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !350
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.081.0101)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 56 ; 2 uses
  %.not85 = icmp eq ptr %i.ba, %i.h
  br i1 %.not85, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge125:                                   ; preds = %._crit_edge118, %._crit_edge
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.h:                                             ; preds = %.lr.ph124, %._crit_edge118
  %.035122 = phi i64 [ 0, %.lr.ph124 ], [ %.136.lcssa, %._crit_edge118 ] ; 2 uses
  %.sroa.077.0121 = phi ptr [ %i.i, %.lr.ph124 ], [ %i.es, %._crit_edge118 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 48 ; 5 uses
  %.pre137 = load ptr, ptr %i.bd, align 8, !tbaa !350
  %.pre138 = load ptr, ptr %i.bc, align 8, !tbaa !355
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge106, %bb.h
  %i.be = phi ptr [ %i.ek, %._crit_edge106 ], [ %.pre138, %bb.h ] ; 3 uses
  %i.bf = phi ptr [ %i.el, %._crit_edge106 ], [ %.pre137, %bb.h ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph105, label %.preheader

._crit_edge106:                                   ; preds = %bb.r
  br i1 %.1, label %bb.i, label %.preheader, !llvm.loop !389

.preheader:                                       ; preds = %bb.i, %._crit_edge106
  %i.bl = phi ptr [ %i.el, %._crit_edge106 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bm = phi ptr [ %i.ek, %._crit_edge106 ], [ %i.be, %bb.i ] ; 2 uses
  %.not87114 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not87114, label %._crit_edge118, label %.lr.ph117

.lr.ph105:                                        ; preds = %bb.i, %bb.r
  %i.bn = phi ptr [ %i.ek, %bb.r ], [ %i.be, %bb.i ] ; 4 uses
  %i.bo = phi ptr [ %i.el, %bb.r ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bp = phi i64 [ %i.em, %bb.r ], [ 1, %bb.i ]  ; 3 uses
  %.0103 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.i ] ; 2 uses
  %.034102 = phi i1 [ %.1, %bb.r ], [ false, %bb.i ]
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %.0103 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !36
  %i.bw = add i64 %i.bv, %i.bs
  %.not = icmp ugt i64 %i.bw, %2
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph105
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !34 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %.not21.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not21.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i, %.lr.ph.i43
  %.sroa.013.022.i = phi ptr [ %i.by, %.lr.ph.i43 ], [ %i.cd, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i ] ; 3 uses
  %i.cd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.022.i) #27 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 32 ; 2 uses
  %.02022.i.i = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.l ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch               ; 2 uses
  %.in.v.i.i = select i1 %i.ci, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i44, label %._crit_edge.i.i, label %bb.l, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %bb.l
  br i1 %i.ci, label %._crit_edge.thread.i.i, label %bb.n

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.cb, %bb.k ] ; 4 uses
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !34
  %i.ck = icmp eq ptr %.019.lcssa29.i.i, %i.cj
  br i1 %i.ck, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i
  %i.cl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #27
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %.pre.i47 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  %.pre23.i = load i64, ptr %i.ce, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %i.cm = phi i64 [ %.pre23.i, %bb.m ], [ %i.cf, %._crit_edge.i.i ]
  %i.cn = phi i64 [ %.pre.i47, %bb.m ], [ %i.ch, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.m ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %select.unfold.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

select.unfold.i:                                  ; preds = %bb.n, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.n ] ; 3 uses
  %i.cp = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.013.022.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #25 ; 2 uses
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !36
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %i.bu, align 8, !tbaa !36
  %i.cs = icmp eq ptr %.sroa.4.0.i.ph.i, %i.cb
  br i1 %i.cs, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i: ; preds = %bb.o, %select.unfold.i
  %i.cy = phi i1 [ %i.cx, %bb.o ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cy, ptr noundef nonnull %i.cp, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cb) #25
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !36
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.br, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cd, %i.bz
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !390

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !354
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !354
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dd = getelementptr inbounds nuw [56 x i8], ptr %i.dc, i64 %.0103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.dj = udiv exact i64 %i.dh, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !345
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !345
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !27
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !27
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !37
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !319
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !36
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !36
  store ptr null, ptr %i.ds, align 8, !tbaa !33
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !34
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !35
  store i64 0, ptr %i.ea, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !391

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !350
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !350
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141 = load ptr, ptr %i.bd, align 8, !tbaa !350
  %.pre142 = load ptr, ptr %i.bc, align 8, !tbaa !355
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !392

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.077.0121) #27 ; 2 uses
  %.not86 = icmp eq ptr %i.es, %i.a
  br i1 %.not86, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.069.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 56 ; 2 uses
  %.not87 = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.065.0110 = phi ptr [ %i.jh, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.065.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !25 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !239

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !25
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !141 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !138   ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.preheader.i ] ; 5 uses
  %i.fo = phi ptr [ %i.hh, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.preheader.i ] ; 9 uses
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !143
  %.not.i.i38 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 0, ptr %i.ft, align 8, !tbaa !36
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !141
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !141
  %.pre143 = load ptr, ptr %0, align 8, !tbaa !138
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fn to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 4 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775776
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ga = sdiv exact i64 %i.fy, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 192153584101141162)
  %i.ge = select i1 %i.gc, i64 192153584101141162, i64 %i.gd ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i60)
  %i.gf = mul nuw nsw i64 %i.ge, 48
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #28 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i64 0, ptr %i.gl, align 8, !tbaa !36
  %.not10.i.i.i.i61 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i61, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i63 = phi ptr [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !33, !alias.scope !396, !noalias !393 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i62
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !27, !alias.scope !396, !noalias !393
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !34, !alias.scope !396, !noalias !393
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !35, !alias.scope !396, !noalias !393
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gm, ptr %i.gv, align 8, !tbaa !319, !noalias !398
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36, !alias.scope !396, !noalias !393
  store ptr null, ptr %i.gn, align 8, !tbaa !33, !alias.scope !396, !noalias !393
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !34, !alias.scope !396, !noalias !393
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !35, !alias.scope !396, !noalias !393
  store i64 0, ptr %i.gw, align 8, !tbaa !36, !alias.scope !396, !noalias !393
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i62
  %.sink6.i.i.i.i.i = phi ptr [ %i.gs, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i62 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gu, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i62 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gx, %bb.v ], [ 0, %.lr.ph.i.i.i.i62 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.v ], [ 0, %.lr.ph.i.i.i.i62 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 16
  store ptr %i.go, ptr %i.gy, align 8, !tbaa !33, !alias.scope !393, !noalias !396
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !34, !alias.scope !393, !noalias !396
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !35, !alias.scope !393, !noalias !396
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.hb, align 8, !tbaa !36, !alias.scope !393, !noalias !396
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gm, align 8, !tbaa !27, !alias.scope !393, !noalias !396
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 48 ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.hc, %i.fo
  br i1 %.not.i.i.i.i64, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i62, !llvm.loop !399

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fy) #30
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gg, ptr %0, align 8, !tbaa !138
  store ptr %i.he, ptr %i.o, align 8, !tbaa !141
  %i.hf = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.hf, ptr %i.p, align 8, !tbaa !143
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hg = phi ptr [ %.pre143, %bb.s ], [ %i.gg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hh = phi ptr [ %i.fv, %bb.s ], [ %i.he, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = sdiv exact i64 %i.hk, 48
  %.not.i39 = icmp ugt i64 %i.hl, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !400

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(131331893)) local_unnamed_addr #7

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm13create_sharedINS_4Eval4NNUE8NetworksEEESt8optionalINS0_12SharedMemoryIT_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 64 dereferenceable(137849344) %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"class.Stockfish::shm::SharedMemory", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #25
  %i.a = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 64 dereferenceable(137849344) %2) #25
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %3) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.sink, ptr %i.b, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %3, align 8, !tbaa !46
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(144) %3), !inline_history !179
  %i.c = load ptr, ptr %3, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(144) %3, i1 noundef zeroext false) #25, !inline_history !179
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30, !inline_history !179
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30, !inline_history !179
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !70
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30, !inline_history !179
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !202
  %i.f = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.h, ptr %i.c, align 8, !tbaa !25
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !41
  %i.k = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.k, ptr %i.e, align 8, !tbaa !70
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !70
  store i8 %i.m, ptr %i.l, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.r, align 8, !tbaa !188
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i64 137849400, ptr %i.t, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !467
  %i.v = load ptr, ptr %1, align 8, !tbaa !41, !noalias !467 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !45, !noalias !467 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !70, !noalias !467
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !70, !noalias !467
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !70, !noalias !467
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !70, !noalias !467
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !70, !noalias !467
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !70, !noalias !467
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !70, !noalias !467
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !70, !noalias !467
  %i.bq = sext i8 %i.bp to i64
  %i.br = xor i64 %i.bm, %i.bq
  %i.bs = mul i64 %i.br, 1099511628211            ; 3 uses
  %i.bt = add nuw nsw i64 %.09.i.i.i, 8           ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !251

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bz, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.by, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !70, !noalias !467
  %i.bw = sext i8 %i.bv to i64
  %i.bx = xor i64 %.078.i.i.i.epil, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211            ; 2 uses
  %i.bz = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !470

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.i.i.i.epil ]
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.31, i64 noundef %.07.lcssa.i.i.i) #25, !noalias !467 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !202, !alias.scope !467
  %i.cc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25, !noalias !467 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !467
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !25, !noalias !467
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ce = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ce, ptr %i.u, align 8, !tbaa !41, !alias.scope !467
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !467
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !70, !alias.scope !467
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cg = phi ptr [ %i.ce, %bb.e ], [ %i.cb, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.cc, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %i.b, align 16, !tbaa !70, !noalias !467
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !70
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 16 %i.b, i64 %i.cc, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !467 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !45, !alias.scope !467
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !41, !alias.scope !467
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !467
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !202
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.co, align 8, !tbaa !45
  store i8 0, ptr %i.cn, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %class.anon.293, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr @_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv, ptr %3, align 8, !tbaa !233
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !233
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !233
  %i.c = call noundef i32 @pthread_once(ptr noundef nonnull @_ZN9Stockfish3shm6detail12CleanupHooks14register_once_E, ptr noundef nonnull @__once_proxy) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #29
  unreachable

_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !233
  store ptr null, ptr %i.b, align 8, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit
  %.020 = phi i1 [ false, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit ], [ true, %.backedge.backedge ] ; 2 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !188
  %.not.i = icmp eq i32 %i.m, -1
  %i.n = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit: ; preds = %.backedge
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !471
  %.not74 = icmp eq ptr %i.o, null
  br i1 %.not74, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %.thread70

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread: ; preds = %.backedge, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.q = call i32 @shm_open(ptr noundef %i.p, i32 noundef 194, i32 noundef 438) #25 ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !188
  %i.r = icmp ne i32 %i.q, -1                     ; 7 uses
  br i1 %i.r, label %.preheader.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.t = call i32 @shm_open(ptr noundef %i.s, i32 noundef 2, i32 noundef 438) #25 ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !188
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.thread70, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, %bb.c
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %i.v = load i32, ptr %i.d, align 8, !tbaa !188
  %i.w = call i32 @flock(i32 noundef %i.v, i32 noundef 2) #25
  %.not.i30 = icmp eq i32 %i.w, -1
  br i1 %.not.i30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.x = tail call ptr @__errno_location() #31
  %i.y = load i32, ptr %i.x, align 4, !tbaa !192
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.preheader.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, !llvm.loop !193

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %bb.d
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !188
  %i.ab = call i32 @close(i32 noundef %i.aa) #25  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !188
  store i64 0, ptr %i.l, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 1, !tbaa !70
  br label %.thread70

bb.e:                                             ; preds = %.preheader.i
  br i1 %i.r, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.ad = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) #25
  br i1 %i.ad, label %bb.n, label %.thread57

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !188
  %i.af = call i32 @fstat(i32 noundef %i.ae, ptr noundef nonnull %2) #25 ; 0 uses
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !472
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.thread61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !188
  %i.ak = call ptr @mmap(ptr noundef null, i64 noundef %i.ah, i32 noundef 3, i32 noundef 1, i32 noundef %i.aj, i64 noundef 0) #25 ; 5 uses
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !196
  %i.al = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %i.al, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !471
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849344
  store ptr %i.am, ptr %i.j, align 8, !tbaa !194
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849388
  %i.ao = load atomic i8, ptr %i.an acquire, align 1, !range !177, !noundef !178
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_2
