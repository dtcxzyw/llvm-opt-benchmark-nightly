Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB3_6PikeVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1v_NtB1v_11ScanContext17handle_atom_match0Es1_0EB9_:bb.a
  %.sroa.16.13 = select i1 %or.cond277, i64 %.sroa.27.9, i64 %.sroa.16.12 ; 3 uses
  %.sroa.0262.13 = select i1 %or.cond277, i64 1, i64 %.sroa.0262.12 ; 3 uses
  %i.bhn = add i64 %.sroa.27.9, 1                 ; 3 uses
  %i.bho = add i64 %.sroa.0.61670.i, 1            ; 3 uses
  %i.bhp = load i8, ptr %i.bhk, align 1, !noalias !555, !noundef !27
  %.not63.i125 = icmp eq i8 %i.bhp, %.sroa.6.0.i.i124
  br i1 %.not63.i125, label %bb.ro, label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10BckCodeLocEB8_.exit.i

._crit_edge1673.i:                                ; preds = %bb.rr, %bb.rp, %bb.ro, %bb.rn
  %.sroa.16.10 = phi i64 [ %.sroa.16.5, %bb.rn ], [ %.sroa.16.12, %bb.rp ], [ %.sroa.16.12, %bb.rr ], [ %.sroa.16.13, %bb.ro ] ; 3 uses
  %.sroa.0262.10 = phi i64 [ %.sroa.0262.5, %bb.rn ], [ %.sroa.0262.12, %bb.rp ], [ %.sroa.0262.12, %bb.rr ], [ %.sroa.0262.13, %bb.ro ] ; 4 uses
  %.sroa.27.8 = phi i64 [ %.sroa.27.3, %bb.rn ], [ %.sroa.27.9, %bb.rp ], [ %.sroa.27.9, %bb.rr ], [ %i.bhn, %bb.ro ] ; 4 uses
  %.sroa.6234.8 = phi ptr [ %.sroa.6234.3, %bb.rn ], [ %.sroa.6234.9, %bb.rp ], [ %.sroa.6234.9, %bb.rr ], [ %i.bhk, %bb.ro ] ; 4 uses
  %.sroa.11.1.lcssa.i121 = phi i64 [ %i.bgw, %bb.rn ], [ %.sroa.11.11668.i, %bb.rp ], [ %.sroa.11.11668.i, %bb.rr ], [ %i.bhg, %bb.ro ] ; 3 uses
  %.sroa.023.6.lcssa.i122 = phi ptr [ %.sroa.046.01685.i, %bb.rn ], [ %.sroa.023.61669.i, %bb.rp ], [ %.sroa.023.61669.i, %bb.rr ], [ %i.bhk, %bb.ro ] ; 3 uses
  %.sroa.0.6.lcssa.i123 = phi i64 [ %i.bgz, %bb.rn ], [ %.sroa.0.61670.i, %bb.rp ], [ %.sroa.0.61670.i, %bb.rr ], [ %i.bho, %bb.ro ] ; 3 uses
  %i.bhq = icmp eq ptr %4, %.sroa.6234.8
  br i1 %i.bhq, label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i, label %bb.ru

bb.ru:                                            ; preds = %._crit_edge1673.i
  %i.bhr = getelementptr inbounds i8, ptr %.sroa.6234.8, i64 -1 ; 3 uses
  %i.bhs = icmp eq ptr %4, %i.bhr
  br i1 %i.bhs, label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.sink.split.i632.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.sink.split.i632.i: ; preds = %bb.ru
  %i.bht = getelementptr inbounds i8, ptr %.sroa.6234.8, i64 -2 ; 2 uses
  %i.bhu = load i8, ptr %i.bhr, align 1, !noalias !1063, !noundef !27
  %i.bhv = icmp ne i8 %i.bhu, 0
  %.not9.i638.i = icmp eq i64 %.sroa.0262.10, 0
  %or.cond278 = select i1 %i.bhv, i1 %.not9.i638.i, i1 false ; 2 uses
  %.sroa.16.11 = select i1 %or.cond278, i64 %.sroa.27.8, i64 %.sroa.16.10
  %.sroa.0262.11 = select i1 %or.cond278, i64 1, i64 %.sroa.0262.10
  %i.bhw = add i64 %.sroa.27.8, 1
  br label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i

bb.rv:                                            ; preds = %bb.np
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.asq, i64 2
  %i.bhy = load i8, ptr %i.bhx, align 1, !alias.scope !793, !noalias !796, !noundef !27
  %i.bhz = load i8, ptr %.sroa.023.11687.i, align 1, !noalias !555, !noundef !27 ; 2 uses
  %i.bia = add i8 %i.bhz, -65
  %i.bib = icmp ult i8 %i.bia, 26
  %i.bic = select i1 %i.bib, i8 32, i8 0
  %.sroa.055.0.i135 = or i8 %i.bic, %i.bhz
  %i.bid = icmp eq i8 %.sroa.055.0.i135, %i.bhy
  br i1 %i.bid, label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i, label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10BckCodeLocEB8_.exit.i

bb.rw:                                            ; preds = %bb.nq
  %i.bie = getelementptr inbounds nuw i8, ptr %i.asq, i64 3
  %i.bif = load i8, ptr %i.bie, align 1, !alias.scope !793, !noalias !796, !noundef !27
  %i.big = getelementptr inbounds nuw i8, ptr %i.asq, i64 2
  %i.bih = load i8, ptr %i.big, align 1, !alias.scope !793, !noalias !796, !noundef !27
  %i.bii = load i8, ptr %.sroa.023.11687.i, align 1, !noalias !555, !noundef !27
  %i.bij = and i8 %i.bii, %i.bif
  %i.bik = icmp eq i8 %i.bij, %i.bih
  br i1 %i.bik, label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i, label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10BckCodeLocEB8_.exit.i

_RNvMse_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11ClassBitmap8contains.exit.i137: ; preds = %bb.nr
  %i.bil = getelementptr inbounds nuw i8, ptr %i.asq, i64 2
  %i.bim = load i8, ptr %.sroa.023.11687.i, align 1, !noalias !555, !noundef !27 ; 2 uses
  %i.bin = lshr i8 %i.bim, 3
  %i.bio = zext nneg i8 %i.bin to i64
  %i.bip = and i8 %i.bim, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1066
  store i64 %i.bio, ptr %i.a, align 8, !noalias !1066
  %i.biq = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConsthE8with_ptrhNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.bil, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  %.val.i.i.i138 = load i8, ptr %i.biq, align 1, !noalias !1070, !noundef !27
  %i.bir = lshr i8 %.val.i.i.i138, %i.bip
  %i.bis = trunc i8 %i.bir to i1
  br i1 %i.bis, label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i, label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10BckCodeLocEB8_.exit.i

bb.rx:                                            ; preds = %bb.ns
  %i.bit = load i8, ptr %.sroa.023.11687.i, align 1, !noalias !555, !noundef !27
  %i.biu = call noundef zeroext i1 @_RNvMsc_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11ClassRanges8contains(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ay, i8 noundef %i.bit), !noalias !555
  br i1 %i.biu, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !811
  br label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10BckCodeLocEB8_.exit.i

bb.rz:                                            ; preds = %bb.rx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !811
  br label %_RNvXs4_NtCs7gfv9tzbXmh_6yara_x2reINtB5_8WideIterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBT_5slice4iter4IterhEEENtNtNtBR_6traits8iterator8Iterator4nextB7_.exit639.i

