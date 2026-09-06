Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffoutput?download=true
inline.NumInlined: 3241
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %i.du = mul i32 %i.dt, %i.ak                    ; 2 uses
  %i.dv = mul i32 %i.du, %i.ds
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = mul i32 %.03932059, %i.ak
  %i.ea = mul i32 %i.dz, %i.dt
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ed = zext i32 %i.du to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01458.0, ptr nonnull align 1 %i.dy, i64 %i.ed, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %i.ec, i64 %i.ed, i1 false)
  %i.ee = load i32, ptr %i.al, align 4, !tbaa !115
  %i.ef = mul i32 %i.ee, %i.ak
  %i.eg = zext i32 %i.ef to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %.sroa.01458.0, i64 %i.eg, i1 false)
  %i.eh = add nuw nsw i32 %.03932059, 1           ; 2 uses
  %i.ei = load i32, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.ej = sdiv i32 %i.ei, 2
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph, label %.preheader1763, !llvm.loop !307

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge2179
  %i.el = phi i32 [ %i.ay, %.preheader.lr.ph ], [ %i.ayb, %._crit_edge2179 ]
  %i.em = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.ayc, %._crit_edge2179 ] ; 3 uses
  %.03602181 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ayd, %._crit_edge2179 ] ; 2 uses
  %i.en = add i32 %i.em, 63
  %.not2188 = icmp ult i32 %i.en, 64
  br i1 %.not2188, label %._crit_edge2179, label %.lr.ph2178

.lr.ph2178:                                       ; preds = %.preheader
  %i.eo = shl nuw i32 %.03602181, 6               ; 15 uses
  %i.ep = add nuw i32 %i.eo, 64
  %i.eq = trunc i32 %i.eo to i16
  %i.er = call i16 @llvm.bswap.i16(i16 %i.eq)     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph2178, %bb.hg
  %indvar = phi i64 [ 0, %.lr.ph2178 ], [ %indvar.next, %bb.hg ] ; 11 uses
  %i.es = phi i32 [ %i.em, %.lr.ph2178 ], [ %i.axx, %bb.hg ]
  %.03472177 = phi i32 [ 0, %.lr.ph2178 ], [ %i.axw, %bb.hg ] ; 2 uses
  %i.et = shl nuw nsw i64 %indvar, 6              ; 2 uses
  %indvar.tr = trunc i64 %indvar to i32
  %i.eu = shl i32 %indvar.tr, 6
  %i.ev = shl nuw nsw i64 %indvar, 6              ; 2 uses
  %indvar.tr3108 = trunc i64 %indvar to i32
  %i.ew = shl i32 %indvar.tr3108, 6
  %i.ex = shl nuw i32 %.03472177, 6               ; 26 uses
  %i.ey = add nuw i32 %i.ex, 64
  %.sroa.speculated1452 = call i32 @llvm.umin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = add i32 %.sroa.speculated1452, -1       ; 21 uses
  %i.fa = load i32, ptr %i.au, align 8, !tbaa !104
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.fa, i32 %i.ep) ; 2 uses
  %i.fb = add i32 %.sroa.speculated, -1           ; 14 uses
  %i.fc = sub i32 %i.ez, %i.ex
  %i.fd = add i32 %i.fc, 1                        ; 2 uses
  %i.fe = sub i32 %.sroa.speculated, %i.eo        ; 2 uses
  %i.ff = load i8, ptr %i.aa, align 1, !tbaa !106
  %.not472 = icmp eq i8 %i.ff, 0
  br i1 %.not472, label %bb.fa, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29, !noalias !384
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull align 1 dereferenceable(5) @.str.25, i64 4, i64 0, ptr nonnull %28)
          to label %.noexc552 unwind label %bb.i

.noexc552:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29, !noalias !384
  %i.fg = load ptr, ptr %29, align 8, !tbaa !56
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !54
  %i.fi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.fg, i64 noundef %i.fh, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc552
  %i.fj = load ptr, ptr %29, align 8, !tbaa !56   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bb
  br i1 %i.fk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.fl = load i64, ptr %i.bb, align 8, !tbaa !55
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc552
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %29, align 8, !tbaa !56   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bb
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.fq = load i64, ptr %i.bb, align 8, !tbaa !55
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %i.fi, label %bb.j, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.i:                                             ; preds = %bb.fb, %bb.f
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ft = mul i32 %i.fe, %i.fd                    ; 8 uses
  %i.fu = zext i32 %i.ft to i64                   ; 6 uses
  %i.fv = load i8, ptr %i.w, align 8, !tbaa !108
  %i.fw = lshr i8 %i.fv, 3
  %i.fx = zext nneg i8 %i.fw to i32
  %i.fy = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul i32 %i.ft, %i.fz
  %i.gb = mul i32 %i.ga, %i.fx                    ; 17 uses
  %i.gc = and i32 %i.gb, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.gc, 0
  %i.gd = sub nuw nsw i32 4, %i.gc
  %i.ge = select i1 %.not.i, i32 0, i32 %i.gd
  %.0.i = add i32 %i.gb, 8
  %i.gf = add i32 %.0.i, %i.ge                    ; 9 uses
  %i.gg = load i32, ptr %i.bc, align 4, !tbaa !105
  %i.gh = icmp eq i32 %i.gg, 1                    ; 2 uses
  %i.gi = zext i32 %i.gb to i64                   ; 3 uses
  %.not.i.i.i.i553 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i.i553, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #31
          to label %.noexc556 unwind label %bb.q  ; 5 uses

.noexc556:                                        ; preds = %bb.k
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi  ; 3 uses
  store i8 0, ptr %i.gj, align 1, !tbaa !55
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  %i.gm = add nsw i64 %i.gi, -1                   ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557, label %bb.l

bb.l:                                             ; preds = %.noexc556
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557:            ; preds = %bb.l, %.noexc556, %bb.j
  %.sroa.63.16 = phi ptr [ %i.gk, %bb.l ], [ %i.gk, %.noexc556 ], [ null, %bb.j ] ; 29 uses
  %.sroa.01397.16 = phi ptr [ %i.gj, %bb.l ], [ %i.gj, %.noexc556 ], [ null, %bb.j ] ; 39 uses
  %.0.i.i.i.i.i554 = phi ptr [ %i.gk, %bb.l ], [ %i.gl, %.noexc556 ], [ null, %bb.j ] ; 18 uses
  %i.go = load i8, ptr %i.bd, align 8, !tbaa !94  ; 2 uses
  %i.gp = icmp eq i8 %i.go, 2
  %i.gq = load i8, ptr %i.be, align 1
  %i.gr = icmp eq i8 %i.gq, 1                     ; 2 uses
  %or.cond.i = select i1 %i.gp, i1 %i.gr, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557
  %i.gs = load i32, ptr %i.bf, align 4, !tbaa !95
  %.not.i558 = icmp eq i32 %i.gs, 0
  br i1 %.not.i558, label %bb.m, label %.thread1527

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  br i1 %i.gh, label %bb.n, label %.thread1497

