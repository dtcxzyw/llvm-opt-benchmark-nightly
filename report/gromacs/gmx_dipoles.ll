Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.cq, ptr noundef nonnull align 1 dereferenceable(30) @.str.129, i64 30, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !61
  %i.ct = load ptr, ptr %55, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #22
  %i.cv = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %55, i64 48 ; 6 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !59
  store i64 8317976027013008722, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %55, i64 40
  store i64 8, ptr %i.cx, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %55, i64 56
  store i8 0, ptr %i.cy, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %55, i64 64 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %55, i64 80 ; 6 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #22
  store i64 30, ptr %i.ad, align 8, !tbaa !60
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0)
          to label %.noexc740 unwind label %bb.e  ; 2 uses

.noexc740:                                        ; preds = %.noexc732
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !25
  %i.dc = load i64, ptr %i.ad, align 8, !tbaa !60 ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.db, ptr noundef nonnull align 1 dereferenceable(30) @.str.131, i64 30, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %55, i64 72
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !61
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #22
  %i.dg = getelementptr inbounds nuw i8, ptr %55, i64 96 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %55, i64 112 ; 6 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #22
  store i64 30, ptr %i.ac, align 8, !tbaa !60
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 0)
          to label %.noexc744 unwind label %bb.f  ; 2 uses

.noexc744:                                        ; preds = %.noexc740
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !25
  %i.dj = load i64, ptr %i.ac, align 8, !tbaa !60 ; 3 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.di, ptr noundef nonnull align 1 dereferenceable(30) @.str.132, i64 30, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %55, i64 104
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !61
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #22
  %i.dn = getelementptr inbounds nuw i8, ptr %55, i64 128 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %55, i64 144 ; 6 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #22
  store i64 30, ptr %i.ab, align 8, !tbaa !60
  %i.dp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0)
          to label %.noexc748 unwind label %bb.g  ; 2 uses

.noexc748:                                        ; preds = %.noexc744
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !25
  %i.dq = load i64, ptr %i.ab, align 8, !tbaa !60 ; 3 uses
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.dp, ptr noundef nonnull align 1 dereferenceable(30) @.str.133, i64 30, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %55, i64 136
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !61
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 0, ptr %i.dt, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  %i.du = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 6 uses
  store ptr %i.du, ptr %56, align 8, !tbaa !59
  store i32 1047883068, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 4, ptr %i.dv, align 8, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %56, i64 20
  store i8 0, ptr %i.dw, align 4, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 6 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dy, ptr noundef nonnull align 1 dereferenceable(9) @.str.135, i64 9, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %56, i64 40
  store i64 9, ptr %i.dz, align 8, !tbaa !61
  %i.ea = getelementptr inbounds nuw i8, ptr %56, i64 57
  store i8 0, ptr %i.ea, align 1, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %56, i64 64 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 6 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ec, ptr noundef nonnull align 1 dereferenceable(5) @.str.136, i64 5, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %56, i64 72
  store i64 5, ptr %i.ed, align 8, !tbaa !61
  %i.ee = getelementptr inbounds nuw i8, ptr %56, i64 85
  store i8 0, ptr %i.ee, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #22
  %i.ef = load i32, ptr %22, align 4, !tbaa !10   ; 3 uses
  %i.eg = icmp eq i32 %18, 2                      ; 2 uses
  br i1 %i.eg, label %.thread119, label %bb.j

.thread119:                                       ; preds = %.noexc748
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !10
  %i.ej = add nsw i32 %i.ei, %i.ef
  br label %bb.l

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %.noexc724
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pn607.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.a ], [ %i.el, %bb.b ]
  %.2532 = phi ptr [ %i.cb, %bb.a ], [ %i.ci, %bb.b ]
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767
  %i.em = phi ptr [ %.2532, %bb.c ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767 ] ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -32 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !25 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 -16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765: ; preds = %bb.d
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !17
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765
  %i.et = icmp eq ptr %i.en, %54
  br i1 %i.et, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EED2Ev.exit1177, label %bb.d

.thread113:                                       ; preds = %.noexc728
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev.exit1164

bb.e:                                             ; preds = %.noexc732
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %.noexc740
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.noexc744
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.pn611.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.f ], [ %i.ex, %bb.g ], [ %i.ev, %bb.e ]
  %.3529 = phi ptr [ %i.dg, %bb.f ], [ %i.dn, %bb.g ], [ %i.cz, %bb.e ]
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770
  %i.ey = phi ptr [ %.3529, %bb.h ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -32 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !25 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 -16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768: ; preds = %bb.i
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !17
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768
  %i.ff = icmp eq ptr %i.ez, %55
  br i1 %i.ff, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev.exit1164, label %bb.i

bb.j:                                             ; preds = %.noexc748
  %i.fg = icmp eq i32 %18, 1
  br i1 %i.fg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.217, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.100, i32 noundef 874) #23
          to label %.noexc774 unwind label %bb.m

.noexc774:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.thread119, %bb.j
  %i.fh = phi i64 [ 1, %.thread119 ], [ 0, %bb.j ] ; 3 uses
  %.0499122 = phi i32 [ %i.ej, %.thread119 ], [ %i.ef, %bb.j ] ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !45 ; 12 uses
  %i.fk = load i8, ptr %11, align 1, !tbaa !17    ; 3 uses
  %.not619 = icmp eq i8 %i.fk, 110                ; 3 uses
  %i.fl = icmp eq i8 %i.fk, 116                   ; 4 uses
  br i1 %.not619, label %.loopexit157, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit129:                                     ; preds = %bb.ej, %bb.ek
  %lpad.loopexit131 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit:                   ; preds = %bb.ed
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit.split-lp.loopexit: ; preds = %bb.cm
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ef, %bb.cl, %bb.fp, %bb.fo, %bb.fn, %bb.fh, %.preheader141.preheader, %.loopexit143
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.1, %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit, %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.preheader.preheader
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.2, %_ZNSt10filesystem7__cxx114pathD2Ev.exit873, %_ZNSt10filesystem7__cxx114pathD2Ev.exit913, %bb.bu, %bb.bv, %bb.bw, %bb.ch, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fx, %bb.fz, %bb.gb, %._crit_edge233, %bb.o, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit, %bb.p, %.loopexit157, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %bb.ai, %bb.az, %bb.bx, %_ZNSt10filesystem7__cxx114pathD2Ev.exit924, %bb.ce, %bb.cg, %.noexc927, %.noexc928, %bb.ec, %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3.i.i, %._crit_edge27.thread.i.i, %_ZL14normalize_cmapP8t_gkrbin.exit.i, %._crit_edge.i1042, %._crit_edge88.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i, %.noexc1061, %.noexc1062, %bb.iv, %bb.iw, %.noexc1091, %.noexc1092
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.l
  br i1 %i.fl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.100, i32 noundef 929, i64 noundef 1, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.o
  %i.fo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.100, i32 noundef 930, i64 noundef 3000, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !126
  br label %.loopexit157