bb.sa:                                            ; preds = %_RNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB5_6PikeVM9try_matchNtB9_10BckCodeLocNCINvNtNtBb_7scanner7context13verify_regexpNCNvMs0_B1x_NtB1x_11ScanContext17handle_atom_match0Es1_0Es_0Bb_.exit.i
  store i64 0, ptr %i.agi, align 8, !alias.scope !545, !noalias !555
  br label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB3_6PikeVM14try_match_implNtB7_10BckCodeLocINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtB1F_5slice4iter4IterhEEB2k_NCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B2X_NtB2X_11ScanContext17handle_atom_match0Es1_0EB9_.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB3_6PikeVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1v_NtB1v_11ScanContext17handle_atom_match0Es_0EB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1128) %0, i32 noundef range(i32 1, 0) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i1 noundef zeroext %6, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 3 uses
  %i.p = alloca [1 x i8], align 1                 ; 3 uses
  %i.q = alloca [1 x i8], align 1                 ; 3 uses
  %i.r = alloca [1 x i8], align 1                 ; 3 uses
  %i.s = alloca [1 x i8], align 1                 ; 3 uses
  %i.t = alloca [1 x i8], align 1                 ; 3 uses
  %i.u = alloca [1 x i8], align 1                 ; 3 uses
  %i.v = alloca [1 x i8], align 1                 ; 3 uses
  %i.w = alloca [1 x i8], align 1                 ; 3 uses
  %i.x = alloca [1 x i8], align 1                 ; 3 uses
  %i.y = alloca [1 x i8], align 1                 ; 3 uses
  %i.z = alloca [1 x i8], align 1                 ; 3 uses
  %i.aa = alloca [1 x i8], align 1                ; 3 uses
  %i.ab = alloca [1 x i8], align 1                ; 3 uses
  %i.ac = alloca [1 x i8], align 1                ; 3 uses
  %i.ad = alloca [1 x i8], align 1                ; 3 uses
  %i.ae = alloca [1 x i8], align 1                ; 3 uses
  %i.af = alloca [1 x i8], align 1                ; 3 uses
  %i.ag = alloca [1 x i8], align 1                ; 3 uses
  %i.ah = alloca [1 x i8], align 1                ; 3 uses
  %i.ai = alloca [1 x i8], align 1                ; 3 uses
  %i.aj = alloca [1 x i8], align 1                ; 3 uses
  %i.ak = alloca [1 x i8], align 1                ; 3 uses
  %i.al = alloca [1 x i8], align 1                ; 3 uses
  %i.am = alloca [1 x i8], align 1                ; 3 uses
  %i.an = alloca [1 x i8], align 1                ; 3 uses
  %i.ao = alloca [1 x i8], align 1                ; 3 uses
  %i.ap = alloca [1 x i8], align 1                ; 3 uses
  %i.aq = alloca [1 x i8], align 1                ; 3 uses
  %i.ar = alloca [1 x i8], align 1                ; 3 uses
  %i.as = alloca [1 x i8], align 1                ; 3 uses
  %i.at = alloca [1 x i8], align 1                ; 3 uses
  %i.au = alloca [1 x i8], align 1                ; 3 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [1 x i8], align 1                ; 3 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [1 x i8], align 1                ; 3 uses
  %i.bn = alloca [1 x i8], align 1                ; 3 uses
  %i.bo = alloca [1 x i8], align 1                ; 3 uses
  %i.bp = alloca [1 x i8], align 1                ; 3 uses
  %i.bq = alloca [1 x i8], align 1                ; 3 uses
  %i.br = alloca [1 x i8], align 1                ; 3 uses
  %i.bs = alloca [1 x i8], align 1                ; 3 uses
  %i.bt = alloca [1 x i8], align 1                ; 3 uses
  %i.bu = alloca [1 x i8], align 1                ; 3 uses
  %i.bv = alloca [1 x i8], align 1                ; 3 uses
  %i.bw = alloca [1 x i8], align 1                ; 3 uses
  %i.bx = alloca [1 x i8], align 1                ; 3 uses
  %i.by = alloca [1 x i8], align 1                ; 3 uses
  %i.bz = alloca [1 x i8], align 1                ; 3 uses
  %i.ca = alloca [1 x i8], align 1                ; 3 uses
  %i.cb = alloca [1 x i8], align 1                ; 3 uses
  %i.cc = alloca [1 x i8], align 1                ; 3 uses
  %i.cd = alloca [1 x i8], align 1                ; 3 uses
  %i.ce = alloca [1 x i8], align 1                ; 3 uses
  %i.cf = alloca [1 x i8], align 1                ; 3 uses
  %i.cg = alloca [1 x i8], align 1                ; 3 uses
  %i.ch = alloca [1 x i8], align 1                ; 3 uses
  %i.ci = alloca [1 x i8], align 1                ; 3 uses
  %i.cj = alloca [1 x i8], align 1                ; 3 uses
  %i.ck = alloca [1 x i8], align 1                ; 3 uses
  %i.cl = alloca [1 x i8], align 1                ; 3 uses
  %i.cm = alloca [1 x i8], align 1                ; 3 uses
  %i.cn = alloca [1 x i8], align 1                ; 3 uses
  %i.co = alloca [1 x i8], align 1                ; 3 uses
  %i.cp = alloca [1 x i8], align 1                ; 3 uses
  %i.cq = alloca [1 x i8], align 1                ; 3 uses
  %i.cr = alloca [1 x i8], align 1                ; 3 uses
  %i.cs = alloca [1 x i8], align 1                ; 3 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  br i1 %6, label %bb.ik, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.cy = ptrtoaddr ptr %i.cw to i64
  %i.cz = icmp samesign ne i64 %3, 0              ; 2 uses
  %spec.select.idx.i = zext i1 %i.cz to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx.i
  %spec.select1391.i = select i1 %i.cz, ptr %2, ptr null
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !1071, !noalias !1074, !nonnull !27, !noundef !27
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !1071, !noalias !1074, !noundef !27 ; 2 uses
  %i.de = icmp samesign eq i64 %5, 0              ; 6 uses
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 -1 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 34 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.dh = zext i32 %1 to i64
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 47 uses
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !1085, !noalias !1088, !noundef !27 ; 3 uses
  %i.dl = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1085, !noalias !1088, !noundef !27
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1088
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.c, %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 18 uses
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !1085, !noalias !1088, !nonnull !27, !noundef !27
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dk ; 2 uses
  store i64 %i.di, ptr %i.dp, align 8, !noalias !1088
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 0, ptr %i.dq, align 8, !noalias !1088
  %i.dr = add i64 %i.dk, 1                        ; 3 uses
  store i64 %i.dr, ptr %i.dj, align 8, !alias.scope !1085, !noalias !1088
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 14 uses
  store i8 1, ptr %i.ds, align 8, !alias.scope !1090, !noalias !1088
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i, label %.lr.ph1711.i

.lr.ph1711.i:                                     ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i
  %not..i = icmp samesign eq i64 %3, 0            ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i: ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ei = add i64 %i.cy, 1
  %.pre1998.i = load i64, ptr %i.dy, align 8, !alias.scope !1071, !noalias !1074
  br label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.i

bb.d:                                             ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i, %.lr.ph1711.i
  %i.ej = phi i64 [ %i.dr, %.lr.ph1711.i ], [ %.pr.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i ] ; 22 uses
  %i.ek = add nsw i64 %i.ej, -1                   ; 5 uses
  store i64 %i.ek, ptr %i.dj, align 8, !alias.scope !1090, !noalias !1088
  %i.el = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1090, !noalias !1088, !noundef !27
  %i.em = icmp samesign ult i64 %i.ek, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = load ptr, ptr %i.dn, align 8, !alias.scope !1090, !noalias !1088, !nonnull !27, !noundef !27
  %i.eo = icmp samesign ult i64 %i.ej, 576460752303423489
  call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.ek ; 12 uses
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !1091, !noundef !27 ; 22 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.es = load i32, ptr %i.er, align 8, !noalias !1091, !noundef !27 ; 8 uses
  %i.et = sub nuw i64 %i.dd, %i.eq                ; 26 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.eq ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.ev = icmp samesign ugt i64 %i.et, 1
  br i1 %i.ev, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not92.i.i = icmp eq i64 %i.dd, %i.eq
  br i1 %.not92.i.i, label %bb.y, label %.thread.thread.i, !prof !53

bb.f:                                             ; preds = %bb.d
  %i.ew = load i8, ptr %i.eu, align 1, !alias.scope !1092, !noalias !1095, !noundef !27
  %i.ex = icmp eq i8 %i.ew, -86
  br i1 %i.ex, label %bb.g, label %.thread.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !1092, !noalias !1095, !noundef !27 ; 4 uses
  %i.fa = icmp eq i8 %i.ez, 5
  br i1 %i.fa, label %.thread.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fb = icmp samesign ugt i64 %i.et, 3
  br i1 %i.fb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i304.i = icmp ne i64 %i.et, 2
  %i.fc = icmp eq i8 %i.ez, 7
  %or.cond.i = and i1 %.not.i304.i, %i.fc
  br i1 %or.cond.i, label %.thread.thread.i, label %.thread907.i