bb.n:                                             ; preds = %bb.m
  %i.gt = shl i32 %i.gb, 1                        ; 2 uses
  %i.gu = zext i32 %i.gt to i64                   ; 3 uses
  %.not.i.i.i.i559 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i.i559, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #31
          to label %.noexc562 unwind label %bb.r  ; 4 uses

.noexc562:                                        ; preds = %bb.o
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  store i8 0, ptr %i.gv, align 1, !tbaa !55
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gy = add nsw i64 %i.gu, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, i8 0, i64 %i.gy, i1 false)
  %i.gz = ptrtoint ptr %i.gw to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563:            ; preds = %.noexc562, %bb.n
  %.sroa.121394.0 = phi i64 [ %i.gz, %.noexc562 ], [ 0, %bb.n ]
  %.sroa.01389.0 = phi ptr [ %i.gv, %.noexc562 ], [ null, %bb.n ] ; 7 uses
  %i.ha = ptrtoint ptr %.sroa.01389.0 to i64
  %i.hb = sub i64 %.sroa.121394.0, %i.ha          ; 4 uses
  %i.hc = load i8, ptr %i.aa, align 1, !tbaa !106 ; 2 uses
  %.not.i.i.i.i564 = icmp eq i32 %i.ft, 0
  %i.hd = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  %.not4982100 = icmp ugt i32 %i.eo, %i.fb
  %.not5002092 = icmp ugt i32 %i.ex, %i.ez
  %i.hf = sext i32 %i.ft to i64
  %i.hg = icmp sgt i32 %i.ft, 0
  %i.hh = icmp eq i8 %i.hc, 0
  br i1 %i.hh, label %._crit_edge3044, label %.lr.ph3043

.lr.ph3043:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563
  %30 = zext i8 %i.hc to i64
  %i.hi = zext i32 %i.ez to i64
  %i.hj = shl i64 %indvar, 6
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = zext i32 %i.ez to i64
  %i.hm = shl i64 %indvar, 6
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = zext i32 %i.ez to i64
  %i.hp = shl i64 %indvar, 6
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = xor i32 %i.ew, -2
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.hs = icmp slt i64 %indvars.iv.next24353041.in, 2
  br i1 %i.hs, label %._crit_edge3044, label %bb.t, !llvm.loop !310

bb.q:                                             ; preds = %bb.k
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.o
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit580

bb.t:                                             ; preds = %.lr.ph3043, %bb.p
  %indvars.iv.next24353041.in = phi i64 [ %30, %.lr.ph3043 ], [ %indvars.iv.next24353041, %bb.p ] ; 2 uses
  %.03223040 = phi i32 [ 0, %.lr.ph3043 ], [ %.1323, %bb.p ] ; 3 uses
  %indvars.iv.next24353041 = add nsw i64 %indvars.iv.next24353041.in, -1 ; 4 uses
  br i1 %.not.i.i.i.i564, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit568, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #31
          to label %.noexc567 unwind label %bb.w  ; 5 uses

.noexc567:                                        ; preds = %bb.u
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.fu  ; 3 uses
  store i8 0, ptr %i.hw, align 1, !tbaa !55
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  br i1 %i.he, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit568, label %bb.v

bb.v:                                             ; preds = %.noexc567
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hy, i8 0, i64 %i.hd, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit568

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit568:            ; preds = %bb.v, %.noexc567, %bb.t
  %.sroa.01380.0 = phi ptr [ %i.hw, %bb.v ], [ %i.hw, %.noexc567 ], [ null, %bb.t ] ; 12 uses
  %.sroa.111384.0 = phi ptr [ %i.hx, %bb.v ], [ %i.hx, %.noexc567 ], [ null, %bb.t ] ; 2 uses
  %.0.i.i.i.i.i565 = phi ptr [ %i.hx, %bb.v ], [ %i.hy, %.noexc567 ], [ null, %bb.t ]
  %i.hz = ptrtoint ptr %.0.i.i.i.i.i565 to i64
  %i.ia = ptrtoint ptr %.sroa.01380.0 to i64      ; 4 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  br i1 %.not4982100, label %._crit_edge2105, label %.lr.ph2104

.lr.ph2104:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit568
  %i.ic = load ptr, ptr %i.s, align 8, !tbaa !58  ; 3 uses
  %i.id = load i32, ptr %i.al, align 4, !tbaa !111
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %i.if = load i8, ptr %i.w, align 8, !tbaa !108
  %i.ig = lshr i8 %i.if, 3
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.ij = zext i8 %i.ii to i64
  %i.ik = mul nuw nsw i64 %i.ih, %i.ij
  %i.il = load i8, ptr %i.ae, align 8, !tbaa !110
  %.not.i.i.i = icmp eq i8 %i.il, 0
  %i.im = load i8, ptr %i.ag, align 1
  %i.in = lshr i8 %i.im, 3
  %narrow.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.in
  %i.io = zext nneg i8 %narrow.i.i.i to i64
  %i.ip = add nuw nsw i64 %i.ik, %i.io            ; 20 uses
  %factor.op.mul2107 = mul nuw nsw i64 %i.ip, %i.ie
  %invariant.gep2109 = getelementptr i8, ptr %i.ic, i64 %indvars.iv.next24353041
  br i1 %.not5002092, label %._crit_edge2105, label %.lr.ph2096.preheader

.lr.ph2096.preheader:                             ; preds = %.lr.ph2104
  %scevgep3058 = getelementptr i8, ptr %.sroa.01380.0, i64 1
  %scevgep3061 = getelementptr i8, ptr %i.ic, i64 %indvars.iv.next24353041
  %scevgep3063 = getelementptr i8, ptr %i.ic, i64 %indvars.iv.next24353041
  br label %.lr.ph2096

bb.w:                                             ; preds = %bb.u
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit580

.lr.ph2096:                                       ; preds = %.lr.ph2096.preheader, %._crit_edge2097
  %.03172102 = phi i64 [ %i.ou, %._crit_edge2097 ], [ 0, %.lr.ph2096.preheader ] ; 12 uses
  %storemerge4972101 = phi i32 [ %i.ox, %._crit_edge2097 ], [ %i.eo, %.lr.ph2096.preheader ] ; 4 uses
  %i.ir = zext i32 %storemerge4972101 to i64
  %i.is = mul nuw i64 %i.ie, %i.ir                ; 2 uses
  %i.it = add i64 %i.ev, %i.is
  %i.iu = mul i64 %i.ip, %i.it
  %scevgep3064 = getelementptr i8, ptr %scevgep3063, i64 %i.iu ; 4 uses
  %i.iv = zext i32 %storemerge4972101 to i64
  %.reass2108 = mul i64 %factor.op.mul2107, %i.iv
  %gep2110 = getelementptr i8, ptr %invariant.gep2109, i64 %.reass2108 ; 17 uses
  %umax2432 = call i64 @llvm.umax.i64(i64 %.03172102, i64 %i.ib) ; 4 uses
  %exitcond2433.not3030.not = icmp ult i64 %.03172102, %i.ib
  br i1 %exitcond2433.not3030.not, label %.lr.ph3033, label %.lr.ph2096._crit_edge

