Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVLegalizeImplicitBinding?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl11runOnModuleERN4llvm6ModuleE:bb.a
  %i.dt = icmp ult i32 %i.ds, 65
  %i.du = load ptr, ptr %i.dq, align 8
  %spec.select.i.i.i5.i.i.i.i.i.i.i.i.i.i = select i1 %i.dt, ptr %i.dq, ptr %i.du
  %.0.i.i.i6.i.i.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i5.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !58
  %i.dv = trunc i64 %.0.i.i.i6.i.i.i.i.i.i.i.i.i.i to i32
  %i.dw = icmp ult i32 %i.dh, %i.dv
  br i1 %i.dw, label %bb.q, label %"_ZSt25__unguarded_linear_insertIPPN4llvm8CallInstEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERNS0_6ModuleEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.p
  %i.dx = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  store ptr %i.dx, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  br label %bb.p, !llvm.loop !66

"_ZSt25__unguarded_linear_insertIPPN4llvm8CallInstEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERNS0_6ModuleEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.p
  store ptr %i.ct, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.dy, %i.cn
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit, label %.lr.ph.i.i.i.i.i.i4.i, !llvm.loop !67

bb.r:                                             ; preds = %bb.n
  tail call fastcc void @"_ZSt16__insertion_sortIPPN4llvm8CallInstEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERNS0_6ModuleEE3$_0EEEvT_SD_T0_"(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.cn)
  br label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit: ; preds = %"_ZSt25__unguarded_linear_insertIPPN4llvm8CallInstEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERNS0_6ModuleEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i", %bb.r
  %.pr = load i32, ptr %i.cl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  switch i32 %.pr, label %.lr.ph.i [
    i32 0, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl27replaceImplicitBindingCallsERN4llvm6ModuleE.exit
    i32 1, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit.thread
  ]

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit.thread: ; preds = %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  br label %.lr.ph.i5

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 1, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit ] ; 4 uses
  %i.eb = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !64 ; 3 uses
  %i.ef = tail call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ee) #15
  %i.eg = icmp eq i32 %i.ef, 13286
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = and i32 %i.ei, 268435455
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [32 x i8], ptr %i.ee, i64 %i.el
  %phi.call.in.idx.i.i = select i1 %i.eg, i64 0, i64 32
  %phi.call.in.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 %phi.call.in.idx.i.i
  %phi.call.i.i = load ptr, ptr %phi.call.in.i.i, align 8, !tbaa !51 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %phi.call.i.i, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %phi.call.i.i, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !56
  %i.eq = icmp ult i32 %i.ep, 65
  %i.er = load ptr, ptr %i.en, align 8
  %spec.select.i.i.i.i = select i1 %i.eq, ptr %i.en, ptr %i.er
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !58
  %i.es = trunc i64 %.0.i.i.i.i to i32
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !64 ; 3 uses
  %i.ew = tail call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ev) #15
  %i.ex = icmp eq i32 %i.ew, 13286
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = and i32 %i.ez, 268435455
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %i.fc
  %phi.call.in.idx.i15.i = select i1 %i.ex, i64 0, i64 32
  %phi.call.in.i16.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 %phi.call.in.idx.i15.i
  %phi.call.i17.i = load ptr, ptr %phi.call.in.i16.i, align 8, !tbaa !51 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %phi.call.i17.i, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %phi.call.i17.i, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !56
  %i.fh = icmp ult i32 %i.fg, 65
  %i.fi = load ptr, ptr %i.fe, align 8
  %spec.select.i.i.i18.i = select i1 %i.fh, ptr %i.fe, ptr %i.fi
  %.0.i.i.i19.i = load i64, ptr %spec.select.i.i.i18.i, align 8, !tbaa !58
  %i.fj = trunc i64 %.0.i.i.i19.i to i32
  %i.fk = icmp eq i32 %i.es, %i.fj
  br i1 %i.fk, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.eb
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !64 ; 3 uses
  %i.fo = tail call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fn) #15
  %.off.i.i = add i32 %i.fo, -13285
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = and i32 %i.fq, 268435455
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds [32 x i8], ptr %i.fn, i64 %i.ft
  %..i.i = select i1 %switch.i.i, i64 32, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %..i.i
  %phi.call.i20.i = load ptr, ptr %i.fv, align 8, !tbaa !51 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %phi.call.i20.i, i64 24 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %phi.call.i20.i, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !56
  %i.fz = icmp ult i32 %i.fy, 65
  %i.ga = load ptr, ptr %i.fw, align 8
  %spec.select.i.i.i21.i = select i1 %i.fz, ptr %i.fw, ptr %i.ga
  %.0.i.i.i22.i = load i64, ptr %spec.select.i.i.i21.i, align 8, !tbaa !58
  %i.gb = trunc i64 %.0.i.i.i22.i to i32
  %i.gc = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !64 ; 3 uses
  %i.gf = tail call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ge) #15
  %.off.i23.i = add i32 %i.gf, -13285
  %switch.i24.i = icmp ult i32 %.off.i23.i, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = and i32 %i.gh, 268435455
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds [32 x i8], ptr %i.ge, i64 %i.gk
  %..i25.i = select i1 %switch.i24.i, i64 32, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %..i25.i
  %phi.call.i26.i = load ptr, ptr %i.gm, align 8, !tbaa !51 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %phi.call.i26.i, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %phi.call.i26.i, i64 32
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !56
  %i.gq = icmp ult i32 %i.gp, 65
  %i.gr = load ptr, ptr %i.gn, align 8
  %spec.select.i.i.i27.i = select i1 %i.gq, ptr %i.gn, ptr %i.gr
  %.0.i.i.i28.i = load i64, ptr %spec.select.i.i.i27.i, align 8, !tbaa !58
  %i.gs = trunc i64 %.0.i.i.i28.i to i32
  %.not.i4 = icmp eq i32 %i.gb, %i.gs
  br i1 %.not.i4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.1, i1 noundef zeroext true) #17
  unreachable

