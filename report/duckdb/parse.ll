inline.NumInlined: 971
inline.NumDeleted: 313
begin_hunk_0_@_ZN10duckdb_re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE:bb.a
.loopexit:                                        ; preds = %bb.t
  %i.fx = icmp slt i32 %.2, %.pre
  br i1 %i.fx, label %.preheader112, label %._crit_edge144, !llvm.loop !153

bb.u:                                             ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit
  %.in = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.fy = add nsw i32 %.in, 1                     ; 2 uses
  store i32 %i.fy, ptr %i.ai, align 4, !tbaa !3
  switch i32 %i.fy, label %bb.ab [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
    i32 4, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.fz = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.ga = load i32, ptr %i.ah, align 8, !tbaa !3
  invoke void @_ZN10duckdb_re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.fz, i32 noundef %i.ga, i32 poison, ptr noundef nonnull %i.aj)
          to label %bb.ag unwind label %bb.g

bb.w:                                             ; preds = %bb.u
  %i.gb = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.gc = load i32, ptr %i.ah, align 8, !tbaa !3
  invoke void @_ZN10duckdb_re221FactorAlternationImpl6Round2EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.gb, i32 noundef %i.gc, i32 poison, ptr noundef nonnull %i.aj)
          to label %bb.ag unwind label %bb.g

bb.x:                                             ; preds = %bb.u
  %i.gd = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.ge = load i32, ptr %i.ah, align 8, !tbaa !3
  invoke void @_ZN10duckdb_re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.gd, i32 noundef %i.ge, i32 noundef %2, ptr noundef nonnull %i.aj)
          to label %bb.ag unwind label %bb.g

bb.y:                                             ; preds = %bb.u
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !123 ; 4 uses
  %i.gg = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp eq i64 %i.gj, 48
  br i1 %i.gk, label %.lr.ph.i.i.i.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gl = load i32, ptr %i.ah, align 8, !tbaa !3
  %i.gm = getelementptr inbounds i8, ptr %i.gf, i64 -48 ; 2 uses
  store ptr %i.gm, ptr %i.d, align 8, !tbaa !123
  %i.gn = getelementptr inbounds i8, ptr %i.gf, i64 -32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.go) #28
  %.pre172 = load ptr, ptr %i.d, align 8, !tbaa !110
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit: ; preds = %bb.z, %bb.aa
  %i.gp = phi ptr [ %i.gm, %bb.z ], [ %.pre172, %bb.aa ] ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -32
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !155 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !127
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  store i32 %i.gl, ptr %i.gw, align 4, !tbaa !131
  %i.gx = add nsw i32 %i.gs, 1
  store i32 %i.gx, ptr %i.gr, align 8, !tbaa !155
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge

bb.ab:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i8 0, ptr %5, align 8, !tbaa !67
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.z)
          to label %_ZN10LogMessageC2EPKci.exit93 unwind label %bb.ad

_ZN10LogMessageC2EPKci.exit93:                    ; preds = %bb.ab
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.3, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZN10LogMessageC2EPKci.exit93
  %i.gz = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.gz)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  store ptr %i.w, ptr %i.z, align 8, !tbaa !77
  %i.hb = load i64, ptr %i.y, align 8
  %i.hc = getelementptr inbounds i8, ptr %i.z, i64 %i.hb
  store ptr %i.x, ptr %i.hc, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !77
  %i.hd = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ac
  br i1 %i.he, label %_ZN10LogMessageD2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.hd) #28
  br label %_ZN10LogMessageD2Ev.exit98

_ZN10LogMessageD2Ev.exit98:                       ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #30
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZN10LogMessageC2EPKci.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn83 = phi { ptr, i32 } [ %i.hg, %bb.ae ], [ %i.hf, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.am

bb.ag:                                            ; preds = %bb.x, %bb.w, %bb.v, %_ZN10LogMessageD2Ev.exit98
  %i.hh = load ptr, ptr %i.aj, align 8, !tbaa !112 ; 2 uses
  %i.hi = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hk = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.hl = icmp eq i32 %i.hk, 3
  br i1 %i.hl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = ptrtoint ptr %i.hh to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = sdiv exact i64 %i.ho, 24
  %i.hq = trunc i64 %i.hp to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %storemerge = phi i32 [ %i.hq, %bb.ai ], [ 0, %bb.ah ]
  store i32 %storemerge, ptr %i.ak, align 8, !tbaa !3
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge

.lr.ph.i.i.i.preheader:                           ; preds = %bb.y
  %i.hr = load i32, ptr %i.ah, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hu, %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i ], [ %i.gg, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ht) #28
  br label %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i

