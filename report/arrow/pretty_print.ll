inline.NumInlined: 4037
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_12_GLOBAL__N_112ArrayPrinterEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  %i.gky = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %bb.abj unwind label %.loopexit.split-lp.loopexit.split-lp.i1898, !noalias !626 ; 2 uses

bb.abj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i1903
  %i.gkz = load ptr, ptr %i.gky, align 8, !tbaa !102, !noalias !626
  %i.gla = getelementptr inbounds nuw i8, ptr %i.gky, i64 8
  %i.glb = load i64, ptr %i.gla, align 8, !tbaa !44, !noalias !626
  %i.glc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gkw, ptr noundef %i.gkz, i64 noundef %i.glb)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.i1898, !noalias !626

.loopexit.i1922:                                  ; preds = %.lr.ph.i.i27.i
  %lpad.loopexit.i1923 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1900

.loopexit.split-lp.loopexit.i1977:                ; preds = %bb.abm
  %lpad.loopexit56.i1978 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1900

.loopexit.split-lp.loopexit.split-lp.i1898:       ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.invoke.i, %bb.abo, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1907, %bb.abj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i1903, %bb.abi
  %lpad.loopexit.split-lp57.i1899 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1900

bb.abk:                                           ; preds = %bb.abh
  %i.gld = load ptr, ptr %2, align 8, !tbaa !194, !noalias !626, !nonnull !98, !align !192 ; 3 uses
  %i.gle = getelementptr inbounds nuw i8, ptr %i.gld, i64 48
  %i.glf = load i8, ptr %i.gle, align 8, !tbaa !126, !range !97, !noalias !626, !noundef !98
  %i.glg = trunc nuw i8 %i.glf to i1
  br i1 %i.glg, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1907, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.glh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gli = load i32, ptr %i.glh, align 8, !tbaa !57, !noalias !626
  %i.glj = icmp sgt i32 %i.gli, 0
  br i1 %i.glj, label %.lr.ph.i.i.i1975, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1907

.lr.ph.i.i.i1975:                                 ; preds = %bb.abl
  %i.glk = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.abm

bb.abm:                                           ; preds = %.noexc.i1979, %.lr.ph.i.i.i1975
  %.02.i.i.i1976 = phi i32 [ 0, %.lr.ph.i.i.i1975 ], [ %i.gln, %.noexc.i1979 ]
  %i.gll = load ptr, ptr %i.glk, align 8, !tbaa !60, !noalias !626
  %i.glm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gll, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc.i1979 unwind label %.loopexit.split-lp.loopexit.i1977, !noalias !626 ; 0 uses

.noexc.i1979:                                     ; preds = %bb.abm
  %i.gln = add nuw nsw i32 %.02.i.i.i1976, 1      ; 2 uses
  %i.glo = load i32, ptr %i.glh, align 8, !tbaa !57, !noalias !626
  %i.glp = icmp slt i32 %i.gln, %i.glo
  br i1 %i.glp, label %bb.abm, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i1980, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i1980: ; preds = %.noexc.i1979
  %.pre.i.i1981 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !626
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1907

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1907: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i1980, %bb.abl, %bb.abk
  %i.glq = phi ptr [ %.pre.i.i1981, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i1980 ], [ %i.gld, %bb.abl ], [ %i.gld, %bb.abk ] ; 2 uses
  %i.glr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.gls = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !626
  %i.glt = getelementptr inbounds nuw i8, ptr %i.glq, i64 56
  %i.glu = load ptr, ptr %i.glt, align 8, !tbaa !102, !noalias !626
  %i.glv = getelementptr inbounds nuw i8, ptr %i.glq, i64 64
  %i.glw = load i64, ptr %i.glv, align 8, !tbaa !44, !noalias !626
  %i.glx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gls, ptr noundef %i.glu, i64 noundef %i.glw)
          to label %.noexc17.i1908 unwind label %.loopexit.split-lp.loopexit.split-lp.i1898, !noalias !626 ; 0 uses

.noexc17.i1908:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1907
  %i.gly = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !626 ; 2 uses
  %i.glz = getelementptr inbounds nuw i8, ptr %i.gly, i64 16
  %i.gma = load i64, ptr %i.glz, align 8, !tbaa !210, !noalias !626
  %i.gmb = icmp sgt i64 %i.gma, 0
  %.pre2.i113.i.pre3241 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !626 ; 4 uses
  br i1 %i.gmb, label %bb.abn, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i

bb.abn:                                           ; preds = %.noexc17.i1908
  %i.gmc = getelementptr i8, ptr %.pre2.i113.i.pre3241, i64 48
  %.val.val.i.i1910 = load i8, ptr %i.gmc, align 8, !tbaa !126, !range !97, !noalias !626, !noundef !98
  %i.gmd = trunc nuw i8 %.val.val.i.i1910 to i1
  br i1 %i.gmd, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread108.i, label %bb.abo

_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread108.i: ; preds = %bb.abn
  %i.gme = getelementptr inbounds nuw i8, ptr %.pre2.i113.i.pre3241, i64 4
  %i.gmf = load i32, ptr %i.gme, align 4, !tbaa !33, !noalias !626
  %i.gmg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gmh = load i32, ptr %i.gmg, align 8, !tbaa !57, !noalias !626
  %i.gmi = add nsw i32 %i.gmh, %i.gmf
  store i32 %i.gmi, ptr %i.gmg, align 8, !tbaa !57, !noalias !626
  br label %bb.abp

bb.abo:                                           ; preds = %bb.abn
  %.val2.i.i1911 = load ptr, ptr %i.glr, align 8, !noalias !626
  %i.gmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val2.i.i1911, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912 unwind label %.loopexit.split-lp.loopexit.split-lp.i1898, !noalias !626 ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912: ; preds = %bb.abo
  %.pre3.i.i1913 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !626 ; 3 uses
  %.pre.pre.i1914 = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !626 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i1915 = getelementptr inbounds nuw i8, ptr %.pre.pre.i1914, i64 16
  %.pre63.pre.i1916 = load i64, ptr %.phi.trans.insert.phi.trans.insert.i1915, align 8, !tbaa !210, !noalias !626
  %i.gmk = icmp sgt i64 %.pre63.pre.i1916, 0
  %i.gml = getelementptr inbounds nuw i8, ptr %.pre3.i.i1913, i64 4
  %i.gmm = load i32, ptr %i.gml, align 4, !tbaa !33, !noalias !626
  %i.gmn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gmo = load i32, ptr %i.gmn, align 8, !tbaa !57, !noalias !626
  %i.gmp = add nsw i32 %i.gmo, %i.gmm
  store i32 %i.gmp, ptr %i.gmn, align 8, !tbaa !57, !noalias !626
  br i1 %i.gmk, label %bb.abp, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i

bb.abp:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread108.i
  %i.gmq = phi ptr [ %.pre2.i113.i.pre3241, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread108.i ], [ %.pre3.i.i1913, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912 ]
  %.pre111.i = phi ptr [ %i.gly, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread108.i ], [ %.pre.pre.i1914, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912 ] ; 3 uses
  %i.gmr = getelementptr inbounds nuw i8, ptr %.pre111.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #18, !noalias !629
  %i.gms = load ptr, ptr %.pre111.i, align 8, !tbaa !127, !noalias !629 ; 3 uses
  %i.gmt = getelementptr inbounds nuw i8, ptr %i.gms, i64 72
  %i.gmu = load i32, ptr %i.gmt, align 8, !tbaa !634, !noalias !629
  store i32 %i.gmu, ptr %59, align 8, !tbaa !639, !noalias !629
  %i.gmv = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 4 uses
  %i.gmw = getelementptr inbounds nuw i8, ptr %i.gms, i64 80
  %i.gmx = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 7 uses
  store ptr %i.gmx, ptr %i.gmv, align 8, !tbaa !43, !noalias !629
  %i.gmy = load ptr, ptr %i.gmw, align 8, !tbaa !102, !noalias !629 ; 2 uses
  %i.gmz = getelementptr inbounds nuw i8, ptr %i.gms, i64 88
  %i.gna = load i64, ptr %i.gmz, align 8, !tbaa !44, !noalias !629 ; 8 uses
  %i.gnb = icmp ugt i64 %i.gna, 15
  br i1 %i.gnb, label %bb.abq, label %._crit_edge.i.i.i.i.i.i

bb.abq:                                           ; preds = %bb.abp
  %i.gnc = icmp slt i64 %i.gna, 0
  br i1 %i.gnc, label %.noexc.i.i.i.i.i, label %bb.abr

.noexc.i.i.i.i.i:                                 ; preds = %bb.abq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
          to label %.noexc19.i1974 unwind label %bb.aei, !noalias !626

.noexc19.i1974:                                   ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.abr:                                           ; preds = %bb.abq
  %i.gnd = add nuw i64 %i.gna, 1                  ; 2 uses
  %i.gne = icmp slt i64 %i.gnd, 0
  br i1 %i.gne, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !73

.noexc6.i.i.i.i.i:                                ; preds = %bb.abr
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc20.i1973 unwind label %bb.aei, !noalias !626

.noexc20.i1973:                                   ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.abr
  %i.gnf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gnd) #21
          to label %.noexc21.i1972 unwind label %bb.aei, !noalias !626 ; 2 uses

.noexc21.i1972:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.gnf, ptr %i.gmv, align 8, !tbaa !102, !noalias !629
  store i64 %i.gna, ptr %i.gmx, align 8, !tbaa !45, !noalias !629
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc21.i1972, %bb.abp
  %i.gng = phi ptr [ %i.gnf, %.noexc21.i1972 ], [ %i.gmx, %bb.abp ] ; 3 uses
  switch i64 %i.gna, label %bb.abt [
    i64 1, label %bb.abs
    i64 0, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i.i
  ]

bb.abs:                                           ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gnh = load i8, ptr %i.gmy, align 1, !tbaa !45, !noalias !629
  store i8 %i.gnh, ptr %i.gng, align 1, !tbaa !45, !noalias !629
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i.i

bb.abt:                                           ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gng, ptr align 1 %i.gmy, i64 %i.gna, i1 false), !noalias !629
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i.i: ; preds = %bb.abt, %bb.abs, %._crit_edge.i.i.i.i.i.i
  %i.gni = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  store i64 %i.gna, ptr %i.gni, align 8, !tbaa !44, !noalias !629
  %i.gnj = getelementptr inbounds nuw i8, ptr %i.gng, i64 %i.gna
  store i8 0, ptr %i.gnj, align 1, !tbaa !45, !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18, !noalias !641
  store ptr %2, ptr %58, align 8, !tbaa !644, !noalias !641
  %i.gnk = load i64, ptr %i.gmr, align 8, !tbaa !210, !noalias !646 ; 2 uses
  %.not3773.i.i.i.i.i = icmp sgt i64 %i.gnk, 0
  br i1 %.not3773.i.i.i.i.i, label %.lr.ph.i.i.i.i.i1926, label %.loopexit61.i.i.i

.lr.ph.i.i.i.i.i1926:                             ; preds = %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i.i
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.gmq, i64 8
  %i.gnm = load i32, ptr %i.gnl, align 8, !tbaa !41, !noalias !646 ; 2 uses
  %i.gnn = shl nsw i32 %i.gnm, 1
  %i.gno = or disjoint i32 %i.gnn, 1
  %i.gnp = sext i32 %i.gno to i64
  %i.gnq = sext i32 %i.gnm to i64                 ; 3 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.gns = xor i64 %i.gnq, -1
  %i.gnt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gnu = getelementptr inbounds nuw i8, ptr %56, i64 29 ; 2 uses
  %i.gnv = getelementptr inbounds nuw i8, ptr %56, i64 28 ; 2 uses
  %i.gnw = ptrtoint ptr %i.gnu to i64
  %i.gnx = getelementptr inbounds nuw i8, ptr %57, i64 26 ; 2 uses
  %i.gny = getelementptr inbounds nuw i8, ptr %57, i64 25 ; 2 uses
  %i.gnz = ptrtoint ptr %i.gnx to i64
  %i.goa = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 2 uses
  %i.gob = getelementptr inbounds nuw i8, ptr %55, i64 31 ; 2 uses
  %i.goc = ptrtoint ptr %i.goa to i64
  %.sroa.gep.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 23 ; 2 uses
  %.sroa.gep52.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 22 ; 2 uses
  %.pre77.i.i.i.i.i = ptrtoint ptr %.sroa.gep.i.i.i.i.i.i.i.i.i to i64
  %i.god = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.abu

bb.abu:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943, %.lr.ph.i.i.i.i.i1926
  %i.goe = phi i64 [ %i.gnk, %.lr.ph.i.i.i.i.i1926 ], [ %i.hlx, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943 ] ; 3 uses
  %i.gof = phi ptr [ %.pre111.i, %.lr.ph.i.i.i.i.i1926 ], [ %i.hlv, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943 ] ; 6 uses
  %.074.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i1926 ], [ %i.hlu, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943 ] ; 11 uses
  %i.gog = add nsw i64 %i.goe, -1
  %i.goh = icmp eq i64 %.074.i.i.i.i.i, %i.gog    ; 3 uses
  %.not.i.i.i.i.i1927 = icmp eq i64 %i.goe, %i.gnp
  br i1 %.not.i.i.i.i.i1927, label %bb.aca, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %.not36.i.i.i.i.i1928 = icmp sge i64 %.074.i.i.i.i.i, %i.gnq
  %i.goi = sub nsw i64 %i.goe, %i.gnq
  %i.goj = icmp slt i64 %.074.i.i.i.i.i, %i.goi
  %or.cond.i.i.i.i.i1929 = select i1 %.not36.i.i.i.i.i1928, i1 %i.goj, i1 false
  br i1 %or.cond.i.i.i.i.i1929, label %bb.abw, label %bb.aca

bb.abw:                                           ; preds = %bb.abv
  %i.gok = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192
  %i.gol = getelementptr inbounds nuw i8, ptr %i.gok, i64 48
  %i.gom = load i8, ptr %i.gol, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.gon = trunc nuw i8 %i.gom to i1
  br i1 %i.gon, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i1965, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.goo = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.gop = icmp sgt i32 %i.goo, 0
  br i1 %i.gop, label %.lr.ph.i.i.i.i.i.i.i1968, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i1965

.lr.ph.i.i.i.i.i.i.i1968:                         ; preds = %bb.abx, %.noexc.i.i.i1971
  %.02.i.i.i.i.i.i.i1969 = phi i32 [ %i.gos, %.noexc.i.i.i1971 ], [ 0, %bb.abx ]
  %i.goq = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gor = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.goq, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc.i.i.i1971 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i1970, !noalias !629 ; 0 uses

.noexc.i.i.i1971:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i1968
  %i.gos = add nuw nsw i32 %.02.i.i.i.i.i.i.i1969, 1 ; 2 uses
  %i.got = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.gou = icmp slt i32 %i.gos, %i.got
  br i1 %i.gou, label %.lr.ph.i.i.i.i.i.i.i1968, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i1965, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i1965: ; preds = %.noexc.i.i.i1971, %bb.abx, %bb.abw
  %i.gov = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gov, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %.noexc4.i.i.i1966 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc4.i.i.i1966:                                ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i1965
  br i1 %i.goh, label %.noexc5.i.i.i1967, label %bb.aby

bb.aby:                                           ; preds = %.noexc4.i.i.i1966
  %i.gox = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192 ; 3 uses
  %i.goy = getelementptr inbounds nuw i8, ptr %i.gox, i64 48
  %i.goz = load i8, ptr %i.goy, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.gpa = trunc nuw i8 %i.goz to i1
  br i1 %i.gpa, label %bb.abz, label %.noexc5.i.i.i1967

bb.abz:                                           ; preds = %bb.aby
  %i.gpb = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gpc = getelementptr inbounds nuw i8, ptr %i.gox, i64 120
  %i.gpd = load ptr, ptr %i.gpc, align 8, !tbaa !102, !noalias !646
  %i.gpe = getelementptr inbounds nuw i8, ptr %i.gox, i64 128
  %i.gpf = load i64, ptr %i.gpe, align 8, !tbaa !44, !noalias !646
  %i.gpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gpb, ptr noundef %i.gpd, i64 noundef %i.gpf)
          to label %.noexc5.i.i.i1967 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc5.i.i.i1967:                                ; preds = %bb.abz, %bb.aby, %.noexc4.i.i.i1966
  %i.gph = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !646
  %i.gpi = getelementptr inbounds nuw i8, ptr %i.gph, i64 16
  %i.gpj = load i64, ptr %i.gpi, align 8, !tbaa !210, !noalias !646
  %i.gpk = add i64 %i.gpj, %i.gns
  br label %.critedge.i.i.i.i.i1938

bb.aca:                                           ; preds = %bb.abv, %bb.abu
  %i.gpl = load ptr, ptr %i.gnt, align 8, !tbaa !247, !noalias !646 ; 2 uses
  %.not.i.i.i.i.i.i.i1930 = icmp eq ptr %i.gpl, null
  br i1 %.not.i.i.i.i.i.i.i1930, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.gpm = getelementptr inbounds nuw i8, ptr %i.gof, i64 32
  %i.gpn = load i64, ptr %i.gpm, align 8, !tbaa !249, !noalias !646
  %i.gpo = add nsw i64 %i.gpn, %.074.i.i.i.i.i    ; 2 uses
  %i.gpp = lshr i64 %i.gpo, 3
  %i.gpq = getelementptr inbounds nuw i8, ptr %i.gpl, i64 %i.gpp
  %i.gpr = load i8, ptr %i.gpq, align 1, !tbaa !45, !noalias !646
  %i.gps = trunc i64 %i.gpo to i8
  %i.gpt = and i8 %i.gps, 7
  %i.gpu = lshr i8 %i.gpr, %i.gpt
  %i.gpv = trunc i8 %i.gpu to i1
  br i1 %i.gpv, label %bb.aci, label %bb.acg

bb.acc:                                           ; preds = %bb.aca
  %i.gpw = load ptr, ptr %i.gof, align 8, !tbaa !127, !noalias !646
  %i.gpx = getelementptr inbounds nuw i8, ptr %i.gpw, i64 40
  %i.gpy = load i32, ptr %i.gpx, align 8, !tbaa !130, !noalias !646
  switch i32 %i.gpy, label %bb.acf [
    i32 27, label %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i1963
    i32 28, label %bb.acd
    i32 38, label %bb.ace
  ]

bb.acd:                                           ; preds = %bb.acc
  %i.gpz = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.gof, i64 noundef %.074.i.i.i.i.i)
          to label %.noexc6.i.i.i1962 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc6.i.i.i1962:                                ; preds = %bb.acd
  br i1 %i.gpz, label %bb.acg, label %bb.aci

bb.ace:                                           ; preds = %bb.acc
  %i.gqa = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.gof, i64 noundef %.074.i.i.i.i.i)
          to label %.noexc7.i.i.i1961 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc7.i.i.i1961:                                ; preds = %bb.ace
  br i1 %i.gqa, label %bb.acg, label %bb.aci

bb.acf:                                           ; preds = %bb.acc
  %i.gqb = getelementptr inbounds nuw i8, ptr %i.gof, i64 24
  %i.gqc = load atomic i64, ptr %i.gqb seq_cst, align 8, !noalias !646
  %i.gqd = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !646
  %i.gqe = getelementptr inbounds nuw i8, ptr %i.gqd, i64 16
  %i.gqf = load i64, ptr %i.gqe, align 8, !tbaa !210, !noalias !646
  %.not106.i.i.i.i.i = icmp eq i64 %i.gqc, %i.gqf
  br i1 %.not106.i.i.i.i.i, label %bb.acg, label %bb.aci

_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i1963:     ; preds = %bb.acc
  %i.gqg = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.gof, i64 noundef %.074.i.i.i.i.i)
          to label %.noexc8.i.i.i1964 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc8.i.i.i1964:                                ; preds = %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i1963
  br i1 %i.gqg, label %bb.acg, label %bb.aci

bb.acg:                                           ; preds = %.noexc8.i.i.i1964, %bb.acf, %.noexc7.i.i.i1961, %.noexc6.i.i.i1962, %bb.acb
  %i.gqh = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192 ; 3 uses
  %i.gqi = getelementptr inbounds nuw i8, ptr %i.gqh, i64 48
  %i.gqj = load i8, ptr %i.gqi, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.gqk = trunc nuw i8 %i.gqj to i1
  br i1 %i.gqk, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1931, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.gql = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.gqm = icmp sgt i32 %i.gql, 0
  br i1 %i.gqm, label %.lr.ph.i.i41.i.i.i.i.i1945, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1931

.lr.ph.i.i41.i.i.i.i.i1945:                       ; preds = %bb.ach, %.noexc9.i.i.i1949
  %.02.i.i42.i.i.i.i.i1946 = phi i32 [ %i.gqp, %.noexc9.i.i.i1949 ], [ 0, %bb.ach ]
  %i.gqn = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gqo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gqn, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc9.i.i.i1949 unwind label %.loopexit.i.i.i1947, !noalias !629 ; 0 uses

.noexc9.i.i.i1949:                                ; preds = %.lr.ph.i.i41.i.i.i.i.i1945
  %i.gqp = add nuw nsw i32 %.02.i.i42.i.i.i.i.i1946, 1 ; 2 uses
  %i.gqq = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.gqr = icmp slt i32 %i.gqp, %i.gqq
  br i1 %i.gqr, label %.lr.ph.i.i41.i.i.i.i.i1945, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1950, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1950: ; preds = %.noexc9.i.i.i1949
  %.pre.i.i.i.i.i1951 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1931

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1931: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1950, %bb.ach, %bb.acg
  %i.gqs = phi ptr [ %.pre.i.i.i.i.i1951, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1950 ], [ %i.gqh, %bb.acg ], [ %i.gqh, %bb.ach ] ; 2 uses
  %i.gqt = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gqu = getelementptr inbounds nuw i8, ptr %i.gqs, i64 16
  %i.gqv = load ptr, ptr %i.gqu, align 8, !tbaa !102, !noalias !646
  %i.gqw = getelementptr inbounds nuw i8, ptr %i.gqs, i64 24
  %i.gqx = load i64, ptr %i.gqw, align 8, !tbaa !44, !noalias !646
  %i.gqy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gqt, ptr noundef %i.gqv, i64 noundef %i.gqx)
          to label %.noexc10.i.i.i1936 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc10.i.i.i1936:                               ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1931
  br i1 %i.goh, label %.critedge.i.i.i.i.i1938, label %.invoke.i.i.i1937

.invoke.i.i.i1937:                                ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953, %.noexc10.i.i.i1936
  %i.gqz = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gra = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192 ; 2 uses
  %i.grb = getelementptr inbounds nuw i8, ptr %i.gra, i64 120
  %i.grc = load ptr, ptr %i.grb, align 8, !tbaa !102, !noalias !646
  %i.grd = getelementptr inbounds nuw i8, ptr %i.gra, i64 128
  %i.gre = load i64, ptr %i.grd, align 8, !tbaa !44, !noalias !646
  %i.grf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gqz, ptr noundef %i.grc, i64 noundef %i.gre)
          to label %.critedge.i.i.i.i.i1938 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

bb.aci:                                           ; preds = %.noexc8.i.i.i1964, %bb.acf, %.noexc7.i.i.i1961, %.noexc6.i.i.i1962, %bb.acb
  %i.grg = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192
  %i.grh = getelementptr inbounds nuw i8, ptr %i.grg, i64 48
  %i.gri = load i8, ptr %i.grh, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.grj = trunc nuw i8 %i.gri to i1
  br i1 %i.grj, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  %i.grk = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.grl = icmp sgt i32 %i.grk, 0
  br i1 %i.grl, label %.lr.ph.i.i44.i.i.i.i.i1957, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952

.lr.ph.i.i44.i.i.i.i.i1957:                       ; preds = %bb.acj, %.noexc12.i.i.i1960
  %.02.i.i45.i.i.i.i.i1958 = phi i32 [ %i.gro, %.noexc12.i.i.i1960 ], [ 0, %bb.acj ]
  %i.grm = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.grn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.grm, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc12.i.i.i1960 unwind label %.loopexit.split-lp.loopexit.i.i.i1959, !noalias !629 ; 0 uses

.noexc12.i.i.i1960:                               ; preds = %.lr.ph.i.i44.i.i.i.i.i1957
  %i.gro = add nuw nsw i32 %.02.i.i45.i.i.i.i.i1958, 1 ; 2 uses
  %i.grp = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.grq = icmp slt i32 %i.gro, %i.grp
  br i1 %i.grq, label %.lr.ph.i.i44.i.i.i.i.i1957, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952: ; preds = %.noexc12.i.i.i1960, %bb.acj, %bb.aci
  %i.grr = load ptr, ptr %i.god, align 8, !tbaa !649, !noalias !651
  %i.grs = getelementptr inbounds [8 x i8], ptr %i.grr, i64 %.074.i.i.i.i.i
  %i.grt = load i64, ptr %i.grs, align 8, !tbaa !385, !noalias !651 ; 20 uses
  %.val.i.i.i.i.i.i = load i32, ptr %59, align 8, !tbaa !639, !noalias !651
  %.val1.i.i.i.i.i.i = load i64, ptr %i.gni, align 8, !noalias !651 ; 4 uses
  switch i32 %.val.i.i.i.i.i.i, label %bb.adw [
    i32 3, label %bb.adk
    i32 1, label %bb.ack
    i32 2, label %bb.acx
  ]

bb.ack:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952
  %i.gru = add i64 %i.grt, 1096193779200000
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.gru, 2068084742400000
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.acl, label %.invoke100.i.i.i, !prof !77

.invoke100.i.i.i:                                 ; preds = %bb.adw, %bb.acx, %bb.ack
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS0_15StringFormatterIS8_vEEEENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISG_EEtlSL_EEEOSD_OSG_(i64 %i.grt, ptr noundef nonnull readonly align 8 dereferenceable(8) %58)
          to label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

bb.acl:                                           ; preds = %bb.ack
  %i.grv = sdiv i64 %i.grt, 86400000              ; 3 uses
  %i.grw = trunc nsw i64 %i.grv to i32            ; 2 uses
  %i.grx = mul nsw i64 %i.grv, 86400000           ; 2 uses
  %.not53.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.grx, %i.grt
  br i1 %.not53.i.i.i.i.i.i.i.i.i, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %.neg.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.grv, -86400000
  %i.gry = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i, %i.grt
  br label %bb.aco

bb.acn:                                           ; preds = %bb.acl
  %.neg.i.i.i.i.i.i.i.i.i = add nsw i64 %i.grt, 86400000
  %i.grz = sub nsw i64 %.neg.i.i.i.i.i.i.i.i.i, %i.grx
  %i.gsa = add nsw i32 %i.grw, -1
  br label %bb.aco

