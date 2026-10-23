Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector6EDlineERNS_3MatERNS1_10LineChainsE:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !186
  %i.bw = uitofp i32 %i.bv to double
  %i.bx = call double @log10(double noundef %i.bw) #23
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !232
  %i.ca = uitofp i32 %i.bz to double
  %i.cb = call double @log10(double noundef %i.ca) #23
  %i.cc = fadd double %i.bx, %i.cb
  %i.cd = fmul double %i.cc, 2.000000e+00
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store double %i.cd, ptr %i.ce, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.noexc293 unwind label %bb.t  ; 10 uses

.noexc293:                                        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit292
  store ptr %i.cf, ptr %4, align 8, !tbaa !68
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !tbaa !75
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !67
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !189 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !221 ; 2 uses
  %.not.i.i294 = icmp eq ptr %i.cm, %i.ck
  br i1 %.not.i.i294, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc293, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i ], [ %i.ck, %.noexc293 ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !94
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cm
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !221
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit:     ; preds = %.noexc293, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !188 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 8 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !219 ; 2 uses
  %.not.i.i295 = icmp eq ptr %i.cx, %i.cv
  br i1 %.not.i.i295, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i296

.lr.ph.i.i.i.i296:                                ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i297 = phi ptr [ %i.de, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.cv, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.cy = load ptr, ptr %.05.i.i.i.i297, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i.i.i.i298 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i.i298, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i296
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i297, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !160
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #25
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i296
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i297, i64 24 ; 2 uses
  %.not.i.i.i.i299 = icmp eq ptr %i.de, %i.cx
  br i1 %.not.i.i.i.i299, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i296, !llvm.loop !13

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !219
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit:     ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 5 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !156 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 8 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !155
  %.not.i.i300 = icmp eq ptr %i.di, %i.dg
  br i1 %.not.i.i300, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !155
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.dl = load i32, ptr %i.u, align 8, !tbaa !241 ; 2 uses
  %.not697 = icmp eq i32 %i.dl, 0
  br i1 %.not697, label %._crit_edge693.thread, label %.lr.ph692

._crit_edge693.thread:                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  store i32 0, ptr %i.bn, align 4, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.dm, align 8, !tbaa !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph692:                                        ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  br label %bb.u

._crit_edge693:                                   ; preds = %._crit_edge674
  %i.ec = zext i32 %.1223.lcssa to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.1238.lcssa, i64 %i.ec
  store i32 %.1421.lcssa, ptr %i.ed, align 4, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %.1223.lcssa, ptr %i.ee, align 8, !tbaa !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge693, %._crit_edge693.thread
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSolsEPFRSoS_E.exit

bb.s:                                             ; preds = %.noexc389, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc387, %bb.f, %bb.d, %bb.n, %bb.k, %bb.h, %bb.c, %bb.a
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit292
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit383

bb.u:                                             ; preds = %.lr.ph692, %._crit_edge674
  %i.eh = phi i32 [ %i.dl, %.lr.ph692 ], [ %i.ve, %._crit_edge674 ]
  %indvars.iv725 = phi i64 [ 0, %.lr.ph692 ], [ %indvars.iv.next726, %._crit_edge674 ] ; 2 uses
  %.0217690 = phi i32 [ 0, %.lr.ph692 ], [ %.1218.lcssa, %._crit_edge674 ] ; 2 uses
  %.0222689 = phi i32 [ 0, %.lr.ph692 ], [ %.1223.lcssa, %._crit_edge674 ] ; 2 uses
  %.0227688 = phi double [ 0.000000e+00, %.lr.ph692 ], [ %.9236, %._crit_edge674 ] ; 2 uses
  %.0237687 = phi ptr [ %i.bn, %.lr.ph692 ], [ %.1238.lcssa, %._crit_edge674 ] ; 2 uses
  %.0420686 = phi i32 [ 0, %.lr.ph692 ], [ %.1421.lcssa, %._crit_edge674 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv725
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !25 ; 2 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next726
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !25 ; 9 uses
  %i.em = load i32, ptr %i.dn, align 8, !tbaa !216 ; 2 uses
  %i.en = add i32 %i.em, %i.ej
  %i.eo = icmp ugt i32 %i.el, %i.en
  br i1 %i.eo, label %.preheader442.preheader, label %._crit_edge674

.preheader442.preheader:                          ; preds = %bb.u
  %i.ep = zext i32 %i.el to i64                   ; 2 uses
  br label %.preheader442

.preheader442:                                    ; preds = %.preheader442.preheader, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.eq = phi i32 [ %i.vb, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.em, %.preheader442.preheader ]
  %.0211673 = phi i32 [ %.12, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.ej, %.preheader442.preheader ] ; 3 uses
  %.1218672 = phi i32 [ %.4221, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0217690, %.preheader442.preheader ] ; 3 uses
  %.1223671 = phi i32 [ %.4226, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0222689, %.preheader442.preheader ] ; 6 uses
  %.1228670 = phi double [ %.8235, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0227688, %.preheader442.preheader ]
  %.1238669 = phi ptr [ %.2239, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0237687, %.preheader442.preheader ] ; 3 uses
  %.1421668 = phi i32 [ %.14, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0420686, %.preheader442.preheader ] ; 4 uses
  %i.er = add i32 %i.eq, %.0211673
  %i.es = icmp ugt i32 %i.el, %i.er
  br i1 %i.es, label %.lr.ph, label %.preheader442.._crit_edge_crit_edge

.preheader442.._crit_edge_crit_edge:              ; preds = %.preheader442
  %.pre728 = load double, ptr %i.do, align 8, !tbaa !217
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader442, %bb.w
  %.1212611 = phi i32 [ %i.ew, %bb.w ], [ %.0211673, %.preheader442 ] ; 3 uses
  %i.et = invoke noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector20LeastSquaresLineFit_EPjS3_jRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bq, i32 noundef %.1212611, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

bb.v:                                             ; preds = %.lr.ph
  %i.eu = load double, ptr %i.do, align 8, !tbaa !217 ; 2 uses
  %i.ev = fcmp ugt double %i.et, %i.eu
  br i1 %i.ev, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ew = add i32 %.1212611, 2                    ; 3 uses
  %i.ex = load i32, ptr %i.dn, align 8, !tbaa !216
  %i.ey = add i32 %i.ex, %i.ew
  %i.ez = icmp ugt i32 %i.el, %i.ey
  br i1 %i.ez, label %.lr.ph, label %._crit_edge, !llvm.loop !387

._crit_edge:                                      ; preds = %bb.w, %.preheader442.._crit_edge_crit_edge
  %9 = phi double [ %.pre728, %.preheader442.._crit_edge_crit_edge ], [ %i.eu, %bb.w ]
  %.1212.lcssa = phi i32 [ %.0211673, %.preheader442.._crit_edge_crit_edge ], [ %i.ew, %bb.w ]
  %.3230 = phi double [ %.1228670, %.preheader442.._crit_edge_crit_edge ], [ %i.et, %bb.w ] ; 3 uses
  %i.fa = fcmp ogt double %.3230, %9
  br i1 %i.fa, label %._crit_edge674.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.v, %._crit_edge
  %.3230808 = phi double [ %.3230, %._crit_edge ], [ %i.et, %bb.v ] ; 2 uses
  %.1212.lcssa807 = phi i32 [ %.1212.lcssa, %._crit_edge ], [ %.1212611, %bb.v ] ; 3 uses
  %i.fb = zext i32 %.1223671 to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.1238669, i64 %i.fb ; 9 uses
  store i32 %.1421668, ptr %i.fc, align 4, !tbaa !25
  %i.fd = zext i32 %.1212.lcssa807 to i64         ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25
  %i.fg = load i32, ptr %i.bu, align 8, !tbaa !186
  %i.fh = mul i32 %i.fg, %i.ff
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fd
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !25
  %i.fk = add i32 %i.fh, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !62
  %i.fo = icmp eq i8 %i.fn, -1
  br i1 %i.fo, label %.preheader436, label %.preheader438

.preheader436:                                    ; preds = %bb.x, %._crit_edge653
  %.0197667 = phi i32 [ %i.fp, %._crit_edge653 ], [ 0, %bb.x ] ; 2 uses
  %.0200666 = phi i1 [ false, %._crit_edge653 ], [ true, %bb.x ]
  %.2213664 = phi i32 [ %i.hj, %._crit_edge653 ], [ %.1212.lcssa807, %bb.x ] ; 3 uses
  %.2219663 = phi i32 [ %.4424, %._crit_edge653 ], [ %.1218672, %bb.x ]
  %.4231662 = phi double [ %.5232, %._crit_edge653 ], [ %.3230808, %bb.x ] ; 2 uses
  %.2422661 = phi i32 [ %i.hi, %._crit_edge653 ], [ %.1421668, %bb.x ] ; 4 uses
  %i.fp = add nuw nsw i32 %.0197667, 1
  br i1 %.0200666, label %.preheader, label %bb.y

.preheader:                                       ; preds = %.preheader436
  %i.fq = load i32, ptr %i.dn, align 8, !tbaa !216
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph645, label %.loopexit

.lr.ph645:                                        ; preds = %.preheader, %.lr.ph645
  %.0196644 = phi i32 [ %i.gc, %.lr.ph645 ], [ 0, %.preheader ]
  %.3214643 = phi i32 [ %i.fx, %.lr.ph645 ], [ %.2213664, %.preheader ] ; 2 uses
  %.3423642 = phi i32 [ %i.ga, %.lr.ph645 ], [ %.2422661, %.preheader ] ; 2 uses
  %i.fs = zext i32 %.3214643 to i64               ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !25
  %i.fv = zext i32 %.3423642 to i64               ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.fv
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !25
  %i.fx = add i32 %.3214643, 1                    ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fs
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !25
  %i.ga = add i32 %.3423642, 1                    ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.fv
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !25
  %i.gc = add nuw nsw i32 %.0196644, 1            ; 2 uses
  %i.gd = load i32, ptr %i.dn, align 8, !tbaa !216
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %.lr.ph645, label %.loopexit, !llvm.loop !388

bb.y:                                             ; preds = %.preheader436
  %i.gf = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.gg = invoke noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector20LeastSquaresLineFit_EPjS3_jjjRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i32 noundef %i.gf, i32 noundef %.2219663, i32 noundef %.2422661, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.lr.ph, %bb.y, %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.cm
  %lpad.loopexit.split-lp935 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.cp

.loopexit:                                        ; preds = %.lr.ph645, %.preheader, %bb.y
  %.4424 = phi i32 [ %.2422661, %bb.y ], [ %.2422661, %.preheader ], [ %i.ga, %.lr.ph645 ] ; 5 uses
  %.5232 = phi double [ %i.gg, %bb.y ], [ %.4231662, %.preheader ], [ %.4231662, %.lr.ph645 ] ; 2 uses
  %.4215 = phi i32 [ %.2213664, %bb.y ], [ %.2213664, %.preheader ], [ %i.fx, %.lr.ph645 ] ; 3 uses
  %i.gh = load double, ptr %i.cf, align 8, !tbaa !75 ; 3 uses
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.gh, double 1.000000e+00)
  %sqrt = call double @llvm.sqrt.f64(double %i.gi)
  %i.gj = fdiv double 1.000000e+00, %sqrt         ; 4 uses
  %i.gk = icmp ugt i32 %i.el, %.4215
  br i1 %i.gk, label %.lr.ph652, label %._crit_edge653

.lr.ph652:                                        ; preds = %.loopexit
  %i.gl = load double, ptr %i.eb, align 8, !tbaa !75
  %i.gm = load double, ptr %i.do, align 8, !tbaa !217
  %i.gn = zext i32 %.4215 to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph652, %bb.ab
  %indvars.iv721 = phi i64 [ %i.gn, %.lr.ph652 ], [ %indvars.iv.next722, %bb.ab ] ; 3 uses
  %.0198650 = phi i32 [ 0, %.lr.ph652 ], [ %.1199, %bb.ab ] ; 2 uses
  %.5425648 = phi i32 [ %.4424, %.lr.ph652 ], [ %i.hc, %bb.ab ] ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv721
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !25 ; 2 uses
  %i.gq = uitofp i32 %i.gp to double
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv721 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !25
  %i.gt = uitofp i32 %i.gs to double
  %i.gu = fneg double %i.gt
  %i.gv = call double @llvm.fmuladd.f64(double %i.gh, double %i.gq, double %i.gu)
  %i.gw = fadd double %i.gl, %i.gv
  %i.gx = call double @llvm.fabs.f64(double %i.gw)
  %i.gy = fmul double %i.gj, %i.gx
  %i.gz = zext i32 %.5425648 to i64               ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.gz
  store i32 %i.gp, ptr %i.ha, align 4, !tbaa !25
  %indvars.iv.next722 = add nuw nsw i64 %indvars.iv721, 1 ; 3 uses
  %i.hb = load i32, ptr %i.gr, align 4, !tbaa !25
  %i.hc = add i32 %.5425648, 1                    ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.gz
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !25
  %i.he = fcmp ogt double %i.gy, %i.gm
  br i1 %i.he, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hf = add nsw i32 %.0198650, 1                ; 2 uses
  %i.hg = icmp sgt i32 %.0198650, 2
  br i1 %i.hg, label %._crit_edge653.loopexit.split.loop.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.1199 = phi i32 [ %i.hf, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next722, %i.ep
  br i1 %exitcond724.not, label %._crit_edge653, label %bb.z, !llvm.loop !389

._crit_edge653.loopexit.split.loop.exit:          ; preds = %bb.aa
  %i.hh = trunc nuw i64 %indvars.iv.next722 to i32
  br label %._crit_edge653

._crit_edge653:                                   ; preds = %bb.ab, %._crit_edge653.loopexit.split.loop.exit, %.loopexit
  %.6426 = phi i32 [ %.4424, %.loopexit ], [ %i.hc, %._crit_edge653.loopexit.split.loop.exit ], [ %i.hc, %bb.ab ]
  %.6 = phi i32 [ %.4215, %.loopexit ], [ %i.hh, %._crit_edge653.loopexit.split.loop.exit ], [ %i.el, %bb.ab ]
  %.2 = phi i32 [ 0, %.loopexit ], [ %i.hf, %._crit_edge653.loopexit.split.loop.exit ], [ %.1199, %bb.ab ] ; 2 uses
  %i.hi = sub i32 %.6426, %.2                     ; 5 uses
  %i.hj = sub i32 %.6, %.2                        ; 2 uses
  %i.hk = icmp ne i32 %i.hi, %.4424
  %i.hl = icmp samesign ult i32 %.0197667, 5
  %or.cond = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond, label %.preheader436, label %bb.ac, !llvm.loop !390

bb.ac:                                            ; preds = %._crit_edge653
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.hm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc304 unwind label %bb.av ; 6 uses

.noexc304:                                        ; preds = %bb.ac
  store ptr %i.hm, ptr %5, align 8, !tbaa !68
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 2 uses
  store ptr %i.hn, ptr %i.dw, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false), !tbaa !75
  store ptr %i.hn, ptr %i.dx, align 8, !tbaa !67
  %i.ho = load double, ptr %i.cf, align 8, !tbaa !75
  %i.hp = fmul double %i.gj, %i.ho
  store double %i.hp, ptr %i.hm, align 8, !tbaa !75
  %i.hq = fneg double %i.gj
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store double %i.hq, ptr %i.hr, align 8, !tbaa !75
  %i.hs = load double, ptr %i.eb, align 8, !tbaa !75
  %i.ht = fmul double %i.gj, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store double %i.ht, ptr %i.hu, align 8, !tbaa !75
  %i.hv = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.hw = invoke noundef zeroext i1 @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector15LineValidation_EPjS3_jjRSt6vectorIdSaIdEERf(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i32 noundef %i.hv, i32 noundef %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ad unwind label %.loopexit.split-lp456.loopexit.split-lp

bb.ad:                                            ; preds = %.noexc304
  br i1 %i.hw, label %bb.ae, label %bb.ay

bb.ae:                                            ; preds = %bb.ad
  %i.hx = load ptr, ptr %i.cl, align 8, !tbaa !221 ; 6 uses
  %i.hy = load ptr, ptr %i.dr, align 8, !tbaa !222
  %.not.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hz = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 2 uses
  %i.ia = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i.i.i.i, label %.noexc307, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ie = icmp ugt i64 %i.id, 9223372036854775800
  br i1 %i.ie, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !63

.noexc.i.i.i:                                     ; preds = %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc306 unwind label %.loopexit.split-lp456.loopexit.split-lp

.noexc306:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #24
          to label %.noexc307 unwind label %.loopexit.split-lp456.loopexit.split-lp

.noexc307:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.af
  %i.ig = phi ptr [ null, %bb.af ], [ %i.if, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.ig, ptr %i.hx, align 8, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !67
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.id
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !94
  %i.ik = load ptr, ptr %5, align 8, !tbaa !244   ; 3 uses
  %i.il = load ptr, ptr %i.dx, align 8, !tbaa !244
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in                    ; 4 uses
  %i.ip = icmp sgt i64 %i.io, 8
  br i1 %i.ip, label %bb.ah, label %bb.ai, !prof !158

bb.ah:                                            ; preds = %.noexc307
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ig, ptr align 8 %i.ik, i64 %i.io, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

bb.ai:                                            ; preds = %.noexc307
  %i.iq = icmp eq i64 %i.io, 8
  br i1 %i.iq, label %bb.aj, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ir = load double, ptr %i.ik, align 8, !tbaa !75
end_hunk_0
begin_hunk_1_@_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector6EDlineERNS_3MatERNS1_10LineChainsE:bb.a
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt                    ; 4 uses
  %i.kv = icmp sgt i64 %i.ku, 4
  br i1 %i.kv, label %bb.al, label %bb.am, !prof !158

bb.al:                                            ; preds = %.noexc317
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.km, ptr align 4 %i.kq, i64 %i.ku, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.am:                                            ; preds = %.noexc317
  %i.kw = icmp eq i64 %i.ku, 4
  br i1 %i.kw, label %bb.an, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.an:                                            ; preds = %bb.am
  %i.kx = load float, ptr %i.kq, align 4, !tbaa !113
  store float %i.kx, ptr %i.km, align 4, !tbaa !113
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i:              ; preds = %bb.an, %bb.am, %bb.al
  %i.ky = getelementptr inbounds i8, ptr %i.km, i64 %i.ku
  store ptr %i.ky, ptr %i.kn, align 8, !tbaa !155
  %i.kz = load ptr, ptr %i.cw, align 8, !tbaa !219
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store ptr %i.la, ptr %i.cw, align 8, !tbaa !219
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit

bb.ao:                                            ; preds = %.noexc312
  invoke void @_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr %i.kk, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit.split-lp461.loopexit.split-lp

_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i, %bb.ao
  %i.lb = load ptr, ptr %i.dh, align 8, !tbaa !155 ; 4 uses
  %i.lc = load ptr, ptr %i.dv, align 8, !tbaa !160
  %.not.i319 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not.i319, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit
  %i.ld = load float, ptr %i.a, align 4, !tbaa !113
  store float %i.ld, ptr %i.lb, align 4, !tbaa !113
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store ptr %i.le, ptr %i.dh, align 8, !tbaa !155
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.aq:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit
  %i.lf = load ptr, ptr %i.df, align 8, !tbaa !156 ; 4 uses
  %i.lg = ptrtoint ptr %i.lb to i64
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 5 uses
  %i.lj = icmp eq i64 %i.li, 9223372036854775804
  br i1 %i.lj, label %bb.ar, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #26
          to label %.noexc321 unwind label %.loopexit.split-lp461.loopexit.split-lp

.noexc321:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aq
  %i.lk = ashr exact i64 %i.li, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lk, i64 1)
  %i.ll = add nsw i64 %.sroa.speculated.i.i.i, %i.lk ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lk
  %i.ln = call i64 @llvm.umin.i64(i64 %i.ll, i64 2305843009213693951)
  %i.lo = select i1 %i.lm, i64 2305843009213693951, i64 %i.ln ; 3 uses
  %.not.i.i.i320 = icmp ne i64 %i.lo, 0
  call void @llvm.assume(i1 %.not.i.i.i320)
  %i.lp = shl nuw nsw i64 %i.lo, 2
  %i.lq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #24
          to label %.noexc322 unwind label %.loopexit.split-lp461.loopexit.split-lp ; 4 uses

.noexc322:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.li ; 2 uses
  %i.ls = load float, ptr %i.a, align 4, !tbaa !113
  store float %i.ls, ptr %i.lr, align 4, !tbaa !113
  %i.lt = icmp sgt i64 %i.li, 0
  br i1 %i.lt, label %bb.as, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.as:                                            ; preds = %.noexc322
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lq, ptr align 4 %i.lf, i64 %i.li, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.as, %.noexc322
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %.not.i17.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.lv = load ptr, ptr %i.dv, align 8, !tbaa !160
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = sub i64 %i.lw, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lx) #25
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.lq, ptr %i.df, align 8, !tbaa !156
  store ptr %i.lu, ptr %i.dh, align 8, !tbaa !155
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lo
  store ptr %i.ly, ptr %i.dv, align 8, !tbaa !160
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.ap
  %i.lz = add i32 %.1223671, 1
  %i.ma = load ptr, ptr %6, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i323 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i323, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.mb = load ptr, ptr %i.dy, align 8, !tbaa !160
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.me) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.az

bb.av:                                            ; preds = %bb.ac
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit329

.loopexit.split-lp456.loopexit.split-lp:          ; preds = %bb.ak, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.noexc304, %.noexc.i.i.i
  %lpad.loopexit.split-lp929 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aw:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

.loopexit.split-lp461.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %bb.ao, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %bb.ar
  %lpad.loopexit.split-lp932 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = load ptr, ptr %6, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i324 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorIfSaIfEED2Ev.exit325, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp461.loopexit.split-lp
  %i.mi = load ptr, ptr %i.dy, align 8, !tbaa !160
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mh to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.ml) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