bb.p:                                             ; preds = %bb.n
  %i.fp = sext i32 %i.ef to i64
  %i.fq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.100, i32 noundef 934, i64 noundef range(i64 -2147483648, 2147483648) %i.fp, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778.preheader unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778.preheader: ; preds = %bb.p
  %i.fr = load i32, ptr %22, align 4, !tbaa !10
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph, label %.loopexit157

.lr.ph:                                           ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778 ], [ 0, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778.preheader ] ; 2 uses
  %i.ft = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.100, i32 noundef 937, i64 noundef 3000, i64 noundef 4)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778:      ; preds = %.lr.ph
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = load i32, ptr %22, align 4, !tbaa !10
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next, %i.fw
  br i1 %i.fx, label %.lr.ph, label %.loopexit157, !llvm.loop !88

.loopexit157:                                     ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778.preheader, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit, %bb.l
  %.0103 = phi ptr [ null, %bb.l ], [ %i.fn, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit ], [ %i.fq, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778.preheader ], [ %i.fq, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit778 ] ; 6 uses
  %i.fy = sext i32 %.0499122 to i64               ; 2 uses
  %i.fz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.100, i32 noundef 947, i64 noundef range(i64 -2147483648, 2147483648) %i.fy, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %.loopexit157
  %i.ga = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.100, i32 noundef 951, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.preheader.preheader unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.preheader.preheader: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  %i.gb = invoke noundef ptr @_Z14gmx_stats_initv()
          to label %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit: ; preds = %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.preheader.preheader
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !128
  %i.gc = invoke noundef ptr @_Z14gmx_stats_initv()
          to label %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.1 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.1: ; preds = %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !128
  %i.ge = invoke noundef ptr @_Z14gmx_stats_initv()
          to label %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.2 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.2: ; preds = %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !128
  %i.gg = invoke noundef ptr @_Z14gmx_stats_initv()
          to label %bb.q unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %_ZL13gmx_snew_implIP9gmx_statsEvPKcS3_iRPT_m.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef zeroext 2)
          to label %._crit_edge.i.i783 unwind label %bb.y

._crit_edge.i.i783:                               ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  %i.gh = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  store ptr %i.gh, ptr %58, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gh, ptr noundef nonnull align 1 dereferenceable(9) @.str.150, i64 9, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 9, ptr %i.gi, align 8, !tbaa !61
  %i.gj = getelementptr inbounds nuw i8, ptr %58, i64 25
  store i8 0, ptr %i.gj, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  %i.gk = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.gk, ptr %59, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #22
  store i64 27, ptr %i.aa, align 8, !tbaa !60
  %i.gl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc789 unwind label %bb.z  ; 2 uses

.noexc789:                                        ; preds = %._crit_edge.i.i783
  store ptr %i.gl, ptr %59, align 8, !tbaa !25
  %i.gm = load i64, ptr %i.aa, align 8, !tbaa !60 ; 3 uses
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.gl, ptr noundef nonnull align 1 dereferenceable(27) @.str.151, i64 27, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !61
  %i.go = load ptr, ptr %59, align 8, !tbaa !25
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gm
  store i8 0, ptr %i.gp, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #22
  %i.gq = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull @.str.149, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef %34)
          to label %bb.r unwind label %bb.aa      ; 3 uses

bb.r:                                             ; preds = %.noexc789
  %i.gr = load ptr, ptr %59, align 8, !tbaa !25   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.gk
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791: ; preds = %bb.r
  %i.gt = load i64, ptr %i.gk, align 8, !tbaa !17
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  %i.gv = load ptr, ptr %58, align 8, !tbaa !25   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gh
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793
  %i.gx = load i64, ptr %i.gh, align 8, !tbaa !17
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  %i.gz = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull %i.ha) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796
  %i.hb = load ptr, ptr %57, align 8, !tbaa !25   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ix

bb.bu:                                            ; preds = %bb.bj, %bb.ay
  %.0101 = phi ptr [ null, %bb.ay ], [ %i.ne, %bb.bj ]
  %.0522 = phi ptr [ null, %bb.ay ], [ %i.np, %bb.bj ] ; 14 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %52, i64 128
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.gq, ptr nonnull %52, ptr nonnull %i.ol, ptr noundef %34)
          to label %bb.bv unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  %i.om = getelementptr inbounds nuw i8, ptr %54, i64 128
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.ih, ptr nonnull %54, ptr nonnull %i.om, ptr noundef %34)
          to label %bb.bw unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  %i.on = getelementptr inbounds nuw i8, ptr %53, i64 96
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.hl, ptr nonnull %53, ptr nonnull %i.on, ptr noundef %34)
          to label %bb.bx unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.oo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.100, i32 noundef 1038, i64 noundef 1, i64 noundef 80)
          to label %_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit: ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef zeroext 2)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit
  %i.op = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %34, ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.at)
          to label %bb.bz unwind label %bb.cc     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.oq = getelementptr inbounds nuw i8, ptr %75, i64 32 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i920 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i920, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i921, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull %i.or) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i921

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i921: ; preds = %bb.ca, %bb.bz
  %i.os = load ptr, ptr %75, align 8, !tbaa !25   ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit924, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i922

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i922: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i921
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !17
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #24
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit924

_ZNSt10filesystem7__cxx114pathD2Ev.exit924:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i921, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i922
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #22
  %i.ox = fpext float %24 to double               ; 2 uses
  %i.oy = fdiv double %i.ox, 1.000000e-02
  %i.oz = fptosi double %i.oy to i32              ; 3 uses
  %i.pa = add i32 %i.oz, 1                        ; 4 uses
  %i.pb = sext i32 %i.pa to i64
  %i.pc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.100, i32 noundef 1074, i64 noundef range(i64 -2147483648, 2147483648) %i.pb, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit924
  br i1 %13, label %bb.ce, label %bb.ch