bb.u:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gt = load i32, ptr %i.cl, align 8, !tbaa !59 ; 3 uses
  %i.gu = zext i32 %i.gt to i64
  %i.gv = icmp samesign ult i64 %indvars.iv.next, %i.gu
  br i1 %i.gv, label %.lr.ph.i, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit, !llvm.loop !68

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit: ; preds = %bb.u
  %i.gw = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  %.idx.i = shl nuw nsw i64 %i.gx, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx.i
  %.not40.i = icmp eq i32 %i.gt, 0
  br i1 %.not40.i, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl27replaceImplicitBindingCallsERN4llvm6ModuleE.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit.thread, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit
  %i.gz = phi ptr [ %i.ea, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit.thread ], [ %i.gy, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit ]
  %i.ha = phi ptr [ %i.dz, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit.thread ], [ %i.gw, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit ]
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 69
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 70
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0..sroa_idx.i.i.i30.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 69
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 70
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.v

bb.v:                                             ; preds = %bb.bk, %.lr.ph.i5
  %.043.i = phi i32 [ -1, %.lr.ph.i5 ], [ %i.iz, %bb.bk ]
  %.02242.i = phi i32 [ -1, %.lr.ph.i5 ], [ %.021.i, %bb.bk ]
  %.02341.i = phi ptr [ %i.ha, %.lr.ph.i5 ], [ %i.wb, %bb.bk ] ; 2 uses
  %i.il = load ptr, ptr %.02341.i, align 8, !tbaa !64 ; 29 uses
  %i.im = call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il) #15
  %i.in = icmp eq i32 %i.im, 13286
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 10 uses
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = and i32 %i.ip, 268435455
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.is
  %phi.call.in.idx.i.i6 = select i1 %i.in, i64 0, i64 32
  %phi.call.in.i.i7 = getelementptr inbounds nuw i8, ptr %i.it, i64 %phi.call.in.idx.i.i6
  %phi.call.i.i8 = load ptr, ptr %phi.call.in.i.i7, align 8, !tbaa !51 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %phi.call.i.i8, i64 24 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %phi.call.i.i8, i64 32
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !56
  %i.ix = icmp ult i32 %i.iw, 65
  %i.iy = load ptr, ptr %i.iu, align 8
  %spec.select.i.i.i.i9 = select i1 %i.ix, ptr %i.iu, ptr %i.iy
  %.0.i.i.i.i10 = load i64, ptr %spec.select.i.i.i.i9, align 8, !tbaa !58
  %i.iz = trunc i64 %.0.i.i.i.i10 to i32          ; 2 uses
  %i.ja = icmp eq i32 %.043.i, %i.iz
  br i1 %i.ja, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jb = call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il) #15
  %.off.i.i11 = add i32 %i.jb, -13285
  %switch.i.i12 = icmp ult i32 %.off.i.i11, 2
  %i.jc = load i32, ptr %i.io, align 4
  %i.jd = and i32 %i.jc, 268435455
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.jf
  %..i.i13 = select i1 %switch.i.i12, i64 32, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %..i.i13
  %phi.call.i24.i = load ptr, ptr %i.jh, align 8, !tbaa !51 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %phi.call.i24.i, i64 24 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %phi.call.i24.i, i64 32
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !56
  %i.jl = icmp ult i32 %i.jk, 65
  %i.jm = load ptr, ptr %i.ji, align 8
  %spec.select.i.i.i25.i = select i1 %i.jl, ptr %i.ji, ptr %i.jm
  %.0.i.i.i26.i = load i64, ptr %spec.select.i.i.i25.i, align 8, !tbaa !58 ; 2 uses
  %i.jn = load ptr, ptr %i.hb, align 8, !tbaa !32 ; 3 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = sdiv exact i64 %i.jr, 72                ; 4 uses
  %i.jt = and i64 %.0.i.i.i26.i, 4294967295       ; 4 uses
  %.not.i.i = icmp ugt i64 %i.js, %i.jt
  br i1 %.not.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ju = add i64 %.0.i.i.i26.i, 1
  %i.jv = and i64 %i.ju, 4294967295               ; 4 uses
  %i.jw = icmp samesign ult i64 %i.js, %i.jv
  br i1 %i.jw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jx = sub nuw nsw i64 %i.jv, %i.js
  call void @_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.jx)
  br label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.jy = icmp samesign ugt i64 %i.js, %i.jv
  br i1 %i.jy, label %bb.aa, label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.jz = getelementptr inbounds nuw [72 x i8], ptr %i.jo, i64 %i.jv ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jn, %i.jz
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa, %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.kd, %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i.i.i ], [ %i.jz, %bb.aa ] ; 3 uses
  %i.ka = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @free(ptr noundef %i.ka) #15
  br label %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kd, %i.jn
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm9BitVectorEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPN4llvm9BitVectorEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.jz, ptr %i.hb, align 8, !tbaa !32
  br label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i

_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm9BitVectorEEvT_S3_.exit.i.i.i.i, %bb.aa, %bb.z, %bb.y
  %i.ke = load ptr, ptr %0, align 8, !tbaa !29
  %i.kf = getelementptr inbounds nuw [72 x i8], ptr %i.ke, i64 %i.jt ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 64 ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !69
  %i.ki = and i32 %i.kh, 63                       ; 2 uses
  %.not.i.i13.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i13.i.i, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i.i, label %bb.ac

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i.i: ; preds = %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !59 ; 2 uses
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i.i