bb.aco:                                           ; preds = %bb.acn, %bb.acm
  %.sroa.036.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gry, %bb.acm ], [ %i.grz, %bb.acn ]
  %.sroa.037.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.grw, %bb.acm ], [ %i.gsa, %bb.acn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18, !noalias !651
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.acq, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  store i8 90, ptr %i.gny, align 1, !tbaa !45, !noalias !651
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acp, %bb.aco
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gnx, %bb.aco ], [ %i.gny, %bb.acp ] ; 6 uses
  %.063.i.i.i.i.i.i.i.i.i = ptrtoaddr ptr %.0.i.i.i.i.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.gsb = udiv i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, 3600000 ; 3 uses
  %i.gsc = udiv i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, 60000
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsb, -60
  %i.gsd = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i, %i.gsc ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsb, -3600000
  %i.gse = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsd, -60000
  %i.gsf = add nsw i64 %i.gse, %.neg.i8.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gsg = sdiv i64 %i.gsf, 1000                  ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsg, -1000
  %i.gsh = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gsf ; 3 uses
  %i.gsi = icmp sgt i64 %i.gsh, 99
  br i1 %i.gsi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.acq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.idx.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.acq ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gsq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gsh, %bb.acq ] ; 3 uses
  %.1.ptr.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.1.idx.i.i.i.i.i.i.i.i.i
  %i.gsj = urem i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.gsk = shl nuw nsw i64 %i.gsj, 1
  %i.gsl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gsk ; 2 uses
  %i.gsm = getelementptr inbounds nuw i8, ptr %i.gsl, i64 1
  %i.gsn = load i8, ptr %i.gsm, align 1, !tbaa !45, !noalias !651
  %i.gso = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.gsn, ptr %i.gso, align 1, !tbaa !45, !noalias !651
  %i.gsp = load i8, ptr %i.gsl, align 1, !tbaa !45, !noalias !651
  %.1.add.i.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.1.add.i.i.i.i.i.i.i.i.i
  store i8 %i.gsp, ptr %.ptr55.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gsq = udiv i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.gsr = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.gsr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.acq
  %.2.idx.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.acq ], [ %.1.add.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gsh, %bb.acq ], [ %i.gsq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gss = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.gss, label %bb.acr, label %bb.acs

bb.acr:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gst = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gsu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gst ; 2 uses
  %i.gsv = getelementptr inbounds nuw i8, ptr %i.gsu, i64 1
  %i.gsw = load i8, ptr %i.gsv, align 1, !tbaa !45, !noalias !651
  %.2.add.i.i.i.i.i.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.2.add.i.i.i.i.i.i.i.i.i
  store i8 %i.gsw, ptr %.ptr54.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gsx = load i8, ptr %i.gsu, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.acs:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gsy = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.gsz = add i8 %i.gsy, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.acs, %bb.acr
  %.3.idx.i.i.i.i.i.i.i.i.i = phi i64 [ %.2.add.i.i.i.i.i.i.i.i.i, %bb.acr ], [ %.2.idx.i.i.i.i.i.i.i.i.i, %bb.acs ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.gsx, %bb.acr ], [ %i.gsz, %bb.acs ]
  %i.gta = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.3.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gta, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gtb = icmp sgt i64 %.3.idx.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.gtb, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gtc = add i64 %.3.idx.i.i.i.i.i.i.i.i.i, %.063.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gtd = add i64 %i.gtc, -2
  %i.gte = add i64 %.063.i.i.i.i.i.i.i.i.i, -3
  %umin.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gtd, i64 %i.gte) ; 2 uses
  %i.gtf = sub i64 %umin.i.i.i.i.i.i.i.i.i, %.063.i.i.i.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %i.gtf ; 2 uses
  %i.gtg = xor i64 %umin.i.i.i.i.i.i.i.i.i, -1
  %i.gth = add i64 %i.gtc, %i.gtg
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i, i8 48, i64 %i.gth, i1 false), !tbaa !45, !noalias !651
  %scevgep65.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gti = phi ptr [ %i.gta, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gtj = shl nsw i64 %i.gsg, 1
  %i.gtk = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gtj
  %i.gtl = getelementptr i8, ptr %i.gti, i64 -5
  %i.gtm = load <2 x i8>, ptr %i.gtk, align 1, !tbaa !45, !noalias !651
  %i.gtn = shufflevector <2 x i8> %i.gtm, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gto = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.gtn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.gto, ptr %i.gtl, align 1, !tbaa !45, !noalias !651
  %i.gtp = shl nsw i64 %i.gsd, 1
  %i.gtq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gtp
  %i.gtr = shl nuw nsw i64 %i.gsb, 1
  %i.gts = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gtr
  %i.gtt = add nsw i32 %.sroa.037.0.i.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.gtu = icmp sgt i32 %.sroa.037.0.i.i.i.i.i.i.i.i.i, -719469
  %i.gtv = add nuw nsw i32 %.sroa.037.0.i.i.i.i.i.i.i.i.i, 573372
  %i.gtw = select i1 %i.gtu, i32 %i.gtt, i32 %i.gtv
  %i.gtx = sdiv i32 %i.gtw, 146097                ; 2 uses
  %.neg.i.i17.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.gtx, -146097
  %i.gty = add nsw i32 %.neg.i.i17.i.i.i.i.i.i.i.i.i, %i.gtt ; 5 uses
  %i.gtz = udiv i32 %i.gty, 1460
  %i.gua = udiv i32 %i.gty, 36524
  %i.gub = udiv i32 %i.gty, 146096
  %.neg3930 = add nsw i32 %i.gua, %i.gty
  %i.guc = add nuw nsw i32 %i.gub, %i.gtz
  %i.gud = sub nsw i32 %.neg3930, %i.guc          ; 3 uses
  %i.gue = udiv i32 %i.gud, 365                   ; 2 uses
  %i.guf = mul nsw i32 %i.gtx, 400
  %i.gug = add nsw i32 %i.gue, %i.guf
  %i.guh = udiv i32 %i.gud, 1460
  %i.gui = udiv i32 %i.gud, 36500
  %.neg36.i.i.i.i.i.i.i.i.i.i.i = mul i32 %i.gue, -365
  %.neg37.i.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %i.gty, %i.guh
  %.neg25.i.i.i.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i.i.i.i.i.i, %i.gui
  %i.guj = add i32 %.neg25.i.i.i.i.i.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.guk = mul i32 %i.guj, 5
  %i.gul = add i32 %i.guk, 2                      ; 2 uses
  %i.gum = udiv i32 %i.gul, 153                   ; 2 uses
  %i.gun = mul nuw i32 %i.gum, 153
  %i.guo = add nuw i32 %i.gun, 2
  %i.gup = udiv i32 %i.guo, 5
  %i.guq = sub i32 %i.guj, %i.gup
  %i.gur = icmp ult i32 %i.gul, 1530
  %.v.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gur, i32 3, i32 -9
  %i.gus = add nsw i32 %.v.i.i.i.i.i.i.i.i.i.i.i, %i.gum ; 2 uses
  %i.gut = icmp ult i32 %i.gus, 3
  %i.guu = zext i1 %i.gut to i32
  %i.guv = add nsw i32 %i.gug, %i.guu
  %i.guw = shl i32 %i.guq, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = add i32 %i.guw, 16777216
  %i.gux = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 23
  %i.guy = zext nneg i32 %i.gux to i64
  %i.guz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.guy
  %i.gva = shl nsw i32 %i.gus, 1
  %i.gvb = and i32 %i.gva, 510
  %i.gvc = zext nneg i32 %i.gvb to i64
  %i.gvd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gvc
  %sext.i.i.i.i.i.i.i.i.i.i = shl i32 %i.guv, 16
  %i.gve = ashr exact i32 %sext.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.gvf = icmp slt i32 %i.gve, 0
  %i.gvg = call i32 @llvm.abs.i32(i32 %i.gve, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %i.gvg to i16 ; 3 uses
  %i.gvh = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 100
  %i.gvi = shl nuw nsw i16 %i.gvh, 1
  %i.gvj = zext nneg i16 %i.gvi to i64
  %i.gvk = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gvj
  %i.gvl = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 100
  %i.gvm = urem i16 %i.gvl, 100
  %i.gvn = shl nuw nsw i16 %i.gvm, 1
  %i.gvo = zext nneg i16 %i.gvn to i64
  %i.gvp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gvo
  %i.gvq = getelementptr i8, ptr %i.gti, i64 -21  ; 2 uses
  %i.gvr = load <2 x i8>, ptr %i.gtq, align 1, !tbaa !45, !noalias !651
  %i.gvs = load <2 x i8>, ptr %i.gts, align 1, !tbaa !45, !noalias !651
  %i.gvt = load <2 x i8>, ptr %i.guz, align 1, !tbaa !45, !noalias !651
  %i.gvu = load <2 x i8>, ptr %i.gvd, align 1, !tbaa !45, !noalias !651
  %i.gvv = load <2 x i8>, ptr %i.gvk, align 1, !tbaa !45, !noalias !651
  %i.gvw = load <2 x i8>, ptr %i.gvp, align 1, !tbaa !45, !noalias !651
  %i.gvx = shufflevector <2 x i8> %i.gvw, <2 x i8> %i.gvv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gvy = shufflevector <16 x i8> %i.gvx, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.gvz = shufflevector <2 x i8> %i.gvu, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gwa = shufflevector <16 x i8> %i.gvy, <16 x i8> %i.gvz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.gwb = shufflevector <2 x i8> %i.gvt, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gwc = shufflevector <16 x i8> %i.gwa, <16 x i8> %i.gwb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.gwd = shufflevector <2 x i8> %i.gvs, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gwe = shufflevector <16 x i8> %i.gwc, <16 x i8> %i.gwd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.gwf = shufflevector <2 x i8> %i.gvr, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gwg = shufflevector <16 x i8> %i.gwe, <16 x i8> %i.gwf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.gwg, ptr %i.gvq, align 1, !tbaa !45, !noalias !651
  %i.gwh = icmp samesign ugt i32 %i.gvg, 9999
  br i1 %i.gwh, label %bb.act, label %bb.acu

bb.act:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.gwi = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 10000
  %i.gwj = trunc nuw nsw i16 %i.gwi to i8
  %i.gwk = or disjoint i8 %i.gwj, 48
  %i.gwl = getelementptr i8, ptr %i.gti, i64 -22  ; 2 uses
  store i8 %i.gwk, ptr %i.gwl, align 1, !tbaa !45, !noalias !651
  br label %bb.acu

bb.acu:                                           ; preds = %bb.act, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %.4.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gwl, %bb.act ], [ %i.gvq, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.gvf, label %bb.acv, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i

bb.acv:                                           ; preds = %bb.acu
  %i.gwm = getelementptr inbounds i8, ptr %.4.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gwm, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.acv, %bb.acu
  %.5.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gwm, %bb.acv ], [ %.4.i.i.i.i.i.i.i.i.i, %bb.acu ] ; 2 uses
  %i.gwn = ptrtoint ptr %.5.i.i.i.i.i.i.i.i.i to i64
  %i.gwo = sub i64 %i.gnz, %i.gwn                 ; 3 uses
  %i.gwp = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.gwq = getelementptr inbounds nuw i8, ptr %i.gwp, i64 52
  %i.gwr = load i32, ptr %i.gwq, align 4, !tbaa !47, !noalias !651
  %i.gws = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.gwt = sext i32 %i.gwr to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gwo, i64 %i.gwt)
  %i.gwu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gws, ptr noundef nonnull %.5.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc14.i.i.i1954 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc14.i.i.i1954:                               ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.gwv = icmp ugt i64 %i.gwo, %i.gwt
  br i1 %i.gwv, label %bb.acw, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i

bb.acw:                                           ; preds = %.noexc14.i.i.i1954
  %i.gww = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.gwx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gww, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc15.i.i.i1955 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc15.i.i.i1955:                               ; preds = %bb.acw
  %i.gwy = sub nuw i64 %i.gwo, %i.gwt
  %i.gwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gww, i64 noundef %i.gwy)
          to label %.noexc16.i.i.i1956 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc16.i.i.i1956:                               ; preds = %.noexc15.i.i.i1955
  %i.gxa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gwz, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i.i.i1956, %.noexc14.i.i.i1954
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953

bb.acx:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952
  %i.gxb = add i64 %i.grt, 1096193779200000000
  %spec.select.i.i18.i.i.i.i.i.i.i.i = icmp ult i64 %i.gxb, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i.i.i.i.i.i, label %bb.acy, label %.invoke100.i.i.i, !prof !77

bb.acy:                                           ; preds = %bb.acx
  %i.gxc = sdiv i64 %i.grt, 86400000000           ; 3 uses
  %i.gxd = trunc nsw i64 %i.gxc to i32            ; 2 uses
  %i.gxe = mul nsw i64 %i.gxc, 86400000000        ; 2 uses
  %.not53.i19.i.i.i.i.i.i.i.i = icmp sgt i64 %i.gxe, %i.grt
  br i1 %.not53.i19.i.i.i.i.i.i.i.i, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %.neg.i.i.i20.i.i.i.i.i.i.i.i = mul nsw i64 %i.gxc, -86400000000
  %i.gxf = add nsw i64 %.neg.i.i.i20.i.i.i.i.i.i.i.i, %i.grt
  br label %bb.adb

bb.ada:                                           ; preds = %bb.acy
  %.neg.i65.i.i.i.i.i.i.i.i = add nsw i64 %i.grt, 86400000000
  %i.gxg = sub nsw i64 %.neg.i65.i.i.i.i.i.i.i.i, %i.gxe
  %i.gxh = add nsw i32 %i.gxd, -1
  br label %bb.adb

bb.adb:                                           ; preds = %bb.ada, %bb.acz
  %.sroa.036.0.i21.i.i.i.i.i.i.i.i = phi i64 [ %i.gxf, %bb.acz ], [ %i.gxg, %bb.ada ]
  %.sroa.037.0.i22.i.i.i.i.i.i.i.i = phi i32 [ %i.gxd, %bb.acz ], [ %i.gxh, %bb.ada ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18, !noalias !651
  %.not.i23.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i.i.i, label %bb.add, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  store i8 90, ptr %i.gnv, align 1, !tbaa !45, !noalias !651
  br label %bb.add

bb.add:                                           ; preds = %bb.adc, %bb.adb
  %.0.i24.i.i.i.i.i.i.i.i = phi ptr [ %i.gnu, %bb.adb ], [ %i.gnv, %bb.adc ] ; 6 uses
  %.063.i25.i.i.i.i.i.i.i.i = ptrtoaddr ptr %.0.i24.i.i.i.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.gxi = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i, 3600000000 ; 3 uses
  %i.gxj = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i.i.i.i.i.i = mul nsw i64 %i.gxi, -60
  %i.gxk = add nsw i64 %.neg.i.i.i.i27.i.i.i.i.i.i.i.i, %i.gxj ; 2 uses
  %.neg.i7.i.i.i28.i.i.i.i.i.i.i.i = mul nsw i64 %i.gxi, -3600000000
  %i.gxl = add nsw i64 %.neg.i7.i.i.i28.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i29.i.i.i.i.i.i.i.i = mul nsw i64 %i.gxk, -60000000
  %i.gxm = add nsw i64 %i.gxl, %.neg.i8.i.i.i29.i.i.i.i.i.i.i.i ; 2 uses
  %i.gxn = sdiv i64 %i.gxm, 1000000               ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i.i.i.i.i.i = mul nsw i64 %i.gxn, -1000000
  %i.gxo = add nsw i64 %.neg.i.i.i.i.i30.i.i.i.i.i.i.i.i, %i.gxm ; 3 uses
  %i.gxp = icmp sgt i64 %i.gxo, 99
  br i1 %i.gxp, label %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i:                 ; preds = %bb.add, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i
  %.1.idx.i60.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i63.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ], [ 0, %bb.add ] ; 2 uses
  %.08.i.i.i.i61.i.i.i.i.i.i.i.i = phi i64 [ %i.gxx, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ], [ %i.gxo, %bb.add ] ; 3 uses
  %.1.ptr.i62.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.1.idx.i60.i.i.i.i.i.i.i.i
  %i.gxq = urem i64 %.08.i.i.i.i61.i.i.i.i.i.i.i.i, 100
  %i.gxr = shl nuw nsw i64 %i.gxq, 1
  %i.gxs = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gxr ; 2 uses
  %i.gxt = getelementptr inbounds nuw i8, ptr %i.gxs, i64 1
  %i.gxu = load i8, ptr %i.gxt, align 1, !tbaa !45, !noalias !651
  %i.gxv = getelementptr inbounds i8, ptr %.1.ptr.i62.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.gxu, ptr %i.gxv, align 1, !tbaa !45, !noalias !651
  %i.gxw = load i8, ptr %i.gxs, align 1, !tbaa !45, !noalias !651
  %.1.add.i63.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i60.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i64.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.1.add.i63.i.i.i.i.i.i.i.i
  store i8 %i.gxw, ptr %.ptr55.i64.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gxx = udiv i64 %.08.i.i.i.i61.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.gxy = icmp samesign ugt i64 %.08.i.i.i.i61.i.i.i.i.i.i.i.i, 9999
  br i1 %i.gxy, label %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i, %bb.add
  %.2.idx.i32.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.add ], [ %.1.add.i63.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i = phi i64 [ %i.gxo, %bb.add ], [ %i.gxx, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gxz = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i, 9
  br i1 %i.gxz, label %bb.ade, label %bb.adf

bb.ade:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i
  %i.gya = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i, 1
  %i.gyb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gya ; 2 uses
  %i.gyc = getelementptr inbounds nuw i8, ptr %i.gyb, i64 1
  %i.gyd = load i8, ptr %i.gyc, align 1, !tbaa !45, !noalias !651
  %.2.add.i57.i.i.i.i.i.i.i.i = add nsw i64 %.2.idx.i32.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i58.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.2.add.i57.i.i.i.i.i.i.i.i
  store i8 %i.gyd, ptr %.ptr54.i58.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gye = load i8, ptr %i.gyb, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i

bb.adf:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i
  %i.gyf = trunc i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i to i8
  %i.gyg = add i8 %i.gyf, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i: ; preds = %bb.adf, %bb.ade
  %.3.idx.i35.i.i.i.i.i.i.i.i = phi i64 [ %.2.add.i57.i.i.i.i.i.i.i.i, %bb.ade ], [ %.2.idx.i32.i.i.i.i.i.i.i.i, %bb.adf ] ; 3 uses
  %.sink.i.i.i.i36.i.i.i.i.i.i.i.i = phi i8 [ %i.gye, %bb.ade ], [ %i.gyg, %bb.adf ]
  %i.gyh = getelementptr i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.3.idx.i35.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i37.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gyh, i64 -1
  store i8 %.sink.i.i.i.i36.i.i.i.i.i.i.i.i, ptr %.ptr.i37.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gyi = icmp sgt i64 %.3.idx.i35.i.i.i.i.i.i.i.i, -5
  br i1 %i.gyi, label %.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i
  %i.gyj = add i64 %.3.idx.i35.i.i.i.i.i.i.i.i, %.063.i25.i.i.i.i.i.i.i.i ; 2 uses
  %i.gyk = add i64 %i.gyj, -2
  %i.gyl = add i64 %.063.i25.i.i.i.i.i.i.i.i, -6
  %umin.i54.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gyk, i64 %i.gyl) ; 2 uses
  %i.gym = sub i64 %umin.i54.i.i.i.i.i.i.i.i, %.063.i25.i.i.i.i.i.i.i.i
  %scevgep.i55.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %i.gym ; 2 uses
  %i.gyn = xor i64 %umin.i54.i.i.i.i.i.i.i.i, -1
  %i.gyo = add i64 %i.gyj, %i.gyn
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i55.i.i.i.i.i.i.i.i, i8 48, i64 %i.gyo, i1 false), !tbaa !45, !noalias !651
  %scevgep65.i56.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i55.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i
  %i.gyp = phi ptr [ %i.gyh, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i ], [ %scevgep65.i56.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gyq = shl nsw i64 %i.gxn, 1
  %i.gyr = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gyq
  %i.gys = getelementptr i8, ptr %i.gyp, i64 -5
  %i.gyt = load <2 x i8>, ptr %i.gyr, align 1, !tbaa !45, !noalias !651
  %i.gyu = shufflevector <2 x i8> %i.gyt, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gyv = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.gyu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.gyv, ptr %i.gys, align 1, !tbaa !45, !noalias !651
  %i.gyw = shl nsw i64 %i.gxk, 1
  %i.gyx = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gyw
  %i.gyy = shl nuw nsw i64 %i.gxi, 1
  %i.gyz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gyy
  %i.gza = add nsw i32 %.sroa.037.0.i22.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.gzb = icmp sgt i32 %.sroa.037.0.i22.i.i.i.i.i.i.i.i, -719469
  %i.gzc = add nuw nsw i32 %.sroa.037.0.i22.i.i.i.i.i.i.i.i, 573372
  %i.gzd = select i1 %i.gzb, i32 %i.gza, i32 %i.gzc
  %i.gze = sdiv i32 %i.gzd, 146097                ; 2 uses
  %.neg.i.i17.i38.i.i.i.i.i.i.i.i = mul nsw i32 %i.gze, -146097
  %i.gzf = add nsw i32 %.neg.i.i17.i38.i.i.i.i.i.i.i.i, %i.gza ; 5 uses
  %i.gzg = udiv i32 %i.gzf, 1460
  %i.gzh = udiv i32 %i.gzf, 36524
  %i.gzi = udiv i32 %i.gzf, 146096
  %.neg3925 = add nsw i32 %i.gzh, %i.gzf
  %i.gzj = add nuw nsw i32 %i.gzi, %i.gzg
  %i.gzk = sub nsw i32 %.neg3925, %i.gzj          ; 3 uses
  %i.gzl = udiv i32 %i.gzk, 365                   ; 2 uses
  %i.gzm = mul nsw i32 %i.gze, 400
  %i.gzn = add nsw i32 %i.gzl, %i.gzm
  %i.gzo = udiv i32 %i.gzk, 1460
  %i.gzp = udiv i32 %i.gzk, 36500
  %.neg36.i.i.i40.i.i.i.i.i.i.i.i = mul i32 %i.gzl, -365
  %.neg37.i.i.i41.i.i.i.i.i.i.i.i = sub nsw i32 %i.gzf, %i.gzo
  %.neg25.i.i.i42.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i41.i.i.i.i.i.i.i.i, %i.gzp
  %i.gzq = add i32 %.neg25.i.i.i42.i.i.i.i.i.i.i.i, %.neg36.i.i.i40.i.i.i.i.i.i.i.i ; 2 uses
  %i.gzr = mul i32 %i.gzq, 5
  %i.gzs = add i32 %i.gzr, 2                      ; 2 uses
  %i.gzt = udiv i32 %i.gzs, 153                   ; 2 uses
  %i.gzu = mul nuw i32 %i.gzt, 153
  %i.gzv = add nuw i32 %i.gzu, 2
  %i.gzw = udiv i32 %i.gzv, 5
  %i.gzx = sub i32 %i.gzq, %i.gzw
  %i.gzy = icmp ult i32 %i.gzs, 1530
  %.v.i.i.i43.i.i.i.i.i.i.i.i = select i1 %i.gzy, i32 3, i32 -9
  %i.gzz = add nsw i32 %.v.i.i.i43.i.i.i.i.i.i.i.i, %i.gzt ; 2 uses
  %i.haa = icmp ult i32 %i.gzz, 3
  %i.hab = zext i1 %i.haa to i32
  %i.hac = add nsw i32 %i.gzn, %i.hab
  %i.had = shl i32 %i.gzx, 24
  %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i.i.i.i = add i32 %i.had, 16777216
  %i.hae = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i.i.i.i, 23
  %i.haf = zext nneg i32 %i.hae to i64
  %i.hag = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.haf
  %i.hah = shl nsw i32 %i.gzz, 1
  %i.hai = and i32 %i.hah, 510
  %i.haj = zext nneg i32 %i.hai to i64
  %i.hak = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.haj
  %sext.i.i45.i.i.i.i.i.i.i.i = shl i32 %i.hac, 16
  %i.hal = ashr exact i32 %sext.i.i45.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ham = icmp slt i32 %i.hal, 0
  %i.han = call i32 @llvm.abs.i32(i32 %i.hal, i1 true) ; 2 uses
  %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i = trunc nuw i32 %i.han to i16 ; 3 uses
  %i.hao = urem i16 %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i, 100
  %i.hap = shl nuw nsw i16 %i.hao, 1
  %i.haq = zext nneg i16 %i.hap to i64
  %i.har = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.haq
  %i.has = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i, 100
  %i.hat = urem i16 %i.has, 100
  %i.hau = shl nuw nsw i16 %i.hat, 1
  %i.hav = zext nneg i16 %i.hau to i64
  %i.haw = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hav
  %i.hax = getelementptr i8, ptr %i.gyp, i64 -21  ; 2 uses
  %i.hay = load <2 x i8>, ptr %i.gyx, align 1, !tbaa !45, !noalias !651
  %i.haz = load <2 x i8>, ptr %i.gyz, align 1, !tbaa !45, !noalias !651
  %i.hba = load <2 x i8>, ptr %i.hag, align 1, !tbaa !45, !noalias !651
  %i.hbb = load <2 x i8>, ptr %i.hak, align 1, !tbaa !45, !noalias !651
  %i.hbc = load <2 x i8>, ptr %i.har, align 1, !tbaa !45, !noalias !651
  %i.hbd = load <2 x i8>, ptr %i.haw, align 1, !tbaa !45, !noalias !651
  %i.hbe = shufflevector <2 x i8> %i.hbd, <2 x i8> %i.hbc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hbf = shufflevector <16 x i8> %i.hbe, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.hbg = shufflevector <2 x i8> %i.hbb, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hbh = shufflevector <16 x i8> %i.hbf, <16 x i8> %i.hbg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hbi = shufflevector <2 x i8> %i.hba, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hbj = shufflevector <16 x i8> %i.hbh, <16 x i8> %i.hbi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hbk = shufflevector <2 x i8> %i.haz, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hbl = shufflevector <16 x i8> %i.hbj, <16 x i8> %i.hbk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.hbm = shufflevector <2 x i8> %i.hay, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hbn = shufflevector <16 x i8> %i.hbl, <16 x i8> %i.hbm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.hbn, ptr %i.hax, align 1, !tbaa !45, !noalias !651
  %i.hbo = icmp samesign ugt i32 %i.han, 9999
  br i1 %i.hbo, label %bb.adg, label %bb.adh

bb.adg:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.hbp = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i, 10000
  %i.hbq = trunc nuw nsw i16 %i.hbp to i8
  %i.hbr = or disjoint i8 %i.hbq, 48
  %i.hbs = getelementptr i8, ptr %i.gyp, i64 -22  ; 2 uses
  store i8 %i.hbr, ptr %i.hbs, align 1, !tbaa !45, !noalias !651
  br label %bb.adh

bb.adh:                                           ; preds = %bb.adg, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %.4.i47.i.i.i.i.i.i.i.i = phi ptr [ %i.hbs, %bb.adg ], [ %i.hax, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.ham, label %bb.adi, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i

bb.adi:                                           ; preds = %bb.adh
  %i.hbt = getelementptr inbounds i8, ptr %.4.i47.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.hbt, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i: ; preds = %bb.adi, %bb.adh
  %.5.i49.i.i.i.i.i.i.i.i = phi ptr [ %i.hbt, %bb.adi ], [ %.4.i47.i.i.i.i.i.i.i.i, %bb.adh ] ; 2 uses
  %i.hbu = ptrtoint ptr %.5.i49.i.i.i.i.i.i.i.i to i64
  %i.hbv = sub i64 %i.gnw, %i.hbu                 ; 3 uses
  %i.hbw = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.hbx = getelementptr inbounds nuw i8, ptr %i.hbw, i64 52
  %i.hby = load i32, ptr %i.hbx, align 4, !tbaa !47, !noalias !651
  %i.hbz = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.hca = sext i32 %i.hby to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i51.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hbv, i64 %i.hca)
  %i.hcb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hbz, ptr noundef nonnull %.5.i49.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i51.i.i.i.i.i.i.i.i)
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc19.i.i.i:                                   ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i
  %i.hcc = icmp ugt i64 %i.hbv, %i.hca
  br i1 %i.hcc, label %bb.adj, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i

bb.adj:                                           ; preds = %.noexc19.i.i.i
  %i.hcd = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.hce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hcd, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc20.i.i.i:                                   ; preds = %bb.adj
  %i.hcf = sub nuw i64 %i.hbv, %i.hca
  %i.hcg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hcd, i64 noundef %i.hcf)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc21.i.i.i:                                   ; preds = %.noexc20.i.i.i
  %i.hch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hcg, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i, %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953

bb.adk:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952
  %i.hci = sdiv i64 %i.grt, 86400000000000        ; 3 uses
  %i.hcj = trunc nsw i64 %i.hci to i32            ; 2 uses
  %i.hck = mul nsw i64 %i.hci, 86400000000000     ; 2 uses
  %.not53.i66.i.i.i.i.i.i.i.i = icmp sgt i64 %i.hck, %i.grt
  br i1 %.not53.i66.i.i.i.i.i.i.i.i, label %bb.adm, label %bb.adl

bb.adl:                                           ; preds = %bb.adk
  %.neg.i.i.i67.i.i.i.i.i.i.i.i = mul nsw i64 %i.hci, -86400000000000
  %i.hcl = add i64 %.neg.i.i.i67.i.i.i.i.i.i.i.i, %i.grt
  br label %bb.adn

bb.adm:                                           ; preds = %bb.adk
  %.neg.i111.i.i.i.i.i.i.i.i = add i64 %i.grt, 86400000000000
  %i.hcm = sub i64 %.neg.i111.i.i.i.i.i.i.i.i, %i.hck
  %i.hcn = add nsw i32 %i.hcj, -1
  br label %bb.adn

