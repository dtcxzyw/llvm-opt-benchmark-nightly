Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_congruence?download=true
inline.NumInlined: 6068
inline.NumDeleted: 1716
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN7CaDiCaL7Closure16extract_binariesEv:bb.a
  %i.ed = sext i32 %i.ec to i64
  %.not100 = icmp ugt i64 %i.dz, %i.ed
  br i1 %.not100, label %bb.au, label %bb.as

bb.w:                                             ; preds = %.lr.ph162, %_ZNSt6vectorIlSaIlEE5clearEv.exit115
  %.087160 = phi i64 [ 0, %.lr.ph162 ], [ %i.gu, %_ZNSt6vectorIlSaIlEE5clearEv.exit115 ] ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2280
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !309
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.087160
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !300 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = and i32 %i.ek, 33280
  %or.cond = icmp eq i32 %i.el, 0
  br i1 %or.cond, label %bb.x, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !153
  %.not103 = icmp eq i32 %i.en, 3
  br i1 %.not103, label %bb.y, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !153 ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !153 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !153 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 472
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !310 ; 3 uses
  %i.ew = sext i32 %i.ep to i64
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !143
  %.not104 = icmp eq i8 %i.ey, 0
  br i1 %.not104, label %bb.z, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.z:                                             ; preds = %bb.y
  %i.ez = sext i32 %i.er to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ev, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !143
  %.not105 = icmp eq i8 %i.fb, 0
  br i1 %.not105, label %bb.aa, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.aa:                                            ; preds = %bb.z
  %i.fc = sext i32 %i.et to i64
  %i.fd = getelementptr inbounds i8, ptr %i.ev, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !143
  %.not106 = icmp eq i8 %i.fe, 0
  br i1 %.not106, label %bb.ab, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.ab:                                            ; preds = %bb.aa
  %i.ff = sub nsw i32 0, %i.ep                    ; 2 uses
  %i.fg = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.ff, i32 noundef %i.er)
  br i1 %i.fg, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.ff, i32 noundef %i.et)
  br i1 %i.fh, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = sub nsw i32 0, %i.er                    ; 2 uses
  %i.fj = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.fi, i32 noundef %i.ep)
  br i1 %i.fj, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.fi, i32 noundef %i.et)
  br i1 %i.fk, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = sub nsw i32 0, %i.et                    ; 2 uses
  %i.fm = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.fl, i32 noundef %i.ep)
  br i1 %i.fm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.fl, i32 noundef %i.er)
  br i1 %i.fn, label %bb.ah, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad, %bb.ae, %bb.ab, %bb.ac
  %.086 = phi i32 [ %i.ep, %bb.ad ], [ %i.er, %bb.ab ], [ %i.er, %bb.ac ], [ %i.ep, %bb.ae ], [ %i.ep, %bb.ag ], [ %i.ep, %bb.af ] ; 2 uses
  %.085 = phi i32 [ %i.et, %bb.ad ], [ %i.et, %bb.ab ], [ %i.et, %bb.ac ], [ %i.et, %bb.ae ], [ %i.er, %bb.ag ], [ %i.er, %bb.af ] ; 2 uses
  %i.fo = call noundef zeroext i1 @_ZNK7CaDiCaL7Closure11find_binaryEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %.086, i32 noundef %.085)
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 344
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !289, !range !290, !noundef !291
  %i.fs = trunc nuw i8 %i.fr to i1                ; 2 uses
  br i1 %i.fo, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fs, label %bb.aj, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ft = load ptr, ptr %i.dm, align 8, !tbaa !292 ; 4 uses
  %i.fu = load ptr, ptr %i.dn, align 8, !tbaa !293
  %.not.i = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load i64, ptr %i.ei, align 8, !tbaa !144
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !144
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fw, ptr %i.dm, align 8, !tbaa !292
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.al:                                            ; preds = %bb.aj
  %i.fx = load ptr, ptr %i.dl, align 8, !tbaa !294 ; 4 uses
  %i.fy = ptrtoint ptr %i.ft to i64
  %i.fz = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 5 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.am, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 1152921504606846975)
  %i.gg = select i1 %i.ge, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #23 ; 4 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %i.ga ; 2 uses
  %i.gk = load i64, ptr %i.ei, align 8, !tbaa !144
  store i64 %i.gk, ptr %i.gj, align 8, !tbaa !144
  %i.gl = icmp sgt i64 %i.ga, 0
  br i1 %i.gl, label %bb.an, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.an:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr align 8 %i.fx, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.an, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.gn = load ptr, ptr %i.dn, align 8, !tbaa !293
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gp) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.gi, ptr %i.dl, align 8, !tbaa !294
  store ptr %i.gm, ptr %i.dm, align 8, !tbaa !292
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.gq, ptr %i.dn, align 8, !tbaa !293
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.ak, %bb.ai
  %i.gr = call noundef ptr @_ZN7CaDiCaL7Closure17add_binary_clauseEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %.086, i32 noundef %.085) ; 0 uses
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.ap:                                            ; preds = %bb.ah
  br i1 %i.fs, label %bb.aq, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

