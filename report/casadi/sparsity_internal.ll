Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK6casadi16SparsityInternal8multiplyERKNS_8SparsityE:bb.a
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #28
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i129
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.dy ; 3 uses
  store i64 0, ptr %i.er, align 8, !tbaa !43
  %i.es = add nsw i64 %i.eb, -1                   ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i133, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i131

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i131: ; preds = %.noexc138
  %i.eu = getelementptr i8, ptr %i.er, i64 8
  %.idx.i.i.i.i.i31.i132 = shl nuw nsw i64 %i.es, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eu, i8 0, i64 %.idx.i.i.i.i.i31.i132, i1 false), !tbaa !43
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i133

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i133: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i131, %.noexc138
  %i.ev = icmp sgt i64 %i.dy, 0
  br i1 %i.ev, label %bb.af, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i134

bb.af:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %.pre187.a, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i134

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i134: ; preds = %bb.af, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i133
  %.not.i35.i135 = icmp eq ptr %.pre187.a, null
  br i1 %.not.i35.i135, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i136, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i134
  %i.ew = sub i64 %i.dt, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre187.a, i64 noundef %i.ew) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i136

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i136: ; preds = %bb.ag, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i134
  store ptr %i.eq, ptr %14, align 8, !tbaa !53
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eb
  store ptr %i.ex, ptr %i.dv, align 8, !tbaa !55
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.ey, ptr %i.ec, align 8, !tbaa !54
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit106

bb.ah:                                            ; preds = %._crit_edge
  %i.ez = icmp ult i64 %.162.lcssa, %i.dz
  br i1 %i.ez, label %bb.ai, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit106

bb.ai:                                            ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre187.a, i64 %.162.lcssa ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.gs, %i.fa
  br i1 %.not.i.i103, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit106, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i104

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i104:     ; preds = %bb.ai
  store ptr %i.fa, ptr %i.dv, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit106

bb.aj:                                            ; preds = %bb.t, %bb.s
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit112

bb.ak:                                            ; preds = %.lr.ph184, %.loopexit
  %i.fc = phi ptr [ null, %.lr.ph184 ], [ %i.gp, %.loopexit ] ; 5 uses
  %i.fd = phi ptr [ null, %.lr.ph184 ], [ %i.gq, %.loopexit ] ; 6 uses
  %i.fe = phi ptr [ null, %.lr.ph184 ], [ %i.ds, %.loopexit ] ; 11 uses
  %i.ff = phi ptr [ null, %.lr.ph184 ], [ %i.gs, %.loopexit ] ; 7 uses
  %.038183 = phi i64 [ 0, %.lr.ph184 ], [ %i.gw, %.loopexit ] ; 4 uses
  %.061182 = phi i64 [ 0, %.lr.ph184 ], [ %.162.lcssa, %.loopexit ] ; 4 uses
  %i.fg = add nsw i64 %.061182, %i.be
  %i.fh = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fi = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 5 uses
  %i.fk = ashr exact i64 %i.fj, 3                 ; 8 uses
  %i.fl = icmp ugt i64 %i.fg, %i.fk
  br i1 %i.fl, label %bb.al, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit110

bb.al:                                            ; preds = %bb.ak
  %i.fm = ashr exact i64 %i.fj, 2
  %i.fn = add nsw i64 %i.fm, %i.be                ; 4 uses
  %i.fo = icmp ugt i64 %i.fn, %i.fk
  br i1 %i.fo, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.fp = sub nuw nsw i64 %i.fn, %i.fk            ; 6 uses
  %i.fq = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fr = sub i64 %i.fq, %i.fh
  %i.fs = ashr exact i64 %i.fr, 3                 ; 2 uses
  %i.ft = icmp ult i64 %i.fk, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = xor i64 %i.fk, 1152921504606846975      ; 2 uses
  %i.fv = icmp ule i64 %i.fs, %i.fu
  tail call void @llvm.assume(i1 %i.fv)
  %.not28.i141 = icmp ult i64 %i.fs, %i.fp
  br i1 %.not28.i141, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 0, ptr %i.ff, align 8, !tbaa !43
  %i.fw = getelementptr i8, ptr %i.ff, i64 8      ; 3 uses
  %i.fx = add nsw i64 %i.fp, -1                   ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i142

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i142: ; preds = %bb.an
  %.idx.i.i.i.i.i.i143 = shl nuw nsw i64 %i.fx, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fw, i8 0, i64 %.idx.i.i.i.i.i.i143, i1 false), !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i.i.i.i.i.i143
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i142, %bb.an
  %.0.i.i.i.i145 = phi ptr [ %i.fz, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i142 ], [ %i.fw, %bb.an ] ; 2 uses
  store ptr %.0.i.i.i.i145, ptr %i.dq, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit110

bb.ao:                                            ; preds = %bb.am
  %i.ga = icmp ult i64 %i.fu, %i.fp
  br i1 %i.ga, label %.invoke, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i146

