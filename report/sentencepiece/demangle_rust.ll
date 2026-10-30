Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/demangle_rust?download=true
inline.NumInlined: 154
inline.NumDeleted: 25
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internal26DemangleRustSymbolEncodingEPKcPcm:bb.a
  br i1 %i.acz, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ada = add nsw i32 %i.acy, 1
  store i32 %i.ada, ptr %i.o, align 8, !tbaa !28
  %i.adb = sext i32 %i.acy to i64
  %i.adc = getelementptr inbounds i8, ptr %3, i64 %i.adb
  store i8 28, ptr %i.adc, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.backedge.i

.loopexit209.i:                                   ; preds = %.lr.ph, %bb.gs
  %.5.i = phi i32 [ %.08.i, %bb.gs ], [ %i.h, %.lr.ph ]
  %i.add = load i32, ptr %i.t, align 8, !tbaa !20
  %i.ade = add nsw i32 %i.add, -1                 ; 2 uses
  store i32 %i.ade, ptr %i.t, align 8, !tbaa !20
  %i.adf = sext i32 %i.ade to i64
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adf
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !21
  store i32 %i.adh, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.preheader.i

bb.gv:                                            ; preds = %.lr.ph363.i
  %i.adi = add nsw i32 %i.ia, 1
  store i32 %i.adi, ptr %i.e, align 8, !tbaa !18
  %i.adj = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.adj, label %bb.gw, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gw:                                            ; preds = %bb.gv
  %i.adk = load i32, ptr %i.p, align 4, !tbaa !19
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.gx, label %.loopexit205.i

bb.gx:                                            ; preds = %bb.gw
  %i.adm = load i32, ptr %i.o, align 8, !tbaa !28 ; 3 uses
  %i.adn = icmp eq i32 %i.adm, 256
  br i1 %i.adn, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ado = add nsw i32 %i.adm, 1
  store i32 %i.ado, ptr %i.o, align 8, !tbaa !28
  %i.adp = sext i32 %i.adm to i64
  %i.adq = getelementptr inbounds i8, ptr %3, i64 %i.adp
  store i8 29, ptr %i.adq, align 1, !tbaa !16
  br label %.critedge202.backedge.i

.loopexit205.i:                                   ; preds = %.lr.ph, %bb.gw
  %.6.i = phi i32 [ %.19.ph.i, %bb.gw ], [ %i.h, %.lr.ph ]
  %i.adr = load i32, ptr %i.t, align 8, !tbaa !20
  %i.ads = add nsw i32 %i.adr, -1                 ; 2 uses
  store i32 %i.ads, ptr %i.t, align 8, !tbaa !20
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !21
  store i32 %i.adv, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.preheader.i

.critedge51.preheader.i:                          ; preds = %bb.dh, %bb.df, %switch.lookup632, %bb.bn, %.loopexit205.i, %.loopexit209.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i, %bb.h
  %.7.ph.i = phi i32 [ %.08.i, %bb.h ], [ %.6.i, %.loopexit205.i ], [ %.3.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i ], [ %.19.ph.i, %switch.lookup632 ], [ %.5.i, %.loopexit209.i ], [ %.19.ph.i, %bb.bn ], [ %.19.ph.i, %bb.df ], [ %.19.ph.i, %bb.dh ] ; 2 uses
  %i.adw = icmp slt i32 %.7.ph.i, 131071
  %i.adx = load i32, ptr %i.o, align 8            ; 2 uses
  %i.ady = icmp sgt i32 %i.adx, 0
  %or.cond = select i1 %i.adw, i1 %i.ady, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph331.i:                                      ; preds = %.preheader.i, %bb.hb
  %i.adz = phi i32 [ %i.aek, %bb.hb ], [ %i.acq, %.preheader.i ]
  %i.aea = add nsw i32 %i.adz, 1
  store i32 %i.aea, ptr %i.e, align 8, !tbaa !18
  %i.aeb = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.aeb, label %bb.gz, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gz:                                            ; preds = %.lr.ph331.i
  %i.aec = load i32, ptr %i.p, align 4, !tbaa !19
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.ha, label %.loopexit.i

