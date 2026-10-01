Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MD5Loader?download=true
inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer15LoadMD5MeshFileEv:bb.a
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp ne ptr %i.ei, %i.ek
  %i.em = zext i1 %i.el to i32
  %spec.select = add i32 %.0191407, %i.em
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %.1192 = phi i32 [ %.0191407, %.lr.ph ], [ %spec.select, %bb.z ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0357.0406, i64 1104 ; 2 uses
  %.not371 = icmp eq ptr %i.en, %.pre492
  br i1 %.not371, label %._crit_edge, label %.lr.ph, !llvm.loop !37

bb.ab:                                            ; preds = %._crit_edge
  %i.eo = load ptr, ptr %i.bz, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %i.dq, ptr %i.ep, align 8
  %i.eq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #27
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.bz, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store ptr %i.eq, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 1120 ; 3 uses
  store i32 %.0191.lcssa, ptr %i.et, align 8
  %i.eu = shl nuw nsw i64 %i.do, 2
  %i.ev = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eu) #27
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dc, i64 1128 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8
  %i.ex = load i32, ptr %i.et, align 8
  %.not460 = icmp eq i32 %i.ex, 0
  br i1 %.not460, label %._crit_edge411, label %.lr.ph410

._crit_edge411:                                   ; preds = %.lr.ph410, %bb.ad
  %i.ey = load ptr, ptr %4, align 8               ; 2 uses
  %i.ez = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not372454 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not372454, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge411
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 9 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.lr.ph410:                                        ; preds = %bb.ad, %.lr.ph410
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph410 ], [ 0, %bb.ad ] ; 3 uses
  %i.fj = load ptr, ptr %i.ew, align 8
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv
  %i.fl = trunc nuw i64 %indvars.iv to i32
  store i32 %i.fl, ptr %i.fk, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fm = load i32, ptr %i.et, align 8
  %i.fn = zext i32 %i.fm to i64
  %i.fo = icmp samesign ult i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %.lr.ph410, label %._crit_edge411, !llvm.loop !38

._crit_edge459:                                   ; preds = %bb.ct, %._crit_edge411
  %i.fp = load ptr, ptr %i.db, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge459
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #24
  br label %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i: ; preds = %bb.af, %._crit_edge459
  %i.fv = load ptr, ptr %4, align 8
  %i.fw = load ptr, ptr %i.dn, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3MD58MeshDescEEEvT_S6_(ptr noundef %i.fv, ptr noundef %i.fw)
          to label %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.ah

_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i
  %i.fx = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #24
  br label %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #26
  unreachable

_ZN6Assimp3MD513MD5MeshParserD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.gf = load ptr, ptr %3, align 8               ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gf, %i.gh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hb, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i ], [ %i.gf, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit ] ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gm = load i64, ptr %i.gk, align 8
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gp = load ptr, ptr %i.go, align 8            ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.gs = load i64, ptr %i.gq, align 8
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #24
  br label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, %i.gh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit
  %i.hc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gf, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #24
  br label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cv

bb.ak:                                            ; preds = %.lr.ph458, %bb.ct
  %.0205456 = phi i32 [ 0, %.lr.ph458 ], [ %.1206, %bb.ct ] ; 5 uses
  %.sroa.0351.0455 = phi ptr [ %i.ey, %.lr.ph458 ], [ %i.zi, %bb.ct ] ; 13 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 48 ; 4 uses
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 56 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = icmp eq ptr %i.hj, %i.hl
  br i1 %i.hm, label %bb.ct, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 24 ; 5 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 32 ; 8 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = icmp eq ptr %i.ho, %i.hq
  br i1 %i.hr, label %bb.ct, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hs = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27
          to label %bb.an unwind label %bb.aw     ; 17 uses

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 3 uses
  store i32 0, ptr %i.ht, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  store i32 0, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 224 ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 1272
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 1312
  store ptr null, ptr %i.hy, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.hv, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.hw, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.hx, i8 0, i64 36, i1 false)
  %i.hz = load ptr, ptr %i.bz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = zext i32 %.0205456 to i64               ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic
  store ptr %i.hs, ptr %i.id, align 8
  %i.ie = load ptr, ptr %i.bz, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 8
  store i32 4, ptr %i.hs, align 8
  invoke void @_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1100) %.sroa.0351.0455)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 72 ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 76 ; 8 uses
  store ptr %i.fa, ptr %6, align 8
  %i.ik = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ij) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ik, ptr %i.a, align 8
  %i.il = icmp ugt i64 %i.ik, 15
  br i1 %i.il, label %.noexc.i279, label %._crit_edge.i.i278