bb.cb:                                            ; preds = %_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %75) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn647 = phi { ptr, i32 } [ %i.pe, %bb.cc ], [ %i.pd, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #22
  br label %.body

bb.ce:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %i.pf = load float, ptr %i.at, align 16, !tbaa !12 ; 2 uses
  %i.pg = fmul float %i.pf, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.pi = load float, ptr %i.ph, align 16, !tbaa !12 ; 2 uses
  %i.pj = fmul float %i.pi, %i.pi
  %i.pk = fadd float %i.pg, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.pm = load float, ptr %i.pl, align 16, !tbaa !12 ; 2 uses
  %i.pn = fmul float %i.pm, %i.pm
  %i.po = fadd float %i.pk, %i.pn
  %sqrt = call float @llvm.sqrt.f32(float %i.po)
  %i.pp = fpext float %sqrt to double
  %i.pq = fmul double %i.pp, f0x3FE6666666666666
  %i.pr = fptrunc double %i.pq to float           ; 2 uses
  %i.ps = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.100, i32 noundef 112, i64 noundef 1, i64 noundef 56)
          to label %.noexc926 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc926:                                        ; preds = %bb.ce
  %i.pt = call ptr @getenv(ptr noundef nonnull @.str.220) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.pt, null
  br i1 %.not.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.noexc926
  %i.pu = call double @strtod(ptr noundef nonnull captures(none) %i.pt, ptr noundef null) #22
  %i.pv = fptrunc double %i.pu to float
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.noexc926
  %.sink.i = phi float [ %i.pv, %bb.cf ], [ f0x3C23D70A, %.noexc926 ] ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store float %.sink.i, ptr %i.pw, align 4, !tbaa !136
  %i.px = fdiv float %i.pr, %.sink.i
  %i.py = fptosi float %i.px to i32
  %i.pz = add nsw i32 %i.py, 1                    ; 3 uses
  store i32 %i.pz, ptr %i.ps, align 8, !tbaa !137
  %i.qa = fcmp oeq float %20, 0.000000e+00
  %i.qb = fdiv float %20, %.sink.i
  %i.qc = fptosi float %i.qb to i32
  %i.qd = add nsw i32 %i.qc, 1
  %.sink26.i = select i1 %i.qa, i32 %i.pz, i32 %i.qd
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 36 ; 4 uses
  store i32 %.sink26.i, ptr %i.qe, align 4, !tbaa !138
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store float %i.pr, ptr %i.qf, align 8, !tbaa !139
  %i.qg = sext i32 %i.pz to i64
  %i.qh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.100, i32 noundef 133, i64 noundef range(i64 -2147483648, 2147483648) %i.qg, i64 noundef 4)
          to label %.noexc927 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc927:                                        ; preds = %bb.cg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store ptr %i.qh, ptr %i.qi, align 8, !tbaa !126
  %i.qj = load i32, ptr %i.ps, align 8, !tbaa !137
  %i.qk = sext i32 %i.qj to i64
  %i.ql = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.100, i32 noundef 134, i64 noundef range(i64 -2147483648, 2147483648) %i.qk, i64 noundef 4)
          to label %.noexc928 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc928:                                        ; preds = %.noexc927
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !27
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ps, i64 48 ; 2 uses
  %i.qo = load i32, ptr %i.qe, align 4, !tbaa !138
  %i.qp = sext i32 %i.qo to i64
  %i.qq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.100, i32 noundef 136, i64 noundef range(i64 -2147483648, 2147483648) %i.qp, i64 noundef 8)
          to label %.noexc929 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc929:                                        ; preds = %.noexc928
  store ptr %i.qq, ptr %i.qn, align 8, !tbaa !140
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %17, i32 2)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ps, i64 40 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.qr, align 8, !tbaa !141
  %i.qs = load i32, ptr %i.qe, align 4, !tbaa !138
  %i.qt = icmp sgt i32 %i.qs, 0
  br i1 %i.qt, label %.lr.ph.i, label %.loopexit153

.lr.ph.i:                                         ; preds = %.noexc929, %.noexc930
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc930 ], [ 0, %.noexc929 ] ; 2 uses
  %i.qu = load ptr, ptr %i.qn, align 8, !tbaa !142
  %i.qv = load i32, ptr %i.qr, align 8, !tbaa !141
  %i.qw = sext i32 %i.qv to i64
  %i.qx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.100, i32 noundef 140, i64 noundef range(i64 -2147483648, 2147483648) %i.qw, i64 noundef 4)
          to label %.noexc930 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc930:                                        ; preds = %.lr.ph.i
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.i
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !126
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qz = load i32, ptr %i.qe, align 4, !tbaa !138
  %i.ra = sext i32 %i.qz to i64
  %i.rb = icmp slt i64 %indvars.iv.next.i, %i.ra
  br i1 %i.rb, label %.lr.ph.i, label %.loopexit153, !llvm.loop !89

.loopexit153:                                     ; preds = %.noexc930, %.noexc929
  %i.rc = zext i1 %15 to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store i8 %i.rc, ptr %i.rd, align 8, !tbaa !143
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit153, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %.0102 = phi ptr [ %i.ps, %.loopexit153 ], [ null, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ] ; 11 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rf = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.re, i32 noundef %1, i32 noundef %i.op)
          to label %bb.ci unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.rg = load float, ptr %i.as, align 4, !tbaa !12 ; 2 uses
  %i.rh = icmp sgt i32 %.0499122, 0               ; 2 uses
  %i.ri = icmp sgt i32 %18, 0                     ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 2 uses
  %i.rk = sext i32 %.1492 to i64                  ; 3 uses
  %83 = sitofp i32 %31 to float                   ; 2 uses
  %i.rl = getelementptr inbounds [12 x i8], ptr %i.at, i64 %i.rk
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rk ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.rr = sitofp i32 %i.pa to double
  %.not675 = icmp eq ptr %.0522, null             ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %i.ru = zext i32 %.0499122 to i64               ; 4 uses
  %84 = sitofp i32 %.0499122 to double            ; 3 uses
  %wide.trip.count165.i = zext i32 %18 to i64     ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %i.fh ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %i.fh
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, i64 %i.fh ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.sa = getelementptr inbounds nuw i8, ptr %.0102, i64 32 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.se = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.sh = getelementptr i8, ptr %.0102, i64 4     ; 15 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.0102, i64 16 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.0102, i64 24 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0102, i64 36 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.0102, i64 40 ; 5 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.0102, i64 48 ; 3 uses
  %i.sn = icmp eq i32 %29, 0                      ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.sp = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.sr = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.ss = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.su = fpext float %27 to double
  %i.sv = fcmp oeq float %26, 0.000000e+00        ; 2 uses
  %i.sw = fpext float %26 to double               ; 2 uses
  %i.sx = call double @llvm.fmuladd.f64(double %i.sw, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.sy = sitofp i32 %.0499122 to float
  %i.sz = fmul float %26, 2.000000e+00
  %i.ta = fpext float %i.sz to double
  %i.tb = call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float 1.000000e+00)
  %i.tc = fpext float %i.tb to double
  %i.td = insertelement <2 x double> poison, double %84, i64 0
  %i.te = shufflevector <2 x double> %i.td, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.cj