bb.ac:                                            ; preds = %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit.i.i
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl nsw i64 -1, %i.kj
  %i.kl = xor i64 %i.kk, -1
  %i.km = load ptr, ptr %i.kf, align 8, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !59 ; 2 uses
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -8 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !76
  %i.kt = and i64 %i.ks, %i.kl
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !76
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i.i: ; preds = %bb.ac, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre6.i.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i.i ], [ %i.kp, %bb.ac ] ; 2 uses
  %i.ku = phi i32 [ %.pre.i.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i.i ], [ %i.ko, %bb.ac ]
  store i32 64, ptr %i.kg, align 8, !tbaa !69
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 3 uses
  switch i32 %i.ku, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.thread40.i.i [
    i32 1, label %_ZN4llvm9BitVector6resizeEjb.exit.i.i
    i32 0, label %bb.ad
  ]

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.thread40.i.i: ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i.i
  store i32 1, ptr %i.kv, align 8, !tbaa !59
  br label %_ZN4llvm9BitVector6resizeEjb.exit.i.i

bb.ad:                                            ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i.i
  %i.kw = sub nuw nsw i64 1, %.pre-phi.i.i.i      ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !11
  %.not.i.i.i.i.i.i.i14 = icmp eq i32 %i.ky, 0
  br i1 %.not.i.i.i.i.i.i.i14, label %bb.ae, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i.i, !prof !78

bb.ae:                                            ; preds = %bb.ad
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.kf, ptr noundef nonnull %i.kz, i64 noundef 1, i64 noundef 8) #15
  %.pre.i.i.i.i.i = load i32, ptr %i.kv, align 8, !tbaa !59 ; 2 uses
  %.pre.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre4.pre.i.pre.i.i = load i32, ptr %i.kg, align 8, !tbaa !69
  %i.la = and i32 %.pre4.pre.i.pre.i.i, 63
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.pre4.pre.i.i.i = phi i32 [ 0, %bb.ad ], [ %i.la, %bb.ae ] ; 2 uses
  %.pre-phi.i.i.i.i = phi i64 [ %.pre-phi.i.i.i, %bb.ad ], [ %.pre.i.i.i.i, %bb.ae ]
  %i.lb = phi i32 [ 0, %bb.ad ], [ %.pre.i.i.i.i.i, %bb.ae ]
  %i.lc = load ptr, ptr %i.kf, align 8, !tbaa !8  ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.pre-phi.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.kw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ld, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !76
  %i.le = trunc nuw nsw i64 %i.kw to i32
  %i.lf = add i32 %i.lb, %i.le                    ; 2 uses
  store i32 %i.lf, ptr %i.kv, align 8, !tbaa !59
  %.not.i.i.i.i.i15 = icmp eq i32 %.pre4.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i15, label %_ZN4llvm9BitVector6resizeEjb.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i.i
  %i.lg = zext nneg i32 %.pre4.pre.i.i.i to i64
  %i.lh = shl nsw i64 -1, %i.lg
  %i.li = xor i64 %i.lh, -1
  %i.lj = zext i32 %i.lf to i64
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lj
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !76
  %i.ln = and i64 %i.lm, %i.li
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !76
  br label %_ZN4llvm9BitVector6resizeEjb.exit.i.i

_ZN4llvm9BitVector6resizeEjb.exit.i.i:            ; preds = %bb.af, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i.i, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.thread40.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i.i, %bb.w
  %i.lo = load ptr, ptr %0, align 8, !tbaa !29
  %i.lp = getelementptr inbounds nuw [72 x i8], ptr %i.lo, i64 %i.jt ; 10 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 64 ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !69 ; 6 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm9BitVector6resizeEjb.exit.i.i
  %i.lt = add i32 %i.lr, -1                       ; 2 uses
  %i.lu = lshr i32 %i.lt, 6                       ; 3 uses
  %i.lv = load ptr, ptr %i.lp, align 8, !tbaa !8  ; 3 uses
  %i.lw = and i32 %i.lt, 63
  %i.lx = xor i32 %i.lw, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = lshr i64 -1, %i.ly                      ; 2 uses
  %i.ma = zext nneg i32 %i.lu to i64
  %i.mb = add nuw nsw i32 %i.lu, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.mb to i64
  %i.mc = load i64, ptr %i.lv, align 8, !tbaa !76
  %spec.select.peel.i.i.i.i.i = xor i64 %i.mc, -1
  %i.md = icmp eq i32 %i.lu, 0                    ; 2 uses
  %i.me = select i1 %i.md, i64 %i.lz, i64 -1
  %.231.peel.i.i.i.i.i = and i64 %i.me, %spec.select.peel.i.i.i.i.i ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.231.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.ah, label %_ZNK4llvm9BitVector16find_first_unsetEv.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.md, label %_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.ah, %bb.ai
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.ai ], [ 1, %bb.ah ] ; 4 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %indvars.iv.i.i.i.i.i
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !76
  %spec.select.i.i.i.i.i = xor i64 %i.mg, -1
  %i.mh = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.ma
  %i.mi = select i1 %i.mh, i64 %i.lz, i64 -1
  %.231.i.i.i.i.i = and i64 %i.mi, %spec.select.i.i.i.i.i ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.231.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.ai, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i14.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.mj = shl nuw i32 %.pre.i.i.i14.i.i, 6
  br label %_ZNK4llvm9BitVector16find_first_unsetEv.exit.i.i

bb.ai:                                            ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i, label %.peel.next.i.i.i.i.i, !llvm.loop !79