bb.j:                                             ; preds = %bb.h
  switch i8 %i.ez, label %.thread.thread.i [
    i8 15, label %_RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12decode_instr.exit.i
    i8 14, label %bb.al
    i8 4, label %bb.af
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.p
    i8 16, label %bb.s
    i8 17, label %bb.v
    i8 9, label %bb.k
    i8 8, label %bb.l
    i8 10, label %bb.ag
    i8 11, label %bb.ah
    i8 18, label %bb.ai
    i8 19, label %bb.aj
    i8 12, label %bb.ak
    i8 13, label %bb.m
  ]

.thread907.i:                                     ; preds = %bb.i
  switch i8 %i.ez, label %.thread.thread.i [
    i8 4, label %bb.af
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.q
    i8 16, label %.thread2392.i
    i8 17, label %.thread2394.i
    i8 9, label %bb.k
    i8 8, label %.thread.i
    i8 10, label %bb.ag
    i8 11, label %bb.ah
    i8 18, label %bb.ai
    i8 19, label %bb.aj
    i8 12, label %bb.ak
    i8 13, label %bb.m
    i8 14, label %bb.al
    i8 15, label %_RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12decode_instr.exit.i
  ]

bb.k:                                             ; preds = %.thread907.i, %bb.j
  %i.fd = icmp ne i64 %i.et, 2
  call void @llvm.assume(i1 %i.fd), !noalias !1097
  br label %.thread.thread.i

bb.l:                                             ; preds = %bb.j
  %i.fe = icmp samesign ugt i64 %i.et, 33
  br i1 %i.fe, label %.thread.thread.i, label %.thread.i, !prof !57

bb.m:                                             ; preds = %.thread907.i, %bb.j
  br label %bb.ak

bb.n:                                             ; preds = %.thread907.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #39, !noalias !1098
  unreachable

bb.o:                                             ; preds = %.thread907.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #39, !noalias !1098
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.081.0.copyload.i.i = load i16, ptr %i.ff, align 1, !alias.scope !1092, !noalias !1095
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %.sroa.082.0.copyload.i.i = load i8, ptr %i.fg, align 1, !alias.scope !1092, !noalias !1095
  %i.fh = zext i8 %.sroa.082.0.copyload.i.i to i64
  %i.fi = shl nuw nsw i64 %i.fh, 2                ; 2 uses
  %i.fj = add nuw nsw i64 %i.fi, 5                ; 2 uses
  %.not91.i.i = icmp samesign ugt i64 %i.fj, %i.et
  br i1 %.not91.i.i, label %bb.r, label %bb.ac, !prof !59

bb.q:                                             ; preds = %.thread907.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #39, !noalias !1098
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 5, i64 noundef %i.fj, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #39, !noalias !1098
  unreachable

bb.s:                                             ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.083.0.copyload.i.i = load i32, ptr %i.fk, align 1, !alias.scope !1092, !noalias !1095
  %i.fl = icmp samesign ult i64 %i.et, 6
  br i1 %i.fl, label %.thread2392.i, label %bb.t, !prof !60

bb.t:                                             ; preds = %bb.s
  %i.fm = icmp samesign ult i64 %i.et, 10
  br i1 %i.fm, label %bb.u, label %bb.ad, !prof !59

.thread2392.i:                                    ; preds = %bb.s, %.thread907.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 6, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @339) #39, !noalias !1098
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 10, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #39, !noalias !1098
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.086.0.copyload.i.i = load i32, ptr %i.fn, align 1, !alias.scope !1092, !noalias !1095
  %i.fo = icmp samesign ult i64 %i.et, 6
  br i1 %i.fo, label %.thread2394.i, label %bb.w, !prof !60

bb.w:                                             ; preds = %bb.v
  %i.fp = icmp samesign ult i64 %i.et, 10
  br i1 %i.fp, label %bb.x, label %bb.ae, !prof !59

.thread2394.i:                                    ; preds = %bb.v, %.thread907.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 6, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341) #39, !noalias !1098
  unreachable

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 10, i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #39, !noalias !1098
  unreachable

.thread.i:                                        ; preds = %bb.l, %.thread907.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 2, i64 noundef 34, i64 noundef range(i64 0, -9223372036854775808) %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #39, !noalias !1098
  unreachable

bb.y:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #39, !noalias !1098
  unreachable

.thread.thread.i:                                 ; preds = %bb.l, %bb.k, %.thread907.i, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.fq = load ptr, ptr %i.dw, align 8, !alias.scope !1099, !noalias !1100, !nonnull !27, !noundef !27 ; 3 uses
  %i.fr = load i64, ptr %i.dx, align 8, !alias.scope !1099, !noalias !1100, !noundef !27 ; 5 uses
  %.idx = shl nuw nsw i64 %i.fr, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx
  %.not.not.not.i.not.i3024 = icmp eq i64 %i.fr, 0
  br i1 %.not.not.not.i.not.i3024, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjmEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB1N_10FwdCodeLocEs0_0EB1P_.exit.i, label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.ft, %i.fs
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjmEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB1N_10FwdCodeLocEs0_0EB1P_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.thread.thread.i, %bb.z
  %i.fu = phi ptr [ %i.ft, %bb.z ], [ %i.fq, %.thread.thread.i ] ; 2 uses
  %.val2.i.i = load i64, ptr %i.fu, align 8, !noalias !1101, !noundef !27
  %i.fv = icmp eq i64 %.val2.i.i, %i.eq
  br i1 %i.fv, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.z

bb.aa:                                            ; preds = %bb.j
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.077.0.copyload.i.i = load i16, ptr %i.fw, align 1, !alias.scope !1092, !noalias !1095
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %.sroa.078.0.copyload.i305.i = load i32, ptr %i.fx, align 1, !alias.scope !1092, !noalias !1095
  %i.fy = load i8, ptr %i.ds, align 8, !range !67, !alias.scope !1105, !noalias !1091, !noundef !27
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit.i, %bb.aa
  %i.ga = zext i16 %.sroa.077.0.copyload.i.i to i64 ; 2 uses
  %i.gb = lshr i64 %i.ga, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1108
  store i64 %i.gb, ptr %i.bl, align 8, !noalias !1108
  %i.gc = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1108
  %.val.i.i = load i64, ptr %i.gc, align 8, !noalias !1112, !noundef !27
  %i.gd = and i64 %i.ga, 63                       ; 2 uses
  %i.ge = lshr i64 %.val.i.i, %i.gd
  %i.gf = trunc i64 %i.ge to i1
  br i1 %i.gf, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.an

_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.aa
  %i.gg = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.gg, i8 0, i64 1024, i1 false), !alias.scope !1116, !noalias !1091
  store i8 0, ptr %i.ds, align 8, !alias.scope !1105, !noalias !1091
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.ab:                                            ; preds = %bb.j
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.079.0.copyload.i.i = load i16, ptr %i.gh, align 1, !alias.scope !1092, !noalias !1095
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %.sroa.080.0.copyload.i.i = load i32, ptr %i.gi, align 1, !alias.scope !1092, !noalias !1095
  %i.gj = load i8, ptr %i.ds, align 8, !range !67, !alias.scope !1119, !noalias !1091, !noundef !27
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit455.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i387.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i387.i: ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit455.i, %bb.ab
  %i.gl = zext i16 %.sroa.079.0.copyload.i.i to i64 ; 2 uses
  %i.gm = lshr i64 %i.gl, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !1122
  store i64 %i.gm, ptr %i.bj, align 8, !noalias !1122
  %i.gn = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1122
  %.val.i428.i = load i64, ptr %i.gn, align 8, !noalias !1126, !noundef !27
  %i.go = and i64 %i.gl, 63                       ; 2 uses
  %i.gp = lshr i64 %.val.i428.i, %i.go
  %i.gq = trunc i64 %i.gp to i1
  br i1 %i.gq, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit203.i

_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit455.i: ; preds = %bb.ab
  %i.gr = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.gr, i8 0, i64 1024, i1 false), !alias.scope !1130, !noalias !1091
  store i8 0, ptr %i.ds, align 8, !alias.scope !1119, !noalias !1091
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i387.i