.lr.ph3033:                                       ; preds = %.lr.ph2096
  %i.iw = xor i64 %.03172102, -1
  %i.ix = add i64 %umax2432, %i.iw
  %i.iy = freeze i64 %i.ix
  %i.iz = call i64 @llvm.umin.i64(i64 %i.iy, i64 %i.hq)
  %i.ja = add i64 %i.iz, 1                        ; 3 uses
  %min.iters.check3072 = icmp ult i64 %i.ja, 33
  br i1 %min.iters.check3072, label %scalar.ph3071.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3033
  %i.jb = xor i64 %.03172102, -1
  %i.jc = add i64 %umax2432, %i.jb
  %i.jd = freeze i64 %i.jc
  %umin3055 = call i64 @llvm.umin.i64(i64 %i.jd, i64 %i.hk) ; 2 uses
  %i.je = trunc i64 %umin3055 to i32
  %i.jf = icmp ult i32 %i.hr, %i.je
  %i.jg = icmp ugt i64 %umin3055, 4294967295
  %i.jh = or i1 %i.jf, %i.jg
  br i1 %i.jh, label %scalar.ph3071.preheader, label %vector.memcheck3056

vector.memcheck3056:                              ; preds = %vector.scevcheck
  %scevgep3057 = getelementptr i8, ptr %.sroa.01380.0, i64 %.03172102
  %i.ji = xor i64 %.03172102, -1
  %i.jj = add i64 %umax2432, %i.ji
  %i.jk = freeze i64 %i.jj
  %umin3059 = call i64 @llvm.umin.i64(i64 %i.jk, i64 %i.hn) ; 2 uses
  %i.jl = getelementptr i8, ptr %scevgep3058, i64 %.03172102
  %scevgep3060 = getelementptr i8, ptr %i.jl, i64 %umin3059
  %i.jm = add i64 %i.ev, %umin3059
  %i.jn = add i64 %i.jm, %i.is
  %i.jo = mul i64 %i.ip, %i.jn
  %scevgep3062 = getelementptr i8, ptr %scevgep3061, i64 %i.jo ; 4 uses
  %31 = icmp ult ptr %scevgep3062, %scevgep3064
  %umin3065 = select i1 %31, ptr %scevgep3062, ptr %scevgep3064
  %32 = icmp ugt ptr %scevgep3062, %scevgep3064
  %umax3066 = select i1 %32, ptr %scevgep3062, ptr %scevgep3064
  %scevgep3067 = getelementptr i8, ptr %umax3066, i64 1
  %bound03068 = icmp ult ptr %scevgep3057, %scevgep3067
  %bound13069 = icmp ult ptr %umin3065, %scevgep3060
  %found.conflict3070 = and i1 %bound03068, %bound13069
  br i1 %found.conflict3070, label %scalar.ph3071.preheader, label %vector.ph3073

vector.ph3073:                                    ; preds = %vector.memcheck3056
  %i.jp = and i64 %i.ja, 15                       ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  %i.jr = select i1 %i.jq, i64 16, i64 %i.jp
  %n.vec3074 = sub i64 %i.ja, %i.jr               ; 3 uses
  %i.js = trunc i64 %n.vec3074 to i32
  %i.jt = add i32 %i.ex, %i.js
  %i.ju = add i64 %.03172102, %n.vec3074
  %i.jv = getelementptr i8, ptr %.sroa.01380.0, i64 %.03172102
  br label %vector.body3075

vector.body3075:                                  ; preds = %vector.body3075, %vector.ph3073
  %index3076 = phi i64 [ 0, %vector.ph3073 ], [ %index.next3077, %vector.body3075 ] ; 3 uses
  %i.jw = trunc i64 %index3076 to i32
  %i.jx = add i32 %i.ex, %i.jw                    ; 16 uses
  %i.jy = or disjoint i32 %i.jx, 1
  %i.jz = or disjoint i32 %i.jx, 2
  %i.ka = or disjoint i32 %i.jx, 3
  %i.kb = or disjoint i32 %i.jx, 4
  %i.kc = or disjoint i32 %i.jx, 5
  %i.kd = or disjoint i32 %i.jx, 6
  %i.ke = or disjoint i32 %i.jx, 7
  %i.kf = or disjoint i32 %i.jx, 8
  %i.kg = or disjoint i32 %i.jx, 9
  %i.kh = or disjoint i32 %i.jx, 10
  %i.ki = or disjoint i32 %i.jx, 11
  %i.kj = or disjoint i32 %i.jx, 12
  %i.kk = or disjoint i32 %i.jx, 13
  %i.kl = or disjoint i32 %i.jx, 14
  %i.km = or disjoint i32 %i.jx, 15
  %i.kn = zext i32 %i.jx to i64
  %i.ko = zext i32 %i.jy to i64
  %i.kp = zext i32 %i.jz to i64
  %i.kq = zext i32 %i.ka to i64
  %i.kr = zext i32 %i.kb to i64
  %i.ks = zext i32 %i.kc to i64
  %i.kt = zext i32 %i.kd to i64
  %i.ku = zext i32 %i.ke to i64
  %i.kv = zext i32 %i.kf to i64
  %i.kw = zext i32 %i.kg to i64
  %i.kx = zext i32 %i.kh to i64
  %i.ky = zext i32 %i.ki to i64
  %i.kz = zext i32 %i.kj to i64
  %i.la = zext i32 %i.kk to i64
  %i.lb = zext i32 %i.kl to i64
  %i.lc = zext i32 %i.km to i64
  %i.ld = mul nuw nsw i64 %i.ip, %i.kn
  %i.le = mul nuw nsw i64 %i.ip, %i.ko
  %i.lf = mul nuw nsw i64 %i.ip, %i.kp
  %i.lg = mul nuw nsw i64 %i.ip, %i.kq
  %i.lh = mul nuw nsw i64 %i.ip, %i.kr
  %i.li = mul nuw nsw i64 %i.ip, %i.ks
  %i.lj = mul nuw nsw i64 %i.ip, %i.kt
  %i.lk = mul nuw nsw i64 %i.ip, %i.ku
  %i.ll = mul nuw nsw i64 %i.ip, %i.kv
  %i.lm = mul nuw nsw i64 %i.ip, %i.kw
  %i.ln = mul nuw nsw i64 %i.ip, %i.kx
  %i.lo = mul nuw nsw i64 %i.ip, %i.ky
  %i.lp = mul nuw nsw i64 %i.ip, %i.kz
  %i.lq = mul nuw nsw i64 %i.ip, %i.la
  %i.lr = mul nuw nsw i64 %i.ip, %i.lb
  %i.ls = mul nuw nsw i64 %i.ip, %i.lc
  %i.lt = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.ld
  %i.lu = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.le
  %i.lv = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lf
  %i.lw = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lg
  %i.lx = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lh
  %i.ly = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.li
  %i.lz = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lj
  %i.ma = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lk
  %i.mb = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.ll
  %i.mc = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lm
  %i.md = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.ln
  %i.me = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lo
  %i.mf = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lp
  %i.mg = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lq
  %i.mh = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.lr
  %i.mi = getelementptr inbounds nuw i8, ptr %gep2110, i64 %i.ls
  %i.mj = load i8, ptr %i.lt, align 1, !tbaa !55, !alias.scope !385
  %i.mk = load i8, ptr %i.lu, align 1, !tbaa !55, !alias.scope !385
  %i.ml = load i8, ptr %i.lv, align 1, !tbaa !55, !alias.scope !385
  %i.mm = load i8, ptr %i.lw, align 1, !tbaa !55, !alias.scope !385
  %i.mn = load i8, ptr %i.lx, align 1, !tbaa !55, !alias.scope !385
  %i.mo = load i8, ptr %i.ly, align 1, !tbaa !55, !alias.scope !385
  %i.mp = load i8, ptr %i.lz, align 1, !tbaa !55, !alias.scope !385
  %i.mq = load i8, ptr %i.ma, align 1, !tbaa !55, !alias.scope !385
  %i.mr = load i8, ptr %i.mb, align 1, !tbaa !55, !alias.scope !385
  %i.ms = load i8, ptr %i.mc, align 1, !tbaa !55, !alias.scope !385
  %i.mt = load i8, ptr %i.md, align 1, !tbaa !55, !alias.scope !385
  %i.mu = load i8, ptr %i.me, align 1, !tbaa !55, !alias.scope !385
  %i.mv = load i8, ptr %i.mf, align 1, !tbaa !55, !alias.scope !385
  %i.mw = load i8, ptr %i.mg, align 1, !tbaa !55, !alias.scope !385
  %i.mx = load i8, ptr %i.mh, align 1, !tbaa !55, !alias.scope !385
  %i.my = load i8, ptr %i.mi, align 1, !tbaa !55, !alias.scope !385
  %i.mz = insertelement <16 x i8> poison, i8 %i.mj, i64 0
  %i.na = insertelement <16 x i8> %i.mz, i8 %i.mk, i64 1
  %i.nb = insertelement <16 x i8> %i.na, i8 %i.ml, i64 2
  %i.nc = insertelement <16 x i8> %i.nb, i8 %i.mm, i64 3
  %i.nd = insertelement <16 x i8> %i.nc, i8 %i.mn, i64 4
  %i.ne = insertelement <16 x i8> %i.nd, i8 %i.mo, i64 5
  %i.nf = insertelement <16 x i8> %i.ne, i8 %i.mp, i64 6
  %i.ng = insertelement <16 x i8> %i.nf, i8 %i.mq, i64 7
  %i.nh = insertelement <16 x i8> %i.ng, i8 %i.mr, i64 8
  %i.ni = insertelement <16 x i8> %i.nh, i8 %i.ms, i64 9
  %i.nj = insertelement <16 x i8> %i.ni, i8 %i.mt, i64 10
  %i.nk = insertelement <16 x i8> %i.nj, i8 %i.mu, i64 11
  %i.nl = insertelement <16 x i8> %i.nk, i8 %i.mv, i64 12
  %i.nm = insertelement <16 x i8> %i.nl, i8 %i.mw, i64 13
  %i.nn = insertelement <16 x i8> %i.nm, i8 %i.mx, i64 14
  %i.no = insertelement <16 x i8> %i.nn, i8 %i.my, i64 15
  %i.np = getelementptr i8, ptr %i.jv, i64 %index3076
  store <16 x i8> %i.no, ptr %i.np, align 1, !tbaa !55, !alias.scope !386, !noalias !385
  %index.next3077 = add nuw i64 %index3076, 16    ; 2 uses
  %i.nq = icmp eq i64 %index.next3077, %n.vec3074
  br i1 %i.nq, label %scalar.ph3071.preheader, label %vector.body3075, !llvm.loop !314