_ZNK4llvm9BitVector16find_first_unsetEv.exit.i.i: ; preds = %.loopexit48.i.i.i.i.i, %bb.ag
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.mj, %.loopexit48.i.i.i.i.i ], [ 0, %bb.ag ]
  %.231.lcssa.i.i.i.i.i = phi i64 [ %.231.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.231.peel.i.i.i.i.i, %bb.ag ]
  %i.mk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.231.lcssa.i.i.i.i.i, i1 true)
  %i.ml = trunc nuw nsw i64 %i.mk to i32
  %i.mm = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.ml ; 2 uses
  %i.mn = icmp eq i32 %i.mm, -1
  br i1 %i.mn, label %_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl31getAndReserveFirstUnusedBindingEj.exit.i

_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i: ; preds = %bb.ai, %_ZNK4llvm9BitVector16find_first_unsetEv.exit.i.i, %bb.ah
  %i.mo = shl nsw i32 %i.lr, 1
  %i.mp = or disjoint i32 %i.mo, 1                ; 2 uses
  %i.mq = and i32 %i.lr, 63                       ; 2 uses
  %.not.i.i15.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i15.i.i, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i, label %bb.aj

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i: ; preds = %_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i, %_ZN4llvm9BitVector6resizeEjb.exit.i.i
  %i.mr = phi i32 [ %i.mp, %_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i ], [ 1, %_ZN4llvm9BitVector6resizeEjb.exit.i.i ]
  %.phi.trans.insert.i35.i.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %.pre.i36.i.i = load i32, ptr %.phi.trans.insert.i35.i.i, align 8, !tbaa !59 ; 2 uses
  %.pre6.i37.i.i = zext i32 %.pre.i36.i.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i

bb.aj:                                            ; preds = %_ZNK4llvm9BitVector16find_first_unsetEv.exit.thread.i.i
  %i.ms = zext nneg i32 %i.mq to i64
  %i.mt = shl nsw i64 -1, %i.ms
  %i.mu = xor i64 %i.mt, -1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !59 ; 2 uses
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.mx
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -8 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !76
  %i.nb = and i64 %i.na, %i.mu
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !76
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i: ; preds = %bb.aj, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i
  %i.nc = phi i32 [ %i.mr, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i ], [ %i.mp, %bb.aj ] ; 5 uses
  %.pre-phi.i17.i.i = phi i64 [ %.pre6.i37.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i ], [ %i.mx, %bb.aj ] ; 2 uses
  %i.nd = phi i32 [ %.pre.i36.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i34.i.i ], [ %i.mw, %bb.aj ] ; 4 uses
  store i32 %i.nc, ptr %i.lq, align 8, !tbaa !69
  %i.ne = add i32 %i.nc, 63
  %i.nf = lshr i32 %i.ne, 6                       ; 5 uses
  %i.ng = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %i.ni = icmp eq i32 %i.nf, %i.nd
  br i1 %i.ni, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i30.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i
  %i.nj = icmp ult i32 %i.nf, %i.nd
  br i1 %i.nj, label %.sink.split.i.i27.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nk = sub nuw nsw i64 %i.ng, %.pre-phi.i17.i.i ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !11
  %.not.i.i.i.i.i18.i.i = icmp ugt i32 %i.nf, %i.nm
  br i1 %.not.i.i.i.i.i18.i.i, label %bb.am, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i19.i.i, !prof !78

bb.am:                                            ; preds = %bb.al
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.lp, ptr noundef nonnull %i.nn, i64 noundef %i.ng, i64 noundef 8) #15
  %.pre.i.i.i32.i.i = load i32, ptr %i.nh, align 8, !tbaa !59 ; 2 uses
  %.pre.i.i33.i.i = zext i32 %.pre.i.i.i32.i.i to i64
  %.pre4.pre.i26.pre.i.i = load i32, ptr %i.lq, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i19.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i19.i.i: ; preds = %bb.am, %bb.al
  %.pre4.pre.i26.i.i = phi i32 [ %i.nc, %bb.al ], [ %.pre4.pre.i26.pre.i.i, %bb.am ]
  %.pre-phi.i.i20.i.i = phi i64 [ %.pre-phi.i17.i.i, %bb.al ], [ %.pre.i.i33.i.i, %bb.am ]
  %i.no = phi i32 [ %i.nd, %bb.al ], [ %.pre.i.i.i32.i.i, %bb.am ]
  %i.np = load ptr, ptr %i.lp, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.pre-phi.i.i20.i.i
  %.idx.i.i.i.i.i.i.i21.i.i = shl nuw nsw i64 %i.nk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.nq, i8 0, i64 %.idx.i.i.i.i.i.i.i21.i.i, i1 false), !tbaa !76
  %i.nr = trunc nuw nsw i64 %i.nk to i32
  %i.ns = add i32 %i.no, %i.nr
  br label %.sink.split.i.i27.i.i