bb.ac:                                            ; preds = %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eu, i64 5
  %i.gt = load i8, ptr %i.ds, align 8, !range !67, !alias.scope !1133, !noalias !1091, !noundef !27
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit483.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i391.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i391.i: ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit483.i, %bb.ac
  %i.gv = zext i16 %.sroa.081.0.copyload.i.i to i64 ; 2 uses
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1136
  store i64 %i.gw, ptr %i.bh, align 8, !noalias !1136
  %i.gx = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1136
  %.val.i456.i = load i64, ptr %i.gx, align 8, !noalias !1140, !noundef !27
  %i.gy = and i64 %i.gv, 63                       ; 2 uses
  %i.gz = lshr i64 %.val.i456.i, %i.gy
  %i.ha = trunc i64 %i.gz to i1
  br i1 %i.ha, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.aw

_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit483.i: ; preds = %bb.ac
  %i.hb = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.hb, i8 0, i64 1024, i1 false), !alias.scope !1144, !noalias !1091
  store i8 0, ptr %i.ds, align 8, !alias.scope !1133, !noalias !1091
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i391.i

bb.ad:                                            ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eu, i64 6
  %.sroa.084.0.copyload.i.i = load i32, ptr %i.hc, align 1, !alias.scope !1092, !noalias !1095
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eu, i64 10
  %.sroa.085.0.copyload.i.i = load i32, ptr %i.hd, align 1, !alias.scope !1092, !noalias !1095
  %i.he = add i32 %i.es, 1                        ; 3 uses
  %.not290.i154.i = icmp ult i32 %i.he, %.sroa.084.0.copyload.i.i
  br i1 %.not290.i154.i, label %bb.az, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit208.i

bb.ae:                                            ; preds = %bb.w
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eu, i64 6
  %.sroa.087.0.copyload.i.i = load i32, ptr %i.hf, align 1, !alias.scope !1092, !noalias !1095
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eu, i64 10
  %.sroa.088.0.copyload.i.i = load i32, ptr %i.hg, align 1, !alias.scope !1092, !noalias !1095
  %i.hh = add i32 %i.es, 1                        ; 3 uses
  %i.hi = icmp ult i32 %i.hh, %.sroa.088.0.copyload.i.i
  br i1 %i.hi, label %bb.be, label %bb.bf

bb.af:                                            ; preds = %.thread907.i, %bb.j
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.076.0.copyload.i.i = load i32, ptr %i.hj, align 1, !alias.scope !1092, !noalias !1095
  %i.hk = sext i32 %.sroa.076.0.copyload.i.i to i64
  %i.hl = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 %i.hk) ; 2 uses
  %i.hm = icmp sgt i64 %i.hl, -1
  br i1 %i.hm, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit494.i, label %bb.bj

bb.ag:                                            ; preds = %.thread907.i, %bb.j
  br i1 %i.de, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit218.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.ah:                                            ; preds = %.thread907.i, %bb.j
  br i1 %not..i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit223.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.ai:                                            ; preds = %.thread907.i, %bb.j
  br i1 %i.de, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i, label %bb.bm

bb.aj:                                            ; preds = %.thread907.i, %bb.j
  br i1 %not..i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i, label %bb.br

bb.ak:                                            ; preds = %bb.m, %.thread907.i, %bb.j
  %i.hn = phi i1 [ true, %bb.m ], [ false, %.thread907.i ], [ false, %bb.j ] ; 3 uses
  br i1 %i.de, label %bb.bx, label %bb.bw

bb.al:                                            ; preds = %.thread907.i, %bb.j
  br i1 %i.de, label %bb.ck, label %bb.cj

_RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12decode_instr.exit.i: ; preds = %.thread907.i, %bb.j
  br i1 %i.de, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.cr

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjmEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB1N_10FwdCodeLocEs0_0EB1P_.exit.i: ; preds = %bb.z, %.thread.thread.i
  %i.ho = load i64, ptr %0, align 8, !range !47, !alias.scope !1147, !noalias !1091, !noundef !27
  %i.hp = icmp eq i64 %i.fr, %i.ho
  br i1 %i.hp, label %bb.am, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit484.i

bb.am:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjmEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB1N_10FwdCodeLocEs0_0EB1P_.exit.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1128) %0) #38, !noalias !1091
  %.pre.i = load ptr, ptr %i.dw, align 8, !alias.scope !1147, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit484.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit484.i: ; preds = %bb.am, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjmEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB1N_10FwdCodeLocEs0_0EB1P_.exit.i
  %i.hq = phi ptr [ %i.fq, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjmEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB1N_10FwdCodeLocEs0_0EB1P_.exit.i ], [ %.pre.i, %bb.am ]
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.fr ; 2 uses
  store i64 %i.eq, ptr %i.hr, align 8, !noalias !1091
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %i.es, ptr %i.hs, align 8, !noalias !1091
  %i.ht = add i64 %i.fr, 1
  store i64 %i.ht, ptr %i.dx, align 8, !alias.scope !1147, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i: ; preds = %.lr.ph, %.split1074.i, %bb.cw, %bb.cv, %bb.cu, %.split1071.i, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.cd, %bb.cb, %bb.by, %bb.bu, %.split1066.i, %bb.bt, %bb.bs, %bb.bp, %.split.i, %bb.bo, %bb.bn, %bb.bf, %bb.az, %._crit_edge.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit484.i, %_RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12decode_instr.exit.i, %bb.ah, %bb.ag, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i391.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i387.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i
  %.pr.pr.i = load i64, ptr %i.dj, align 8, !alias.scope !1090, !noalias !1088
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit501.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit500.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit499.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit498.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit497.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit496.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit495.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit494.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit493.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit491.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit488.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit486.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i
  %.pr.i = phi i64 [ %.pr.pr.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit501.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit500.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit499.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit498.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit497.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit496.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit495.i ], [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit494.i ], [ %i.lk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit493.i ], [ %i.ky, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit491.i ], [ %i.jo, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit488.i ], [ %i.ir, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit486.i ] ; 2 uses
  %i.hu = icmp eq i64 %.pr.i, 0
  br i1 %i.hu, label %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i, label %bb.d

bb.an:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1150
  store i64 %i.gb, ptr %i.bk, align 8, !noalias !1150
  %i.hv = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1150
  %i.hw = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEjE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CelljENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1153 ; 2 uses
  %i.hx = shl nuw i64 1, %i.gd
  %i.hy = load i64, ptr %i.hw, align 8, !noalias !1153, !noundef !27
  %i.hz = or i64 %i.hy, %i.hx
  store i64 %i.hz, ptr %i.hw, align 8, !noalias !1153
  %i.ia = sext i32 %.sroa.078.0.copyload.i305.i to i64
  %i.ib = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 %i.ia) ; 2 uses
  %i.ic = icmp sgt i64 %i.ib, -1
  br i1 %i.ic, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit166.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1156
  store i8 3, ptr %i.cr, align 1, !noalias !1156
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1160
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit166.i: ; preds = %bb.an
  %i.id = load i64, ptr %i.dj, align 8, !alias.scope !1161, !noalias !1091, !noundef !27 ; 4 uses
  %i.ie = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1161, !noalias !1091, !noundef !27
  %i.if = icmp eq i64 %i.id, %i.ie
  br i1 %i.if, label %bb.ap, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit485.i

bb.ap:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit166.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit485.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit485.i: ; preds = %bb.ap, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit166.i
  %i.ig = load ptr, ptr %i.dn, align 8, !alias.scope !1161, !noalias !1091, !nonnull !27, !noundef !27
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.id ; 2 uses
  store i64 %i.ib, ptr %i.ih, align 8, !noalias !1091
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 %i.es, ptr %i.ii, align 8, !noalias !1091
  %i.ij = add i64 %i.id, 1                        ; 3 uses
  store i64 %i.ij, ptr %i.dj, align 8, !alias.scope !1161, !noalias !1091
  %i.ik = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 8) ; 2 uses
  %i.il = icmp sgt i64 %i.ik, -1
  br i1 %i.il, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit485.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !1164
  store i8 3, ptr %i.cs, align 1, !noalias !1164
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1168
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit485.i
  %i.im = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1169, !noalias !1091, !noundef !27
  %i.in = icmp eq i64 %i.ij, %i.im
  br i1 %i.in, label %bb.ar, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit486.i

