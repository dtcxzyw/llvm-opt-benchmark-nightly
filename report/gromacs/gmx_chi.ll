Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_chi?download=true
inline.NumInlined: 1583
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z7gmx_chiiPPc:bb.a
  %i.dq = load float, ptr @_ZZ7gmx_chiiPPcE9core_frac, align 4, !tbaa !39 ; 2 uses
  %i.dr = fcmp ogt float %i.dq, 1.000000e+00
  br i1 %i.dr, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = fcmp olt float %i.dq, 0.000000e+00
  br i1 %i.ds, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %bb.x, %bb.w
  %.str.128.sink = phi ptr [ @.str.128, %bb.w ], [ @.str.129, %bb.x ]
  %.sink = phi float [ 1.000000e+00, %bb.w ], [ 0.000000e+00, %bb.x ]
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.du = call i64 @fwrite(ptr nonnull %.str.128.sink, i64 43, i64 1, ptr %i.dt) #26 ; 0 uses
  store float %.sink, ptr @_ZZ7gmx_chiiPPcE9core_frac, align 4, !tbaa !39
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %i.dv = load i32, ptr @_ZZ7gmx_chiiPPcE6maxchi, align 4, !tbaa !9 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 6
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.130, i32 noundef 6, i32 noundef %i.dv) #27 ; 0 uses
  store i32 6, ptr @_ZZ7gmx_chiiPPcE6maxchi, align 4, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dz = invoke noundef zeroext i1 @_Z8ftp2bSetiiPK8t_filenm(i32 noundef 32, i32 noundef 12, ptr noundef nonnull %22)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i32, ptr @_ZZ7gmx_chiiPPcE4ndeg, align 4, !tbaa !9
  %i.eb = sdiv i32 360, %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  invoke void @_Z11open_symtabP8t_symtab(ptr noundef nonnull %26)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  store ptr %26, ptr %28, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #24
  %i.ec = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 10, i32 noundef 12, ptr noundef nonnull %22)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.ec, ptr %i.ad, align 8, !tbaa !26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef zeroext 2)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  invoke void @_Z16readConfAndAtomsRKNSt10filesystem7__cxx114pathEP8t_symtabPPcP7t_atomsP7PbcTypePPA3_fSE_SD_(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull %26, ptr noundef nonnull %i.ac, ptr noundef nonnull %27, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef null, ptr noundef nonnull %i.t)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i104, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.ee) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i105

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i105: ; preds = %bb.ag, %bb.af
  %i.ef = load ptr, ptr %29, align 8, !tbaa !29   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i105
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit108

_ZNSt10filesystem7__cxx114pathD2Ev.exit108:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.ek = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  store ptr %i.ek, ptr %30, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !43
  store ptr %i.el, ptr %31, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  store ptr %27, ptr %32, align 8, !tbaa !45
  %i.em = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 4 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !47
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit108
  %i.ep = load i32, ptr %27, align 8, !tbaa !55
  %i.eq = sext i32 %i.ep to i64
  %i.er = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 1520, i64 noundef range(i64 -2147483648, 2147483648) %i.eq, i64 noundef 52)
          to label %_ZL13gmx_snew_implI9t_pdbinfoEvPKcS2_iRPT_m.exit unwind label %bb.am

_ZL13gmx_snew_implI9t_pdbinfoEvPKcS2_iRPT_m.exit: ; preds = %bb.ah
  store ptr %i.er, ptr %i.em, align 8, !tbaa !56
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !26
  br label %bb.an