bb.adn:                                           ; preds = %bb.adm, %bb.adl
  %.sroa.036.0.i68.i.i.i.i.i.i.i.i = phi i64 [ %i.hcl, %bb.adl ], [ %i.hcm, %bb.adm ]
  %.sroa.037.0.i69.i.i.i.i.i.i.i.i = phi i32 [ %i.hcj, %bb.adl ], [ %i.hcn, %bb.adm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18, !noalias !651
  %.not.i70.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i70.i.i.i.i.i.i.i.i, label %bb.adp, label %bb.ado

bb.ado:                                           ; preds = %bb.adn
  store i8 90, ptr %i.gob, align 1, !tbaa !45, !noalias !651
  br label %bb.adp

bb.adp:                                           ; preds = %bb.ado, %bb.adn
  %.0.i71.i.i.i.i.i.i.i.i = phi ptr [ %i.goa, %bb.adn ], [ %i.gob, %bb.ado ] ; 6 uses
  %.063.i72.i.i.i.i.i.i.i.i = ptrtoaddr ptr %.0.i71.i.i.i.i.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i68.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.hco = udiv i64 %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i, 3600000000000 ; 3 uses
  %i.hcp = udiv i64 %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i, 60000000000
  %.neg.i.i.i.i74.i.i.i.i.i.i.i.i = mul nsw i64 %i.hco, -60
  %i.hcq = add nsw i64 %.neg.i.i.i.i74.i.i.i.i.i.i.i.i, %i.hcp ; 2 uses
  %.neg.i7.i.i.i75.i.i.i.i.i.i.i.i = mul nsw i64 %i.hco, -3600000000000
  %i.hcr = add nsw i64 %.neg.i7.i.i.i75.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i76.i.i.i.i.i.i.i.i = mul nsw i64 %i.hcq, -60000000000
  %i.hcs = add i64 %i.hcr, %.neg.i8.i.i.i76.i.i.i.i.i.i.i.i ; 2 uses
  %i.hct = sdiv i64 %i.hcs, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i77.i.i.i.i.i.i.i.i = mul nsw i64 %i.hct, -1000000000
  %i.hcu = add i64 %.neg.i.i.i.i.i77.i.i.i.i.i.i.i.i, %i.hcs ; 3 uses
  %i.hcv = icmp sgt i64 %i.hcu, 99
  br i1 %i.hcv, label %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i:                ; preds = %bb.adp, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i
  %.1.idx.i106.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i109.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ], [ 0, %bb.adp ] ; 2 uses
  %.08.i.i.i.i107.i.i.i.i.i.i.i.i = phi i64 [ %i.hdd, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ], [ %i.hcu, %bb.adp ] ; 3 uses
  %.1.ptr.i108.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.1.idx.i106.i.i.i.i.i.i.i.i
  %i.hcw = urem i64 %.08.i.i.i.i107.i.i.i.i.i.i.i.i, 100
  %i.hcx = shl nuw nsw i64 %i.hcw, 1
  %i.hcy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hcx ; 2 uses
  %i.hcz = getelementptr inbounds nuw i8, ptr %i.hcy, i64 1
  %i.hda = load i8, ptr %i.hcz, align 1, !tbaa !45, !noalias !651
  %i.hdb = getelementptr inbounds i8, ptr %.1.ptr.i108.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.hda, ptr %i.hdb, align 1, !tbaa !45, !noalias !651
  %i.hdc = load i8, ptr %i.hcy, align 1, !tbaa !45, !noalias !651
  %.1.add.i109.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i106.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i110.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.1.add.i109.i.i.i.i.i.i.i.i
  store i8 %i.hdc, ptr %.ptr55.i110.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.hdd = udiv i64 %.08.i.i.i.i107.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.hde = icmp samesign ugt i64 %.08.i.i.i.i107.i.i.i.i.i.i.i.i, 9999
  br i1 %i.hde, label %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i, %bb.adp
  %.2.idx.i79.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.adp ], [ %.1.add.i109.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i = phi i64 [ %i.hcu, %bb.adp ], [ %i.hdd, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hdf = icmp sgt i64 %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i, 9
  br i1 %i.hdf, label %bb.adq, label %bb.adr

bb.adq:                                           ; preds = %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i
  %i.hdg = shl nuw nsw i64 %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i, 1
  %i.hdh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hdg ; 2 uses
  %i.hdi = getelementptr inbounds nuw i8, ptr %i.hdh, i64 1
  %i.hdj = load i8, ptr %i.hdi, align 1, !tbaa !45, !noalias !651
  %.2.add.i103.i.i.i.i.i.i.i.i = add nsw i64 %.2.idx.i79.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i104.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.2.add.i103.i.i.i.i.i.i.i.i
  store i8 %i.hdj, ptr %.ptr54.i104.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.hdk = load i8, ptr %i.hdh, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i

bb.adr:                                           ; preds = %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i
  %i.hdl = trunc i64 %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i to i8
  %i.hdm = add i8 %i.hdl, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i: ; preds = %bb.adr, %bb.adq
  %.3.idx.i82.i.i.i.i.i.i.i.i = phi i64 [ %.2.add.i103.i.i.i.i.i.i.i.i, %bb.adq ], [ %.2.idx.i79.i.i.i.i.i.i.i.i, %bb.adr ] ; 3 uses
  %.sink.i.i.i.i83.i.i.i.i.i.i.i.i = phi i8 [ %i.hdk, %bb.adq ], [ %i.hdm, %bb.adr ]
  %i.hdn = getelementptr i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.3.idx.i82.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i84.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.hdn, i64 -1
  store i8 %.sink.i.i.i.i83.i.i.i.i.i.i.i.i, ptr %.ptr.i84.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.hdo = icmp sgt i64 %.3.idx.i82.i.i.i.i.i.i.i.i, -8
  br i1 %i.hdo, label %.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i
  %i.hdp = add i64 %.3.idx.i82.i.i.i.i.i.i.i.i, %.063.i72.i.i.i.i.i.i.i.i ; 2 uses
  %i.hdq = add i64 %i.hdp, -2
  %i.hdr = add i64 %.063.i72.i.i.i.i.i.i.i.i, -9
  %umin.i100.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hdq, i64 %i.hdr) ; 2 uses
  %i.hds = sub i64 %umin.i100.i.i.i.i.i.i.i.i, %.063.i72.i.i.i.i.i.i.i.i
  %scevgep.i101.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %i.hds ; 2 uses
  %i.hdt = xor i64 %umin.i100.i.i.i.i.i.i.i.i, -1
  %i.hdu = add i64 %i.hdp, %i.hdt
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i101.i.i.i.i.i.i.i.i, i8 48, i64 %i.hdu, i1 false), !tbaa !45, !noalias !651
  %scevgep65.i102.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i101.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i
  %i.hdv = phi ptr [ %i.hdn, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i ], [ %scevgep65.i102.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hdw = shl nsw i64 %i.hct, 1
  %i.hdx = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hdw
  %i.hdy = getelementptr i8, ptr %i.hdv, i64 -5
  %i.hdz = load <2 x i8>, ptr %i.hdx, align 1, !tbaa !45, !noalias !651
  %i.hea = shufflevector <2 x i8> %i.hdz, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.heb = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.hea, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.heb, ptr %i.hdy, align 1, !tbaa !45, !noalias !651
  %i.hec = shl nsw i64 %i.hcq, 1
  %i.hed = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hec
  %i.hee = shl nuw nsw i64 %i.hco, 1
  %i.hef = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hee
  %i.heg = add nsw i32 %.sroa.037.0.i69.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.heh = udiv i32 %i.heg, 146097                ; 2 uses
  %.neg.i.i17.i85.i.i.i.i.i.i.i.i = mul nsw i32 %i.heh, -146097
  %i.hei = add nsw i32 %.neg.i.i17.i85.i.i.i.i.i.i.i.i, %i.heg ; 5 uses
  %i.hej = udiv i32 %i.hei, 1460
  %i.hek = udiv i32 %i.hei, 36524
  %i.hel = udiv i32 %i.hei, 146096
  %.neg3935 = add nsw i32 %i.hek, %i.hei
  %i.hem = add nuw nsw i32 %i.hel, %i.hej
  %i.hen = sub nsw i32 %.neg3935, %i.hem          ; 3 uses
  %i.heo = udiv i32 %i.hen, 365                   ; 2 uses
  %i.hep = mul nuw nsw i32 %i.heh, 400
  %i.heq = add nuw nsw i32 %i.heo, %i.hep
  %i.her = udiv i32 %i.hen, 1460
  %i.hes = udiv i32 %i.hen, 36500
  %.neg36.i.i.i87.i.i.i.i.i.i.i.i = mul i32 %i.heo, -365
  %.neg37.i.i.i88.i.i.i.i.i.i.i.i = sub nsw i32 %i.hei, %i.her
  %.neg25.i.i.i89.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i88.i.i.i.i.i.i.i.i, %i.hes
  %i.het = add i32 %.neg25.i.i.i89.i.i.i.i.i.i.i.i, %.neg36.i.i.i87.i.i.i.i.i.i.i.i ; 2 uses
  %i.heu = mul i32 %i.het, 5
  %i.hev = add i32 %i.heu, 2                      ; 2 uses
  %i.hew = udiv i32 %i.hev, 153                   ; 2 uses
  %i.hex = mul nuw i32 %i.hew, 153
  %i.hey = add nuw i32 %i.hex, 2
  %i.hez = udiv i32 %i.hey, 5
  %i.hfa = sub i32 %i.het, %i.hez
  %i.hfb = icmp ult i32 %i.hev, 1530
  %.v.i.i.i90.i.i.i.i.i.i.i.i = select i1 %i.hfb, i32 3, i32 -9
  %i.hfc = add nsw i32 %.v.i.i.i90.i.i.i.i.i.i.i.i, %i.hew ; 2 uses
  %i.hfd = icmp ult i32 %i.hfc, 3
  %i.hfe = zext i1 %i.hfd to i32
  %i.hff = add nuw nsw i32 %i.heq, %i.hfe
  %i.hfg = shl i32 %i.hfa, 24
  %.sroa.3.0.insert.ext.i.i.i91.i.i.i.i.i.i.i.i = add i32 %i.hfg, 16777216
  %i.hfh = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i91.i.i.i.i.i.i.i.i, 23
  %i.hfi = zext nneg i32 %i.hfh to i64
  %i.hfj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hfi
  %i.hfk = shl nsw i32 %i.hfc, 1
  %i.hfl = and i32 %i.hfk, 510
  %i.hfm = zext nneg i32 %i.hfl to i64
  %i.hfn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hfm
  %sext.i.i92.i.i.i.i.i.i.i.i = shl i32 %i.hff, 16
  %i.hfo = ashr exact i32 %sext.i.i92.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hfp = icmp slt i32 %i.hfo, 0
  %i.hfq = call i32 @llvm.abs.i32(i32 %i.hfo, i1 true) ; 2 uses
  %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i = trunc nuw i32 %i.hfq to i16 ; 3 uses
  %i.hfr = urem i16 %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i, 100
  %i.hfs = shl nuw nsw i16 %i.hfr, 1
  %i.hft = zext nneg i16 %i.hfs to i64
  %i.hfu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hft
  %i.hfv = udiv i16 %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i, 100
  %i.hfw = urem i16 %i.hfv, 100
  %i.hfx = shl nuw nsw i16 %i.hfw, 1
  %i.hfy = zext nneg i16 %i.hfx to i64
  %i.hfz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hfy
  %i.hga = getelementptr i8, ptr %i.hdv, i64 -21  ; 2 uses
  %i.hgb = load <2 x i8>, ptr %i.hed, align 1, !tbaa !45, !noalias !651
  %i.hgc = load <2 x i8>, ptr %i.hef, align 1, !tbaa !45, !noalias !651
  %i.hgd = load <2 x i8>, ptr %i.hfj, align 1, !tbaa !45, !noalias !651
  %i.hge = load <2 x i8>, ptr %i.hfn, align 1, !tbaa !45, !noalias !651
  %i.hgf = load <2 x i8>, ptr %i.hfu, align 1, !tbaa !45, !noalias !651
  %i.hgg = load <2 x i8>, ptr %i.hfz, align 1, !tbaa !45, !noalias !651
  %i.hgh = shufflevector <2 x i8> %i.hgg, <2 x i8> %i.hgf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgi = shufflevector <16 x i8> %i.hgh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.hgj = shufflevector <2 x i8> %i.hge, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgk = shufflevector <16 x i8> %i.hgi, <16 x i8> %i.hgj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hgl = shufflevector <2 x i8> %i.hgd, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgm = shufflevector <16 x i8> %i.hgk, <16 x i8> %i.hgl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hgn = shufflevector <2 x i8> %i.hgc, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgo = shufflevector <16 x i8> %i.hgm, <16 x i8> %i.hgn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.hgp = shufflevector <2 x i8> %i.hgb, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgq = shufflevector <16 x i8> %i.hgo, <16 x i8> %i.hgp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.hgq, ptr %i.hga, align 1, !tbaa !45, !noalias !651
  %i.hgr = icmp samesign ugt i32 %i.hfq, 9999
  br i1 %i.hgr, label %bb.ads, label %bb.adt

bb.ads:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.hgs = udiv i16 %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i, 10000
  %i.hgt = trunc nuw nsw i16 %i.hgs to i8
  %i.hgu = or disjoint i8 %i.hgt, 48
  %i.hgv = getelementptr i8, ptr %i.hdv, i64 -22  ; 2 uses
  store i8 %i.hgu, ptr %i.hgv, align 1, !tbaa !45, !noalias !651
  br label %bb.adt

bb.adt:                                           ; preds = %bb.ads, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %.4.i94.i.i.i.i.i.i.i.i = phi ptr [ %i.hgv, %bb.ads ], [ %i.hga, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.hfp, label %bb.adu, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i

bb.adu:                                           ; preds = %bb.adt
  %i.hgw = getelementptr inbounds i8, ptr %.4.i94.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.hgw, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i: ; preds = %bb.adu, %bb.adt
  %.5.i96.i.i.i.i.i.i.i.i = phi ptr [ %i.hgw, %bb.adu ], [ %.4.i94.i.i.i.i.i.i.i.i, %bb.adt ] ; 2 uses
  %i.hgx = ptrtoint ptr %.5.i96.i.i.i.i.i.i.i.i to i64
  %i.hgy = sub i64 %i.goc, %i.hgx                 ; 3 uses
  %i.hgz = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.hha = getelementptr inbounds nuw i8, ptr %i.hgz, i64 52
  %i.hhb = load i32, ptr %i.hha, align 4, !tbaa !47, !noalias !651
  %i.hhc = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.hhd = sext i32 %i.hhb to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i98.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hgy, i64 %i.hhd)
  %i.hhe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hhc, ptr noundef nonnull %.5.i96.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i98.i.i.i.i.i.i.i.i)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc23.i.i.i:                                   ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i
  %i.hhf = icmp ugt i64 %i.hgy, %i.hhd
  br i1 %i.hhf, label %bb.adv, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i

bb.adv:                                           ; preds = %.noexc23.i.i.i
  %i.hhg = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.hhh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hhg, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc24.i.i.i:                                   ; preds = %bb.adv
  %i.hhi = sub nuw i64 %i.hgy, %i.hhd
  %i.hhj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hhg, i64 noundef %i.hhi)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc25.i.i.i:                                   ; preds = %.noexc24.i.i.i
  %i.hhk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hhj, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc25.i.i.i, %.noexc23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953

bb.adw:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i1952
  %i.hhl = add i64 %i.grt, 1096193779200
  %spec.select.i.i112.i.i.i.i.i.i.i.i = icmp ult i64 %i.hhl, 2068084742400
  br i1 %spec.select.i.i112.i.i.i.i.i.i.i.i, label %bb.adx, label %.invoke100.i.i.i, !prof !77

bb.adx:                                           ; preds = %bb.adw
  %i.hhm = sdiv i64 %i.grt, 86400                 ; 3 uses
  %i.hhn = trunc nsw i64 %i.hhm to i32            ; 2 uses
  %i.hho = mul nsw i64 %i.hhm, 86400              ; 2 uses
  %.not46.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.hho, %i.grt
  br i1 %.not46.i.i.i.i.i.i.i.i.i, label %bb.adz, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %.neg.i.i.i113.i.i.i.i.i.i.i.i = mul nsw i64 %i.hhm, -86400
  %i.hhp = add nsw i64 %.neg.i.i.i113.i.i.i.i.i.i.i.i, %i.grt
  br label %bb.aea

bb.adz:                                           ; preds = %bb.adx
  %.neg.i131.i.i.i.i.i.i.i.i = add nsw i64 %i.grt, 86400
  %i.hhq = sub nsw i64 %.neg.i131.i.i.i.i.i.i.i.i, %i.hho
  %i.hhr = add nsw i32 %i.hhn, -1
  br label %bb.aea

bb.aea:                                           ; preds = %bb.adz, %bb.ady
  %.sroa.029.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hhp, %bb.ady ], [ %i.hhq, %bb.adz ]
  %.sroa.030.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hhn, %bb.ady ], [ %i.hhr, %bb.adz ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18, !noalias !651
  %.not.i114.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i114.i.i.i.i.i.i.i.i, label %bb.aec, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  store i8 90, ptr %.sroa.gep52.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  br label %bb.aec

bb.aec:                                           ; preds = %bb.aeb, %bb.aea
  %.sroa.phi.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i.i.i.i.i.i, %bb.aea ], [ %.sroa.gep52.i.i.i.i.i.i.i.i.i, %bb.aeb ] ; 5 uses
  %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.hhs = udiv i64 %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i, 3600 ; 3 uses
  %i.hht = udiv i64 %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i, 60
  %.neg.i.i.i.i116.i.i.i.i.i.i.i.i = mul nsw i64 %i.hhs, -60
  %i.hhu = add nsw i64 %.neg.i.i.i.i116.i.i.i.i.i.i.i.i, %i.hht ; 2 uses
  %.neg.i7.i.i.i117.i.i.i.i.i.i.i.i = mul nsw i64 %i.hhs, -3600
  %i.hhv = add nsw i64 %.neg.i7.i.i.i117.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i118.i.i.i.i.i.i.i.i = mul nsw i64 %i.hhu, -60
  %i.hhw = add nsw i64 %i.hhv, %.neg.i8.i.i.i118.i.i.i.i.i.i.i.i
  %i.hhx = shl nsw i64 %i.hhw, 1
  %i.hhy = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hhx ; 2 uses
  %i.hhz = getelementptr inbounds nuw i8, ptr %i.hhy, i64 1
  %i.hia = load i8, ptr %i.hhz, align 1, !tbaa !45, !noalias !651
  %i.hib = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.hia, ptr %i.hib, align 1, !tbaa !45, !noalias !651
  %i.hic = load i8, ptr %i.hhy, align 1, !tbaa !45, !noalias !651
  %i.hid = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -2
  store i8 %i.hic, ptr %i.hid, align 1, !tbaa !45, !noalias !651
  %i.hie = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -3
  store i8 58, ptr %i.hie, align 1, !tbaa !45, !noalias !651
  %i.hif = shl nsw i64 %i.hhu, 1
  %i.hig = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hif
  %i.hih = shl nuw nsw i64 %i.hhs, 1
  %i.hii = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hih
  %i.hij = add nsw i32 %.sroa.030.0.i.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.hik = icmp sgt i32 %.sroa.030.0.i.i.i.i.i.i.i.i.i, -719469
  %i.hil = add nuw nsw i32 %.sroa.030.0.i.i.i.i.i.i.i.i.i, 573372
  %i.him = select i1 %i.hik, i32 %i.hij, i32 %i.hil
  %i.hin = sdiv i32 %i.him, 146097                ; 2 uses
  %.neg.i.i17.i119.i.i.i.i.i.i.i.i = mul nsw i32 %i.hin, -146097
  %i.hio = add nsw i32 %.neg.i.i17.i119.i.i.i.i.i.i.i.i, %i.hij ; 5 uses
  %i.hip = udiv i32 %i.hio, 1460
  %i.hiq = udiv i32 %i.hio, 36524
  %i.hir = udiv i32 %i.hio, 146096
  %.neg3940 = add nsw i32 %i.hiq, %i.hio
  %i.his = add nuw nsw i32 %i.hir, %i.hip
  %i.hit = sub nsw i32 %.neg3940, %i.his          ; 3 uses
  %i.hiu = udiv i32 %i.hit, 365                   ; 2 uses
  %i.hiv = mul nsw i32 %i.hin, 400
  %i.hiw = add nsw i32 %i.hiu, %i.hiv
  %i.hix = udiv i32 %i.hit, 1460
  %i.hiy = udiv i32 %i.hit, 36500
  %.neg36.i.i.i120.i.i.i.i.i.i.i.i = mul i32 %i.hiu, -365
  %.neg37.i.i.i121.i.i.i.i.i.i.i.i = sub nsw i32 %i.hio, %i.hix
  %.neg25.i.i.i122.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i121.i.i.i.i.i.i.i.i, %i.hiy
  %i.hiz = add i32 %.neg25.i.i.i122.i.i.i.i.i.i.i.i, %.neg36.i.i.i120.i.i.i.i.i.i.i.i ; 2 uses
  %i.hja = mul i32 %i.hiz, 5
  %i.hjb = add i32 %i.hja, 2                      ; 2 uses
  %i.hjc = udiv i32 %i.hjb, 153                   ; 2 uses
  %i.hjd = mul nuw i32 %i.hjc, 153
  %i.hje = add nuw i32 %i.hjd, 2
  %i.hjf = udiv i32 %i.hje, 5
  %i.hjg = sub i32 %i.hiz, %i.hjf
  %i.hjh = icmp ult i32 %i.hjb, 1530
  %.v.i.i.i123.i.i.i.i.i.i.i.i = select i1 %i.hjh, i32 3, i32 -9
  %i.hji = add nsw i32 %.v.i.i.i123.i.i.i.i.i.i.i.i, %i.hjc ; 2 uses
  %i.hjj = icmp ult i32 %i.hji, 3
  %i.hjk = zext i1 %i.hjj to i32
  %i.hjl = add nsw i32 %i.hiw, %i.hjk
  %i.hjm = shl i32 %i.hjg, 24
  %.sroa.3.0.insert.ext.i.i.i124.i.i.i.i.i.i.i.i = add i32 %i.hjm, 16777216
  %i.hjn = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i124.i.i.i.i.i.i.i.i, 23
  %i.hjo = zext nneg i32 %i.hjn to i64
  %i.hjp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hjo
  %i.hjq = shl nsw i32 %i.hji, 1
  %i.hjr = and i32 %i.hjq, 510
  %i.hjs = zext nneg i32 %i.hjr to i64
  %i.hjt = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hjs
  %sext.i.i125.i.i.i.i.i.i.i.i = shl i32 %i.hjl, 16
  %i.hju = ashr exact i32 %sext.i.i125.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hjv = icmp slt i32 %i.hju, 0
  %i.hjw = call i32 @llvm.abs.i32(i32 %i.hju, i1 true) ; 2 uses
  %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i = trunc nuw i32 %i.hjw to i16 ; 3 uses
  %i.hjx = urem i16 %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i, 100
  %i.hjy = shl nuw nsw i16 %i.hjx, 1
  %i.hjz = zext nneg i16 %i.hjy to i64
  %i.hka = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hjz
  %i.hkb = udiv i16 %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i, 100
  %i.hkc = urem i16 %i.hkb, 100
  %i.hkd = shl nuw nsw i16 %i.hkc, 1
  %i.hke = zext nneg i16 %i.hkd to i64
  %i.hkf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hke
  %i.hkg = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -19 ; 2 uses
  %i.hkh = load <2 x i8>, ptr %i.hig, align 1, !tbaa !45, !noalias !651
  %i.hki = load <2 x i8>, ptr %i.hii, align 1, !tbaa !45, !noalias !651
  %i.hkj = load <2 x i8>, ptr %i.hjp, align 1, !tbaa !45, !noalias !651
  %i.hkk = load <2 x i8>, ptr %i.hjt, align 1, !tbaa !45, !noalias !651
  %i.hkl = load <2 x i8>, ptr %i.hka, align 1, !tbaa !45, !noalias !651
  %i.hkm = load <2 x i8>, ptr %i.hkf, align 1, !tbaa !45, !noalias !651
  %i.hkn = shufflevector <2 x i8> %i.hkm, <2 x i8> %i.hkl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hko = shufflevector <16 x i8> %i.hkn, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.hkp = shufflevector <2 x i8> %i.hkk, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hkq = shufflevector <16 x i8> %i.hko, <16 x i8> %i.hkp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hkr = shufflevector <2 x i8> %i.hkj, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hks = shufflevector <16 x i8> %i.hkq, <16 x i8> %i.hkr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hkt = shufflevector <2 x i8> %i.hki, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hku = shufflevector <16 x i8> %i.hks, <16 x i8> %i.hkt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.hkv = shufflevector <2 x i8> %i.hkh, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hkw = shufflevector <16 x i8> %i.hku, <16 x i8> %i.hkv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.hkw, ptr %i.hkg, align 1, !tbaa !45, !noalias !651
  %i.hkx = icmp samesign ugt i32 %i.hjw, 9999
  br i1 %i.hkx, label %bb.aed, label %bb.aee

bb.aed:                                           ; preds = %bb.aec
  %i.hky = udiv i16 %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i, 10000
  %i.hkz = trunc nuw nsw i16 %i.hky to i8
  %i.hla = or disjoint i8 %i.hkz, 48
  %i.hlb = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.hla, ptr %i.hlb, align 1, !tbaa !45, !noalias !651
  br label %bb.aee

bb.aee:                                           ; preds = %bb.aed, %bb.aec
  %.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hlb, %bb.aed ], [ %i.hkg, %bb.aec ] ; 2 uses
  br i1 %i.hjv, label %bb.aef, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i

bb.aef:                                           ; preds = %bb.aee
  %i.hlc = getelementptr inbounds i8, ptr %.1.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.hlc, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i: ; preds = %bb.aef, %bb.aee
  %.2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hlc, %bb.aef ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.aee ] ; 2 uses
  %i.hld = ptrtoint ptr %.2.i.i.i.i.i.i.i.i.i to i64
  %i.hle = sub i64 %.pre77.i.i.i.i.i, %i.hld      ; 3 uses
  %i.hlf = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.hlg = getelementptr inbounds nuw i8, ptr %i.hlf, i64 52
  %i.hlh = load i32, ptr %i.hlg, align 4, !tbaa !47, !noalias !651
  %i.hli = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.hlj = sext i32 %i.hlh to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i129.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hle, i64 %i.hlj)
  %i.hlk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hli, ptr noundef nonnull %.2.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i129.i.i.i.i.i.i.i.i)
          to label %.noexc28.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc28.i.i.i:                                   ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i
  %i.hll = icmp ugt i64 %i.hle, %i.hlj
  br i1 %i.hll, label %bb.aeg, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i130.i.i.i.i.i.i.i.i

bb.aeg:                                           ; preds = %.noexc28.i.i.i
  %i.hlm = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.hln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hlm, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

.noexc29.i.i.i:                                   ; preds = %bb.aeg
  %i.hlo = sub nuw i64 %i.hle, %i.hlj
  %i.hlp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hlm, i64 noundef %i.hlo)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629

.noexc30.i.i.i:                                   ; preds = %.noexc29.i.i.i
  %i.hlq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hlp, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i130.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i130.i.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i, %.noexc28.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953

_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953:        ; preds = %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i130.i.i.i.i.i.i.i.i, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i, %.invoke100.i.i.i
  br i1 %i.goh, label %.critedge.i.i.i.i.i1938, label %.invoke.i.i.i1937

.critedge.i.i.i.i.i1938:                          ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953, %.invoke.i.i.i1937, %.noexc10.i.i.i1936, %.noexc5.i.i.i1967
  %.1.i.i.i.i.i1939 = phi i64 [ %i.gpk, %.noexc5.i.i.i1967 ], [ %.074.i.i.i.i.i, %.noexc10.i.i.i1936 ], [ %.074.i.i.i.i.i, %.invoke.i.i.i1937 ], [ %.074.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i1953 ]
  %.val.i.i.i.i.i1940 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646
  %i.hlr = getelementptr i8, ptr %.val.i.i.i.i.i1940, i64 48
  %.val.val.i.i.i.i.i1941 = load i8, ptr %i.hlr, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.hls = trunc nuw i8 %.val.val.i.i.i.i.i1941 to i1
  br i1 %i.hls, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943, label %bb.aeh