scalar.ph3071.preheader:                          ; preds = %vector.body3075, %vector.memcheck3056, %vector.scevcheck, %.lr.ph3033
  %storemerge49920933032.ph = phi i32 [ %i.ex, %vector.memcheck3056 ], [ %i.ex, %vector.scevcheck ], [ %i.ex, %.lr.ph3033 ], [ %i.jt, %vector.body3075 ]
  %.131820943031.ph = phi i64 [ %.03172102, %vector.memcheck3056 ], [ %.03172102, %vector.scevcheck ], [ %.03172102, %.lr.ph3033 ], [ %i.ju, %vector.body3075 ]
  br label %scalar.ph3071

bb.x:                                             ; preds = %scalar.ph3071
  %exitcond2433.not = icmp eq i64 %i.ou, %umax2432
  br i1 %exitcond2433.not, label %.lr.ph2096._crit_edge, label %scalar.ph3071, !llvm.loop !315

.lr.ph2096._crit_edge:                            ; preds = %.lr.ph2096, %bb.x
  %storemerge4992093.lcssa = phi i32 [ %i.ow, %bb.x ], [ %i.ex, %.lr.ph2096 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29, !noalias !387
  store i32 %storemerge4992093.lcssa, ptr %25, align 16, !tbaa !55, !alias.scope !388, !noalias !387
  store i32 %storemerge4972101, ptr %i.ce, align 16, !tbaa !55, !alias.scope !388, !noalias !387
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29, !noalias !389
  store i64 0, ptr %i.ch, align 8, !noalias !389
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.cg, align 8, !tbaa !121, !noalias !389
  store ptr %i.ci, ptr %10, align 8, !tbaa !122, !noalias !389
  store i64 500, ptr %i.cf, align 8, !tbaa !123, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !389
  store ptr @.str.26, ptr %5, align 8, !tbaa !124, !noalias !389
  store i64 44, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !125, !noalias !389
  store i32 0, ptr %i.cj, align 8, !tbaa !128, !noalias !389
  store ptr %10, ptr %i.ck, align 8, !tbaa !130, !noalias !389
  store i64 34, ptr %i.cl, align 8, !tbaa !132, !noalias !389
  store ptr %25, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !55, !noalias !389
  store ptr null, ptr %i.cm, align 8, !tbaa !133, !noalias !389
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.26, i64 44, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc1027 unwind label %.loopexit1741

.noexc1027:                                       ; preds = %.lr.ph2096._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !389
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.nr = load i64, ptr %i.ch, align 8, !tbaa !134, !noalias !391 ; 6 uses
  %i.ns = icmp ult i64 %i.nr, 4611686018427387903
  call void @llvm.assume(i1 %i.ns)
  %i.nt = load ptr, ptr %10, align 8, !tbaa !122, !noalias !391 ; 3 uses
  store ptr %i.cn, ptr %27, align 8, !tbaa !51, !alias.scope !391
  %i.nu = icmp eq ptr %i.nt, null
  %i.nv = icmp ne i64 %i.nr, 0
  %or.cond.i.i.i = and i1 %i.nv, %i.nu
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.y

.noexc.i.i:                                       ; preds = %.noexc1027
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.y:                                             ; preds = %.noexc1027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29, !noalias !391
  store i64 %i.nr, ptr %i.e, align 8, !tbaa !125, !noalias !391
  %i.nw = icmp samesign ugt i64 %i.nr, 15
  br i1 %i.nw, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.y
  %i.nx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc7.i unwind label %.loopexit1741 ; 2 uses

.noexc7.i:                                        ; preds = %.noexc.i.i.i
  store ptr %i.nx, ptr %27, align 8, !tbaa !56, !alias.scope !391
  %i.ny = load i64, ptr %i.e, align 8, !tbaa !125, !noalias !391
  store i64 %i.ny, ptr %i.cn, align 8, !tbaa !55, !alias.scope !391
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %bb.y
  %i.nz = phi ptr [ %i.nx, %.noexc7.i ], [ %i.cn, %bb.y ] ; 2 uses
  switch i64 %i.nr, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.oa = load i8, ptr %i.nt, align 1, !tbaa !55
  store i8 %i.oa, ptr %i.nz, align 1, !tbaa !55
  br label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.vu
  %i.vw = mul nuw nsw i64 %i.vi, %i.vl
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !55
  %i.vz = getelementptr inbounds nuw i8, ptr %.23272113, i64 1 ; 2 uses
  store i8 %i.vy, ptr %.23272113, align 1, !tbaa !55
  %.wide = icmp eq i64 %i.vi, 0
  br i1 %.wide, label %._crit_edge2117, label %bb.bo

._crit_edge2117:                                  ; preds = %bb.bz, %.lr.ph2123
  %.2327.lcssa = phi ptr [ %.13262121, %.lr.ph2123 ], [ %i.vz, %bb.bz ] ; 2 uses
  %i.wa = add i32 %storemerge5132120, 1           ; 2 uses
  %.not514 = icmp ugt i32 %i.wa, %i.ez
  br i1 %.not514, label %._crit_edge2124, label %.lr.ph2123, !llvm.loop !334

._crit_edge2124:                                  ; preds = %._crit_edge2117, %bb.bn
  %.1326.lcssa = phi ptr [ %.03252128, %bb.bn ], [ %.2327.lcssa, %._crit_edge2117 ]
  %i.wb = add i32 %storemerge5112127, 1           ; 2 uses
  %.not512 = icmp ugt i32 %i.wb, %i.fb
  br i1 %.not512, label %.thread1527, label %bb.bn, !llvm.loop !335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ey

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557
  %i.wc = icmp eq i8 %i.go, 4
  %or.cond.i610 = select i1 %i.wc, i1 %i.gr, i1 false
  br i1 %or.cond.i610, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612, label %.thread1527

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.wd = load i32, ptr %i.bf, align 4, !tbaa !95
  %.not.i611 = icmp eq i32 %i.wd, 0
  br i1 %.not.i611, label %bb.ca, label %.thread1527

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612
  br i1 %i.gh, label %bb.cb, label %.thread1594

bb.cb:                                            ; preds = %bb.ca
  %i.we = load i8, ptr %i.aa, align 1, !tbaa !106
  %.not474 = icmp eq i8 %i.we, 3
  br i1 %.not474, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.wf = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #31
          to label %.critedge550 unwind label %.body614.thread ; 3 uses

.body614.thread:                                  ; preds = %bb.cc
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

bb.cd:                                            ; preds = %bb.cb
  %i.wh = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %.critedge unwind label %.body614.thread1556 ; 3 uses

.body614.thread1556:                              ; preds = %bb.cd
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

.critedge:                                        ; preds = %bb.cd
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i64 433756242058674688, ptr %i.wh, align 1
  br label %.critedge546

.critedge550:                                     ; preds = %bb.cc
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.wf, ptr noundef nonnull align 1 dereferenceable(6) @__const._ZN11OpenImageIO4v3_19IffOutput5closeEv.rgb16, i64 6, i1 false)
  br label %.critedge546