bb.aq:                                            ; preds = %bb.ap
  %i.gs = load ptr, ptr %i.dl, align 8, !tbaa !294 ; 2 uses
  %i.gt = load ptr, ptr %i.dm, align 8, !tbaa !292
  %.not.i.i114 = icmp eq ptr %i.gt, %i.gs
  br i1 %.not.i.i114, label %_ZNSt6vectorIlSaIlEE5clearEv.exit115, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.gs, ptr %i.dm, align 8, !tbaa !292
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit115

_ZNSt6vectorIlSaIlEE5clearEv.exit115:             ; preds = %bb.ar, %bb.aq, %bb.y, %bb.z, %bb.aa, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %bb.ap, %bb.ag, %bb.x, %bb.w
  %i.gu = add nuw i64 %.087160, 1                 ; 2 uses
  %exitcond172.not = icmp eq i64 %i.gu, %i.dk
  br i1 %exitcond172.not, label %._crit_edge163, label %bb.w, !llvm.loop !444

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit
  %.not.i.i116 = icmp eq ptr %i.dv, %i.du
  br i1 %.not.i.i116, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.gw = shl nuw nsw i64 %i.gv, 1
  %i.gx = xor i64 %i.gw, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_20compact_binary_orderEEEEvT_SD_T0_T1_(ptr %i.dv, ptr %i.du, i64 noundef %i.gx, ptr nonnull %i.ea)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_20compact_binary_orderEEEEvT_SD_T0_(ptr %i.dv, ptr %i.du, ptr nonnull %i.ea)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117

bb.au:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit
  call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_13CompactBinaryESt6vectorIS3_SaIS3_EEEENS_19compact_binary_rankEEEvT_SA_T0_(ptr %i.dv, ptr %i.du, ptr nonnull %i.ea)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117: ; preds = %bb.at, %bb.as, %bb.au
  %i.gy = load ptr, ptr %i.af, align 8, !tbaa !301 ; 2 uses
  %i.gz = load ptr, ptr %i.ae, align 8, !tbaa !303 ; 2 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = sdiv exact i64 %i.hc, 24                ; 3 uses
  %i.he = icmp ugt i64 %i.hd, 1
  br i1 %i.he, label %.lr.ph167, label %._crit_edge168.thread

._crit_edge168:                                   ; preds = %bb.bc
  %.pre177 = load ptr, ptr %i.af, align 8, !tbaa !301 ; 2 uses
  %.pre178 = load ptr, ptr %i.ae, align 8, !tbaa !303 ; 2 uses
  %.pre181.a = ptrtoint ptr %.pre177 to i64
  %.pre182 = ptrtoint ptr %.pre178 to i64
  %.pre184 = sub i64 %.pre181.a, %.pre182
  %.pre186 = sdiv exact i64 %.pre184, 24          ; 3 uses
  %i.hf = icmp ugt i64 %.1, %.pre186
  br i1 %i.hf, label %bb.av, label %._crit_edge168.thread

bb.av:                                            ; preds = %._crit_edge168
  %i.hg = sub nuw i64 %.1, %.pre186
  call void @_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.hg)
  %.pre179 = load ptr, ptr %i.ae, align 8, !tbaa !303
  %.pre180 = load ptr, ptr %i.af, align 8, !tbaa !301
  br label %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit

._crit_edge168.thread:                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117, %._crit_edge168
  %.084.lcssa224 = phi i64 [ %.1, %._crit_edge168 ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117 ] ; 2 uses
  %i.hh = phi ptr [ %.pre177, %._crit_edge168 ], [ %i.gy, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117 ] ; 3 uses
  %i.hi = phi ptr [ %.pre178, %._crit_edge168 ], [ %i.gz, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117 ] ; 4 uses
  %.pre-phi187223 = phi i64 [ %.pre186, %._crit_edge168 ], [ %i.hd, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117 ]
  %i.hj = icmp ult i64 %.084.lcssa224, %.pre-phi187223
  br i1 %i.hj, label %bb.aw, label %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit

bb.aw:                                            ; preds = %._crit_edge168.thread
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.084.lcssa224 ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.hh, %i.hk
  br i1 %.not.i.i118, label %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.hk, ptr %i.af, align 8, !tbaa !301
  br label %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit: ; preds = %bb.av, %._crit_edge168.thread, %bb.aw, %bb.ax
  %i.hl = phi ptr [ %.pre180, %bb.av ], [ %i.hh, %._crit_edge168.thread ], [ %i.hh, %bb.aw ], [ %i.hk, %bb.ax ]
  %i.hm = phi ptr [ %.pre179, %bb.av ], [ %i.hi, %._crit_edge168.thread ], [ %i.hi, %bb.aw ], [ %i.hi, %bb.ax ] ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.hl, %i.hm
  br i1 %.not.i.i119, label %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE5clearEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit
  store ptr %i.hm, ptr %i.af, align 8, !tbaa !301
  br label %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE5clearEv.exit