bb.ar:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit486.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit486.i: ; preds = %bb.ar, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i
  %i.io = load ptr, ptr %i.dn, align 8, !alias.scope !1169, !noalias !1091, !nonnull !27, !noundef !27
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ij ; 2 uses
  store i64 %i.ik, ptr %i.ip, align 8, !noalias !1091
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 %i.es, ptr %i.iq, align 8, !noalias !1091
  %i.ir = add i64 %i.id, 2                        ; 2 uses
  store i64 %i.ir, ptr %i.dj, align 8, !alias.scope !1169, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit203.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i387.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !1172
  store i64 %i.gm, ptr %i.bi, align 8, !noalias !1172
  %i.is = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1172
  %i.it = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEjE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CelljENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1175 ; 2 uses
  %i.iu = shl nuw i64 1, %i.go
  %i.iv = load i64, ptr %i.it, align 8, !noalias !1175, !noundef !27
  %i.iw = or i64 %i.iv, %i.iu
  store i64 %i.iw, ptr %i.it, align 8, !noalias !1175
  %i.ix = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 8) ; 2 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  br i1 %i.iy, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit168.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit203.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1178
  store i8 3, ptr %i.cp, align 1, !noalias !1178
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1182
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit168.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit203.i
  %i.iz = load i64, ptr %i.dj, align 8, !alias.scope !1183, !noalias !1091, !noundef !27 ; 4 uses
  %i.ja = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1183, !noalias !1091, !noundef !27
  %i.jb = icmp eq i64 %i.iz, %i.ja
  br i1 %i.jb, label %bb.at, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit487.i

bb.at:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit168.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit487.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit487.i: ; preds = %bb.at, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit168.i
  %i.jc = load ptr, ptr %i.dn, align 8, !alias.scope !1183, !noalias !1091, !nonnull !27, !noundef !27
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.iz ; 2 uses
  store i64 %i.ix, ptr %i.jd, align 8, !noalias !1091
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i32 %i.es, ptr %i.je, align 8, !noalias !1091
  %i.jf = add i64 %i.iz, 1                        ; 3 uses
  store i64 %i.jf, ptr %i.dj, align 8, !alias.scope !1183, !noalias !1091
  %i.jg = sext i32 %.sroa.080.0.copyload.i.i to i64
  %i.jh = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 %i.jg) ; 2 uses
  %i.ji = icmp sgt i64 %i.jh, -1
  br i1 %i.ji, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit167.i, label %bb.au

bb.au:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit487.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1186
  store i8 3, ptr %i.cq, align 1, !noalias !1186
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1190
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit167.i: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit487.i
  %i.jj = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1191, !noalias !1091, !noundef !27
  %i.jk = icmp eq i64 %i.jf, %i.jj
  br i1 %i.jk, label %bb.av, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit488.i

bb.av:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit167.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit488.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit488.i: ; preds = %bb.av, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit167.i
  %i.jl = load ptr, ptr %i.dn, align 8, !alias.scope !1191, !noalias !1091, !nonnull !27, !noundef !27
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.jf ; 2 uses
  store i64 %i.jh, ptr %i.jm, align 8, !noalias !1091
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 %i.es, ptr %i.jn, align 8, !noalias !1091
  %i.jo = add i64 %i.iz, 2                        ; 2 uses
  store i64 %i.jo, ptr %i.dj, align 8, !alias.scope !1191, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.aw:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i391.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1194
  store i64 %i.gw, ptr %i.bg, align 8, !noalias !1194
  %i.jp = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1194
  %i.jq = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEjE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CelljENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !1197 ; 2 uses
  %i.jr = shl nuw i64 1, %i.gy
  %i.js = load i64, ptr %i.jq, align 8, !noalias !1197, !noundef !27
  %i.jt = or i64 %i.js, %i.jr
  store i64 %i.jt, ptr %i.jq, align 8, !noalias !1197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !1200
  store ptr %i.gs, ptr %i.ct, align 8, !noalias !1200
  store i64 %i.fi, ptr %i.dv, align 8, !noalias !1200
  %i.ju = call { i32, i32 } @_RNvXsb_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_12SplitOffsetsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ct), !noalias !1091 ; 2 uses
  %i.jv = extractvalue { i32, i32 } %i.ju, 0
  %i.jw = trunc i32 %i.jv to i1
  br i1 %i.jw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aw, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit489.i
  %i.jx = phi { i32, i32 } [ %i.kj, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit489.i ], [ %i.ju, %bb.aw ]
  %i.jy = extractvalue { i32, i32 } %i.jx, 1
  %i.jz = sext i32 %i.jy to i64
  %i.ka = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 %i.jz) ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, -1
  br i1 %i.kb, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit169.i, label %bb.ax

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit489.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !1200
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.ax:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1201
  store i8 3, ptr %i.co, align 1, !noalias !1201
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1205
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit169.i: ; preds = %.lr.ph.i
  %i.kc = load i64, ptr %i.dj, align 8, !alias.scope !1206, !noalias !1091, !noundef !27 ; 3 uses
  %i.kd = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1206, !noalias !1091, !noundef !27
  %i.ke = icmp eq i64 %i.kc, %i.kd
  br i1 %i.ke, label %bb.ay, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit489.i

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit169.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit489.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit489.i: ; preds = %bb.ay, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit169.i
  %i.kf = load ptr, ptr %i.dn, align 8, !alias.scope !1206, !noalias !1091, !nonnull !27, !noundef !27
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kc ; 2 uses
  store i64 %i.ka, ptr %i.kg, align 8, !noalias !1091
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 %i.es, ptr %i.kh, align 8, !noalias !1091
  %i.ki = add i64 %i.kc, 1
  store i64 %i.ki, ptr %i.dj, align 8, !alias.scope !1206, !noalias !1091
  %i.kj = call { i32, i32 } @_RNvXsb_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_12SplitOffsetsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ct), !noalias !1091 ; 2 uses
  %i.kk = extractvalue { i32, i32 } %i.kj, 0
  %i.kl = trunc i32 %i.kk to i1
  br i1 %i.kl, label %.lr.ph.i, label %._crit_edge.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit208.i: ; preds = %bb.ad
  %i.km = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 14) ; 2 uses
  %i.kn = icmp sgt i64 %i.km, -1
  br i1 %i.kn, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit490.i, label %bb.ba

bb.az:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit490.i, %bb.ad
  %i.ko = phi i64 [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit490.i ], [ %i.ek, %bb.ad ] ; 3 uses
  %i.kp = icmp ult i32 %i.he, %.sroa.085.0.copyload.i.i
  br i1 %i.kp, label %bb.bb, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.ba:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit208.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1209
  store i8 3, ptr %i.cm, align 1, !noalias !1209
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1213
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit490.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit208.i
  store i64 %i.km, ptr %i.ep, align 8, !noalias !1091
  store i32 0, ptr %i.er, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1214, !noalias !1091
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  %i.kq = sext i32 %.sroa.083.0.copyload.i.i to i64
  %i.kr = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 %i.kq) ; 2 uses
  %i.ks = icmp sgt i64 %i.kr, -1
  br i1 %i.ks, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit170.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1217
  store i8 3, ptr %i.cn, align 1, !noalias !1217
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1221
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit170.i: ; preds = %bb.bb
  %i.kt = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1222, !noalias !1091, !noundef !27
  %i.ku = icmp eq i64 %i.ko, %i.kt
  br i1 %i.ku, label %bb.bd, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit491.i

bb.bd:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit170.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit491.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit491.i: ; preds = %bb.bd, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit170.i
  %i.kv = load ptr, ptr %i.dn, align 8, !alias.scope !1222, !noalias !1091, !nonnull !27, !noundef !27
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.ko ; 2 uses
  store i64 %i.kr, ptr %i.kw, align 8, !noalias !1091
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i32 %i.he, ptr %i.kx, align 8, !noalias !1091
  %i.ky = add nuw nsw i64 %i.ko, 1                ; 2 uses
  store i64 %i.ky, ptr %i.dj, align 8, !alias.scope !1222, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.be:                                            ; preds = %bb.ae
  %i.kz = sext i32 %.sroa.086.0.copyload.i.i to i64
  %i.la = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 %i.kz) ; 2 uses
  %i.lb = icmp sgt i64 %i.la, -1
  br i1 %i.lb, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit492.i, label %bb.bg