_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hu, %i.gf
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !156

_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !154  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #28
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %i.hr

bb.am:                                            ; preds = %bb.k, %.body, %bb.g, %bb.af, %bb.b
  %.pn83.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.b ], [ %.pn83, %bb.af ], [ %i.bj, %bb.g ], [ %.pn, %.body ], [ %i.dh, %bb.k ]
  call void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn83.pn.pn
}

declare noundef ptr @_ZN10duckdb_re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN10duckdb_re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not82 = icmp slt i32 %1, 0
  br i1 %.not82, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = zext nneg i32 %1 to i64
  %4 = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.b

._crit_edge92:                                    ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph91, %bb.n
  %indvars.iv101 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next102, %bb.n ] ; 9 uses
  %.04588 = phi i32 [ 0, %.lr.ph91 ], [ %.2, %bb.n ] ; 6 uses
  %.04686 = phi i32 [ 0, %.lr.ph91 ], [ %.4, %bb.n ] ; 4 uses
  %.04985 = phi ptr [ null, %.lr.ph91 ], [ %.251, %bb.n ] ; 4 uses
  %.05283 = phi i32 [ 0, %.lr.ph91 ], [ %.254, %bb.n ] ; 6 uses
  %i.d = icmp samesign ult i64 %indvars.iv101, %i.c ; 2 uses
  br i1 %i.d, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !26    ; 2 uses
  %i.h = icmp eq i8 %i.g, 5
  br i1 %i.h, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01417.i = phi ptr [ %i.p, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01417.i, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !61   ; 2 uses
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01417.i, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !49
  br label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = icmp eq i16 %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.0.i.i = select i1 %i.m, ptr %i.n, ptr %i.o
  %i.p = load ptr, ptr %.0.i.i, align 8, !tbaa !62 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !26    ; 2 uses
  %i.r = icmp eq i8 %i.q, 5
  br i1 %i.r, label %.lr.ph.i, label %.critedge.i, !llvm.loop !105

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.014.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %i.p, %bb.d ] ; 4 uses
  %.lcssa.i = phi i8 [ %i.g, %bb.c ], [ %i.q, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !49   ; 3 uses
  switch i8 %.lcssa.i, label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit [
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge.i
  %i.u = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 24
  br label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

bb.f:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = freeze i32 %i.w
  br label %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit: ; preds = %.thread.i, %.critedge.i, %bb.e, %bb.f
  %.272.in.in = phi i16 [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.l, %.thread.i ], [ %i.t, %.critedge.i ]
  %.1 = phi i32 [ %i.z, %bb.f ], [ 1, %bb.e ], [ 0, %.thread.i ], [ 0, %.critedge.i ] ; 4 uses
  %.0.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ], [ null, %.thread.i ], [ null, %.critedge.i ] ; 4 uses
  %.272.in = and i16 %.272.in.in, 1
  %.272 = zext nneg i16 %.272.in to i32           ; 2 uses
  %i.aa = icmp eq i32 %.04588, %.272
  br i1 %i.aa, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %.04686, i32 %.1) ; 3 uses
  %or.cond76 = icmp sgt i32 %invariant.smin, 0
  br i1 %or.cond76, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ab = zext nneg i32 %invariant.smin to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.04985, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %.critedge.split.loop.exit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !157

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.split.loop.exit
  %.041.lcssa = phi i32 [ %i.ah, %.critedge.split.loop.exit ], [ %invariant.smin, %bb.g ] ; 2 uses
  %.not56 = icmp eq i32 %.041.lcssa, 0
  br i1 %.not56, label %.critedge.thread, label %bb.n

