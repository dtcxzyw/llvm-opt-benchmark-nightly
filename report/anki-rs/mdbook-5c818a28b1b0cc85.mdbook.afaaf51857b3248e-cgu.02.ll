Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/mdbook-5c818a28b1b0cc85.mdbook.afaaf51857b3248e-cgu.02?download=true
inline.NumInlined: 903
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6mdbook8renderer15html_handlebars12hbs_renderer9make_data17hf80af2686be99b06E:bb.a
  %i.ala = icmp eq ptr %i.akz, null
  br i1 %i.ala, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.alb = load ptr, ptr %i.um, align 8, !nonnull !11, !noundef !11
  %i.alc = load i64, ptr %i.uo, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.alb, i64 noundef %i.alc)
          to label %bb.pr unwind label %.body201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pn:                                            ; preds = %bb.pl
  %i.ald = extractvalue { ptr, i64 } %i.uq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.akz, i64 noundef %i.ald)
          to label %bb.po unwind label %.body201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.po:                                            ; preds = %bb.pn
  %i.ale = load i64, ptr %i.bp, align 8, !range !10, !noundef !11
  %i.alf = trunc nuw i64 %i.ale to i1
  %i.alg = load ptr, ptr %i.ui, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.alh = load i64, ptr %i.uj, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br i1 %i.alf, label %.invoke1074, label %bb.pp, !prof !13

bb.pp:                                            ; preds = %bb.po
  %i.ali = load i64, ptr %i.ue, align 8, !alias.scope !2180, !noundef !11 ; 3 uses
  %i.alj = load i64, ptr %i.fb, align 8, !range !25, !alias.scope !2180, !noundef !11
  %i.alk = icmp eq i64 %i.ali, %i.alj
  br i1 %i.alk, label %bb.pq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit519"

bb.pq:                                            ; preds = %bb.pp
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17heef17696bf3be00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit519" unwind label %.body201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke1074:                                      ; preds = %bb.pr, %bb.po
  %i.all = phi ptr [ @354, %bb.po ], [ @355, %bb.pr ]
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @353, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.all) #20
          to label %.cont1075 unwind label %.body201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1075:                                        ; preds = %.invoke1074
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit519": ; preds = %bb.pp, %bb.pq, %bb.ps, %bb.pt
  %.sink1086 = phi i64 [ %i.alu, %bb.ps ], [ %i.alu, %bb.pt ], [ %i.ali, %bb.pq ], [ %i.ali, %bb.pp ] ; 2 uses
  %.sink1083 = phi ptr [ %i.als, %bb.ps ], [ %i.als, %bb.pt ], [ %i.alg, %bb.pq ], [ %i.alg, %bb.pp ]
  %.sink1080 = phi i64 [ %i.alt, %bb.ps ], [ %i.alt, %bb.pt ], [ %i.alh, %bb.pq ], [ %i.alh, %bb.pp ]
  %i.alm = load ptr, ptr %i.ud, align 8, !nonnull !11, !noundef !11
  %i.aln = getelementptr inbounds nuw [16 x i8], ptr %i.alm, i64 %.sink1086 ; 2 uses
  store ptr %.sink1083, ptr %i.aln, align 8, !noalias !11
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  store i64 %.sink1080, ptr %i.alo, align 8
  %storemerge809 = add i64 %.sink1086, 1
  store i64 %storemerge809, ptr %i.ue, align 8
  %i.alp = icmp eq ptr %.sroa.031.1937, %i.uh     ; 2 uses
  %.sroa.031.1.idx = select i1 %i.alp, i64 0, i64 24
  %.sroa.031.1 = getelementptr inbounds nuw i8, ptr %.sroa.031.1937, i64 %.sroa.031.1.idx
  br i1 %i.alp, label %._crit_edge940, label %bb.ge

