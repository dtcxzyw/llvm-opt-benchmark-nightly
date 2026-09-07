Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/chat_room?download=true
inline.NumInlined: 36272
inline.NumDeleted: 14368
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN6frozen4bits15make_pmh_tablesILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_ISt17basic_string_viewIcSD_EEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSS_RKT3_T4_:bb.a
  %i.em = sext i8 %i.el to i64
  %i.en = xor i64 %.0.i.i.1.i.4, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.01013.i.i.1.i, i64 6
  %.0.i.i.1.i.5 = mul i64 %i.en, 16777619
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !221, !noalias !7434
  %i.eq = sext i8 %i.ep to i64
  %i.er = xor i64 %.0.i.i.1.i.5, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.01013.i.i.1.i, i64 7
  %.0.i.i.1.i.6 = mul i64 %i.er, 16777619
  %i.et = load i8, ptr %i.es, align 1, !tbaa !221, !noalias !7434
  %i.eu = sext i8 %i.et to i64
  %i.ev = xor i64 %.0.i.i.1.i.6, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.01013.i.i.1.i, i64 8 ; 2 uses
  %.0.i.i.1.i.7 = mul i64 %i.ev, 16777619         ; 2 uses
  %.not.i.i.1.i.7 = icmp eq ptr %i.ew, %i.h
  br i1 %.not.i.i.1.i.7, label %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i, label %.lr.ph.i.i.1.i

_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i: ; preds = %.lr.ph.i.i.1.i.prol.loopexit, %.lr.ph.i.i.1.i, %bb.c
  %.0.lcssa.i.i.1.i = phi i64 [ %.011.i.i.1.i, %bb.c ], [ %.0.i.i.1.i.lcssa.unr, %.lr.ph.i.i.1.i.prol.loopexit ], [ %.0.i.i.1.i.7, %.lr.ph.i.i.1.i ]
  %i.ex = lshr i64 %.0.lcssa.i.i.1.i, 8
  %i.ey = and i64 %i.ex, 3
  %i.ez = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !3115, !alias.scope !7434 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 4
  br i1 %i.fc, label %_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_ISt17basic_string_viewIcSD_EEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit, label %.lr.ph.i.i.i.preheader.backedge

.lr.ph.i.i.i.preheader.backedge:                  ; preds = %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.i.loopexit
  br label %.lr.ph.i.i.i.preheader, !llvm.loop !7422