.noexc.i279:                                      ; preds = %bb.ao
  %i.im = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc280 unwind label %bb.ax ; 2 uses

.noexc280:                                        ; preds = %.noexc.i279
  store ptr %i.im, ptr %6, align 8
  %i.in = load i64, ptr %i.a, align 8
  store i64 %i.in, ptr %i.fa, align 8
  br label %._crit_edge.i.i278

._crit_edge.i.i278:                               ; preds = %.noexc280, %bb.ao
  %i.io = phi ptr [ %i.im, %.noexc280 ], [ %i.fa, %bb.ao ] ; 2 uses
  switch i64 %i.ik, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i278
  %i.ip = load i8, ptr %i.ij, align 4
  store i8 %i.ip, ptr %i.io, align 1
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr nonnull align 4 %i.ij, i64 %i.ik, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i278
  %i.iq = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.iq, ptr %i.fb, align 8
  %i.ir = load ptr, ptr %6, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iq
  store i8 0, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.it = load i64, ptr %i.fb, align 8
  %i.iu = and i64 %i.it, -4
  %i.iv = icmp eq i64 %i.iu, 4611686018427387900
  br i1 %i.iv, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
          to label %.noexc282 unwind label %.loopexit.split-lp

.noexc282:                                        ; preds = %bb.as
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ar
  %i.iw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit383 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ix = load i64, ptr %i.fb, align 8            ; 4 uses
  %i.iy = icmp ugt i64 %i.ix, 1023
  br i1 %i.iy, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hs, i64 236
  %i.ja = trunc nuw nsw i64 %i.ix to i32
  store i32 %i.ja, ptr %i.iz, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hs, i64 240 ; 2 uses
  %i.jc = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jb, ptr align 1 %i.jc, i64 %i.ix, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ix
  store i8 0, ptr %i.jd, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.at
  %i.je = load ptr, ptr %i.hp, align 8
  %i.jf = load ptr, ptr %i.hn, align 8
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = ashr exact i64 %i.ji, 4                 ; 2 uses
  %i.jk = trunc i64 %i.jj to i32
  store i32 %i.jk, ptr %i.ht, align 4
  %i.jl = and i64 %i.jj, 4294967295               ; 2 uses
  %i.jm = mul nuw nsw i64 %i.jl, 12               ; 2 uses
  %i.jn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jm) #27
          to label %bb.au unwind label %.loopexit383 ; 2 uses

bb.au:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jo = icmp eq i64 %i.jl, 0
  br i1 %i.jo, label %.loopexit382, label %.loopexit382.loopexit

.loopexit382.loopexit:                            ; preds = %bb.au
  %i.jp = add nsw i64 %i.jm, -12                  ; 2 uses
  %i.jq = urem i64 %i.jp, 12
  %i.jr = sub nuw nsw i64 %i.jp, %i.jq
  %i.js = add nsw i64 %i.jr, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jn, i8 0, i64 %i.js, i1 false)
  br label %.loopexit382

.loopexit382:                                     ; preds = %.loopexit382.loopexit, %bb.au
  store ptr %i.jn, ptr %i.hv, align 8
  %i.jt = load i32, ptr %i.ht, align 4            ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %i.jv = mul nuw nsw i64 %i.ju, 12               ; 2 uses
  %i.jw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jv) #27
          to label %bb.av unwind label %.loopexit383 ; 3 uses