.critedge546:                                     ; preds = %.critedge, %.critedge550
  %.sroa.15.01544 = phi ptr [ %i.wj, %.critedge ], [ %i.wk, %.critedge550 ] ; 2 uses
  %.sroa.01334.01533 = phi ptr [ %i.wh, %.critedge ], [ %i.wf, %.critedge550 ] ; 5 uses
  %i.wl = shl i32 %i.gb, 1                        ; 2 uses
  %i.wm = zext i32 %i.wl to i64                   ; 3 uses
  %.not.i.i.i.i625 = icmp eq i32 %i.wl, 0
  br i1 %.not.i.i.i.i625, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629, label %bb.ce

bb.ce:                                            ; preds = %.critedge546
  %i.wn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wm) #31
          to label %.noexc628 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit721.thread1582 ; 4 uses

.noexc628:                                        ; preds = %bb.ce
  %i.wo = getelementptr i8, ptr %i.wn, i64 %i.wm
  store i8 0, ptr %i.wn, align 1, !tbaa !55
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  %i.wq = add nsw i64 %i.wm, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wp, i8 0, i64 %i.wq, i1 false)
  %i.wr = ptrtoint ptr %i.wo to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629:            ; preds = %.noexc628, %.critedge546
  %.sroa.01326.0 = phi ptr [ %i.wn, %.noexc628 ], [ null, %.critedge546 ] ; 7 uses
  %.sroa.121330.0 = phi i64 [ %i.wr, %.noexc628 ], [ 0, %.critedge546 ]
  %i.ws = ptrtoint ptr %.sroa.01326.0 to i64
  %i.wt = sub i64 %.sroa.121330.0, %i.ws          ; 4 uses
  %i.wu = ptrtoint ptr %.sroa.15.01544 to i64
  %i.wv = ptrtoint ptr %.sroa.01334.01533 to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 5 uses
  %.not.i.i.i.i630 = icmp eq i32 %i.ft, 0
  %i.wx = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.wy = icmp eq i64 %i.wx, 0
  %.not4752064 = icmp ugt i32 %i.eo, %i.fb
  %.not4772060 = icmp ugt i32 %i.ex, %i.ez
  %i.wz = sext i32 %i.ft to i64
  %i.xa = icmp sgt i32 %i.ft, 0
  %i.xb = trunc i64 %i.ww to i32
  %i.xc = icmp slt i32 %i.xb, 1
  br i1 %i.xc, label %._crit_edge3027, label %.lr.ph3026

.lr.ph3026:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629
  %i.xd = and i64 %i.ww, 2147483647
  %i.xe = zext i32 %i.ez to i64
  %i.xf = shl i64 %indvar, 6
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = zext i32 %i.ez to i64
  %i.xi = shl i64 %indvar, 6
  %i.xj = sub i64 %i.xh, %i.xi
  %i.xk = zext i32 %i.ez to i64
  %i.xl = shl i64 %indvar, 6
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = xor i32 %i.eu, -2
  br label %bb.ch

bb.cf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit692
  %i.xo = trunc nuw i64 %i.xs to i32
  %i.xp = icmp slt i32 %i.xo, 1
  br i1 %i.xp, label %._crit_edge3027, label %bb.ch, !llvm.loop !336

_ZNSt6vectorIhSaIhEED2Ev.exit721.thread1582:      ; preds = %bb.ce
  %i.xq = landingpad { ptr, i32 }
          cleanup
  %.pre2461 = ptrtoint ptr %.sroa.15.01544 to i64
  %.pre2463 = ptrtoint ptr %.sroa.01334.01533 to i64
  %.pre2465 = sub i64 %.pre2461, %.pre2463
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit721