bb.aeh:                                           ; preds = %.critedge.i.i.i.i.i1938
  %.val40.i.i.i.i.i1942 = load ptr, ptr %i.glr, align 8, !noalias !646
  %i.hlt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val40.i.i.i.i.i1942, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, !noalias !629 ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943: ; preds = %bb.aeh, %.critedge.i.i.i.i.i1938
  %i.hlu = add nsw i64 %.1.i.i.i.i.i1939, 1       ; 2 uses
  %i.hlv = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !646 ; 2 uses
  %i.hlw = getelementptr inbounds nuw i8, ptr %i.hlv, i64 16
  %i.hlx = load i64, ptr %i.hlw, align 8, !tbaa !210, !noalias !646 ; 2 uses
  %.not37.i.i.i.i.i1944 = icmp slt i64 %i.hlu, %i.hlx
  br i1 %.not37.i.i.i.i.i1944, label %bb.abu, label %.loopexit61.i.i.i, !llvm.loop !655

.loopexit61.i.i.i:                                ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i1943, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEC2EPKNS_8DataTypeE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18, !noalias !641
  %i.hly = load ptr, ptr %i.gmv, align 8, !tbaa !102, !noalias !629 ; 2 uses
  %i.hlz = icmp eq ptr %i.hly, %i.gmx
  br i1 %i.hlz, label %_ZN5arrow6StatusD2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1917

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1917: ; preds = %.loopexit61.i.i.i
  %i.hma = load i64, ptr %i.gmx, align 8, !tbaa !45, !noalias !629
  %i.hmb = add i64 %i.hma, 1
  call void @_ZdlPvm(ptr noundef %i.hly, i64 noundef %i.hmb) #19, !noalias !629
  br label %_ZN5arrow6StatusD2Ev.exit25.i

.loopexit.i.i.i1947:                              ; preds = %.lr.ph.i.i41.i.i.i.i.i1945
  %lpad.loopexit.i.i.i1948 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i1934

.loopexit.split-lp.loopexit.i.i.i1959:            ; preds = %.lr.ph.i.i44.i.i.i.i.i1957
  %lpad.loopexit56.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i1934

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i1970: ; preds = %.lr.ph.i.i.i.i.i.i.i1968
  %lpad.loopexit59.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i1934

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932: ; preds = %bb.aeh, %.noexc30.i.i.i, %.noexc29.i.i.i, %bb.aeg, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i, %.noexc25.i.i.i, %.noexc24.i.i.i, %bb.adv, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i, %.noexc21.i.i.i, %.noexc20.i.i.i, %bb.adj, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i, %.noexc16.i.i.i1956, %.noexc15.i.i.i1955, %bb.acw, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i, %.invoke100.i.i.i, %.invoke.i.i.i1937, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1931, %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i1963, %bb.ace, %bb.acd, %bb.abz, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i1965
  %lpad.loopexit.split-lp.i.i.i1933 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i1934

.loopexit.split-lp.i.i.i1934:                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i1970, %.loopexit.split-lp.loopexit.i.i.i1959, %.loopexit.i.i.i1947
  %lpad.phi.i.i.i1935 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i1948, %.loopexit.i.i.i1947 ], [ %lpad.loopexit56.i.i.i, %.loopexit.split-lp.loopexit.i.i.i1959 ], [ %lpad.loopexit59.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i1970 ], [ %lpad.loopexit.split-lp.i.i.i1933, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1932 ]
  %i.hmc = load ptr, ptr %i.gmv, align 8, !tbaa !102, !noalias !629 ; 2 uses
  %i.hmd = icmp eq ptr %i.hmc, %i.gmx
  br i1 %i.hmd, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvED2Ev.exit36.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i.i.i: ; preds = %.loopexit.split-lp.i.i.i1934
  %i.hme = load i64, ptr %i.gmx, align 8, !tbaa !45, !noalias !629
  %i.hmf = add i64 %i.hme, 1
  call void @_ZdlPvm(ptr noundef %i.hmc, i64 noundef %i.hmf) #19, !noalias !629
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvED2Ev.exit36.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvED2Ev.exit36.i.i.i: ; preds = %.loopexit.split-lp.i.i.i1934, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18, !noalias !629
  br label %.loopexit.split-lp.i1900

bb.aei:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.hmg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1900

_ZN5arrow6StatusD2Ev.exit25.i:                    ; preds = %.loopexit61.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1917
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18, !noalias !629
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !626
  %.val.pre.i1918 = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !626
  %.phi.trans.insert65.i = getelementptr i8, ptr %.val.pre.i1918, i64 16
  %.val.val.pre.i1919 = load i64, ptr %.phi.trans.insert65.i, align 8, !tbaa !210, !noalias !626
  %i.hmh = icmp sgt i64 %.val.val.pre.i1919, 0
  %.pre2.i.i1920 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !626 ; 4 uses
  br i1 %i.hmh, label %bb.aej, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i

bb.aej:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit25.i
  %i.hmi = getelementptr inbounds nuw i8, ptr %.pre2.i.i1920, i64 4
  %i.hmj = load i32, ptr %i.hmi, align 4, !tbaa !33, !noalias !626
  %i.hmk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.hml = load i32, ptr %i.hmk, align 8, !tbaa !57, !noalias !626
  %i.hmm = sub nsw i32 %i.hml, %i.hmj             ; 2 uses
  store i32 %i.hmm, ptr %i.hmk, align 8, !tbaa !57, !noalias !626
  %i.hmn = getelementptr inbounds nuw i8, ptr %.pre2.i.i1920, i64 48
  %i.hmo = load i8, ptr %i.hmn, align 8, !tbaa !126, !range !97, !noalias !626, !noundef !98
  %i.hmp = trunc nuw i8 %i.hmo to i1
  %i.hmq = icmp slt i32 %i.hmm, 1
  %or.cond.not.i.i1921 = select i1 %i.hmp, i1 true, i1 %i.hmq
  br i1 %or.cond.not.i.i1921, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.aej, %.noexc31.i1924
  %.02.i.i28.i = phi i32 [ %i.hmt, %.noexc31.i1924 ], [ 0, %bb.aej ]
  %i.hmr = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !626
  %i.hms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hmr, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc31.i1924 unwind label %.loopexit.i1922, !noalias !626 ; 0 uses

.noexc31.i1924:                                   ; preds = %.lr.ph.i.i27.i
  %i.hmt = add nuw nsw i32 %.02.i.i28.i, 1        ; 2 uses
  %i.hmu = load i32, ptr %i.hmk, align 8, !tbaa !57, !noalias !626
  %i.hmv = icmp slt i32 %i.hmt, %i.hmu
  br i1 %i.hmv, label %.lr.ph.i.i27.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.sink.split.i.loopexit, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.sink.split.i.loopexit: ; preds = %.noexc31.i1924
  %.pre2.i113.i.pre = load ptr, ptr %2, align 8, !tbaa !194, !noalias !626
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i: ; preds = %.noexc17.i1908, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.sink.split.i.loopexit, %bb.aej, %_ZN5arrow6StatusD2Ev.exit25.i
  %i.hmw = phi ptr [ %.pre2.i.i1920, %_ZN5arrow6StatusD2Ev.exit25.i ], [ %.pre2.i.i1920, %bb.aej ], [ %.pre2.i113.i.pre, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.sink.split.i.loopexit ], [ %.pre3.i.i1913, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1912 ], [ %.pre2.i113.i.pre3241, %.noexc17.i1908 ] ; 2 uses
  %i.hmx = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !626
  %i.hmy = getelementptr inbounds nuw i8, ptr %i.hmw, i64 88
  %i.hmz = load ptr, ptr %i.hmy, align 8, !tbaa !102, !noalias !626
  %i.hna = getelementptr inbounds nuw i8, ptr %i.hmw, i64 96
  %i.hnb = load i64, ptr %i.hna, align 8, !tbaa !44, !noalias !626
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.invoke.i

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.invoke.i: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i, %bb.abj
  %i.hnc = phi ptr [ %i.hmx, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i ], [ %i.glc, %bb.abj ]
  %i.hnd = phi ptr [ %i.hmz, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i ], [ @.str.15, %bb.abj ]
  %i.hne = phi i64 [ %i.hnb, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.i ], [ 1, %bb.abj ]
  %i.hnf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hnc, ptr noundef %i.hnd, i64 noundef %i.hne)
          to label %.critedge.i1904 unwind label %.loopexit.split-lp.loopexit.split-lp.i1898, !noalias !626 ; 0 uses

.critedge.i1904:                                  ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i26.invoke.i
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !626
  %i.hng = load ptr, ptr %60, align 8, !tbaa !74, !noalias !626 ; 2 uses
  %.not.i33.i1905 = icmp eq ptr %i.hng, null
  br i1 %.not.i33.i1905, label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_13TimestampTypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit, label %bb.aek, !prof !77

bb.aek:                                           ; preds = %.critedge.i1904
  %i.hnh = getelementptr inbounds nuw i8, ptr %i.hng, i64 1
  %i.hni = load i8, ptr %i.hnh, align 1, !tbaa !91, !range !97, !noalias !626, !noundef !98
  %i.hnj = trunc nuw i8 %i.hni to i1
  br i1 %i.hnj, label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_13TimestampTypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit, label %bb.ael

bb.ael:                                           ; preds = %bb.aek
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %60) #18, !noalias !626
  br label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_13TimestampTypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit

.loopexit.split-lp.i1900:                         ; preds = %bb.aei, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvED2Ev.exit36.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i1898, %.loopexit.split-lp.loopexit.i1977, %.loopexit.i1922
  %.pn14.i1901 = phi { ptr, i32 } [ %lpad.loopexit.split-lp57.i1899, %.loopexit.split-lp.loopexit.split-lp.i1898 ], [ %lpad.loopexit.i1923, %.loopexit.i1922 ], [ %lpad.loopexit56.i1978, %.loopexit.split-lp.loopexit.i1977 ], [ %lpad.phi.i.i.i1935, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvED2Ev.exit36.i.i.i ], [ %i.hmg, %bb.aei ]
  %i.hnk = load ptr, ptr %60, align 8, !tbaa !74, !noalias !626 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.hnk, null
  br i1 %.not.i35.i, label %_ZN5arrow6StatusD2Ev.exit36.i1902, label %bb.aem, !prof !77

bb.aem:                                           ; preds = %.loopexit.split-lp.i1900
  %i.hnl = getelementptr inbounds nuw i8, ptr %i.hnk, i64 1
  %i.hnm = load i8, ptr %i.hnl, align 1, !tbaa !91, !range !97, !noalias !626, !noundef !98
  %i.hnn = trunc nuw i8 %i.hnm to i1
  br i1 %i.hnn, label %_ZN5arrow6StatusD2Ev.exit36.i1902, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %60) #18, !noalias !626
  br label %_ZN5arrow6StatusD2Ev.exit36.i1902

_ZN5arrow6StatusD2Ev.exit36.i1902:                ; preds = %bb.aen, %bb.aem, %.loopexit.split-lp.i1900
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18, !noalias !626
  br label %common.resume

_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_13TimestampTypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit: ; preds = %.critedge.i1904, %bb.aek, %bb.ael
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18, !noalias !626
  br label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitERKNS_11StructArrayE.exit

bb.aeo:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18, !noalias !656
  call void @_ZNK5arrow5Array8ValidateEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %53, ptr noundef nonnull align 8 dereferenceable(48) %1), !noalias !656
  %i.hno = load ptr, ptr %53, align 8, !tbaa !74, !noalias !656
  %i.hnp = icmp eq ptr %i.hno, null
  br i1 %i.hnp, label %bb.aer, label %bb.aep

bb.aep:                                           ; preds = %bb.aeo
  %i.hnq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hnr = load ptr, ptr %i.hnq, align 8, !tbaa !60, !noalias !656 ; 2 uses
  %i.hns = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hnr, ptr noundef nonnull @.str.14, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i1985 unwind label %.loopexit.split-lp.loopexit.split-lp.i1982, !noalias !656 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i1985: ; preds = %bb.aep
  %i.hnt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.aeq unwind label %.loopexit.split-lp.loopexit.split-lp.i1982, !noalias !656 ; 2 uses

bb.aeq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i1985
  %i.hnu = load ptr, ptr %i.hnt, align 8, !tbaa !102, !noalias !656
  %i.hnv = getelementptr inbounds nuw i8, ptr %i.hnt, i64 8
  %i.hnw = load i64, ptr %i.hnv, align 8, !tbaa !44, !noalias !656
  %i.hnx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hnr, ptr noundef %i.hnu, i64 noundef %i.hnw)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.i1982, !noalias !656

.loopexit.i2012:                                  ; preds = %.lr.ph.i.i56.i
  %lpad.loopexit.i2013 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

.loopexit.split-lp.loopexit.i2066:                ; preds = %bb.aet
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

.loopexit.split-lp.loopexit.split-lp.i1982:       ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i, %bb.aev, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1987, %bb.aeq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i1985, %bb.aep
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

bb.aer:                                           ; preds = %bb.aeo
  %i.hny = load ptr, ptr %2, align 8, !tbaa !194, !noalias !656, !nonnull !98, !align !192 ; 3 uses
  %i.hnz = getelementptr inbounds nuw i8, ptr %i.hny, i64 48
  %i.hoa = load i8, ptr %i.hnz, align 8, !tbaa !126, !range !97, !noalias !656, !noundef !98
  %i.hob = trunc nuw i8 %i.hoa to i1
  br i1 %i.hob, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1987, label %bb.aes

bb.aes:                                           ; preds = %bb.aer
  %i.hoc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hod = load i32, ptr %i.hoc, align 8, !tbaa !57, !noalias !656
  %i.hoe = icmp sgt i32 %i.hod, 0
  br i1 %i.hoe, label %.lr.ph.i.i.i2064, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1987

.lr.ph.i.i.i2064:                                 ; preds = %bb.aes
  %i.hof = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.aet

bb.aet:                                           ; preds = %.noexc.i2067, %.lr.ph.i.i.i2064
  %.02.i.i.i2065 = phi i32 [ 0, %.lr.ph.i.i.i2064 ], [ %i.hoi, %.noexc.i2067 ]
  %i.hog = load ptr, ptr %i.hof, align 8, !tbaa !60, !noalias !656
  %i.hoh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hog, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc.i2067 unwind label %.loopexit.split-lp.loopexit.i2066, !noalias !656 ; 0 uses

.noexc.i2067:                                     ; preds = %bb.aet
  %i.hoi = add nuw nsw i32 %.02.i.i.i2065, 1      ; 2 uses
  %i.hoj = load i32, ptr %i.hoc, align 8, !tbaa !57, !noalias !656
  %i.hok = icmp slt i32 %i.hoi, %i.hoj
  br i1 %i.hok, label %bb.aet, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2068, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2068: ; preds = %.noexc.i2067
  %.pre.i.i2069 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !656
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1987

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1987: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2068, %bb.aes, %bb.aer
  %i.hol = phi ptr [ %.pre.i.i2069, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2068 ], [ %i.hny, %bb.aes ], [ %i.hny, %bb.aer ] ; 2 uses
  %i.hom = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.hon = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !656
  %i.hoo = getelementptr inbounds nuw i8, ptr %i.hol, i64 56
  %i.hop = load ptr, ptr %i.hoo, align 8, !tbaa !102, !noalias !656
  %i.hoq = getelementptr inbounds nuw i8, ptr %i.hol, i64 64
  %i.hor = load i64, ptr %i.hoq, align 8, !tbaa !44, !noalias !656
  %i.hos = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hon, ptr noundef %i.hop, i64 noundef %i.hor)
          to label %.noexc17.i1988 unwind label %.loopexit.split-lp.loopexit.split-lp.i1982, !noalias !656 ; 0 uses

.noexc17.i1988:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i1987
  %i.hot = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !656 ; 2 uses
  %i.hou = getelementptr inbounds nuw i8, ptr %i.hot, i64 16
  %i.hov = load i64, ptr %i.hou, align 8, !tbaa !210, !noalias !656 ; 2 uses
  %i.how = icmp sgt i64 %i.hov, 0
  %.pre2.i.pre87.pre.i = load ptr, ptr %2, align 8, !tbaa !194, !noalias !656 ; 4 uses
  br i1 %i.how, label %bb.aeu, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i

bb.aeu:                                           ; preds = %.noexc17.i1988
  %i.hox = getelementptr i8, ptr %.pre2.i.pre87.pre.i, i64 48
  %.val.val.i.i1989 = load i8, ptr %i.hox, align 8, !tbaa !126, !range !97, !noalias !656, !noundef !98
  %i.hoy = trunc nuw i8 %.val.val.i.i1989 to i1
  br i1 %i.hoy, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i, label %bb.aev

_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i: ; preds = %bb.aeu
  %i.hoz = getelementptr inbounds nuw i8, ptr %.pre2.i.pre87.pre.i, i64 4
  %i.hpa = load i32, ptr %i.hoz, align 4, !tbaa !33, !noalias !656
  %i.hpb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hpc = load i32, ptr %i.hpb, align 8, !tbaa !57, !noalias !656
  %i.hpd = add nsw i32 %i.hpc, %i.hpa
  store i32 %i.hpd, ptr %i.hpb, align 8, !tbaa !57, !noalias !656
  br label %.lr.ph.i.i.i.i.i1995

bb.aev:                                           ; preds = %bb.aeu
  %.val2.i.i1990 = load ptr, ptr %i.hom, align 8, !noalias !656
  %i.hpe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val2.i.i1990, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991 unwind label %.loopexit.split-lp.loopexit.split-lp.i1982, !noalias !656 ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991: ; preds = %bb.aev
  %.pre3.i.i1992 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !656 ; 3 uses
  %.pre.pre.i1993 = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !656 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i1994 = getelementptr inbounds nuw i8, ptr %.pre.pre.i1993, i64 16
  %.pre84.pre.i = load i64, ptr %.phi.trans.insert.phi.trans.insert.i1994, align 8, !tbaa !210, !noalias !656 ; 2 uses
  %i.hpf = getelementptr inbounds nuw i8, ptr %.pre3.i.i1992, i64 4
  %i.hpg = load i32, ptr %i.hpf, align 4, !tbaa !33, !noalias !656
  %i.hph = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hpi = load i32, ptr %i.hph, align 8, !tbaa !57, !noalias !656
  %i.hpj = add nsw i32 %i.hpi, %i.hpg
  store i32 %i.hpj, ptr %i.hph, align 8, !tbaa !57, !noalias !656
  %i.hpk = icmp sgt i64 %.pre84.pre.i, 0
  br i1 %i.hpk, label %.lr.ph.i.i.i.i.i1995, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i

.lr.ph.i.i.i.i.i1995:                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i
  %i.hpl = phi ptr [ %.pre2.i.pre87.pre.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i ], [ %.pre3.i.i1992, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991 ]
  %.pre125.i = phi ptr [ %i.hot, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i ], [ %.pre.pre.i1993, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991 ] ; 2 uses
  %.pre84124.i = phi i64 [ %i.hov, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i ], [ %.pre84.pre.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991 ]
  %i.hpm = load ptr, ptr %.pre125.i, align 8, !tbaa !127, !noalias !659
  %i.hpn = getelementptr inbounds nuw i8, ptr %i.hpm, i64 72
  %i.hpo = load i32, ptr %i.hpn, align 8, !tbaa !664, !noalias !659
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18, !noalias !666
  store ptr %2, ptr %52, align 8, !tbaa !669, !noalias !666
  %i.hpp = getelementptr inbounds nuw i8, ptr %i.hpl, i64 8
  %i.hpq = load i32, ptr %i.hpp, align 8, !tbaa !41, !noalias !671 ; 2 uses
  %i.hpr = shl nsw i32 %i.hpq, 1
  %i.hps = or disjoint i32 %i.hpr, 1
  %i.hpt = sext i32 %i.hps to i64
  %i.hpu = sext i32 %i.hpq to i64                 ; 3 uses
  %i.hpv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.hpw = xor i64 %i.hpu, -1
  %i.hpx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %103 = ptrtoaddr ptr %50 to i64                 ; 3 uses
  %.ptr24.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 15
  %i.hpy = add nuw i64 %103, 9
  %i.hpz = ptrtoint ptr %.ptr24.i.i.i.i.i.i.i.i.i to i64
  %104 = ptrtoaddr ptr %51 to i64                 ; 3 uses
  %.ptr26.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 12
  %i.hqa = add nuw i64 %104, 9
  %i.hqb = ptrtoint ptr %.ptr26.i.i.i.i.i.i.i.i.i to i64
  %105 = ptrtoaddr ptr %49 to i64                 ; 3 uses
  %.ptr23.i41.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %49, i64 18
  %i.hqc = add nuw i64 %105, 9
  %i.hqd = ptrtoint ptr %.ptr23.i41.i.i.i.i.i.i.i.i to i64
  %i.hqe = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.hqf = getelementptr inbounds nuw i8, ptr %48, i64 7
  %i.hqg = getelementptr inbounds nuw i8, ptr %48, i64 3
  %i.hqh = getelementptr inbounds nuw i8, ptr %48, i64 2
  %i.hqi = getelementptr inbounds nuw i8, ptr %48, i64 1 ; 2 uses
  %i.hqj = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.aew

bb.aew:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008, %.lr.ph.i.i.i.i.i1995
  %i.hqk = phi i64 [ %.pre84124.i, %.lr.ph.i.i.i.i.i1995 ], [ %i.ice, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008 ] ; 3 uses
  %i.hql = phi ptr [ %.pre125.i, %.lr.ph.i.i.i.i.i1995 ], [ %i.icc, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008 ] ; 6 uses
  %.055.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i1995 ], [ %i.icb, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008 ] ; 11 uses
  %i.hqm = add nsw i64 %i.hqk, -1
  %i.hqn = icmp eq i64 %.055.i.i.i.i.i, %i.hqm    ; 3 uses
  %.not.i.i.i.i.i1996 = icmp eq i64 %i.hqk, %i.hpt
  br i1 %.not.i.i.i.i.i1996, label %bb.afc, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  %.not36.i.i.i.i.i1997 = icmp sge i64 %.055.i.i.i.i.i, %i.hpu
  %i.hqo = sub nsw i64 %i.hqk, %i.hpu
  %i.hqp = icmp slt i64 %.055.i.i.i.i.i, %i.hqo
  %or.cond.i.i.i.i.i1998 = select i1 %.not36.i.i.i.i.i1997, i1 %i.hqp, i1 false
  br i1 %or.cond.i.i.i.i.i1998, label %bb.aey, label %bb.afc

bb.aey:                                           ; preds = %bb.aex
  %i.hqq = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671, !nonnull !98, !align !192
  %i.hqr = getelementptr inbounds nuw i8, ptr %i.hqq, i64 48
  %i.hqs = load i8, ptr %i.hqr, align 8, !tbaa !126, !range !97, !noalias !671, !noundef !98
  %i.hqt = trunc nuw i8 %i.hqs to i1
  br i1 %i.hqt, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2058, label %bb.aez

bb.aez:                                           ; preds = %bb.aey
  %i.hqu = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !671
  %i.hqv = icmp sgt i32 %i.hqu, 0
  br i1 %i.hqv, label %.lr.ph.i.i.i.i.i.i.i2061, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2058

.lr.ph.i.i.i.i.i.i.i2061:                         ; preds = %bb.aez, %.noexc19.i2063
  %.02.i.i.i.i.i.i.i2062 = phi i32 [ %i.hqy, %.noexc19.i2063 ], [ 0, %bb.aez ]
  %i.hqw = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.hqx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hqw, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc19.i2063 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.i, !noalias !656 ; 0 uses

.noexc19.i2063:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i2061
  %i.hqy = add nuw nsw i32 %.02.i.i.i.i.i.i.i2062, 1 ; 2 uses
  %i.hqz = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !671
  %i.hra = icmp slt i32 %i.hqy, %i.hqz
  br i1 %i.hra, label %.lr.ph.i.i.i.i.i.i.i2061, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2058, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2058: ; preds = %.noexc19.i2063, %bb.aez, %bb.aey
  %i.hrb = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.hrc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hrb, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %.noexc20.i2059 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc20.i2059:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2058
  br i1 %i.hqn, label %.noexc21.i2060, label %bb.afa

bb.afa:                                           ; preds = %.noexc20.i2059
  %i.hrd = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671, !nonnull !98, !align !192 ; 3 uses
  %i.hre = getelementptr inbounds nuw i8, ptr %i.hrd, i64 48
  %i.hrf = load i8, ptr %i.hre, align 8, !tbaa !126, !range !97, !noalias !671, !noundef !98
  %i.hrg = trunc nuw i8 %i.hrf to i1
  br i1 %i.hrg, label %bb.afb, label %.noexc21.i2060

bb.afb:                                           ; preds = %bb.afa
  %i.hrh = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.hri = getelementptr inbounds nuw i8, ptr %i.hrd, i64 120
  %i.hrj = load ptr, ptr %i.hri, align 8, !tbaa !102, !noalias !671
  %i.hrk = getelementptr inbounds nuw i8, ptr %i.hrd, i64 128
  %i.hrl = load i64, ptr %i.hrk, align 8, !tbaa !44, !noalias !671
  %i.hrm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hrh, ptr noundef %i.hrj, i64 noundef %i.hrl)
          to label %.noexc21.i2060 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc21.i2060:                                   ; preds = %bb.afb, %bb.afa, %.noexc20.i2059
  %i.hrn = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !671
  %i.hro = getelementptr inbounds nuw i8, ptr %i.hrn, i64 16
  %i.hrp = load i64, ptr %i.hro, align 8, !tbaa !210, !noalias !671
  %i.hrq = add i64 %i.hrp, %i.hpw
  br label %.critedge.i.i.i.i.i2003

bb.afc:                                           ; preds = %bb.aex, %bb.aew
  %i.hrr = load ptr, ptr %i.hpx, align 8, !tbaa !247, !noalias !671 ; 2 uses
  %.not.i.i.i.i.i.i.i1999 = icmp eq ptr %i.hrr, null
  br i1 %.not.i.i.i.i.i.i.i1999, label %bb.afe, label %bb.afd

bb.afd:                                           ; preds = %bb.afc
  %i.hrs = getelementptr inbounds nuw i8, ptr %i.hql, i64 32
  %i.hrt = load i64, ptr %i.hrs, align 8, !tbaa !249, !noalias !671
  %i.hru = add nsw i64 %i.hrt, %.055.i.i.i.i.i    ; 2 uses
  %i.hrv = lshr i64 %i.hru, 3
  %i.hrw = getelementptr inbounds nuw i8, ptr %i.hrr, i64 %i.hrv
  %i.hrx = load i8, ptr %i.hrw, align 1, !tbaa !45, !noalias !671
  %i.hry = trunc i64 %i.hru to i8
  %i.hrz = and i8 %i.hry, 7
  %i.hsa = lshr i8 %i.hrx, %i.hrz
  %i.hsb = trunc i8 %i.hsa to i1
  br i1 %i.hsb, label %bb.afk, label %bb.afi

bb.afe:                                           ; preds = %bb.afc
  %i.hsc = load ptr, ptr %i.hql, align 8, !tbaa !127, !noalias !671
  %i.hsd = getelementptr inbounds nuw i8, ptr %i.hsc, i64 40
  %i.hse = load i32, ptr %i.hsd, align 8, !tbaa !130, !noalias !671
  switch i32 %i.hse, label %bb.afh [
    i32 27, label %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2056
    i32 28, label %bb.aff
    i32 38, label %bb.afg
  ]

bb.aff:                                           ; preds = %bb.afe
  %i.hsf = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.hql, i64 noundef %.055.i.i.i.i.i)
          to label %.noexc22.i2055 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc22.i2055:                                   ; preds = %bb.aff
  br i1 %i.hsf, label %bb.afi, label %bb.afk

bb.afg:                                           ; preds = %bb.afe
  %i.hsg = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.hql, i64 noundef %.055.i.i.i.i.i)
          to label %.noexc23.i2054 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc23.i2054:                                   ; preds = %bb.afg
  br i1 %i.hsg, label %bb.afi, label %bb.afk