bb.cj:                                            ; preds = %bb.fq, %bb.ci
  %.sroa.12333.0 = phi double [ 0.000000e+00, %bb.ci ], [ %i.bdr, %bb.fq ]
  %.sroa.12.0 = phi double [ 0.000000e+00, %bb.ci ], [ %i.bds, %bb.fq ]
  %indvars.iv311 = phi i64 [ 0, %bb.ci ], [ %indvars.iv.next312, %bb.fq ] ; 7 uses
  %.0519 = phi i32 [ 1000, %bb.ci ], [ %.1520, %bb.fq ] ; 3 uses
  %.0513 = phi i32 [ 0, %bb.ci ], [ %.1514.lcssa, %bb.fq ] ; 2 uses
  %.0489 = phi double [ 0.000000e+00, %bb.ci ], [ %i.bfe, %bb.fq ]
  %.0486 = phi double [ 0.000000e+00, %bb.ci ], [ %.1487.lcssa, %bb.fq ] ; 2 uses
  %.0483 = phi double [ 0.000000e+00, %bb.ci ], [ %.1484, %bb.fq ]
  %.0480 = phi double [ 0.000000e+00, %bb.ci ], [ %.2482, %bb.fq ]
  %.0 = phi float [ %25, %bb.ci ], [ %.1, %bb.fq ]
  %i.tf = phi <2 x double> [ zeroinitializer, %bb.ci ], [ %i.bdp, %bb.fq ]
  %i.tg = phi <2 x double> [ zeroinitializer, %bb.ci ], [ %i.bdq, %bb.fq ]
  %i.th = sext i32 %.0519 to i64
  %.not649 = icmp slt i64 %indvars.iv311, %i.th
  %or.cond681 = select i1 %.not619, i1 true, i1 %.not649
  br i1 %or.cond681, label %.loopexit143, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ti = add nsw i32 %.0519, 1000                ; 5 uses
  br i1 %i.fl, label %bb.cl, label %.preheader142

.preheader142:                                    ; preds = %bb.ck
  br i1 %i.rh, label %.lr.ph212, label %.loopexit143

.lr.ph212:                                        ; preds = %.preheader142
  %i.tj = mul nsw i32 %i.ti, 3
  %i.tk = sext i32 %i.tj to i64
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.tl = mul nsw i32 %i.ti, 3
  %i.tm = sext i32 %i.tl to i64
  %i.tn = load ptr, ptr %.0103, align 8, !tbaa !126
  %i.to = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.100, i32 noundef 1102, ptr noundef %i.tn, i64 noundef range(i64 -2147483648, 2147483648) %i.tm, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit:        ; preds = %bb.cl
  store ptr %i.to, ptr %.0103, align 8, !tbaa !126
  br label %.loopexit143

bb.cm:                                            ; preds = %.lr.ph212, %bb.cn
  %indvars.iv278 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next279, %bb.cn ] ; 2 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %.0103, i64 %indvars.iv278 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !126
  %i.tr = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.100, i32 noundef 1108, ptr noundef %i.tq, i64 noundef range(i64 -2147483648, 2147483648) %i.tk, i64 noundef 4)
          to label %bb.cn unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.tr, ptr %i.tp, align 8, !tbaa !126
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next279, %i.ru
  br i1 %exitcond.not, label %.loopexit143, label %bb.cm, !llvm.loop !90

.loopexit143:                                     ; preds = %bb.cn, %.preheader142, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit, %bb.cj
  %.1520 = phi i32 [ %i.ti, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit ], [ %.0519, %bb.cj ], [ %i.ti, %.preheader142 ], [ %i.ti, %bb.cn ]
  %i.ts = load float, ptr %i.as, align 4, !tbaa !12
  %i.tt = invoke noundef ptr @_Z14gmx_stats_initv()
          to label %.preheader141.preheader unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.preheader141.preheader:                          ; preds = %.loopexit143
  %i.tu = load ptr, ptr %i.ap, align 8, !tbaa !126
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.rf, i32 noundef %i.op, ptr noundef nonnull %i.at, ptr noundef %i.tu)
          to label %.preheader139 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader139:                                    ; preds = %.preheader141.preheader
  br i1 %i.ri, label %.preheader.lr.ph, label %.preheader138

.preheader.lr.ph:                                 ; preds = %.preheader139
  %.idx = mul nuw nsw i64 %indvars.iv311, 12
  br label %.preheader

.preheader138:                                    ; preds = %bb.dt, %.preheader139
  %.sroa.16.0 = phi double [ 0.000000e+00, %.preheader139 ], [ %.sroa.16.3, %bb.dt ] ; 5 uses
  %.1514.lcssa = phi i32 [ %.0513, %.preheader139 ], [ %.2515.lcssa, %bb.dt ]
  %.1487.lcssa = phi double [ %.0486, %.preheader139 ], [ %.2488.lcssa, %bb.dt ] ; 3 uses
  %i.tv = phi <2 x double> [ zeroinitializer, %.preheader139 ], [ %i.amn, %bb.dt ] ; 6 uses
  %i.tw = fmul <2 x double> %i.tv, %i.tv          ; 3 uses
  %i.tx = fmul double %.sroa.16.0, %.sroa.16.0    ; 2 uses
  %i.ty = load ptr, ptr %i.am, align 8, !tbaa !16
  %.not650 = icmp eq ptr %i.ty, null
  br i1 %.not650, label %bb.ea, label %bb.du

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dt
  %.sroa.16.1 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %.sroa.16.3, %bb.dt ] ; 2 uses
  %indvars.iv298 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next299, %bb.dt ] ; 3 uses
  %.1487225 = phi double [ %.0486, %.preheader.lr.ph ], [ %.2488.lcssa, %bb.dt ] ; 2 uses
  %.1514223 = phi i32 [ %.0513, %.preheader.lr.ph ], [ %.2515.lcssa, %bb.dt ] ; 2 uses
  %i.tz = phi <2 x double> [ zeroinitializer, %.preheader.lr.ph ], [ %i.amn, %bb.dt ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv298 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !10
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %.preheader
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %indvars.iv298
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph221, %bb.dr
  %.sroa.16.2 = phi double [ %.sroa.16.1, %.lr.ph221 ], [ %i.ajq, %bb.dr ]
  %indvars.iv295 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next296, %bb.dr ] ; 6 uses
  %.2488220 = phi double [ %.1487225, %.lr.ph221 ], [ %i.ajv, %bb.dr ]
  %.2515218 = phi i32 [ %.1514223, %.lr.ph221 ], [ %.4517, %bb.dr ] ; 2 uses
  %i.ue = phi <2 x double> [ %i.tz, %.lr.ph221 ], [ %i.ajk, %bb.dr ]
  %indvars297 = trunc i64 %indvars.iv295 to i32   ; 2 uses
  %i.uf = load ptr, ptr %i.rj, align 8, !tbaa !29
  %i.ug = load ptr, ptr %i.ud, align 8, !tbaa !27
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %indvars.iv295
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !10
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.uj ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !10 ; 8 uses
  %i.um = getelementptr i8, ptr %i.uk, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !10 ; 6 uses
  %i.uo = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 3 uses
  %i.up = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %indvars.iv295 ; 14 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 4 ; 9 uses
  store <2 x float> zeroinitializer, ptr %i.up, align 4, !tbaa !12
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 8 ; 10 uses
  store float 0.000000e+00, ptr %i.ur, align 4, !tbaa !12
  %i.us = icmp slt i32 %i.ul, %i.un               ; 4 uses
  br i1 %i.us, label %.lr.ph.preheader.i, label %.loopexit128

