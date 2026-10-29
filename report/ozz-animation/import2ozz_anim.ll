Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/import2ozz_anim?download=true
inline.NumInlined: 815
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3ozz9animation7offline16ImportAnimationsERKN4Json5ValueEPNS1_11OzzImporterENS_10EndiannessE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !109, !noalias !111
  %.not.i1.i.i125.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i1.i.i125.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 67
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17, !noalias !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i126.i

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cn)
          to label %.noexc129.i unwind label %bb.an, !noalias !111

.noexc129.i:                                      ; preds = %bb.ae
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !15, !noalias !111
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !111
  %i.cv = invoke noundef signext i8 %i.cu(ptr noundef nonnull align 8 dereferenceable(570) %i.cn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i126.i unwind label %bb.an, !noalias !111, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i126.i: ; preds = %.noexc129.i, %bb.ad
  %.0.i.i.i127.i = phi i8 [ %i.cr, %bb.ad ], [ %i.cv, %.noexc129.i ]
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef signext %.0.i.i.i127.i)
          to label %.noexc131.i unwind label %bb.an, !noalias !111

.noexc131.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i126.i
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %_ZNSolsEPFRSoS_E.exit52.i unwind label %bb.an, !noalias !111 ; 0 uses

_ZNSolsEPFRSoS_E.exit52.i:                        ; preds = %.noexc131.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %39) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19, !noalias !111
  invoke void @_ZN3ozz2io4FileC1EPKcS3_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.17)
          to label %bb.af unwind label %bb.ap, !noalias !111

bb.af:                                            ; preds = %_ZNSolsEPFRSoS_E.exit52.i
  %i.cy = invoke noundef zeroext i1 @_ZNK3ozz2io4File6openedEv(ptr noundef nonnull align 8 dereferenceable(16) %40)
          to label %bb.ag unwind label %bb.aq, !noalias !111

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cy, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19, !noalias !111
  invoke void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %41)
          to label %bb.ai unwind label %bb.ar, !noalias !111

bb.ai:                                            ; preds = %bb.ah
  %i.cz = load ptr, ptr %41, align 8, !tbaa !87, !noalias !111, !nonnull !88, !align !89 ; 6 uses
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.18, i64 noundef 48)
          to label %_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit.i unwind label %bb.as, !noalias !111 ; 0 uses

_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit.i:       ; preds = %bb.ai
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #19, !noalias !111
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull %i.bh, i64 noundef %i.db)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i unwind label %bb.as, !noalias !111 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i: ; preds = %_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit.i
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i unwind label %bb.as, !noalias !111 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !15, !noalias !111
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8, !noalias !111
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !103, !noalias !111 ; 6 uses
  %.not.i.i.i134.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i134.i, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135.i

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc139.i unwind label %bb.as, !noalias !111

.noexc139.i:                                      ; preds = %bb.aj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !109, !noalias !111
  %.not.i1.i.i136.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i1.i.i136.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 67
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !17, !noalias !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i137.i

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dj)
          to label %.noexc140.i unwind label %bb.as, !noalias !111

.noexc140.i:                                      ; preds = %bb.al
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !15, !noalias !111
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !111
  %i.dr = invoke noundef signext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(570) %i.dj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i137.i unwind label %bb.as, !noalias !111, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i137.i: ; preds = %.noexc140.i, %bb.ak
  %.0.i.i.i138.i = phi i8 [ %i.dn, %bb.ak ], [ %i.dr, %.noexc140.i ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i8 noundef signext %.0.i.i.i138.i)
          to label %.noexc142.i unwind label %bb.as, !noalias !111

.noexc142.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i137.i
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %.critedge47.i unwind label %bb.as, !noalias !111 ; 0 uses

.critedge47.i:                                    ; preds = %.noexc142.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %41) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !111
  store ptr null, ptr %53, align 8, !tbaa !113, !alias.scope !111
  br label %thread-pre-split