bb.bf:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit492.i, %bb.ae
  %i.lc = phi i64 [ %i.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit492.i ], [ %i.ek, %bb.ae ] ; 3 uses
  %.not288.i147.i = icmp ult i32 %i.hh, %.sroa.087.0.copyload.i.i
  br i1 %.not288.i147.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit213.i

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1225
  store i8 3, ptr %i.cl, align 1, !noalias !1225
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1229
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit492.i: ; preds = %bb.be
  store i64 %i.la, ptr %i.ep, align 8, !noalias !1091
  store i32 %i.hh, ptr %i.er, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1230, !noalias !1091
  br label %bb.bf

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit213.i: ; preds = %bb.bf
  %i.ld = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 14) ; 2 uses
  %i.le = icmp sgt i64 %i.ld, -1
  br i1 %i.le, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit173.i, label %bb.bh

bb.bh:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit213.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !1233
  store i8 3, ptr %i.ck, align 1, !noalias !1233
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1237
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit173.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit213.i
  %i.lf = load i64, ptr %i.dg, align 8, !range !47, !alias.scope !1238, !noalias !1091, !noundef !27
  %i.lg = icmp eq i64 %i.lc, %i.lf
  br i1 %i.lg, label %bb.bi, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit493.i

bb.bi:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit173.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjmEE8grow_oneCsc2ZV4bV5Srq_9daachorse(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.dg) #38, !noalias !1091
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit493.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit493.i: ; preds = %bb.bi, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit173.i
  %i.lh = load ptr, ptr %i.dn, align 8, !alias.scope !1238, !noalias !1091, !nonnull !27, !noundef !27
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %i.lc ; 2 uses
  store i64 %i.ld, ptr %i.li, align 8, !noalias !1091
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i32 0, ptr %i.lj, align 8, !noalias !1091
  %i.lk = add nuw nsw i64 %i.lc, 1                ; 2 uses
  store i64 %i.lk, ptr %i.dj, align 8, !alias.scope !1238, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.bj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !1241
  store i8 3, ptr %i.cj, align 1, !noalias !1241
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1245
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit494.i: ; preds = %bb.af
  store i64 %i.hl, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1246, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit218.i: ; preds = %bb.ag
  %i.ll = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.lm = icmp sgt i64 %i.ll, -1
  br i1 %i.lm, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit495.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit218.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !1249
  store i8 3, ptr %i.ci, align 1, !noalias !1249
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1253
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit495.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit218.i
  store i64 %i.ll, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1254, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit223.i: ; preds = %bb.ah
  %i.ln = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.lo = icmp sgt i64 %i.ln, -1
  br i1 %i.lo, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit496.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit223.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !1257
  store i8 3, ptr %i.ch, align 1, !noalias !1257
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1261
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit496.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit223.i
  store i64 %i.ln, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1262, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.bm:                                            ; preds = %bb.ai
  %i.lp = load i8, ptr %i.df, align 1, !alias.scope !1079, !noalias !1265, !noundef !27 ; 2 uses
  br i1 %not..i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  switch i8 %i.lp, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i [
    i8 10, label %bb.bp
    i8 13, label %.split.i
  ]

bb.bo:                                            ; preds = %bb.bm
  switch i8 %i.lp, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i [
    i8 10, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i
    i8 13, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i
  ]

.split.i:                                         ; preds = %bb.bn
  %i.lq = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27
  %.not1407.i = icmp eq i8 %i.lq, 10
  br i1 %.not1407.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i

bb.bp:                                            ; preds = %bb.bn
  %i.lr = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27
  %.not1408.i = icmp eq i8 %i.lr, 13
  br i1 %.not1408.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i: ; preds = %bb.bp, %.split.i, %bb.bo, %bb.bo, %bb.ai
  %i.ls = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.lt = icmp sgt i64 %i.ls, -1
  br i1 %i.lt, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit497.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !1267
  store i8 3, ptr %i.cg, align 1, !noalias !1267
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1271
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit497.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit228.i
  store i64 %i.ls, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1272, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.br:                                            ; preds = %bb.aj
  %i.lu = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27 ; 2 uses
  br i1 %i.de, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  switch i8 %i.lu, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i [
    i8 10, label %bb.bu
    i8 13, label %.split1066.i
  ]

bb.bt:                                            ; preds = %bb.br
  %.off.i132.i = add i8 %i.lu, -9
  %switch.i133.i = icmp ult i8 %.off.i132.i, 2
  br i1 %switch.i133.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

.split1066.i:                                     ; preds = %bb.bs
  %i.lv = load i8, ptr %i.df, align 1, !alias.scope !1079, !noalias !1265, !noundef !27
  %.not1405.i = icmp eq i8 %i.lv, 10
  br i1 %.not1405.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i

bb.bu:                                            ; preds = %bb.bs
  %i.lw = load i8, ptr %i.df, align 1, !alias.scope !1079, !noalias !1265, !noundef !27
  %.not1406.i = icmp eq i8 %i.lw, 13
  br i1 %.not1406.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i: ; preds = %bb.bu, %.split1066.i, %bb.bt, %bb.aj
  %i.lx = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.ly = icmp sgt i64 %i.lx, -1
  br i1 %i.ly, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit498.i, label %bb.bv

bb.bv:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !1275
  store i8 3, ptr %i.cf, align 1, !noalias !1275
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1279
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit498.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit233.i
  store i64 %i.lx, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1280, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.bw:                                            ; preds = %bb.ak
  br i1 %not..i, label %bb.bz, label %bb.ca

bb.bx:                                            ; preds = %bb.ak
  br i1 %not..i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  br i1 %i.hn, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit238.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.bz:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.0118.0.i122.i = phi ptr [ %2, %bb.bx ], [ %i.df, %bb.bw ]
  %i.lz = load i8, ptr %.sroa.0118.0.i122.i, align 1, !alias.scope !1097, !noalias !1283, !noundef !27 ; 6 uses
  %i.ma = icmp eq i8 %i.lz, 95
  br i1 %i.ma, label %bb.cb, label %bb.cc

bb.ca:                                            ; preds = %bb.bw
  %i.mb = load i8, ptr %i.df, align 1, !alias.scope !1079, !noalias !1265, !noundef !27 ; 6 uses
  %i.mc = icmp eq i8 %i.mb, 95
  br i1 %i.mc, label %bb.cf, label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.hn, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit238.i

bb.cc:                                            ; preds = %bb.bz
  %i.md = add nsw i8 %i.lz, -48
  %.sroa.0189.0.i123.i = icmp ult i8 %i.md, 10
  %i.me = icmp samesign ugt i8 %i.lz, 64
  %i.mf = icmp samesign ult i8 %i.lz, 91
  %.sroa.0190.0.i124.i = select i1 %i.me, i1 %i.mf, i1 %.sroa.0189.0.i123.i
  %i.mg = icmp ugt i8 %i.lz, 96
  %i.mh = icmp ult i8 %i.lz, 123
  %.sroa.0191.0.i125.i = select i1 %i.mg, i1 %i.mh, i1 %.sroa.0190.0.i124.i
  br label %bb.cd

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit238.i: ; preds = %bb.cd, %bb.cb, %bb.by
  %i.mi = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.mj = icmp sgt i64 %i.mi, -1
  br i1 %i.mj, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit499.i, label %bb.ci

bb.cd:                                            ; preds = %bb.ch, %bb.cc
  %.sroa.0112.0.in.i118.i = phi i1 [ %i.mw, %bb.ch ], [ %.sroa.0191.0.i125.i, %bb.cc ]
  %spec.select.i119.i = xor i1 %i.hn, %.sroa.0112.0.in.i118.i
  br i1 %spec.select.i119.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit238.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.ce:                                            ; preds = %bb.ca
  %i.mk = add nsw i8 %i.mb, -48
  %.sroa.0183.0.i110.i = icmp ult i8 %i.mk, 10
  %i.ml = icmp samesign ugt i8 %i.mb, 64
  %i.mm = icmp samesign ult i8 %i.mb, 91
  %.sroa.0184.0.i111.i = select i1 %i.ml, i1 %i.mm, i1 %.sroa.0183.0.i110.i
  %i.mn = icmp ugt i8 %i.mb, 96
  %i.mo = icmp ult i8 %i.mb, 123
  %.sroa.0185.0.i112.i = select i1 %i.mn, i1 %i.mo, i1 %.sroa.0184.0.i111.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ca
  %.sroa.0116.0.i113.i = phi i1 [ %.sroa.0185.0.i112.i, %bb.ce ], [ true, %bb.ca ]
  %i.mp = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27 ; 6 uses
  %i.mq = icmp eq i8 %i.mp, 95
  br i1 %i.mq, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mr = add nsw i8 %i.mp, -48
  %.sroa.0186.0.i114.i = icmp ult i8 %i.mr, 10
  %i.ms = icmp samesign ugt i8 %i.mp, 64
  %i.mt = icmp samesign ult i8 %i.mp, 91
  %.sroa.0187.0.i115.i = select i1 %i.ms, i1 %i.mt, i1 %.sroa.0186.0.i114.i
  %i.mu = icmp ugt i8 %i.mp, 96
  %i.mv = icmp ult i8 %i.mp, 123
  %.sroa.0188.0.i116.i = select i1 %i.mu, i1 %i.mv, i1 %.sroa.0187.0.i115.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.sroa.0117.0.i117.i = phi i1 [ %.sroa.0188.0.i116.i, %bb.cg ], [ true, %bb.cf ]
  %i.mw = xor i1 %.sroa.0116.0.i113.i, %.sroa.0117.0.i117.i
  br label %bb.cd