.lr.ph167:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117, %bb.bc
  %.0166 = phi i64 [ %i.ie, %bb.bc ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117 ] ; 2 uses
  %.084165 = phi i64 [ %.1, %bb.bc ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL13CompactBinaryESt6vectorIS3_SaIS3_EEEENS2_20compact_binary_orderEEvT_SA_T0_.exit117 ] ; 3 uses
  %i.hn = load ptr, ptr %i.ae, align 8, !tbaa !303 ; 3 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %.084165 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !158
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %.0166 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !158
  %i.hu = icmp eq i32 %i.hq, %i.ht
  br i1 %i.hu, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.lr.ph167
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 20
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !159
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !159
  %i.hz = icmp eq i32 %i.hw, %i.hy
  br i1 %i.hz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ia = load ptr, ptr %i.ho, align 8, !tbaa !447
  %i.ib = load ptr, ptr %i.hr, align 8, !tbaa !447
  call void @_ZN7CaDiCaL7Closure14subsume_clauseEPNS_6ClauseES2_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.ia, ptr noundef %i.ib)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az, %.lr.ph167
  %i.ic = add i64 %.084165, 1                     ; 2 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 24, i1 false), !tbaa.struct !304
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.1 = phi i64 [ %.084165, %bb.ba ], [ %i.ic, %bb.bb ] ; 4 uses
  %i.ie = add nuw i64 %.0166, 1                   ; 2 uses
  %exitcond173.not = icmp eq i64 %i.ie, %i.hd
  br i1 %exitcond173.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !445

_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE5clearEv.exit: ; preds = %bb.ay, %_ZNSt6vectorIN7CaDiCaL13CompactBinaryESaIS1_EE6resizeEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_13CompactBinaryESt6vectorIS3_SaIS3_EEEENS_19compact_binary_rankEEEvT_SA_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 10 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = sdiv exact i64 %i.d, 24                  ; 8 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = icmp ugt i64 %i.e, 384307168202282325
  %.not114122 = icmp eq ptr %1, %0
  br label %bb.d

bb.c:                                             ; preds = %.loopexit116
  %i.h = icmp eq ptr %.sroa.0102.2, %.sroa.0106.3
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %xtraiter179 = and i64 %i.e, 1
  %unroll_iter183 = and i64 %i.e, -2
  br label %.preheader

bb.d:                                             ; preds = %bb.b, %.loopexit116
  %.059151 = phi i1 [ false, %bb.b ], [ %.3, %.loopexit116 ] ; 5 uses
  %.062150 = phi i64 [ 0, %bb.b ], [ %.365, %.loopexit116 ] ; 5 uses
  %.070149 = phi i64 [ 0, %bb.b ], [ %i.dr, %.loopexit116 ] ; 8 uses
  %.071148 = phi i64 [ 255, %bb.b ], [ %.172, %.loopexit116 ] ; 2 uses
  %.073147 = phi i64 [ 0, %bb.b ], [ %.174, %.loopexit116 ] ; 3 uses
  %.075146 = phi i1 [ false, %bb.b ], [ true, %.loopexit116 ] ; 4 uses
  %.079144 = phi i64 [ 255, %bb.b ], [ %i.ds, %.loopexit116 ] ; 3 uses
  %.080143 = phi i64 [ -1, %bb.b ], [ %.383, %.loopexit116 ] ; 5 uses
  %.sroa.13.0142 = phi ptr [ null, %bb.b ], [ %.sroa.13.3, %.loopexit116 ] ; 9 uses
  %.sroa.8.0141 = phi ptr [ null, %bb.b ], [ %.sroa.8.3, %.loopexit116 ] ; 13 uses
  %.sroa.095.0140 = phi ptr [ null, %bb.b ], [ %.sroa.095.3, %.loopexit116 ] ; 17 uses
  %.sroa.0102.0139 = phi ptr [ %0, %bb.b ], [ %.sroa.0102.2, %.loopexit116 ] ; 8 uses
  %.sroa.0106.0138 = phi ptr [ %1, %bb.b ], [ %.sroa.0106.3, %.loopexit116 ] ; 5 uses
  br i1 %.075146, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = xor i64 %.062150, %.080143
  %i.j = and i64 %i.i, %.079144
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit116, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.073147
  %i.m = sub nsw i64 %.071148, %.073147
  %i.n = shl nsw i64 %i.m, 3
  %i.o = add nsw i64 %i.n, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds i8, ptr %.sroa.0102.0139, i64 %i.d ; 2 uses
  br i1 %.not114122, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = trunc nuw i8 %.169 to i1                 ; 2 uses
  %i.r = lshr i64 %.282, %.070149
  %i.s = and i64 %i.r, 255                        ; 8 uses
  %i.t = lshr i64 %.264, %.070149
  %i.u = and i64 %i.t, 255                        ; 6 uses
  br i1 %.075146, label %bb.h, label %bb.g