bb.am:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %.noexc131.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i126.i, %.noexc129.i, %bb.ae, %bb.ac, %_ZN3ozz3log6LoggerlsIA39_cEERSoRKT_.exit.i, %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %39) #19, !noalias !111
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.dv, %bb.an ], [ %i.du, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !111
  br label %bb.cp

bb.ap:                                            ; preds = %_ZNSolsEPFRSoS_E.exit52.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.aq:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ar:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %.noexc142.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i137.i, %.noexc140.i, %bb.al, %bb.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i, %_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit.i, %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %41) #19, !noalias !111
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn27.i = phi { ptr, i32 } [ %i.dz, %bb.as ], [ %i.dy, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !111
  br label %bb.cn

bb.au:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19, !noalias !111
  invoke void @_ZN3ozz2io8IArchiveC1EPNS0_6StreamE(ptr noundef nonnull align 8 dereferenceable(9) %42, ptr noundef nonnull %40)
          to label %bb.av unwind label %bb.cc, !noalias !111

bb.av:                                            ; preds = %bb.au
  %i.ea = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !15, !noalias !111
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !111
  %i.ee = invoke noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %.noexc62.i unwind label %bb.cc, !noalias !111, !inline_history !66

.noexc62.i:                                       ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19, !noalias !111
  %i.ef = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !15, !noalias !111
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !111
  %i.ej = invoke noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull %i.h, i64 noundef 17)
          to label %.noexc63.i unwind label %bb.cc, !noalias !111, !inline_history !66

.noexc63.i:                                       ; preds = %.noexc62.i
  %i.ek = load <16 x i8>, ptr %i.h, align 16, !noalias !111
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.em = load i8, ptr %i.el, align 16, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19, !noalias !111
  %i.en = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !15, !noalias !111
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !111
  %i.er = invoke noundef i32 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i32 noundef %i.ee, i32 noundef 2)
          to label %_ZN3ozz2io8IArchive7TestTagINS_9animation7offline11RawSkeletonEEEbv.exit.i unwind label %bb.cc, !noalias !111, !inline_history !66 ; 0 uses

_ZN3ozz2io8IArchive7TestTagINS_9animation7offline11RawSkeletonEEEbv.exit.i: ; preds = %.noexc63.i
  %.not.i.i.i = icmp eq i64 %i.ej, 17
  %.fr = freeze <16 x i8> %i.ek
  %i.es = icmp eq i8 %i.em, 0
  %i.et = icmp ne <16 x i8> %.fr, <i8 111, i8 122, i8 122, i8 45, i8 114, i8 97, i8 119, i8 95, i8 115, i8 107, i8 101, i8 108, i8 101, i8 116, i8 111, i8 110>
  %i.eu = bitcast <16 x i1> %i.et to i16
  %i.ev = icmp eq i16 %i.eu, 0
  %i.ew = and i1 %i.ev, %.not.i.i.i
  %op.rdx1823 = select i1 %i.ew, i1 %i.es, i1 false
  br i1 %op.rdx1823, label %bb.aw, label %bb.ca

bb.aw:                                            ; preds = %_ZN3ozz2io8IArchive7TestTagINS_9animation7offline11RawSkeletonEEEbv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19, !noalias !111
  invoke void @_ZN3ozz3log4LogVC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %43)
          to label %bb.ax unwind label %bb.bl, !noalias !111

bb.ax:                                            ; preds = %bb.aw
  %i.ex = load ptr, ptr %43, align 8, !tbaa !87, !noalias !111, !nonnull !88, !align !89 ; 4 uses
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.20, i64 noundef 30)
          to label %_ZN3ozz3log6LoggerlsIA31_cEERSoRKT_.exit.i unwind label %bb.bm, !noalias !111 ; 0 uses

_ZN3ozz3log6LoggerlsIA31_cEERSoRKT_.exit.i:       ; preds = %bb.ax
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !15, !noalias !111
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !111
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 240
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !103, !noalias !111 ; 6 uses
  %.not.i.i.i145.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i145.i, label %bb.ay, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i146.i

bb.ay:                                            ; preds = %_ZN3ozz3log6LoggerlsIA31_cEERSoRKT_.exit.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc150.i unwind label %bb.bm, !noalias !111