.invoke:                                          ; preds = %bb.ao, %bb.ae, %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i146: ; preds = %bb.ao
  %.sroa.speculated.i.i147 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fp)
  %i.gb = add nuw nsw i64 %.sroa.speculated.i.i147, %i.fk
  %i.gc = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975) ; 2 uses
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #28
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit ; 6 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i146
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fj ; 3 uses
  store i64 0, ptr %i.gf, align 8, !tbaa !43
  %i.gg = add nsw i64 %i.fp, -1                   ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i150, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i148

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i148: ; preds = %.noexc155
  %i.gi = getelementptr i8, ptr %i.gf, i64 8
  %.idx.i.i.i.i.i31.i149 = shl nuw nsw i64 %i.gg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gi, i8 0, i64 %.idx.i.i.i.i.i31.i149, i1 false), !tbaa !43
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i150

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i150: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i148, %.noexc155
  %i.gj = icmp sgt i64 %i.fj, 0
  br i1 %i.gj, label %bb.ap, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i151

bb.ap:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i150
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ge, ptr align 8 %i.fe, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i151

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i151: ; preds = %bb.ap, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i150
  %.not.i35.i152 = icmp eq ptr %i.fe, null
  br i1 %.not.i35.i152, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i151
  %i.gk = sub i64 %i.fq, %i.fi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.gk) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153: ; preds = %bb.aq, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i151
  store ptr %i.ge, ptr %14, align 8, !tbaa !53
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.fp ; 2 uses
  store ptr %i.gl, ptr %i.dq, align 8, !tbaa !55
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc ; 2 uses
  store ptr %i.gm, ptr %i.dr, align 8, !tbaa !54
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit110

bb.ar:                                            ; preds = %bb.al
  %i.gn = icmp ult i64 %i.fn, %i.fk
  br i1 %i.gn, label %bb.as, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit110

bb.as:                                            ; preds = %bb.ar
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fn ; 3 uses
  %.not.i.i107 = icmp eq ptr %i.ff, %i.go
  br i1 %.not.i.i107, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit110, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108:     ; preds = %bb.as
  store ptr %i.go, ptr %i.dq, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit110