._crit_edge.thread:                               ; preds = %bb.f
  %i.v = lshr i64 %.080143, %.070149
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %.062150, %.070149
  %i.y = and i64 %i.x, 255
  br label %.loopexit116

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.163127 = phi i64 [ %.264, %.lr.ph ], [ %.062150, %bb.f ]
  %.066126 = phi i64 [ %.167, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %.068125 = phi i8 [ %.169, %.lr.ph ], [ 1, %bb.f ] ; 2 uses
  %.181124 = phi i64 [ %.282, %.lr.ph ], [ %.080143, %bb.f ]
  %.sroa.090.0123 = phi ptr [ %i.au, %.lr.ph ], [ %.sroa.0102.0139, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.090.0123, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !158 ; 2 uses
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.aa, i32 1)
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.090.0123, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ah = tail call noundef i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = tail call noundef i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ag, i32 1)
  %i.aj = zext i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ae, %i.aj            ; 3 uses
  %i.al = select i1 %.075146, i64 -1, i64 %i.ak
  %.282 = and i64 %i.al, %.181124                 ; 6 uses
  %i.am = select i1 %.075146, i64 0, i64 %i.ak
  %.264 = or i64 %i.am, %.163127                  ; 6 uses
  %i.an = lshr i64 %i.ak, %.070149
  %i.ao = and i64 %i.an, 255                      ; 3 uses
  %i.ap = trunc nuw i8 %.068125 to i1
  %i.aq = icmp samesign ugt i64 %.066126, %i.ao
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false  ; 2 uses
  %.169 = select i1 %or.cond, i8 0, i8 %.068125   ; 2 uses
  %.167 = select i1 %or.cond, i64 %.066126, i64 %i.ao
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !144
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.090.0123, i64 24 ; 2 uses
  %.not114 = icmp eq ptr %i.au, %i.p
  br i1 %.not114, label %._crit_edge, label %.lr.ph, !llvm.loop !448

bb.g:                                             ; preds = %._crit_edge
  %i.av = xor i64 %.264, %.282
  %i.aw = and i64 %i.av, %.079144
  %i.ax = icmp eq i64 %i.aw, 0
  %or.cond113 = select i1 %i.ax, i1 true, i1 %i.q
  br i1 %or.cond113, label %.loopexit116, label %.preheader117

bb.h:                                             ; preds = %._crit_edge
  br i1 %i.q, label %.loopexit116, label %.preheader117

.preheader117:                                    ; preds = %bb.h, %bb.g
  %.not130 = icmp samesign ugt i64 %i.s, %i.u
  br i1 %.not130, label %._crit_edge134, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader117
  %i.ay = add nuw nsw i64 %i.u, 1
  %i.az = sub nuw nsw i64 %i.ay, %i.s             ; 2 uses
  %i.ba = sub nuw nsw i64 %i.u, %i.s
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.bb = icmp samesign ult i64 %i.ba, 3
  br i1 %i.bb, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter = and i64 %i.az, 508
  br label %.lr.ph133

._crit_edge134.loopexit.unr-lcssa:                ; preds = %.lr.ph133
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge134, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %._crit_edge134.loopexit.unr-lcssa, %.lr.ph133.preheader
  %.060132.epil.init = phi i64 [ %i.s, %.lr.ph133.preheader ], [ %i.bv, %._crit_edge134.loopexit.unr-lcssa ]
  %.061131.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %i.bu, %._crit_edge134.loopexit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph133.epil

.lr.ph133.epil:                                   ; preds = %.lr.ph133.epil, %.lr.ph133.epil.preheader
  %.060132.epil = phi i64 [ %i.bf, %.lr.ph133.epil ], [ %.060132.epil.init, %.lr.ph133.epil.preheader ] ; 2 uses
  %.061131.epil = phi i64 [ %i.be, %.lr.ph133.epil ], [ %.061131.epil.init, %.lr.ph133.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph133.epil ], [ 0, %.lr.ph133.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132.epil ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !144
  store i64 %.061131.epil, ptr %i.bc, align 8, !tbaa !144
  %i.be = add i64 %i.bd, %.061131.epil
  %i.bf = add nuw nsw i64 %.060132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge134, label %.lr.ph133.epil, !llvm.loop !449

._crit_edge134:                                   ; preds = %._crit_edge134.loopexit.unr-lcssa, %.lr.ph133.epil, %.preheader117
  br i1 %.059151, label %.lr.ph137.preheader, label %bb.i

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %.060132 = phi i64 [ %i.s, %.lr.ph133.preheader.new ], [ %i.bv, %.lr.ph133 ] ; 5 uses
  %.061131 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %i.bu, %.lr.ph133 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter.next.3, %.lr.ph133 ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !144
  store i64 %.061131, ptr %i.bg, align 8, !tbaa !144
  %i.bi = add i64 %i.bh, %.061131                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !144
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !144
  %i.bm = add i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !144
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !144
  %i.bq = add i64 %i.bp, %i.bm                    ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !144
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !144
  %i.bu = add i64 %i.bt, %i.bq                    ; 2 uses
  %i.bv = add nuw nsw i64 %.060132, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge134.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !450

bb.i:                                             ; preds = %._crit_edge134
  %i.bw = ptrtoint ptr %.sroa.8.0141 to i64       ; 2 uses
  %i.bx = ptrtoint ptr %.sroa.095.0140 to i64     ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = sdiv exact i64 %i.by, 24                ; 7 uses
  %i.ca = icmp ugt i64 %i.e, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cb = sub nuw nsw i64 %i.e, %i.bz             ; 3 uses
  %i.cc = ptrtoint ptr %.sroa.13.0142 to i64      ; 2 uses
  %i.cd = sub i64 %i.cc, %i.bw
  %i.ce = sdiv exact i64 %i.cd, 24                ; 2 uses
  %i.cf = icmp ult i64 %i.bz, 384307168202282326
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = sub nuw nsw i64 384307168202282325, %i.bz
  %i.ch = icmp ule i64 %i.ce, %i.cg
  tail call void @llvm.assume(i1 %i.ch)
  %.not23.i = icmp ult i64 %i.ce, %i.cb
  br i1 %.not23.i, label %bb.k, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13CompactBinaryEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13CompactBinaryEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.j
  %i.ci = sub i64 %i.d, %i.by                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.8.0141, i8 0, i64 %i.ci, i1 false)
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_15lit_implicationESt6vectorIS3_SaIS3_EEEENS_12litpair_rankEEEvT_SA_T0_:bb.a
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !144
  %i.bk = add i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !144
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !144
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !144
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !144
  %i.bs = add i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = add nuw nsw i64 %.060132, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge134.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !698