bb.afh:                                           ; preds = %bb.afe
  %i.hsh = getelementptr inbounds nuw i8, ptr %i.hql, i64 24
  %i.hsi = load atomic i64, ptr %i.hsh seq_cst, align 8, !noalias !671
  %i.hsj = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !671
  %i.hsk = getelementptr inbounds nuw i8, ptr %i.hsj, i64 16
  %i.hsl = load i64, ptr %i.hsk, align 8, !tbaa !210, !noalias !671
  %.not78.i.i.i.i.i = icmp eq i64 %i.hsi, %i.hsl
  br i1 %.not78.i.i.i.i.i, label %bb.afi, label %bb.afk

_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2056:     ; preds = %bb.afe
  %i.hsm = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.hql, i64 noundef %.055.i.i.i.i.i)
          to label %.noexc24.i2057 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc24.i2057:                                   ; preds = %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2056
  br i1 %i.hsm, label %bb.afi, label %bb.afk

bb.afi:                                           ; preds = %.noexc24.i2057, %bb.afh, %.noexc23.i2054, %.noexc22.i2055, %bb.afd
  %i.hsn = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671, !nonnull !98, !align !192 ; 3 uses
  %i.hso = getelementptr inbounds nuw i8, ptr %i.hsn, i64 48
  %i.hsp = load i8, ptr %i.hso, align 8, !tbaa !126, !range !97, !noalias !671, !noundef !98
  %i.hsq = trunc nuw i8 %i.hsp to i1
  br i1 %i.hsq, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2000, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.hsr = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !671
  %i.hss = icmp sgt i32 %i.hsr, 0
  br i1 %i.hss, label %.lr.ph.i.i41.i.i.i.i.i2014, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2000

.lr.ph.i.i41.i.i.i.i.i2014:                       ; preds = %bb.afj, %.noexc25.i2016
  %.02.i.i42.i.i.i.i.i2015 = phi i32 [ %i.hsv, %.noexc25.i2016 ], [ 0, %bb.afj ]
  %i.hst = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.hsu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hst, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc25.i2016 unwind label %.loopexit66.i, !noalias !656 ; 0 uses

.noexc25.i2016:                                   ; preds = %.lr.ph.i.i41.i.i.i.i.i2014
  %i.hsv = add nuw nsw i32 %.02.i.i42.i.i.i.i.i2015, 1 ; 2 uses
  %i.hsw = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !671
  %i.hsx = icmp slt i32 %i.hsv, %i.hsw
  br i1 %i.hsx, label %.lr.ph.i.i41.i.i.i.i.i2014, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2017, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2017: ; preds = %.noexc25.i2016
  %.pre.i.i.i.i.i2018 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2000

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2000: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2017, %bb.afj, %bb.afi
  %i.hsy = phi ptr [ %.pre.i.i.i.i.i2018, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2017 ], [ %i.hsn, %bb.afi ], [ %i.hsn, %bb.afj ] ; 2 uses
  %i.hsz = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.hta = getelementptr inbounds nuw i8, ptr %i.hsy, i64 16
  %i.htb = load ptr, ptr %i.hta, align 8, !tbaa !102, !noalias !671
  %i.htc = getelementptr inbounds nuw i8, ptr %i.hsy, i64 24
  %i.htd = load i64, ptr %i.htc, align 8, !tbaa !44, !noalias !671
  %i.hte = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hsz, ptr noundef %i.htb, i64 noundef %i.htd)
          to label %.noexc26.i2001 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc26.i2001:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2000
  br i1 %i.hqn, label %.critedge.i.i.i.i.i2003, label %.invoke.i2002

.invoke.i2002:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020, %.noexc26.i2001
  %i.htf = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.htg = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671, !nonnull !98, !align !192 ; 2 uses
  %i.hth = getelementptr inbounds nuw i8, ptr %i.htg, i64 120
  %i.hti = load ptr, ptr %i.hth, align 8, !tbaa !102, !noalias !671
  %i.htj = getelementptr inbounds nuw i8, ptr %i.htg, i64 128
  %i.htk = load i64, ptr %i.htj, align 8, !tbaa !44, !noalias !671
  %i.htl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.htf, ptr noundef %i.hti, i64 noundef %i.htk)
          to label %.critedge.i.i.i.i.i2003 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

bb.afk:                                           ; preds = %.noexc24.i2057, %bb.afh, %.noexc23.i2054, %.noexc22.i2055, %bb.afd
  %i.htm = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671, !nonnull !98, !align !192
  %i.htn = getelementptr inbounds nuw i8, ptr %i.htm, i64 48
  %i.hto = load i8, ptr %i.htn, align 8, !tbaa !126, !range !97, !noalias !671, !noundef !98
  %i.htp = trunc nuw i8 %i.hto to i1
  br i1 %i.htp, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019, label %bb.afl

bb.afl:                                           ; preds = %bb.afk
  %i.htq = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !671
  %i.htr = icmp sgt i32 %i.htq, 0
  br i1 %i.htr, label %.lr.ph.i.i44.i.i.i.i.i2051, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019

.lr.ph.i.i44.i.i.i.i.i2051:                       ; preds = %bb.afl, %.noexc28.i2053
  %.02.i.i45.i.i.i.i.i2052 = phi i32 [ %i.htu, %.noexc28.i2053 ], [ 0, %bb.afl ]
  %i.hts = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !671
  %i.htt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hts, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc28.i2053 unwind label %.loopexit.split-lp67.loopexit.i, !noalias !656 ; 0 uses

.noexc28.i2053:                                   ; preds = %.lr.ph.i.i44.i.i.i.i.i2051
  %i.htu = add nuw nsw i32 %.02.i.i45.i.i.i.i.i2052, 1 ; 2 uses
  %i.htv = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !671
  %i.htw = icmp slt i32 %i.htu, %i.htv
  br i1 %i.htw, label %.lr.ph.i.i44.i.i.i.i.i2051, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019: ; preds = %.noexc28.i2053, %bb.afl, %bb.afk
  %i.htx = load ptr, ptr %i.hqj, align 8, !tbaa !674, !noalias !676
  %i.hty = getelementptr inbounds [4 x i8], ptr %i.htx, i64 %.055.i.i.i.i.i
  %i.htz = load i32, ptr %i.hty, align 4, !tbaa !3, !noalias !676 ; 15 uses
  switch i32 %i.hpo, label %bb.agb [
    i32 3, label %bb.afw
    i32 1, label %bb.afm
    i32 2, label %bb.afr
  ]

bb.afm:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019
  %spec.select.i.i.i.i.i.i.i.i.i.i2024 = icmp ult i32 %i.htz, 86400000
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i2024, label %bb.afn, label %.invoke131.i, !prof !77

.invoke131.i:                                     ; preds = %bb.agb, %bb.afw, %bb.afr, %bb.afm
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS0_15StringFormatterIS8_vEEEENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISG_EEtlSL_EEEOSD_OSG_(i32 %i.htz, ptr noundef nonnull readonly align 8 dereferenceable(8) %52)
          to label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

bb.afn:                                           ; preds = %bb.afm
  %i.hua = zext nneg i32 %i.htz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18, !noalias !676
  %i.hub = udiv i32 %i.htz, 3600000
  %.zext.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.hub to i64 ; 3 uses
  %i.huc = udiv i32 %i.htz, 60000
  %.zext23.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.huc to i64
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i2025 = mul nsw i64 %.zext.i.i.i.i.i.i.i.i.i, -60
  %i.hud = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i2025, %.zext23.i.i.i.i.i.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i.i.i.i2026 = mul nsw i64 %.zext.i.i.i.i.i.i.i.i.i, -3600000
  %i.hue = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i.i.i.i2026, %i.hua
  %.neg.i8.i.i.i.i.i.i.i.i.i.i.i2027 = mul nsw i64 %i.hud, -60000
  %i.huf = add nsw i64 %i.hue, %.neg.i8.i.i.i.i.i.i.i.i.i.i.i2027 ; 2 uses
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i = trunc nsw i64 %i.huf to i32
  %i.hug = sdiv i32 %.lhs.trunc24.i.i.i.i.i.i.i.i.i, 1000
  %.sext.i.i.i.i.i.i.i.i.i = sext i32 %i.hug to i64 ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i2028 = mul nsw i64 %.sext.i.i.i.i.i.i.i.i.i, -1000
  %i.huh = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i2028, %i.huf ; 3 uses
  %i.hui = icmp sgt i64 %i.huh, 99
  br i1 %i.hui, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2029

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045:               ; preds = %bb.afn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045
  %.0.idx.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.add.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045 ], [ 12, %bb.afn ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i.i.i.i2046 = phi i64 [ %i.huq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045 ], [ %i.huh, %bb.afn ] ; 3 uses
  %.0.ptr.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %51, i64 %.0.idx.i.i.i.i.i.i.i.i.i
  %i.huj = urem i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i2046, 100
  %i.huk = shl nuw nsw i64 %i.huj, 1
  %i.hul = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.huk ; 2 uses
  %i.hum = getelementptr inbounds nuw i8, ptr %i.hul, i64 1
  %i.hun = load i8, ptr %i.hum, align 1, !tbaa !45, !noalias !676
  %i.huo = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.hun, ptr %i.huo, align 1, !tbaa !45, !noalias !676
  %i.hup = load i8, ptr %i.hul, align 1, !tbaa !45, !noalias !676
  %.0.add.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %51, i64 %.0.add.i.i.i.i.i.i.i.i.i
  store i8 %i.hup, ptr %.ptr27.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.huq = udiv i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i2046, 100 ; 2 uses
  %i.hur = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i2046, 9999
  br i1 %i.hur, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2029, !llvm.loop !654

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2029:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045, %bb.afn
  %.1.idx.i.i.i.i.i.i.i.i.i2030 = phi i64 [ 12, %bb.afn ], [ %.0.add.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2031 = phi i64 [ %i.huh, %bb.afn ], [ %i.huq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2045 ] ; 3 uses
  %i.hus = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2031, 9
  br i1 %i.hus, label %bb.afo, label %bb.afp

bb.afo:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2029
  %i.hut = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2031, 1
  %i.huu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hut ; 2 uses
  %i.huv = getelementptr inbounds nuw i8, ptr %i.huu, i64 1
  %i.huw = load i8, ptr %i.huv, align 1, !tbaa !45, !noalias !676
  %.1.add.i.i.i.i.i.i.i.i.i2044 = add nsw i64 %.1.idx.i.i.i.i.i.i.i.i.i2030, -1 ; 2 uses
  %.ptr25.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %51, i64 %.1.add.i.i.i.i.i.i.i.i.i2044
  store i8 %i.huw, ptr %.ptr25.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hux = load i8, ptr %i.huu, align 1, !tbaa !45, !noalias !676
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2032

bb.afp:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2029
  %i.huy = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2031 to i8
  %i.huz = add i8 %i.huy, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2032

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2032: ; preds = %bb.afp, %bb.afo
  %.2.idx.i.i.i.i.i.i.i.i.i2033 = phi i64 [ %.1.add.i.i.i.i.i.i.i.i.i2044, %bb.afo ], [ %.1.idx.i.i.i.i.i.i.i.i.i2030, %bb.afp ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i2034 = phi i8 [ %i.hux, %bb.afo ], [ %i.huz, %bb.afp ]
  %i.hva = getelementptr i8, ptr %51, i64 %.2.idx.i.i.i.i.i.i.i.i.i2033 ; 2 uses
  %.ptr.i.i.i.i.i.i.i.i.i2035 = getelementptr i8, ptr %i.hva, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i2034, ptr %.ptr.i.i.i.i.i.i.i.i.i2035, align 1, !tbaa !45, !noalias !676
  %i.hvb = icmp sgt i64 %.2.idx.i.i.i.i.i.i.i.i.i2033, 10
  br i1 %i.hvb, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2041, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2036

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2041:       ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2032
  %i.hvc = add i64 %.2.idx.i.i.i.i.i.i.i.i.i2033, %104 ; 2 uses
  %i.hvd = add i64 %i.hvc, -2
  %umin.i.i.i.i.i.i.i.i.i2042 = call i64 @llvm.umin.i64(i64 %i.hvd, i64 %i.hqa) ; 2 uses
  %i.hve = sub i64 %umin.i.i.i.i.i.i.i.i.i2042, %104
  %scevgep.i.i.i.i.i.i.i.i.i2043 = getelementptr i8, ptr %51, i64 %i.hve ; 2 uses
  %i.hvf = xor i64 %umin.i.i.i.i.i.i.i.i.i2042, -1
  %i.hvg = add i64 %i.hvc, %i.hvf
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i2043, i8 48, i64 %i.hvg, i1 false), !tbaa !45, !noalias !676
  %scevgep31.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i.i.i.i2043, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2036

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2036: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2041, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2032
  %i.hvh = phi ptr [ %i.hva, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2032 ], [ %scevgep31.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2041 ] ; 2 uses
  %i.hvi = shl nsw i64 %.sext.i.i.i.i.i.i.i.i.i, 1
  %i.hvj = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hvi
  %i.hvk = shl nsw i64 %i.hud, 1
  %i.hvl = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hvk
  %i.hvm = shl nuw nsw i64 %.zext.i.i.i.i.i.i.i.i.i, 1
  %i.hvn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hvm ; 2 uses
  %i.hvo = getelementptr inbounds nuw i8, ptr %i.hvn, i64 1
  %i.hvp = load i8, ptr %i.hvo, align 1, !tbaa !45, !noalias !676
  %i.hvq = getelementptr i8, ptr %i.hvh, i64 -9
  %i.hvr = load <2 x i8>, ptr %i.hvj, align 1, !tbaa !45, !noalias !676
  %i.hvs = load <2 x i8>, ptr %i.hvl, align 1, !tbaa !45, !noalias !676
  %i.hvt = shufflevector <2 x i8> %i.hvs, <2 x i8> %i.hvr, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.hvu = shufflevector <8 x i8> %i.hvt, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.hvv = insertelement <8 x i8> %i.hvu, i8 %i.hvp, i64 0
  store <8 x i8> %i.hvv, ptr %i.hvq, align 1, !tbaa !45, !noalias !676
  %i.hvw = load i8, ptr %i.hvn, align 1, !tbaa !45, !noalias !676
  %i.hvx = getelementptr i8, ptr %i.hvh, i64 -10  ; 3 uses
  store i8 %i.hvw, ptr %i.hvx, align 1, !tbaa !45, !noalias !676
  %i.hvy = ptrtoint ptr %i.hvx to i64
  %i.hvz = sub i64 %i.hqb, %i.hvy                 ; 3 uses
  %i.hwa = load ptr, ptr %2, align 8, !tbaa !194, !noalias !676, !nonnull !98, !align !192
  %i.hwb = getelementptr inbounds nuw i8, ptr %i.hwa, i64 52
  %i.hwc = load i32, ptr %i.hwb, align 4, !tbaa !47, !noalias !676
  %i.hwd = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676
  %i.hwe = sext i32 %i.hwc to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i2037 = call i64 @llvm.umin.i64(i64 %i.hvz, i64 %i.hwe)
  %i.hwf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hwd, ptr noundef nonnull %i.hvx, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i2037)
          to label %.noexc30.i2038 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc30.i2038:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2036
  %i.hwg = icmp ugt i64 %i.hvz, %i.hwe
  br i1 %i.hwg, label %bb.afq, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i

bb.afq:                                           ; preds = %.noexc30.i2038
  %i.hwh = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676 ; 2 uses
  %i.hwi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hwh, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc31.i2039 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc31.i2039:                                   ; preds = %bb.afq
  %i.hwj = sub nuw i64 %i.hvz, %i.hwe
  %i.hwk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hwh, i64 noundef %i.hwj)
          to label %.noexc32.i2040 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc32.i2040:                                   ; preds = %.noexc31.i2039
  %i.hwl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hwk, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc32.i2040, %.noexc30.i2038
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18, !noalias !676
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020

bb.afr:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019
  %spec.select.i.i15.i.i.i.i.i.i.i.i = icmp sgt i32 %i.htz, -1
  br i1 %spec.select.i.i15.i.i.i.i.i.i.i.i, label %bb.afs, label %.invoke131.i, !prof !77

bb.afs:                                           ; preds = %bb.afr
  %i.hwm = zext nneg i32 %i.htz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18, !noalias !676
  %i.hwn = udiv i32 %i.htz, 60000000
  %.zext.i16.i.i.i.i.i.i.i.i = zext nneg i32 %i.hwn to i64 ; 2 uses
  %.neg.i8.i.i.i17.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i16.i.i.i.i.i.i.i.i, -60000000
  %i.hwo = add nsw i64 %.neg.i8.i.i.i17.i.i.i.i.i.i.i.i, %i.hwm ; 2 uses
  %.lhs.trunc22.i.i.i.i.i.i.i.i.i = trunc nsw i64 %i.hwo to i32
  %i.hwp = sdiv i32 %.lhs.trunc22.i.i.i.i.i.i.i.i.i, 1000000
  %.sext.i18.i.i.i.i.i.i.i.i = sext i32 %i.hwp to i64 ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i18.i.i.i.i.i.i.i.i, -1000000
  %i.hwq = add nsw i64 %.neg.i.i.i.i.i19.i.i.i.i.i.i.i.i, %i.hwo ; 3 uses
  %i.hwr = icmp sgt i64 %i.hwq, 99
  br i1 %i.hwr, label %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i:                 ; preds = %bb.afs, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i
  %.0.idx.i35.i.i.i.i.i.i.i.i = phi i64 [ %.0.add.i38.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i ], [ 15, %bb.afs ] ; 2 uses
  %.08.i.i.i.i36.i.i.i.i.i.i.i.i = phi i64 [ %i.hwz, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i ], [ %i.hwq, %bb.afs ] ; 3 uses
  %.0.ptr.i37.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %50, i64 %.0.idx.i35.i.i.i.i.i.i.i.i
  %i.hws = urem i64 %.08.i.i.i.i36.i.i.i.i.i.i.i.i, 100
  %i.hwt = shl nuw nsw i64 %i.hws, 1
  %i.hwu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hwt ; 2 uses
  %i.hwv = getelementptr inbounds nuw i8, ptr %i.hwu, i64 1
  %i.hww = load i8, ptr %i.hwv, align 1, !tbaa !45, !noalias !676
  %i.hwx = getelementptr inbounds i8, ptr %.0.ptr.i37.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.hww, ptr %i.hwx, align 1, !tbaa !45, !noalias !676
  %i.hwy = load i8, ptr %i.hwu, align 1, !tbaa !45, !noalias !676
  %.0.add.i38.i.i.i.i.i.i.i.i = add nsw i64 %.0.idx.i35.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr25.i39.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %50, i64 %.0.add.i38.i.i.i.i.i.i.i.i
  store i8 %i.hwy, ptr %.ptr25.i39.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hwz = udiv i64 %.08.i.i.i.i36.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.hxa = icmp samesign ugt i64 %.08.i.i.i.i36.i.i.i.i.i.i.i.i, 9999
  br i1 %i.hxa, label %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i, %bb.afs
  %.1.idx.i21.i.i.i.i.i.i.i.i = phi i64 [ 15, %bb.afs ], [ %.0.add.i38.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i = phi i64 [ %i.hwq, %bb.afs ], [ %i.hwz, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hxb = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i, 9
  br i1 %i.hxb, label %bb.aft, label %bb.afu

bb.aft:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i
  %i.hxc = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i, 1
  %i.hxd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hxc ; 2 uses
  %i.hxe = getelementptr inbounds nuw i8, ptr %i.hxd, i64 1
  %i.hxf = load i8, ptr %i.hxe, align 1, !tbaa !45, !noalias !676
  %.1.add.i33.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i21.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr23.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %50, i64 %.1.add.i33.i.i.i.i.i.i.i.i
  store i8 %i.hxf, ptr %.ptr23.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hxg = load i8, ptr %i.hxd, align 1, !tbaa !45, !noalias !676
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i

bb.afu:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i
  %i.hxh = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i to i8
  %i.hxi = add i8 %i.hxh, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i: ; preds = %bb.afu, %bb.aft
  %.2.idx.i24.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i33.i.i.i.i.i.i.i.i, %bb.aft ], [ %.1.idx.i21.i.i.i.i.i.i.i.i, %bb.afu ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i.i.i.i.i.i = phi i8 [ %i.hxg, %bb.aft ], [ %i.hxi, %bb.afu ]
  %i.hxj = getelementptr i8, ptr %50, i64 %.2.idx.i24.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i26.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.hxj, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i.i.i.i.i.i, ptr %.ptr.i26.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hxk = icmp sgt i64 %.2.idx.i24.i.i.i.i.i.i.i.i, 10
  br i1 %i.hxk, label %.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2021

.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i
  %i.hxl = add i64 %.2.idx.i24.i.i.i.i.i.i.i.i, %103 ; 2 uses
  %i.hxm = add i64 %i.hxl, -2
  %umin.i31.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hxm, i64 %i.hpy) ; 2 uses
  %i.hxn = sub i64 %umin.i31.i.i.i.i.i.i.i.i, %103
  %scevgep.i32.i.i.i.i.i.i.i.i = getelementptr i8, ptr %50, i64 %i.hxn ; 2 uses
  %i.hxo = xor i64 %umin.i31.i.i.i.i.i.i.i.i, -1
  %i.hxp = add i64 %i.hxl, %i.hxo
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i32.i.i.i.i.i.i.i.i, i8 48, i64 %i.hxp, i1 false), !tbaa !45, !noalias !676
  %scevgep29.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i32.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2021

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2021: ; preds = %.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i
  %i.hxq = phi ptr [ %i.hxj, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i ], [ %scevgep29.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hxr = shl nsw i64 %.sext.i18.i.i.i.i.i.i.i.i, 1
  %i.hxs = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hxr
  %i.hxt = shl nuw nsw i64 %.zext.i16.i.i.i.i.i.i.i.i, 1
  %i.hxu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hxt
  %i.hxv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !45, !noalias !676
  %i.hxw = getelementptr i8, ptr %i.hxq, i64 -9
  %i.hxx = load <2 x i8>, ptr %i.hxs, align 1, !tbaa !45, !noalias !676
  %i.hxy = load <2 x i8>, ptr %i.hxu, align 1, !tbaa !45, !noalias !676
  %i.hxz = shufflevector <2 x i8> %i.hxy, <2 x i8> %i.hxx, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.hya = shufflevector <8 x i8> %i.hxz, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.hyb = insertelement <8 x i8> %i.hya, i8 %i.hxv, i64 0
  store <8 x i8> %i.hyb, ptr %i.hxw, align 1, !tbaa !45, !noalias !676
  %i.hyc = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !45, !noalias !676
  %i.hyd = getelementptr i8, ptr %i.hxq, i64 -10  ; 3 uses
  store i8 %i.hyc, ptr %i.hyd, align 1, !tbaa !45, !noalias !676
  %i.hye = ptrtoint ptr %i.hyd to i64
  %i.hyf = sub i64 %i.hpz, %i.hye                 ; 3 uses
  %i.hyg = load ptr, ptr %2, align 8, !tbaa !194, !noalias !676, !nonnull !98, !align !192
  %i.hyh = getelementptr inbounds nuw i8, ptr %i.hyg, i64 52
  %i.hyi = load i32, ptr %i.hyh, align 4, !tbaa !47, !noalias !676
  %i.hyj = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676
  %i.hyk = sext i32 %i.hyi to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i28.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hyf, i64 %i.hyk)
  %i.hyl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hyj, ptr noundef nonnull %i.hyd, i64 noundef %.sroa.speculated.i.i.i.i.i28.i.i.i.i.i.i.i.i)
          to label %.noexc35.i2022 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc35.i2022:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2021
  %i.hym = icmp ugt i64 %i.hyf, %i.hyk
  br i1 %i.hym, label %bb.afv, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i

bb.afv:                                           ; preds = %.noexc35.i2022
  %i.hyn = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676 ; 2 uses
  %i.hyo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hyn, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc36.i2023 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc36.i2023:                                   ; preds = %bb.afv
  %i.hyp = sub nuw i64 %i.hyf, %i.hyk
  %i.hyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hyn, i64 noundef %i.hyp)
          to label %.noexc37.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc37.i:                                       ; preds = %.noexc36.i2023
  %i.hyr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hyq, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i: ; preds = %.noexc37.i, %.noexc35.i2022
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18, !noalias !676
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020

bb.afw:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019
  %spec.select.i.i40.i.i.i.i.i.i.i.i = icmp sgt i32 %i.htz, -1
  br i1 %spec.select.i.i40.i.i.i.i.i.i.i.i, label %bb.afx, label %.invoke131.i, !prof !77

bb.afx:                                           ; preds = %bb.afw
  %i.hys = zext nneg i32 %i.htz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18, !noalias !676
  %i.hyt = udiv i32 %i.htz, 1000000000
  %.zext.i42.i.i.i.i.i.i.i.i = zext nneg i32 %i.hyt to i64 ; 2 uses
  %.neg.i.i.i.i.i43.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i42.i.i.i.i.i.i.i.i, -1000000000
  %i.hyu = add nsw i64 %.neg.i.i.i.i.i43.i.i.i.i.i.i.i.i, %i.hys ; 3 uses
  %i.hyv = icmp sgt i64 %i.hyu, 99
  br i1 %i.hyv, label %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i44.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i:                 ; preds = %bb.afx, %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i
  %.0.idx.i59.i.i.i.i.i.i.i.i = phi i64 [ %.0.add.i62.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i ], [ 18, %bb.afx ] ; 2 uses
  %.08.i.i.i.i60.i.i.i.i.i.i.i.i = phi i64 [ %i.hzd, %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i ], [ %i.hyu, %bb.afx ] ; 3 uses
  %.0.ptr.i61.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %49, i64 %.0.idx.i59.i.i.i.i.i.i.i.i
  %i.hyw = urem i64 %.08.i.i.i.i60.i.i.i.i.i.i.i.i, 100
  %i.hyx = shl nuw nsw i64 %i.hyw, 1
  %i.hyy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hyx ; 2 uses
  %i.hyz = getelementptr inbounds nuw i8, ptr %i.hyy, i64 1
  %i.hza = load i8, ptr %i.hyz, align 1, !tbaa !45, !noalias !676
  %i.hzb = getelementptr inbounds i8, ptr %.0.ptr.i61.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.hza, ptr %i.hzb, align 1, !tbaa !45, !noalias !676
  %i.hzc = load i8, ptr %i.hyy, align 1, !tbaa !45, !noalias !676
  %.0.add.i62.i.i.i.i.i.i.i.i = add nsw i64 %.0.idx.i59.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i63.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %49, i64 %.0.add.i62.i.i.i.i.i.i.i.i
  store i8 %i.hzc, ptr %.ptr24.i63.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hzd = udiv i64 %.08.i.i.i.i60.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.hze = icmp samesign ugt i64 %.08.i.i.i.i60.i.i.i.i.i.i.i.i, 9999
  br i1 %i.hze, label %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i44.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i44.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i, %bb.afx
  %.1.idx.i45.i.i.i.i.i.i.i.i = phi i64 [ 18, %bb.afx ], [ %.0.add.i62.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i46.i.i.i.i.i.i.i.i = phi i64 [ %i.hyu, %bb.afx ], [ %i.hzd, %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hzf = icmp sgt i64 %.0.lcssa.i.i.i.i46.i.i.i.i.i.i.i.i, 9
  br i1 %i.hzf, label %bb.afy, label %bb.afz

bb.afy:                                           ; preds = %._crit_edge.i.i.i.i44.i.i.i.i.i.i.i.i
  %i.hzg = shl nuw nsw i64 %.0.lcssa.i.i.i.i46.i.i.i.i.i.i.i.i, 1
  %i.hzh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hzg ; 2 uses
  %i.hzi = getelementptr inbounds nuw i8, ptr %i.hzh, i64 1
  %i.hzj = load i8, ptr %i.hzi, align 1, !tbaa !45, !noalias !676
  %.1.add.i57.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i45.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %49, i64 %.1.add.i57.i.i.i.i.i.i.i.i
  store i8 %i.hzj, ptr %.ptr22.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hzk = load i8, ptr %i.hzh, align 1, !tbaa !45, !noalias !676
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i47.i.i.i.i.i.i.i.i

bb.afz:                                           ; preds = %._crit_edge.i.i.i.i44.i.i.i.i.i.i.i.i
  %i.hzl = trunc i64 %.0.lcssa.i.i.i.i46.i.i.i.i.i.i.i.i to i8
  %i.hzm = add i8 %i.hzl, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i47.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i47.i.i.i.i.i.i.i.i: ; preds = %bb.afz, %bb.afy
  %.2.idx.i48.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i57.i.i.i.i.i.i.i.i, %bb.afy ], [ %.1.idx.i45.i.i.i.i.i.i.i.i, %bb.afz ] ; 3 uses
  %.sink.i.i.i.i49.i.i.i.i.i.i.i.i = phi i8 [ %i.hzk, %bb.afy ], [ %i.hzm, %bb.afz ]
  %i.hzn = getelementptr i8, ptr %49, i64 %.2.idx.i48.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i50.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.hzn, i64 -1
  store i8 %.sink.i.i.i.i49.i.i.i.i.i.i.i.i, ptr %.ptr.i50.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !676
  %i.hzo = icmp sgt i64 %.2.idx.i48.i.i.i.i.i.i.i.i, 10
  br i1 %i.hzo, label %.lr.ph.i.i.preheader.i54.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2047

.lr.ph.i.i.preheader.i54.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i47.i.i.i.i.i.i.i.i
  %i.hzp = add i64 %.2.idx.i48.i.i.i.i.i.i.i.i, %105 ; 2 uses
  %i.hzq = add i64 %i.hzp, -2
  %umin.i55.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hzq, i64 %i.hqc) ; 2 uses
  %i.hzr = sub i64 %umin.i55.i.i.i.i.i.i.i.i, %105
  %scevgep.i56.i.i.i.i.i.i.i.i = getelementptr i8, ptr %49, i64 %i.hzr ; 2 uses
  %i.hzs = xor i64 %umin.i55.i.i.i.i.i.i.i.i, -1
  %i.hzt = add i64 %i.hzp, %i.hzs
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i56.i.i.i.i.i.i.i.i, i8 48, i64 %i.hzt, i1 false), !tbaa !45, !noalias !676
  %scevgep28.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i56.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2047

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2047: ; preds = %.lr.ph.i.i.preheader.i54.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i47.i.i.i.i.i.i.i.i
  %i.hzu = phi ptr [ %i.hzn, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i47.i.i.i.i.i.i.i.i ], [ %scevgep28.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i54.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hzv = getelementptr i8, ptr %i.hzu, i64 -2
  store i8 46, ptr %i.hzv, align 1, !tbaa !45, !noalias !676
  %i.hzw = shl nuw nsw i64 %.zext.i42.i.i.i.i.i.i.i.i, 1
  %i.hzx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hzw
  %i.hzy = getelementptr i8, ptr %i.hzu, i64 -10  ; 3 uses
  %i.hzz = load <2 x i8>, ptr %i.hzx, align 1, !tbaa !45, !noalias !676
  %i.iaa = load <2 x i8>, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !45, !noalias !676
  %i.iab = shufflevector <2 x i8> %i.iaa, <2 x i8> %i.hzz, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.iac = shufflevector <8 x i8> %i.iab, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x i8> %i.iac, ptr %i.hzy, align 1, !tbaa !45, !noalias !676
  %i.iad = ptrtoint ptr %i.hzy to i64
  %i.iae = sub i64 %i.hqd, %i.iad                 ; 3 uses
  %i.iaf = load ptr, ptr %2, align 8, !tbaa !194, !noalias !676, !nonnull !98, !align !192
  %i.iag = getelementptr inbounds nuw i8, ptr %i.iaf, i64 52
  %i.iah = load i32, ptr %i.iag, align 4, !tbaa !47, !noalias !676
  %i.iai = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676
  %i.iaj = sext i32 %i.iah to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i52.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.iae, i64 %i.iaj)
  %i.iak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iai, ptr noundef nonnull %i.hzy, i64 noundef %.sroa.speculated.i.i.i.i.i52.i.i.i.i.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc40.i:                                       ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2047
  %i.ial = icmp ugt i64 %i.iae, %i.iaj
  br i1 %i.ial, label %bb.aga, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i53.i.i.i.i.i.i.i.i