bb.pr:                                            ; preds = %bb.pm
  %i.alq = load i64, ptr %i.bo, align 8, !range !10, !noundef !11
  %i.alr = trunc nuw i64 %i.alq to i1
  %i.als = load ptr, ptr %i.uk, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.alt = load i64, ptr %i.ul, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br i1 %i.alr, label %.invoke1074, label %bb.ps, !prof !13

bb.ps:                                            ; preds = %bb.pr
  %i.alu = load i64, ptr %i.ue, align 8, !alias.scope !2181, !noundef !11 ; 3 uses
  %i.alv = load i64, ptr %i.fb, align 8, !range !25, !alias.scope !2181, !noundef !11
  %i.alw = icmp eq i64 %i.alu, %i.alv
  br i1 %i.alw, label %bb.pt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit519"

bb.pt:                                            ; preds = %bb.ps
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17heef17696bf3be00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit519" unwind label %.body201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body204.thread:                                  ; preds = %bb.fu, %.body204.thread703
  %eh.lpad-body205702 = phi { ptr, i32 } [ %i.tm, %.body204.thread703 ], [ %i.tr, %bb.fu ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe) #21
          to label %.body204.loopexit.split-lp unwind label %bb.cg

bb.pu:                                            ; preds = %bb.fp
  %i.alx = extractvalue { ptr, i64 } %i.td, 0     ; 2 uses
  %i.aly = icmp eq ptr %i.alx, null
  br i1 %i.aly, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.alz = load ptr, ptr %i.sz, align 8, !nonnull !11, !noundef !11
  %i.ama = load i64, ptr %i.tb, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.alz, i64 noundef %i.ama)
          to label %bb.qa unwind label %.body204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pw:                                            ; preds = %bb.pu
  %i.amb = extractvalue { ptr, i64 } %i.td, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.alx, i64 noundef %i.amb)
          to label %bb.px unwind label %.body204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.px:                                            ; preds = %bb.pw
  %i.amc = load i64, ptr %i.br, align 8, !range !10, !noundef !11
  %i.amd = trunc nuw i64 %i.amc to i1
  %i.ame = load ptr, ptr %i.sv, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.amf = load i64, ptr %i.sw, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br i1 %i.amd, label %.invoke1072, label %bb.py, !prof !13

bb.py:                                            ; preds = %bb.px
  %i.amg = load i64, ptr %i.sr, align 8, !alias.scope !2182, !noundef !11 ; 3 uses
  %i.amh = load i64, ptr %i.fg, align 8, !range !25, !alias.scope !2182, !noundef !11
  %i.ami = icmp eq i64 %i.amg, %i.amh
  br i1 %i.ami, label %bb.pz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit523"

bb.pz:                                            ; preds = %bb.py
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17heef17696bf3be00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit523" unwind label %.body204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke1072:                                      ; preds = %bb.qa, %bb.px
  %i.amj = phi ptr [ @356, %bb.px ], [ @357, %bb.qa ]
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @353, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amj) #20
          to label %.cont1073 unwind label %.body204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1073:                                        ; preds = %.invoke1072
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit523": ; preds = %bb.py, %bb.pz, %bb.qb, %bb.qc
  %.sink1093 = phi i64 [ %i.ams, %bb.qb ], [ %i.ams, %bb.qc ], [ %i.amg, %bb.pz ], [ %i.amg, %bb.py ] ; 2 uses
  %.sink1090 = phi ptr [ %i.amq, %bb.qb ], [ %i.amq, %bb.qc ], [ %i.ame, %bb.pz ], [ %i.ame, %bb.py ]
  %.sink1087 = phi i64 [ %i.amr, %bb.qb ], [ %i.amr, %bb.qc ], [ %i.amf, %bb.pz ], [ %i.amf, %bb.py ]
  %i.amk = load ptr, ptr %i.sq, align 8, !nonnull !11, !noundef !11
  %i.aml = getelementptr inbounds nuw [16 x i8], ptr %i.amk, i64 %.sink1093 ; 2 uses
  store ptr %.sink1090, ptr %i.aml, align 8, !noalias !11
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  store i64 %.sink1087, ptr %i.amm, align 8
  %storemerge807 = add i64 %.sink1093, 1
  store i64 %storemerge807, ptr %i.sr, align 8
  %i.amn = icmp eq ptr %.sroa.017.1933, %i.su     ; 2 uses
  %.sroa.017.1.idx = select i1 %i.amn, i64 0, i64 24
  %.sroa.017.1 = getelementptr inbounds nuw i8, ptr %.sroa.017.1933, i64 %.sroa.017.1.idx
  br i1 %i.amn, label %._crit_edge, label %bb.fp