.lr.ph.preheader.i:                               ; preds = %bb.co
  %i.ut = sext i32 %i.ul to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.un to i64      ; 3 uses
  %i.uu = sub nsw i64 %wide.trip.count.i, %i.ut
  %xtraiter = and i64 %i.uu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i934.prol.loopexit, label %.lr.ph.i934.prol

.lr.ph.i934.prol:                                 ; preds = %.lr.ph.preheader.i
  %i.uv = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %i.ut
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !51
  %i.uy = fpext float %i.ux to double
  %i.uz = fmul double %i.uy, f0x4048041A1EC6696C
  %i.va = fptrunc double %i.uz to float           ; 3 uses
  %i.vb = getelementptr inbounds [12 x i8], ptr %i.uo, i64 %i.ut ; 3 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !12
  %i.vd = call float @llvm.fmuladd.f32(float %i.va, float %i.vc, float 0.000000e+00) ; 3 uses
  store float %i.vd, ptr %i.up, align 4, !tbaa !12
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !12
  %i.vg = call float @llvm.fmuladd.f32(float %i.va, float %i.vf, float 0.000000e+00) ; 3 uses
  store float %i.vg, ptr %i.uq, align 4, !tbaa !12
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !12
  %i.vj = call float @llvm.fmuladd.f32(float %i.va, float %i.vi, float 0.000000e+00) ; 3 uses
  store float %i.vj, ptr %i.ur, align 4, !tbaa !12
  %indvars.iv.next.i936.prol = add nsw i64 %i.ut, 1
  br label %.lr.ph.i934.prol.loopexit

.lr.ph.i934.prol.loopexit:                        ; preds = %.lr.ph.i934.prol, %.lr.ph.preheader.i
  %.lcssa112.unr = phi float [ poison, %.lr.ph.preheader.i ], [ %i.vd, %.lr.ph.i934.prol ]
  %.lcssa111.unr = phi float [ poison, %.lr.ph.preheader.i ], [ %i.vg, %.lr.ph.i934.prol ]
  %.lcssa110.unr = phi float [ poison, %.lr.ph.preheader.i ], [ %i.vj, %.lr.ph.i934.prol ]
  %.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.vj, %.lr.ph.i934.prol ]
  %.unr154 = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.vg, %.lr.ph.i934.prol ]
  %.unr155 = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.vd, %.lr.ph.i934.prol ]
  %indvars.iv.i935.unr = phi i64 [ %i.ut, %.lr.ph.preheader.i ], [ %indvars.iv.next.i936.prol, %.lr.ph.i934.prol ]
  %i.vk = add nsw i64 %wide.trip.count.i, -1
  %i.vl = icmp eq i64 %i.vk, %i.ut
  br i1 %i.vl, label %.loopexit128.loopexit, label %.lr.ph.i934