bb.aga:                                           ; preds = %.noexc40.i
  %i.iam = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676 ; 2 uses
  %i.ian = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iam, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc41.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc41.i:                                       ; preds = %bb.aga
  %i.iao = sub nuw i64 %i.iae, %i.iaj
  %i.iap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iam, i64 noundef %i.iao)
          to label %.noexc42.i2048 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc42.i2048:                                   ; preds = %.noexc41.i
  %i.iaq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iap, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i53.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i53.i.i.i.i.i.i.i.i: ; preds = %.noexc42.i2048, %.noexc40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18, !noalias !676
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020

bb.agb:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2019
  %spec.select.i.i64.i.i.i.i.i.i.i.i = icmp ult i32 %i.htz, 86400
  br i1 %spec.select.i.i64.i.i.i.i.i.i.i.i, label %bb.agc, label %.invoke131.i, !prof !77

bb.agc:                                           ; preds = %bb.agb
  %i.iar = zext nneg i32 %i.htz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18, !noalias !676
  %i.ias = udiv i32 %i.htz, 3600
  %.zext.i65.i.i.i.i.i.i.i.i = zext nneg i32 %i.ias to i64 ; 3 uses
  %i.iat = udiv i32 %i.htz, 60
  %.zext16.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.iat to i64
  %.neg.i.i.i.i66.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i65.i.i.i.i.i.i.i.i, -60
  %i.iau = add nsw i64 %.neg.i.i.i.i66.i.i.i.i.i.i.i.i, %.zext16.i.i.i.i.i.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i67.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i65.i.i.i.i.i.i.i.i, -3600
  %i.iav = add nsw i64 %.neg.i7.i.i.i67.i.i.i.i.i.i.i.i, %i.iar
  %.neg.i8.i.i.i68.i.i.i.i.i.i.i.i = mul nsw i64 %i.iau, -60
  %i.iaw = add nsw i64 %i.iav, %.neg.i8.i.i.i68.i.i.i.i.i.i.i.i
  %i.iax = shl nsw i64 %i.iaw, 1
  %i.iay = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.iax ; 2 uses
  %i.iaz = getelementptr inbounds nuw i8, ptr %i.iay, i64 1
  %i.iba = load i8, ptr %i.iaz, align 1, !tbaa !45, !noalias !676
  store i8 %i.iba, ptr %i.hqe, align 1, !tbaa !45, !noalias !676
  %i.ibb = load i8, ptr %i.iay, align 1, !tbaa !45, !noalias !676
  store i8 %i.ibb, ptr %i.hqf, align 1, !tbaa !45, !noalias !676
  %i.ibc = shl nsw i64 %i.iau, 1
  %i.ibd = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ibc
  %i.ibe = load <2 x i8>, ptr %i.ibd, align 1, !tbaa !45, !noalias !676
  %i.ibf = shufflevector <2 x i8> %i.ibe, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ibg = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.ibf, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.ibg, ptr %i.hqg, align 1, !tbaa !45, !noalias !676
  %i.ibh = shl nuw nsw i64 %.zext.i65.i.i.i.i.i.i.i.i, 1
  %i.ibi = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ibh ; 2 uses
  %i.ibj = getelementptr inbounds nuw i8, ptr %i.ibi, i64 1
  %i.ibk = load i8, ptr %i.ibj, align 1, !tbaa !45, !noalias !676
  store i8 %i.ibk, ptr %i.hqh, align 1, !tbaa !45, !noalias !676
  %i.ibl = load i8, ptr %i.ibi, align 1, !tbaa !45, !noalias !676
  store i8 %i.ibl, ptr %i.hqi, align 1, !tbaa !45, !noalias !676
  %i.ibm = load ptr, ptr %2, align 8, !tbaa !194, !noalias !676, !nonnull !98, !align !192
  %i.ibn = getelementptr inbounds nuw i8, ptr %i.ibm, i64 52
  %i.ibo = load i32, ptr %i.ibn, align 4, !tbaa !47, !noalias !676 ; 2 uses
  %i.ibp = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676
  %i.ibq = sext i32 %i.ibo to i64                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i70.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ibq, i64 8)
  %i.ibr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ibp, ptr noundef nonnull %i.hqi, i64 noundef %.sroa.speculated.i.i.i.i.i70.i.i.i.i.i.i.i.i)
          to label %.noexc45.i2049 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc45.i2049:                                   ; preds = %bb.agc
  %i.ibs = icmp ult i32 %i.ibo, 8
  br i1 %i.ibs, label %bb.agd, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i71.i.i.i.i.i.i.i.i

bb.agd:                                           ; preds = %.noexc45.i2049
  %i.ibt = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !676 ; 2 uses
  %i.ibu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ibt, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc46.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

.noexc46.i:                                       ; preds = %bb.agd
  %i.ibv = sub nuw nsw i64 8, %i.ibq
  %i.ibw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ibt, i64 noundef %i.ibv)
          to label %.noexc47.i2050 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656

.noexc47.i2050:                                   ; preds = %.noexc46.i
  %i.ibx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ibw, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i71.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i71.i.i.i.i.i.i.i.i: ; preds = %.noexc47.i2050, %.noexc45.i2049
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18, !noalias !676
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020

_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020:        ; preds = %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i71.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i53.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time32TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i, %.invoke131.i
  br i1 %i.hqn, label %.critedge.i.i.i.i.i2003, label %.invoke.i2002

.critedge.i.i.i.i.i2003:                          ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020, %.invoke.i2002, %.noexc26.i2001, %.noexc21.i2060
  %.1.i.i.i.i.i2004 = phi i64 [ %i.hrq, %.noexc21.i2060 ], [ %.055.i.i.i.i.i, %.noexc26.i2001 ], [ %.055.i.i.i.i.i, %.invoke.i2002 ], [ %.055.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2020 ]
  %.val.i.i.i.i.i2005 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !671
  %i.iby = getelementptr i8, ptr %.val.i.i.i.i.i2005, i64 48
  %.val.val.i.i.i.i.i2006 = load i8, ptr %i.iby, align 8, !tbaa !126, !range !97, !noalias !671, !noundef !98
  %i.ibz = trunc nuw i8 %.val.val.i.i.i.i.i2006 to i1
  br i1 %i.ibz, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008, label %bb.age

bb.age:                                           ; preds = %.critedge.i.i.i.i.i2003
  %.val40.i.i.i.i.i2007 = load ptr, ptr %i.hom, align 8, !noalias !671
  %i.ica = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val40.i.i.i.i.i2007, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, !noalias !656 ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008: ; preds = %bb.age, %.critedge.i.i.i.i.i2003
  %i.icb = add nsw i64 %.1.i.i.i.i.i2004, 1       ; 2 uses
  %i.icc = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !671 ; 2 uses
  %i.icd = getelementptr inbounds nuw i8, ptr %i.icc, i64 16
  %i.ice = load i64, ptr %i.icd, align 8, !tbaa !210, !noalias !671 ; 3 uses
  %.not37.i.i.i.i.i2009 = icmp slt i64 %i.icb, %i.ice
  br i1 %.not37.i.i.i.i.i2009, label %bb.aew, label %_ZN5arrow6StatusD2Ev.exit54.i, !llvm.loop !679

.loopexit66.i:                                    ; preds = %.lr.ph.i.i41.i.i.i.i.i2014
  %lpad.loopexit68.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

.loopexit.split-lp67.loopexit.i:                  ; preds = %.lr.ph.i.i44.i.i.i.i.i2051
  %lpad.loopexit71.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

.loopexit.split-lp67.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i2061
  %lpad.loopexit74.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.age, %.noexc47.i2050, %.noexc46.i, %bb.agd, %bb.agc, %.noexc42.i2048, %.noexc41.i, %bb.aga, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2047, %.noexc37.i, %.noexc36.i2023, %bb.afv, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2021, %.noexc32.i2040, %.noexc31.i2039, %bb.afq, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2036, %.invoke131.i, %.invoke.i2002, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2000, %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2056, %bb.afg, %bb.aff, %bb.afb, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2058
  %lpad.loopexit.split-lp75.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i1983

_ZN5arrow6StatusD2Ev.exit54.i:                    ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2008
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18, !noalias !666
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !656
  %.pre2.i.pre.i2010 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !656 ; 4 uses
  %i.icf = icmp sgt i64 %i.ice, 0
  br i1 %i.icf, label %bb.agf, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i

bb.agf:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit54.i
  %i.icg = getelementptr inbounds nuw i8, ptr %.pre2.i.pre.i2010, i64 4
  %i.ich = load i32, ptr %i.icg, align 4, !tbaa !33, !noalias !656
  %i.ici = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !656
  %i.icj = sub nsw i32 %i.ici, %i.ich             ; 2 uses
  store i32 %i.icj, ptr %i.hpv, align 8, !tbaa !57, !noalias !656
  %i.ick = getelementptr inbounds nuw i8, ptr %.pre2.i.pre.i2010, i64 48
  %i.icl = load i8, ptr %i.ick, align 8, !tbaa !126, !range !97, !noalias !656, !noundef !98
  %i.icm = trunc nuw i8 %i.icl to i1
  %i.icn = icmp slt i32 %i.icj, 1
  %or.cond.not.i.i2011 = select i1 %i.icm, i1 true, i1 %i.icn
  br i1 %or.cond.not.i.i2011, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %bb.agf, %.noexc60.i
  %.02.i.i57.i = phi i32 [ %i.icq, %.noexc60.i ], [ 0, %bb.agf ]
  %i.ico = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !656
  %i.icp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ico, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc60.i unwind label %.loopexit.i2012, !noalias !656 ; 0 uses

.noexc60.i:                                       ; preds = %.lr.ph.i.i56.i
  %i.icq = add nuw nsw i32 %.02.i.i57.i, 1        ; 2 uses
  %i.icr = load i32, ptr %i.hpv, align 8, !tbaa !57, !noalias !656
  %i.ics = icmp slt i32 %i.icq, %i.icr
  br i1 %i.ics, label %.lr.ph.i.i56.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i58.i, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i58.i: ; preds = %.noexc60.i
  %.pre.i59.i = load ptr, ptr %2, align 8, !tbaa !194, !noalias !656
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i58.i, %bb.agf, %_ZN5arrow6StatusD2Ev.exit54.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991, %.noexc17.i1988
  %i.ict = phi ptr [ %.pre.i59.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i58.i ], [ %.pre2.i.pre.i2010, %bb.agf ], [ %.pre2.i.pre.i2010, %_ZN5arrow6StatusD2Ev.exit54.i ], [ %.pre3.i.i1992, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i1991 ], [ %.pre2.i.pre87.pre.i, %.noexc17.i1988 ] ; 2 uses
  %i.icu = load ptr, ptr %i.hom, align 8, !tbaa !60, !noalias !656
  %i.icv = getelementptr inbounds nuw i8, ptr %i.ict, i64 88
  %i.icw = load ptr, ptr %i.icv, align 8, !tbaa !102, !noalias !656
  %i.icx = getelementptr inbounds nuw i8, ptr %i.ict, i64 96
  %i.icy = load i64, ptr %i.icx, align 8, !tbaa !44, !noalias !656
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i, %bb.aeq
  %i.icz = phi ptr [ %i.icu, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i ], [ %i.hnx, %bb.aeq ]
  %i.ida = phi ptr [ %i.icw, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i ], [ @.str.15, %bb.aeq ]
  %i.idb = phi i64 [ %i.icy, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i ], [ 1, %bb.aeq ]
  %i.idc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.icz, ptr noundef %i.ida, i64 noundef %i.idb)
          to label %.critedge.i1986 unwind label %.loopexit.split-lp.loopexit.split-lp.i1982, !noalias !656 ; 0 uses

.critedge.i1986:                                  ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !656
  %i.idd = load ptr, ptr %53, align 8, !tbaa !74, !noalias !656 ; 2 uses
  %.not.i62.i = icmp eq ptr %i.idd, null
  br i1 %.not.i62.i, label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_10Time32TypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit, label %bb.agg, !prof !77

bb.agg:                                           ; preds = %.critedge.i1986
  %i.ide = getelementptr inbounds nuw i8, ptr %i.idd, i64 1
  %i.idf = load i8, ptr %i.ide, align 1, !tbaa !91, !range !97, !noalias !656, !noundef !98
  %i.idg = trunc nuw i8 %i.idf to i1
  br i1 %i.idg, label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_10Time32TypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit, label %bb.agh

bb.agh:                                           ; preds = %bb.agg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #18, !noalias !656
  br label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_10Time32TypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit

.loopexit.split-lp.i1983:                         ; preds = %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp67.loopexit.split-lp.loopexit.i, %.loopexit.split-lp67.loopexit.i, %.loopexit66.i, %.loopexit.split-lp.loopexit.split-lp.i1982, %.loopexit.split-lp.loopexit.i2066, %.loopexit.i2012
  %.pn14.i1984 = phi { ptr, i32 } [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp.loopexit.split-lp.i1982 ], [ %lpad.loopexit.i2013, %.loopexit.i2012 ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.i2066 ], [ %lpad.loopexit68.i, %.loopexit66.i ], [ %lpad.loopexit71.i, %.loopexit.split-lp67.loopexit.i ], [ %lpad.loopexit74.i, %.loopexit.split-lp67.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp75.i, %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i ]
  %i.idh = load ptr, ptr %53, align 8, !tbaa !74, !noalias !656 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.idh, null
  br i1 %.not.i64.i, label %_ZN5arrow6StatusD2Ev.exit65.i, label %bb.agi, !prof !77

bb.agi:                                           ; preds = %.loopexit.split-lp.i1983
  %i.idi = getelementptr inbounds nuw i8, ptr %i.idh, i64 1
  %i.idj = load i8, ptr %i.idi, align 1, !tbaa !91, !range !97, !noalias !656, !noundef !98
  %i.idk = trunc nuw i8 %i.idj to i1
  br i1 %i.idk, label %_ZN5arrow6StatusD2Ev.exit65.i, label %bb.agj

bb.agj:                                           ; preds = %bb.agi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #18, !noalias !656
  br label %_ZN5arrow6StatusD2Ev.exit65.i

_ZN5arrow6StatusD2Ev.exit65.i:                    ; preds = %bb.agj, %bb.agi, %.loopexit.split-lp.i1983
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18, !noalias !656
  br label %common.resume

_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitINS_12NumericArrayINS_10Time32TypeEEEEENSt9enable_ifIXoooooooooooooooooooosr3std10is_base_ofINS_14PrimitiveArrayET_EE5valuesr3std10is_base_ofINS_20FixedSizeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_11BinaryArrayES8_EE5valuesr3std10is_base_ofINS_16LargeBinaryArrayES8_EE5valuesr3std10is_base_ofINS_15BinaryViewArrayES8_EE5valuesr3std10is_base_ofINS_9ListArrayES8_EE5valuesr3std10is_base_ofINS_14LargeListArrayES8_EE5valuesr3std10is_base_ofINS_13ListViewArrayES8_EE5valuesr3std10is_base_ofINS_18LargeListViewArrayES8_EE5valuesr3std10is_base_ofINS_8MapArrayES8_EE5valuesr3std10is_base_ofINS_18FixedSizeListArrayES8_EE5valueENS_6StatusEE4typeERKS8_.exit: ; preds = %.critedge.i1986, %bb.agg, %bb.agh
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18, !noalias !656
  br label %_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitERKNS_11StructArrayE.exit

bb.agk:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18, !noalias !680
  call void @_ZNK5arrow5Array8ValidateEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %47, ptr noundef nonnull align 8 dereferenceable(48) %1), !noalias !680
  %i.idl = load ptr, ptr %47, align 8, !tbaa !74, !noalias !680
  %i.idm = icmp eq ptr %i.idl, null
  br i1 %i.idm, label %bb.agn, label %bb.agl

bb.agl:                                           ; preds = %bb.agk
  %i.idn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ido = load ptr, ptr %i.idn, align 8, !tbaa !60, !noalias !680 ; 2 uses
  %i.idp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ido, ptr noundef nonnull @.str.14, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2076 unwind label %.loopexit.split-lp.loopexit.split-lp.i2070, !noalias !680 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2076: ; preds = %bb.agl
  %i.idq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.agm unwind label %.loopexit.split-lp.loopexit.split-lp.i2070, !noalias !680 ; 2 uses

bb.agm:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2076
  %i.idr = load ptr, ptr %i.idq, align 8, !tbaa !102, !noalias !680
  %i.ids = getelementptr inbounds nuw i8, ptr %i.idq, i64 8
  %i.idt = load i64, ptr %i.ids, align 8, !tbaa !44, !noalias !680
  %i.idu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ido, ptr noundef %i.idr, i64 noundef %i.idt)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i2077 unwind label %.loopexit.split-lp.loopexit.split-lp.i2070, !noalias !680

.loopexit.i2118:                                  ; preds = %.lr.ph.i.i56.i2116
  %lpad.loopexit.i2119 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

.loopexit.split-lp.loopexit.i2222:                ; preds = %bb.agp
  %lpad.loopexit77.i2223 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

.loopexit.split-lp.loopexit.split-lp.i2070:       ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.invoke.i2077, %bb.agr, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i2080, %bb.agm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2076, %bb.agl
  %lpad.loopexit.split-lp78.i2071 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

bb.agn:                                           ; preds = %bb.agk
  %i.idv = load ptr, ptr %2, align 8, !tbaa !194, !noalias !680, !nonnull !98, !align !192 ; 3 uses
  %i.idw = getelementptr inbounds nuw i8, ptr %i.idv, i64 48
  %i.idx = load i8, ptr %i.idw, align 8, !tbaa !126, !range !97, !noalias !680, !noundef !98
  %i.idy = trunc nuw i8 %i.idx to i1
  br i1 %i.idy, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i2080, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.idz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.iea = load i32, ptr %i.idz, align 8, !tbaa !57, !noalias !680
  %i.ieb = icmp sgt i32 %i.iea, 0
  br i1 %i.ieb, label %.lr.ph.i.i.i2220, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i2080

.lr.ph.i.i.i2220:                                 ; preds = %bb.ago
  %i.iec = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.agp

bb.agp:                                           ; preds = %.noexc.i2224, %.lr.ph.i.i.i2220
  %.02.i.i.i2221 = phi i32 [ 0, %.lr.ph.i.i.i2220 ], [ %i.ief, %.noexc.i2224 ]
  %i.ied = load ptr, ptr %i.iec, align 8, !tbaa !60, !noalias !680
  %i.iee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ied, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc.i2224 unwind label %.loopexit.split-lp.loopexit.i2222, !noalias !680 ; 0 uses

.noexc.i2224:                                     ; preds = %bb.agp
  %i.ief = add nuw nsw i32 %.02.i.i.i2221, 1      ; 2 uses
  %i.ieg = load i32, ptr %i.idz, align 8, !tbaa !57, !noalias !680
  %i.ieh = icmp slt i32 %i.ief, %i.ieg
  br i1 %i.ieh, label %bb.agp, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2225, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2225: ; preds = %.noexc.i2224
  %.pre.i.i2226 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !680
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i2080

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i2080: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2225, %bb.ago, %bb.agn
  %i.iei = phi ptr [ %.pre.i.i2226, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit.i.i2225 ], [ %i.idv, %bb.ago ], [ %i.idv, %bb.agn ] ; 2 uses
  %i.iej = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.iek = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !680
  %i.iel = getelementptr inbounds nuw i8, ptr %i.iei, i64 56
  %i.iem = load ptr, ptr %i.iel, align 8, !tbaa !102, !noalias !680
  %i.ien = getelementptr inbounds nuw i8, ptr %i.iei, i64 64
  %i.ieo = load i64, ptr %i.ien, align 8, !tbaa !44, !noalias !680
  %i.iep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iek, ptr noundef %i.iem, i64 noundef %i.ieo)
          to label %.noexc17.i2081 unwind label %.loopexit.split-lp.loopexit.split-lp.i2070, !noalias !680 ; 0 uses

.noexc17.i2081:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i.i2080
  %i.ieq = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !680 ; 2 uses
  %i.ier = getelementptr inbounds nuw i8, ptr %i.ieq, i64 16
  %i.ies = load i64, ptr %i.ier, align 8, !tbaa !210, !noalias !680 ; 2 uses
  %i.iet = icmp sgt i64 %i.ies, 0
  %.pre2.i.pre87.pre.i2082 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !680 ; 4 uses
  br i1 %i.iet, label %bb.agq, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i2083

bb.agq:                                           ; preds = %.noexc17.i2081
  %i.ieu = getelementptr i8, ptr %.pre2.i.pre87.pre.i2082, i64 48
  %.val.val.i.i2084 = load i8, ptr %i.ieu, align 8, !tbaa !126, !range !97, !noalias !680, !noundef !98
  %i.iev = trunc nuw i8 %.val.val.i.i2084 to i1
  br i1 %i.iev, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i2219, label %bb.agr

_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i2219: ; preds = %bb.agq
  %i.iew = getelementptr inbounds nuw i8, ptr %.pre2.i.pre87.pre.i2082, i64 4
  %i.iex = load i32, ptr %i.iew, align 4, !tbaa !33, !noalias !680
  %i.iey = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.iez = load i32, ptr %i.iey, align 8, !tbaa !57, !noalias !680
  %i.ifa = add nsw i32 %i.iez, %i.iex
  store i32 %i.ifa, ptr %i.iey, align 8, !tbaa !57, !noalias !680
  br label %.lr.ph.i.i.i.i.i2091

bb.agr:                                           ; preds = %bb.agq
  %.val2.i.i2085 = load ptr, ptr %i.iej, align 8, !noalias !680
  %i.ifb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val2.i.i2085, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i2086 unwind label %.loopexit.split-lp.loopexit.split-lp.i2070, !noalias !680 ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i2086: ; preds = %bb.agr
  %.pre3.i.i2087 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !680 ; 3 uses
  %.pre.pre.i2088 = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !680 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i2089 = getelementptr inbounds nuw i8, ptr %.pre.pre.i2088, i64 16
  %.pre84.pre.i2090 = load i64, ptr %.phi.trans.insert.phi.trans.insert.i2089, align 8, !tbaa !210, !noalias !680 ; 2 uses
  %i.ifc = getelementptr inbounds nuw i8, ptr %.pre3.i.i2087, i64 4
  %i.ifd = load i32, ptr %i.ifc, align 4, !tbaa !33, !noalias !680
  %i.ife = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.iff = load i32, ptr %i.ife, align 8, !tbaa !57, !noalias !680
  %i.ifg = add nsw i32 %i.iff, %i.ifd
  store i32 %i.ifg, ptr %i.ife, align 8, !tbaa !57, !noalias !680
  %i.ifh = icmp sgt i64 %.pre84.pre.i2090, 0
  br i1 %i.ifh, label %.lr.ph.i.i.i.i.i2091, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i2083

.lr.ph.i.i.i.i.i2091:                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i2086, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i2219
  %i.ifi = phi ptr [ %.pre2.i.pre87.pre.i2082, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i2219 ], [ %.pre3.i.i2087, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i2086 ]
  %.pre125.i2092 = phi ptr [ %i.ieq, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i2219 ], [ %.pre.pre.i2088, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i2086 ] ; 2 uses
  %.pre84124.i2093 = phi i64 [ %i.ies, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.thread121.i2219 ], [ %.pre84.pre.i2090, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE.exit.i2086 ]
  %i.ifj = load ptr, ptr %.pre125.i2092, align 8, !tbaa !127, !noalias !683
  %i.ifk = getelementptr inbounds nuw i8, ptr %i.ifj, i64 72
  %i.ifl = load i32, ptr %i.ifk, align 8, !tbaa !664, !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18, !noalias !688
  store ptr %2, ptr %46, align 8, !tbaa !691, !noalias !688
  %i.ifm = getelementptr inbounds nuw i8, ptr %i.ifi, i64 8
  %i.ifn = load i32, ptr %i.ifm, align 8, !tbaa !41, !noalias !693 ; 2 uses
  %i.ifo = shl nsw i32 %i.ifn, 1
  %i.ifp = or disjoint i32 %i.ifo, 1
  %i.ifq = sext i32 %i.ifp to i64
  %i.ifr = sext i32 %i.ifn to i64                 ; 3 uses
  %i.ifs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.ift = xor i64 %i.ifr, -1
  %i.ifu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %106 = ptrtoaddr ptr %44 to i64                 ; 3 uses
  %.ptr23.i.i.i.i.i.i.i.i.i2094 = getelementptr inbounds nuw i8, ptr %44, i64 15
  %i.ifv = add nuw i64 %106, 9
  %i.ifw = ptrtoint ptr %.ptr23.i.i.i.i.i.i.i.i.i2094 to i64
  %107 = ptrtoaddr ptr %45 to i64                 ; 3 uses
  %.ptr26.i.i.i.i.i.i.i.i.i2095 = getelementptr inbounds nuw i8, ptr %45, i64 12
  %i.ifx = add nuw i64 %107, 9
  %i.ify = ptrtoint ptr %.ptr26.i.i.i.i.i.i.i.i.i2095 to i64
  %108 = ptrtoaddr ptr %43 to i64                 ; 3 uses
  %.ptr23.i40.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 18
  %i.ifz = add nuw i64 %108, 9
  %i.iga = ptrtoint ptr %.ptr23.i40.i.i.i.i.i.i.i.i to i64
  %i.igb = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.igc = getelementptr inbounds nuw i8, ptr %42, i64 7
  %i.igd = getelementptr inbounds nuw i8, ptr %42, i64 3
  %i.ige = getelementptr inbounds nuw i8, ptr %42, i64 2
  %i.igf = getelementptr inbounds nuw i8, ptr %42, i64 1 ; 2 uses
  %i.igg = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.ags