bb.ai:                                            ; preds = %bb.ab
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %29) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn77 = phi { ptr, i32 } [ %i.eu, %bb.ak ], [ %i.et, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.kc

bb.am:                                            ; preds = %bb.ah
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.an:                                            ; preds = %_ZL13gmx_snew_implI9t_pdbinfoEvPKcS2_iRPT_m.exit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit108
  %i.ew = phi ptr [ %.pre, %_ZL13gmx_snew_implI9t_pdbinfoEvPKcS2_iRPT_m.exit ], [ %i.ek, %_ZNSt10filesystem7__cxx114pathD2Ev.exit108 ]
  %i.ex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.133, ptr noundef %i.ew) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.ey = load i8, ptr @_ZZ7gmx_chiiPPcE4bPhi, align 1, !tbaa !33, !range !35, !noundef !36
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = load i8, ptr @_ZZ7gmx_chiiPPcE4bPsi, align 1, !tbaa !33, !range !35, !noundef !36
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load i8, ptr @_ZZ7gmx_chiiPPcE5bHChi, align 1, !tbaa !33, !range !35, !noundef !36
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = load i32, ptr @_ZZ7gmx_chiiPPcE6maxchi, align 4, !tbaa !9
  %i.ff = load i32, ptr @_ZZ7gmx_chiiPPcE2r0, align 4, !tbaa !9
  %i.fg = load i32, ptr @_ZZ7gmx_chiiPPcE2rN, align 4, !tbaa !9
  invoke void @_Z8mk_dlistP8_IO_FILEPK7t_atomsbbbbiii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.38") align 8 %33, ptr noundef %i.cw, ptr noundef nonnull %27, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fb, i1 noundef zeroext %i.cu, i1 noundef zeroext %i.fd, i32 noundef %i.fe, i32 noundef %i.ff, i32 noundef %i.fg)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 21 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.fk = load ptr, ptr %33, align 8, !tbaa !60
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 400
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.134, i64 noundef %i.fo) #27 ; 0 uses
  %i.fq = load ptr, ptr %33, align 8, !tbaa !61   ; 11 uses
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !61 ; 11 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(63) @.str.132, i8 noundef zeroext 2)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 1529, ptr noundef nonnull @.str.135) #28
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

bb.at:                                            ; preds = %bb.ap
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn92 = phi { ptr, i32 } [ %i.fv, %bb.au ], [ %i.fu, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %.body

bb.aw:                                            ; preds = %bb.ao
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fq to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = sdiv exact i64 %i.fy, 400               ; 2 uses
  %i.ga = mul nsw i64 %i.fz, 36
  %i.gb = icmp ugt i64 %i.ga, 2305843009213693951
  br i1 %i.gb, label %.noexc.i, label %.lr.ph.i

.noexc.i:                                         ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.151) #28
          to label %.noexc unwind label %bb.cc

.noexc:                                           ; preds = %.noexc.i
  unreachable

.lr.ph.i:                                         ; preds = %bb.aw
  %i.gc = mul nsw i64 %i.fz, 144                  ; 9 uses
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #29
          to label %.noexc110 unwind label %bb.cc ; 18 uses