.critedge.thread:                                 ; preds = %.preheader, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit, %.critedge, %bb.b
  %.070 = phi i32 [ %.04588, %.critedge ], [ %.272, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ 0, %bb.b ], [ %.04588, %.preheader ]
  %.069 = phi i32 [ %.1, %.critedge ], [ %.1, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ 0, %bb.b ], [ %.1, %.preheader ]
  %.042 = phi ptr [ %.0.i, %.critedge ], [ %.0.i, %_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ null, %bb.b ], [ %.0.i, %.preheader ]
  %i.ai = zext nneg i32 %.05283 to i64
  %i.aj = icmp eq i64 %indvars.iv101, %i.ai
  %i.ak = add nuw nsw i32 %.05283, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv101, %i.al
  %or.cond59 = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond59, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  %i.an = tail call noundef ptr @_ZN10duckdb_re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef %.04985, i32 noundef %.04686, i32 noundef %.04588) ; 2 uses
  %i.ao = zext nneg i32 %.05283 to i64            ; 3 uses
  %i.ap = icmp samesign ugt i64 %indvars.iv101, %i.ao
  br i1 %i.ap, label %.lr.ph81, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph81, %bb.h
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv101 to i32
  %i.as = sub nsw i32 %i.ar, %.05283              ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !128 ; 9 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !158
  %.not.i60 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.an, ptr %i.at, align 8, !tbaa !130
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !124
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 %i.as, ptr %i.aw, align 8, !tbaa !132
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 -1, ptr %i.ax, align 4, !tbaa !131
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %3, align 8, !tbaa !127   ; 5 uses
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.k, label %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.be = sdiv exact i64 %i.bc, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 384307168202282325)
  %i.bi = select i1 %i.bg, i64 384307168202282325, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = mul nuw nsw i64 %i.bi, 24
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #31 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 4 uses
  store ptr %i.an, ptr %i.bl, align 8, !tbaa !130
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.aq, ptr %i.bm, align 8, !tbaa !124
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 %i.as, ptr %i.bn, align 8, !tbaa !132
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 -1, ptr %i.bo, align 4, !tbaa !131
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !159, !alias.scope !160
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.at
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i35.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #28
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.bk, ptr %3, align 8, !tbaa !127
  store ptr %i.br, ptr %i.a, align 8, !tbaa !128
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bs, ptr %i.b, align 8, !tbaa !158
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