.noexc150.i:                                      ; preds = %bb.ay
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i146.i: ; preds = %_ZN3ozz3log6LoggerlsIA31_cEERSoRKT_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !109, !noalias !111
  %.not.i1.i.i147.i = icmp eq i8 %i.fg, 0
  br i1 %.not.i1.i.i147.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i146.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 67
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !17, !noalias !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i148.i

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i146.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fe)
          to label %.noexc151.i unwind label %bb.bm, !noalias !111

.noexc151.i:                                      ; preds = %bb.ba
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !15, !noalias !111
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !111
  %i.fm = invoke noundef signext i8 %i.fl(ptr noundef nonnull align 8 dereferenceable(570) %i.fe, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i148.i unwind label %bb.bm, !noalias !111, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i148.i: ; preds = %.noexc151.i, %bb.az
  %.0.i.i.i149.i = phi i8 [ %i.fi, %bb.az ], [ %i.fm, %.noexc151.i ]
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i8 noundef signext %.0.i.i.i149.i)
          to label %.noexc153.i unwind label %bb.bm, !noalias !111

.noexc153.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i148.i
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %_ZNSolsEPFRSoS_E.exit67.i unwind label %bb.bm, !noalias !111 ; 0 uses

_ZNSolsEPFRSoS_E.exit67.i:                        ; preds = %.noexc153.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %43) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19, !noalias !111
  invoke void @_ZN3ozz9animation7offline11RawSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.bb unwind label %bb.bo, !noalias !111

bb.bb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit67.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19, !noalias !111
  %i.fp = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !15, !noalias !111
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !111
  %i.ft = invoke noundef i64 %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull %i.g, i64 noundef 17)
          to label %.noexc68.i unwind label %bb.bp, !noalias !111, !inline_history !67 ; 0 uses

.noexc68.i:                                       ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19, !noalias !111
  %i.fu = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !15, !noalias !111
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !111
  %i.fy = invoke noundef i64 %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull %i.f, i64 noundef 4)
          to label %.noexc69.i unwind label %bb.bp, !noalias !111, !inline_history !67 ; 0 uses

.noexc69.i:                                       ; preds = %.noexc68.i
  %i.fz = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !117, !range !118, !noalias !111, !noundef !88
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = load i32, ptr %i.f, align 4, !noalias !111 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i.i = call i32 @llvm.bswap.i32(i32 %i.gc)
  %i.gd = select i1 %i.gb, i32 %.sroa.0.0.insert.insert.i.i.i.i, i32 %i.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19, !noalias !111
  invoke void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeletonEE4LoadERNS0_8IArchiveEPS4_mj(ptr noundef nonnull align 8 dereferenceable(9) %42, ptr noundef nonnull align 8 dereferenceable(24) %44, i64 noundef 1, i32 noundef %i.gd)
          to label %_ZN3ozz2io8IArchiversINS_9animation7offline11RawSkeletonEEEvRT_.exit.i unwind label %bb.bp, !noalias !111

_ZN3ozz2io8IArchiversINS_9animation7offline11RawSkeletonEEEvRT_.exit.i: ; preds = %.noexc69.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !111
  invoke void @_ZN3ozz3log4LogVC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %45)
          to label %bb.bc unwind label %bb.bq, !noalias !111

bb.bc:                                            ; preds = %_ZN3ozz2io8IArchiversINS_9animation7offline11RawSkeletonEEEvRT_.exit.i
  %i.ge = load ptr, ptr %45, align 8, !tbaa !87, !noalias !111, !nonnull !88, !align !89 ; 4 uses
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.21, i64 noundef 24)
          to label %_ZN3ozz3log6LoggerlsIA25_cEERSoRKT_.exit.i unwind label %bb.br, !noalias !111 ; 0 uses

_ZN3ozz3log6LoggerlsIA25_cEERSoRKT_.exit.i:       ; preds = %bb.bc
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !15, !noalias !111
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !111
  %i.gj = getelementptr inbounds i8, ptr %i.ge, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !103, !noalias !111 ; 6 uses
  %.not.i.i.i156.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i156.i, label %bb.bd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i157.i

bb.bd:                                            ; preds = %_ZN3ozz3log6LoggerlsIA25_cEERSoRKT_.exit.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc161.i unwind label %bb.br, !noalias !111