.lr.ph.i934:                                      ; preds = %.lr.ph.i934.prol.loopexit, %.lr.ph.i934
  %i.vm = phi float [ %i.ws, %.lr.ph.i934 ], [ %.unr, %.lr.ph.i934.prol.loopexit ]
  %i.vn = phi float [ %i.wp, %.lr.ph.i934 ], [ %.unr154, %.lr.ph.i934.prol.loopexit ]
  %i.vo = phi float [ %i.wm, %.lr.ph.i934 ], [ %.unr155, %.lr.ph.i934.prol.loopexit ]
  %indvars.iv.i935 = phi i64 [ %indvars.iv.next.i936.1, %.lr.ph.i934 ], [ %indvars.iv.i935.unr, %.lr.ph.i934.prol.loopexit ] ; 4 uses
  %i.vp = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.i935
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !51
  %i.vs = fpext float %i.vr to double
  %i.vt = fmul double %i.vs, f0x4048041A1EC6696C
  %i.vu = fptrunc double %i.vt to float           ; 3 uses
  %i.vv = getelementptr inbounds [12 x i8], ptr %i.uo, i64 %indvars.iv.i935 ; 3 uses
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !12
  %i.vx = call float @llvm.fmuladd.f32(float %i.vu, float %i.vw, float %i.vo) ; 2 uses
  store float %i.vx, ptr %i.up, align 4, !tbaa !12
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !12
  %i.wa = call float @llvm.fmuladd.f32(float %i.vu, float %i.vz, float %i.vn) ; 2 uses
  store float %i.wa, ptr %i.uq, align 4, !tbaa !12
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !12
  %i.wd = call float @llvm.fmuladd.f32(float %i.vu, float %i.wc, float %i.vm) ; 2 uses
  store float %i.wd, ptr %i.ur, align 4, !tbaa !12
  %indvars.iv.next.i936 = add nsw i64 %indvars.iv.i935, 1 ; 2 uses
  %i.we = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i936
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 4
end_hunk_1
begin_hunk_2_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  %i.bbf = fpext float %sqrt.i.i to double
  %i.bbg = fpext float %.0121.i to double
  %i.bbh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bak, ptr noundef nonnull @.str.234, i32 noundef %i.awi, double noundef %i.bam, double noundef %i.bao, double noundef %i.baq, double noundef %i.bau, i32 noundef %i.awt, double noundef %i.baw, double noundef %i.bay, double noundef %i.bba, double noundef %i.bbe, double noundef %i.bbf, double noundef %i.bbg) #22 ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.bbi = load float, ptr %i.sh, align 4, !tbaa !136
  %i.bbj = fdiv float %sqrt.i.i, %i.bbi
  %i.bbk = call float @llvm.rint.f32(float %i.bbj)
  %i.bbl = fptosi float %i.bbk to i32             ; 4 uses
  %i.bbm = load i32, ptr %.0102, align 8, !tbaa !137
  %i.bbn = icmp sgt i32 %i.bbm, %i.bbl
  br i1 %i.bbn, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.bbo = load ptr, ptr %i.si, align 8, !tbaa !148
  %i.bbp = sext i32 %i.bbl to i64                 ; 2 uses
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.bbo, i64 %i.bbp ; 2 uses
  %i.bbr = load float, ptr %i.bbq, align 4, !tbaa !12
  %i.bbs = fadd float %.0121.i, %i.bbr
  store float %i.bbs, ptr %i.bbq, align 4, !tbaa !12
  %i.bbt = load ptr, ptr %i.sj, align 8, !tbaa !149
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.bbt, i64 %i.bbp ; 2 uses
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !10
  %i.bbw = add nsw i32 %i.bbv, 1
  store i32 %i.bbw, ptr %i.bbu, align 4, !tbaa !10
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.bbx = load i32, ptr %i.sk, align 4, !tbaa !138
  %i.bby = icmp sgt i32 %i.bbx, %i.bbl
  br i1 %i.bby, label %bb.es, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.es:                                            ; preds = %bb.er
  %i.bbz = call noundef float @acosf(float noundef %.0121.i) #22 ; 2 uses
  %i.bca = load i8, ptr %i.sa, align 8, !tbaa !143, !range !54, !noundef !55
  %i.bcb = trunc nuw i8 %i.bca to i1
  %i.bcc = load i32, ptr %i.sl, align 8, !tbaa !141 ; 3 uses
  br i1 %i.bcb, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.bcd = sitofp i32 %i.bcc to double
  %i.bce = fmul double %.0.i, %i.bcd
  %i.bcf = fdiv double %i.bce, f0x401921FB54442D18
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.bcg = sitofp i32 %i.bcc to float
  %i.bch = fmul float %i.bbz, %i.bcg
  %i.bci = fpext float %i.bch to double
  %i.bcj = fdiv double %i.bci, f0x400921FB54442D18
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %storemerge.in.i.i = phi double [ %i.bcj, %bb.eu ], [ %i.bcf, %bb.et ]
  %storemerge.i.i = fptosi double %storemerge.in.i.i to i32
  %i.bck = add nsw i32 %i.bcc, -1
  %.sroa.speculated27.i.i = call i32 @llvm.smax.i32(i32 %storemerge.i.i, i32 0)
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated27.i.i, i32 %i.bck) ; 2 uses
  %i.bcl = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bcl, null
  br i1 %.not.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bcm = fpext float %i.bbz to double
  %i.bcn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bcl, ptr noundef nonnull @.str.237, double noundef %i.bcm, i32 noundef %.sroa.speculated.i.i) #22 ; 0 uses
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.bco = load ptr, ptr %i.sm, align 8, !tbaa !142
  %i.bcp = sext i32 %i.bbl to i64
  %i.bcq = getelementptr inbounds [8 x i8], ptr %i.bco, i64 %i.bcp
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !126
  %i.bcs = sext i32 %.sroa.speculated.i.i to i64
  %i.bct = getelementptr inbounds [4 x i8], ptr %i.bcr, i64 %i.bcs ; 2 uses
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !12
  %i.bcv = fadd float %i.bcu, 1.000000e+00
  store float %i.bcv, ptr %i.bct, align 4, !tbaa !12
  br label %_ZL7add2gkrP8t_gkrbinfff.exit.i

_ZL7add2gkrP8t_gkrbinfff.exit.i:                  ; preds = %bb.ex, %bb.er, %bb.ei, %bb.eh
  %indvars.iv.next168.i = add nuw nsw i64 %indvars.iv167.i, 1 ; 2 uses
  %i.bcw = load i32, ptr %i.rv, align 4, !tbaa !10 ; 2 uses
  %i.bcx = trunc nuw i64 %indvars.iv.next168.i to i32
  %i.bcy = icmp sgt i32 %i.bcw, %i.bcx
  br i1 %i.bcy, label %bb.eh, label %.loopexit.loopexit.i979, !llvm.loop !105

_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit: ; preds = %.loopexit.i978, %.noexc991
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %bb.ey

