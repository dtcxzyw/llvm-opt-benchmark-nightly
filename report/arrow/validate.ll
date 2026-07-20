inline.NumInlined: 3493
inline.NumDeleted: 1066
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_9UnionTypeE:bb.a
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !92
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.z
  %.pn64.pn = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %.pn64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.af

.critedge80:                                      ; preds = %bb.r
  %i.ec = load ptr, ptr %8, align 8, !tbaa !149   ; 2 uses
  %.not.i111 = icmp eq ptr %i.ec, null
  br i1 %.not.i111, label %bb.ae, label %bb.ac, !prof !182

bb.ac:                                            ; preds = %.critedge80
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !869, !range !75, !noundef !40
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !3
  %i.eh = add nsw i32 %i.eg, 1                    ; 3 uses
  store i32 %i.eh, ptr %i.a, align 4, !tbaa !3
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !418
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !419
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = lshr exact i64 %i.em, 4
  %i.eo = trunc i64 %i.en to i32
  %i.ep = icmp slt i32 %i.eh, %i.eo
  br i1 %i.ep, label %bb.b, label %._crit_edge, !llvm.loop !1082

bb.af:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %.body92, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn68 = phi { ptr, i32 } [ %eh.lpad-body93, %.body92 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.bv, %bb.o ], [ %.pn64.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.do, %bb.y ]
  %i.eq = load ptr, ptr %8, align 8, !tbaa !149   ; 2 uses
  %.not.i113 = icmp eq ptr %i.eq, null
  br i1 %.not.i113, label %_ZN5arrow6StatusD2Ev.exit114, label %bb.ag, !prof !182

bb.ag:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !869, !range !75, !noundef !40
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN5arrow6StatusD2Ev.exit114, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZN5arrow6StatusD2Ev.exit114

_ZN5arrow6StatusD2Ev.exit114:                     ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %common.resume

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i90
  %i.eu = load ptr, ptr %8, align 8, !tbaa !149   ; 2 uses
  %.not.i115 = icmp eq ptr %i.eu, null
  br i1 %.not.i115, label %.thread, label %bb.ai, !prof !182

bb.ai:                                            ; preds = %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !869, !range !75, !noundef !40
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.ai, %bb.x
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ai, %.critedge, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ay

._crit_edge:                                      ; preds = %bb.ae, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !36, !range !75, !noundef !40
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.aj, label %.thread148

