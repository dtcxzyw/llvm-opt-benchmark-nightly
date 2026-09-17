Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/subsume?download=true
inline.NumInlined: 476
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7CaDiCaL8Internal13subsume_roundEv:bb.a
  br label %bb.ai

._crit_edge458:                                   ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363
  %i.dg = icmp ne i64 %.3171, 0                   ; 3 uses
  %i.dh = ptrtoint ptr %.sroa.30.1 to i64
  %i.di = ptrtoint ptr %.sroa.0335.1 to i64       ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ptrtoint ptr %.sroa.18.1 to i64
  %i.dl = sub i64 %i.dk, %i.di                    ; 4 uses
  %i.dm = icmp ugt i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ae, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

bb.ae:                                            ; preds = %._crit_edge458
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.18.1, %.sroa.0335.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = icmp ugt i64 %i.dl, 9223372036854775792
  br i1 %i.dn, label %.noexc.i.i.i, label %bb.ag, !prof !242

.noexc.i.i.i:                                     ; preds = %bb.af
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #13
          to label %.lr.ph.i.i.i.i.i.i unwind label %bb.ay ; 2 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %i.do, %bb.ag ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0335.1, %bb.ag ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !194
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dp, %.sroa.18.1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !213

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ae
  %.sink = phi ptr [ null, %bb.ae ], [ %i.do, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %bb.ae ], [ %i.dq, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.dl ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0335.1, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0335.1) #14
  br label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