bb.cg:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i950
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit695

bb.ch:                                            ; preds = %.lr.ph3026, %bb.cf
  %.in = phi i64 [ %i.xd, %.lr.ph3026 ], [ %i.xs, %bb.cf ]
  %.03073025 = phi i32 [ 0, %.lr.ph3026 ], [ %.1308, %bb.cf ] ; 3 uses
  %i.xs = add nsw i64 %.in, -1                    ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.01334.01533, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !55
  br i1 %.not.i.i.i.i630, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #31
          to label %.noexc633 unwind label %bb.ck ; 5 uses

.noexc633:                                        ; preds = %bb.ci
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.fu  ; 3 uses
  store i8 0, ptr %i.xv, align 1, !tbaa !55
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 2 uses
  br i1 %i.wy, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634, label %bb.cj

bb.cj:                                            ; preds = %.noexc633
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.xx, i8 0, i64 %i.wx, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634:            ; preds = %bb.cj, %.noexc633, %bb.ch
  %.sroa.01319.0 = phi ptr [ %i.xv, %bb.cj ], [ %i.xv, %.noexc633 ], [ null, %bb.ch ] ; 12 uses
  %.sroa.111322.0 = phi ptr [ %i.xw, %bb.cj ], [ %i.xw, %.noexc633 ], [ null, %bb.ch ] ; 2 uses
  %.0.i.i.i.i.i631 = phi ptr [ %i.xw, %bb.cj ], [ %i.xx, %.noexc633 ], [ null, %bb.ch ]
  %i.xy = ptrtoint ptr %.0.i.i.i.i.i631 to i64
  %i.xz = ptrtoint ptr %.sroa.01319.0 to i64      ; 4 uses
  %i.ya = sub i64 %i.xy, %i.xz                    ; 3 uses
  br i1 %.not4752064, label %._crit_edge2069, label %.lr.ph2068

.lr.ph2068:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634
  %i.yb = load ptr, ptr %i.s, align 8, !tbaa !58  ; 3 uses
  %i.yc = load i32, ptr %i.al, align 4, !tbaa !111
  %i.yd = zext i32 %i.yc to i64                   ; 2 uses
  %i.ye = load i8, ptr %i.w, align 8, !tbaa !108
  %i.yf = lshr i8 %i.ye, 3
  %i.yg = zext nneg i8 %i.yf to i64
  %i.yh = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.yi = zext i8 %i.yh to i64
  %i.yj = mul nuw nsw i64 %i.yg, %i.yi
  %i.yk = load i8, ptr %i.ae, align 8, !tbaa !110
  %.not.i.i.i635 = icmp eq i8 %i.yk, 0
  %i.yl = load i8, ptr %i.ag, align 1
  %i.ym = lshr i8 %i.yl, 3
  %narrow.i.i.i636 = select i1 %.not.i.i.i635, i8 0, i8 %i.ym
  %i.yn = zext nneg i8 %narrow.i.i.i636 to i64
  %i.yo = add nuw nsw i64 %i.yj, %i.yn            ; 20 uses
  %factor.op.mul = mul nuw nsw i64 %i.yo, %i.yd
  %i.yp = zext i8 %i.xu to i64                    ; 3 uses
  %invariant.gep2071 = getelementptr i8, ptr %i.yb, i64 %i.yp
  br i1 %.not4772060, label %._crit_edge2069, label %.lr.ph2063.preheader

.lr.ph2063.preheader:                             ; preds = %.lr.ph2068
  %scevgep3085 = getelementptr i8, ptr %.sroa.01319.0, i64 1
  %scevgep3088.a = getelementptr i8, ptr %i.yb, i64 %i.yp
  %scevgep3090 = getelementptr i8, ptr %i.yb, i64 %i.yp
  br label %.lr.ph2063

bb.ck:                                            ; preds = %bb.ci
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit695

.lr.ph2063:                                       ; preds = %.lr.ph2063.preheader, %._crit_edge
  %.03022066 = phi i64 [ %i.aeu, %._crit_edge ], [ 0, %.lr.ph2063.preheader ] ; 12 uses
  %storemerge2065 = phi i32 [ %i.aex, %._crit_edge ], [ %i.eo, %.lr.ph2063.preheader ] ; 4 uses
  %i.yr = zext i32 %storemerge2065 to i64
  %i.ys = mul nuw i64 %i.yd, %i.yr                ; 2 uses
  %i.yt = add i64 %i.et, %i.ys
  %i.yu = mul i64 %i.yo, %i.yt
  %scevgep3091.a = getelementptr i8, ptr %scevgep3090, i64 %i.yu ; 4 uses
  %i.yv = zext i32 %storemerge2065 to i64
  %.reass = mul i64 %factor.op.mul, %i.yv
  %gep2072 = getelementptr i8, ptr %invariant.gep2071, i64 %.reass ; 17 uses
  %umax = call i64 @llvm.umax.i64(i64 %.03022066, i64 %i.ya) ; 4 uses
  %exitcond.not3017.not = icmp ult i64 %.03022066, %i.ya
  br i1 %exitcond.not3017.not, label %.lr.ph3020, label %.lr.ph2063._crit_edge

.lr.ph3020:                                       ; preds = %.lr.ph2063
  %i.yw = xor i64 %.03022066, -1
  %i.yx = add i64 %umax, %i.yw
  %i.yy = freeze i64 %i.yx
  %i.yz = call i64 @llvm.umin.i64(i64 %i.yy, i64 %i.xm)
  %i.za = add i64 %i.yz, 1                        ; 3 uses
  %min.iters.check3099 = icmp ult i64 %i.za, 33
  br i1 %min.iters.check3099, label %scalar.ph3098.preheader, label %vector.scevcheck3081

vector.scevcheck3081:                             ; preds = %.lr.ph3020
  %i.zb = xor i64 %.03022066, -1
  %i.zc = add i64 %umax, %i.zb
  %i.zd = freeze i64 %i.zc
  %umin3082 = call i64 @llvm.umin.i64(i64 %i.zd, i64 %i.xg) ; 2 uses
  %i.ze = trunc i64 %umin3082 to i32
  %i.zf = icmp ult i32 %i.xn, %i.ze
  %i.zg = icmp ugt i64 %umin3082, 4294967295
  %i.zh = or i1 %i.zf, %i.zg
  br i1 %i.zh, label %scalar.ph3098.preheader, label %vector.memcheck3083