.noexc161.i:                                      ; preds = %bb.bd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i157.i: ; preds = %_ZN3ozz3log6LoggerlsIA25_cEERSoRKT_.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !109, !noalias !111
  %.not.i1.i.i158.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i1.i.i158.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i157.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 67
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !17, !noalias !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i159.i

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i157.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gl)
          to label %.noexc162.i unwind label %bb.br, !noalias !111

.noexc162.i:                                      ; preds = %bb.bf
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !15, !noalias !111
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !111
  %i.gt = invoke noundef signext i8 %i.gs(ptr noundef nonnull align 8 dereferenceable(570) %i.gl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i159.i unwind label %bb.br, !noalias !111, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i159.i: ; preds = %.noexc162.i, %bb.be
  %.0.i.i.i160.i = phi i8 [ %i.gp, %bb.be ], [ %i.gt, %.noexc162.i ]
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i8 noundef signext %.0.i.i.i160.i)
          to label %.noexc164.i unwind label %bb.br, !noalias !111

.noexc164.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i159.i
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
          to label %_ZNSolsEPFRSoS_E.exit73.i unwind label %bb.br, !noalias !111 ; 0 uses

_ZNSolsEPFRSoS_E.exit73.i:                        ; preds = %.noexc164.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %45) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19, !noalias !111
  invoke void @_ZNK3ozz9animation7offline15SkeletonBuilderclERKNS1_11RawSkeletonE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %47, ptr noundef nonnull align 1 dereferenceable(1) %46, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit.i unwind label %bb.bt, !noalias !111

_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit.i: ; preds = %_ZNSolsEPFRSoS_E.exit73.i
  %i.gw = load ptr, ptr %47, align 8, !tbaa !20, !noalias !111 ; 3 uses
  store ptr %i.gw, ptr %37, align 8, !tbaa !20, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !111
  %.not.i = icmp eq ptr %i.gw, null
  br i1 %.not.i, label %bb.bg, label %.critedge.i

bb.bg:                                            ; preds = %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19, !noalias !111
  invoke void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %48)
          to label %bb.bh unwind label %bb.bu, !noalias !111

bb.bh:                                            ; preds = %bb.bg
  %i.gx = load ptr, ptr %48, align 8, !tbaa !87, !noalias !111, !nonnull !88, !align !89 ; 4 uses
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.22, i64 noundef 33)
          to label %_ZN3ozz3log6LoggerlsIA34_cEERSoRKT_.exit.i unwind label %bb.bv, !noalias !111 ; 0 uses

_ZN3ozz3log6LoggerlsIA34_cEERSoRKT_.exit.i:       ; preds = %bb.bh
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !15, !noalias !111
  %i.ha = getelementptr i8, ptr %i.gz, i64 -24
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !111
  %i.hc = getelementptr inbounds i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 240
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !103, !noalias !111 ; 6 uses
  %.not.i.i.i167.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i167.i, label %bb.bi, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168.i

bb.bi:                                            ; preds = %_ZN3ozz3log6LoggerlsIA34_cEERSoRKT_.exit.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc172.i unwind label %bb.bv, !noalias !111

.noexc172.i:                                      ; preds = %bb.bi
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168.i: ; preds = %_ZN3ozz3log6LoggerlsIA34_cEERSoRKT_.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !109, !noalias !111
  %.not.i1.i.i169.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i1.i.i169.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 67
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !17, !noalias !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i170.i

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.he)
          to label %.noexc173.i unwind label %bb.bv, !noalias !111

.noexc173.i:                                      ; preds = %bb.bk
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !15, !noalias !111
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !111
  %i.hm = invoke noundef signext i8 %i.hl(ptr noundef nonnull align 8 dereferenceable(570) %i.he, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i170.i unwind label %bb.bv, !noalias !111, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i170.i: ; preds = %.noexc173.i, %bb.bj
  %.0.i.i.i171.i = phi i8 [ %i.hi, %bb.bj ], [ %i.hm, %.noexc173.i ]
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i8 noundef signext %.0.i.i.i171.i)
          to label %.noexc175.i unwind label %bb.bv, !noalias !111

.noexc175.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i170.i
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hn)
          to label %_ZNSolsEPFRSoS_E.exit77.i unwind label %bb.bv, !noalias !111 ; 0 uses