bb.av:                                            ; preds = %.loopexit382
  %i.jx = icmp eq i32 %i.jt, 0
  br i1 %i.jx, label %.loopexit381, label %.loopexit381.loopexit

.loopexit381.loopexit:                            ; preds = %bb.av
  %i.jy = add nsw i64 %i.jv, -12                  ; 2 uses
  %i.jz = urem i64 %i.jy, 12
  %i.ka = sub nuw nsw i64 %i.jy, %i.jz
  %i.kb = add nsw i64 %i.ka, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jw, i8 0, i64 %i.kb, i1 false)
  br label %.loopexit381

.loopexit381:                                     ; preds = %.loopexit381.loopexit, %bb.av
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hs, i64 112
  store ptr %i.jw, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hs, i64 176
  store i32 2, ptr %i.kd, align 8
  %i.ke = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.kf = load ptr, ptr %i.hp, align 8
  %.not373412 = icmp eq ptr %i.ke, %i.kf
  br i1 %.not373412, label %._crit_edge417, label %.lr.ph416

._crit_edge417:                                   ; preds = %.lr.ph416, %.loopexit381
  %i.kg = load ptr, ptr %i.fc, align 8
  %i.kh = load ptr, ptr %i.db, align 8
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = sdiv exact i64 %i.kk, 1204              ; 2 uses
  %i.km = icmp ugt i64 %i.kl, 4611686018427387903
  %i.kn = shl nsw i64 %i.kl, 2
  %i.ko = select i1 %i.km, i64 -1, i64 %i.kn
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #27
          to label %bb.ay unwind label %bb.az     ; 5 uses

bb.aw:                                            ; preds = %bb.an, %bb.am
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ax:                                            ; preds = %.noexc.i279
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

.loopexit383:                                     ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.loopexit382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph416:                                        ; preds = %.loopexit381, %.lr.ph416
  %.0202414 = phi ptr [ %i.kz, %.lr.ph416 ], [ %i.jw, %.loopexit381 ] ; 4 uses
  %.sroa.0345.0413 = phi ptr [ %i.ky, %.lr.ph416 ], [ %i.ke, %.loopexit381 ] ; 3 uses
  %i.ks = load float, ptr %.sroa.0345.0413, align 4
  store float %i.ks, ptr %.0202414, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0345.0413, i64 4
  %i.ku = load float, ptr %i.kt, align 4
  %i.kv = fsub float 1.000000e+00, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %.0202414, i64 4
  store float %i.kv, ptr %i.kw, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %.0202414, i64 8
  store float 0.000000e+00, ptr %i.kx, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0345.0413, i64 16 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0202414, i64 12
  %i.la = load ptr, ptr %i.hp, align 8
  %.not373 = icmp eq ptr %i.ky, %i.la
  br i1 %.not373, label %._crit_edge417, label %.lr.ph416, !llvm.loop !39

bb.ay:                                            ; preds = %._crit_edge417
  %i.lb = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.lc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = sdiv exact i64 %i.lf, 1204              ; 2 uses
  %i.lh = shl nsw i64 %i.lg, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kp, i8 0, i64 %i.lh, i1 false)
  %i.li = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.lj = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not374422 = icmp eq ptr %i.li, %i.lj
  br i1 %.not374422, label %.preheader380, label %.lr.ph425

.preheader380:                                    ; preds = %._crit_edge421, %bb.ay
  %.not461 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not461, label %._crit_edge428, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader380
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hs, i64 216 ; 2 uses
  br label %bb.bc