.lr.ph81:                                         ; preds = %bb.h, %.lr.ph81
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph81 ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv97
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  tail call void @_ZN10duckdb_re26Regexp19RemoveLeadingStringEPS0_i(ptr noundef %i.bu, i32 noundef %.04686)
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bv = and i64 %indvars.iv.next98, 4294967295
  %exitcond100.not = icmp eq i64 %i.bv, %indvars.iv101
  br i1 %exitcond100.not, label %._crit_edge, label %.lr.ph81, !llvm.loop !165

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i, %.critedge.thread
  br i1 %i.d, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit
  %i.bw = trunc nuw nsw i64 %indvars.iv101 to i32
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit, %bb.m, %.critedge
  %.254 = phi i32 [ %.05283, %.critedge ], [ %i.bw, %bb.m ], [ %.05283, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit ]
  %.251 = phi ptr [ %.04985, %.critedge ], [ %.042, %bb.m ], [ %.04985, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit ]
  %.4 = phi i32 [ %.041.lcssa, %.critedge ], [ %.069, %bb.m ], [ %.04686, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit ]
  %.2 = phi i32 [ %.04588, %.critedge ], [ %.070, %bb.m ], [ %.04588, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count
  br i1 %exitcond104.not, label %._crit_edge92, label %bb.b, !llvm.loop !166
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re221FactorAlternationImpl6Round2EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not67 = icmp slt i32 %1, 0
  br i1 %.not67, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = zext nneg i32 %1 to i64
  %4 = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.b

._crit_edge74:                                    ; preds = %bb.w, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph73, %bb.w
  %indvars.iv77 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next78, %bb.w ] ; 9 uses
  %.04970 = phi ptr [ null, %.lr.ph73 ], [ %.2, %bb.w ] ; 10 uses
  %.05068 = phi i32 [ 0, %.lr.ph73 ], [ %.252, %bb.w ] ; 6 uses
  %i.d = icmp samesign ult i64 %indvars.iv77, %i.c ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv77
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !26
  switch i8 %i.g, label %.fold.split.i [
    i8 2, label %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit
    i8 5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !61
  %i.j = icmp ugt i16 %i.i, 1
  br i1 %i.j, label %bb.e, label %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !26
  %i.o = icmp eq i8 %i.n, 2
  %spec.select.i = select i1 %i.o, ptr null, ptr %i.m
  br label %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit

.fold.split.i:                                    ; preds = %bb.c
  br label %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit

_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit:  ; preds = %bb.c, %bb.d, %bb.e, %.fold.split.i
  %.1.i = phi ptr [ %spec.select.i, %bb.e ], [ null, %bb.c ], [ %i.f, %.fold.split.i ], [ %i.f, %bb.d ] ; 6 uses
  %.not54 = icmp eq ptr %.04970, null
  br i1 %.not54, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit
  %i.p = load i8, ptr %.04970, align 8, !tbaa !26
  switch i8 %i.p, label %bb.j [
    i8 14, label %bb.i
    i8 15, label %bb.i
    i8 16, label %bb.i
    i8 17, label %bb.i
    i8 18, label %bb.i
    i8 19, label %bb.i
    i8 20, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.04970, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.04970, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !27
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.04970, i64 6
  %i.w = load i16, ptr %i.v, align 2, !tbaa !61
  %i.x = icmp ult i16 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %.04970, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.0.i = select i1 %i.x, ptr %i.y, ptr %i.z
  %i.aa = load ptr, ptr %.0.i, align 8, !tbaa !62
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !26
  switch i8 %i.ab, label %bb.j [
    i8 3, label %bb.i
    i8 20, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ac = tail call noundef zeroext i1 @_ZN10duckdb_re26Regexp5EqualEPS0_S1_(ptr noundef nonnull %.04970, ptr noundef %.1.i)
  br i1 %i.ac, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit, %bb.g, %bb.i, %bb.b
  %spec.select56 = phi ptr [ %.1.i, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ], [ %.1.i, %bb.f ], [ %.1.i, %_ZN10duckdb_re26Regexp13LeadingRegexpEPS0_.exit ], [ %.04970, %bb.b ]
  %i.ad = zext i32 %.05068 to i64
  %i.ae = icmp eq i64 %indvars.iv77, %i.ad
  %i.af = add nsw i32 %.05068, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp eq i64 %indvars.iv77, %i.ag
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond, label %._ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit_crit_edge, label %bb.k

._ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit_crit_edge: ; preds = %bb.j
  %.pre = trunc nuw nsw i64 %indvars.iv77 to i32
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call noundef ptr @_ZN10duckdb_re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %.04970) ; 2 uses
  %i.aj = sext i32 %.05068 to i64                 ; 3 uses
  %i.ak = icmp sgt i64 %indvars.iv77, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit, %bb.k
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv77 to i32  ; 3 uses
  %i.an = sub nsw i32 %i.am, %.05068              ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !128 ; 9 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !158
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !130
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !124
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %i.an, ptr %i.ar, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i32 -1, ptr %i.as, align 4, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.at, ptr %i.a, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

bb.m:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %3, align 8, !tbaa !127   ; 5 uses
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.n, label %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.az = sdiv exact i64 %i.ax, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 384307168202282325)
  %i.bd = select i1 %i.bb, i64 384307168202282325, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = mul nuw nsw i64 %i.bd, 24
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax ; 4 uses
  store ptr %i.ai, ptr %i.bg, align 8, !tbaa !130
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.al, ptr %i.bh, align 8, !tbaa !124
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 %i.an, ptr %i.bi, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 -1, ptr %i.bj, align 4, !tbaa !131
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !159, !alias.scope !167
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bf, %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i35.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #28
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.bf, ptr %3, align 8, !tbaa !127
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !128
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !158
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

.lr.ph:                                           ; preds = %bb.k, %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit ], [ %i.aj, %bb.k ] ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 9 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !26
  switch i8 %i.bq, label %bb.u [
    i8 2, label %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit
    i8 5, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 6 ; 3 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !61
  %i.bt = icmp ugt i16 %i.bs, 1
  br i1 %i.bt, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !62 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !26
  %i.by = icmp eq i8 %i.bx, 2
  br i1 %i.by, label %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bw)
  store ptr null, ptr %i.bv, align 8, !tbaa !62
  %i.bz = load i16, ptr %i.br, align 2, !tbaa !61 ; 2 uses
  %i.ca = icmp eq i16 %i.bz, 2
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  store ptr null, ptr %i.cb, align 8, !tbaa !62
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bp)
  br label %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.cd = add i16 %i.bz, -1                       ; 2 uses
  store i16 %i.cd, ptr %i.br, align 2, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cf = zext i16 %i.cd to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %i.ce, i64 %i.cg, i1 false)
  br label %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit

bb.u:                                             ; preds = %bb.p, %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !49
  %i.cj = zext i16 %i.ci to i32
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bp)
  %i.ck = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 3 uses
  invoke void @_ZN10duckdb_re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i32 noundef 2, i32 noundef %i.cj)
          to label %_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ck) #28
  resume { ptr, i32 } %i.cl

_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_.exit: ; preds = %.lr.ph, %bb.q, %bb.s, %bb.t, %bb.u
  %.1.i60 = phi ptr [ %i.bp, %bb.q ], [ %i.bp, %.lr.ph ], [ %i.bp, %bb.t ], [ %i.cc, %bb.s ], [ %i.ck, %bb.u ]
  store ptr %.1.i60, ptr %i.bo, align 8, !tbaa !62
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cm = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.cm, %indvars.iv77
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit: ; preds = %._ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit_crit_edge, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l
  %.pre-phi = phi i32 [ %.pre, %._ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit_crit_edge ], [ %i.am, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.am, %bb.l ]
  %spec.select = select i1 %i.d, i32 %.pre-phi, i32 %.05068
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit
  %.252 = phi i32 [ %spec.select, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit ], [ %.05068, %bb.i ]
  %.2 = phi ptr [ %spec.select56, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit ], [ %.04970, %bb.i ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond80.not, label %._crit_edge74, label %bb.b, !llvm.loop !172
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_re2::CharClassBuilder", align 8 ; 11 uses
  %5 = alloca %class.LogMessage, align 8          ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not110 = icmp slt i32 %1, 0
  br i1 %.not110, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 345
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = zext nneg i32 %1 to i64
  %7 = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %bb.b

._crit_edge117:                                   ; preds = %bb.al, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph116, %bb.al
  %indvars.iv119 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next120, %bb.al ] ; 9 uses
  %.048113 = phi i32 [ 0, %.lr.ph116 ], [ %.2, %bb.al ] ; 7 uses
  %.058112 = phi ptr [ null, %.lr.ph116 ], [ %.260, %bb.al ] ; 5 uses
  %i.aa = icmp samesign ult i64 %indvars.iv119, %i.z ; 2 uses
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62 ; 4 uses
  %.not65 = icmp eq ptr %.058112, null
  br i1 %.not65, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %.058112, align 8, !tbaa !26
  switch i8 %i.ad, label %bb.f [
    i8 3, label %bb.e
    i8 20, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ae = load i8, ptr %i.ac, align 8, !tbaa !26
  switch i8 %i.ae, label %bb.f [
    i8 3, label %bb.al
    i8 20, label %bb.al
  ]

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %spec.select = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ], [ %.058112, %bb.b ]
  %i.af = zext i32 %.048113 to i64
  %i.ag = icmp eq i64 %indvars.iv119, %i.af
  %i.ah = add nsw i32 %.048113, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp eq i64 %indvars.iv119, %i.ai
  %or.cond = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond, label %._crit_edge123, label %bb.g

._crit_edge123:                                   ; preds = %bb.f
  %.pre = trunc nuw nsw i64 %indvars.iv119 to i32
  br label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN10duckdb_re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
  %i.ak = sext i32 %.048113 to i64                ; 3 uses
  %i.al = icmp sgt i64 %indvars.iv119, %i.ak
  br i1 %i.al, label %.lr.ph109, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %bb.g
  %i.am = invoke noundef ptr @_ZN10duckdb_re216CharClassBuilder12GetCharClassEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ab unwind label %bb.ai

.lr.ph109:                                        ; preds = %bb.g, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ %i.ak, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62 ; 7 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !26
  switch i8 %i.ap, label %bb.p [
    i8 20, label %bb.h
    i8 3, label %bb.l
  ]