.sink.split.i.i27.i.i:                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i19.i.i, %bb.ak
  %.pre4.i28.i.i = phi i32 [ %.pre4.pre.i26.i.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i19.i.i ], [ %i.nc, %bb.ak ]
  %.sink.i.i29.i.i = phi i32 [ %i.ns, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i19.i.i ], [ %i.nf, %bb.ak ] ; 2 uses
  store i32 %.sink.i.i29.i.i, ptr %i.nh, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i30.i.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i30.i.i: ; preds = %.sink.split.i.i27.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i
  %i.nt = phi i32 [ %i.nd, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i ], [ %.sink.i.i29.i.i, %.sink.split.i.i27.i.i ]
  %i.nu = phi i32 [ %i.nc, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i16.i.i ], [ %.pre4.i28.i.i, %.sink.split.i.i27.i.i ]
  %i.nv = and i32 %i.nu, 63                       ; 2 uses
  %.not.i.i.i31.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i.i.i31.i.i, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl31getAndReserveFirstUnusedBindingEj.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i30.i.i
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl nsw i64 -1, %i.nw
  %i.ny = xor i64 %i.nx, -1
  %i.nz = load ptr, ptr %i.lp, align 8, !tbaa !8
  %i.oa = zext i32 %i.nt to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oa
  %i.oc = getelementptr inbounds i8, ptr %i.ob, i64 -8 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !76
  %i.oe = and i64 %i.od, %i.ny
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl31getAndReserveFirstUnusedBindingEj.exit.i

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl31getAndReserveFirstUnusedBindingEj.exit.i: ; preds = %bb.an, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i30.i.i, %_ZNK4llvm9BitVector16find_first_unsetEv.exit.i.i
  %.0.i.i = phi i32 [ %i.mm, %_ZNK4llvm9BitVector16find_first_unsetEv.exit.i.i ], [ %i.lr, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i30.i.i ], [ %i.lr, %bb.an ] ; 3 uses
  %i.of = load ptr, ptr %0, align 8, !tbaa !29
  %i.og = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %i.jt
  %i.oh = and i32 %.0.i.i, 63
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = shl nuw i64 1, %i.oi
  %i.ok = lshr i32 %.0.i.i, 6
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !8
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.ol ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !76
  %i.op = or i64 %i.oo, %i.oj
  store i64 %i.op, ptr %i.on, align 8, !tbaa !76
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl31getAndReserveFirstUnusedBindingEj.exit.i, %bb.v
  %.021.i = phi i32 [ %.0.i.i, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl31getAndReserveFirstUnusedBindingEj.exit.i ], [ %.02242.i, %bb.v ] ; 3 uses
  %i.oq = call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il) #15
  %i.or = icmp eq i32 %i.oq, 13286
  %i.os = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  br i1 %i.or, label %bb.ap, label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ov = load ptr, ptr %i.os, align 8, !tbaa !81
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !82, !nonnull !87, !align !88
  store ptr null, ptr %5, align 8, !tbaa !89
  store ptr %i.ow, ptr %i.hw, align 8, !tbaa !92
  store ptr %i.hu, ptr %i.hx, align 8, !tbaa !93
  store ptr %i.hv, ptr %i.hy, align 8, !tbaa !95
  store ptr null, ptr %i.hz, align 8, !tbaa !97
  store i32 0, ptr %i.ia, align 8, !tbaa !108
  store i8 0, ptr %i.ib, align 4, !tbaa !109
  store i8 2, ptr %i.ic, align 1, !tbaa !110
  store i8 7, ptr %i.id, align 2, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.hu, align 8, !tbaa !112
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !114
  store ptr %i.ox, ptr %i.if, align 8, !tbaa !116
  store ptr %i.ot, ptr %i.ig, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.oy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.il) #15
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !117
  store i64 %i.oz, ptr %5, align 8, !tbaa !117
  %i.pa = load i32, ptr %i.io, align 4
  %i.pb = and i32 %i.pa, 268435455
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = sub nsw i64 0, %i.pc
  %i.pe = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !51 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !56
  %i.pk = icmp ult i32 %i.pj, 65
  %i.pl = load ptr, ptr %i.ph, align 8
  %spec.select.i.i.i27.i17 = select i1 %i.pk, ptr %i.ph, ptr %i.pl
  %.0.i.i.i28.i18 = load i64, ptr %spec.select.i.i.i27.i17, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.ih, ptr %6, align 8, !tbaa !8
  store i32 0, ptr %i.ii, align 8, !tbaa !59
  store i32 8, ptr %i.ij, align 4, !tbaa !11
  %i.pm = load ptr, ptr %i.hw, align 8, !tbaa !118, !nonnull !87, !align !88
  %i.pn = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pm) #15
  %i.po = and i64 %.0.i.i.i28.i18, 4294967295
  %i.pp = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.pn, i64 noundef %i.po, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  %i.pq = load i32, ptr %i.ii, align 8, !tbaa !59 ; 2 uses
  %i.pr = load i32, ptr %i.ij, align 4, !tbaa !11
  %.not.i.i.i19 = icmp ult i32 %i.pq, %i.pr
  br i1 %.not.i.i.i19, label %bb.ar, label %bb.aq, !prof !60

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.pp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.ps = zext i32 %i.pq to i64
  %i.pt = load ptr, ptr %6, align 8, !tbaa !8
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.ps
  store ptr %i.pp, ptr %i.pu, align 1
  %i.pv = load i32, ptr %i.ii, align 8, !tbaa !59
  %i.pw = add i32 %i.pv, 1
  store i32 %i.pw, ptr %i.ii, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i: ; preds = %bb.ar, %bb.aq
  %i.px = load ptr, ptr %i.hw, align 8, !tbaa !118, !nonnull !87, !align !88
  %i.py = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.px) #15
  %i.pz = zext i32 %.021.i to i64
  %i.qa = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.py, i64 noundef %i.pz, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  %i.qb = load i32, ptr %i.ii, align 8, !tbaa !59 ; 2 uses
  %i.qc = load i32, ptr %i.ij, align 4, !tbaa !11
  %.not.i16.i.i = icmp ult i32 %i.qb, %i.qc
  br i1 %.not.i16.i.i, label %bb.at, label %bb.as, !prof !60

bb.as:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.qa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i