bb.az:                                            ; preds = %.loopexit379, %bb.bf, %._crit_edge417
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph425:                                        ; preds = %bb.ay, %._crit_edge421
  %i.lm = phi ptr [ %i.lu, %._crit_edge421 ], [ %i.lj, %bb.ay ]
  %.sroa.0339.0423 = phi ptr [ %i.lv, %._crit_edge421 ], [ %i.li, %bb.ay ] ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0339.0423, i64 8
  %i.lo = load i32, ptr %i.ln, align 4            ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0339.0423, i64 12 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4            ; 2 uses
  %i.lr = add i32 %i.lq, %i.lo
  %i.ls = icmp ult i32 %i.lo, %i.lr
  br i1 %i.ls, label %.lr.ph420.preheader, label %._crit_edge421

.lr.ph420.preheader:                              ; preds = %.lr.ph425
  %i.lt = zext i32 %i.lo to i64
  %.pre494 = load ptr, ptr %.sroa.0351.0455, align 8
  br label %.lr.ph420

._crit_edge421.loopexit:                          ; preds = %bb.bb
  %.pre494.a = load ptr, ptr %i.hp, align 8
  br label %._crit_edge421

._crit_edge421:                                   ; preds = %._crit_edge421.loopexit, %.lr.ph425
  %i.lu = phi ptr [ %.pre494.a, %._crit_edge421.loopexit ], [ %i.lm, %.lr.ph425 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0339.0423, i64 16 ; 2 uses
  %.not374 = icmp eq ptr %i.lv, %i.lu
  br i1 %.not374, label %.preheader380, label %.lr.ph425, !llvm.loop !40

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.bb
  %i.lw = phi i32 [ %i.lq, %.lr.ph420.preheader ], [ %i.mh, %bb.bb ]
  %12 = phi ptr [ %.pre494, %.lr.ph420.preheader ], [ %13, %bb.bb ] ; 2 uses
  %indvars.iv468 = phi i64 [ %i.lt, %.lr.ph420.preheader ], [ %indvars.iv.next469, %bb.bb ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [20 x i8], ptr %12, i64 %indvars.iv468 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load float, ptr %i.ly, align 4          ; 2 uses
  %i.ma = fcmp uge float %i.lz, f0x34000000
  %i.mb = fcmp ult float %i.lz, f0xB4000000
  %or.cond = or i1 %i.ma, %i.mb
  br i1 %or.cond, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph420
  %i.mc = load i32, ptr %i.lx, align 4
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4
  %i.mg = add i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4
  %.pre493 = load ptr, ptr %.sroa.0351.0455, align 8
  %.pre493.a = load i32, ptr %i.lp, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph420, %bb.ba
  %i.mh = phi i32 [ %i.lw, %.lr.ph420 ], [ %.pre493.a, %bb.ba ] ; 2 uses
  %13 = phi ptr [ %12, %.lr.ph420 ], [ %.pre493, %bb.ba ]
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %i.mi = add i32 %i.mh, %i.lo
  %i.mj = zext i32 %i.mi to i64
  %i.mk = icmp samesign ult i64 %indvars.iv.next469, %i.mj
  br i1 %i.mk, label %.lr.ph420, label %._crit_edge421.loopexit, !llvm.loop !41

._crit_edge428:                                   ; preds = %bb.be, %.preheader380
  %i.ml = getelementptr inbounds nuw i8, ptr %i.hs, i64 216 ; 3 uses
  %i.mm = load i32, ptr %i.ml, align 8            ; 2 uses
  %.not218 = icmp eq i32 %i.mm, 0
  br i1 %.not218, label %.loopexit379, label %bb.bf

bb.bc:                                            ; preds = %.lr.ph427, %bb.be
  %indvars.iv471 = phi i64 [ 0, %.lr.ph427 ], [ %indvars.iv.next472, %bb.be ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv471
  %i.mo = load i32, ptr %i.mn, align 4
  %.not241 = icmp eq i32 %i.mo, 0
  br i1 %.not241, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mp = load i32, ptr %i.lk, align 8
  %i.mq = add i32 %i.mp, 1
  store i32 %i.mq, ptr %i.lk, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %indvars.iv.next472 = add i64 %indvars.iv471, 1 ; 2 uses
  %i.mr = and i64 %indvars.iv.next472, 4294967295
  %i.ms = icmp ugt i64 %i.lg, %i.mr
  br i1 %i.ms, label %bb.bc, label %._crit_edge428, !llvm.loop !42

bb.bf:                                            ; preds = %._crit_edge428
  %i.mt = zext i32 %i.mm to i64
  %i.mu = shl nuw nsw i64 %i.mt, 3
  %i.mv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mu) #27
          to label %bb.bg unwind label %bb.az

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.mv, ptr %i.hw, align 8
  %i.mw = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.mx = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not462 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not462, label %._crit_edge433, label %.lr.ph432

._crit_edge433:                                   ; preds = %bb.bm, %bb.bg
  %i.my = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.mz = load ptr, ptr %i.hp, align 8
  %.not375442 = icmp eq ptr %i.my, %i.mz
  br i1 %.not375442, label %.preheader378, label %.lr.ph447

.lr.ph447:                                        ; preds = %._crit_edge433
  %i.na = load ptr, ptr %i.hv, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 8
  br label %bb.bo

.lr.ph432:                                        ; preds = %bb.bg, %bb.bm
  %i.nc = phi ptr [ %i.pc, %bb.bm ], [ %i.mx, %bb.bg ]
  %i.nd = phi ptr [ %i.pd, %bb.bm ], [ %i.mw, %bb.bg ]
  %i.ne = phi i64 [ %i.pf, %bb.bm ], [ 0, %bb.bg ] ; 2 uses
  %.0197430 = phi i32 [ %.1198, %bb.bm ], [ 0, %bb.bg ] ; 4 uses
  %.0199429 = phi i32 [ %i.pe, %bb.bm ], [ 0, %bb.bg ]
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ne ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4
  %.not229 = icmp eq i32 %i.ng, 0
  br i1 %.not229, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph432
  %i.nh = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #27
          to label %bb.bi unwind label %bb.bn     ; 13 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.nh, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 1060
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.nk, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 1080
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 1100
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.no, align 4
  %i.np = load ptr, ptr %i.hw, align 8
  %i.nq = zext i32 %.0197430 to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nq
  store ptr %i.nh, ptr %i.nr, align 8
  %i.ns = load i32, ptr %i.nf, align 4            ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 1028
  store i32 %i.ns, ptr %i.nt, align 4
  %i.nu = zext i32 %i.ns to i64
  %i.nv = shl nuw nsw i64 %i.nu, 3                ; 2 uses
  %i.nw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nv) #27
          to label %bb.bj unwind label %bb.bn     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.nx = icmp eq i32 %i.ns, 0
  br i1 %i.nx, label %.loopexit376, label %.loopexit376.loopexit

.loopexit376.loopexit:                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nw, i8 0, i64 %i.nv, i1 false)
  br label %.loopexit376