bb.h:                                             ; preds = %.lr.ph109
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !173
  %.not71106 = icmp eq i32 %i.au, 0
  br i1 %.not71106, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !176
  br label %.lr.ph

bb.i:                                             ; preds = %bb.o, %bb.n, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.0107 = phi ptr [ %i.bc, %bb.k ], [ %i.av, %.lr.ph.preheader ] ; 3 uses
  %i.ay = load i32, ptr %.0107, align 4, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %.0107, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !177
  %i.bb = invoke noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ay, i32 noundef %i.ba)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.k:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.0107, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !176
  %i.be = load i32, ptr %i.at, align 8, !tbaa !173
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bf
  %.not71 = icmp eq ptr %i.bc, %i.bg
  br i1 %.not71, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit, label %.lr.ph, !llvm.loop !178

bb.l:                                             ; preds = %.lr.ph109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !27 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !49
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = and i32 %i.bl, 2052
  %i.bn = icmp ne i32 %i.bm, 4
  %i.bo = icmp eq i32 %i.bi, 10
  %or.cond3.i = and i1 %i.bo, %i.bn
  br i1 %or.cond3.i, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = and i32 %i.bl, 1
  %.not20.i = icmp eq i32 %i.bp, 0
  br i1 %.not20.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN10duckdb_re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.bi, i32 noundef %i.bi, i32 noundef 0)
          to label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit unwind label %bb.i, !inline_history !179

bb.o:                                             ; preds = %bb.m
  %i.bq = invoke noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.bi, i32 noundef %i.bi)
          to label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit unwind label %bb.i, !inline_history !179 ; 0 uses

bb.p:                                             ; preds = %.lr.ph109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i8 0, ptr %5, align 8, !tbaa !67
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !77
  store ptr null, ptr %i.c, align 8, !tbaa !133
  store i8 0, ptr %i.d, align 8, !tbaa !146
  store i8 0, ptr %i.e, align 1, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !77
  %i.br = load i64, ptr %i.i, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.a, i64 %i.br
  store ptr %i.h, ptr %i.bs, align 8, !tbaa !77
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.a, i64 %i.bv
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bw, ptr noundef null)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.b, align 8, !tbaa !77
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.a, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !77
  store i32 16, ptr %i.m, align 8, !tbaa !148
  store ptr %i.o, ptr %i.n, align 8, !tbaa !102
  store i64 0, ptr %i.p, align 8, !tbaa !103
  store i8 0, ptr %i.o, align 8, !tbaa !27
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %i.a, i64 %i.bz
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ca, ptr noundef nonnull %i.j)
          to label %_ZN10LogMessageC2EPKci.exit unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.pn.i = phi { ptr, i32 } [ %i.cb, %bb.r ], [ %i.cc, %bb.s ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #30
  br label %.body

_ZN10LogMessageC2EPKci.exit:                      ; preds = %bb.q
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.4, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN10LogMessageC2EPKci.exit
  %i.ce = load i8, ptr %i.ao, align 8, !tbaa !26
  %i.cf = zext i8 %i.ce to i32
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.cf)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE:bb.a
  store ptr %i.t, ptr %i.co, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !77
  %i.cp = load ptr, ptr %i.n, align 8, !tbaa !28  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.o
  br i1 %i.cq, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cp) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #30
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

bb.w:                                             ; preds = %bb.u, %_ZN10LogMessageC2EPKci.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.y:                                             ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.r
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.x
  %.pn67 = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ct, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.w
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.cr, %bb.w ]
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #30
  br label %.body