vector.memcheck3083:                              ; preds = %vector.scevcheck3081
  %scevgep3084 = getelementptr i8, ptr %.sroa.01319.0, i64 %.03022066
  %i.zi = xor i64 %.03022066, -1
  %i.zj = add i64 %umax, %i.zi
  %i.zk = freeze i64 %i.zj
  %umin3086 = call i64 @llvm.umin.i64(i64 %i.zk, i64 %i.xj) ; 2 uses
  %i.zl = getelementptr i8, ptr %scevgep3085, i64 %.03022066
  %scevgep3087 = getelementptr i8, ptr %i.zl, i64 %umin3086
  %i.zm = add i64 %i.et, %umin3086
  %i.zn = add i64 %i.zm, %i.ys
  %i.zo = mul i64 %i.yo, %i.zn
  %scevgep3089 = getelementptr i8, ptr %scevgep3088.a, i64 %i.zo ; 4 uses
  %33 = icmp ult ptr %scevgep3089, %scevgep3091.a
  %umin3092 = select i1 %33, ptr %scevgep3089, ptr %scevgep3091.a
  %34 = icmp ugt ptr %scevgep3089, %scevgep3091.a
  %umax3093 = select i1 %34, ptr %scevgep3089, ptr %scevgep3091.a
  %scevgep3094 = getelementptr i8, ptr %umax3093, i64 1
  %bound03095 = icmp ult ptr %scevgep3084, %scevgep3094
  %bound13096 = icmp ult ptr %umin3092, %scevgep3087
  %found.conflict3097 = and i1 %bound03095, %bound13096
  br i1 %found.conflict3097, label %scalar.ph3098.preheader, label %vector.ph3100

vector.ph3100:                                    ; preds = %vector.memcheck3083
  %i.zp = and i64 %i.za, 15                       ; 2 uses
  %i.zq = icmp eq i64 %i.zp, 0
  %i.zr = select i1 %i.zq, i64 16, i64 %i.zp
  %n.vec3101 = sub i64 %i.za, %i.zr               ; 3 uses
  %i.zs = trunc i64 %n.vec3101 to i32
  %i.zt = add i32 %i.ex, %i.zs
  %i.zu = add i64 %.03022066, %n.vec3101
  %i.zv = getelementptr i8, ptr %.sroa.01319.0, i64 %.03022066
  br label %vector.body3102

vector.body3102:                                  ; preds = %vector.body3102, %vector.ph3100
  %index3103 = phi i64 [ 0, %vector.ph3100 ], [ %index.next3104, %vector.body3102 ] ; 3 uses
  %i.zw = trunc i64 %index3103 to i32
  %i.zx = add i32 %i.ex, %i.zw                    ; 16 uses
  %i.zy = or disjoint i32 %i.zx, 1
  %i.zz = or disjoint i32 %i.zx, 2
  %i.aaa = or disjoint i32 %i.zx, 3
  %i.aab = or disjoint i32 %i.zx, 4
  %i.aac = or disjoint i32 %i.zx, 5
  %i.aad = or disjoint i32 %i.zx, 6
  %i.aae = or disjoint i32 %i.zx, 7
  %i.aaf = or disjoint i32 %i.zx, 8
  %i.aag = or disjoint i32 %i.zx, 9
  %i.aah = or disjoint i32 %i.zx, 10
  %i.aai = or disjoint i32 %i.zx, 11
  %i.aaj = or disjoint i32 %i.zx, 12
  %i.aak = or disjoint i32 %i.zx, 13
  %i.aal = or disjoint i32 %i.zx, 14
  %i.aam = or disjoint i32 %i.zx, 15
  %i.aan = zext i32 %i.zx to i64
  %i.aao = zext i32 %i.zy to i64
  %i.aap = zext i32 %i.zz to i64
  %i.aaq = zext i32 %i.aaa to i64
  %i.aar = zext i32 %i.aab to i64
  %i.aas = zext i32 %i.aac to i64
  %i.aat = zext i32 %i.aad to i64
  %i.aau = zext i32 %i.aae to i64
  %i.aav = zext i32 %i.aaf to i64
  %i.aaw = zext i32 %i.aag to i64
  %i.aax = zext i32 %i.aah to i64
  %i.aay = zext i32 %i.aai to i64
  %i.aaz = zext i32 %i.aaj to i64
  %i.aba = zext i32 %i.aak to i64
  %i.abb = zext i32 %i.aal to i64
  %i.abc = zext i32 %i.aam to i64
  %i.abd = mul nuw nsw i64 %i.yo, %i.aan
  %i.abe = mul nuw nsw i64 %i.yo, %i.aao
  %i.abf = mul nuw nsw i64 %i.yo, %i.aap
  %i.abg = mul nuw nsw i64 %i.yo, %i.aaq
  %i.abh = mul nuw nsw i64 %i.yo, %i.aar
  %i.abi = mul nuw nsw i64 %i.yo, %i.aas
  %i.abj = mul nuw nsw i64 %i.yo, %i.aat
  %i.abk = mul nuw nsw i64 %i.yo, %i.aau
  %i.abl = mul nuw nsw i64 %i.yo, %i.aav
  %i.abm = mul nuw nsw i64 %i.yo, %i.aaw
  %i.abn = mul nuw nsw i64 %i.yo, %i.aax
  %i.abo = mul nuw nsw i64 %i.yo, %i.aay
  %i.abp = mul nuw nsw i64 %i.yo, %i.aaz
  %i.abq = mul nuw nsw i64 %i.yo, %i.aba
  %i.abr = mul nuw nsw i64 %i.yo, %i.abb
  %i.abs = mul nuw nsw i64 %i.yo, %i.abc
  %i.abt = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abd
  %i.abu = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abe
  %i.abv = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abf
  %i.abw = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abg
  %i.abx = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abh
  %i.aby = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abi
  %i.abz = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abj
  %i.aca = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abk
  %i.acb = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abl
  %i.acc = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abm
  %i.acd = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abn
  %i.ace = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abo
  %i.acf = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abp
  %i.acg = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abq
  %i.ach = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abr
  %i.aci = getelementptr inbounds nuw i8, ptr %gep2072, i64 %i.abs
  %i.acj = load i8, ptr %i.abt, align 1, !tbaa !55, !alias.scope !397
  %i.ack = load i8, ptr %i.abu, align 1, !tbaa !55, !alias.scope !397
  %i.acl = load i8, ptr %i.abv, align 1, !tbaa !55, !alias.scope !397
  %i.acm = load i8, ptr %i.abw, align 1, !tbaa !55, !alias.scope !397
  %i.acn = load i8, ptr %i.abx, align 1, !tbaa !55, !alias.scope !397
  %i.aco = load i8, ptr %i.aby, align 1, !tbaa !55, !alias.scope !397
  %i.acp = load i8, ptr %i.abz, align 1, !tbaa !55, !alias.scope !397
  %i.acq = load i8, ptr %i.aca, align 1, !tbaa !55, !alias.scope !397
  %i.acr = load i8, ptr %i.acb, align 1, !tbaa !55, !alias.scope !397
  %i.acs = load i8, ptr %i.acc, align 1, !tbaa !55, !alias.scope !397
  %i.act = load i8, ptr %i.acd, align 1, !tbaa !55, !alias.scope !397
  %i.acu = load i8, ptr %i.ace, align 1, !tbaa !55, !alias.scope !397
  %i.acv = load i8, ptr %i.acf, align 1, !tbaa !55, !alias.scope !397
  %i.acw = load i8, ptr %i.acg, align 1, !tbaa !55, !alias.scope !397
  %i.acx = load i8, ptr %i.ach, align 1, !tbaa !55, !alias.scope !397
  %i.acy = load i8, ptr %i.aci, align 1, !tbaa !55, !alias.scope !397
  %i.acz = insertelement <16 x i8> poison, i8 %i.acj, i64 0
  %i.ada = insertelement <16 x i8> %i.acz, i8 %i.ack, i64 1
  %i.adb = insertelement <16 x i8> %i.ada, i8 %i.acl, i64 2
  %i.adc = insertelement <16 x i8> %i.adb, i8 %i.acm, i64 3
  %i.add = insertelement <16 x i8> %i.adc, i8 %i.acn, i64 4
  %i.ade = insertelement <16 x i8> %i.add, i8 %i.aco, i64 5
  %i.adf = insertelement <16 x i8> %i.ade, i8 %i.acp, i64 6
  %i.adg = insertelement <16 x i8> %i.adf, i8 %i.acq, i64 7
  %i.adh = insertelement <16 x i8> %i.adg, i8 %i.acr, i64 8
  %i.adi = insertelement <16 x i8> %i.adh, i8 %i.acs, i64 9
  %i.adj = insertelement <16 x i8> %i.adi, i8 %i.act, i64 10
  %i.adk = insertelement <16 x i8> %i.adj, i8 %i.acu, i64 11
  %i.adl = insertelement <16 x i8> %i.adk, i8 %i.acv, i64 12
  %i.adm = insertelement <16 x i8> %i.adl, i8 %i.acw, i64 13
  %i.adn = insertelement <16 x i8> %i.adm, i8 %i.acx, i64 14
  %i.ado = insertelement <16 x i8> %i.adn, i8 %i.acy, i64 15
  %i.adp = getelementptr i8, ptr %i.zv, i64 %index3103
  store <16 x i8> %i.ado, ptr %i.adp, align 1, !tbaa !55, !alias.scope !398, !noalias !397
  %index.next3104 = add nuw i64 %index3103, 16    ; 2 uses
  %i.adq = icmp eq i64 %index.next3104, %n.vec3101
  br i1 %i.adq, label %scalar.ph3098.preheader, label %vector.body3102, !llvm.loop !340