bb.qa:                                            ; preds = %bb.pv
  %i.amo = load i64, ptr %i.bq, align 8, !range !10, !noundef !11
  %i.amp = trunc nuw i64 %i.amo to i1
  %i.amq = load ptr, ptr %i.sx, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.amr = load i64, ptr %i.sy, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br i1 %i.amp, label %.invoke1072, label %bb.qb, !prof !13

bb.qb:                                            ; preds = %bb.qa
  %i.ams = load i64, ptr %i.sr, align 8, !alias.scope !2183, !noundef !11 ; 3 uses
  %i.amt = load i64, ptr %i.fg, align 8, !range !25, !alias.scope !2183, !noundef !11
  %i.amu = icmp eq i64 %i.ams, %i.amt
  br i1 %i.amu, label %bb.qc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit523"

bb.qc:                                            ; preds = %bb.qb
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17heef17696bf3be00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hef2a7aa4552f55e5E.exit523" unwind label %.body204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body210.thread:                                  ; preds = %bb.ej, %.body210.thread693
  %eh.lpad-body211692 = phi { ptr, i32 } [ %i.pz, %.body210.thread693 ], [ %i.qe, %bb.ej ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fu) #21
          to label %.body335 unwind label %bb.cg

.body213.thread:                                  ; preds = %bb.dr, %.body213.thread688
  %eh.lpad-body214687 = phi { ptr, i32 } [ %i.oo, %.body213.thread688 ], [ %i.ou, %bb.dr ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz) #21
          to label %.body426 unwind label %bb.cg

.body225.thread:                                  ; preds = %bb.bk, %.body225.thread668
  %eh.lpad-body226667 = phi { ptr, i32 } [ %i.kw, %.body225.thread668 ], [ %i.lb, %bb.bk ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs) #21
          to label %bb.bq unwind label %bb.cg

.body228.thread:                                  ; preds = %bb.ar, %.body228.thread660
  %eh.lpad-body229659 = phi { ptr, i32 } [ %i.jz, %.body228.thread660 ], [ %i.ke, %bb.ar ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx) #21
          to label %bb.ax unwind label %bb.cg

.body231.thread:                                  ; preds = %bb.ac, %.body231.thread651
  %eh.lpad-body232648 = phi { ptr, i32 } [ %lpad.thr_comm649, %.body231.thread651 ], [ %i.jk, %bb.ac ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hc) #21
          to label %.thread unwind label %bb.cg

.body234.thread:                                  ; preds = %bb.n, %.body234.thread644
  %eh.lpad-body235643 = phi { ptr, i32 } [ %i.ik, %.body234.thread644 ], [ %i.ip, %bb.n ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hh) #21
          to label %bb.t unwind label %bb.cg

.body239.thread631:                               ; preds = %.thread, %bb.ln, %bb.e
  %.pn159627 = phi { ptr, i32 } [ %i.afl, %bb.ln ], [ %.pn157, %bb.e ], [ %.pn159628, %.thread ]
  resume { ptr, i32 } %.pn159627