bb.aj:                                            ; preds = %._crit_edge
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.fd = load ptr, ptr %1, align 8, !tbaa !39, !nonnull !40, !align !41 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !77
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !104 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !98
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 9
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !181, !range !75, !noundef !40
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = select i1 %i.fm, ptr %i.fo, ptr null, !prof !182
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fj
  br label %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit:     ; preds = %bb.aj, %bb.ak
  %.0.i.i = phi ptr [ %i.fq, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !53 ; 2 uses
  %.not177 = icmp sgt i64 %i.fs, 0
  br i1 %.not177, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit, %bb.ao
  %storemerge70178 = phi i64 [ %i.gn, %bb.ao ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %storemerge70178
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !92  ; 2 uses
  %i.fv = sext i8 %i.fu to i32                    ; 2 uses
  store i32 %i.fv, ptr %i.d, align 4, !tbaa !3
  %i.fw = icmp slt i8 %i.fu, 0
  br i1 %i.fw, label %.critedge82, label %bb.al

bb.al:                                            ; preds = %.lr.ph179
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = load ptr, ptr %i.fb, align 8, !tbaa !1083
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = icmp eq i32 %i.ga, -1
  br i1 %i.gb, label %.critedge82, label %bb.ao

.critedge82:                                      ; preds = %bb.al, %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1086
  call void @_ZN5arrow8internal12JoinToStringIJRA25_KcRlRA22_S2_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(25) @.str.98, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.99, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !noalias !1086
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %.critedge82
  %i.gc = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1086 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %.thread150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120: ; preds = %bb.am
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !92, !noalias !1086
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #19
  br label %.thread150

bb.an:                                            ; preds = %.critedge82
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1086 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i117: ; preds = %bb.an
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !92, !noalias !1086
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i118

common.resume:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit114, %_ZNSt6vectorIlSaIlEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i118
  %common.resume.op = phi { ptr, i32 } [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i118 ], [ %.pn68, %_ZN5arrow6StatusD2Ev.exit114 ], [ %.pn73.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit131 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i118: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1086
  br label %common.resume

.thread150:                                       ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.ay

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.gn = add nuw nsw i64 %storemerge70178, 1     ; 3 uses
  store i64 %i.gn, ptr %i.c, align 8, !tbaa !82
  %.not = icmp slt i64 %i.gn, %i.fs
  br i1 %.not, label %.lr.ph179, label %._crit_edge180, !llvm.loop !1091

._crit_edge180:                                   ; preds = %bb.ao, %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.go = call noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.ap, label %.thread148

bb.ap:                                            ; preds = %._crit_edge180
  %i.gq = call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #20 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.gq, i8 0, i64 2048, i1 false)
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !418 ; 3 uses
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !419 ; 3 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = lshr exact i64 %i.gv, 4                 ; 2 uses
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %bb.ap
  %i.gz = load ptr, ptr %1, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !206 ; 3 uses
  %i.hc = load ptr, ptr %i.fc, align 8, !tbaa !1092 ; 3 uses
  %i.hd = and i64 %i.gv, 34359738352
  %i.he = icmp eq i64 %i.hd, 16
  br i1 %i.he, label %.epil.preheader, label %.lr.ph183.new

.lr.ph183.new:                                    ; preds = %.lr.ph183
  %unroll_iter = and i64 %i.gw, 2147483646
  br label %bb.aq

._crit_edge184.loopexit.unr-lcssa:                ; preds = %bb.aq
  %lcmp.mod.not = icmp eq ptr %i.gr, %i.gs
  br i1 %lcmp.mod.not, label %._crit_edge184, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge184.loopexit.unr-lcssa, %.lr.ph183
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next.1, %._crit_edge184.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod284 = icmp ne ptr %i.gr, %i.gs
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv.epil.init
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !138
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !53
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv.epil.init
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !92
  %i.hl = sext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hl
  store i64 %i.hi, ptr %i.hm, align 8, !tbaa !82
  br label %._crit_edge184

._crit_edge184:                                   ; preds = %.epil.preheader, %._crit_edge184.loopexit.unr-lcssa, %bb.ap
  %i.hn = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #20
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.as ; 5 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.hn, i8 0, i64 2048, i1 false), !tbaa !82
  %i.ho = load ptr, ptr %1, align 8, !tbaa !39, !nonnull !40, !align !41 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !77
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !104 ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i124, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, label %bb.ar

bb.aq:                                            ; preds = %bb.aq, %.lr.ph183.new
  %indvars.iv = phi i64 [ 0, %.lr.ph183.new ], [ %indvars.iv.next.1, %bb.aq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph183.new ], [ %niter.next.1, %bb.aq ]
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !138
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !53
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !92
  %i.hz = sext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hz
  store i64 %i.hw, ptr %i.ia, align 8, !tbaa !82
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv.next
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !138
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !53
  %i.if = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv.next
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !92
  %i.ih = sext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ih
  store i64 %i.ie, ptr %i.ii, align 8, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge184.loopexit.unr-lcssa, label %bb.aq, !llvm.loop !1094

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !98
  %i.il = getelementptr inbounds nuw i8, ptr %i.hs, i64 9
  %i.im = load i8, ptr %i.il, align 1, !tbaa !181, !range !75, !noundef !40
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = select i1 %i.in, ptr %i.ip, ptr null, !prof !182
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ik
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:     ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.0.i.i125 = phi ptr [ %i.ir, %bb.ar ], [ null, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.is = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !82
  %i.it = load i64, ptr %i.is, align 8, !tbaa !53 ; 2 uses
  %.not78186 = icmp sgt i64 %i.it, 0
  br i1 %.not78186, label %.lr.ph188, label %.thread148.critedge

bb.as:                                            ; preds = %._crit_edge184
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit131

.lr.ph188:                                        ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, %.critedge84
  %storemerge71187 = phi i64 [ %i.jj, %.critedge84 ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %storemerge71187
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i125, i64 %storemerge71187
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3  ; 3 uses
  store i32 %i.iy, ptr %i.f, align 4, !tbaa !3
  %i.iz = icmp slt i32 %i.iy, 0
  br i1 %i.iz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph188
  invoke void @_ZN5arrow6Status7InvalidIJRA25_KcRlRA22_S2_RKiEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.98, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(22) @.str.49, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit127 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit129

_ZNSt6vectorIlSaIlEED2Ev.exit129:                 ; preds = %bb.ax, %bb.av, %bb.at
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 2048) #19
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit131

bb.au:                                            ; preds = %.lr.ph188
  %i.jb = zext nneg i32 %i.iy to i64              ; 3 uses
  %i.jc = sext i8 %i.iw to i64                    ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !82
  %.not72 = icmp sgt i64 %i.je, %i.jb
  br i1 %.not72, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.jc
  invoke void @_ZN5arrow6Status7InvalidIJRA25_KcRlRA39_S2_RKiRA5_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.98, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(39) @.str.100, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.101, ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull align 1 dereferenceable(2) @.str.21)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit127 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit129

bb.aw:                                            ; preds = %bb.au
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.jc ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !82
  %i.ji = icmp sgt i64 %i.jh, %i.jb
  br i1 %i.ji, label %bb.ax, label %.critedge84

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5arrow6Status7InvalidIJRA25_KcRlRA27_S2_RKiEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.98, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(27) @.str.102, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit127 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit129

.critedge84:                                      ; preds = %bb.aw
  store i64 %i.jb, ptr %i.jg, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.jj = add nuw nsw i64 %storemerge71187, 1     ; 3 uses
  store i64 %i.jj, ptr %i.e, align 8, !tbaa !82
  %.not78 = icmp slt i64 %i.jj, %i.it
  br i1 %.not78, label %.lr.ph188, label %.thread148.critedge, !llvm.loop !1095

_ZNSt6vectorIlSaIlEED2Ev.exit127:                 ; preds = %bb.ax, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 2048) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 2048) #19
  br label %bb.ay

_ZNSt6vectorIlSaIlEED2Ev.exit131:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit129, %bb.as
  %.pn73.pn = phi { ptr, i32 } [ %i.ja, %_ZNSt6vectorIlSaIlEED2Ev.exit129 ], [ %i.iu, %bb.as ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 2048) #19
  br label %common.resume

.thread148.critedge:                              ; preds = %.critedge84, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 2048) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 2048) #19
  br label %.thread148

.thread148:                                       ; preds = %.thread148.critedge, %._crit_edge180, %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1096
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit127, %.thread150, %.thread, %.thread148
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.c = alloca i64, align 8                      ; 14 uses
  %8 = alloca %"struct.arrow::ArraySpan", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.f = alloca i64, align 8                      ; 14 uses
  %14 = alloca %"struct.arrow::ArraySpan", align 8 ; 15 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.i = alloca i64, align 8                      ; 14 uses
  %20 = alloca %"struct.arrow::ArraySpan", align 8 ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %23 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.l = alloca i64, align 8                      ; 14 uses
  %26 = alloca %"struct.arrow::ArraySpan", align 8 ; 15 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