_ZNSt6vectorIfSaIfEED2Ev.exit325:                 ; preds = %bb.ax, %.loopexit.split-lp461.loopexit.split-lp, %bb.aw
  %.pn272 = phi { ptr, i32 } [ %i.mg, %bb.aw ], [ %lpad.loopexit.split-lp932, %.loopexit.split-lp461.loopexit.split-lp ], [ %lpad.loopexit.split-lp932, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ad
  %i.mm = load i32, ptr %i.fc, align 4, !tbaa !25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.7427 = phi i32 [ %i.hi, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.mm, %bb.ay ]
  %.2224 = phi i32 [ %i.lz, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.1223671, %bb.ay ]
  %i.mn = load ptr, ptr %5, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i326 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i326, label %_ZNSt6vectorIdSaIdEED2Ev.exit327, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mo = load ptr, ptr %i.dw, align 8, !tbaa !94
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mn to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.mr) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit327

_ZNSt6vectorIdSaIdEED2Ev.exit327:                 ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ci

bb.bb:                                            ; preds = %.loopexit.split-lp456.loopexit.split-lp, %_ZNSt6vectorIfSaIfEED2Ev.exit325
  %.pn272.pn = phi { ptr, i32 } [ %.pn272, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ], [ %lpad.loopexit.split-lp929, %.loopexit.split-lp456.loopexit.split-lp ] ; 2 uses
  %i.ms = load ptr, ptr %5, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i328 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIdSaIdEED2Ev.exit329, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mt = load ptr, ptr %i.dw, align 8, !tbaa !94
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mw) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit329