bb.i:                                             ; preds = %._crit_edge134
  %i.bu = ptrtoint ptr %.sroa.8.0141 to i64       ; 2 uses
  %i.bv = ptrtoint ptr %.sroa.095.0140 to i64     ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 4                 ; 7 uses
  %i.by = icmp ugt i64 %i.e, %i.bx
  br i1 %i.by, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bz = sub nuw nsw i64 %i.e, %i.bx             ; 6 uses
  %i.ca = ptrtoint ptr %.sroa.13.0142 to i64      ; 2 uses
  %i.cb = sub i64 %i.ca, %i.bu
  %i.cc = ashr exact i64 %i.cb, 4                 ; 2 uses
  %i.cd = icmp ult i64 %i.bx, 576460752303423488
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = xor i64 %i.bx, 576460752303423487       ; 2 uses
  %i.cf = icmp ule i64 %i.cc, %i.ce
  tail call void @llvm.assume(i1 %i.cf)
  %.not23.i = icmp ult i64 %i.cc, %i.bz
  br i1 %.not23.i, label %bb.k, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.j
  %i.cg = shl nuw nsw i64 %i.bz, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.8.0141, i8 0, i64 %i.cg, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.8.0141, i64 %i.cg
  br label %.lr.ph137.preheader

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %i.ce, %i.bz
  br i1 %i.ch, label %bb.l, label %_ZNKSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bz)
  %i.ci = add nuw nsw i64 %.sroa.speculated.i.i, %i.bx
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 576460752303423487) ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #23 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bw ; 2 uses
  %i.cn = shl nuw nsw i64 %i.bz, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cm, i8 0, i64 %i.cn, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %.sroa.095.0140, %.sroa.8.0141
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %i.cl, %_ZNKSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.sroa.095.0140, %_ZNKSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !416, !alias.scope !705
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.co, %.sroa.8.0141
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i30.i = icmp eq ptr %.sroa.095.0140, null
  br i1 %.not.i30.i, label %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cq = sub i64 %i.ca, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0140, i64 noundef %i.cq) #24
  br label %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.bz
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  br label %.lr.ph137.preheader

bb.n:                                             ; preds = %bb.i
  %i.ct = icmp ult i64 %i.e, %i.bx
  br i1 %i.ct, label %bb.o, label %.lr.ph137.preheader

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.095.0140, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.8.0141, %i.cu
  %spec.select = select i1 %.not.i.i, ptr %.sroa.8.0141, ptr %i.cu
  br label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %._crit_edge134, %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.n, %bb.o
  %.sroa.0106.1 = phi ptr [ %.sroa.0106.0138, %._crit_edge134 ], [ %.sroa.095.0140, %bb.n ], [ %.sroa.095.0140, %bb.o ], [ %.sroa.095.0140, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.cl, %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.sroa.095.1 = phi ptr [ %.sroa.095.0140, %._crit_edge134 ], [ %.sroa.095.0140, %bb.n ], [ %.sroa.095.0140, %bb.o ], [ %.sroa.095.0140, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.cl, %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0141, %._crit_edge134 ], [ %.sroa.8.0141, %bb.n ], [ %spec.select, %bb.o ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.cr, %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0142, %._crit_edge134 ], [ %.sroa.13.0142, %bb.n ], [ %.sroa.13.0142, %bb.o ], [ %.sroa.13.0142, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_implicationEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.cs, %_ZNSt12_Vector_baseIN7CaDiCaL15lit_implicationESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cv = icmp eq ptr %.sroa.0102.0139, %0
  %i.cw = select i1 %i.cv, ptr %.sroa.0106.1, ptr %0 ; 2 uses
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %.lr.ph137
  %.sroa.0.0136 = phi ptr [ %i.do, %.lr.ph137 ], [ %.sroa.0102.0139, %.lr.ph137.preheader ] ; 4 uses
  %i.cx = load i32, ptr %.sroa.0.0136, align 8, !tbaa !422 ; 2 uses
  %i.cy = tail call noundef i32 @llvm.abs.i32(i32 %i.cx, i1 true)
  %i.cz = tail call noundef i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cx, i32 1)
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0136, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !418 ; 2 uses
  %i.dd = tail call noundef i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = tail call noundef i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dc, i32 1)
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw i64 %i.da, 32
  %i.dh = or disjoint i64 %i.dg, %i.df
  %i.di = lshr i64 %i.dh, %.070149
  %i.dj = and i64 %i.di, 255
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dj ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !144 ; 2 uses
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !144
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0136, i64 16, i1 false), !tbaa.struct !416
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0136, i64 16 ; 2 uses
  %.not115 = icmp eq ptr %i.do, %i.o
  br i1 %.not115, label %.loopexit116, label %.lr.ph137, !llvm.loop !702