bb.ey:                                            ; preds = %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit, %bb.ea
  br i1 %i.fl, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.bcz = load ptr, ptr %.0103, align 8, !tbaa !126
  %.idx636 = mul nuw nsw i64 %indvars.iv311, 12
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 %.idx636 ; 2 uses
  %i.bdb = fptrunc <2 x double> %i.tv to <2 x float>
  store <2 x float> %i.bdb, ptr %i.bda, align 4, !tbaa !12
  %i.bdc = fptrunc double %.sroa.16.0 to float
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  store float %i.bdc, ptr %i.bdd, align 4, !tbaa !12
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  br i1 %i.sn, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.bde = trunc nuw nsw i64 %indvars.iv311 to i32
  %i.bdf = srem i32 %i.bde, %29
  %i.bdg = icmp eq i32 %i.bdf, 0
  br i1 %i.bdg, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.bdh = load float, ptr %i.as, align 4, !tbaa !12
  %i.bdi = fpext float %i.bdh to double
  %shift100 = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop101 = fadd <2 x double> %i.tw, %shift100
  %i.bdj = extractelement <2 x double> %foldExtExtBinop101, i64 0
  %i.bdk = fadd double %i.bdj, %i.tx
  %i.bdl = call double @sqrt(double noundef %i.bdk) #22
  %i.bdm = extractelement <2 x double> %i.tv, i64 0
  %i.bdn = extractelement <2 x double> %i.tv, i64 1
  %i.bdo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str.181, double noundef %i.bdi, double noundef %i.bdm, double noundef %i.bdn, double noundef %.sroa.16.0, double noundef %i.bdl) #22 ; 0 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.bdp = fadd <2 x double> %i.tv, %i.tf         ; 5 uses
  %i.bdq = fadd <2 x double> %i.tw, %i.tg         ; 3 uses
  %i.bdr = fadd double %.sroa.16.0, %.sroa.12333.0 ; 4 uses
  %i.bds = fadd double %i.tx, %.sroa.12.0         ; 3 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.bdt = trunc nuw i64 %indvars.iv.next312 to i32 ; 8 uses
  %i.bdu = uitofp nneg i32 %i.bdt to double       ; 7 uses
  %i.bdv = fdiv double 1.000000e+00, %i.bdu       ; 4 uses
  %i.bdw = extractelement <2 x double> %i.bdq, i64 0 ; 2 uses
  %i.bdx = extractelement <2 x double> %i.bdq, i64 1 ; 2 uses
  %i.bdy = fadd double %i.bdw, %i.bdx
  %i.bdz = fadd double %i.bdy, %i.bds
  %i.bea = fmul double %i.bdv, %i.bdz             ; 4 uses
  %foldExtExtBinop103 = fmul <2 x double> %i.bdp, %i.bdp
  %i.beb = extractelement <2 x double> %foldExtExtBinop103, i64 1
  %i.bec = extractelement <2 x double> %i.bdp, i64 0 ; 2 uses
  %i.bed = call double @llvm.fmuladd.f64(double %i.bec, double %i.bec, double %i.beb)
  %i.bee = call double @llvm.fmuladd.f64(double %i.bdr, double %i.bdr, double %i.bed)
  %i.bef = fmul double %i.bdv, %i.bee
  %i.beg = fmul double %i.bdv, %i.bef             ; 4 uses
  %i.beh = fsub double %i.bea, %i.beg             ; 4 uses
  %i.bei = load float, ptr %i.at, align 16, !tbaa !12
  %i.bej = load float, ptr %i.rs, align 16, !tbaa !12 ; 2 uses
  %i.bek = load float, ptr %i.rt, align 16, !tbaa !12 ; 2 uses
  %i.bel = load float, ptr %i.sq, align 4, !tbaa !12 ; 2 uses
  %i.bem = load float, ptr %i.sr, align 4, !tbaa !12 ; 2 uses
  %i.ben = fneg float %i.bem
  %i.beo = fmul float %i.bel, %i.ben
  %i.bep = call float @llvm.fmuladd.f32(float %i.bej, float %i.bek, float %i.beo)
  %i.beq = load float, ptr %i.so, align 4, !tbaa !12
  %i.ber = load float, ptr %i.ss, align 4, !tbaa !12 ; 2 uses
  %i.bes = load float, ptr %i.st, align 8, !tbaa !12
  %i.bet = fneg float %i.bes                      ; 2 uses
  %i.beu = fmul float %i.bel, %i.bet
  %i.bev = call float @llvm.fmuladd.f32(float %i.ber, float %i.bek, float %i.beu)
  %i.bew = fneg float %i.bev
  %i.bex = fmul float %i.beq, %i.bew
  %i.bey = call float @llvm.fmuladd.f32(float %i.bei, float %i.bep, float %i.bex)
  %i.bez = load float, ptr %i.sp, align 8, !tbaa !12
  %i.bfa = fmul float %i.bej, %i.bet
  %i.bfb = call float @llvm.fmuladd.f32(float %i.ber, float %i.bem, float %i.bfa)
  %i.bfc = call noundef float @llvm.fmuladd.f32(float %i.bez, float %i.bfb, float %i.bey)
  %i.bfd = fpext float %i.bfc to double
  %i.bfe = fadd double %.0489, %i.bfd             ; 2 uses
  %i.bff = fdiv double %i.bfe, %i.bdu             ; 3 uses
  %i.bfg = fmul double %i.beh, f0x33B1E12D3C40EE94
  %i.bfh = fmul double %i.bff, f0x3DBD34B269EC19C5
  %i.bfi = fmul double %i.bfh, 1.000000e-09
  %i.bfj = fmul double %i.bfi, 1.000000e-09
  %i.bfk = fmul double %i.bfj, 1.000000e-09
  %i.bfl = fmul double %i.bfk, f0x3B30B0E6D55E647C
  %i.bfm = fmul double %i.bfl, %i.su
  %i.bfn = fdiv double %i.bfg, %i.bfm             ; 3 uses
  br i1 %i.sv, label %_ZL8calc_epsdddd.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bfo = fmul double %i.bfn, 2.000000e+00
  %i.bfp = fmul double %i.bfo, %i.sw
  %i.bfq = fdiv double %i.bfp, %i.sx
  %i.bfr = fdiv double %i.bfn, %i.sx
  %i.bfs = fsub double 1.000000e+00, %i.bfr
  br label %_ZL8calc_epsdddd.exit

_ZL8calc_epsdddd.exit:                            ; preds = %bb.fd, %bb.fe
  %.015.in.i = phi double [ %i.bfq, %bb.fe ], [ %i.bfn, %bb.fd ]
  %.0.i994 = phi double [ %i.bfs, %bb.fe ], [ 1.000000e+00, %bb.fd ]
  %.015.i = fadd double %.015.in.i, 1.000000e+00
  %i.bft = fdiv double %.015.i, %.0.i994
  %i.bfu = fptrunc double %i.bft to float
  %i.bfv = fpext float %i.bfu to double           ; 7 uses
  %i.bfw = fcmp une double %.1487.lcssa, 0.000000e+00
  %i.bfx = fdiv double %.1487.lcssa, %84
  %i.bfy = fmul double %i.bdv, %i.bfx
  %i.bfz = fptrunc double %i.bfy to float
  %.1 = select i1 %i.bfw, float %i.bfz, float %.0 ; 3 uses
  br i1 %i.sn, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZL8calc_epsdddd.exit
  %i.bga = srem i32 %i.bdt, %29
  %i.bgb = icmp eq i32 %i.bga, 0
  br i1 %i.bgb, label %bb.fg, label %bb.fn