bb.at:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i
  %i.qd = zext i32 %i.qb to i64
  %i.qe = load ptr, ptr %6, align 8, !tbaa !8
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd
  store ptr %i.qa, ptr %i.qf, align 1
  %i.qg = load i32, ptr %i.ii, align 8, !tbaa !59
  %i.qh = add i32 %i.qg, 1
  store i32 %i.qh, ptr %i.ii, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i: ; preds = %bb.at, %bb.as
  %i.qi = call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il)
  %i.qj = load i32, ptr %i.io, align 4
  %i.qk = and i32 %i.qj, 268435455
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = sub nsw i64 0, %i.ql                    ; 2 uses
  %i.qn = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.qm
  %i.qo = ptrtoint ptr %i.qi to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = lshr exact i64 %i.qq, 5
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = icmp ugt i32 %i.qs, 2
  br i1 %i.qt, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvm8CallBase7arg_endEv.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.qu = load ptr, ptr %i.os, align 8, !tbaa !81
  store ptr %i.qu, ptr %i.b, align 8, !tbaa !119
  %i.qv = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(1288) %1, i32 noundef 13285, ptr nonnull %i.b, i64 1) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.not.i18.i.i = icmp eq ptr %i.qv, null
  br i1 %.not.i18.i.i, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !120
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i.i

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i.i: ; preds = %bb.au, %._crit_edge.i.i
  %i.qy = phi ptr [ %i.qx, %bb.au ], [ null, %._crit_edge.i.i ]
  %i.qz = load ptr, ptr %6, align 8, !tbaa !8
  %i.ra = load i32, ptr %i.ii, align 8, !tbaa !59
  %i.rb = zext i32 %i.ra to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i16 257, ptr %i.ik, align 8
  %i.rc = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %i.qy, ptr noundef %i.qv, ptr %i.qz, i64 %i.rb, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.rd = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !125
  %i.rf = and i16 %i.re, 4092
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 2 ; 2 uses
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !125
  %i.ri = and i16 %i.rh, -4093
  %i.rj = or disjoint i16 %i.ri, %i.rf
  store i16 %i.rj, ptr %i.rg, align 2, !tbaa !125
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull %i.rc) #15
  %i.rk = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.il) #15 ; 0 uses
  %i.rl = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.ih
  br i1 %i.rm, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl25replaceResourceHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i.i
  call void @free(ptr noundef %i.rl) #15
  br label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl25replaceResourceHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i, %_ZN4llvm8CallBase7arg_endEv.exit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4llvm8CallBase7arg_endEv.exit.i ], [ 2, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i ] ; 2 uses
  %i.rn = phi i64 [ %i.th, %_ZN4llvm8CallBase7arg_endEv.exit.i ], [ %i.qm, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit17.i.i ]
  %i.ro = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.rn
  %i.rp = getelementptr inbounds nuw [32 x i8], ptr %i.ro, i64 %indvars.iv.i.i
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !51 ; 2 uses
  %i.rr = load i32, ptr %i.ii, align 8, !tbaa !59 ; 2 uses
  %i.rs = load i32, ptr %i.ij, align 4, !tbaa !11
  %.not.i19.i.i = icmp ult i32 %i.rr, %i.rs
  br i1 %.not.i19.i.i, label %bb.ax, label %bb.aw, !prof !60

bb.aw:                                            ; preds = %.lr.ph.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.rq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i
  %i.rt = zext i32 %i.rr to i64
  %i.ru = load ptr, ptr %6, align 8, !tbaa !8
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rt
  store ptr %i.rq, ptr %i.rv, align 1
  %i.rw = load i32, ptr %i.ii, align 8, !tbaa !59
  %i.rx = add i32 %i.rw, 1
  store i32 %i.rx, ptr %i.ii, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i: ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ry = load i8, ptr %i.il, align 8, !tbaa !46
  switch i8 %i.ry, label %bb.ba [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i
    i8 36, label %bb.ay
    i8 42, label %bb.az
  ]

bb.ay:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i

bb.az:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i
  %i.rz = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il) #15
  %i.sa = zext i32 %i.rz to i64
  %i.sb = shl nuw nsw i64 %i.sa, 5
  %i.sc = sub nuw nsw i64 -32, %i.sb
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i.i:  ; preds = %bb.az, %bb.ay, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i
  %.0.i.i.i34.neg.i = phi i64 [ %i.sc, %bb.az ], [ -96, %bb.ay ], [ -32, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i.i ]
  %i.sd = load i32, ptr %i.io, align 4            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl11runOnModuleERN4llvm6ModuleE:bb.a
  %i.sm = ptrtoint ptr %i.sl to i64
  %.pre46.pre.i = load i32, ptr %i.io, align 4
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i.i

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i.i: ; preds = %bb.bb, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i.i, %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i
  %.pre46.i = phi i32 [ %.pre46.pre.i, %bb.bb ], [ %.pr.i.i.i.i.i, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i.i ], [ %i.sd, %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i ] ; 2 uses
  %.0.i.i3.i.i.i.i.i = phi ptr [ %i.sg, %bb.bb ], [ %i.sg, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i.i ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i ]
  %.0.i.i1.i.i.i.i.i = phi i64 [ %i.sm, %bb.bb ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i.i ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i.i ]
  %i.sn = ptrtoint ptr %.0.i.i3.i.i.i.i.i to i64
  %i.so = sub i64 %.0.i.i1.i.i.i.i.i, %i.sn
  %i.sp = and i64 %i.so, 68719476720
  %.not.i.i35.i = icmp eq i64 %i.sp, 0
  br i1 %.not.i.i35.i, label %_ZN4llvm8CallBase7arg_endEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i.i
  %i.sq = icmp slt i32 %.pre46.i, 0
  call void @llvm.assume(i1 %i.sq)
  %i.sr = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il) #15
  %i.ss = extractvalue { ptr, i64 } %i.sr, 0
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load i32, ptr %i.st, align 8, !tbaa !126
  %i.sv = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.il) #15 ; 2 uses
  %i.sw = extractvalue { ptr, i64 } %i.sv, 0
  %i.sx = extractvalue { ptr, i64 } %i.sv, 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 -4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !129
  %i.tb = sub i32 %i.ta, %i.su
  %i.tc = zext i32 %i.tb to i64
  %.neg.i = mul nsw i64 %i.tc, -32
  %.pre.i = load i32, ptr %i.io, align 4
  br label %_ZN4llvm8CallBase7arg_endEv.exit.i