bb.ags:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111, %.lr.ph.i.i.i.i.i2091
  %i.igh = phi i64 [ %.pre84124.i2093, %.lr.ph.i.i.i.i.i2091 ], [ %i.isq, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111 ] ; 3 uses
  %i.igi = phi ptr [ %.pre125.i2092, %.lr.ph.i.i.i.i.i2091 ], [ %i.iso, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111 ] ; 6 uses
  %.055.i.i.i.i.i2096 = phi i64 [ 0, %.lr.ph.i.i.i.i.i2091 ], [ %i.isn, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111 ] ; 11 uses
  %i.igj = add nsw i64 %i.igh, -1
  %i.igk = icmp eq i64 %.055.i.i.i.i.i2096, %i.igj ; 3 uses
  %.not.i.i.i.i.i2097 = icmp eq i64 %i.igh, %i.ifq
  br i1 %.not.i.i.i.i.i2097, label %bb.agy, label %bb.agt

bb.agt:                                           ; preds = %bb.ags
  %.not36.i.i.i.i.i2098 = icmp sge i64 %.055.i.i.i.i.i2096, %i.ifr
  %i.igl = sub nsw i64 %i.igh, %i.ifr
  %i.igm = icmp slt i64 %.055.i.i.i.i.i2096, %i.igl
  %or.cond.i.i.i.i.i2099 = select i1 %.not36.i.i.i.i.i2098, i1 %i.igm, i1 false
  br i1 %or.cond.i.i.i.i.i2099, label %bb.agu, label %bb.agy

bb.agu:                                           ; preds = %bb.agt
  %i.ign = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693, !nonnull !98, !align !192
  %i.igo = getelementptr inbounds nuw i8, ptr %i.ign, i64 48
  %i.igp = load i8, ptr %i.igo, align 8, !tbaa !126, !range !97, !noalias !693, !noundef !98
  %i.igq = trunc nuw i8 %i.igp to i1
  br i1 %i.igq, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2211, label %bb.agv

bb.agv:                                           ; preds = %bb.agu
  %i.igr = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !693
  %i.igs = icmp sgt i32 %i.igr, 0
  br i1 %i.igs, label %.lr.ph.i.i.i.i.i.i.i2214, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2211

.lr.ph.i.i.i.i.i.i.i2214:                         ; preds = %bb.agv, %.noexc19.i2218
  %.02.i.i.i.i.i.i.i2215 = phi i32 [ %i.igv, %.noexc19.i2218 ], [ 0, %bb.agv ]
  %i.igt = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.igu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.igt, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc19.i2218 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.i2216, !noalias !680 ; 0 uses

.noexc19.i2218:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i2214
  %i.igv = add nuw nsw i32 %.02.i.i.i.i.i.i.i2215, 1 ; 2 uses
  %i.igw = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !693
  %i.igx = icmp slt i32 %i.igv, %i.igw
  br i1 %i.igx, label %.lr.ph.i.i.i.i.i.i.i2214, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2211, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2211: ; preds = %.noexc19.i2218, %bb.agv, %bb.agu
  %i.igy = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.igz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.igy, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %.noexc20.i2212 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc20.i2212:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2211
  br i1 %i.igk, label %.noexc21.i2213, label %bb.agw

bb.agw:                                           ; preds = %.noexc20.i2212
  %i.iha = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693, !nonnull !98, !align !192 ; 3 uses
  %i.ihb = getelementptr inbounds nuw i8, ptr %i.iha, i64 48
  %i.ihc = load i8, ptr %i.ihb, align 8, !tbaa !126, !range !97, !noalias !693, !noundef !98
  %i.ihd = trunc nuw i8 %i.ihc to i1
  br i1 %i.ihd, label %bb.agx, label %.noexc21.i2213

bb.agx:                                           ; preds = %bb.agw
  %i.ihe = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.ihf = getelementptr inbounds nuw i8, ptr %i.iha, i64 120
  %i.ihg = load ptr, ptr %i.ihf, align 8, !tbaa !102, !noalias !693
  %i.ihh = getelementptr inbounds nuw i8, ptr %i.iha, i64 128
  %i.ihi = load i64, ptr %i.ihh, align 8, !tbaa !44, !noalias !693
  %i.ihj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ihe, ptr noundef %i.ihg, i64 noundef %i.ihi)
          to label %.noexc21.i2213 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc21.i2213:                                   ; preds = %bb.agx, %bb.agw, %.noexc20.i2212
  %i.ihk = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !693
  %i.ihl = getelementptr inbounds nuw i8, ptr %i.ihk, i64 16
  %i.ihm = load i64, ptr %i.ihl, align 8, !tbaa !210, !noalias !693
  %i.ihn = add i64 %i.ihm, %i.ift
  br label %.critedge.i.i.i.i.i2106

bb.agy:                                           ; preds = %bb.agt, %bb.ags
  %i.iho = load ptr, ptr %i.ifu, align 8, !tbaa !247, !noalias !693 ; 2 uses
  %.not.i.i.i.i.i.i.i2100 = icmp eq ptr %i.iho, null
  br i1 %.not.i.i.i.i.i.i.i2100, label %bb.aha, label %bb.agz

bb.agz:                                           ; preds = %bb.agy
  %i.ihp = getelementptr inbounds nuw i8, ptr %i.igi, i64 32
  %i.ihq = load i64, ptr %i.ihp, align 8, !tbaa !249, !noalias !693
  %i.ihr = add nsw i64 %i.ihq, %.055.i.i.i.i.i2096 ; 2 uses
  %i.ihs = lshr i64 %i.ihr, 3
  %i.iht = getelementptr inbounds nuw i8, ptr %i.iho, i64 %i.ihs
  %i.ihu = load i8, ptr %i.iht, align 1, !tbaa !45, !noalias !693
  %i.ihv = trunc i64 %i.ihr to i8
  %i.ihw = and i8 %i.ihv, 7
  %i.ihx = lshr i8 %i.ihu, %i.ihw
  %i.ihy = trunc i8 %i.ihx to i1
  br i1 %i.ihy, label %bb.ahg, label %bb.ahe

bb.aha:                                           ; preds = %bb.agy
  %i.ihz = load ptr, ptr %i.igi, align 8, !tbaa !127, !noalias !693
  %i.iia = getelementptr inbounds nuw i8, ptr %i.ihz, i64 40
  %i.iib = load i32, ptr %i.iia, align 8, !tbaa !130, !noalias !693
  switch i32 %i.iib, label %bb.ahd [
    i32 27, label %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2208
    i32 28, label %bb.ahb
    i32 38, label %bb.ahc
  ]

bb.ahb:                                           ; preds = %bb.aha
  %i.iic = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.igi, i64 noundef %.055.i.i.i.i.i2096)
          to label %.noexc22.i2207 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc22.i2207:                                   ; preds = %bb.ahb
  br i1 %i.iic, label %bb.ahe, label %bb.ahg

bb.ahc:                                           ; preds = %bb.aha
  %i.iid = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.igi, i64 noundef %.055.i.i.i.i.i2096)
          to label %.noexc23.i2206 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc23.i2206:                                   ; preds = %bb.ahc
  br i1 %i.iid, label %bb.ahe, label %bb.ahg

bb.ahd:                                           ; preds = %bb.aha
  %i.iie = getelementptr inbounds nuw i8, ptr %i.igi, i64 24
  %i.iif = load atomic i64, ptr %i.iie seq_cst, align 8, !noalias !693
  %i.iig = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !693
  %i.iih = getelementptr inbounds nuw i8, ptr %i.iig, i64 16
  %i.iii = load i64, ptr %i.iih, align 8, !tbaa !210, !noalias !693
  %.not78.i.i.i.i.i2210 = icmp eq i64 %i.iif, %i.iii
  br i1 %.not78.i.i.i.i.i2210, label %bb.ahe, label %bb.ahg

_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2208:     ; preds = %bb.aha
  %i.iij = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.igi, i64 noundef %.055.i.i.i.i.i2096)
          to label %.noexc24.i2209 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc24.i2209:                                   ; preds = %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2208
  br i1 %i.iij, label %bb.ahe, label %bb.ahg

bb.ahe:                                           ; preds = %.noexc24.i2209, %bb.ahd, %.noexc23.i2206, %.noexc22.i2207, %bb.agz
  %i.iik = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693, !nonnull !98, !align !192 ; 3 uses
  %i.iil = getelementptr inbounds nuw i8, ptr %i.iik, i64 48
  %i.iim = load i8, ptr %i.iil, align 8, !tbaa !126, !range !97, !noalias !693, !noundef !98
  %i.iin = trunc nuw i8 %i.iim to i1
  br i1 %i.iin, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2101, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  %i.iio = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !693
  %i.iip = icmp sgt i32 %i.iio, 0
  br i1 %i.iip, label %.lr.ph.i.i41.i.i.i.i.i2123, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2101

.lr.ph.i.i41.i.i.i.i.i2123:                       ; preds = %bb.ahf, %.noexc25.i2127
  %.02.i.i42.i.i.i.i.i2124 = phi i32 [ %i.iis, %.noexc25.i2127 ], [ 0, %bb.ahf ]
  %i.iiq = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.iir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iiq, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc25.i2127 unwind label %.loopexit66.i2125, !noalias !680 ; 0 uses

.noexc25.i2127:                                   ; preds = %.lr.ph.i.i41.i.i.i.i.i2123
  %i.iis = add nuw nsw i32 %.02.i.i42.i.i.i.i.i2124, 1 ; 2 uses
  %i.iit = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !693
  %i.iiu = icmp slt i32 %i.iis, %i.iit
  br i1 %i.iiu, label %.lr.ph.i.i41.i.i.i.i.i2123, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2128, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2128: ; preds = %.noexc25.i2127
  %.pre.i.i.i.i.i2129 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2101

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2101: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2128, %bb.ahf, %bb.ahe
  %i.iiv = phi ptr [ %.pre.i.i.i.i.i2129, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i2128 ], [ %i.iik, %bb.ahe ], [ %i.iik, %bb.ahf ] ; 2 uses
  %i.iiw = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.iix = getelementptr inbounds nuw i8, ptr %i.iiv, i64 16
  %i.iiy = load ptr, ptr %i.iix, align 8, !tbaa !102, !noalias !693
  %i.iiz = getelementptr inbounds nuw i8, ptr %i.iiv, i64 24
  %i.ija = load i64, ptr %i.iiz, align 8, !tbaa !44, !noalias !693
  %i.ijb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iiw, ptr noundef %i.iiy, i64 noundef %i.ija)
          to label %.noexc26.i2104 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc26.i2104:                                   ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2101
  br i1 %i.igk, label %.critedge.i.i.i.i.i2106, label %.invoke.i2105

.invoke.i2105:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133, %.noexc26.i2104
  %i.ijc = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.ijd = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693, !nonnull !98, !align !192 ; 2 uses
  %i.ije = getelementptr inbounds nuw i8, ptr %i.ijd, i64 120
  %i.ijf = load ptr, ptr %i.ije, align 8, !tbaa !102, !noalias !693
  %i.ijg = getelementptr inbounds nuw i8, ptr %i.ijd, i64 128
  %i.ijh = load i64, ptr %i.ijg, align 8, !tbaa !44, !noalias !693
  %i.iji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ijc, ptr noundef %i.ijf, i64 noundef %i.ijh)
          to label %.critedge.i.i.i.i.i2106 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

bb.ahg:                                           ; preds = %.noexc24.i2209, %bb.ahd, %.noexc23.i2206, %.noexc22.i2207, %bb.agz
  %i.ijj = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693, !nonnull !98, !align !192
  %i.ijk = getelementptr inbounds nuw i8, ptr %i.ijj, i64 48
  %i.ijl = load i8, ptr %i.ijk, align 8, !tbaa !126, !range !97, !noalias !693, !noundef !98
  %i.ijm = trunc nuw i8 %i.ijl to i1
  br i1 %i.ijm, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130, label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahg
  %i.ijn = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !693
  %i.ijo = icmp sgt i32 %i.ijn, 0
  br i1 %i.ijo, label %.lr.ph.i.i44.i.i.i.i.i2201, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130

.lr.ph.i.i44.i.i.i.i.i2201:                       ; preds = %bb.ahh, %.noexc28.i2205
  %.02.i.i45.i.i.i.i.i2202 = phi i32 [ %i.ijr, %.noexc28.i2205 ], [ 0, %bb.ahh ]
  %i.ijp = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !693
  %i.ijq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ijp, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc28.i2205 unwind label %.loopexit.split-lp67.loopexit.i2203, !noalias !680 ; 0 uses

.noexc28.i2205:                                   ; preds = %.lr.ph.i.i44.i.i.i.i.i2201
  %i.ijr = add nuw nsw i32 %.02.i.i45.i.i.i.i.i2202, 1 ; 2 uses
  %i.ijs = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !693
  %i.ijt = icmp slt i32 %i.ijr, %i.ijs
  br i1 %i.ijt, label %.lr.ph.i.i44.i.i.i.i.i2201, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130: ; preds = %.noexc28.i2205, %bb.ahh, %bb.ahg
  %i.iju = load ptr, ptr %i.igg, align 8, !tbaa !696, !noalias !698
  %i.ijv = getelementptr inbounds [8 x i8], ptr %i.iju, i64 %.055.i.i.i.i.i2096
  %i.ijw = load i64, ptr %i.ijv, align 8, !tbaa !385, !noalias !698 ; 15 uses
  switch i32 %i.ifl, label %bb.ahx [
    i32 3, label %bb.ahs
    i32 1, label %bb.ahi
    i32 2, label %bb.ahn
  ]

bb.ahi:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130
  %spec.select.i.i.i.i.i.i.i.i.i.i2159 = icmp ult i64 %i.ijw, 86400000
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i2159, label %bb.ahj, label %.invoke131.i2132, !prof !77

.invoke131.i2132:                                 ; preds = %bb.ahx, %bb.ahs, %bb.ahn, %bb.ahi
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS0_15StringFormatterIS8_vEEEENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISG_EEtlSL_EEEOSD_OSG_(i64 %i.ijw, ptr noundef nonnull readonly align 8 dereferenceable(8) %46)
          to label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

bb.ahj:                                           ; preds = %bb.ahi
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18, !noalias !698
  %.lhs.trunc.i.i.i.i.i.i.i.i.i2160 = trunc nuw nsw i64 %i.ijw to i32 ; 2 uses
  %i.ijx = udiv i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i2160, 3600000
  %.zext.i.i.i.i.i.i.i.i.i2161 = zext nneg i32 %i.ijx to i64 ; 3 uses
  %i.ijy = udiv i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i2160, 60000
  %.zext23.i.i.i.i.i.i.i.i.i2162 = zext nneg i32 %i.ijy to i64
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i2163 = mul nsw i64 %.zext.i.i.i.i.i.i.i.i.i2161, -60
  %i.ijz = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i2163, %.zext23.i.i.i.i.i.i.i.i.i2162 ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i.i.i.i2164 = mul nsw i64 %.zext.i.i.i.i.i.i.i.i.i2161, -3600000
  %i.ika = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i.i.i.i2164, %i.ijw
  %.neg.i8.i.i.i.i.i.i.i.i.i.i.i2165 = mul nsw i64 %i.ijz, -60000
  %i.ikb = add nsw i64 %i.ika, %.neg.i8.i.i.i.i.i.i.i.i.i.i.i2165 ; 2 uses
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i2166 = trunc nsw i64 %i.ikb to i32
  %i.ikc = sdiv i32 %.lhs.trunc24.i.i.i.i.i.i.i.i.i2166, 1000
  %.sext.i.i.i.i.i.i.i.i.i2167 = sext i32 %i.ikc to i64 ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i2168 = mul nsw i64 %.sext.i.i.i.i.i.i.i.i.i2167, -1000
  %i.ikd = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i2168, %i.ikb ; 3 uses
  %i.ike = icmp sgt i64 %i.ikd, 99
  br i1 %i.ike, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2169

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187:               ; preds = %bb.ahj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187
  %.0.idx.i.i.i.i.i.i.i.i.i2188 = phi i64 [ %.0.add.i.i.i.i.i.i.i.i.i2191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187 ], [ 12, %bb.ahj ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i.i.i.i2189 = phi i64 [ %i.ikm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187 ], [ %i.ikd, %bb.ahj ] ; 3 uses
  %.0.ptr.i.i.i.i.i.i.i.i.i2190 = getelementptr inbounds i8, ptr %45, i64 %.0.idx.i.i.i.i.i.i.i.i.i2188
  %i.ikf = urem i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i2189, 100
  %i.ikg = shl nuw nsw i64 %i.ikf, 1
  %i.ikh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ikg ; 2 uses
  %i.iki = getelementptr inbounds nuw i8, ptr %i.ikh, i64 1
  %i.ikj = load i8, ptr %i.iki, align 1, !tbaa !45, !noalias !698
  %i.ikk = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i.i.i.i.i.i2190, i64 -1
  store i8 %i.ikj, ptr %i.ikk, align 1, !tbaa !45, !noalias !698
  %i.ikl = load i8, ptr %i.ikh, align 1, !tbaa !45, !noalias !698
  %.0.add.i.i.i.i.i.i.i.i.i2191 = add nsw i64 %.0.idx.i.i.i.i.i.i.i.i.i2188, -2 ; 3 uses
  %.ptr27.i.i.i.i.i.i.i.i.i2192 = getelementptr inbounds i8, ptr %45, i64 %.0.add.i.i.i.i.i.i.i.i.i2191
  store i8 %i.ikl, ptr %.ptr27.i.i.i.i.i.i.i.i.i2192, align 1, !tbaa !45, !noalias !698
  %i.ikm = udiv i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i2189, 100 ; 2 uses
  %i.ikn = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i2189, 9999
  br i1 %i.ikn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2169, !llvm.loop !654

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2169:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187, %bb.ahj
  %.1.idx.i.i.i.i.i.i.i.i.i2170 = phi i64 [ 12, %bb.ahj ], [ %.0.add.i.i.i.i.i.i.i.i.i2191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2171 = phi i64 [ %i.ikd, %bb.ahj ], [ %i.ikm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i2187 ] ; 3 uses
  %i.iko = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2171, 9
  br i1 %i.iko, label %bb.ahk, label %bb.ahl

bb.ahk:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2169
  %i.ikp = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2171, 1
  %i.ikq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ikp ; 2 uses
  %i.ikr = getelementptr inbounds nuw i8, ptr %i.ikq, i64 1
  %i.iks = load i8, ptr %i.ikr, align 1, !tbaa !45, !noalias !698
  %.1.add.i.i.i.i.i.i.i.i.i2185 = add nsw i64 %.1.idx.i.i.i.i.i.i.i.i.i2170, -1 ; 2 uses
  %.ptr25.i.i.i.i.i.i.i.i.i2186 = getelementptr inbounds i8, ptr %45, i64 %.1.add.i.i.i.i.i.i.i.i.i2185
  store i8 %i.iks, ptr %.ptr25.i.i.i.i.i.i.i.i.i2186, align 1, !tbaa !45, !noalias !698
  %i.ikt = load i8, ptr %i.ikq, align 1, !tbaa !45, !noalias !698
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2172

bb.ahl:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i2169
  %i.iku = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i2171 to i8
  %i.ikv = add i8 %i.iku, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2172

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2172: ; preds = %bb.ahl, %bb.ahk
  %.2.idx.i.i.i.i.i.i.i.i.i2173 = phi i64 [ %.1.add.i.i.i.i.i.i.i.i.i2185, %bb.ahk ], [ %.1.idx.i.i.i.i.i.i.i.i.i2170, %bb.ahl ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i2174 = phi i8 [ %i.ikt, %bb.ahk ], [ %i.ikv, %bb.ahl ]
  %i.ikw = getelementptr i8, ptr %45, i64 %.2.idx.i.i.i.i.i.i.i.i.i2173 ; 2 uses
  %.ptr.i.i.i.i.i.i.i.i.i2175 = getelementptr i8, ptr %i.ikw, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i2174, ptr %.ptr.i.i.i.i.i.i.i.i.i2175, align 1, !tbaa !45, !noalias !698
  %i.ikx = icmp sgt i64 %.2.idx.i.i.i.i.i.i.i.i.i2173, 10
  br i1 %i.ikx, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2181, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2176

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2181:       ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2172
  %i.iky = add i64 %.2.idx.i.i.i.i.i.i.i.i.i2173, %107 ; 2 uses
  %i.ikz = add i64 %i.iky, -2
  %umin.i.i.i.i.i.i.i.i.i2182 = call i64 @llvm.umin.i64(i64 %i.ikz, i64 %i.ifx) ; 2 uses
  %i.ila = sub i64 %umin.i.i.i.i.i.i.i.i.i2182, %107
  %scevgep.i.i.i.i.i.i.i.i.i2183 = getelementptr i8, ptr %45, i64 %i.ila ; 2 uses
  %i.ilb = xor i64 %umin.i.i.i.i.i.i.i.i.i2182, -1
  %i.ilc = add i64 %i.iky, %i.ilb
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i2183, i8 48, i64 %i.ilc, i1 false), !tbaa !45, !noalias !698
  %scevgep31.i.i.i.i.i.i.i.i.i2184 = getelementptr i8, ptr %scevgep.i.i.i.i.i.i.i.i.i2183, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2176

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2176: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2181, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2172
  %i.ild = phi ptr [ %i.ikw, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i2172 ], [ %scevgep31.i.i.i.i.i.i.i.i.i2184, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i2181 ] ; 2 uses
  %i.ile = shl nsw i64 %.sext.i.i.i.i.i.i.i.i.i2167, 1
  %i.ilf = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ile
  %i.ilg = shl nsw i64 %i.ijz, 1
  %i.ilh = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ilg
  %i.ili = shl nuw nsw i64 %.zext.i.i.i.i.i.i.i.i.i2161, 1
  %i.ilj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ili ; 2 uses
  %i.ilk = getelementptr inbounds nuw i8, ptr %i.ilj, i64 1
  %i.ill = load i8, ptr %i.ilk, align 1, !tbaa !45, !noalias !698
  %i.ilm = getelementptr i8, ptr %i.ild, i64 -9
  %i.iln = load <2 x i8>, ptr %i.ilf, align 1, !tbaa !45, !noalias !698
  %i.ilo = load <2 x i8>, ptr %i.ilh, align 1, !tbaa !45, !noalias !698
  %i.ilp = shufflevector <2 x i8> %i.ilo, <2 x i8> %i.iln, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ilq = shufflevector <8 x i8> %i.ilp, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.ilr = insertelement <8 x i8> %i.ilq, i8 %i.ill, i64 0
  store <8 x i8> %i.ilr, ptr %i.ilm, align 1, !tbaa !45, !noalias !698
  %i.ils = load i8, ptr %i.ilj, align 1, !tbaa !45, !noalias !698
  %i.ilt = getelementptr i8, ptr %i.ild, i64 -10  ; 3 uses
  store i8 %i.ils, ptr %i.ilt, align 1, !tbaa !45, !noalias !698
  %i.ilu = ptrtoint ptr %i.ilt to i64
  %i.ilv = sub i64 %i.ify, %i.ilu                 ; 3 uses
  %i.ilw = load ptr, ptr %2, align 8, !tbaa !194, !noalias !698, !nonnull !98, !align !192
  %i.ilx = getelementptr inbounds nuw i8, ptr %i.ilw, i64 52
  %i.ily = load i32, ptr %i.ilx, align 4, !tbaa !47, !noalias !698
  %i.ilz = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698
  %i.ima = sext i32 %i.ily to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i2177 = call i64 @llvm.umin.i64(i64 %i.ilv, i64 %i.ima)
  %i.imb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ilz, ptr noundef nonnull %i.ilt, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i2177)
          to label %.noexc30.i2178 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc30.i2178:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2176
  %i.imc = icmp ugt i64 %i.ilv, %i.ima
  br i1 %i.imc, label %bb.ahm, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i

bb.ahm:                                           ; preds = %.noexc30.i2178
  %i.imd = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698 ; 2 uses
  %i.ime = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.imd, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc31.i2179 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc31.i2179:                                   ; preds = %bb.ahm
  %i.imf = sub nuw i64 %i.ilv, %i.ima
  %i.img = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.imd, i64 noundef %i.imf)
          to label %.noexc32.i2180 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc32.i2180:                                   ; preds = %.noexc31.i2179
  %i.imh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.img, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc32.i2180, %.noexc30.i2178
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18, !noalias !698
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133

bb.ahn:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130
  %spec.select.i.i15.i.i.i.i.i.i.i.i2131 = icmp ult i64 %i.ijw, 86400000000
  br i1 %spec.select.i.i15.i.i.i.i.i.i.i.i2131, label %bb.aho, label %.invoke131.i2132, !prof !77

bb.aho:                                           ; preds = %bb.ahn
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18, !noalias !698
  %i.imi = udiv i64 %i.ijw, 3600000000            ; 3 uses
  %i.imj = udiv i64 %i.ijw, 60000000
  %.neg.i.i.i.i16.i.i.i.i.i.i.i.i = mul nsw i64 %i.imi, -60
  %i.imk = add nsw i64 %.neg.i.i.i.i16.i.i.i.i.i.i.i.i, %i.imj ; 2 uses
  %.neg.i7.i.i.i17.i.i.i.i.i.i.i.i = mul nsw i64 %i.imi, -3600000000
  %i.iml = add nsw i64 %.neg.i7.i.i.i17.i.i.i.i.i.i.i.i, %i.ijw
  %.neg.i8.i.i.i18.i.i.i.i.i.i.i.i = mul nsw i64 %i.imk, -60000000
  %i.imm = add nsw i64 %i.iml, %.neg.i8.i.i.i18.i.i.i.i.i.i.i.i ; 2 uses
  %i.imn = sdiv i64 %i.imm, 1000000               ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i.i.i.i.i.i2134 = mul nsw i64 %i.imn, -1000000
  %i.imo = add nsw i64 %.neg.i.i.i.i.i19.i.i.i.i.i.i.i.i2134, %i.imm ; 3 uses
  %i.imp = icmp sgt i64 %i.imo, 99
  br i1 %i.imp, label %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153, label %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i2135

.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153:             ; preds = %bb.aho, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153
  %.0.idx.i35.i.i.i.i.i.i.i.i2154 = phi i64 [ %.0.add.i38.i.i.i.i.i.i.i.i2157, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153 ], [ 15, %bb.aho ] ; 2 uses
  %.08.i.i.i.i36.i.i.i.i.i.i.i.i2155 = phi i64 [ %i.imx, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153 ], [ %i.imo, %bb.aho ] ; 3 uses
  %.0.ptr.i37.i.i.i.i.i.i.i.i2156 = getelementptr inbounds i8, ptr %44, i64 %.0.idx.i35.i.i.i.i.i.i.i.i2154
  %i.imq = urem i64 %.08.i.i.i.i36.i.i.i.i.i.i.i.i2155, 100
  %i.imr = shl nuw nsw i64 %i.imq, 1
  %i.ims = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.imr ; 2 uses
  %i.imt = getelementptr inbounds nuw i8, ptr %i.ims, i64 1
  %i.imu = load i8, ptr %i.imt, align 1, !tbaa !45, !noalias !698
  %i.imv = getelementptr inbounds i8, ptr %.0.ptr.i37.i.i.i.i.i.i.i.i2156, i64 -1
  store i8 %i.imu, ptr %i.imv, align 1, !tbaa !45, !noalias !698
  %i.imw = load i8, ptr %i.ims, align 1, !tbaa !45, !noalias !698
  %.0.add.i38.i.i.i.i.i.i.i.i2157 = add nsw i64 %.0.idx.i35.i.i.i.i.i.i.i.i2154, -2 ; 3 uses
  %.ptr24.i.i.i.i.i.i.i.i.i2158 = getelementptr inbounds i8, ptr %44, i64 %.0.add.i38.i.i.i.i.i.i.i.i2157
  store i8 %i.imw, ptr %.ptr24.i.i.i.i.i.i.i.i.i2158, align 1, !tbaa !45, !noalias !698
  %i.imx = udiv i64 %.08.i.i.i.i36.i.i.i.i.i.i.i.i2155, 100 ; 2 uses
  %i.imy = icmp samesign ugt i64 %.08.i.i.i.i36.i.i.i.i.i.i.i.i2155, 9999
  br i1 %i.imy, label %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153, label %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i2135, !llvm.loop !654