bb.fg:                                            ; preds = %bb.ff, %_ZL8calc_epsdddd.exit
  %i.bgc = load float, ptr %i.as, align 4, !tbaa !12
  %i.bgd = fpext float %i.bgc to double
  %i.bge = fdiv double %i.beg, %i.bea
  %i.bgf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.182, double noundef %i.bgd, double noundef %i.bea, double noundef %i.beg, double noundef %i.beh, double noundef %i.bge) #22 ; 0 uses
  %i.bgg = load ptr, ptr %i.ao, align 8, !tbaa !16
  %.not651 = icmp eq ptr %i.bgg, null
  br i1 %.not651, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bgh = load float, ptr %i.as, align 4, !tbaa !12
  %i.bgi = invoke noundef float @_Z21gmx_stats_get_averageP9gmx_stats(ptr noundef %i.tt)
          to label %bb.fi unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fi:                                            ; preds = %bb.fh
  %i.bgj = fpext float %i.bgh to double
  %i.bgk = fpext float %i.bgi to double
  %i.bgl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0521, ptr noundef nonnull @.str.183, double noundef %i.bgj, double noundef %i.bgk) #22 ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fg, %bb.fi
  %i.bgm = fmul float %.1, %i.sy
  %i.bgn = fmul float %.1, %i.bgm
  %i.bgo = fpext float %i.bgn to double
  %i.bgp = fdiv double %i.beh, %i.bgo             ; 4 uses
  br i1 %i.sv, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bgq = call double @llvm.fmuladd.f64(double %i.bfv, double 2.000000e+00, double 1.000000e+00)
  %i.bgr = fmul double %i.bgp, %i.bgq
  %i.bgs = fmul double %i.bfv, 3.000000e+00
  %i.bgt = fdiv double %i.bgr, %i.bgs
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.bgu = fadd double %i.ta, %i.bfv
  %i.bgv = call double @llvm.fmuladd.f64(double %i.bfv, double 2.000000e+00, double 1.000000e+00)
  %i.bgw = fmul double %i.bgu, %i.bgv
  %i.bgx = fmul double %i.bgp, %i.bgw
  %i.bgy = fmul double %i.bfv, 3.000000e+00
  %i.bgz = fmul double %i.bgy, %i.tc
  %i.bha = fdiv double %i.bgx, %i.bgz
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.1481 = phi double [ %i.bgt, %bb.fk ], [ %i.bha, %bb.fl ] ; 2 uses
  %i.bhb = load float, ptr %i.as, align 4, !tbaa !12
  %i.bhc = fpext float %i.bhb to double
  %i.bhd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hl, ptr noundef nonnull @.str.184, double noundef %i.bhc, double noundef %i.bfv, double noundef %i.bgp, double noundef %.1481) #22 ; 0 uses
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.ff
  %.1484 = phi double [ %i.bgp, %bb.fm ], [ %.0483, %bb.ff ] ; 2 uses
  %.2482 = phi double [ %.1481, %bb.fm ], [ %.0480, %bb.ff ] ; 2 uses
  invoke void @_Z14gmx_stats_freeP9gmx_stats(ptr noundef %i.tt)
          to label %bb.fo unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fo:                                            ; preds = %bb.fn
  %i.bhe = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.bhf = load ptr, ptr %i.ap, align 8, !tbaa !126
  %i.bhg = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %34, ptr noundef %i.bhe, ptr noundef nonnull %i.as, ptr noundef %i.bhf, ptr noundef nonnull %i.at)
          to label %bb.fp unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fp:                                            ; preds = %bb.fo
  %i.bhh = load float, ptr %i.as, align 4, !tbaa !12
  %i.bhi = invoke noundef i32 @_Z11check_timesf(float noundef %i.bhh)
          to label %bb.fq unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fq:                                            ; preds = %bb.fp
  %i.bhj = icmp eq i32 %i.bhi, 0
  %i.bhk = and i1 %i.bhg, %i.bhj
  br i1 %i.bhk, label %bb.cj, label %bb.fr, !llvm.loop !106

bb.fr:                                            ; preds = %bb.fq
  %i.bhl = trunc nuw nsw i64 %indvars.iv311 to i32
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.rf)
          to label %bb.fs unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  %i.bhm = load ptr, ptr %i.ar, align 8, !tbaa !151
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.bhm)
          to label %bb.ft unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ft:                                            ; preds = %bb.fs
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.gq)
          to label %bb.fu unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fu:                                            ; preds = %bb.ft
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.ih)
          to label %bb.fv unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %bb.fu
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.hl)
          to label %bb.fw unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fv
  %i.bhn = load ptr, ptr %i.ao, align 8, !tbaa !16
  %.not652 = icmp eq ptr %i.bhn, null
  br i1 %.not652, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %.0521)
          to label %bb.fy unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.bho = load ptr, ptr %i.am, align 8, !tbaa !16
  %.not653 = icmp eq ptr %i.bho, null
  br i1 %.not653, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %.0523)
          to label %bb.ga unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  br i1 %.not675, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bhp = load float, ptr %i.at, align 16, !tbaa !12
  %i.bhq = fpext float %i.bhp to double
  %i.bhr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.174, double noundef %i.bhq) #22 ; 0 uses
  %i.bhs = load float, ptr %i.rs, align 16, !tbaa !12
  %i.bht = fpext float %i.bhs to double
  %i.bhu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.175, double noundef %i.bht) #22 ; 0 uses
  %i.bhv = load float, ptr %i.rt, align 16, !tbaa !12
  %i.bhw = fpext float %i.bhv to double
  %i.bhx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.176, double noundef %i.bhw) #22 ; 0 uses
  %fwrite655 = call i64 @fwrite(ptr nonnull @.str.177, i64 36, i64 1, ptr nonnull %.0522) ; 0 uses
  %fwrite656 = call i64 @fwrite(ptr nonnull @.str.178, i64 34, i64 1, ptr nonnull %.0522) ; 0 uses
  %i.bhy = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef nonnull %.0522)
          to label %bb.gc unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  br i1 %.2, label %bb.gd, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %33, ptr %i.j, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.bhz = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  store ptr %i.bhz, ptr %47, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i64 17, ptr %i.i, align 8, !tbaa !60
  %i.bia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc1006 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1006:                                       ; preds = %bb.gd
  store ptr %i.bia, ptr %47, align 8, !tbaa !25
  %i.bib = load i64, ptr %i.i, align 8, !tbaa !60 ; 3 uses
  store i64 %i.bib, ptr %i.bhz, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bia, ptr noundef nonnull align 1 dereferenceable(17) @.str.238, i64 17, i1 false)
  %i.bic = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.bib, ptr %i.bic, align 8, !tbaa !61
  %i.bid = load ptr, ptr %47, align 8, !tbaa !25
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 %i.bib
  store i8 0, ptr %i.bie, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.bif = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 6 uses
  %i.big = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 4 uses
  store ptr %i.big, ptr %i.bif, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i64 17, ptr %i.h, align 8, !tbaa !60
  %i.bih = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bif, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc57.i unwind label %bb.gk ; 2 uses

.noexc57.i:                                       ; preds = %.noexc1006
  store ptr %i.bih, ptr %i.bif, align 8, !tbaa !25
  %i.bii = load i64, ptr %i.h, align 8, !tbaa !60 ; 3 uses
  store i64 %i.bii, ptr %i.big, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bih, ptr noundef nonnull align 1 dereferenceable(17) @.str.239, i64 17, i1 false)
  %i.bij = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 %i.bii, ptr %i.bij, align 8, !tbaa !61
  %i.bik = load ptr, ptr %i.bif, align 8, !tbaa !25
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 %i.bii
  store i8 0, ptr %i.bil, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.bim = getelementptr inbounds nuw i8, ptr %47, i64 64 ; 6 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %47, i64 80 ; 4 uses
  store ptr %i.bin, ptr %i.bim, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 17, ptr %i.g, align 8, !tbaa !60
  %i.bio = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bim, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc61.i unwind label %bb.gl ; 2 uses

.noexc61.i:                                       ; preds = %.noexc57.i
  store ptr %i.bio, ptr %i.bim, align 8, !tbaa !25
  %i.bip = load i64, ptr %i.g, align 8, !tbaa !60 ; 3 uses
  store i64 %i.bip, ptr %i.bin, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bio, ptr noundef nonnull align 1 dereferenceable(17) @.str.240, i64 17, i1 false)
  %i.biq = getelementptr inbounds nuw i8, ptr %47, i64 72
end_hunk_2