.thread:                                          ; preds = %bb.oq, %bb.bs, %bb.az, %bb.v, %.body216, %bb.i, %bb.t, %.body231.thread, %bb.am, %bb.ax, %bb.bf, %bb.bq, %.body222.thread, %.body219.thread, %.body216.thread, %bb.e
  %.pn159628 = phi { ptr, i32 } [ %eh.lpad-body217682, %.body216.thread ], [ %.pn157, %bb.e ], [ %i.ajy, %bb.oq ], [ %i.ij, %bb.i ], [ %.pn, %bb.t ], [ %i.iu, %bb.v ], [ %eh.lpad-body232648, %.body231.thread ], [ %i.jy, %bb.am ], [ %.pn111, %bb.ax ], [ %i.kv, %bb.bf ], [ %.pn115, %bb.bq ], [ %i.kj, %bb.az ], [ %eh.lpad-body223672, %.body222.thread ], [ %i.lg, %bb.bs ], [ %eh.lpad-body220677, %.body219.thread ], [ %i.ni, %.body216 ]
  invoke void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ec80ef1cfd082fcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %.body239.thread631 unwind label %bb.cg
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2193 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !10, !noundef !11
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !20, !alias.scope !2194, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2194, !nonnull !11, !align !19, !noundef !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2194, !noundef !11 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !2194 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !2196, !noalias !2197, !noundef !11
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !2198, !noundef !11 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i.peel": ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !2198, !noundef !11
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i.peel", label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i.peel"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !2198, !noundef !11
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i.peel", label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i.peel"
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !2198, !noundef !11
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i.peel"
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i.peel" ], [ %i.bb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i.peel" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i.peel" ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.peel", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.peel", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.peel"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.peel": ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !2195
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !11
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !11, !align !19, !noundef !11 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !11 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !11, !align !19, !noundef !11 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !11 ; 2 uses
  br i1 %i.by, label %bb.u, label %bb.t

bb.l:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.peel"
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !2196, !noalias !2199, !noundef !11
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.peel"
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !2200, !noundef !11 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i": ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !2200, !noundef !11
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.cj, -33
  br i1 %i.cs, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i", label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ct = zext nneg i8 %i.cj to i32
  br label %.loopexit.loopexit

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i"
  tail call void @llvm.assume(i1 %i.bs)
  %i.cu = load i8, ptr %i.bq, align 1, !noalias !2200, !noundef !11
  %i.cv = shl nuw nsw i32 %i.cq, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cm, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cj, -17
  br i1 %i.db, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i", label %.loopexit.loopexit

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i"
  tail call void @llvm.assume(i1 %i.bv)
  %i.dc = load i8, ptr %i.bt, align 1, !noalias !2200, !noundef !11
  %i.dd = shl nuw nsw i32 %i.cm, 18
  %i.de = and i32 %i.dd, 1835008
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.dc, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.de
  br label %.loopexit.loopexit