.body:                                            ; preds = %bb.t, %bb.z
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.z ], [ %.pn.pn.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aj

_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit: ; preds = %bb.k, %bb.h, %bb.l, %bb.n, %bb.o, %_ZN10LogMessageD2Ev.exit
  invoke void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
          to label %bb.aa unwind label %bb.i

bb.aa:                                            ; preds = %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cw = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.cw, %indvars.iv119
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph109, !llvm.loop !180

bb.ab:                                            ; preds = %._crit_edge
  %i.cx = invoke noundef ptr @_ZN10duckdb_re26Regexp12NewCharClassEPNS_9CharClassENS0_10ParseFlagsE(ptr noundef %i.am, i32 noundef %2)
          to label %bb.ac unwind label %bb.ai     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv119 to i32 ; 2 uses
  %i.da = sub nsw i32 %i.cz, %.048113             ; 2 uses
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !128 ; 9 uses
  %i.dc = load ptr, ptr %i.w, align 8, !tbaa !158
  %.not.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !130
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.cy, ptr %i.dd, align 8, !tbaa !124
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i32 %i.da, ptr %i.de, align 8, !tbaa !132
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  store i32 -1, ptr %i.df, align 4, !tbaa !131
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %i.dg, ptr %i.v, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dh = load ptr, ptr %3, align 8, !tbaa !127   ; 5 uses
  %i.di = ptrtoint ptr %i.db to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.af, label %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
          to label %.noexc90 unwind label %.loopexit.split-lp

.noexc90:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.dm = sdiv exact i64 %i.dk, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 384307168202282325)
  %i.dq = select i1 %i.do, i64 384307168202282325, i64 %i.dp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dr = mul nuw nsw i64 %i.dq, 24
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #31
          to label %.noexc91 unwind label %.loopexit ; 5 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk ; 4 uses
  store ptr %i.cx, ptr %i.dt, align 8, !tbaa !130
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.cy, ptr %i.du, align 8, !tbaa !124
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 %i.da, ptr %i.dv, align 8, !tbaa !132
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 -1, ptr %i.dw, align 4, !tbaa !131
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.db
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc91, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i ], [ %i.ds, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %i.dh, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !159, !alias.scope !181
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.db
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ds, %.noexc91 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i35.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #28
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.ds, ptr %3, align 8, !tbaa !127
  store ptr %i.dz, ptr %i.v, align 8, !tbaa !128
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.ea, ptr %i.w, align 8, !tbaa !158
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ad
  %i.eb = load ptr, ptr %i.y, align 8, !tbaa !33
  invoke void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.eb)
          to label %_ZN10duckdb_re216CharClassBuilderD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #29
  unreachable

_ZN10duckdb_re216CharClassBuilderD2Ev.exit:       ; preds = %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ab, %._crit_edge
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10duckdb_re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ai, %bb.i, %bb.j, %.body
  %.pn72.pn = phi { ptr, i32 } [ %.pn67.pn.pn, %.body ], [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %i.ee, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10duckdb_re216CharClassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn72.pn

bb.ak:                                            ; preds = %._crit_edge123, %_ZN10duckdb_re216CharClassBuilderD2Ev.exit
  %.pre-phi = phi i32 [ %.pre, %._crit_edge123 ], [ %i.cz, %_ZN10duckdb_re216CharClassBuilderD2Ev.exit ]
  %spec.select76 = select i1 %i.aa, i32 %.pre-phi, i32 %.048113
  br label %bb.al

bb.al:                                            ; preds = %bb.e, %bb.e, %bb.ak
  %.260 = phi ptr [ %spec.select, %bb.ak ], [ %.058112, %bb.e ], [ %.058112, %bb.e ]
  %.2 = phi i32 [ %spec.select76, %bb.ak ], [ %.048113, %bb.e ], [ %.048113, %bb.e ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  br i1 %exitcond122.not, label %._crit_edge117, label %bb.b, !llvm.loop !185
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #28
  br label %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i

_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !156

_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN10duckdb_re25FrameEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN10duckdb_re25FrameESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #28
  br label %_ZNSt12_Vector_baseIN10duckdb_re25FrameESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN10duckdb_re25FrameESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN10duckdb_re25FrameES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN10duckdb_re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN10duckdb_re26Regexp5EqualEPS0_S1_(ptr noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN10duckdb_re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = and i32 %3, 2052
  %i.b = icmp ne i32 %i.a, 4
  %i.c = icmp slt i32 %1, 11
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp sgt i32 %2, 9
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 10
  br i1 %i.e, label %bb.c, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %3, 1
  %.not20.i = icmp eq i32 %i.f, 0
  br i1 %.not20.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN10duckdb_re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef 9, i32 noundef 0), !inline_history !179
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef 9), !inline_history !179 ; 0 uses
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit: ; preds = %bb.e, %bb.d, %bb.b
  %i.h = icmp samesign ugt i32 %2, 10
  br i1 %i.h, label %bb.f, label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit24

bb.f:                                             ; preds = %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit
  %i.i = and i32 %3, 1
  %.not20.i23 = icmp eq i32 %i.i, 0
  br i1 %.not20.i23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN10duckdb_re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 11, i32 noundef %2, i32 noundef 0), !inline_history !179
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit24