.noexc110:                                        ; preds = %.lr.ph.i
  store i32 0, ptr %i.gd, align 4, !tbaa !9, !noalias !62
  %i.ge = getelementptr i8, ptr %i.gd, i64 4
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.gc, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ge, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !9, !noalias !62
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.noexc110
  %indvars.iv.i = phi i64 [ 0, %.noexc110 ], [ %indvars.iv.next.i, %bb.az ] ; 3 uses
  %.sroa.0102.0115.i = phi ptr [ %i.fq, %.noexc110 ], [ %i.gx, %bb.az ] ; 7 uses
  %i.gf = lshr exact i64 %indvars.iv.i, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 48
  %i.gh = trunc nuw i64 %i.gf to i32
  store i32 %i.gh, ptr %i.gg, align 8, !tbaa !9, !noalias !62
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 88
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !65, !noalias !62 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  br i1 %i.gk, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 96
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !68, !noalias !62
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink183.i = phi i32 [ %i.gm, %bb.ay ], [ %i.gj, %bb.ax ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i ; 4 uses
  store i32 %.sink183.i, ptr %i.gn, align 4, !tbaa !9, !noalias !62
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 100
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !69, !noalias !62
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !9, !noalias !62
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 116
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !9, !noalias !62
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !9, !noalias !62
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 104
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !70, !noalias !62
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !9, !noalias !62
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0102.0115.i, i64 400 ; 2 uses
  %.not106.i = icmp eq ptr %i.gx, %i.fr
  br i1 %.not106.i, label %.preheader112.i, label %bb.ax

.preheader111.i:                                  ; preds = %bb.bb
  %i.gy = getelementptr i8, ptr %i.gd, i64 %i.gc  ; 4 uses
  %i.gz = trunc nuw i64 %indvars.iv.next137.i to i32
  br label %.lr.ph125.i

.preheader112.i:                                  ; preds = %bb.az, %bb.bb
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %bb.bb ], [ %indvars.iv.next.i, %bb.az ] ; 3 uses
  %.sroa.0100.0118.i = phi ptr [ %i.hs, %bb.bb ], [ %i.fq, %bb.az ] ; 7 uses
  %i.ha = trunc nuw i64 %indvars.iv136.i to i32
  %i.hb = lshr exact i32 %i.ha, 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 52
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !9, !noalias !62
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 100
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !69, !noalias !62
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv136.i ; 4 uses
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !9, !noalias !62
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 116
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !9, !noalias !62
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !9, !noalias !62
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 104
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !70, !noalias !62
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !9, !noalias !62
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 92
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !71, !noalias !62 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader112.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 108
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !72, !noalias !62
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader112.i
  %.sink.i = phi i32 [ %i.hq, %bb.ba ], [ %i.hn, %.preheader112.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 %.sink.i, ptr %i.hr, align 4, !tbaa !9, !noalias !62
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118.i, i64 400 ; 2 uses
  %.not107.i = icmp eq ptr %i.hs, %i.fr
  br i1 %.not107.i, label %.preheader111.i, label %.preheader112.i

.lr.ph125.i:                                      ; preds = %bb.be, %.preheader111.i
  %.4124.i = phi i32 [ %.5.i, %bb.be ], [ %i.gz, %.preheader111.i ] ; 4 uses
  %.sroa.098.0123.i = phi ptr [ %i.il, %bb.be ], [ %i.fq, %.preheader111.i ] ; 7 uses
  %i.ht = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.098.0123.i)
          to label %bb.bc unwind label %.thread178.i, !noalias !62

bb.bc:                                            ; preds = %.lr.ph125.i
  br i1 %i.ht, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hu = sdiv i32 %.4124.i, 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.098.0123.i, i64 56
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !9, !noalias !62
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.098.0123.i, i64 84
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !73, !noalias !62
  %i.hy = sext i32 %.4124.i to i64
  %i.hz = getelementptr [4 x i8], ptr %i.gd, i64 %i.hy ; 4 uses
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !9, !noalias !62
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.098.0123.i, i64 88
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !65, !noalias !62
  %i.ic = getelementptr i8, ptr %i.hz, i64 4
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !9, !noalias !62
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.098.0123.i, i64 100
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !69, !noalias !62
  %i.if = getelementptr i8, ptr %i.hz, i64 8
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !9, !noalias !62
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.098.0123.i, i64 116
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !9, !noalias !62
  %i.ii = add nsw i32 %.4124.i, 4
  %i.ij = getelementptr i8, ptr %i.hz, i64 12
  store i32 %i.ih, ptr %i.ij, align 4, !tbaa !9, !noalias !62
  br label %bb.be

.thread178.i:                                     ; preds = %.lr.ph125.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.5.i = phi i32 [ %i.ii, %bb.bd ], [ %.4124.i, %bb.bc ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.098.0123.i, i64 400 ; 2 uses
  %.not108.i = icmp eq ptr %i.il, %i.fr
  br i1 %.not108.i, label %.preheader.preheader.i, label %.lr.ph125.i

.split.us.i:                                      ; preds = %bb.bs
  %i.im = sext i32 %.8.5.i to i64                 ; 4 uses
  %41 = lshr exact i64 %i.gc, 2                   ; 6 uses
  %i.in = icmp ult i64 %41, %i.im
  br i1 %i.in, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.split.us.i
  %i.io = sub nuw nsw i64 %i.im, %41              ; 4 uses
  %i.ip = xor i64 %41, 2305843009213693951
  %i.iq = icmp ult i64 %i.ip, %i.io
  br i1 %i.iq, label %bb.bg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.152) #28
          to label %.noexc249 unwind label %bb.bv