.loopexit376:                                     ; preds = %.loopexit376.loopexit, %bb.bj
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nh, i64 1048
  store ptr %i.nw, ptr %i.ny, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.nz = load ptr, ptr %i.db, align 8
  %i.oa = getelementptr inbounds nuw [1204 x i8], ptr %i.nz, i64 %i.ne ; 9 uses
  %i.ob = load i32, ptr %i.oa, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fd, i8 0, i64 1024, i1 false)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.ob, i32 1023) ; 3 uses
  store i32 %spec.select.i, ptr %7, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.od = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 4 %i.oc, i64 %i.od, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.od
  store i8 0, ptr %i.oe, align 1
  store i32 %spec.select.i, ptr %i.nh, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.nh, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.of, ptr nonnull align 4 %i.fd, i64 %i.od, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.od
  store i8 0, ptr %i.og, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ni, ptr noundef nonnull align 4 dereferenceable(64) %i.oh, i64 64, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 1200
  store i32 %.0197430, ptr %i.oi, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 1044
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oa, i64 1056
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oa, i64 1060
  %i.om = load <2 x float>, ptr %i.oj, align 4    ; 3 uses
  store <2 x float> %i.om, ptr %i.ol, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.oa, i64 1052
  %i.oo = load float, ptr %i.on, align 4          ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oa, i64 1068
  store float %i.oo, ptr %i.op, align 4
  %i.oq = extractelement <2 x float> %i.om, i64 0 ; 2 uses
  %i.or = fneg float %i.oq
  %i.os = call float @llvm.fmuladd.f32(float %i.or, float %i.oq, float 1.000000e+00)
  %i.ot = extractelement <2 x float> %i.om, i64 1 ; 2 uses
  %i.ou = fneg float %i.ot
  %i.ov = call float @llvm.fmuladd.f32(float %i.ou, float %i.ot, float %i.os)
  %i.ow = fneg float %i.oo
  %i.ox = call float @llvm.fmuladd.f32(float %i.ow, float %i.oo, float %i.ov) ; 2 uses
  %i.oy = fcmp olt float %i.ox, 0.000000e+00
  br i1 %i.oy, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit376
  %i.oz = call noundef float @sqrtf(float noundef %i.ox) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit376
  %storemerge.i = phi float [ %i.oz, %bb.bk ], [ 0.000000e+00, %.loopexit376 ]
  %i.pa = fneg float %storemerge.i
  store float %i.pa, ptr %i.ok, align 4
  %i.pb = add i32 %.0197430, 1
  %.pre495 = load ptr, ptr %i.fc, align 8
  %.pre496 = load ptr, ptr %i.db, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph432, %bb.bl
  %i.pc = phi ptr [ %.pre496, %bb.bl ], [ %i.nc, %.lr.ph432 ] ; 2 uses
  %i.pd = phi ptr [ %.pre495, %bb.bl ], [ %i.nd, %.lr.ph432 ] ; 2 uses
  %.1198 = phi i32 [ %i.pb, %bb.bl ], [ %.0197430, %.lr.ph432 ]
  %i.pe = add i32 %.0199429, 1                    ; 2 uses
  %i.pf = zext i32 %i.pe to i64                   ; 2 uses
  %i.pg = ptrtoint ptr %i.pd to i64
  %i.ph = ptrtoint ptr %i.pc to i64
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = sdiv exact i64 %i.pi, 1204
  %i.pk = icmp ugt i64 %i.pj, %i.pf
  br i1 %i.pk, label %.lr.ph432, label %._crit_edge433, !llvm.loop !43