.loopexit74:                                      ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa70 = phi i8 [ %.promoted26, %.split.i.i.peel ], [ %.promoted26, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa67 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dk = xor i8 %.lcssa70, 1
  store i8 %i.dk, ptr %i.g, align 8, !alias.scope !2194
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa67, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #20, !noalias !2199
  unreachable

.loopexit.loopexit:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i", %bb.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i"
  %.sroa.4.0.i.ph.i = phi i32 [ %i.da, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit14.i.i" ], [ %i.dj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit16.i.i" ], [ %i.cr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71dc6b2b106a82feE.exit12.i.i" ], [ %i.ct, %bb.p ]
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %.loopexit

.loopexit75:                                      ; preds = %bb.d
  %i.dm = xor i8 %.promoted26, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !2194
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit75
  store i8 1, ptr %i.d, align 2, !alias.scope !2194
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7"

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa69 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !2194
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !2194
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit75
  %i.dn = phi i64 [ %.lcssa69, %.loopexit ], [ %i.k, %.loopexit75 ], [ %i.k, %.critedge ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %i.dp, align 8
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7": ; preds = %.preheader, %bb.q, %bb.r
  %storemerge = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.t, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7"
  ret void

bb.t:                                             ; preds = %bb.k
  tail call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h2dcbaee713614fd5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext false)
  br label %bb.s

bb.u:                                             ; preds = %bb.k
  tail call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h2dcbaee713614fd5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext true)
  br label %bb.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h29744d1a8e4dc91cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 !guid !2201 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4f9553f239598cdeE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !12, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h111236616ec106b0E.exit", !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #20
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h111236616ec106b0E.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.k, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_map17h0222a0e16a59d27cE(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_ZN6mdbook6config6Config11html_config17h4222107619357709E(ptr dead_on_unwind noalias noundef writable sret([488 x i8]) align 8 captures(address) dereferenceable(488), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN69_$LT$mdbook..config..HtmlConfig$u20$as$u20$core..default..Default$GT$7default17he0932a7a1155ea5bE"(ptr dead_on_unwind noalias noundef writable sret([488 x i8]) align 8 captures(address) dereferenceable(488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17he9e07afd2f2bc114E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs8metadata17ha638efe79dabc058E(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN6mdbook5utils2fs18remove_dir_content17h0270743a998a5197E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h40b28d4ce70f1202E"(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3log13__private_api3log17heec515f1ba0d1361E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), i64 noundef range(i64 1, 6), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10handlebars8registry8Registry3new17h7d2c47b1b32c66d6E(ptr dead_on_unwind noalias noundef writable sret([216 x i8]) align 8 captures(address) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17hff71bd3868ad4133E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std4path4Path6is_dir17he79931d066eda63bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17ha5e2872f289af66fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h62f1883b8325f545E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook5theme5Theme3new17h22a4daf644cf10caE(ptr dead_on_unwind noalias noundef writable sret([480 x i8]) align 8 captures(address) dereferenceable(480), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9a3a1765cee89adE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10handlebars8registry8Registry24register_template_string17hced68f1a7cac6202E(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef align 8 dereferenceable(216), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs14create_dir_all17hdda2410ef9af9c5bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h7862b890c3a9a3a3E"(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles3new17h979c9e2313eaa34aE(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(480), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(488), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN65_$LT$mdbook..config..Search$u20$as$u20$core..default..Default$GT$7default17he93dbd221d14e568E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN6mdbook8renderer15html_handlebars6search12create_files17h2703365ce1c3e977E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10handlebars8registry8Registry6render17h1aa2f042f9d881c3E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles11add_builtin17h15f7857e06837d99E(ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles10hash_files17h6c146a2a8f5243d0E(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles11write_files17h9af75181225c924eE(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h253672bfd145fc90E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10handlebars7helpers9HelperDef10call_inner17h39f92517a25584d6E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN120_$LT$mdbook..renderer..html_handlebars..helpers..resources..ResourceHelper$u20$as$u20$handlebars..helpers..HelperDef$GT$4call17haa353a4ca82f8baaE"(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(184), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10handlebars8registry8Registry15register_helper17ha0d3cb8829c66b4aE(ptr noalias noundef align 8 dereferenceable(216), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb6265bef86c0608eE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10serde_json5value8to_value17h02bf24b83a0f6ec1E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN6mdbook5utils2fs10write_file17hc6b7135391ff6960E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17h21e5f5e45038edecE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab401a495a37058bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6mdbook4book4book4Book4iter17hff6fb7def3e542c0E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable_or_null(168) ptr @"_ZN88_$LT$mdbook..book..book..BookItems$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7279276318bb0f46E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10serde_json5value8to_value17hb64e272643c5dff4E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17hc1e8e7df60adccccE"(ptr noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN6mdbook5utils2fs21copy_files_except_ext17hde41716979add801E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h07d10f2f3ea8900fE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4path4Path11to_path_buf17hde9f3f538e8905cbE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he1a242be3fde4c15E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hf8f66fcab5c6b75dE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hd53ae10b065e3cffE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_ZN14regex_automata4meta5regex5Regex15create_captures17h40a7a26c686e556fE(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17h303c599bb03bab1bE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h77c076b8983fdac4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hacd1e47e81704a8aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h9bc77b66211ca58fE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdb15a6181d25bda5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1990 = !{!1711, !1712, !1713}
!1991 = !{!1711, !1712}
!1992 = !{!1715}
!1993 = !{!1718, !1717}
!1994 = !{!1718}
!1995 = !{!1720}
!1996 = !{!1721}
!1997 = !{!1720, !1721, !1722}
!1998 = !{!1720, !1721}
!1999 = !{!1724}
!2000 = !{!1727, !1726}
!2001 = !{!1727}
!2002 = !{!1729}
!2003 = !{!1730}
!2004 = !{!1729, !1730, !1731}
!2005 = !{!1729, !1730}
!2006 = !{!1733}
!2007 = !{!1736, !1735}
!2008 = !{!1736}
!2009 = !{!1738}
!2010 = !{!1739}
!2011 = !{!1738, !1739, !1740}
!2012 = !{!1738, !1739}
!2013 = !{!1742}
!2014 = !{!1745, !1744}
!2015 = !{!1745}
!2016 = !{!1747}
!2017 = !{!1748}
!2018 = !{!1747, !1748, !1749}
!2019 = !{!1747, !1748}
!2020 = !{!1751}
!2021 = !{!1754, !1753}
!2022 = !{!1754}
!2023 = !{!1757, !1756}
!2024 = !{!1757}
!2025 = !{!1759}
!2026 = !{!1760}
!2027 = !{!1759, !1760, !1761}
!2028 = !{!1759, !1760}
!2029 = !{!1763}
!2030 = !{!1766, !1765}
!2031 = !{!1766}
!2032 = !{!1769, !1768}
!2033 = !{!1769}
!2034 = !{!1771}
!2035 = !{!1772}
!2036 = !{!1771, !1772, !1773}
!2037 = !{!1771, !1772}
!2038 = !{!1775}
!2039 = !{!1778, !1777}
!2040 = !{!1778}
!2041 = !{!1780}
!2042 = !{!1781}
!2043 = !{!1780, !1781, !1782}
!2044 = !{!1780, !1781}
!2045 = !{!1784}
!2046 = !{!1787, !1786}
!2047 = !{!1787}
!2048 = !{!1789}
!2049 = !{!1792, !1791}
!2050 = !{!1792}
!2051 = !{!1794}
!2052 = !{!1797, !1796}
!2053 = !{!1797}
!2054 = !{!1799}
!2055 = !{!1800}
!2056 = !{!1799, !1800, !1801}
!2057 = !{!1799, !1800}
!2058 = !{!1803}
!2059 = !{!1806, !1805}
!2060 = !{!1806}
!2061 = !{!1808}
!2062 = !{!1809}
!2063 = !{!1808, !1809, !1810}
!2064 = !{!1808, !1809}
!2065 = !{!1812}
!2066 = !{!1815, !1814}
!2067 = !{!1815}
!2068 = !{!1817}
!2069 = !{!1820, !1819}
!2070 = !{!1820}
!2071 = !{!1822}
!2072 = !{!1825, !1824}
!2073 = !{!1828, !1827}
!2074 = !{!1828}
!2075 = !{!1830}
!2076 = !{!1825}
!2077 = !{!1832}
!2078 = !{!1833}
!2079 = !{!1832, !1833, !1834}
!2080 = !{!1832, !1833}
!2081 = !{!1836}
!2082 = !{!1839, !1838}
!2083 = !{!1839}
!2084 = !{!1841}
!2085 = !{!1842}
!2086 = !{!1841, !1842, !1843}
!2087 = !{!1841, !1842}
!2088 = !{!1845}
!2089 = !{!1848, !1847}
!2090 = !{!1848}
!2091 = !{!1850}
!2092 = !{!1851}
!2093 = !{!1850, !1851, !1852}
!2094 = !{!1850, !1851}
!2095 = !{!1854}
!2096 = !{!1857, !1856}
!2097 = !{!1857}
!2098 = !{!1859}
!2099 = !{!1860}
!2100 = !{!1859, !1860, !1861}
!2101 = !{!1859, !1860}
!2102 = !{!1863}
!2103 = !{!1866, !1865}
!2104 = !{!1866}
!2105 = !{!1868}
!2106 = !{!1869}
!2107 = !{!1868, !1869, !1870}
!2108 = !{!1868, !1869}
!2109 = !{!1872}
!2110 = !{!1875, !1874}
!2111 = !{!1878, !1877}
!2112 = !{!1875}
!2113 = !{!1880}
!2114 = !{!1881}
!2115 = !{!1880, !1881, !1882}
!2116 = !{!1880, !1881}
!2117 = !{!1884}
!2118 = !{!1878}
!2119 = !{!1886}
!2120 = !{!1887}
!2121 = !{!1886, !1887, !1888}
!2122 = !{!1886, !1887}
!2123 = !{!1890}
!2124 = !{!1893, !1892}
!2125 = !{!1893}
!2126 = !{!1895}
!2127 = !{!1896}
!2128 = !{!1895, !1896, !1897}
!2129 = !{!1895, !1896}
!2130 = !{!1899}
!2131 = !{!1902, !1901}
!2132 = !{!1905, !1904}
!2133 = !{!1908, !1907}
!2134 = !{!1911, !1910}
!2135 = !{!1908}
!2136 = !{!1914, !1913}
!2137 = !{!1914}
!2138 = !{!1913}
!2139 = !{!1916}
!2140 = !{!1917}
!2141 = !{!1916, !1917, !1918}
!2142 = !{!1916, !1917}
!2143 = !{!1920}
!2144 = !{!1911}
!2145 = !{!1923, !1922}
!2146 = !{!1923}
!2147 = !{!1925}
!2148 = !{!1926}
!2149 = !{!1925, !1926, !1927}
!2150 = !{!1925, !1926}
!2151 = !{!1929}
!2152 = !{!1932, !1931}
!2153 = !{!1932}
!2154 = !{!1934}
!2155 = !{!1935}
!2156 = !{!1934, !1935, !1936}
!2157 = !{!1934, !1935}
!2158 = !{!1938}
!2159 = !{!1940}
!2160 = !{!1941}
!2161 = !{!1944, !1943}
!2162 = !{!1944}
!2163 = !{!1946}
!2164 = !{!1947}
!2165 = !{!1946, !1947, !1948}
!2166 = !{!1946, !1947}
!2167 = !{!1950}
!2168 = !{!1902}
!2169 = !{!1952}
!2170 = !{!1953}
!2171 = !{!1952, !1953, !1954}
!2172 = !{!1952, !1953}
!2173 = !{!1956}
!2174 = !{!1905}
!2175 = !{!1958}
!2176 = !{!1959}
!2177 = !{!1958, !1959, !1960}
!2178 = !{!1958, !1959}
!2179 = !{!1962}
!2180 = !{!1964}
!2181 = !{!1966}
!2182 = !{!1968}
!2183 = !{!1970}
!2184 = distinct !{!2184, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!2185 = distinct !{!2185, !2184, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1"}
!2186 = distinct !{!2186, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!2187 = distinct !{!2187, !2186, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1:Peel0"}
!2188 = distinct !{!2188, i1 true, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E"}
!2189 = distinct !{!2189, !2188, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E: argument 0"}
!2190 = distinct !{!2190, !2184, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 0"}
!2191 = distinct !{!2191, i1 true, !"_ZN4core3str11validations15next_code_point17hb0222e13a3542209E"}
!2192 = distinct !{!2192, !2191, !"_ZN4core3str11validations15next_code_point17hb0222e13a3542209E: argument 0"}
!2193 = !{i64 -3543410435443916653}
!2194 = !{!2185}
!2195 = !{!2187}
!2196 = !{!2189}
!2197 = !{!2190, !2187}
!2198 = !{!2192, !2190, !2187}
!2199 = !{!2190, !2185}
!2200 = !{!2192, !2190, !2185}
!2201 = !{i64 6913994257749660089}
end_hunk_1