_ZNSt6vectorIxSaIxEE6resizeEm.exit110:            ; preds = %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108, %bb.as, %bb.ar, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144, %bb.ak
  %i.gp = phi ptr [ %i.fc, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108 ], [ %i.fc, %bb.as ], [ %i.fc, %bb.ar ], [ %i.ge, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153 ], [ %i.fc, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144 ], [ %i.fc, %bb.ak ] ; 3 uses
  %i.gq = phi ptr [ %i.fd, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108 ], [ %i.fd, %bb.as ], [ %i.fd, %bb.ar ], [ %i.gm, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153 ], [ %i.fd, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144 ], [ %i.fd, %bb.ak ] ; 2 uses
  %i.gr = phi ptr [ %i.fe, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108 ], [ %i.fe, %bb.as ], [ %i.fe, %bb.ar ], [ %i.ge, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153 ], [ %i.fe, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144 ], [ %i.fe, %bb.ak ]
  %i.gs = phi ptr [ %i.go, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i108 ], [ %i.ff, %bb.as ], [ %i.ff, %bb.ar ], [ %i.gl, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i153 ], [ %.0.i.i.i.i145, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i144 ], [ %i.ff, %bb.ak ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.038183
  store i64 %.061182, ptr %i.gt, align 8, !tbaa !43
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.038183
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !43 ; 2 uses
  %i.gw = add nuw nsw i64 %.038183, 1             ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.gw ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !43 ; 2 uses
  %i.gz = icmp slt i64 %i.gv, %i.gy
  br i1 %i.gz, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit110
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %.pre187 = load i64, ptr %i.hc, align 8, !tbaa !43
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit
  %i.hd = phi i64 [ %i.gy, %.lr.ph ], [ %i.hw, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit ]
  %.0180.a = phi i64 [ %.pre187, %.lr.ph ], [ %16, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit ] ; 2 uses
  %.162179.a = phi i64 [ %i.gv, %.lr.ph ], [ %i.hx, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit ] ; 2 uses
  %.162179 = phi i64 [ %.061182, %.lr.ph ], [ %.018.lcssa.i, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit ] ; 2 uses
  %15 = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.162179.a
  %i.he = load i64, ptr %15, align 8, !tbaa !43
  %i.hf = getelementptr [8 x i8], ptr %i.ha, i64 %.0180.a
  %i.hg = getelementptr i8, ptr %i.hf, i64 24
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.he ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !43 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hh, i64 8      ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !43 ; 2 uses
  %i.hl = icmp slt i64 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph.i, label %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit

.lr.ph.i:                                         ; preds = %bb.at, %bb.av
  %i.hm = phi i64 [ %i.ht, %bb.av ], [ %i.hk, %bb.at ]
  %.021.i = phi i64 [ %i.hu, %bb.av ], [ %i.hi, %bb.at ] ; 2 uses
  %.01820.i = phi i64 [ %.1.i, %bb.av ], [ %.162179, %bb.at ] ; 3 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %.021.i
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !43 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.ho ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !43
  %.not = icmp sgt i64 %i.hq, %.038183
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i
  store i64 %i.gw, ptr %i.hp, align 8, !tbaa !43
  %i.hr = add nsw i64 %.01820.i, 1
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.01820.i
  store i64 %i.ho, ptr %i.hs, align 8, !tbaa !43
  %.pre.i = load i64, ptr %i.hj, align 8, !tbaa !43
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i
  %i.ht = phi i64 [ %.pre.i, %bb.au ], [ %i.hm, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %i.hr, %bb.au ], [ %.01820.i, %.lr.ph.i ] ; 2 uses
  %i.hu = add nsw i64 %.021.i, 1                  ; 2 uses
  %i.hv = icmp slt i64 %i.hu, %i.ht
  br i1 %i.hv, label %.lr.ph.i, label %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit.loopexit, !llvm.loop !20

_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit.loopexit: ; preds = %bb.av
  %.pre = load i64, ptr %i.hc, align 8, !tbaa !43
  %.pre.a = load i64, ptr %i.gx, align 8, !tbaa !43
  br label %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit

_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit: ; preds = %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit.loopexit, %bb.at
  %i.hw = phi i64 [ %i.hd, %bb.at ], [ %.pre.a, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit.loopexit ] ; 2 uses
  %16 = phi i64 [ %.0180.a, %bb.at ], [ %.pre, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit.loopexit ]
  %.018.lcssa.i = phi i64 [ %.162179, %bb.at ], [ %.1.i, %_ZNK6casadi16SparsityInternal7scatterExRSt6vectorIxSaIxEExPxx.exit.loopexit ] ; 2 uses
  %i.hx = add nsw i64 %.162179.a, 1               ; 2 uses
  %i.hy = icmp slt i64 %i.hx, %i.hw
  br i1 %i.hy, label %bb.at, label %.loopexit, !llvm.loop !343

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i146
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i129, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %_ZNSt6vectorIxSaIxEE6resizeEm.exit106
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  %.pre188 = load ptr, ptr %14, align 8, !tbaa !53
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.hz = phi ptr [ %i.fe, %.loopexit.split-lp.loopexit ], [ %.pre188, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp186, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !54
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %.loopexit.split-lp, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.if = load ptr, ptr %13, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIxSaIxEED2Ev.exit112, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !54
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit112

_ZNSt6vectorIxSaIxEE6resizeEm.exit106:            ; preds = %.thread, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i104, %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i136, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit.i127
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.be, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit106
  %i.il = load ptr, ptr %14, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIxSaIxEED2Ev.exit114, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.im = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !54
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit114

_ZNSt6vectorIxSaIxEED2Ev.exit114:                 ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ir = load ptr, ptr %13, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIxSaIxEED2Ev.exit116, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit114
  %i.is = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !54
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = ptrtoint ptr %i.ir to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit116

_ZNSt6vectorIxSaIxEED2Ev.exit116:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit114, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %.not.i.i.i117 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIxSaIxEED2Ev.exit118, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit116
  %i.ix = ptrtoint ptr %.sroa.10.0 to i64
  %i.iy = ptrtoint ptr %.sroa.0158.0 to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.iz) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit118

_ZNSt6vectorIxSaIxEED2Ev.exit118:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit116, %bb.bb
  ret void

_ZNSt6vectorIxSaIxEED2Ev.exit112:                 ; preds = %bb.ax, %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.aj
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.aj ], [ %lpad.phi, %_ZNSt6vectorIxSaIxEED2Ev.exit ], [ %lpad.phi, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %.not.i.i.i119 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIxSaIxEED2Ev.exit120, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit112
  %i.ja = ptrtoint ptr %.sroa.10.0 to i64
  %i.jb = ptrtoint ptr %.sroa.0158.0 to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.jc) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit120

_ZNSt6vectorIxSaIxEED2Ev.exit120:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit112, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %bb.q
  %.pn71.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %.pn.pn.pn.pn.pn.pn.pn164, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn71.pn.pn.pn, %bb.bc ], [ %.pn71.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit112 ]
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn.pn

bb.bd:                                            ; preds = %bb.j
  unreachable
}

declare noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread, label %bb.c

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit
  %i.b = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #28 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 3 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !43     ; 9 uses
  %i.h = add nsw i64 %i.b, -8                     ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.c, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.c ]
  store i64 %i.g, ptr %.06.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !345

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %bb.c
  %.06.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.c, %bb.c ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %i.h, 56
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.g, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.g, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 16
  store i64 %i.g, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 24
  store i64 %i.g, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 32
  store i64 %i.g, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 40
  store i64 %i.g, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 48
  store i64 %i.g, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 56
  store i64 %i.g, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal8get_diagERSt6vectorIxSaIxEE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
end_hunk_0