bb.h:                                             ; preds = %bb.f
  %i.j = tail call noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 11, i32 noundef %2), !inline_history !179 ; 0 uses
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit24

bb.i:                                             ; preds = %bb.a
  %i.k = and i32 %3, 1
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN10duckdb_re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit24

bb.k:                                             ; preds = %bb.i
  %i.l = tail call noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit24

_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit24: ; preds = %bb.h, %bb.g, %bb.j, %bb.k, %_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit
  ret void
}

declare void @_ZN10duckdb_re26Regexp8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef ptr @_ZN10duckdb_re26Regexp12NewCharClassEPNS_9CharClassENS0_10ParseFlagsE(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re26Regexp10ParseState10DoCollapseENS_8RegexpOpE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %.not68 = icmp eq ptr %i.b, null
  br i1 %.not68, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !26    ; 2 uses
  %i.d = icmp ugt i8 %i.c, 21
  br i1 %i.d, label %.critedge, label %.lr.ph111

.lr.ph:                                           ; preds = %bb.c
  %i.e = load i8, ptr %i.j, align 8, !tbaa !26    ; 2 uses
  %i.f = icmp ugt i8 %i.e, 21
  br i1 %i.f, label %.critedge, label %.lr.ph111, !llvm.loop !186

.lr.ph111:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.g = phi i8 [ %i.e, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %.04869110 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.071109 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.h = zext nneg i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %.04869110, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 4 uses
  %i.k = icmp eq i32 %1, %i.h
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph111
  %i.l = getelementptr inbounds nuw i8, ptr %.04869110, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !61
  %i.n = zext i16 %i.m to i32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph111, %bb.b
  %.pn55 = phi i32 [ %i.n, %bb.b ], [ 1, %.lr.ph111 ]
  %.1 = add nuw nsw i32 %.pn55, %.071109          ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %..critedge_crit_edge, label %.lr.ph, !llvm.loop !186

..critedge_crit_edge:                             ; preds = %bb.c
  br label %.critedge, !llvm.loop !186

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge_crit_edge
  %.040.lcssa = phi ptr [ null, %..critedge_crit_edge ], [ null, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %.0.lcssa = phi i32 [ %.1, %..critedge_crit_edge ], [ 0, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = icmp eq ptr %i.p, %.040.lcssa
  br i1 %i.q, label %bb.p, label %.lr.ph86.preheader

.thread:                                          ; preds = %bb.a
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef 0) #31
  br label %.critedge2

.lr.ph86.preheader:                               ; preds = %.critedge
  %i.s = zext nneg i32 %.0.lcssa to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 8 uses
  %i.v = load i8, ptr %i.b, align 8, !tbaa !26    ; 2 uses
  %i.w = icmp ugt i8 %i.v, 21
  br i1 %i.w, label %.critedge2, label %.lr.ph117

.lr.ph86:                                         ; preds = %bb.n
  %i.x = load i8, ptr %i.ac, align 8, !tbaa !26   ; 2 uses
  %i.y = icmp ugt i8 %i.x, 21
  br i1 %i.y, label %.critedge2, label %.lr.ph117, !llvm.loop !187

.lr.ph117:                                        ; preds = %.lr.ph86.preheader, %.lr.ph86
  %i.z = phi i8 [ %i.x, %.lr.ph86 ], [ %i.v, %.lr.ph86.preheader ] ; 2 uses
  %.14982116 = phi ptr [ %i.ac, %.lr.ph86 ], [ %i.b, %.lr.ph86.preheader ] ; 7 uses
  %.04683115 = phi i32 [ %.2, %.lr.ph86 ], [ %.0.lcssa, %.lr.ph86.preheader ] ; 3 uses
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.14982116, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 4 uses
  %i.ad = icmp eq i32 %1, %i.aa
  br i1 %i.ad, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph117
  %i.ae = getelementptr inbounds nuw i8, ptr %.14982116, i64 6
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !61 ; 3 uses
  %i.ag = icmp ult i16 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.14982116, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
end_hunk_1