_ZNSolsEPFRSoS_E.exit77.i:                        ; preds = %.noexc175.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %48) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19, !noalias !111
  store ptr null, ptr %53, align 8, !tbaa !113, !alias.scope !111
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !111
  call void @_ZN3ozz9animation7offline11RawSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !111
  br label %bb.cl

bb.bl:                                            ; preds = %bb.aw
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc153.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i148.i, %.noexc151.i, %bb.ba, %bb.ay, %bb.ax
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %43) #19, !noalias !111
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn31.i = phi { ptr, i32 } [ %i.hq, %bb.bm ], [ %i.hp, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !111
  br label %bb.cm

bb.bo:                                            ; preds = %_ZNSolsEPFRSoS_E.exit67.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bp:                                            ; preds = %.noexc69.i, %.noexc68.i, %bb.bb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bq:                                            ; preds = %_ZN3ozz2io8IArchiversINS_9animation7offline11RawSkeletonEEEvRT_.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %.noexc164.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i159.i, %.noexc162.i, %bb.bf, %bb.bd, %bb.bc
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %45) #19, !noalias !111
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn33.i = phi { ptr, i32 } [ %i.hu, %bb.br ], [ %i.ht, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !111
  br label %bb.by

bb.bt:                                            ; preds = %_ZNSolsEPFRSoS_E.exit73.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !111
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bg
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %.noexc175.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i170.i, %.noexc173.i, %bb.bk, %bb.bi, %bb.bh
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %48) #19, !noalias !111
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn35.i = phi { ptr, i32 } [ %i.hx, %bb.bv ], [ %i.hw, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19, !noalias !111
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn35.pn.i = phi { ptr, i32 } [ %.pn35.i, %bb.bw ], [ %i.hv, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !111
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bs, %bb.bp
  %.pn35.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.i, %bb.bx ], [ %.pn33.i, %bb.bs ], [ %i.hs, %bb.bp ]
  call void @_ZN3ozz9animation7offline11RawSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #19, !noalias !111
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bo
  %.pn35.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.i, %bb.by ], [ %i.hr, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !111
  br label %bb.cm

bb.ca:                                            ; preds = %_ZN3ozz2io8IArchive7TestTagINS_9animation7offline11RawSkeletonEEEbv.exit.i
  %i.hy = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !15, !noalias !111
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !111
  %i.ic = invoke noundef i32 %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy)
          to label %.noexc92.i unwind label %bb.cc, !noalias !111, !inline_history !68

.noexc92.i:                                       ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !111
  %i.id = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !15, !noalias !111
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !111
  %i.ih = invoke noundef i64 %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull %i.e, i64 noundef 13)
          to label %.noexc93.i unwind label %bb.cc, !noalias !111, !inline_history !68

.noexc93.i:                                       ; preds = %.noexc92.i
  %i.ii = load <8 x i8>, ptr %i.e, align 8, !noalias !111
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ik = load <4 x i8>, ptr %i.ij, align 8, !noalias !111
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.im = load i8, ptr %i.il, align 4, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !111
  %i.in = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !15, !noalias !111
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !111
  %i.ir = invoke noundef i32 %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.in, i32 noundef %i.ic, i32 noundef 2)
          to label %_ZN3ozz2io8IArchive7TestTagINS_9animation8SkeletonEEEbv.exit.i unwind label %bb.cc, !noalias !111, !inline_history !68 ; 0 uses

_ZN3ozz2io8IArchive7TestTagINS_9animation8SkeletonEEEbv.exit.i: ; preds = %.noexc93.i
  %.not.i.i78.i = icmp eq i64 %i.ih, 13
  %.fr1824 = freeze <8 x i8> %i.ii
  %i.is = icmp eq <8 x i8> %.fr1824, <i8 111, i8 122, i8 122, i8 45, i8 115, i8 107, i8 101, i8 108> ; 2 uses
  %.fr1825 = freeze <4 x i8> %i.ik
  %i.it = icmp eq <4 x i8> %.fr1825, <i8 101, i8 116, i8 111, i8 110>
  %i.iu = icmp eq i8 %i.im, 0
  %i.iv = shufflevector <8 x i1> %i.is, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.iv, %i.it
  %i.iw = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ix = shufflevector <8 x i1> %i.iw, <8 x i1> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.iy = bitcast <8 x i1> %i.ix to i8
  %i.iz = icmp eq i8 %i.iy, -1
  %op.rdx = and i1 %i.iz, %.not.i.i78.i
  %op.rdx1821 = select i1 %op.rdx, i1 %i.iu, i1 false
  br i1 %op.rdx1821, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %_ZN3ozz2io8IArchive7TestTagINS_9animation8SkeletonEEEbv.exit.i
  %i.ja = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %.noexc95.i unwind label %bb.cc, !noalias !111 ; 2 uses