.noexc249:                                        ; preds = %bb.bg
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bf
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %41, i64 %i.io)
  %i.ir = add nuw nsw i64 %.sroa.speculated.i.i, %41
  %i.is = call i64 @llvm.umin.i64(i64 %i.ir, i64 2305843009213693951) ; 2 uses
  %i.it = shl nuw nsw i64 %i.is, 2
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #29
          to label %.noexc250 unwind label %bb.bv ; 4 uses

.noexc250:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.gc ; 3 uses
  store i32 0, ptr %i.iv, align 4, !tbaa !9
  %i.iw = add nsw i64 %i.io, -1                   ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc250
  %i.iy = getelementptr i8, ptr %i.iv, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.iw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.iy, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc250
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iu, ptr nonnull align 4 %i.gd, i64 %i.gc, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gc) #25
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.io
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.is
  br label %_ZL12make_chi_indN3gmx8ArrayRefI7t_dlistEE.exit

bb.bh:                                            ; preds = %.split.us.i
  %i.jb = icmp samesign ugt i64 %41, %i.im
  br i1 %i.jb, label %bb.bi, label %_ZL12make_chi_indN3gmx8ArrayRefI7t_dlistEE.exit

bb.bi:                                            ; preds = %bb.bh
  %.idx = shl nuw nsw i64 %i.im, 2                ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx
  %.not.i.i.i109 = icmp eq i64 %i.gc, %.idx
  %spec.select = select i1 %.not.i.i.i109, ptr %i.gy, ptr %i.jc
  br label %_ZL12make_chi_indN3gmx8ArrayRefI7t_dlistEE.exit