_ZN4llvm8CallBase7arg_endEv.exit.i:               ; preds = %bb.bc, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i.i
  %i.td = phi i32 [ %.pre.i, %bb.bc ], [ %.pre46.i, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i.i ]
  %.0.i.i.neg.i = phi i64 [ %.neg.i, %bb.bc ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i.i ]
  %i.te = add nsw i64 %.0.i.i.neg.i, %.0.i.i.i34.neg.i
  %i.tf = and i32 %i.td, 268435455
  %i.tg = zext nneg i32 %i.tf to i64              ; 2 uses
  %i.th = sub nsw i64 0, %i.tg
  %i.ti = lshr i64 %i.te, 5
  %i.tj = add nuw nsw i64 %i.ti, %i.tg
  %i.tk = and i64 %i.tj, 4294967295
  %i.tl = icmp samesign ult i64 %indvars.iv.next.i.i, %i.tk
  br i1 %i.tl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !130

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl25replaceResourceHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i: ; preds = %bb.av, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hv) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hu) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.tm = load ptr, ptr %i.os, align 8, !tbaa !81
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !82, !nonnull !87, !align !88
  store ptr null, ptr %2, align 8, !tbaa !89
  store ptr %i.tn, ptr %i.he, align 8, !tbaa !92
  store ptr %i.hc, ptr %i.hf, align 8, !tbaa !93
  store ptr %i.hd, ptr %i.hg, align 8, !tbaa !95
  store ptr null, ptr %i.hh, align 8, !tbaa !97
  store i32 0, ptr %i.hi, align 8, !tbaa !108
  store i8 0, ptr %i.hj, align 4, !tbaa !109
  store i8 2, ptr %i.hk, align 1, !tbaa !110
  store i8 7, ptr %i.hl, align 2, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.hc, align 8, !tbaa !112
  %i.to = load ptr, ptr %i.ou, align 8, !tbaa !114
  store ptr %i.to, ptr %i.hn, align 8, !tbaa !116
  store ptr %i.ot, ptr %i.ho, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i30.i, align 8
  %i.tp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.il) #15
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !117
  store i64 %i.tq, ptr %2, align 8, !tbaa !117
  %i.tr = load i32, ptr %i.io, align 4
  %i.ts = and i32 %i.tr, 268435455
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = sub nsw i64 0, %i.tt
  %i.tv = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.tu ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 64
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !51 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 24 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !56
  %i.ub = icmp ult i32 %i.ua, 65
  %i.uc = load ptr, ptr %i.ty, align 8
  %spec.select.i.i.i31.i = select i1 %i.ub, ptr %i.ty, ptr %i.uc
  %.0.i.i.i32.i = load i64, ptr %spec.select.i.i.i31.i, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.hp, ptr %3, align 8, !tbaa !8
  store i32 8, ptr %i.hr, align 4, !tbaa !11
  %i.ud = load ptr, ptr %i.tv, align 8, !tbaa !51
  store ptr %i.ud, ptr %i.hp, align 8
  store i32 1, ptr %i.hq, align 8, !tbaa !59
  %i.ue = load ptr, ptr %i.he, align 8, !tbaa !118, !nonnull !87, !align !88
  %i.uf = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ue) #15
  %i.ug = zext i32 %.021.i to i64
  %i.uh = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.uf, i64 noundef %i.ug, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  %i.ui = load i32, ptr %i.hq, align 8, !tbaa !59 ; 2 uses
  %i.uj = load i32, ptr %i.hr, align 4, !tbaa !11
  %.not.i13.i.i = icmp ult i32 %i.ui, %i.uj
  br i1 %.not.i13.i.i, label %bb.bf, label %bb.be, !prof !60

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.uh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit14.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.uk = zext i32 %i.ui to i64
  %i.ul = load ptr, ptr %3, align 8, !tbaa !8
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %i.uk
  store ptr %i.uh, ptr %i.um, align 1
  %i.un = load i32, ptr %i.hq, align 8, !tbaa !59
  %i.uo = add i32 %i.un, 1
  store i32 %i.uo, ptr %i.hq, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit14.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit14.i.i: ; preds = %bb.bf, %bb.be
  %i.up = load ptr, ptr %i.he, align 8, !tbaa !118, !nonnull !87, !align !88
  %i.uq = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.up) #15
  %i.ur = and i64 %.0.i.i.i32.i, 4294967295
  %i.us = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.uq, i64 noundef %i.ur, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  %i.ut = load i32, ptr %i.hq, align 8, !tbaa !59 ; 2 uses
  %i.uu = load i32, ptr %i.hr, align 4, !tbaa !11
  %.not.i15.i.i = icmp ult i32 %i.ut, %i.uu
  br i1 %.not.i15.i.i, label %bb.bh, label %bb.bg, !prof !60

bb.bg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit14.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.us)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit16.i.i