bb.ci:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit238.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !1284
  store i8 3, ptr %i.ce, align 1, !noalias !1284
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1288
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit499.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit238.i
  store i64 %i.mi, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1289, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.cj:                                            ; preds = %bb.al
  br i1 %not..i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.cm

bb.ck:                                            ; preds = %bb.al
  br i1 %not..i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mx = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27 ; 6 uses
  %i.my = icmp eq i8 %i.mx, 95
  br i1 %i.my, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i, label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  %i.mz = load i8, ptr %i.df, align 1, !alias.scope !1079, !noalias !1265, !noundef !27 ; 6 uses
  %i.na = icmp eq i8 %i.mz, 95
  br i1 %i.na, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.nb = add nsw i8 %i.mx, -48
  %.sroa.0163.0.i105.i = icmp ult i8 %i.nb, 10
  %i.nc = icmp samesign ugt i8 %i.mx, 64
  %i.nd = icmp samesign ult i8 %i.mx, 91
  %.sroa.0164.0.i106.i = select i1 %i.nc, i1 %i.nd, i1 %.sroa.0163.0.i105.i
  %i.ne = icmp ugt i8 %i.mx, 96
  %i.nf = icmp ult i8 %i.mx, 123
  %.sroa.0165.0.i107.i = select i1 %i.ne, i1 %i.nf, i1 %.sroa.0164.0.i106.i
  br i1 %.sroa.0165.0.i107.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.co:                                            ; preds = %bb.cm
  %i.ng = add nsw i8 %i.mz, -48
  %.sroa.0157.0.i95.i = icmp ult i8 %i.ng, 10
  %i.nh = icmp samesign ugt i8 %i.mz, 64
  %i.ni = icmp samesign ult i8 %i.mz, 91
  %.sroa.0158.0.i96.i = select i1 %i.nh, i1 %i.ni, i1 %.sroa.0157.0.i95.i
  %i.nj = icmp ugt i8 %i.mz, 96
  %i.nk = icmp ult i8 %i.mz, 123
  %.sroa.0159.0.i97.i = select i1 %i.nj, i1 %i.nk, i1 %.sroa.0158.0.i96.i
  br i1 %.sroa.0159.0.i97.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nl = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27 ; 6 uses
  %i.nm = icmp eq i8 %i.nl, 95
  br i1 %i.nm, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i, label %.split1071.i

.split1071.i:                                     ; preds = %bb.cp
  %i.nn = add nsw i8 %i.nl, -48
  %.sroa.0160.0.i98.i = icmp ult i8 %i.nn, 10
  %i.no = icmp samesign ugt i8 %i.nl, 64
  %i.np = icmp samesign ult i8 %i.nl, 91
  %.sroa.0161.0.i99.i = select i1 %i.no, i1 %i.np, i1 %.sroa.0160.0.i98.i
  %i.nq = icmp ugt i8 %i.nl, 96
  %i.nr = icmp ult i8 %i.nl, 123
  %.sroa.0162.0.i100.i = select i1 %i.nq, i1 %i.nr, i1 %.sroa.0161.0.i99.i
  br i1 %.sroa.0162.0.i100.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i: ; preds = %.split1071.i, %bb.cp, %bb.cn, %bb.cl
  %i.ns = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.nt = icmp sgt i64 %i.ns, -1
  br i1 %i.nt, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit500.i, label %bb.cq

bb.cq:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !1292
  store i8 3, ptr %i.cd, align 1, !noalias !1292
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1296
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit500.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit243.i
  store i64 %i.ns, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1297, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

bb.cr:                                            ; preds = %_RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12decode_instr.exit.i
  %i.nu = load i8, ptr %i.df, align 1, !alias.scope !1079, !noalias !1265, !noundef !27 ; 11 uses
  %i.nv = icmp eq i8 %i.nu, 95                    ; 2 uses
  br i1 %not..i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.nv, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit248.i, label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  br i1 %i.nv, label %bb.cw, label %bb.cv

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit248.i: ; preds = %.split1074.i, %bb.cu, %bb.cs
  %i.nw = call i64 @llvm.sadd.sat.i64(i64 %i.eq, i64 2) ; 2 uses
  %i.nx = icmp sgt i64 %i.nw, -1
  br i1 %i.nx, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit501.i, label %bb.cx

bb.cu:                                            ; preds = %bb.cs
  %i.ny = add nsw i8 %i.nu, -48
  %.sroa.0176.0.i90.i = icmp ult i8 %i.ny, 10
  %i.nz = icmp samesign ugt i8 %i.nu, 64
  %i.oa = icmp samesign ult i8 %i.nu, 91
  %.sroa.0177.0.i91.i = select i1 %i.nz, i1 %i.oa, i1 %.sroa.0176.0.i90.i
  %i.ob = icmp ugt i8 %i.nu, 96
  %i.oc = icmp ult i8 %i.nu, 123
  %.sroa.0178.0.i92.i = select i1 %i.ob, i1 %i.oc, i1 %.sroa.0177.0.i91.i
  br i1 %.sroa.0178.0.i92.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit248.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.cv:                                            ; preds = %bb.ct
  %i.od = add nsw i8 %i.nu, -48
  %.sroa.0170.0.i81.i = icmp ult i8 %i.od, 10
  %i.oe = icmp samesign ugt i8 %i.nu, 64
  %i.of = icmp samesign ult i8 %i.nu, 91
  %.sroa.0171.0.i82.i = select i1 %i.oe, i1 %i.of, i1 %.sroa.0170.0.i81.i
  %i.og = icmp ugt i8 %i.nu, 96
  %i.oh = icmp ult i8 %i.nu, 123
  %.sroa.0172.0.i83.i = select i1 %i.og, i1 %i.oh, i1 %.sroa.0171.0.i82.i
  br i1 %.sroa.0172.0.i83.i, label %bb.cw, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.cw:                                            ; preds = %bb.cv, %bb.ct
  %i.oi = load i8, ptr %2, align 1, !alias.scope !1076, !noalias !1266, !noundef !27 ; 6 uses
  %i.oj = icmp eq i8 %i.oi, 95
  br i1 %i.oj, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i, label %.split1074.i

.split1074.i:                                     ; preds = %bb.cw
  %i.ok = icmp samesign ugt i8 %i.oi, 64
  %i.ol = icmp ugt i8 %i.oi, 96
  %i.om = icmp ugt i8 %i.oi, 122
  %i.on = icmp samesign ugt i8 %i.oi, 90
  %i.oo = add nsw i8 %i.oi, -58
  %i.op = icmp ult i8 %i.oo, -10
  %i.oq = select i1 %i.ok, i1 %i.on, i1 %i.op
  %i.or = select i1 %i.ol, i1 %i.om, i1 %i.oq
  br i1 %i.or, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit248.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.threadthread-pre-split.i

bb.cx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit248.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !1300
  store i8 3, ptr %i.cc, align 1, !noalias !1300
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #39, !noalias !1304
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjmEE8push_mutCs7gfv9tzbXmh_6yara_x.exit501.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit248.i
  store i64 %i.nw, ptr %i.ep, align 8, !noalias !1091
  store i64 %i.ej, ptr %i.dj, align 8, !alias.scope !1305, !noalias !1091
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB4_19EpsilonClosureState8executed.exit.thread.i