._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i2135:        ; preds = %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153, %bb.aho
  %.1.idx.i21.i.i.i.i.i.i.i.i2136 = phi i64 [ 15, %bb.aho ], [ %.0.add.i38.i.i.i.i.i.i.i.i2157, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153 ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i2137 = phi i64 [ %i.imo, %bb.aho ], [ %i.imx, %.lr.ph.i.i.i.i34.i.i.i.i.i.i.i.i2153 ] ; 3 uses
  %i.imz = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i2137, 9
  br i1 %i.imz, label %bb.ahp, label %bb.ahq

bb.ahp:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i2135
  %i.ina = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i2137, 1
  %i.inb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ina ; 2 uses
  %i.inc = getelementptr inbounds nuw i8, ptr %i.inb, i64 1
  %i.ind = load i8, ptr %i.inc, align 1, !tbaa !45, !noalias !698
  %.1.add.i33.i.i.i.i.i.i.i.i2151 = add nsw i64 %.1.idx.i21.i.i.i.i.i.i.i.i2136, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i.i.i.i2152 = getelementptr inbounds i8, ptr %44, i64 %.1.add.i33.i.i.i.i.i.i.i.i2151
  store i8 %i.ind, ptr %.ptr22.i.i.i.i.i.i.i.i.i2152, align 1, !tbaa !45, !noalias !698
  %i.ine = load i8, ptr %i.inb, align 1, !tbaa !45, !noalias !698
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i2138

bb.ahq:                                           ; preds = %._crit_edge.i.i.i.i20.i.i.i.i.i.i.i.i2135
  %i.inf = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i.i.i.i.i.i2137 to i8
  %i.ing = add i8 %i.inf, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i2138

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i2138: ; preds = %bb.ahq, %bb.ahp
  %.2.idx.i24.i.i.i.i.i.i.i.i2139 = phi i64 [ %.1.add.i33.i.i.i.i.i.i.i.i2151, %bb.ahp ], [ %.1.idx.i21.i.i.i.i.i.i.i.i2136, %bb.ahq ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i.i.i.i.i.i2140 = phi i8 [ %i.ine, %bb.ahp ], [ %i.ing, %bb.ahq ]
  %i.inh = getelementptr i8, ptr %44, i64 %.2.idx.i24.i.i.i.i.i.i.i.i2139 ; 2 uses
  %.ptr.i26.i.i.i.i.i.i.i.i2141 = getelementptr i8, ptr %i.inh, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i.i.i.i.i.i2140, ptr %.ptr.i26.i.i.i.i.i.i.i.i2141, align 1, !tbaa !45, !noalias !698
  %i.ini = icmp sgt i64 %.2.idx.i24.i.i.i.i.i.i.i.i2139, 10
  br i1 %i.ini, label %.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i2147, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2142

.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i2147:     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i2138
  %i.inj = add i64 %.2.idx.i24.i.i.i.i.i.i.i.i2139, %106 ; 2 uses
  %i.ink = add i64 %i.inj, -2
  %umin.i31.i.i.i.i.i.i.i.i2148 = call i64 @llvm.umin.i64(i64 %i.ink, i64 %i.ifv) ; 2 uses
  %i.inl = sub i64 %umin.i31.i.i.i.i.i.i.i.i2148, %106
  %scevgep.i32.i.i.i.i.i.i.i.i2149 = getelementptr i8, ptr %44, i64 %i.inl ; 2 uses
  %i.inm = xor i64 %umin.i31.i.i.i.i.i.i.i.i2148, -1
  %i.inn = add i64 %i.inj, %i.inm
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i32.i.i.i.i.i.i.i.i2149, i8 48, i64 %i.inn, i1 false), !tbaa !45, !noalias !698
  %scevgep28.i.i.i.i.i.i.i.i.i2150 = getelementptr i8, ptr %scevgep.i32.i.i.i.i.i.i.i.i2149, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2142

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2142: ; preds = %.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i2147, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i2138
  %i.ino = phi ptr [ %i.inh, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i.i.i.i.i.i2138 ], [ %scevgep28.i.i.i.i.i.i.i.i.i2150, %.lr.ph.i.i.preheader.i30.i.i.i.i.i.i.i.i2147 ] ; 2 uses
  %i.inp = shl nsw i64 %i.imn, 1
  %i.inq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.inp
  %i.inr = shl nsw i64 %i.imk, 1
  %i.ins = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.inr
  %i.int = shl nuw nsw i64 %i.imi, 1
  %i.inu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.int ; 2 uses
  %i.inv = getelementptr inbounds nuw i8, ptr %i.inu, i64 1
  %i.inw = load i8, ptr %i.inv, align 1, !tbaa !45, !noalias !698
  %i.inx = getelementptr i8, ptr %i.ino, i64 -9
  %i.iny = load <2 x i8>, ptr %i.inq, align 1, !tbaa !45, !noalias !698
  %i.inz = load <2 x i8>, ptr %i.ins, align 1, !tbaa !45, !noalias !698
  %i.ioa = shufflevector <2 x i8> %i.inz, <2 x i8> %i.iny, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.iob = shufflevector <8 x i8> %i.ioa, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.ioc = insertelement <8 x i8> %i.iob, i8 %i.inw, i64 0
  store <8 x i8> %i.ioc, ptr %i.inx, align 1, !tbaa !45, !noalias !698
  %i.iod = load i8, ptr %i.inu, align 1, !tbaa !45, !noalias !698
  %i.ioe = getelementptr i8, ptr %i.ino, i64 -10  ; 3 uses
  store i8 %i.iod, ptr %i.ioe, align 1, !tbaa !45, !noalias !698
  %i.iof = ptrtoint ptr %i.ioe to i64
  %i.iog = sub i64 %i.ifw, %i.iof                 ; 3 uses
  %i.ioh = load ptr, ptr %2, align 8, !tbaa !194, !noalias !698, !nonnull !98, !align !192
  %i.ioi = getelementptr inbounds nuw i8, ptr %i.ioh, i64 52
  %i.ioj = load i32, ptr %i.ioi, align 4, !tbaa !47, !noalias !698
  %i.iok = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698
  %i.iol = sext i32 %i.ioj to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i28.i.i.i.i.i.i.i.i2143 = call i64 @llvm.umin.i64(i64 %i.iog, i64 %i.iol)
  %i.iom = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iok, ptr noundef nonnull %i.ioe, i64 noundef %.sroa.speculated.i.i.i.i.i28.i.i.i.i.i.i.i.i2143)
          to label %.noexc35.i2144 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc35.i2144:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2142
  %i.ion = icmp ugt i64 %i.iog, %i.iol
  br i1 %i.ion, label %bb.ahr, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i

bb.ahr:                                           ; preds = %.noexc35.i2144
  %i.ioo = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698 ; 2 uses
  %i.iop = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ioo, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc36.i2145 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc36.i2145:                                   ; preds = %bb.ahr
  %i.ioq = sub nuw i64 %i.iog, %i.iol
  %i.ior = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ioo, i64 noundef %i.ioq)
          to label %.noexc37.i2146 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc37.i2146:                                   ; preds = %.noexc36.i2145
  %i.ios = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ior, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i: ; preds = %.noexc37.i2146, %.noexc35.i2144
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18, !noalias !698
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133

bb.ahs:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130
  %spec.select.i.i39.i.i.i.i.i.i.i.i = icmp ult i64 %i.ijw, 86400000000000
  br i1 %spec.select.i.i39.i.i.i.i.i.i.i.i, label %bb.aht, label %.invoke131.i2132, !prof !77

bb.aht:                                           ; preds = %bb.ahs
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18, !noalias !698
  %i.iot = udiv i64 %i.ijw, 3600000000000         ; 3 uses
  %i.iou = udiv i64 %i.ijw, 60000000000
  %.neg.i.i.i.i41.i.i.i.i.i.i.i.i = mul nsw i64 %i.iot, -60
  %i.iov = add nsw i64 %.neg.i.i.i.i41.i.i.i.i.i.i.i.i, %i.iou ; 2 uses
  %.neg.i7.i.i.i42.i.i.i.i.i.i.i.i = mul nsw i64 %i.iot, -3600000000000
  %i.iow = add nsw i64 %.neg.i7.i.i.i42.i.i.i.i.i.i.i.i, %i.ijw
  %.neg.i8.i.i.i43.i.i.i.i.i.i.i.i = mul nsw i64 %i.iov, -60000000000
  %i.iox = add nsw i64 %i.iow, %.neg.i8.i.i.i43.i.i.i.i.i.i.i.i ; 2 uses
  %i.ioy = sdiv i64 %i.iox, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i44.i.i.i.i.i.i.i.i = mul nsw i64 %i.ioy, -1000000000
  %i.ioz = add nsw i64 %.neg.i.i.i.i.i44.i.i.i.i.i.i.i.i, %i.iox ; 3 uses
  %i.ipa = icmp sgt i64 %i.ioz, 99
  br i1 %i.ipa, label %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i45.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i:                 ; preds = %bb.aht, %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i
  %.0.idx.i62.i.i.i.i.i.i.i.i = phi i64 [ %.0.add.i65.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i ], [ 18, %bb.aht ] ; 2 uses
  %.08.i.i.i.i63.i.i.i.i.i.i.i.i = phi i64 [ %i.ipi, %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i ], [ %i.ioz, %bb.aht ] ; 3 uses
  %.0.ptr.i64.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %43, i64 %.0.idx.i62.i.i.i.i.i.i.i.i
  %i.ipb = urem i64 %.08.i.i.i.i63.i.i.i.i.i.i.i.i, 100
  %i.ipc = shl nuw nsw i64 %i.ipb, 1
  %i.ipd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ipc ; 2 uses
  %i.ipe = getelementptr inbounds nuw i8, ptr %i.ipd, i64 1
  %i.ipf = load i8, ptr %i.ipe, align 1, !tbaa !45, !noalias !698
  %i.ipg = getelementptr inbounds i8, ptr %.0.ptr.i64.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.ipf, ptr %i.ipg, align 1, !tbaa !45, !noalias !698
  %i.iph = load i8, ptr %i.ipd, align 1, !tbaa !45, !noalias !698
  %.0.add.i65.i.i.i.i.i.i.i.i = add nsw i64 %.0.idx.i62.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i66.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %43, i64 %.0.add.i65.i.i.i.i.i.i.i.i
  store i8 %i.iph, ptr %.ptr24.i66.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !698
  %i.ipi = udiv i64 %.08.i.i.i.i63.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.ipj = icmp samesign ugt i64 %.08.i.i.i.i63.i.i.i.i.i.i.i.i, 9999
  br i1 %i.ipj, label %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i45.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i45.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i, %bb.aht
  %.1.idx.i46.i.i.i.i.i.i.i.i = phi i64 [ 18, %bb.aht ], [ %.0.add.i65.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i47.i.i.i.i.i.i.i.i = phi i64 [ %i.ioz, %bb.aht ], [ %i.ipi, %.lr.ph.i.i.i.i61.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ipk = icmp sgt i64 %.0.lcssa.i.i.i.i47.i.i.i.i.i.i.i.i, 9
  br i1 %i.ipk, label %bb.ahu, label %bb.ahv

bb.ahu:                                           ; preds = %._crit_edge.i.i.i.i45.i.i.i.i.i.i.i.i
  %i.ipl = shl nuw nsw i64 %.0.lcssa.i.i.i.i47.i.i.i.i.i.i.i.i, 1
  %i.ipm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ipl ; 2 uses
  %i.ipn = getelementptr inbounds nuw i8, ptr %i.ipm, i64 1
  %i.ipo = load i8, ptr %i.ipn, align 1, !tbaa !45, !noalias !698
  %.1.add.i59.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i46.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i60.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %43, i64 %.1.add.i59.i.i.i.i.i.i.i.i
  store i8 %i.ipo, ptr %.ptr22.i60.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !698
  %i.ipp = load i8, ptr %i.ipm, align 1, !tbaa !45, !noalias !698
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i48.i.i.i.i.i.i.i.i

bb.ahv:                                           ; preds = %._crit_edge.i.i.i.i45.i.i.i.i.i.i.i.i
  %i.ipq = trunc i64 %.0.lcssa.i.i.i.i47.i.i.i.i.i.i.i.i to i8
  %i.ipr = add i8 %i.ipq, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i48.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i48.i.i.i.i.i.i.i.i: ; preds = %bb.ahv, %bb.ahu
  %.2.idx.i49.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i59.i.i.i.i.i.i.i.i, %bb.ahu ], [ %.1.idx.i46.i.i.i.i.i.i.i.i, %bb.ahv ] ; 3 uses
  %.sink.i.i.i.i50.i.i.i.i.i.i.i.i = phi i8 [ %i.ipp, %bb.ahu ], [ %i.ipr, %bb.ahv ]
  %i.ips = getelementptr i8, ptr %43, i64 %.2.idx.i49.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i51.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ips, i64 -1
  store i8 %.sink.i.i.i.i50.i.i.i.i.i.i.i.i, ptr %.ptr.i51.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !698
  %i.ipt = icmp sgt i64 %.2.idx.i49.i.i.i.i.i.i.i.i, 10
  br i1 %i.ipt, label %.lr.ph.i.i.preheader.i55.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2193

.lr.ph.i.i.preheader.i55.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i48.i.i.i.i.i.i.i.i
  %i.ipu = add i64 %.2.idx.i49.i.i.i.i.i.i.i.i, %108 ; 2 uses
  %i.ipv = add i64 %i.ipu, -2
  %umin.i56.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ipv, i64 %i.ifz) ; 2 uses
  %i.ipw = sub i64 %umin.i56.i.i.i.i.i.i.i.i, %108
  %scevgep.i57.i.i.i.i.i.i.i.i = getelementptr i8, ptr %43, i64 %i.ipw ; 2 uses
  %i.ipx = xor i64 %umin.i56.i.i.i.i.i.i.i.i, -1
  %i.ipy = add i64 %i.ipu, %i.ipx
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i57.i.i.i.i.i.i.i.i, i8 48, i64 %i.ipy, i1 false), !tbaa !45, !noalias !698
  %scevgep28.i58.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i57.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2193

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2193: ; preds = %.lr.ph.i.i.preheader.i55.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i48.i.i.i.i.i.i.i.i
  %i.ipz = phi ptr [ %i.ips, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i48.i.i.i.i.i.i.i.i ], [ %scevgep28.i58.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i55.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.iqa = shl nsw i64 %i.ioy, 1
  %i.iqb = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.iqa
  %i.iqc = shl nsw i64 %i.iov, 1
  %i.iqd = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.iqc
  %i.iqe = shl nuw nsw i64 %i.iot, 1
  %i.iqf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.iqe ; 2 uses
  %i.iqg = getelementptr inbounds nuw i8, ptr %i.iqf, i64 1
  %i.iqh = load i8, ptr %i.iqg, align 1, !tbaa !45, !noalias !698
  %i.iqi = getelementptr i8, ptr %i.ipz, i64 -9
  %i.iqj = load <2 x i8>, ptr %i.iqb, align 1, !tbaa !45, !noalias !698
  %i.iqk = load <2 x i8>, ptr %i.iqd, align 1, !tbaa !45, !noalias !698
  %i.iql = shufflevector <2 x i8> %i.iqk, <2 x i8> %i.iqj, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.iqm = shufflevector <8 x i8> %i.iql, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.iqn = insertelement <8 x i8> %i.iqm, i8 %i.iqh, i64 0
  store <8 x i8> %i.iqn, ptr %i.iqi, align 1, !tbaa !45, !noalias !698
  %i.iqo = load i8, ptr %i.iqf, align 1, !tbaa !45, !noalias !698
  %i.iqp = getelementptr i8, ptr %i.ipz, i64 -10  ; 3 uses
  store i8 %i.iqo, ptr %i.iqp, align 1, !tbaa !45, !noalias !698
  %i.iqq = ptrtoint ptr %i.iqp to i64
  %i.iqr = sub i64 %i.iga, %i.iqq                 ; 3 uses
  %i.iqs = load ptr, ptr %2, align 8, !tbaa !194, !noalias !698, !nonnull !98, !align !192
  %i.iqt = getelementptr inbounds nuw i8, ptr %i.iqs, i64 52
  %i.iqu = load i32, ptr %i.iqt, align 4, !tbaa !47, !noalias !698
  %i.iqv = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698
  %i.iqw = sext i32 %i.iqu to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i53.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.iqr, i64 %i.iqw)
  %i.iqx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqv, ptr noundef nonnull %i.iqp, i64 noundef %.sroa.speculated.i.i.i.i.i53.i.i.i.i.i.i.i.i)
          to label %.noexc40.i2194 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc40.i2194:                                   ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2193
  %i.iqy = icmp ugt i64 %i.iqr, %i.iqw
  br i1 %i.iqy, label %bb.ahw, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i54.i.i.i.i.i.i.i.i

bb.ahw:                                           ; preds = %.noexc40.i2194
  %i.iqz = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698 ; 2 uses
  %i.ira = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqz, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc41.i2195 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc41.i2195:                                   ; preds = %bb.ahw
  %i.irb = sub nuw i64 %i.iqr, %i.iqw
  %i.irc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iqz, i64 noundef %i.irb)
          to label %.noexc42.i2196 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc42.i2196:                                   ; preds = %.noexc41.i2195
  %i.ird = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.irc, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i54.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i54.i.i.i.i.i.i.i.i: ; preds = %.noexc42.i2196, %.noexc40.i2194
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18, !noalias !698
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133

bb.ahx:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2130
  %spec.select.i.i67.i.i.i.i.i.i.i.i = icmp ult i64 %i.ijw, 86400
  br i1 %spec.select.i.i67.i.i.i.i.i.i.i.i, label %bb.ahy, label %.invoke131.i2132, !prof !77

bb.ahy:                                           ; preds = %bb.ahx
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18, !noalias !698
  %.lhs.trunc.i68.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %i.ijw to i32 ; 2 uses
  %i.ire = udiv i32 %.lhs.trunc.i68.i.i.i.i.i.i.i.i, 3600
  %.zext.i69.i.i.i.i.i.i.i.i = zext nneg i32 %i.ire to i64 ; 3 uses
  %i.irf = udiv i32 %.lhs.trunc.i68.i.i.i.i.i.i.i.i, 60
  %.zext16.i.i.i.i.i.i.i.i.i2197 = zext nneg i32 %i.irf to i64
  %.neg.i.i.i.i70.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i69.i.i.i.i.i.i.i.i, -60
  %i.irg = add nsw i64 %.neg.i.i.i.i70.i.i.i.i.i.i.i.i, %.zext16.i.i.i.i.i.i.i.i.i2197 ; 2 uses
  %.neg.i7.i.i.i71.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i69.i.i.i.i.i.i.i.i, -3600
  %i.irh = add nsw i64 %.neg.i7.i.i.i71.i.i.i.i.i.i.i.i, %i.ijw
  %.neg.i8.i.i.i72.i.i.i.i.i.i.i.i = mul nsw i64 %i.irg, -60
  %i.iri = add nsw i64 %i.irh, %.neg.i8.i.i.i72.i.i.i.i.i.i.i.i
  %i.irj = shl nsw i64 %i.iri, 1
  %i.irk = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.irj ; 2 uses
  %i.irl = getelementptr inbounds nuw i8, ptr %i.irk, i64 1
  %i.irm = load i8, ptr %i.irl, align 1, !tbaa !45, !noalias !698
  store i8 %i.irm, ptr %i.igb, align 1, !tbaa !45, !noalias !698
  %i.irn = load i8, ptr %i.irk, align 1, !tbaa !45, !noalias !698
  store i8 %i.irn, ptr %i.igc, align 1, !tbaa !45, !noalias !698
  %i.iro = shl nsw i64 %i.irg, 1
  %i.irp = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.iro
  %i.irq = load <2 x i8>, ptr %i.irp, align 1, !tbaa !45, !noalias !698
  %i.irr = shufflevector <2 x i8> %i.irq, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.irs = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.irr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.irs, ptr %i.igd, align 1, !tbaa !45, !noalias !698
  %i.irt = shl nuw nsw i64 %.zext.i69.i.i.i.i.i.i.i.i, 1
  %i.iru = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.irt ; 2 uses
  %i.irv = getelementptr inbounds nuw i8, ptr %i.iru, i64 1
  %i.irw = load i8, ptr %i.irv, align 1, !tbaa !45, !noalias !698
  store i8 %i.irw, ptr %i.ige, align 1, !tbaa !45, !noalias !698
  %i.irx = load i8, ptr %i.iru, align 1, !tbaa !45, !noalias !698
  store i8 %i.irx, ptr %i.igf, align 1, !tbaa !45, !noalias !698
  %i.iry = load ptr, ptr %2, align 8, !tbaa !194, !noalias !698, !nonnull !98, !align !192
  %i.irz = getelementptr inbounds nuw i8, ptr %i.iry, i64 52
  %i.isa = load i32, ptr %i.irz, align 4, !tbaa !47, !noalias !698 ; 2 uses
  %i.isb = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698
  %i.isc = sext i32 %i.isa to i64                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i74.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.isc, i64 8)
  %i.isd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.isb, ptr noundef nonnull %i.igf, i64 noundef %.sroa.speculated.i.i.i.i.i74.i.i.i.i.i.i.i.i)
          to label %.noexc45.i2198 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc45.i2198:                                   ; preds = %bb.ahy
  %i.ise = icmp ult i32 %i.isa, 8
  br i1 %i.ise, label %bb.ahz, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i75.i.i.i.i.i.i.i.i

bb.ahz:                                           ; preds = %.noexc45.i2198
  %i.isf = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !698 ; 2 uses
  %i.isg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.isf, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc46.i2199 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

.noexc46.i2199:                                   ; preds = %bb.ahz
  %i.ish = sub nuw nsw i64 8, %i.isc
  %i.isi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.isf, i64 noundef %i.ish)
          to label %.noexc47.i2200 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680

.noexc47.i2200:                                   ; preds = %.noexc46.i2199
  %i.isj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.isi, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i75.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i75.i.i.i.i.i.i.i.i: ; preds = %.noexc47.i2200, %.noexc45.i2198
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18, !noalias !698
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133

_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133:        ; preds = %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i75.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i54.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i29.i.i.i.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_10Time64TypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i, %.invoke131.i2132
  br i1 %i.igk, label %.critedge.i.i.i.i.i2106, label %.invoke.i2105

.critedge.i.i.i.i.i2106:                          ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133, %.invoke.i2105, %.noexc26.i2104, %.noexc21.i2213
  %.1.i.i.i.i.i2107 = phi i64 [ %i.ihn, %.noexc21.i2213 ], [ %.055.i.i.i.i.i2096, %.noexc26.i2104 ], [ %.055.i.i.i.i.i2096, %.invoke.i2105 ], [ %.055.i.i.i.i.i2096, %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2133 ]
  %.val.i.i.i.i.i2108 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !693
  %i.isk = getelementptr i8, ptr %.val.i.i.i.i.i2108, i64 48
  %.val.val.i.i.i.i.i2109 = load i8, ptr %i.isk, align 8, !tbaa !126, !range !97, !noalias !693, !noundef !98
  %i.isl = trunc nuw i8 %.val.val.i.i.i.i.i2109 to i1
  br i1 %i.isl, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111, label %bb.aia

bb.aia:                                           ; preds = %.critedge.i.i.i.i.i2106
  %.val40.i.i.i.i.i2110 = load ptr, ptr %i.iej, align 8, !noalias !693
  %i.ism = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val40.i.i.i.i.i2110, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111 unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102, !noalias !680 ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111: ; preds = %bb.aia, %.critedge.i.i.i.i.i2106
  %i.isn = add nsw i64 %.1.i.i.i.i.i2107, 1       ; 2 uses
  %i.iso = load ptr, ptr %i.f, align 8, !tbaa !61, !noalias !693 ; 2 uses
  %i.isp = getelementptr inbounds nuw i8, ptr %i.iso, i64 16
  %i.isq = load i64, ptr %i.isp, align 8, !tbaa !210, !noalias !693 ; 3 uses
  %.not37.i.i.i.i.i2112 = icmp slt i64 %i.isn, %i.isq
  br i1 %.not37.i.i.i.i.i2112, label %bb.ags, label %_ZN5arrow6StatusD2Ev.exit54.i2113, !llvm.loop !701

.loopexit66.i2125:                                ; preds = %.lr.ph.i.i41.i.i.i.i.i2123
  %lpad.loopexit68.i2126 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

.loopexit.split-lp67.loopexit.i2203:              ; preds = %.lr.ph.i.i44.i.i.i.i.i2201
  %lpad.loopexit71.i2204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

.loopexit.split-lp67.loopexit.split-lp.loopexit.i2216: ; preds = %.lr.ph.i.i.i.i.i.i.i2214
  %lpad.loopexit74.i2217 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp.i2102: ; preds = %bb.aia, %.noexc47.i2200, %.noexc46.i2199, %bb.ahz, %bb.ahy, %.noexc42.i2196, %.noexc41.i2195, %bb.ahw, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2193, %.noexc37.i2146, %.noexc36.i2145, %bb.ahr, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2142, %.noexc32.i2180, %.noexc31.i2179, %bb.ahm, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i2176, %.invoke131.i2132, %.invoke.i2105, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i2101, %_ZNK5arrow5Array6IsNullEl.exit.i.i.i.i.i2208, %bb.ahc, %bb.ahb, %bb.agx, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit.i.i.i.i.i2211
  %lpad.loopexit.split-lp75.i2103 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i2072

_ZN5arrow6StatusD2Ev.exit54.i2113:                ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit.i.i.i.i.i2111
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18, !noalias !688
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !680
  %.pre2.i.pre.i2114 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !680 ; 4 uses
  %i.isr = icmp sgt i64 %i.isq, 0
  br i1 %i.isr, label %bb.aib, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i2083

bb.aib:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit54.i2113
  %i.iss = getelementptr inbounds nuw i8, ptr %.pre2.i.pre.i2114, i64 4
  %i.ist = load i32, ptr %i.iss, align 4, !tbaa !33, !noalias !680
  %i.isu = load i32, ptr %i.ifs, align 8, !tbaa !57, !noalias !680
  %i.isv = sub nsw i32 %i.isu, %i.ist             ; 2 uses
  store i32 %i.isv, ptr %i.ifs, align 8, !tbaa !57, !noalias !680
  %i.isw = getelementptr inbounds nuw i8, ptr %.pre2.i.pre.i2114, i64 48
  %i.isx = load i8, ptr %i.isw, align 8, !tbaa !126, !range !97, !noalias !680, !noundef !98
  %i.isy = trunc nuw i8 %i.isx to i1
  %i.isz = icmp slt i32 %i.isv, 1
  %or.cond.not.i.i2115 = select i1 %i.isy, i1 true, i1 %i.isz
  br i1 %or.cond.not.i.i2115, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.i55.i2083, label %.lr.ph.i.i56.i2116

.lr.ph.i.i56.i2116:                               ; preds = %bb.aib, %.noexc60.i2120
  %.02.i.i57.i2117 = phi i32 [ %i.itc, %.noexc60.i2120 ], [ 0, %bb.aib ]
  %i.ita = load ptr, ptr %i.iej, align 8, !tbaa !60, !noalias !680
  %i.itb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ita, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc60.i2120 unwind label %.loopexit.i2118, !noalias !680 ; 0 uses

.noexc60.i2120:                                   ; preds = %.lr.ph.i.i56.i2116
  %i.itc = add nuw nsw i32 %.02.i.i57.i2117, 1    ; 2 uses
end_hunk_0