bb.ha:                                            ; preds = %bb.gz
  %i.aee = load i32, ptr %i.o, align 8, !tbaa !28 ; 3 uses
  %i.aef = icmp eq i32 %i.aee, 256
  br i1 %i.aef, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aeg = add nsw i32 %i.aee, 1
  store i32 %i.aeg, ptr %i.o, align 8, !tbaa !28
  %i.aeh = sext i32 %i.aee to i64
  %i.aei = getelementptr inbounds i8, ptr %3, i64 %i.aeh
  store i8 30, ptr %i.aei, align 1, !tbaa !16
  %i.aej = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aek = load i32, ptr %i.e, align 8, !tbaa !18 ; 3 uses
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds i8, ptr %i.aej, i64 %i.ael
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !16 ; 2 uses
  %.not.i163.i = icmp eq i8 %i.aen, 66
  br i1 %.not.i163.i, label %.lr.ph331.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i

.loopexit.i:                                      ; preds = %bb.gz, %.lr.ph
  %i.aeo = load i32, ptr %i.t, align 8, !tbaa !20
  %i.aep = add nsw i32 %i.aeo, -1                 ; 2 uses
  store i32 %i.aep, ptr %i.t, align 8, !tbaa !20
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !21
  store i32 %i.aes, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.backedge.i