.loopexit116:                                     ; preds = %.lr.ph137, %._crit_edge.thread, %bb.g, %bb.h, %bb.e
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.0138, %bb.e ], [ %.sroa.0106.0138, %bb.h ], [ %.sroa.0106.0138, %bb.g ], [ %.sroa.0106.0138, %._crit_edge.thread ], [ %.sroa.0106.1, %.lr.ph137 ] ; 5 uses
  %.sroa.0102.2 = phi ptr [ %.sroa.0102.0139, %bb.e ], [ %.sroa.0102.0139, %bb.h ], [ %.sroa.0102.0139, %bb.g ], [ %.sroa.0102.0139, %._crit_edge.thread ], [ %i.cw, %.lr.ph137 ] ; 2 uses
  %.sroa.095.3 = phi ptr [ %.sroa.095.0140, %bb.e ], [ %.sroa.095.0140, %bb.h ], [ %.sroa.095.0140, %bb.g ], [ %.sroa.095.0140, %._crit_edge.thread ], [ %.sroa.095.1, %.lr.ph137 ] ; 4 uses
  %.sroa.8.3 = phi ptr [ %.sroa.8.0141, %bb.e ], [ %.sroa.8.0141, %bb.h ], [ %.sroa.8.0141, %bb.g ], [ %.sroa.8.0141, %._crit_edge.thread ], [ %.sroa.8.1, %.lr.ph137 ]
  %.sroa.13.3 = phi ptr [ %.sroa.13.0142, %bb.e ], [ %.sroa.13.0142, %bb.h ], [ %.sroa.13.0142, %bb.g ], [ %.sroa.13.0142, %._crit_edge.thread ], [ %.sroa.13.1, %.lr.ph137 ] ; 2 uses
  %.383 = phi i64 [ %.080143, %bb.e ], [ %.282, %bb.h ], [ %.282, %bb.g ], [ %.080143, %._crit_edge.thread ], [ %.282, %.lr.ph137 ]
  %.174 = phi i64 [ %.073147, %bb.e ], [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.v, %._crit_edge.thread ], [ %i.r, %.lr.ph137 ]
  %.172 = phi i64 [ %.071148, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.x, %._crit_edge.thread ], [ %i.t, %.lr.ph137 ]
  %.365 = phi i64 [ %.062150, %bb.e ], [ %.264, %bb.h ], [ %.264, %bb.g ], [ %.062150, %._crit_edge.thread ], [ %.264, %.lr.ph137 ]
  %.3 = phi i1 [ %.059151, %bb.e ], [ %.059151, %bb.h ], [ %.059151, %bb.g ], [ %.059151, %._crit_edge.thread ], [ true, %.lr.ph137 ]
  %i.dp = add nuw nsw i64 %.070149, 8
  %i.dq = shl i64 %.079144, 8
  %i.dr = icmp samesign ult i64 %.070149, 56
  br i1 %i.dr, label %bb.d, label %bb.c, !llvm.loop !703

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0152 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.dx, %.preheader ] ; 4 uses
  %niter184 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter184.next.1, %.preheader ]
  %i.ds = getelementptr inbounds [16 x i8], ptr %.sroa.0106.3, i64 %.0152
  %i.dt = getelementptr inbounds [16 x i8], ptr %0, i64 %.0152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !tbaa.struct !416
  %i.du = or disjoint i64 %.0152, 1               ; 2 uses
  %i.dv = getelementptr inbounds [16 x i8], ptr %.sroa.0106.3, i64 %i.du
  %i.dw = getelementptr inbounds [16 x i8], ptr %0, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !416
  %i.dx = add nuw i64 %.0152, 2                   ; 3 uses
  %niter184.next.1 = add nuw i64 %niter184, 2     ; 2 uses
  %niter184.ncmp.1 = icmp eq i64 %niter184.next.1, %unroll_iter183
  br i1 %niter184.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !704

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %i.dy = and i64 %i.d, 16
  %lcmp.mod181.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod181.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod182 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.dz = getelementptr inbounds [16 x i8], ptr %.sroa.0106.3, i64 %i.dx
  %i.ea = getelementptr inbounds [16 x i8], ptr %0, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !416
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.095.3, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.eb = ptrtoint ptr %.sroa.13.3 to i64
  %i.ec = ptrtoint ptr %.sroa.095.3 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.3, i64 noundef %i.ed) #24
  br label %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EED2Ev.exit: ; preds = %.loopexit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorIN7CaDiCaL15lit_implicationESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_15lit_equivalenceESt6vectorIS3_SaIS3_EEEENS_19litequivalence_rankEEEvT_SA_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 10 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = sdiv exact i64 %i.d, 24                  ; 8 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = icmp ugt i64 %i.e, 384307168202282325
  %.not114122 = icmp eq ptr %1, %0
  br label %bb.d