bb.ai:                                            ; preds = %.lr.ph457, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363
  %.0168455 = phi i64 [ 0, %.lr.ph457 ], [ %.3171, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 7 uses
  %.sroa.0332.0454 = phi ptr [ %i.cx, %.lr.ph457 ], [ %i.hv, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 2 uses
  %.sroa.30.0453 = phi ptr [ null, %.lr.ph457 ], [ %.sroa.30.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 11 uses
  %.sroa.18.0452 = phi ptr [ null, %.lr.ph457 ], [ %.sroa.18.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 10 uses
  %.sroa.0335.0451 = phi ptr [ null, %.lr.ph457 ], [ %.sroa.0335.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 14 uses
  %i.ds = load ptr, ptr %.sroa.0332.0454, align 8, !tbaa !193 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.dv = and i32 %i.du, 16
  %.not241 = icmp eq i32 %i.dv, 0
  br i1 %.not241, label %bb.aj, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !167 ; 4 uses
  %i.dy = load i32, ptr %i.da, align 8, !tbaa !243
  %i.dz = icmp sgt i32 %i.dx, %i.dy
  br i1 %i.dz, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = and i32 %i.du, 2304
  %or.cond.i = icmp eq i32 %i.ea, 2048
  br i1 %or.cond.i, label %bb.al, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !167
  %i.ed = load i32, ptr %i.db, align 4, !tbaa !244
  %i.ee = icmp sgt i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit: ; preds = %bb.al
  %i.ef = load i32, ptr %i.dc, align 8, !tbaa !245
  %.not395 = icmp sgt i32 %i.dx, %i.ef
  br i1 %.not395, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread: ; preds = %bb.ak, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 5 uses
  %i.eh = sext i32 %i.dx to i64                   ; 3 uses
  %.idx503 = shl nsw i64 %i.eh, 2                 ; 2 uses
  %.not242442 = icmp eq i32 %i.dx, 0
  br i1 %.not242442, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread
  %i.ei = load ptr, ptr %i.dd, align 8, !tbaa !195 ; 3 uses
  %i.ej = add nsw i64 %.idx503, -4                ; 3 uses
  %i.ek = lshr exact i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.em = icmp eq i64 %i.ej, 0
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.el, 9223372036854775806
  br label %bb.an

._crit_edge.unr-lcssa:                            ; preds = %bb.ar
  %i.en = and i64 %i.ej, 4
  %lcmp.mod.not.not = icmp eq i64 %i.en, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0156445.epil.init = phi ptr [ %i.eg, %.lr.ph ], [ %i.fy, %._crit_edge.unr-lcssa ]
  %.0157444.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1158.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0159443.epil.init = phi i1 [ false, %.lr.ph ], [ %.1160.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod740 = trunc i64 %i.el to i1
  tail call void @llvm.assume(i1 %lcmp.mod740)
  %i.eo = load i32, ptr %.0156445.epil.init, align 4, !tbaa !167 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ei, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !196
  %.not245.epil = icmp eq i8 %i.er, 0
  br i1 %.not245.epil, label %bb.am, label %._crit_edge

bb.am:                                            ; preds = %.epil.preheader
  %i.es = tail call noundef i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = load ptr, ptr %i.de, align 8, !tbaa !165
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 1
  %i.ex = lshr i32 %i.ew, 9
  %i.ey = and i32 %i.ex, 1
  %spec.select.epil = add nsw i32 %i.ey, %.0157444.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.am, %._crit_edge.unr-lcssa
  %.1160.lcssa = phi i1 [ %.1160.1, %._crit_edge.unr-lcssa ], [ %.0159443.epil.init, %bb.am ], [ true, %.epil.preheader ]
  %.1158.lcssa = phi i32 [ %.1158.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %bb.am ], [ %.0157444.epil.init, %.epil.preheader ]
  %i.ez = icmp slt i32 %.1158.lcssa, 2
  %i.fa = select i1 %.1160.lcssa, i1 true, i1 %i.ez
  br i1 %i.fa, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %bb.as

bb.an:                                            ; preds = %bb.ar, %.lr.ph.new
  %.0156445 = phi ptr [ %i.eg, %.lr.ph.new ], [ %i.fy, %bb.ar ] ; 3 uses
  %.0157444 = phi i32 [ 0, %.lr.ph.new ], [ %.1158.1, %bb.ar ] ; 2 uses
  %.0159443 = phi i1 [ false, %.lr.ph.new ], [ %.1160.1, %bb.ar ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ar ]
  %i.fb = load i32, ptr %.0156445, align 4, !tbaa !167 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.ei, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !196
  %.not245 = icmp eq i8 %i.fe, 0
  br i1 %.not245, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = tail call noundef i32 @llvm.abs.i32(i32 %i.fb, i1 true)
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = load ptr, ptr %i.de, align 8, !tbaa !165
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 1
  %i.fk = lshr i32 %i.fj, 9
  %i.fl = and i32 %i.fk, 1
  %spec.select = add nsw i32 %i.fl, %.0157444
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1160 = phi i1 [ %.0159443, %bb.ao ], [ true, %bb.an ]
  %.1158 = phi i32 [ %spec.select, %bb.ao ], [ %.0157444, %bb.an ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0156445, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !167 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.ei, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !196
  %.not245.1 = icmp eq i8 %i.fq, 0
  br i1 %.not245.1, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fr = tail call noundef i32 @llvm.abs.i32(i32 %i.fn, i1 true)
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.de, align 8, !tbaa !165
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = lshr i32 %i.fv, 9
  %i.fx = and i32 %i.fw, 1
  %spec.select.1 = add nsw i32 %i.fx, %.1158
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1160.1 = phi i1 [ %.1160, %bb.aq ], [ true, %bb.ap ] ; 3 uses
  %.1158.1 = phi i32 [ %spec.select.1, %bb.aq ], [ %.1158, %bb.ap ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0156445, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.an

bb.as:                                            ; preds = %._crit_edge
  %i.fz = lshr i32 %i.du, 13
  %i.ga = and i32 %i.fz, 1
  %i.gb = zext nneg i32 %i.ga to i64
  %spec.select251 = add nsw i64 %.0168455, %i.gb
  %.not.i.i = icmp eq ptr %.sroa.18.0452, %.sroa.30.0453
  br i1 %.not.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 %i.eh, ptr %.sroa.18.0452, align 8, !tbaa !192
  %.sroa.6328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.0452, i64 8
  store ptr %i.ds, ptr %.sroa.6328.0..sroa_idx, align 8, !tbaa !193
  br label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE9push_backEOS1_.exit

bb.au:                                            ; preds = %bb.as
  %i.gc = ptrtoint ptr %.sroa.30.0453 to i64
  %i.gd = ptrtoint ptr %.sroa.0335.0451 to i64
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775792
  br i1 %i.gf, label %bb.av, label %_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #12
          to label %.noexc265 unwind label %.loopexit.split-lp404

.noexc265:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.gg = ashr exact i64 %i.ge, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gg ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gg
  %i.gj = tail call i64 @llvm.umin.i64(i64 %i.gh, i64 576460752303423487)
  %i.gk = select i1 %i.gi, i64 576460752303423487, i64 %i.gj ; 3 uses
  %.not.i.i.i.i264 = icmp ne i64 %i.gk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i264)
  %i.gl = shl nuw nsw i64 %i.gk, 4
  %i.gm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #13
          to label %.noexc266 unwind label %.loopexit403 ; 5 uses

.noexc266:                                        ; preds = %_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ge ; 2 uses
  store i64 %i.eh, ptr %i.gn, align 8, !tbaa !192
  %.sroa.6328.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.ds, ptr %.sroa.6328.0..sroa_idx329, align 8, !tbaa !193
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0335.0451, %.sroa.30.0453
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc266, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gm, %.noexc266 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0335.0451, %.noexc266 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !194, !alias.scope !246
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.go, %.sroa.30.0453
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc266
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gm, %.noexc266 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0335.0451, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0335.0451) #14
  br label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %i.gk
  %.pre535 = load i32, ptr %i.dw, align 8, !tbaa !167 ; 2 uses
  %.pre547 = sext i32 %.pre535 to i64
  %.pre549 = shl nsw i64 %.pre547, 2
  %i.gr = icmp eq i32 %.pre535, 0
  br label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.at
  %.idx504.pre-phi = phi i64 [ %.pre549, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.idx503, %bb.at ] ; 2 uses
  %.not244447 = phi i1 [ %i.gr, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ false, %bb.at ]
  %.sroa.0335.7 = phi ptr [ %i.gm, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0335.0451, %bb.at ]
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.0452, %bb.at ]
  %.sroa.30.3 = phi ptr [ %i.gq, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.30.0453, %bb.at ]
  %i.gs = getelementptr inbounds i8, ptr %i.eg, i64 %.idx504.pre-phi
  br i1 %.not244447, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit, label %.lr.ph449

.lr.ph449:                                        ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE9push_backEOS1_.exit
  %i.gt = load ptr, ptr %i.df, align 8, !tbaa !197 ; 3 uses
  %i.gu = add nsw i64 %.idx504.pre-phi, -4        ; 2 uses
  %i.gv = and i64 %i.gu, 4
  %lcmp.mod742.not.not = icmp eq i64 %i.gv, 0
  br i1 %lcmp.mod742.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph449
  %i.gw = load i32, ptr %i.eg, align 8, !tbaa !167 ; 2 uses
  %i.gx = tail call noundef i32 @llvm.abs.i32(i32 %i.gw, i1 true)
  %i.gy = tail call noundef i32 @llvm.fshl.i32(i32 %i.gx, i32 %i.gw, i32 1)
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !192
  %i.hc = add nsw i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !192
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph449
  %.0155448.unr = phi ptr [ %i.eg, %.lr.ph449 ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %i.he = icmp eq i64 %i.gu, 0
  br i1 %i.he, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit, label %.lr.ph449.new

.loopexit403:                                     ; preds = %_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit405 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp404:                            ; preds = %bb.av
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.lr.ph449.new:                                    ; preds = %.prol.loopexit, %.lr.ph449.new
  %.0155448 = phi ptr [ %i.hu, %.lr.ph449.new ], [ %.0155448.unr, %.prol.loopexit ] ; 3 uses
  %i.hf = load i32, ptr %.0155448, align 4, !tbaa !167 ; 2 uses
  %i.hg = tail call noundef i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hh = tail call noundef i32 @llvm.fshl.i32(i32 %i.hg, i32 %i.hf, i32 1)
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hi ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !192
  %i.hl = add nsw i64 %i.hk, 1
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !192
  %i.hm = getelementptr inbounds nuw i8, ptr %.0155448, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !167 ; 2 uses
  %i.ho = tail call noundef i32 @llvm.abs.i32(i32 %i.hn, i1 true)
  %i.hp = tail call noundef i32 @llvm.fshl.i32(i32 %i.ho, i32 %i.hn, i32 1)
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hq ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !192
  %i.ht = add nsw i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !192
  %i.hu = getelementptr inbounds nuw i8, ptr %.0155448, i64 8 ; 2 uses
  %.not244.1 = icmp eq ptr %i.hu, %i.gs
  br i1 %.not244.1, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit, label %.lr.ph449.new

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit: ; preds = %.prol.loopexit, %.lr.ph449.new, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE9push_backEOS1_.exit
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 16
  br label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363: ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit, %bb.al, %._crit_edge, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit, %bb.aj, %bb.ai
  %.sroa.0335.1 = phi ptr [ %.sroa.0335.0451, %bb.aj ], [ %.sroa.0335.0451, %._crit_edge ], [ %.sroa.0335.0451, %bb.al ], [ %.sroa.0335.0451, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit ], [ %.sroa.0335.0451, %bb.ai ], [ %.sroa.0335.7, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit ], [ %.sroa.0335.0451, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread ] ; 9 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0452, %bb.aj ], [ %.sroa.18.0452, %._crit_edge ], [ %.sroa.18.0452, %bb.al ], [ %.sroa.18.0452, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit ], [ %.sroa.18.0452, %bb.ai ], [ %.sroa.18.3, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit ], [ %.sroa.18.0452, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread ] ; 5 uses
  %.sroa.30.1 = phi ptr [ %.sroa.30.0453, %bb.aj ], [ %.sroa.30.0453, %._crit_edge ], [ %.sroa.30.0453, %bb.al ], [ %.sroa.30.0453, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit ], [ %.sroa.30.0453, %bb.ai ], [ %.sroa.30.3, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit ], [ %.sroa.30.0453, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread ] ; 3 uses
  %.3171 = phi i64 [ %.0168455, %bb.aj ], [ %.0168455, %._crit_edge ], [ %.0168455, %bb.al ], [ %.0168455, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit ], [ %.0168455, %bb.ai ], [ %spec.select251, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363.loopexit ], [ %.0168455, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0332.0454, i64 8 ; 2 uses
  %.not386 = icmp eq ptr %i.hv, %i.cz
  br i1 %.not386, label %._crit_edge458, label %bb.ai

_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.ad, %bb.ah, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, %._crit_edge458
  %.0168.lcssa598 = phi i1 [ %i.dg, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i ], [ %i.dg, %bb.ah ], [ %i.dg, %._crit_edge458 ], [ false, %bb.ad ]
  %.sroa.0335.6 = phi ptr [ %.sink, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i ], [ %.sink, %bb.ah ], [ %.sroa.0335.1, %._crit_edge458 ], [ null, %bb.ad ] ; 20 uses
  %.sroa.18.2 = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i ], [ %.0.lcssa.i.i.i.i.i.i, %bb.ah ], [ %.sroa.18.1, %._crit_edge458 ], [ null, %bb.ad ] ; 5 uses
  %.sroa.30.2 = phi ptr [ %i.dr, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i ], [ %i.dr, %bb.ah ], [ %.sroa.30.1, %._crit_edge458 ], [ null, %bb.ad ]
  invoke void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_10ClauseSizeESt6vectorIS3_SaIS3_EEEENS_24smaller_clause_size_rankEEEvT_SA_T0_(ptr %.sroa.0335.6, ptr %.sroa.18.2)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit
  %.not387463 = icmp eq ptr %.sroa.0335.6, %.sroa.18.2 ; 4 uses
  %or.cond502 = select i1 %.0168.lcssa598, i1 true, i1 %.not387463
  br i1 %or.cond502, label %.loopexit402, label %.lr.ph465

bb.ay:                                            ; preds = %bb.ag, %.noexc.i.i.i, %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit
  %.sroa.0335.2 = phi ptr [ %.sroa.0335.6, %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit ], [ %.sroa.0335.1, %.noexc.i.i.i ], [ %.sroa.0335.1, %bb.ag ]
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.lr.ph465:                                        ; preds = %bb.ax, %bb.ba
  %.sroa.0323.0464 = phi ptr [ %i.id, %bb.ba ], [ %.sroa.0335.6, %bb.ax ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0323.0464, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !193 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !167
  %i.hz = icmp sgt i32 %i.hy, 2
  br i1 %i.hz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph465
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8
  %i.ic = or i32 %i.ib, 8192
  store i32 %i.ic, ptr %i.ia, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph465
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0323.0464, i64 16 ; 2 uses
  %.not387 = icmp eq ptr %i.id, %.sroa.18.2
  br i1 %.not387, label %.loopexit402, label %.lr.ph465

.loopexit402:                                     ; preds = %bb.ba, %bb.ax
  %i.ie = ptrtoint ptr %.sroa.18.2 to i64
  %i.if = ptrtoint ptr %.sroa.0335.6 to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 4                 ; 8 uses
  %i.ii = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %.not211 = icmp eq ptr %i.ii, null
  br i1 %.not211, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.loopexit402
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !224
  %i.il = load i64, ptr %i.z, align 8, !tbaa !188
  %i.im = add nsw i64 %i.il, %i.ik                ; 3 uses
  %i.in = load i64, ptr %i.bs, align 8, !tbaa !235
  %i.io = sitofp i64 %i.ih to double
  %i.ip = sitofp i64 %i.im to double
  %i.iq = fmul nnan double %i.io, 1.000000e+02
  %.not388 = icmp eq i64 %i.im, 0
  %i.ir = fdiv double %i.iq, %i.ip
  %i.is = select i1 %.not388, double 0.000000e+00, double %i.ir
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.ii, ptr noundef nonnull @.str, i64 noundef %i.in, ptr noundef nonnull @.str.3, i64 noundef %i.ih, double noundef %i.is, i64 noundef %i.im)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bd:                                            ; preds = %bb.bb, %.loopexit402
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN7CaDiCaL8Internal9init_binsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %.preheader unwind label %bb.bf

.preheader:                                       ; preds = %bb.be
  br i1 %.not387463, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376, label %.lr.ph485

.lr.ph485:                                        ; preds = %.preheader
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4808
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 3788
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 3764
  br label %bb.bg

bb.bf:                                            ; preds = %bb.co, %bb.be, %bb.bd
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.bg:                                            ; preds = %.lr.ph485, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367
  %.0142484 = phi i64 [ 0, %.lr.ph485 ], [ %i.jw, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ] ; 4 uses
  %.0145483 = phi i64 [ 0, %.lr.ph485 ], [ %.5373, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ] ; 7 uses
  %.0148482 = phi i64 [ 0, %.lr.ph485 ], [ %.4152372, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ] ; 11 uses
  %.sroa.0319.0481 = phi ptr [ %.sroa.0335.6, %.lr.ph485 ], [ %i.qm, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ] ; 2 uses
  %i.jd = load volatile i8, ptr %i.f, align 8, !tbaa !217, !range !160, !noundef !161
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jf = load i32, ptr %i.j, align 4, !tbaa !218 ; 3 uses
  %.not.i267 = icmp eq i32 %i.jf, 0
  br i1 %.not.i267, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jg = add nsw i32 %i.jf, -1
  store i32 %i.jg, ptr %i.j, align 4, !tbaa !218
  %i.jh = icmp eq i32 %i.jf, 1
  br i1 %i.jh, label %.sink.split.i271, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ji = load ptr, ptr %i.n, align 8, !tbaa !169
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 360
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !219 ; 3 uses
  %.not3.i268 = icmp eq ptr %i.jk, null
  br i1 %.not3.i268, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jl = load i32, ptr %i.i, align 8, !tbaa !220 ; 2 uses
  %i.jm = add nsw i32 %i.jl, -1
  store i32 %i.jm, ptr %i.i, align 8, !tbaa !220
  %.not4.i269 = icmp eq i32 %i.jl, 0
  br i1 %.not4.i269, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jn = load i32, ptr %i.iu, align 4, !tbaa !221
  store i32 %i.jn, ptr %i.i, align 8, !tbaa !220
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !223
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = invoke noundef zeroext i1 %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jk)
          to label %.noexc272 unwind label %bb.bm, !inline_history !212

.noexc272:                                        ; preds = %bb.bl
  br i1 %i.jr, label %.sink.split.i271, label %bb.bn

.sink.split.i271:                                 ; preds = %.noexc272, %bb.bi
  store volatile i8 1, ptr %i.f, align 8, !tbaa !217
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376

bb.bm:                                            ; preds = %bb.bl
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %.noexc272
  %i.jt = load i64, ptr %i.iv, align 8, !tbaa !190
  %.not212 = icmp slt i64 %i.jt, %.0190
  br i1 %.not212, label %bb.bo, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376

bb.bo:                                            ; preds = %bb.bn
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0319.0481, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !247 ; 14 uses
  %i.jw = add nuw nsw i64 %.0142484, 1            ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !167 ; 4 uses
  %i.jz = icmp sgt i32 %i.jy, 2
  br i1 %i.jz, label %bb.bp, label %thread-pre-split

bb.bp:                                            ; preds = %bb.bo
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8            ; 2 uses
  %i.kc = and i32 %i.kb, 8192
  %.not213 = icmp eq i32 %i.kc, 0
  br i1 %.not213, label %.lr.ph473.thread625, label %bb.bq

.lr.ph473.thread625:                              ; preds = %bb.bp
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %i.ke = zext nneg i32 %i.jy to i64              ; 2 uses
  %.idx505615629 = shl nuw nsw i64 %i.ke, 2       ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.idx505615629
  br label %.lr.ph473.split.sink.split

bb.bq:                                            ; preds = %bb.bp
  %i.kg = and i32 %i.kb, -8193
  store i32 %i.kg, ptr %i.ka, align 8
  %i.kh = invoke noundef i32 @_ZN7CaDiCaL8Internal21try_to_subsume_clauseEPNS_6ClauseERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.jv, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.br unwind label %bb.bs     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.ki = icmp slt i32 %i.kh, 1
  %i.kj = add nsw i64 %.0148482, 1
  br i1 %i.ki, label %.thread-pre-split_crit_edge, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367

.thread-pre-split_crit_edge:                      ; preds = %bb.br
  %.lobit = lshr i32 %i.kh, 31
  %i.kk = zext nneg i32 %.lobit to i64
  %spec.select252 = add nsw i64 %.0145483, %i.kk
end_hunk_0