_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.i: ; preds = %.loopexit.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i
  %i.os = phi i64 [ %.sroa.02.0.copyload.i.i.i.2.i.i.i, %.loopexit.i ], [ %.pre1998.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i ] ; 3 uses
  %.sroa.0.0894.i = phi ptr [ %.sroa.0.18951566.i, %.loopexit.i ], [ %spec.select.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i ] ; 4 uses
  %.sroa.023.0.i = phi ptr [ %.sroa.046.01527.i, %.loopexit.i ], [ %spec.select1391.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i ]
  %.sroa.0.0.i = phi i64 [ %i.qy, %.loopexit.i ], [ 0, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.preheader.i ]
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB3_6PikeVM14try_match_implNtB7_10FwdCodeLocINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEINtNtNtNtB1D_4iter8adapters3rev3RevB1w_ENCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B2X_NtB2X_11ScanContext17handle_atom_match0Es_0EB9_.exit, label %.lr.ph1741.preheader.i

.lr.ph1741.preheader.i:                           ; preds = %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit165.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0894.i) ]
  %i.ou = icmp eq i64 %i.os, 1
  %i.ov = load ptr, ptr %i.dz, align 8, !alias.scope !1071, !noalias !1074, !nonnull !27, !noundef !27 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.os, 4
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.idx.i
  %i.ox = icmp ne ptr %.sroa.0.0894.i, %i.cw      ; 2 uses
  %spec.select1396.i = select i1 %i.ox, ptr %.sroa.0.0894.i, ptr null
  %spec.select1395.idx.i = zext i1 %i.ox to i64
  %spec.select1395.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0894.i, i64 %spec.select1395.idx.i
  br label %.lr.ph1741.i.a

.lr.ph1741.i.a:                                   ; preds = %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit.i, %.lr.ph1741.preheader.i
  %.sroa.0.11739.i = phi i64 [ %.sroa.0.2.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit.i ], [ %.sroa.0.0.i, %.lr.ph1741.preheader.i ] ; 27 uses
  %.sroa.05.01738.i = phi ptr [ %i.oy, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit.i ], [ %i.ov, %.lr.ph1741.preheader.i ] ; 3 uses
  %.sroa.023.11736.i = phi ptr [ %.sroa.023.2.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit.i ], [ %.sroa.023.0.i, %.lr.ph1741.preheader.i ] ; 30 uses
  %.sroa.046.01734.i = phi ptr [ %.sroa.046.1.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit.i ], [ %spec.select1396.i, %.lr.ph1741.preheader.i ] ; 29 uses
  %.sroa.0.18951732.i = phi ptr [ %.sroa.0.2896.i, %_RINvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevm15epsilon_closureNtB6_10FwdCodeLocEB8_.exit.i ], [ %spec.select1395.i, %.lr.ph1741.preheader.i ] ; 27 uses
  %.sroa.0.189517321997.i = ptrtoaddr ptr %.sroa.0.18951732.i to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.05.01738.i, i64 16 ; 2 uses
  %i.oz = load ptr, ptr %i.da, align 8, !alias.scope !1071, !noalias !1074, !nonnull !27, !noundef !27
  %i.pa = load i64, ptr %i.dc, align 8, !alias.scope !1071, !noalias !1074, !noundef !27 ; 2 uses
  %i.pb = load i64, ptr %.sroa.05.01738.i, align 8, !noalias !1074, !noundef !27 ; 4 uses
  %i.pc = sub nuw i64 %i.pa, %i.pb                ; 33 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pb ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.pe = icmp samesign ugt i64 %i.pc, 1
  br i1 %i.pe, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph1741.i.a
  %.not92.i346.i = icmp eq i64 %i.pa, %i.pb
  br i1 %.not92.i346.i, label %bb.dq, label %._RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12is_bytes_run.exit.thread1100_crit_edge.i, !prof !53

._RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12is_bytes_run.exit.thread1100_crit_edge.i: ; preds = %bb.cy
  %.pr1389.pre.i = load i8, ptr %i.pd, align 1, !alias.scope !1308, !noalias !1311
  br label %_RNvMs7_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instrNtB5_11InstrParser12is_bytes_run.exit.thread1100.i

bb.cz:                                            ; preds = %.lr.ph1741.i.a
  %i.pf = load i8, ptr %i.pd, align 1, !alias.scope !1308, !noalias !1311, !noundef !27 ; 4 uses
  %i.pg = icmp eq i8 %i.pf, -86                   ; 5 uses
  br i1 %i.pg, label %bb.da, label %.thread1078.i

bb.da:                                            ; preds = %bb.cz
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 1
  %i.pi = load i8, ptr %i.ph, align 1, !alias.scope !1308, !noalias !1311, !noundef !27 ; 4 uses
  %i.pj = icmp eq i8 %i.pi, 5
  br i1 %i.pj, label %bb.ea, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pk = icmp samesign ugt i64 %i.pc, 3
  br i1 %i.pk, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not.i349.i = icmp ne i64 %i.pc, 2
  %i.pl = icmp eq i8 %i.pi, 7
  %or.cond2344.i = and i1 %.not.i349.i, %i.pl
  br i1 %or.cond2344.i, label %bb.eb, label %.thread1085.i

bb.dd:                                            ; preds = %bb.db
  switch i8 %i.pi, label %.thread1078.i [
    i8 6, label %bb.ec
    i8 7, label %bb.eb
    i8 4, label %.loopexit1416.i
    i8 1, label %.loopexit1416.i
    i8 2, label %.loopexit1416.i
    i8 3, label %bb.dh
    i8 16, label %bb.dk
    i8 17, label %bb.dn
    i8 9, label %bb.ee
    i8 8, label %bb.de
    i8 10, label %.loopexit1416.i
    i8 11, label %.loopexit1416.i
    i8 18, label %.loopexit1416.i
    i8 19, label %.loopexit1416.i
    i8 12, label %.loopexit1416.i
    i8 13, label %.loopexit1416.i
    i8 14, label %.loopexit1416.i
    i8 15, label %.loopexit1416.i
    i8 0, label %bb.dz
  ]

.thread1085.i:                                    ; preds = %bb.dc
  switch i8 %i.pi, label %.thread1078.i [
    i8 4, label %.loopexit1416.i
    i8 1, label %bb.df
    i8 2, label %bb.dg
    i8 3, label %bb.di
    i8 16, label %.thread2400.i
    i8 17, label %.thread2401.i
    i8 9, label %bb.ee
    i8 8, label %.thread2396.i
    i8 10, label %.loopexit1416.i
    i8 11, label %.loopexit1416.i
    i8 18, label %.loopexit1416.i
    i8 19, label %.loopexit1416.i
    i8 12, label %.loopexit1416.i
    i8 13, label %.loopexit1416.i
    i8 14, label %.loopexit1416.i
    i8 15, label %.loopexit1416.i
    i8 0, label %bb.dz
  ]

bb.de:                                            ; preds = %bb.dd
  %i.pm = icmp samesign ugt i64 %i.pc, 33
  br i1 %i.pm, label %bb.ed, label %.thread2396.i, !prof !57

bb.df:                                            ; preds = %.thread1085.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.pc, i64 noundef range(i64 0, -9223372036854775808) %i.pc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #39, !noalias !1313
  unreachable

bb.dg:                                            ; preds = %.thread1085.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.pc, i64 noundef range(i64 0, -9223372036854775808) %i.pc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #39, !noalias !1313
  unreachable

bb.dh:                                            ; preds = %bb.dd
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %.sroa.082.0.copyload.i367.i = load i8, ptr %i.pn, align 1, !alias.scope !1308, !noalias !1311
  %i.po = zext i8 %.sroa.082.0.copyload.i367.i to i64
  %i.pp = shl nuw nsw i64 %i.po, 2
  %i.pq = add nuw nsw i64 %i.pp, 5                ; 2 uses
  %.not91.i368.i = icmp samesign ugt i64 %i.pq, %i.pc
  br i1 %.not91.i368.i, label %bb.dj, label %.loopexit1416.i, !prof !59

bb.di:                                            ; preds = %.thread1085.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.pc, i64 noundef range(i64 0, -9223372036854775808) %i.pc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #39, !noalias !1313
  unreachable

bb.dj:                                            ; preds = %bb.dh
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 5, i64 noundef %i.pq, i64 noundef range(i64 0, -9223372036854775808) %i.pc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #39, !noalias !1313
  unreachable

end_hunk_0