.noexc95.i:                                       ; preds = %bb.cb
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !15, !noalias !119
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !119
  %i.je = invoke noundef ptr %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i64 noundef 56, i64 noundef 8)
          to label %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit102.i unwind label %bb.cc, !noalias !111, !inline_history !71 ; 4 uses

_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit102.i: ; preds = %.noexc95.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.je, i8 0, i64 56, i1 false), !noalias !119
  store ptr %i.je, ptr %37, align 8, !tbaa !20, !noalias !111
  %.pre.i = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %.pre194.i = load ptr, ptr %.pre.i, align 8, !tbaa !15, !noalias !111
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre194.i, i64 8
  %.pre195.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !111
  %i.jf = invoke noundef i64 %.pre195.i(ptr noundef nonnull align 8 dereferenceable(8) %.pre.i, ptr noundef nonnull %i.d, i64 noundef 13)
          to label %.noexc104.i unwind label %bb.cc, !noalias !111, !inline_history !72 ; 0 uses

.noexc104.i:                                      ; preds = %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !111
  %i.jg = load ptr, ptr %42, align 8, !tbaa !116, !noalias !111 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !15, !noalias !111
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !111
  %i.jk = invoke noundef i64 %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %.noexc105.i unwind label %bb.cc, !noalias !111, !inline_history !72 ; 0 uses

.noexc105.i:                                      ; preds = %.noexc104.i
  %i.jl = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !117, !range !118, !noalias !111, !noundef !88
  %i.jn = trunc nuw i8 %i.jm to i1
  %i.jo = load i32, ptr %i.c, align 4, !noalias !111 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i103.i = call i32 @llvm.bswap.i32(i32 %i.jo)
  %i.jp = select i1 %i.jn, i32 %.sroa.0.0.insert.insert.i.i.i103.i, i32 %i.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !111
  invoke void @_ZN3ozz9animation8Skeleton4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(56) %i.je, ptr noundef nonnull align 8 dereferenceable(9) %42, i32 noundef %i.jp)
          to label %bb.cr unwind label %bb.cc, !noalias !111

bb.cc:                                            ; preds = %.noexc105.i, %.noexc104.i, %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit102.i, %.noexc95.i, %bb.cb, %.noexc93.i, %.noexc92.i, %bb.ca, %.noexc63.i, %.noexc62.i, %bb.av, %bb.au
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cd:                                            ; preds = %_ZN3ozz2io8IArchive7TestTagINS_9animation8SkeletonEEEbv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19, !noalias !111
  invoke void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %49)
          to label %bb.ce unwind label %bb.ci, !noalias !111

bb.ce:                                            ; preds = %bb.cd
  %i.jr = load ptr, ptr %49, align 8, !tbaa !87, !noalias !111, !nonnull !88, !align !89 ; 5 uses
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.23, i64 noundef 48)
          to label %_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit108.i unwind label %bb.cj, !noalias !111 ; 0 uses

_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit108.i:    ; preds = %bb.ce
  %i.jt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #19, !noalias !111
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull %i.bh, i64 noundef %i.jt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i unwind label %bb.cj, !noalias !111 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i: ; preds = %_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit108.i
  %i.jv = load ptr, ptr %i.jr, align 8, !tbaa !15, !noalias !111
  %i.jw = getelementptr i8, ptr %i.jv, i64 -24
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !111
  %i.jy = getelementptr inbounds i8, ptr %i.jr, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 240
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !103, !noalias !111 ; 6 uses
  %.not.i.i.i178.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i178.i, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179.i

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc183.i unwind label %bb.cj, !noalias !111