bb.c:                                             ; preds = %.loopexit116
  %i.h = icmp eq ptr %.sroa.0102.2, %.sroa.0106.3
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %xtraiter179 = and i64 %i.e, 1
  %unroll_iter183 = and i64 %i.e, -2
  br label %.preheader

bb.d:                                             ; preds = %bb.b, %.loopexit116
  %.059151 = phi i1 [ false, %bb.b ], [ %.3, %.loopexit116 ] ; 5 uses
  %.062150 = phi i64 [ 0, %bb.b ], [ %.365, %.loopexit116 ] ; 5 uses
  %.070149 = phi i64 [ 0, %bb.b ], [ %i.dp, %.loopexit116 ] ; 8 uses
  %.071148 = phi i64 [ 255, %bb.b ], [ %.172, %.loopexit116 ] ; 2 uses
  %.073147 = phi i64 [ 0, %bb.b ], [ %.174, %.loopexit116 ] ; 3 uses
  %.075146 = phi i1 [ false, %bb.b ], [ true, %.loopexit116 ] ; 4 uses
  %.079144 = phi i64 [ 255, %bb.b ], [ %i.dq, %.loopexit116 ] ; 3 uses
  %.080143 = phi i64 [ -1, %bb.b ], [ %.383, %.loopexit116 ] ; 5 uses
  %.sroa.13.0142 = phi ptr [ null, %bb.b ], [ %.sroa.13.3, %.loopexit116 ] ; 9 uses
  %.sroa.8.0141 = phi ptr [ null, %bb.b ], [ %.sroa.8.3, %.loopexit116 ] ; 13 uses
  %.sroa.095.0140 = phi ptr [ null, %bb.b ], [ %.sroa.095.3, %.loopexit116 ] ; 17 uses
  %.sroa.0102.0139 = phi ptr [ %0, %bb.b ], [ %.sroa.0102.2, %.loopexit116 ] ; 8 uses
  %.sroa.0106.0138 = phi ptr [ %1, %bb.b ], [ %.sroa.0106.3, %.loopexit116 ] ; 5 uses
  br i1 %.075146, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = xor i64 %.062150, %.080143
  %i.j = and i64 %i.i, %.079144
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit116, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.073147
  %i.m = sub nsw i64 %.071148, %.073147
  %i.n = shl nsw i64 %i.m, 3
  %i.o = add nsw i64 %i.n, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds i8, ptr %.sroa.0102.0139, i64 %i.d ; 2 uses
  br i1 %.not114122, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = trunc nuw i8 %.169 to i1                 ; 2 uses
  %i.r = lshr i64 %.282, %.070149
  %i.s = and i64 %i.r, 255                        ; 8 uses
  %i.t = lshr i64 %.264, %.070149
  %i.u = and i64 %i.t, 255                        ; 6 uses
  br i1 %.075146, label %bb.h, label %bb.g

._crit_edge.thread:                               ; preds = %bb.f
  %i.v = lshr i64 %.080143, %.070149
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %.062150, %.070149
  %i.y = and i64 %i.x, 255
  br label %.loopexit116

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.163127 = phi i64 [ %.264, %.lr.ph ], [ %.062150, %bb.f ]
  %.066126 = phi i64 [ %.167, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %.068125 = phi i8 [ %.169, %.lr.ph ], [ 1, %bb.f ] ; 2 uses
  %.181124 = phi i64 [ %.282, %.lr.ph ], [ %.080143, %bb.f ]
  %.sroa.090.0123 = phi ptr [ %i.at, %.lr.ph ], [ %.sroa.0102.0139, %bb.f ] ; 3 uses
  %i.z = load i32, ptr %.sroa.090.0123, align 8, !tbaa !425 ; 2 uses
  %i.aa = tail call noundef i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = tail call noundef i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.z, i32 1)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.090.0123, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !426 ; 2 uses
  %i.af = tail call noundef i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = tail call noundef i32 @llvm.fshl.i32(i32 %i.af, i32 %i.ae, i32 1)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw i64 %i.ac, 32
  %i.aj = or disjoint i64 %i.ai, %i.ah            ; 3 uses
  %i.ak = select i1 %.075146, i64 -1, i64 %i.aj
  %.282 = and i64 %i.ak, %.181124                 ; 6 uses
  %i.al = select i1 %.075146, i64 0, i64 %i.aj
  %.264 = or i64 %i.al, %.163127                  ; 6 uses
  %i.am = lshr i64 %i.aj, %.070149
  %i.an = and i64 %i.am, 255                      ; 3 uses
  %i.ao = trunc nuw i8 %.068125 to i1
  %i.ap = icmp samesign ugt i64 %.066126, %i.an
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false  ; 2 uses
  %.169 = select i1 %or.cond, i8 0, i8 %.068125   ; 2 uses
  %.167 = select i1 %or.cond, i64 %.066126, i64 %i.an
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !144
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !144
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.090.0123, i64 24 ; 2 uses
  %.not114 = icmp eq ptr %i.at, %i.p
  br i1 %.not114, label %._crit_edge, label %.lr.ph, !llvm.loop !706