bb.bh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit14.i.i
  %i.uv = zext i32 %i.ut to i64
  %i.uw = load ptr, ptr %3, align 8, !tbaa !8
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uv
  store ptr %i.us, ptr %i.ux, align 1
  %i.uy = load i32, ptr %i.hq, align 8, !tbaa !59
  %i.uz = add i32 %i.uy, 1
  store i32 %i.uz, ptr %i.hq, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit16.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit16.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.va = load ptr, ptr %i.os, align 8, !tbaa !81
  store ptr %i.va, ptr %i.a, align 16, !tbaa !119
  %i.vb = load i32, ptr %i.io, align 4
  %i.vc = and i32 %i.vb, 268435455
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = sub nsw i64 0, %i.vd
  %i.vf = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !51
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !81
  store ptr %i.vi, ptr %i.hs, align 8, !tbaa !119
  %i.vj = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(1288) %1, i32 noundef 13271, ptr nonnull %i.a, i64 2) #15 ; 3 uses
  %.not.i17.i.i = icmp eq ptr %i.vj, null
  br i1 %.not.i17.i.i, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i33.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit16.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !120
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i33.i

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i33.i: ; preds = %bb.bi, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit16.i.i
  %i.vm = phi ptr [ %i.vl, %bb.bi ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit16.i.i ]
  %i.vn = load ptr, ptr %3, align 8, !tbaa !8
  %i.vo = load i32, ptr %i.hq, align 8, !tbaa !59
  %i.vp = zext i32 %i.vo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i16 257, ptr %i.ht, align 8
  %i.vq = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.vm, ptr noundef %i.vj, ptr %i.vn, i64 %i.vp, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.vr = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !125
  %i.vt = and i16 %i.vs, 4092
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 2 ; 2 uses
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !125
  %i.vw = and i16 %i.vv, -4093
  %i.vx = or disjoint i16 %i.vw, %i.vt
  store i16 %i.vx, ptr %i.vu, align 2, !tbaa !125
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull %i.vq) #15
  %i.vy = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.il) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.vz = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.hp
  br i1 %i.wa, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl24replaceCounterHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i33.i
  call void @free(ptr noundef %i.vz) #15
  br label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl24replaceCounterHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl24replaceCounterHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i: ; preds = %bb.bj, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hd) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl24replaceCounterHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl25replaceResourceHandleCallERN4llvm6ModuleEPNS1_8CallInstEj.exit.i
  %i.wb = getelementptr inbounds nuw i8, ptr %.02341.i, i64 8 ; 2 uses
  %.not.i16 = icmp eq ptr %i.wb, %i.gz
  br i1 %.not.i16, label %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl27replaceImplicitBindingCallsERN4llvm6ModuleE.exit, label %bb.v

_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl27replaceImplicitBindingCallsERN4llvm6ModuleE.exit: ; preds = %bb.bk, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit.thread, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit
  %.not.i64 = phi i1 [ false, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit.thread ], [ false, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl18collectBindingInfoERN4llvm6ModuleE.exit ], [ true, %_ZN12_GLOBAL__N_132SPIRVLegalizeImplicitBindingImpl30verifyUniqueOrderIdPerResourceERN4llvm15SmallVectorImplIPNS1_8CallInstEEE.exit ], [ true, %bb.bk ]
  ret i1 %.not.i64
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm48initializeSPIRVLegalizeImplicitBindingLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.163, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr @_ZL52initializeSPIRVLegalizeImplicitBindingLegacyPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !131
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !28
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL52InitializeSPIRVLegalizeImplicitBindingLegacyPassFlag, ptr noundef nonnull @__once_proxy) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #17
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !28
  store ptr null, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL52initializeSPIRVLegalizeImplicitBindingLegacyPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 9 uses
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !133
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 33, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !133
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 31, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_134SPIRVLegalizeImplicitBindingLegacy2IDE, ptr %i.c, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_134SPIRVLegalizeImplicitBindingLegacyEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !140
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm38createSPIRVLegalizeImplicitBindingPassEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_134SPIRVLegalizeImplicitBindingLegacy2IDE, ptr %i.c, align 8, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 4, ptr %i.d, align 8, !tbaa !146
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_134SPIRVLegalizeImplicitBindingLegacyE, i64 16), ptr %i.a, align 8, !tbaa !112
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120BindingInfoCollector10addBindingEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !87, !align !88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72                  ; 4 uses
  %i.i = zext i32 %1 to i64                       ; 4 uses
  %.not = icmp ugt i64 %i.h, %i.i
  br i1 %.not, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %1, 1
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = icmp samesign ult i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.k, %i.h
  tail call void @_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.m)
  br label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i64 %i.h, %i.k
  br i1 %i.n, label %bb.e, label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.k ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @free(ptr noundef %i.p) #15
  br label %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm9BitVectorEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPN4llvm9BitVectorEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN4llvm9BitVectorEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.b, align 8, !tbaa !32
  br label %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN4llvm9BitVectorEEvT_S3_.exit.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !87, !align !88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %i.i ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69
  %i.y = and i32 %i.x, 63                         ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i11, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i, label %bb.g

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i: ; preds = %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !59 ; 2 uses
  %.pre6.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm9BitVectorESaIS1_EE6resizeEm.exit
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %i.aa, -1
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = and i64 %i.ai, %i.ab
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !76
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.g, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre6.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.ak = phi i32 [ %.pre.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.ae, %bb.g ]
  store i32 64, ptr %i.w, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  switch i32 %i.ak, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.thread37 [
    i32 1, label %_ZN4llvm9BitVector6resizeEjb.exit
    i32 0, label %bb.h
  ]

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.thread37: ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  store i32 1, ptr %i.al, align 8, !tbaa !59
  br label %_ZN4llvm9BitVector6resizeEjb.exit

bb.h:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.am = sub nuw nsw i64 1, %.pre-phi.i          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %.not.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !78

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.v, ptr noundef nonnull %i.ap, i64 noundef 1, i64 noundef 8) #15
  %.pre.i.i.i = load i32, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.w, align 8, !tbaa !69
end_hunk_1