.noexc183.i:                                      ; preds = %bb.cf
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !109, !noalias !111
  %.not.i1.i.i180.i = icmp eq i8 %i.kc, 0
  br i1 %.not.i1.i.i180.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 67
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !17, !noalias !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i181.i

bb.ch:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ka)
          to label %.noexc184.i unwind label %bb.cj, !noalias !111

.noexc184.i:                                      ; preds = %bb.ch
  %i.kf = load ptr, ptr %i.ka, align 8, !tbaa !15, !noalias !111
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !111
  %i.ki = invoke noundef signext i8 %i.kh(ptr noundef nonnull align 8 dereferenceable(570) %i.ka, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i181.i unwind label %bb.cj, !noalias !111, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i181.i: ; preds = %.noexc184.i, %bb.cg
  %.0.i.i.i182.i = phi i8 [ %i.ke, %bb.cg ], [ %i.ki, %.noexc184.i ]
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, i8 noundef signext %.0.i.i.i182.i)
          to label %.noexc186.i unwind label %bb.cj, !noalias !111

.noexc186.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i181.i
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kj)
          to label %_ZNSolsEPFRSoS_E.exit114.i unwind label %bb.cj, !noalias !111 ; 0 uses

_ZNSolsEPFRSoS_E.exit114.i:                       ; preds = %.noexc186.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %49) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19, !noalias !111
  store ptr null, ptr %53, align 8, !tbaa !113, !alias.scope !111
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cd
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %.noexc186.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i181.i, %.noexc184.i, %bb.ch, %bb.cf, %_ZN3ozz3log6LoggerlsIA49_cEERSoRKT_.exit108.i, %bb.ce
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %49) #19, !noalias !111
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn29.i = phi { ptr, i32 } [ %i.km, %bb.cj ], [ %i.kl, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19, !noalias !111
  br label %bb.cm

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !111
  call void @_ZN3ozz9animation7offline11RawSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !111
  br label %bb.cr

bb.cl:                                            ; preds = %_ZNSolsEPFRSoS_E.exit114.i, %_ZNSolsEPFRSoS_E.exit77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !111
  br label %thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cc, %bb.bz, %bb.bn
  %.pn35.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.i, %bb.bz ], [ %.pn31.i, %bb.bn ], [ %.pn29.i, %bb.ck ], [ %i.jq, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !111
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.at, %bb.aq
  %.pn35.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.i, %bb.cm ], [ %.pn27.i, %bb.at ], [ %i.dx, %bb.aq ]
  call void @_ZN3ozz2io4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #19, !noalias !111
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ap
  %.pn35.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.pn.i, %bb.cn ], [ %i.dw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !111
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ao, %bb.z
  %.pn43.pn.i = phi { ptr, i32 } [ %.pn43.i, %bb.z ], [ %.pn35.pn.pn.pn.pn.pn.pn.i, %bb.co ], [ %.pn.i, %bb.ao ]
  call void @_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !111
  br label %.body

thread-pre-split:                                 ; preds = %.critedge47.i, %bb.cl
  call void @_ZN3ozz2io4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !111
  br label %bb.rw

bb.cq:                                            ; preds = %bb.q, %bb.p
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cr:                                            ; preds = %.noexc105.i, %.critedge.i
  %.in.i = phi ptr [ %i.gw, %.critedge.i ], [ %i.je, %.noexc105.i ]
  %i.ko = ptrtoint ptr %.in.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !111
  call void @_ZN3ozz2io4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #19, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !111
  store i64 %i.ko, ptr %53, align 8, !tbaa !20, !alias.scope !111
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.kp = invoke { ptr, i8 } @_ZNK4Json5Value5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.cs unwind label %bb.cw     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %.fca.0.extract34 = extractvalue { ptr, i8 } %i.kp, 0
  %.fca.1.extract35 = extractvalue { ptr, i8 } %i.kp, 1
  store ptr %.fca.0.extract34, ptr %54, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i8 %.fca.1.extract35, ptr %.sroa.237.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  %i.kq = invoke { ptr, i8 } @_ZNK4Json5Value3endEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.ct unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
end_hunk_0