switch.lookup:                                    ; preds = %.loopexit207.i
  %switch.cast = zext nneg i8 %i.ai to i47
  %switch.downshift = lshr i47 -70300024700927, %switch.cast
  %switch.masked = trunc i47 %switch.downshift to i1
  br label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit: ; preds = %bb.dg, %bb.ez, %bb.ev, %bb.ek, %bb.dv, %bb.dn, %bb.aq, %bb.y, %bb.f, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.s, %bb.u, %bb.v, %bb.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i, %bb.ah, %bb.al, %bb.an, %bb.as, %bb.ay, %bb.az, %bb.bf, %bb.bg, %bb.bm, %bb.dp, %bb.dx, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit146.i, %bb.em, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit152.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit154.i, %bb.er, %bb.ex, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit156.i, %bb.fb, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit156.thread.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i, %bb.fe, %bb.fm, %bb.fn, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i, %bb.gg, %bb.gr, %bb.gt, %.critedge51.preheader.i, %.critedge202._crit_edge.i, %switch.hole_check, %bb.gq, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit181.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i, %bb.gd, %bb.gb, %bb.fw, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit52, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit55, %bb.bw, %bb.bl, %bb.be, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit67, %.critedge51.backedge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit73, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit79, %.lr.ph335.i.backedge, %bb.bc, %bb.bj, %bb.bu, %bb.ed, %bb.fi, %bb.fy, %bb.gj, %bb.p, %bb.ad, %bb.av, %bb.bz, %bb.ch, %bb.dl, %bb.dt, %bb.eb, %bb.fr, %bb.cz, %bb.cw, %bb.bp, %bb.br, %bb.cc, %bb.ce, %bb.ck, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i96.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i102.i, %bb.cq, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i113.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i119.i, %bb.dc, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit138.i, %bb.gv, %bb.gx, %bb.ge, %.lr.ph331.i, %bb.ha, %.loopexit207.i, %switch.lookup, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit, %bb.c
  %.10.i = phi i1 [ false, %bb.c ], [ %switch.masked, %switch.lookup ], [ false, %.lr.ph331.i ], [ false, %bb.gq ], [ false, %.loopexit207.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit ], [ false, %bb.ge ], [ false, %bb.cz ], [ false, %bb.ha ], [ false, %bb.gx ], [ false, %bb.gv ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit138.i ], [ false, %bb.dc ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i119.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i113.i ], [ false, %bb.cq ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i102.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i96.i ], [ false, %bb.ck ], [ false, %bb.ce ], [ false, %bb.cc ], [ false, %bb.br ], [ false, %bb.bp ], [ false, %bb.cw ], [ false, %bb.fr ], [ false, %bb.eb ], [ false, %bb.dt ], [ false, %bb.dl ], [ false, %bb.ch ], [ false, %bb.bz ], [ false, %bb.av ], [ false, %bb.ad ], [ false, %bb.p ], [ false, %bb.gj ], [ false, %bb.fy ], [ false, %bb.fi ], [ false, %bb.ed ], [ false, %bb.bu ], [ false, %bb.bj ], [ false, %bb.bc ], [ false, %.lr.ph335.i.backedge ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit79 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit73 ], [ false, %.critedge51.backedge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit67 ], [ false, %bb.be ], [ false, %bb.bl ], [ false, %bb.bw ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit55 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit52 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10 ], [ false, %bb.fw ], [ false, %bb.gb ], [ false, %bb.gd ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit181.i ], [ false, %switch.hole_check ], [ false, %.critedge202._crit_edge.i ], [ false, %.critedge51.preheader.i ], [ false, %bb.gt ], [ false, %bb.gr ], [ false, %bb.gg ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i ], [ false, %bb.fn ], [ false, %bb.fm ], [ false, %bb.fe ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit156.thread.i ], [ false, %bb.fb ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit156.i ], [ false, %bb.ex ], [ false, %bb.er ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit154.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit152.i ], [ false, %bb.em ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit146.i ], [ false, %bb.dx ], [ false, %bb.dp ], [ false, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bf ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %bb.as ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i ], [ false, %bb.f ], [ false, %bb.y ], [ false, %bb.aq ], [ false, %bb.dn ], [ false, %bb.dv ], [ false, %bb.ek ], [ false, %bb.ev ], [ false, %bb.ez ], [ false, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %.10.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %.not.i.i = icmp eq i8 %i.g, 115
  br i1 %.not.i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !18
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i.i, label %.thread.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

.thread.i:                                        ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  store i32 %i.q, ptr %i.c, align 8, !tbaa !18
  br label %bb.j

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %i.r = phi ptr [ %i.ah, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.j, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01430.i.i = phi i1 [ %.1.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01529.i.i = phi i32 [ %.116.i.i.a, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ 0, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !18
  %i.t = load i8, ptr %i.r, align 1, !tbaa !16    ; 5 uses
  %.not.i5.i = icmp slt i32 %.01529.i.i, 34636833
  br i1 %.not.i5.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = zext nneg i8 %i.t to i32
  %i.x = add nsw i32 %i.w, -48
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.y = add i8 %i.t, -97
  %i.z = icmp ult i8 %i.y, 26
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i8 %i.t to i32
  %i.ab = add nsw i32 %i.aa, -87
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = sext i8 %i.t to i32
  %i.ad = add nsw i32 %i.ac, -29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.x, %bb.d ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = mul nsw i32 %.01529.i.i, 62
  %i.af = add nsw i32 %.0.i.i, %i.ae
  %i.ag = freeze i32 %i.af
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i: ; preds = %bb.h, %.critedge.i.i
  %.116.i.i.a = phi i32 [ %i.ag, %bb.h ], [ %.01529.i.i, %.critedge.i.i ] ; 3 uses
  %.1.i.i = phi i1 [ %.01430.i.i, %bb.h ], [ true, %.critedge.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 3 uses
  %i.aj = and i8 %i.ai, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = add i8 %i.ai, -48
  %i.an = icmp ult i8 %i.am, 10
  %or.cond.i.i = or i1 %i.an, %i.al
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %i.ao = icmp eq i8 %i.ai, 95
  br i1 %i.ao, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.ap = add nsw i32 %i.s, 1
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !18
  br i1 %.1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i
  %i.aq = add nsw i32 %.116.i.i.a, 2
  %.inv.inv.i = icmp slt i32 %.116.i.i.a, -1
  %spec.select.i = select i1 %.inv.inv.i, i32 -1, i32 %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %.thread.i, %bb.a
  %.02.ph = phi i32 [ 1, %.thread.i ], [ %spec.select.i, %bb.i ], [ -1, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ 0, %bb.a ]
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %.02.ph)
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %bb.j
  %.0 = phi i1 [ %i.ar, %bb.j ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.g, 76
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !18
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !18
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.g, 71
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !18
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !18
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16    ; 2 uses
  %.not.i = icmp ne i8 %i.h, 117                  ; 3 uses
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.e, 1                      ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !18
  %.pre = sext i32 %i.i to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.c, i64 %.pre
  %.pre87 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %i.h, %bb.a ], [ %.pre87, %bb.b ]
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %.val = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ]
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.pre-phi
  %i.n = add nsw i32 %.val, 1                     ; 4 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !18
  %i.o = load i8, ptr %i.m, align 1, !tbaa !16
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %.phi.trans.insert88 = sext i32 %i.n to i64     ; 2 uses
  %.phi.trans.insert89 = getelementptr inbounds i8, ptr %i.c, i64 %.phi.trans.insert88 ; 2 uses
  %.pre90 = load i8, ptr %.phi.trans.insert89, align 1, !tbaa !16 ; 3 uses
  br i1 %i.r, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.s = add i8 %.pre90, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %.phi.trans.insert88, %.preheader.i ]
  %i.u = phi ptr [ %i.ac, %bb.d ], [ %.phi.trans.insert89, %.preheader.i ]
end_hunk_0