bb.g:                                             ; preds = %._crit_edge
  %i.au = xor i64 %.264, %.282
  %i.av = and i64 %i.au, %.079144
  %i.aw = icmp eq i64 %i.av, 0
  %or.cond113 = select i1 %i.aw, i1 true, i1 %i.q
  br i1 %or.cond113, label %.loopexit116, label %.preheader117

bb.h:                                             ; preds = %._crit_edge
  br i1 %i.q, label %.loopexit116, label %.preheader117

.preheader117:                                    ; preds = %bb.h, %bb.g
  %.not130 = icmp samesign ugt i64 %i.s, %i.u
  br i1 %.not130, label %._crit_edge134, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader117
  %i.ax = add nuw nsw i64 %i.u, 1
  %i.ay = sub nuw nsw i64 %i.ax, %i.s             ; 2 uses
  %i.az = sub nuw nsw i64 %i.u, %i.s
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.ba = icmp samesign ult i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter = and i64 %i.ay, 508
  br label %.lr.ph133

._crit_edge134.loopexit.unr-lcssa:                ; preds = %.lr.ph133
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge134, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %._crit_edge134.loopexit.unr-lcssa, %.lr.ph133.preheader
  %.060132.epil.init = phi i64 [ %i.s, %.lr.ph133.preheader ], [ %i.bu, %._crit_edge134.loopexit.unr-lcssa ]
  %.061131.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %i.bt, %._crit_edge134.loopexit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph133.epil

.lr.ph133.epil:                                   ; preds = %.lr.ph133.epil, %.lr.ph133.epil.preheader
  %.060132.epil = phi i64 [ %i.be, %.lr.ph133.epil ], [ %.060132.epil.init, %.lr.ph133.epil.preheader ] ; 2 uses
  %.061131.epil = phi i64 [ %i.bd, %.lr.ph133.epil ], [ %.061131.epil.init, %.lr.ph133.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph133.epil ], [ 0, %.lr.ph133.epil.preheader ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132.epil ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !144
  store i64 %.061131.epil, ptr %i.bb, align 8, !tbaa !144
  %i.bd = add i64 %i.bc, %.061131.epil
  %i.be = add nuw nsw i64 %.060132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge134, label %.lr.ph133.epil, !llvm.loop !707

._crit_edge134:                                   ; preds = %._crit_edge134.loopexit.unr-lcssa, %.lr.ph133.epil, %.preheader117
  br i1 %.059151, label %.lr.ph137.preheader, label %bb.i

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %.060132 = phi i64 [ %i.s, %.lr.ph133.preheader.new ], [ %i.bu, %.lr.ph133 ] ; 5 uses
  %.061131 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %i.bt, %.lr.ph133 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter.next.3, %.lr.ph133 ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !144
  store i64 %.061131, ptr %i.bf, align 8, !tbaa !144
  %i.bh = add i64 %i.bg, %.061131                 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !144
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !144
  %i.bl = add i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !144
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !144
  %i.bp = add i64 %i.bo, %i.bl                    ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060132
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !144
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !144
  %i.bt = add i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add nuw nsw i64 %.060132, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge134.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !708

bb.i:                                             ; preds = %._crit_edge134
  %i.bv = ptrtoint ptr %.sroa.8.0141 to i64       ; 2 uses
  %i.bw = ptrtoint ptr %.sroa.095.0140 to i64     ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = sdiv exact i64 %i.bx, 24                ; 7 uses
  %i.bz = icmp ugt i64 %i.e, %i.by
  br i1 %i.bz, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ca = sub nuw nsw i64 %i.e, %i.by             ; 3 uses
  %i.cb = ptrtoint ptr %.sroa.13.0142 to i64      ; 2 uses
  %i.cc = sub i64 %i.cb, %i.bv
  %i.cd = sdiv exact i64 %i.cc, 24                ; 2 uses
  %i.ce = icmp ult i64 %i.by, 384307168202282326
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = sub nuw nsw i64 384307168202282325, %i.by
  %i.cg = icmp ule i64 %i.cd, %i.cf
  tail call void @llvm.assume(i1 %i.cg)
  %.not23.i = icmp ult i64 %i.cd, %i.ca
  br i1 %.not23.i, label %bb.k, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_equivalenceEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL15lit_equivalenceEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.j
  %i.ch = sub i64 %i.d, %i.bx                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.8.0141, i8 0, i64 %i.ch, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.8.0141, i64 %i.ch
end_hunk_1