._crit_edge.i:                                    ; preds = %bb.bu, %bb.bk
  %.7129.1.i = phi i32 [ %.8.1.i, %bb.bk ], [ %.8.i, %bb.bu ] ; 4 uses
  %.sroa.0.0128.1.i = phi ptr [ %i.jt, %bb.bk ], [ %i.fq, %bb.bu ] ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.1.i, i64 128
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !9, !noalias !62 ; 2 uses
  %.not.1.i = icmp eq i32 %i.je, -1
  br i1 %.not.1.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i
  %i.jf = sdiv i32 %.7129.1.i, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.1.i, i64 64
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !9, !noalias !62
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.1.i, i64 116
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !9, !noalias !62
  %i.jj = sext i32 %.7129.1.i to i64
  %i.jk = getelementptr [4 x i8], ptr %i.gd, i64 %i.jj ; 4 uses
  store i32 %i.ji, ptr %i.jk, align 4, !tbaa !9, !noalias !62
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.1.i, i64 120
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !9, !noalias !62
  %i.jn = getelementptr i8, ptr %i.jk, i64 4
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !9, !noalias !62
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.1.i, i64 124
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !9, !noalias !62
  %i.jq = getelementptr i8, ptr %i.jk, i64 8
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !9, !noalias !62
  %i.jr = add nsw i32 %.7129.1.i, 4
  %i.js = getelementptr i8, ptr %i.jk, i64 12
  store i32 %i.je, ptr %i.js, align 4, !tbaa !9, !noalias !62
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge.i
  %.8.1.i = phi i32 [ %i.jr, %bb.bj ], [ %.7129.1.i, %._crit_edge.i ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.1.i, i64 400 ; 2 uses
  %.not109.1.i = icmp eq ptr %i.jt, %i.fr
  br i1 %.not109.1.i, label %._crit_edge.1.i, label %._crit_edge.i

._crit_edge.1.i:                                  ; preds = %bb.bk, %bb.bm
  %.7129.2.i = phi i32 [ %.8.2.i, %bb.bm ], [ %.8.1.i, %bb.bk ] ; 4 uses
  %.sroa.0.0128.2.i = phi ptr [ %i.kk, %bb.bm ], [ %i.fq, %bb.bk ] ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.2.i, i64 132
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !9, !noalias !62 ; 2 uses
  %.not.2.i = icmp eq i32 %i.jv, -1
  br i1 %.not.2.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.1.i
  %i.jw = sdiv i32 %.7129.2.i, 4
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.2.i, i64 68
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !9, !noalias !62
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.2.i, i64 120
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !9, !noalias !62
  %i.ka = sext i32 %.7129.2.i to i64
  %i.kb = getelementptr [4 x i8], ptr %i.gd, i64 %i.ka ; 4 uses
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !9, !noalias !62
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.2.i, i64 124
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !9, !noalias !62
  %i.ke = getelementptr i8, ptr %i.kb, i64 4
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !9, !noalias !62
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.2.i, i64 128
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !9, !noalias !62
  %i.kh = getelementptr i8, ptr %i.kb, i64 8
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !9, !noalias !62
  %i.ki = add nsw i32 %.7129.2.i, 4
  %i.kj = getelementptr i8, ptr %i.kb, i64 12
  store i32 %i.jv, ptr %i.kj, align 4, !tbaa !9, !noalias !62
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.1.i
  %.8.2.i = phi i32 [ %i.ki, %bb.bl ], [ %.7129.2.i, %._crit_edge.1.i ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.2.i, i64 400 ; 2 uses
  %.not109.2.i = icmp eq ptr %i.kk, %i.fr
  br i1 %.not109.2.i, label %._crit_edge.2.i, label %._crit_edge.1.i

._crit_edge.2.i:                                  ; preds = %bb.bm, %bb.bo
  %.7129.3.i = phi i32 [ %.8.3.i, %bb.bo ], [ %.8.2.i, %bb.bm ] ; 4 uses
  %.sroa.0.0128.3.i = phi ptr [ %i.lb, %bb.bo ], [ %i.fq, %bb.bm ] ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.3.i, i64 136
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !9, !noalias !62 ; 2 uses
  %.not.3.i = icmp eq i32 %i.km, -1
  br i1 %.not.3.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.2.i
  %i.kn = sdiv i32 %.7129.3.i, 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.3.i, i64 72
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !9, !noalias !62
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.3.i, i64 124
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !9, !noalias !62
  %i.kr = sext i32 %.7129.3.i to i64
  %i.ks = getelementptr [4 x i8], ptr %i.gd, i64 %i.kr ; 4 uses
  store i32 %i.kq, ptr %i.ks, align 4, !tbaa !9, !noalias !62
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.3.i, i64 128
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !9, !noalias !62
  %i.kv = getelementptr i8, ptr %i.ks, i64 4
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !9, !noalias !62
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.3.i, i64 132
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !9, !noalias !62
  %i.ky = getelementptr i8, ptr %i.ks, i64 8
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !9, !noalias !62
  %i.kz = add nsw i32 %.7129.3.i, 4
  %i.la = getelementptr i8, ptr %i.ks, i64 12
  store i32 %i.km, ptr %i.la, align 4, !tbaa !9, !noalias !62
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.2.i
  %.8.3.i = phi i32 [ %i.kz, %bb.bn ], [ %.7129.3.i, %._crit_edge.2.i ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.3.i, i64 400 ; 2 uses
  %.not109.3.i = icmp eq ptr %i.lb, %i.fr
  br i1 %.not109.3.i, label %._crit_edge.3.i, label %._crit_edge.2.i

._crit_edge.3.i:                                  ; preds = %bb.bo, %bb.bq
  %.7129.4.i = phi i32 [ %.8.4.i, %bb.bq ], [ %.8.3.i, %bb.bo ] ; 4 uses
  %.sroa.0.0128.4.i = phi ptr [ %i.ls, %bb.bq ], [ %i.fq, %bb.bo ] ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.4.i, i64 140
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !9, !noalias !62 ; 2 uses
  %.not.4.i = icmp eq i32 %i.ld, -1
  br i1 %.not.4.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.3.i
  %i.le = sdiv i32 %.7129.4.i, 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.4.i, i64 76
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !9, !noalias !62
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.4.i, i64 128
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9, !noalias !62
  %i.li = sext i32 %.7129.4.i to i64
  %i.lj = getelementptr [4 x i8], ptr %i.gd, i64 %i.li ; 4 uses
  store i32 %i.lh, ptr %i.lj, align 4, !tbaa !9, !noalias !62
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.4.i, i64 132
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !9, !noalias !62
  %i.lm = getelementptr i8, ptr %i.lj, i64 4
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !9, !noalias !62
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.4.i, i64 136
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !9, !noalias !62
  %i.lp = getelementptr i8, ptr %i.lj, i64 8
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !9, !noalias !62
  %i.lq = add nsw i32 %.7129.4.i, 4
  %i.lr = getelementptr i8, ptr %i.lj, i64 12
  store i32 %i.ld, ptr %i.lr, align 4, !tbaa !9, !noalias !62
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge.3.i
  %.8.4.i = phi i32 [ %i.lq, %bb.bp ], [ %.7129.4.i, %._crit_edge.3.i ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.4.i, i64 400 ; 2 uses
  %.not109.4.i = icmp eq ptr %i.ls, %i.fr
  br i1 %.not109.4.i, label %._crit_edge.4.i, label %._crit_edge.3.i

._crit_edge.4.i:                                  ; preds = %bb.bq, %bb.bs
  %.7129.5.i = phi i32 [ %.8.5.i, %bb.bs ], [ %.8.4.i, %bb.bq ] ; 4 uses
  %.sroa.0.0128.5.i = phi ptr [ %i.mj, %bb.bs ], [ %i.fq, %bb.bq ] ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.5.i, i64 144
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !9, !noalias !62 ; 2 uses
  %.not.5.i = icmp eq i32 %i.lu, -1
  br i1 %.not.5.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %._crit_edge.4.i
  %i.lv = sdiv i32 %.7129.5.i, 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.5.i, i64 80
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !9, !noalias !62
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.5.i, i64 132
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !9, !noalias !62
  %i.lz = sext i32 %.7129.5.i to i64
  %i.ma = getelementptr [4 x i8], ptr %i.gd, i64 %i.lz ; 4 uses
  store i32 %i.ly, ptr %i.ma, align 4, !tbaa !9, !noalias !62
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.5.i, i64 136
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9, !noalias !62
  %i.md = getelementptr i8, ptr %i.ma, i64 4
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !9, !noalias !62
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.5.i, i64 140
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !9, !noalias !62
  %i.mg = getelementptr i8, ptr %i.ma, i64 8
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !9, !noalias !62
  %i.mh = add nsw i32 %.7129.5.i, 4
  %i.mi = getelementptr i8, ptr %i.ma, i64 12
  store i32 %i.lu, ptr %i.mi, align 4, !tbaa !9, !noalias !62
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.4.i
  %.8.5.i = phi i32 [ %i.mh, %bb.br ], [ %.7129.5.i, %._crit_edge.4.i ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.5.i, i64 400 ; 2 uses
  %.not109.5.i = icmp eq ptr %i.mj, %i.fr
  br i1 %.not109.5.i, label %.split.us.i, label %._crit_edge.4.i

.preheader.preheader.i:                           ; preds = %bb.be, %bb.bu
  %.7129.i = phi i32 [ %.8.i, %bb.bu ], [ %.5.i, %bb.be ] ; 4 uses
  %.sroa.0.0128.i = phi ptr [ %i.na, %bb.bu ], [ %i.fq, %bb.be ] ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.i, i64 124
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !9, !noalias !62 ; 2 uses
  %.not.i = icmp eq i32 %i.ml, -1
  br i1 %.not.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.preheader.preheader.i
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0128.i, i64 112
  %i.mn = sdiv i32 %.7129.i, 4
end_hunk_0