bb.bn:                                            ; preds = %bb.bi, %bb.bh
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.preheader378:                                    ; preds = %.loopexit, %._crit_edge433
  %i.pm = load i32, ptr %i.ml, align 8
  %.not463 = icmp eq i32 %i.pm, 0
  br i1 %.not463, label %.loopexit379, label %.lr.ph449

bb.bo:                                            ; preds = %.lr.ph447, %.loopexit
  %.2204444 = phi ptr [ %i.na, %.lr.ph447 ], [ %i.ut, %.loopexit ] ; 6 uses
  %.sroa.0331.0443 = phi ptr [ %i.my, %.lr.ph447 ], [ %i.us, %.loopexit ] ; 3 uses
  store <2 x float> zeroinitializer, ptr %.2204444, align 4
  %.sroa.5.0..2204.sroa_idx = getelementptr inbounds nuw i8, ptr %.2204444, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %.sroa.5.0..2204.sroa_idx, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0331.0443, i64 8
  %i.po = load i32, ptr %i.pn, align 4            ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0331.0443, i64 12 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 4            ; 2 uses
  %i.pr = add i32 %i.pq, %i.po                    ; 2 uses
  %i.ps = icmp ult i32 %i.po, %i.pr
  br i1 %i.ps, label %.lr.ph437, label %._crit_edge438.thread
end_hunk_0