scalar.ph3098.preheader:                          ; preds = %vector.body3102, %vector.memcheck3083, %vector.scevcheck3081, %.lr.ph3020
  %storemerge47620613019.ph = phi i32 [ %i.ex, %vector.memcheck3083 ], [ %i.ex, %vector.scevcheck3081 ], [ %i.ex, %.lr.ph3020 ], [ %i.zt, %vector.body3102 ]
  %.130320623018.ph = phi i64 [ %.03022066, %vector.memcheck3083 ], [ %.03022066, %vector.scevcheck3081 ], [ %.03022066, %.lr.ph3020 ], [ %i.zu, %vector.body3102 ]
  br label %scalar.ph3098

bb.cl:                                            ; preds = %scalar.ph3098
  %exitcond.not = icmp eq i64 %i.aeu, %umax
  br i1 %exitcond.not, label %.lr.ph2063._crit_edge, label %scalar.ph3098, !llvm.loop !341

.lr.ph2063._crit_edge:                            ; preds = %.lr.ph2063, %bb.cl
  %storemerge4762061.lcssa = phi i32 [ %i.aew, %bb.cl ], [ %i.ex, %.lr.ph2063 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29, !noalias !399
  store i32 %storemerge4762061.lcssa, ptr %19, align 16, !tbaa !55, !alias.scope !400, !noalias !399
  store i32 %storemerge2065, ptr %i.bg, align 16, !tbaa !55, !alias.scope !400, !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !401
  store i64 0, ptr %i.bj, align 8, !noalias !401
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bi, align 8, !tbaa !121, !noalias !401
  store ptr %i.bk, ptr %8, align 8, !tbaa !122, !noalias !401
  store i64 500, ptr %i.bh, align 8, !tbaa !123, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !401
  store ptr @.str.28, ptr %3, align 8, !tbaa !124, !noalias !401
  store i64 28, ptr %.sroa.2.0..sroa_idx.i16.i1036, align 8, !tbaa !125, !noalias !401
  store i32 0, ptr %i.bl, align 8, !tbaa !128, !noalias !401
  store ptr %8, ptr %i.bm, align 8, !tbaa !130, !noalias !401
  store i64 34, ptr %i.bn, align 8, !tbaa !132, !noalias !401
  store ptr %19, ptr %.sroa.2.0..sroa_idx.i17.i1037, align 8, !tbaa !55, !noalias !401
  store ptr null, ptr %i.bo, align 8, !tbaa !133, !noalias !401
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.28, i64 28, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %.noexc1042 unwind label %.loopexit1743

.noexc1042:                                       ; preds = %.lr.ph2063._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !401
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.adr = load i64, ptr %i.bj, align 8, !tbaa !134, !noalias !403 ; 6 uses
  %i.ads = icmp ult i64 %i.adr, 4611686018427387903
  call void @llvm.assume(i1 %i.ads)
  %i.adt = load ptr, ptr %8, align 8, !tbaa !122, !noalias !403 ; 3 uses
  store ptr %i.bp, ptr %21, align 8, !tbaa !51, !alias.scope !403
  %i.adu = icmp eq ptr %i.adt, null
  %i.adv = icmp ne i64 %i.adr, 0
  %or.cond.i.i.i936 = and i1 %i.adv, %i.adu
  br i1 %or.cond.i.i.i936, label %.noexc.i.i941, label %bb.cm

.noexc.i.i941:                                    ; preds = %.noexc1042
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i942 unwind label %.loopexit.split-lp1744

.noexc.i942:                                      ; preds = %.noexc.i.i941
  unreachable

bb.cm:                                            ; preds = %.noexc1042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !403
  store i64 %i.adr, ptr %i.c, align 8, !tbaa !125, !noalias !403
  %i.adw = icmp samesign ugt i64 %i.adr, 15
  br i1 %i.adw, label %.noexc.i.i.i939, label %._crit_edge.i.i.i.i937

.noexc.i.i.i939:                                  ; preds = %bb.cm
  %i.adx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc7.i940 unwind label %.loopexit1743 ; 2 uses

.noexc7.i940:                                     ; preds = %.noexc.i.i.i939
  store ptr %i.adx, ptr %21, align 8, !tbaa !56, !alias.scope !403
  %i.ady = load i64, ptr %i.c, align 8, !tbaa !125, !noalias !403
  store i64 %i.ady, ptr %i.bp, align 8, !tbaa !55, !alias.scope !403
  br label %._crit_edge.i.i.i.i937

._crit_edge.i.i.i.i937:                           ; preds = %.noexc7.i940, %bb.cm
  %i.adz = phi ptr [ %i.adx, %.noexc7.i940 ], [ %i.bp, %bb.cm ] ; 2 uses
  switch i64 %i.adr, label %bb.co [
    i64 1, label %bb.cn
    i64 0, label %bb.cp
  ]

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i937
  %i.aea = load i8, ptr %i.adt, align 1, !tbaa !55
  store i8 %i.aea, ptr %i.adz, align 1, !tbaa !55
  br label %bb.cp

end_hunk_1