_ZNSt6vectorIdSaIdEED2Ev.exit329:                 ; preds = %bb.bc, %bb.bb, %bb.av
  %.pn272.pn.pn = phi { ptr, i32 } [ %i.mf, %bb.av ], [ %.pn272.pn, %bb.bb ], [ %.pn272.pn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit.split-lp

.preheader438:                                    ; preds = %bb.x, %._crit_edge627
  %.1641 = phi i32 [ %i.mx, %._crit_edge627 ], [ 0, %bb.x ] ; 2 uses
  %.2202640 = phi i1 [ false, %._crit_edge627 ], [ true, %bb.x ]
  %.7638 = phi i32 [ %i.or, %._crit_edge627 ], [ %.1212.lcssa807, %bb.x ] ; 3 uses
  %.3220637 = phi i32 [ %.10430, %._crit_edge627 ], [ %.1218672, %bb.x ]
  %.6233636 = phi double [ %.7234, %._crit_edge627 ], [ %.3230808, %bb.x ] ; 2 uses
  %.8428635 = phi i32 [ %i.oq, %._crit_edge627 ], [ %.1421668, %bb.x ] ; 4 uses
  %i.mx = add nuw nsw i32 %.1641, 1
  br i1 %.2202640, label %.preheader434, label %bb.bd

.preheader434:                                    ; preds = %.preheader438
  %i.my = load i32, ptr %i.dn, align 8, !tbaa !216
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.lr.ph619, label %.loopexit435

.lr.ph619:                                        ; preds = %.preheader434, %.lr.ph619
  %.0618 = phi i32 [ %i.nk, %.lr.ph619 ], [ 0, %.preheader434 ]
  %.8617 = phi i32 [ %i.nf, %.lr.ph619 ], [ %.7638, %.preheader434 ] ; 2 uses
  %.9429616 = phi i32 [ %i.ni, %.lr.ph619 ], [ %.8428635, %.preheader434 ] ; 2 uses
  %i.na = zext i32 %.8617 to i64                  ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !25
  %i.nd = zext i32 %.9429616 to i64               ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.nd
  store i32 %i.nc, ptr %i.ne, align 4, !tbaa !25
  %i.nf = add i32 %.8617, 1                       ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.na
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !25
  %i.ni = add i32 %.9429616, 1                    ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.nd
  store i32 %i.nh, ptr %i.nj, align 4, !tbaa !25
  %i.nk = add nuw nsw i32 %.0618, 1               ; 2 uses
  %i.nl = load i32, ptr %i.dn, align 8, !tbaa !216
  %i.nm = icmp slt i32 %i.nk, %i.nl
  br i1 %i.nm, label %.lr.ph619, label %.loopexit435, !llvm.loop !391

bb.bd:                                            ; preds = %.preheader438
  %i.nn = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.no = invoke noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector20LeastSquaresLineFit_EPjS3_jjjRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i32 noundef %i.nn, i32 noundef %.3220637, i32 noundef %.8428635, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.loopexit435 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit435:                                     ; preds = %.lr.ph619, %.preheader434, %bb.bd
  %.10430 = phi i32 [ %.8428635, %bb.bd ], [ %.8428635, %.preheader434 ], [ %i.ni, %.lr.ph619 ] ; 5 uses
  %.7234 = phi double [ %i.no, %bb.bd ], [ %.6233636, %.preheader434 ], [ %.6233636, %.lr.ph619 ] ; 2 uses
  %.9 = phi i32 [ %.7638, %bb.bd ], [ %.7638, %.preheader434 ], [ %i.nf, %.lr.ph619 ] ; 3 uses
  %i.np = load double, ptr %i.cf, align 8, !tbaa !75 ; 3 uses
  %i.nq = call double @llvm.fmuladd.f64(double %i.np, double %i.np, double 1.000000e+00)
  %sqrt433 = call double @llvm.sqrt.f64(double %i.nq)
  %i.nr = fdiv double 1.000000e+00, %sqrt433      ; 4 uses
  %i.ns = icmp ugt i32 %i.el, %.9
  br i1 %i.ns, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %.loopexit435
  %i.nt = fneg double %i.np
  %i.nu = load double, ptr %i.eb, align 8, !tbaa !75
  %i.nv = load double, ptr %i.do, align 8, !tbaa !217
  %i.nw = zext i32 %.9 to i64
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph626, %bb.bg
  %indvars.iv = phi i64 [ %i.nw, %.lr.ph626 ], [ %indvars.iv.next, %bb.bg ] ; 3 uses
  %.3624 = phi i32 [ 0, %.lr.ph626 ], [ %.4, %bb.bg ] ; 2 uses
  %.11431622 = phi i32 [ %.10430, %.lr.ph626 ], [ %i.ok, %bb.bg ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !25 ; 2 uses
  %i.nz = uitofp i32 %i.ny to double
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !25
  %i.oc = uitofp i32 %i.ob to double
  %i.od = call double @llvm.fmuladd.f64(double %i.nt, double %i.oc, double %i.nz)
  %i.oe = fsub double %i.od, %i.nu
  %i.of = call double @llvm.fabs.f64(double %i.oe)
  %i.og = fmul double %i.nr, %i.of
  %i.oh = zext i32 %.11431622 to i64              ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.oh
  store i32 %i.ny, ptr %i.oi, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.oj = load i32, ptr %i.oa, align 4, !tbaa !25
  %i.ok = add i32 %.11431622, 1                   ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.oh
  store i32 %i.oj, ptr %i.ol, align 4, !tbaa !25
  %i.om = fcmp ogt double %i.og, %i.nv
  br i1 %i.om, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.on = add nsw i32 %.3624, 1                   ; 2 uses
  %i.oo = icmp sgt i32 %.3624, 2
  br i1 %i.oo, label %._crit_edge627.loopexit.split.loop.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.4 = phi i32 [ %i.on, %bb.bf ], [ 0, %bb.be ]  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ep
  br i1 %exitcond.not, label %._crit_edge627, label %bb.be, !llvm.loop !392

._crit_edge627.loopexit.split.loop.exit:          ; preds = %bb.bf
  %i.op = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %bb.bg, %._crit_edge627.loopexit.split.loop.exit, %.loopexit435
  %.12432 = phi i32 [ %.10430, %.loopexit435 ], [ %i.ok, %._crit_edge627.loopexit.split.loop.exit ], [ %i.ok, %bb.bg ]
  %.11 = phi i32 [ %.9, %.loopexit435 ], [ %i.op, %._crit_edge627.loopexit.split.loop.exit ], [ %i.el, %bb.bg ]
  %.5 = phi i32 [ 0, %.loopexit435 ], [ %i.on, %._crit_edge627.loopexit.split.loop.exit ], [ %.4, %bb.bg ] ; 2 uses
  %i.oq = sub i32 %.12432, %.5                    ; 5 uses
  %i.or = sub i32 %.11, %.5                       ; 2 uses
  %i.os = icmp ne i32 %i.oq, %.10430
  %i.ot = icmp samesign ult i32 %.1641, 5
  %or.cond3 = select i1 %i.os, i1 %i.ot, i1 false
  br i1 %or.cond3, label %.preheader438, label %bb.bh, !llvm.loop !393

bb.bh:                                            ; preds = %._crit_edge627
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ou = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc333 unwind label %bb.ca ; 6 uses

.noexc333:                                        ; preds = %bb.bh
  store ptr %i.ou, ptr %7, align 8, !tbaa !68
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24 ; 2 uses
  store ptr %i.ov, ptr %i.dp, align 8, !tbaa !94
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, i8 0, i64 16, i1 false), !tbaa !75
  store ptr %i.ov, ptr %i.dq, align 8, !tbaa !67
  store double %i.nr, ptr %i.ou, align 8, !tbaa !75
  %i.ox = load double, ptr %i.cf, align 8, !tbaa !75
  %i.oy = fneg double %i.ox
  %i.oz = fmul double %i.nr, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store double %i.oz, ptr %i.pa, align 8, !tbaa !75
  %i.pb = load double, ptr %i.eb, align 8, !tbaa !75
  %i.pc = fneg double %i.pb
  %i.pd = fmul double %i.nr, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store double %i.pd, ptr %i.pe, align 8, !tbaa !75
  %i.pf = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.pg = invoke noundef zeroext i1 @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector15LineValidation_EPjS3_jjRSt6vectorIdSaIdEERf(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i32 noundef %i.pf, i32 noundef %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.bi unwind label %.loopexit.split-lp446.loopexit.split-lp

bb.bi:                                            ; preds = %.noexc333
  br i1 %i.pg, label %bb.bj, label %bb.cd

bb.bj:                                            ; preds = %bb.bi
  %i.ph = load ptr, ptr %i.cl, align 8, !tbaa !221 ; 6 uses
  %i.pi = load ptr, ptr %i.dr, align 8, !tbaa !222
  %.not.i335 = icmp eq ptr %i.ph, %i.pi
  br i1 %.not.i335, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pj = load ptr, ptr %i.dq, align 8, !tbaa !67 ; 2 uses
  %i.pk = load ptr, ptr %7, align 8, !tbaa !68    ; 2 uses
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ph, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i336 = icmp eq ptr %i.pj, %i.pk
  br i1 %.not.i.i.i.i.i336, label %.noexc341, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.po = icmp ugt i64 %i.pn, 9223372036854775800
  br i1 %i.po, label %.noexc.i.i.i339, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i337, !prof !63

.noexc.i.i.i339:                                  ; preds = %bb.bl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc340 unwind label %.loopexit.split-lp446.loopexit.split-lp

.noexc340:                                        ; preds = %.noexc.i.i.i339
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i337: ; preds = %bb.bl
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #24
          to label %.noexc341 unwind label %.loopexit.split-lp446.loopexit.split-lp

.noexc341:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i337, %bb.bk
  %i.pq = phi ptr [ null, %bb.bk ], [ %i.pp, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i337 ] ; 6 uses
  store ptr %i.pq, ptr %i.ph, align 8, !tbaa !68
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  store ptr %i.pq, ptr %i.pr, align 8, !tbaa !67
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pn
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !94
  %i.pu = load ptr, ptr %7, align 8, !tbaa !244   ; 3 uses
  %i.pv = load ptr, ptr %i.dq, align 8, !tbaa !244
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pu to i64
  %i.py = sub i64 %i.pw, %i.px                    ; 4 uses
  %i.pz = icmp sgt i64 %i.py, 8
  br i1 %i.pz, label %bb.bm, label %bb.bn, !prof !158

bb.bm:                                            ; preds = %.noexc341
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.pq, ptr align 8 %i.pu, i64 %i.py, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i338

bb.bn:                                            ; preds = %.noexc341
  %i.qa = icmp eq i64 %i.py, 8
  br i1 %i.qa, label %bb.bo, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i338

bb.bo:                                            ; preds = %bb.bn
  %i.qb = load double, ptr %i.pu, align 8, !tbaa !75
  store double %i.qb, ptr %i.pq, align 8, !tbaa !75
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i338

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i338:           ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.qc = getelementptr inbounds i8, ptr %i.pq, i64 %i.py
  store ptr %i.qc, ptr %i.pr, align 8, !tbaa !67
  %i.qd = load ptr, ptr %i.cl, align 8, !tbaa !221
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  store ptr %i.qe, ptr %i.cl, align 8, !tbaa !221
end_hunk_1
