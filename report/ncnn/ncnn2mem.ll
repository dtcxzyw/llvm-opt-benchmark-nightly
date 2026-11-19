Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2mem?download=true
inline.NumInlined: 390
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  %i.fq = invoke noundef i32 @_ZN4ncnn14layer_to_indexEPKc(ptr noundef nonnull %i.l)
          to label %bb.aj unwind label %bb.ak     ; 2 uses

bb.aj:                                            ; preds = %_ZL13sanitize_namePc.exit.i
  store i32 %i.fq, ptr %i.p, align 4, !tbaa !55
  %i.fr = icmp eq i32 %i.fq, -1
  br i1 %i.fr, label %.preheader570.i, label %bb.at

.preheader570.i:                                  ; preds = %bb.aj
  %i.fs = load ptr, ptr %i.ee, align 8, !tbaa !21 ; 2 uses
  %i.ft = load ptr, ptr %7, align 8, !tbaa !20    ; 4 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 5                 ; 3 uses
  %.not715.i = icmp eq ptr %i.fs, %i.ft
  br i1 %.not715.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader570.i
  %i.fy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #23 ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i.us
  %.0144679.i.us = phi i64 [ %i.ge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %.0144679.i.us
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !31
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i.us: ; preds = %.lr.ph.i.split.us
  %i.ge = add nuw i64 %.0144679.i.us, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ge, %i.fx
  br i1 %exitcond.not.i.us, label %.critedge.i, label %.lr.ph.i.split.us, !llvm.loop !36

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i
  %.0144679.i = phi i64 [ %i.gp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %.0144679.i ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !31
  %i.gi = icmp eq i64 %i.gh, %i.fy
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i.split
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !26
  %bcmp.i.i = call i32 @bcmp(ptr %i.gj, ptr nonnull %i.l, i64 %i.fy)
  %i.gk = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.0144679.i.us, %.lr.ph.i.split.us ], [ %.0144679.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ]
  %i.gl = trunc i64 %.us-phi to i32
  %i.gm = or i32 %i.gl, 256                       ; 2 uses
  store i32 %i.gm, ptr %i.p, align 4, !tbaa !55
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %.critedge.i, label %bb.at

bb.ak:                                            ; preds = %_ZL13sanitize_namePc.exit.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split
  %i.gp = add nuw i64 %.0144679.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gp, %i.fx
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i.split, !llvm.loop !36

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread499.i.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %.preheader570.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.ef, ptr %8, align 8, !tbaa !28
  %i.gq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 %i.gq, ptr %i.g, align 8, !tbaa !29
  %i.gr = icmp ugt i64 %i.gq, 15
  br i1 %i.gr, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.critedge.i
  %i.gs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc274.i unwind label %bb.ar ; 2 uses

.noexc274.i:                                      ; preds = %.noexc.i.i
  store ptr %i.gs, ptr %8, align 8, !tbaa !26
  %i.gt = load i64, ptr %i.g, align 8, !tbaa !29
  store i64 %i.gt, ptr %i.ef, align 8, !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc274.i, %.critedge.i
  %i.gu = phi ptr [ %i.gs, %.noexc274.i ], [ %i.ef, %.critedge.i ] ; 2 uses
  switch i64 %i.gq, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i
  %i.gv = load i8, ptr %i.l, align 16, !tbaa !30
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !30
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr nonnull align 16 %i.l, i64 %i.gq, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i
  %i.gw = load i64, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  store i64 %i.gw, ptr %i.eg, align 8, !tbaa !31
  %i.gx = load ptr, ptr %8, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw
  store i8 0, ptr %i.gy, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.gz = load ptr, ptr %i.ee, align 8, !tbaa !21 ; 7 uses
  %i.ha = load ptr, ptr %i.eh, align 8, !tbaa !32
  %.not.i.i275.i = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i.i275.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 3 uses
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !28
  %i.hc = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ef
  br i1 %i.hd, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.he = load i64, ptr %i.eg, align 8, !tbaa !31 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  %i.hg = add nuw nsw i64 %i.he, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hb, ptr noundef nonnull align 8 dereferenceable(1) %i.ef, i64 %i.hg, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ao
  store ptr %i.hc, ptr %i.gz, align 8, !tbaa !26
  %i.hh = load i64, ptr %i.ef, align 8, !tbaa !30
  store i64 %i.hh, ptr %i.hb, align 8, !tbaa !30
  %.pre.i26 = load i64, ptr %i.eg, align 8, !tbaa !31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ap
  %i.hi = phi i64 [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.he, %bb.ap ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !31
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr %i.hk, ptr %i.ee, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.aq:                                            ; preds = %bb.an
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.as

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.aq
  %.pre813.i = load ptr, ptr %8, align 8, !tbaa !26 ; 2 uses
  %i.hl = icmp eq ptr %.pre813.i, %i.ef
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  call void @_ZdlPv(ptr noundef %.pre813.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.hm = trunc i64 %i.fx to i32
  %i.hn = or i32 %i.hm, 256
  store i32 %i.hn, ptr %i.p, align 4, !tbaa !55
  br label %bb.at

bb.ar:                                            ; preds = %.noexc.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i

bb.as:                                            ; preds = %bb.aq
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.ef
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.hq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277.i, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.ho, %bb.ar ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277.i ], [ %i.hp, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.go

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %bb.aj
  %i.hs = call i64 @fwrite(ptr noundef nonnull %i.p, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  %i.ht = call i64 @fwrite(ptr noundef nonnull %i.n, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  %i.hu = call i64 @fwrite(ptr noundef nonnull %i.o, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv810.i to i32
  %i.hw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.m, i32 noundef %i.hv) #23 ; 0 uses
  %i.hx = load i32, ptr %i.n, align 4, !tbaa !55
  %.not224681.i = icmp sgt i32 %i.hx, 0
  br i1 %.not224681.i, label %.lr.ph683.i, label %.critedge550.preheader.i

.critedge550.preheader.i:                         ; preds = %bb.az, %bb.at
  %i.hy = load i32, ptr %i.o, align 4, !tbaa !55
  %.not228684.i = icmp sgt i32 %i.hy, 0
  br i1 %.not228684.i, label %.lr.ph686.i, label %.thread505.i

.lr.ph683.i:                                      ; preds = %bb.at, %bb.az
  %.0143682.i = phi i32 [ %i.ji, %bb.az ], [ 0, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.hz = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.q)
          to label %bb.au unwind label %bb.av     ; 2 uses

bb.au:                                            ; preds = %.lr.ph683.i
  %.not221.i = icmp eq i32 %i.hz, 1
  br i1 %.not221.i, label %bb.aw, label %.thread500.i

.thread500.i:                                     ; preds = %bb.au
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.19, i32 noundef %i.hz) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %.thread539.i

bb.av:                                            ; preds = %.lr.ph683.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %bb.go

bb.aw:                                            ; preds = %bb.au
  %char0.i280.i = load i8, ptr %i.q, align 16
  %.not7.i281.i = icmp eq i8 %char0.i280.i, 0
  br i1 %.not7.i281.i, label %_ZL13sanitize_namePc.exit285.i, label %.lr.ph.i282.i

.lr.ph.i282.i:                                    ; preds = %bb.aw, %bb.ay
  %.06.i283.i = phi i64 [ %i.ih, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.q, i64 %.06.i283.i ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !30
  %i.if = sext i8 %i.ie to i32
  %i.ig = call i32 @isalnum(i32 noundef %i.if) #25
  %.not.i284.i = icmp eq i32 %i.ig, 0
  br i1 %.not.i284.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i282.i
  store i8 95, ptr %i.id, align 1, !tbaa !30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i282.i
  %i.ih = add nuw nsw i64 %.06.i283.i, 1          ; 2 uses
  %i.ii = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #25
  %i.ij = icmp ult i64 %i.ih, %i.ii
  br i1 %i.ij, label %.lr.ph.i282.i, label %_ZL13sanitize_namePc.exit285.i, !llvm.loop !1

_ZL13sanitize_namePc.exit285.i:                   ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10blob_namesB5cxx11, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.il = load ptr, ptr @_ZL10blob_namesB5cxx11, align 8, !tbaa !20 ; 4 uses
  %.not.i286.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i286.i, label %._crit_edge.i.i25, label %.lr.ph.i287.i

.lr.ph.i287.i:                                    ; preds = %_ZL13sanitize_namePc.exit285.i
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 5                 ; 2 uses
  %i.iq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #23 ; 3 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %.lr.ph.i287.split.us.i, label %.lr.ph.i287.split.i

.lr.ph.i287.split.us.i:                           ; preds = %.lr.ph.i287.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.us.i
  %.0713.i.us.i = phi i64 [ %i.iw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i287.i ] ; 3 uses
  %i.is = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.0713.i.us.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !31
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.us.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.us.i: ; preds = %.lr.ph.i287.split.us.i
  %i.iw = add nuw i64 %.0713.i.us.i, 1            ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.iw, %i.ip
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.i25, label %.lr.ph.i287.split.us.i, !llvm.loop !37

.lr.ph.i287.split.i:                              ; preds = %.lr.ph.i287.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.i
  %.0713.i.i = phi i64 [ %i.jd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.i ], [ 0, %.lr.ph.i287.i ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.0713.i.i ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !31
  %i.ja = icmp eq i64 %i.iz, %i.iq
  br i1 %i.ja, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %.lr.ph.i287.split.i
  %i.jb = load ptr, ptr %i.ix, align 8, !tbaa !26
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.jb, ptr nonnull %i.q, i64 %i.iq)
  %i.jc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.jc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %.lr.ph.i287.split.i
  %i.jd = add nuw i64 %.0713.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jd, %i.ip
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i25, label %.lr.ph.i287.split.i, !llvm.loop !37

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %.lr.ph.i287.split.us.i
  %.us-phi.i = phi i64 [ %.0713.i.us.i, %.lr.ph.i287.split.us.i ], [ %.0713.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ]
  %i.je = trunc i64 %.us-phi.i to i32
  br label %bb.az

._crit_edge.i.i25:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9.i.us.i, %_ZL13sanitize_namePc.exit285.i
  %i.jf = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.q) #22 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
  %.1.i.i = phi i32 [ -1, %._crit_edge.i.i25 ], [ %i.je, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ]
  store i32 %.1.i.i, ptr %i.r, align 4, !tbaa !55
  %i.jh = call i64 @fwrite(ptr noundef nonnull %i.r, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  %i.ji = add nuw nsw i32 %.0143682.i, 1          ; 2 uses
  %i.jj = load i32, ptr %i.n, align 4, !tbaa !55
  %.not224.i = icmp slt i32 %i.ji, %i.jj
  br i1 %.not224.i, label %.lr.ph683.i, label %.critedge550.preheader.i, !llvm.loop !38

.lr.ph686.i:                                      ; preds = %.critedge550.preheader.i, %.critedge550.i
  %20 = phi i32 [ %22, %.critedge550.i ], [ %i.fe, %.critedge550.preheader.i ] ; 3 uses
  %.0142685.i = phi i32 [ %i.le, %.critedge550.i ], [ 0, %.critedge550.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #23
  %i.jk = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.s)
          to label %bb.ba unwind label %bb.bb     ; 2 uses

bb.ba:                                            ; preds = %.lr.ph686.i
  %.not225.i = icmp eq i32 %i.jk, 1
  br i1 %.not225.i, label %bb.bc, label %.thread503.i

.thread503.i:                                     ; preds = %bb.ba
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.jm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jl, ptr noundef nonnull @.str.20, i32 noundef %i.jk) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  br label %.thread539.i

bb.bb:                                            ; preds = %.lr.ph686.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bc:                                            ; preds = %bb.ba
  %char0.i288.i = load i8, ptr %i.s, align 16
  %.not7.i289.i = icmp eq i8 %char0.i288.i, 0
  br i1 %.not7.i289.i, label %_ZL13sanitize_namePc.exit294.i, label %.lr.ph.i290.i

.lr.ph.i290.i:                                    ; preds = %bb.bc, %bb.be
  %.06.i291.i = phi i64 [ %i.js, %bb.be ], [ 0, %bb.bc ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i291.i ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !30
  %i.jq = sext i8 %i.jp to i32
  %i.jr = call i32 @isalnum(i32 noundef %i.jq) #25
  %.not.i292.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i292.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i290.i
  store i8 95, ptr %i.jo, align 1, !tbaa !30
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i290.i
  %i.js = add nuw nsw i64 %.06.i291.i, 1          ; 2 uses
  %i.jt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #25
  %i.ju = icmp ult i64 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph.i290.i, label %_ZL13sanitize_namePc.exit294.i, !llvm.loop !1

_ZL13sanitize_namePc.exit294.i:                   ; preds = %bb.be, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.ei, ptr %9, align 8, !tbaa !28
  %i.jv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.jv, ptr %i.f, align 8, !tbaa !29
  %i.jw = icmp ugt i64 %i.jv, 15
  br i1 %i.jw, label %.noexc.i296.i, label %._crit_edge.i.i295.i

.noexc.i296.i:                                    ; preds = %_ZL13sanitize_namePc.exit294.i
  %i.jx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc297.i unwind label %bb.bo ; 2 uses

.noexc297.i:                                      ; preds = %.noexc.i296.i
  store ptr %i.jx, ptr %9, align 8, !tbaa !26
  %i.jy = load i64, ptr %i.f, align 8, !tbaa !29
  store i64 %i.jy, ptr %i.ei, align 8, !tbaa !30
  br label %._crit_edge.i.i295.i

._crit_edge.i.i295.i:                             ; preds = %.noexc297.i, %_ZL13sanitize_namePc.exit294.i
  %i.jz = phi ptr [ %i.jx, %.noexc297.i ], [ %i.ei, %_ZL13sanitize_namePc.exit294.i ] ; 2 uses
  switch i64 %i.jv, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i295.i
  %i.ka = load i8, ptr %i.s, align 16, !tbaa !30
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !30
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i295.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jz, ptr nonnull align 16 %i.s, i64 %i.jv, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i295.i
  %i.kb = load i64, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  store i64 %i.kb, ptr %i.ej, align 8, !tbaa !31
  %i.kc = load ptr, ptr %9, align 8, !tbaa !26
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kb
  store i8 0, ptr %i.kd, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %21 = sext i32 %20 to i64
  %i.ke = load ptr, ptr @_ZL10blob_namesB5cxx11, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %i.ke, i64 %21 ; 9 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !26 ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 4 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  %i.kj = load ptr, ptr %9, align 8, !tbaa !26    ; 6 uses
  %i.kk = icmp eq ptr %i.kj, %i.ei                ; 2 uses
  br i1 %i.ki, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.bh
  br i1 %i.kk, label %bb.bi, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23: ; preds = %bb.bh
  br i1 %i.kk, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.kl = load i64, ptr %i.ej, align 8, !tbaa !31 ; 3 uses
  %i.km = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.km)
  %.not21.i.i = icmp eq ptr %9, %i.kf
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.bj, !prof !56

bb.bj:                                            ; preds = %bb.bi
  switch i64 %i.kl, label %bb.bl [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.kn = load i8, ptr %i.kj, align 1, !tbaa !30
  store i8 %i.kn, ptr %i.kg, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kg, ptr align 1 %i.kj, i64 %i.kl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.ko = load i64, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !31
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ko
  store i8 0, ptr %i.kr, align 1, !tbaa !30
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.kj, ptr %i.kf, align 8, !tbaa !26
  %i.kt = load i64, ptr %i.ej, align 8, !tbaa !31
  store i64 %i.kt, ptr %i.ks, align 8, !tbaa !31
  %i.ku = load i64, ptr %i.ei, align 8, !tbaa !30
  store i64 %i.ku, ptr %i.kh, align 8, !tbaa !30
  br label %bb.bn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23
  %i.kv = load i64, ptr %i.kh, align 8, !tbaa !30
  store ptr %i.kj, ptr %i.kf, align 8, !tbaa !26
  %i.kw = load i64, ptr %i.ej, align 8, !tbaa !31
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !31
  %i.ky = load i64, ptr %i.ei, align 8, !tbaa !30
  store i64 %i.ky, ptr %i.kh, align 8, !tbaa !30
  %.not.i299.i = icmp eq ptr %i.kg, null
  br i1 %.not.i299.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.kg, ptr %9, align 8, !tbaa !26
  store i64 %i.kv, ptr %i.ei, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ei, ptr %9, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.bn, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.bi
  %i.kz = phi ptr [ %i.kg, %bb.bm ], [ %i.ei, %bb.bn ], [ %i.kj, %bb.bi ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ej, align 8, !tbaa !31
  store i8 0, ptr %i.kz, align 1, !tbaa !30
  %i.la = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.ei
  br i1 %i.lb, label %.critedge550.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  call void @_ZdlPv(ptr noundef %i.la) #21
  br label %.critedge550.i

.critedge550.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.lc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.s, i32 noundef %20) #23 ; 0 uses
  %i.ld = call i64 @fwrite(ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  %22 = add nsw i32 %20, 1                        ; 3 uses
  store i32 %22, ptr %i.k, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  %i.le = add nuw nsw i32 %.0142685.i, 1          ; 2 uses
  %i.lf = load i32, ptr %i.o, align 4, !tbaa !55
  %.not228.i = icmp slt i32 %i.le, %i.lf
  br i1 %.not228.i, label %.lr.ph686.i, label %.thread505.i, !llvm.loop !39

bb.bo:                                            ; preds = %.noexc.i296.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bb
  %.pn226.i = phi { ptr, i32 } [ %i.lg, %bb.bo ], [ %i.jn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  br label %bb.go

.thread505.i:                                     ; preds = %.critedge550.i, %.critedge550.preheader.i
  %.lcssa577.i = phi i32 [ %i.fe, %.critedge550.preheader.i ], [ %22, %.critedge550.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #23
  store i32 0, ptr %i.t, align 4, !tbaa !55
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.thread505.i
  %i.lh = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.t)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %.backedge.i
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %bb.br, label %bb.gb

bb.br:                                            ; preds = %bb.bq
  %i.lj = load i32, ptr %i.t, align 4, !tbaa !55
  %i.lk = icmp slt i32 %i.lj, -23299
  br i1 %i.lk, label %bb.bs, label %bb.cl

bb.bs:                                            ; preds = %bb.br
  %i.ll = call i64 @fwrite(ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #23
  store i32 0, ptr %i.u, align 4, !tbaa !55
  %i.lm = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.u)
          to label %bb.bt unwind label %bb.bw     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %.not250.i = icmp eq i32 %i.lm, 1
  br i1 %.not250.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.lo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.23, i32 noundef %i.lm) #22 ; 0 uses
  br label %.loopexit.jt1.i

bb.bv:                                            ; preds = %.backedge.i
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.bw:                                            ; preds = %bb.bs
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bx:                                            ; preds = %bb.bt
  %i.lr = call i64 @fwrite(ptr noundef nonnull %i.u, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  %i.ls = load i32, ptr %i.u, align 4, !tbaa !55
  %.not261707.i = icmp sgt i32 %i.ls, 0
  br i1 %.not261707.i, label %.lr.ph709.i, label %.loopexit.jt14.i

.lr.ph709.i:                                      ; preds = %bb.bx, %bb.cj
  %.0141708.i = phi i32 [ %i.od, %bb.cj ], [ 0, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #23
  %i.lt = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.v)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %.lr.ph709.i
  %.not260.i = icmp eq i32 %i.lt, 1
  br i1 %.not260.i, label %bb.ca, label %bb.ci

bb.bz:                                            ; preds = %.lr.ph709.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #23
  br label %bb.ck

bb.ca:                                            ; preds = %bb.by
  %i.lv = call fastcc noundef zeroext i1 @_ZL13vstr_is_floatPKc(ptr noundef %i.v)
  br i1 %i.lv, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #23
  %i.lw = load i8, ptr %i.v, align 16, !tbaa !30  ; 3 uses
  switch i8 %i.lw, label %bb.cd [
    i8 43, label %bb.cc
    i8 45, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %.pre.i303.i = load i8, ptr %i.fa, align 1, !tbaa !30
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.lx = phi i8 [ %.pre.i303.i, %bb.cc ], [ %i.lw, %bb.cb ] ; 2 uses
  %.049.i.i = phi ptr [ %i.fa, %bb.cc ], [ %i.v, %bb.cb ] ; 2 uses
  %i.ly = sext i8 %i.lx to i32
  %isdigittmp65.i.i = add nsw i32 %i.ly, -48      ; 2 uses
  %isdigit66.i.i = icmp ult i32 %isdigittmp65.i.i, 10
  br i1 %isdigit66.i.i, label %.lr.ph.i306.i, label %._crit_edge.i304.i

.lr.ph.i306.i:                                    ; preds = %bb.cd, %.lr.ph.i306.i
  %isdigittmp69.i.i = phi i32 [ %isdigittmp.i.i, %.lr.ph.i306.i ], [ %isdigittmp65.i.i, %bb.cd ]
  %.04868.i.i = phi i32 [ %i.ma, %.lr.ph.i306.i ], [ 0, %bb.cd ]
  %.15067.i.i = phi ptr [ %i.mb, %.lr.ph.i306.i ], [ %.049.i.i, %bb.cd ]
  %i.lz = mul i32 %.04868.i.i, 10
  %i.ma = add i32 %i.lz, %isdigittmp69.i.i        ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.15067.i.i, i64 1 ; 3 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !30  ; 2 uses
  %i.md = sext i8 %i.mc to i32
  %isdigittmp.i.i = add nsw i32 %i.md, -48        ; 2 uses
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %.lr.ph.i306.i, label %._crit_edge.loopexit.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i306.i
  %i.me = uitofp i32 %i.ma to double
  br label %._crit_edge.i304.i

._crit_edge.i304.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.cd
  %.150.lcssa.i.i = phi ptr [ %.049.i.i, %bb.cd ], [ %i.mb, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.048.lcssa.i.i = phi double [ 0.000000e+00, %bb.cd ], [ %i.me, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.lcssa.i.i = phi i8 [ %i.lx, %bb.cd ], [ %i.mc, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.mf = icmp eq i8 %.lcssa.i.i, 46
  br i1 %i.mf, label %.preheader64.i.i, label %._crit_edge80.i.i

.preheader64.i.i:                                 ; preds = %._crit_edge.i304.i
  %.25172.i.i = getelementptr inbounds nuw i8, ptr %.150.lcssa.i.i, i64 1 ; 3 uses
  %i.mg = load i8, ptr %.25172.i.i, align 1, !tbaa !30 ; 2 uses
  %i.mh = sext i8 %i.mg to i32
  %isdigittmp5773.i.i = add nsw i32 %i.mh, -48    ; 2 uses
  %isdigit5874.i.i = icmp ult i32 %isdigittmp5773.i.i, 10
  br i1 %isdigit5874.i.i, label %.lr.ph79.i.i, label %._crit_edge80.i.i

.lr.ph79.i.i:                                     ; preds = %.preheader64.i.i, %.lr.ph79.i.i
  %isdigittmp5778.i.i = phi i32 [ %isdigittmp57.i.i, %.lr.ph79.i.i ], [ %isdigittmp5773.i.i, %.preheader64.i.i ]
  %.25177.i.i = phi ptr [ %.251.i.i, %.lr.ph79.i.i ], [ %.25172.i.i, %.preheader64.i.i ]
  %.04676.i.i = phi i32 [ %i.mj, %.lr.ph79.i.i ], [ 0, %.preheader64.i.i ]
  %.04775.i.i = phi i32 [ %i.mk, %.lr.ph79.i.i ], [ 1, %.preheader64.i.i ]
  %i.mi = mul i32 %.04676.i.i, 10
  %i.mj = add i32 %i.mi, %isdigittmp5778.i.i      ; 2 uses
  %i.mk = mul i32 %.04775.i.i, 10                 ; 2 uses
  %.251.i.i = getelementptr inbounds nuw i8, ptr %.25177.i.i, i64 1 ; 3 uses
  %i.ml = load i8, ptr %.251.i.i, align 1, !tbaa !30 ; 2 uses
  %i.mm = sext i8 %i.ml to i32
  %isdigittmp57.i.i = add nsw i32 %i.mm, -48      ; 2 uses
  %isdigit58.i.i = icmp ult i32 %isdigittmp57.i.i, 10
  br i1 %isdigit58.i.i, label %.lr.ph79.i.i, label %._crit_edge80.loopexit.i.i, !llvm.loop !3

._crit_edge80.loopexit.i.i:                       ; preds = %.lr.ph79.i.i
  %i.mn = uitofp i32 %i.mj to double
  %i.mo = uitofp i32 %i.mk to double
  %i.mp = fdiv double %i.mn, %i.mo
  %i.mq = fadd double %.048.lcssa.i.i, %i.mp
  br label %._crit_edge80.i.i

._crit_edge80.i.i:                                ; preds = %._crit_edge80.loopexit.i.i, %.preheader64.i.i, %._crit_edge.i304.i
  %i.mr = phi i8 [ %.lcssa.i.i, %._crit_edge.i304.i ], [ %i.mg, %.preheader64.i.i ], [ %i.ml, %._crit_edge80.loopexit.i.i ]
  %.052.i.i = phi double [ %.048.lcssa.i.i, %._crit_edge.i304.i ], [ %.048.lcssa.i.i, %.preheader64.i.i ], [ %i.mq, %._crit_edge80.loopexit.i.i ] ; 3 uses
  %.3.i.i = phi ptr [ %.150.lcssa.i.i, %._crit_edge.i304.i ], [ %.25172.i.i, %.preheader64.i.i ], [ %.251.i.i, %._crit_edge80.loopexit.i.i ] ; 2 uses
  switch i8 %i.mr, label %_ZL13vstr_to_floatPKc.exit.i [
    i8 101, label %bb.ce
    i8 69, label %bb.ce
  ]

bb.ce:                                            ; preds = %._crit_edge80.i.i, %._crit_edge80.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !30  ; 3 uses
  %.not59.i.i = icmp eq i8 %i.mt, 45
  switch i8 %i.mt, label %bb.cg [
    i8 43, label %bb.cf
    i8 45, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.mu = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2 ; 2 uses
  %.pre113.i.i = load i8, ptr %i.mu, align 1, !tbaa !30
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.mv = phi i8 [ %.pre113.i.i, %bb.cf ], [ %i.mt, %bb.ce ]
  %.4.i.i = phi ptr [ %i.mu, %bb.cf ], [ %i.ms, %bb.ce ]
  %i.mw = sext i8 %i.mv to i32
  %isdigittmp6084.i.i = add nsw i32 %i.mw, -48    ; 2 uses
  %isdigit6185.i.i = icmp ult i32 %isdigittmp6084.i.i, 10
  br i1 %isdigit6185.i.i, label %.lr.ph90.i.i, label %._crit_edge101.i.i

.preheader63.i.i:                                 ; preds = %.lr.ph90.i.i
  %i.mx = icmp ugt i32 %i.mz, 7
  br i1 %i.mx, label %.lr.ph94.i.i, label %.preheader.i.i

.lr.ph90.i.i:                                     ; preds = %bb.cg, %.lr.ph90.i.i
  %isdigittmp6088.i.i = phi i32 [ %isdigittmp60.i.i, %.lr.ph90.i.i ], [ %isdigittmp6084.i.i, %bb.cg ]
end_hunk_0