_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_ISt17basic_string_viewIcSD_EEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit: ; preds = %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i.us
  %.us-phi = phi ptr [ %i.bl, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i.us ], [ %i.ez, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i ] ; 2 uses
  %.us-phi49 = phi i64 [ %i.bn, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i.us ], [ %i.fb, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i ] ; 2 uses
  %.us-phi50 = phi i64 [ %i.n, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i.us ], [ %i.br, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit.1.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.fe = add nuw nsw i64 %.us-phi49, 1
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !3115, !alias.scope !7434
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.us-phi, i64 %.us-phi49
  store i64 1, ptr %i.ff, align 8, !tbaa !285, !alias.scope !7434
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7438)
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %7, align 8, !tbaa !222, !alias.scope !7439
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !3117, !alias.scope !7439
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.fj, align 8, !tbaa !222, !alias.scope !7439
  %.sroa.72.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.fg, ptr %.sroa.72.16..sroa_idx.i.i, align 8, !tbaa !3117, !alias.scope !7439
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 2, ptr %i.fk, align 8, !tbaa !222, !alias.scope !7439
  %.sroa.103.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.fh, ptr %.sroa.103.32..sroa_idx.i.i, align 8, !tbaa !3117, !alias.scope !7439
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i32 3, ptr %i.fl, align 8, !tbaa !222, !alias.scope !7439
  %.sroa.134.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.fi, ptr %.sroa.134.48..sroa_idx.i.i, align 8, !tbaa !3117, !alias.scope !7439
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43, !noalias !7438
  call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull %i.fl, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !7438
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !tbaa !7441
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 -1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_ISt17basic_string_viewIcSD_EEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit, %bb.i
  %.030.idx59 = phi i64 [ 0, %_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_ISt17basic_string_viewIcSD_EEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit ], [ %.030.add, %bb.i ] ; 2 uses
  %.sroa.040.058 = phi i64 [ %.us-phi50, %_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_ISt17basic_string_viewIcSD_EEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit ], [ %.sroa.040.3, %bb.i ] ; 3 uses
  %.030.ptr60 = getelementptr inbounds nuw i8, ptr %7, i64 %.030.idx59 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.030.ptr60, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !3119 ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !3115 ; 5 uses
  switch i64 %i.fq, label %.lr.ph.preheader [
    i64 1, label %bb.e
    i64 0, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.fr = load i64, ptr %i.fo, align 8, !tbaa !285
  %i.fs = and i64 %i.fr, 9223372036854775807
  %i.ft = load i32, ptr %.030.ptr60, align 8, !tbaa !7442
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.fu
  store i64 %i.fs, ptr %i.fv, align 8, !tbaa !285
  br label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.fw = mul nuw nsw i64 %.sroa.040.058, 48271
  %i.fx = urem i64 %i.fw, 2147483647              ; 2 uses
  %i.fy = or disjoint i64 %i.fx, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.fz = phi i64 [ %i.id, %bb.h ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.040.152 = phi i64 [ %.sroa.040.2, %bb.h ], [ %i.fx, %.lr.ph.preheader ] ; 2 uses
  %.sroa.035.051 = phi i64 [ %.sroa.035.1, %bb.h ], [ %i.fy, %.lr.ph.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !285
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.gb ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.gc, align 8, !tbaa !1001 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !285 ; 4 uses
  %i.gd = xor i64 %.sroa.035.051, 2166136261
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %.011.i.i = mul i64 %i.gd, 16777619             ; 3 uses
  %.not12.i.i = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not12.i.i, label %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %xtraiter102 = and i64 %.sroa.2.0.copyload, 7   ; 2 uses
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.014.i.i.prol = phi i64 [ %.0.i.i.prol, %.lr.ph.i.i.prol ], [ %.011.i.i, %.lr.ph.i.i.preheader ]
  %.01013.i.i.prol = phi ptr [ %i.gi, %.lr.ph.i.i.prol ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter104 = phi i64 [ %prol.iter104.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.gf = load i8, ptr %.01013.i.i.prol, align 1, !tbaa !221
  %i.gg = sext i8 %i.gf to i64
  %i.gh = xor i64 %.014.i.i.prol, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.01013.i.i.prol, i64 1 ; 2 uses
  %.0.i.i.prol = mul i64 %i.gh, 16777619          ; 3 uses
  %prol.iter104.next = add i64 %prol.iter104, 1   ; 2 uses
  %prol.iter104.cmp.not = icmp eq i64 %prol.iter104.next, %xtraiter102
  br i1 %prol.iter104.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !7429

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.014.i.i.unr = phi i64 [ %.011.i.i, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.01013.i.i.unr = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ], [ %i.gi, %.lr.ph.i.i.prol ]
  %i.gj = icmp ult i64 %.sroa.2.0.copyload, 8
  br i1 %i.gj, label %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %.0.i.i.7, %.lr.ph.i.i ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01013.i.i = phi ptr [ %i.hp, %.lr.ph.i.i ], [ %.01013.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.gk = load i8, ptr %.01013.i.i, align 1, !tbaa !221
  %i.gl = sext i8 %i.gk to i64
  %i.gm = xor i64 %.014.i.i, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 1
  %.0.i.i = mul i64 %i.gm, 16777619
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !221
  %i.gp = sext i8 %i.go to i64
  %i.gq = xor i64 %.0.i.i, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2
  %.0.i.i.1 = mul i64 %i.gq, 16777619
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !221
  %i.gt = sext i8 %i.gs to i64
  %i.gu = xor i64 %.0.i.i.1, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 3
  %.0.i.i.2 = mul i64 %i.gu, 16777619
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !221
  %i.gx = sext i8 %i.gw to i64
  %i.gy = xor i64 %.0.i.i.2, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 4
  %.0.i.i.3 = mul i64 %i.gy, 16777619
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !221
  %i.hb = sext i8 %i.ha to i64
  %i.hc = xor i64 %.0.i.i.3, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 5
  %.0.i.i.4 = mul i64 %i.hc, 16777619
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !221
  %i.hf = sext i8 %i.he to i64
  %i.hg = xor i64 %.0.i.i.4, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 6
  %.0.i.i.5 = mul i64 %i.hg, 16777619
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !221
  %i.hj = sext i8 %i.hi to i64
  %i.hk = xor i64 %.0.i.i.5, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 7
  %.0.i.i.6 = mul i64 %i.hk, 16777619
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !221
  %i.hn = sext i8 %i.hm to i64
  %i.ho = xor i64 %.0.i.i.6, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 8 ; 2 uses
  %.0.i.i.7 = mul i64 %i.ho, 16777619             ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.hp, %i.ge
  br i1 %.not.i.i.7, label %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit, label %.lr.ph.i.i

_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ %.011.i.i, %.lr.ph ], [ %.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.0.i.i.7, %.lr.ph.i.i ]
  %i.hq = lshr i64 %.0.lcssa.i.i, 8
  %i.hr = and i64 %i.hq, 3                        ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !285
  %.not33 = icmp eq i64 %i.ht, -1
  br i1 %.not33, label %bb.f, label %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit

bb.f:                                             ; preds = %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit
  %i.hu = icmp eq i64 %i.fz, 0
  br i1 %i.hu, label %.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.hv = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hv, %i.fz
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7430

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.079.i = phi i64 [ %i.hv, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.079.i
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !285
  %.not.i = icmp eq i64 %i.hx, %i.hr
  br i1 %.not.i, label %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit, label %bb.g

_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit: ; preds = %.lr.ph.i, %_ZNK6frozen4elsaINS_12basic_stringIcEEEclES2_m.exit
  store i64 0, ptr %i.fm, align 8, !tbaa !3115
  %i.hy = mul nuw nsw i64 %.sroa.040.152, 48271
  %i.hz = urem i64 %i.hy, 2147483647              ; 2 uses
  %i.ia = or disjoint i64 %i.hz, -9223372036854775808
  br label %bb.h, !llvm.loop !7431

.loopexit:                                        ; preds = %bb.g, %bb.f
  %i.ib = add nuw nsw i64 %i.fz, 1
  store i64 %i.ib, ptr %i.fm, align 8, !tbaa !3115
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fz
  store i64 %i.hr, ptr %i.ic, align 8, !tbaa !285
  %.pre = load i64, ptr %i.fm, align 8, !tbaa !3115
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit
  %i.id = phi i64 [ %.pre, %.loopexit ], [ 0, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.035.1 = phi i64 [ %.sroa.035.051, %.loopexit ], [ %i.ia, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.040.2 = phi i64 [ %.sroa.040.152, %.loopexit ], [ %i.hz, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.fq
  br i1 %i.ie, label %.lr.ph, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %bb.h
  %i.if = load i32, ptr %.030.ptr60, align 8, !tbaa !7442
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ig
  store i64 %.sroa.035.1, ptr %i.ih, align 8, !tbaa !285
  %i.ii = add i64 %i.fq, -1
  %xtraiter105 = and i64 %i.fq, 3                 ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 3
  br i1 %i.ij, label %.lr.ph56.epil.preheader, label %.lr.ph56.preheader.new

.lr.ph56.preheader.new:                           ; preds = %.lr.ph56.preheader
  %unroll_iter = and i64 %i.fq, -4
  br label %.lr.ph56

._crit_edge57.unr-lcssa:                          ; preds = %.lr.ph56
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %._crit_edge57, label %.lr.ph56.epil.preheader

.lr.ph56.epil.preheader:                          ; preds = %._crit_edge57.unr-lcssa, %.lr.ph56.preheader
  %.02954.epil.init = phi i64 [ 0, %.lr.ph56.preheader ], [ %i.jn, %._crit_edge57.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter105, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph56.epil

.lr.ph56.epil:                                    ; preds = %.lr.ph56.epil, %.lr.ph56.epil.preheader
  %.02954.epil = phi i64 [ %i.ip, %.lr.ph56.epil ], [ %.02954.epil.init, %.lr.ph56.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph56.epil ], [ 0, %.lr.ph56.epil.preheader ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.02954.epil
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !285
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02954.epil
  %i.in = load i64, ptr %i.im, align 8, !tbaa !285
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.in
  store i64 %i.il, ptr %i.io, align 8, !tbaa !285
  %i.ip = add nuw nsw i64 %.02954.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter105
  br i1 %epil.iter.cmp.not, label %._crit_edge57, label %.lr.ph56.epil, !llvm.loop !7432

._crit_edge57:                                    ; preds = %.lr.ph56.epil, %._crit_edge57.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %bb.i

.lr.ph56:                                         ; preds = %.lr.ph56, %.lr.ph56.preheader.new
  %.02954 = phi i64 [ 0, %.lr.ph56.preheader.new ], [ %i.jn, %.lr.ph56 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.preheader.new ], [ %niter.next.3, %.lr.ph56 ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.02954
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !285
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02954
  %i.it = load i64, ptr %i.is, align 8, !tbaa !285
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.it
  store i64 %i.ir, ptr %i.iu, align 8, !tbaa !285
  %i.iv = or disjoint i64 %.02954, 1              ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !285
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.iv
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !285
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.iz
  store i64 %i.ix, ptr %i.ja, align 8, !tbaa !285
  %i.jb = or disjoint i64 %.02954, 2              ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.jb
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !285
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.jb
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !285
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.jf
  store i64 %i.jd, ptr %i.jg, align 8, !tbaa !285
  %i.jh = or disjoint i64 %.02954, 3              ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !285
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.jh
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !285
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.jl
  store i64 %i.jj, ptr %i.jm, align 8, !tbaa !285
  %i.jn = add nuw nsw i64 %.02954, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge57.unr-lcssa, label %.lr.ph56, !llvm.loop !7433

bb.i:                                             ; preds = %bb.d, %._crit_edge57, %bb.e
  %.sroa.040.3 = phi i64 [ %.sroa.040.2, %._crit_edge57 ], [ %.sroa.040.058, %bb.e ], [ %.sroa.040.058, %bb.d ]
  %.030.add = add nuw nsw i64 %.030.idx59, 16     ; 2 uses
  %.not = icmp eq i64 %.030.add, 64
  br i1 %.not, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.i
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.jr = load i64, ptr %9, align 8, !tbaa !285   ; 2 uses
  %i.js = icmp eq i64 %i.jr, -1
  %spec.store.select = select i1 %i.js, i64 0, i64 %i.jr
  store i64 %spec.store.select, ptr %9, align 8
  %i.jt = load i64, ptr %i.jq, align 8, !tbaa !285 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, -1
  %spec.store.select.1 = select i1 %i.ju, i64 0, i64 %i.jt
  store i64 %spec.store.select.1, ptr %i.jq, align 8
  %i.jv = load i64, ptr %i.jp, align 8, !tbaa !285 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, -1
  %spec.store.select.2 = select i1 %i.jw, i64 0, i64 %i.jv
  store i64 %spec.store.select.2, ptr %i.jp, align 8
  %i.jx = load i64, ptr %i.jo, align 8, !tbaa !285 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, -1
  %spec.store.select.3 = select i1 %i.jy, i64 0, i64 %i.jx
  store i64 %spec.store.select.3, ptr %i.jo, align 8
  %i.jz = load i64, ptr %i.a, align 8, !tbaa !7437
  store i64 %i.jz, ptr %0, align 8, !tbaa !3124
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !2606
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !2606
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat {
bb.a:
  %3 = alloca %"struct.frozen::bits::pmh_buckets<4>::bucket_ref", align 8 ; 4 uses
  %4 = alloca %"struct.frozen::bits::pmh_buckets<4>::bucket_ref", align 8 ; 4 uses
  %5 = alloca %"struct.frozen::bits::pmh_buckets<4>::bucket_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit
  %i.e = phi i64 [ %i.v, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %i.c, %bb.a ]
  %.09 = phi ptr [ %i.t, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.f = lshr i64 %i.e, 5
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.09, i64 %i.f ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !3117
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !7445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !7445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7445
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi ptr [ %.09, %.lr.ph.i ], [ %i.p, %bb.d ] ; 4 uses
  %.01819.i = phi ptr [ %.09, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3119
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3115
  %i.m = load i64, ptr %i.h, align 8, !tbaa !3115
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.020.i, i64 16, i1 false), !tbaa.struct !7445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, i64 16, i1 false), !tbaa.struct !7445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !7445
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %.01819.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.o, %bb.c ], [ %.01819.i, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.a, %i.q
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, !llvm.loop !7443

_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !7445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.1.i, i64 16, i1 false), !tbaa.struct !7445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !7445
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %.09, ptr noundef nonnull %.1.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.a, %i.u                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge, !llvm.loop !7444

._crit_edge:                                      ; preds = %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvZN6iguana9from_jsonI9message_tPKcTnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRS6_OT0_SB_EUlS6_E_JRN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES6_St14__invoke_otherSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !285
  %i.a = load ptr, ptr %0, align 8, !tbaa !3127, !nonnull !295, !align !426
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.copyload ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3128, !nonnull !295, !align !426 ; 25 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3129, !nonnull !295, !align !426 ; 13 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1001 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1001
  %.not.i.i66 = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i66, label %_ZN6iguana7skip_wsIRPKcEEvOT_S5_.exit.i.thread, label %.lr.ph67, !prof !824

.lr.ph67:                                         ; preds = %bb.a, %_ZN6iguana12skip_commentIRPKcEEvOT_S5_.exit.i
  %i.i = phi ptr [ %i.ao, %_ZN6iguana12skip_commentIRPKcEEvOT_S5_.exit.i ], [ %i.g, %bb.a ] ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !221   ; 2 uses
  %i.k = icmp ult i8 %i.j, 33
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph67
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %_ZN6iguana12skip_commentIRPKcEEvOT_S5_.exit.i.sink.split

bb.c:                                             ; preds = %.lr.ph67
  %i.m = icmp eq i8 %i.j, 47
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 5 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1001
  br i1 %i.m, label %bb.d, label %_ZN6iguana7skip_wsIRPKcEEvOT_S5_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !1001
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.h, !prof !227

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.1379)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.q) #43
  br label %common.resume

bb.h:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.n, align 1, !tbaa !221
  switch i8 %i.s, label %bb.n [
    i8 47, label %.preheader
    i8 42, label %.preheader41
  ], !prof !3130

.preheader41:                                     ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 4 uses
  store ptr %i.t, ptr %i.d, align 8, !tbaa !1001
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !1001
  %.not.i25.i64 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i25.i64, label %_ZN6iguana12skip_commentIRPKcEEvOT_S5_.exit.i, label %.lr.ph

.preheader:                                       ; preds = %bb.h, %bb.i
  %i.v = phi ptr [ %i.w, %bb.i ], [ %i.n, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 6 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1001
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !1001
  %.not22.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not22.i.i, label %_ZN6iguana12skip_commentIRPKcEEvOT_S5_.exit.i, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.y = load i8, ptr %i.w, align 1, !tbaa !221
  %.not23.i.i = icmp eq i8 %i.y, 10
  br i1 %.not23.i.i, label %_ZN6iguana12skip_commentIRPKcEEvOT_S5_.exit.i, label %.preheader, !llvm.loop !175

.lr.ph:                                           ; preds = %.preheader41, %bb.m
  %i.z = phi ptr [ %i.ak, %bb.m ], [ %i.t, %.preheader41 ] ; 2 uses
  %i.aa = phi ptr [ %i.aj, %bb.m ], [ %i.n, %.preheader41 ] ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !221
  %i.ac = icmp eq i8 %i.ab, 42
end_hunk_0
