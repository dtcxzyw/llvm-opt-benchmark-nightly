Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_normalizer-f90beeb29fc4cca9.icu_normalizer.701db19ed6a97ffa-cgu.0?download=true
inline.NumInlined: 182
inline.NumDeleted: 49
begin_hunk_0_@_RNvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB5_29DecomposingNormalizerBorrowed19is_normalized_up_to:bb.a
  %i.bk = load i32, ptr %i.bi, align 4, !noalias !231, !noundef !4
  %i.bl = and i32 %i.bk, 16777215                 ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 1114112
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i145146.i, i64 %i.bh
  %i.bo = icmp samesign eq i64 %i.bh, 0
  br i1 %i.bo, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i145146.i, i64 1 ; 2 uses
  %i.bq = load i8, ptr %.sroa.0.06.ph.i145146.i, align 1, !noalias !237, !noundef !4 ; 5 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i: ; preds = %bb.h
  %i.bs = and i8 %i.bq, 31
  %i.bt = zext nneg i8 %i.bs to i32               ; 3 uses
  %i.bu = icmp samesign ne i64 %i.bh, 1
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i145146.i, i64 2 ; 2 uses
  %i.bw = load i8, ptr %i.bp, align 1, !noalias !237, !noundef !4
  %i.bx = shl nuw nsw i32 %i.bt, 6
  %i.by = and i8 %i.bw, 63
  %i.bz = zext nneg i8 %i.by to i32               ; 2 uses
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp samesign ugt i8 %i.bq, -33
  br i1 %i.cb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = zext nneg i8 %i.bq to i32
  br label %bb.j

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i
  %i.cd = icmp samesign ne i64 %i.bh, 2
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i145146.i, i64 3 ; 2 uses
  %i.cf = load i8, ptr %i.bv, align 1, !noalias !237, !noundef !4
  %i.cg = shl nuw nsw i32 %i.bz, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = shl nuw nsw i32 %i.bt, 12
  %i.cl = or disjoint i32 %i.cj, %i.ck
  %i.cm = icmp samesign ugt i8 %i.bq, -17
  br i1 %i.cm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i, label %bb.j

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i
  %i.cn = icmp samesign ne i64 %i.bh, 3
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i145146.i, i64 4
  %i.cp = load i8, ptr %i.ce, align 1, !noalias !237, !noundef !4
  %i.cq = shl nuw nsw i32 %i.bt, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cj, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i, %bb.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i
  %.sroa.0.06.ph.i.i = phi ptr [ %i.bv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i ], [ %i.ce, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i ], [ %i.co, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i ], [ %i.bp, %bb.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ca, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i ], [ %i.cl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i ], [ %i.cw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i32 %.sroa.4.0.i.ph.i.i, %i.bl
  br i1 %i.cy, label %_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i, label %bb.k

._crit_edge.i:                                    ; preds = %_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i, %bb.f
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !231

_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i: ; preds = %bb.j
  %i.cz = ptrtoint ptr %i.bn to i64
  %i.da = ptrtoint ptr %.sroa.0.06.ph.i.i to i64
  %i.db = sub nuw i64 %i.cz, %i.da                ; 2 uses
  store ptr %.sroa.0.06.ph.i.i, ptr %i.e, align 8, !alias.scope !235, !noalias !234, !captures !10
  store i64 %i.db, ptr %i.f, align 8, !alias.scope !235, !noalias !234
  %i.dc = icmp eq ptr %i.bj, %i.bf
  br i1 %i.dc, label %._crit_edge.i, label %bb.g

bb.k:                                             ; preds = %bb.j, %bb.g
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit52.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !231

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit52.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  br label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit

bb.l:                                             ; preds = %.loopexit.split-lp.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !231
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  %i.de = load i32, ptr %i.d, align 8, !range !8, !noalias !223, !noundef !4 ; 3 uses
  %i.df = load i32, ptr %i.az, align 4, !noalias !223 ; 2 uses
  store i32 -1, ptr %i.d, align 8, !noalias !223
  %.not.not.i = icmp eq i32 %i.de, -1
  br i1 %.not.not.i, label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i
  %i.dg = and i32 %i.df, 1073741823
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.as, %bb.m
  %.sroa.514.0.i = phi i32 [ %i.df, %bb.m ], [ %.sroa.026.0.i, %bb.as ]
  %.sroa.011.0.i = phi i32 [ %i.de, %bb.m ], [ %.sroa.4.0.i.ph9398.i, %bb.as ]
  %i.di = invoke fastcc noundef i32 @_RNvMs1_Cs9CN1NTpuHUY_14icu_normalizerINtB5_13DecompositionNtNtNtCshzWfHUSfYae_4core3str4iter5CharsE16decomposing_nextB5_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.011.0.i, i32 noundef %.sroa.514.0.i)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.i, !noalias !231

bb.o:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.dj = load ptr, ptr %i.e, align 8, !alias.scope !239, !noalias !234, !nonnull !4, !noundef !4 ; 6 uses
  %i.dk = load i64, ptr %i.f, align 8, !alias.scope !239, !noalias !234, !noundef !4 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = icmp samesign eq i64 %i.dk, 0
  br i1 %i.dm, label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  %i.do = load i8, ptr %i.dj, align 1, !noalias !240, !noundef !4 ; 5 uses
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.q, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i53.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i53.i: ; preds = %bb.p
  %i.dq = and i8 %i.do, 31
  %i.dr = zext nneg i8 %i.dq to i32               ; 3 uses
  %i.ds = icmp samesign ne i64 %i.dk, 1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 2 ; 2 uses
  %i.du = load i8, ptr %i.dn, align 1, !noalias !240, !noundef !4
  %i.dv = shl nuw nsw i32 %i.dr, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = zext nneg i8 %i.dw to i32               ; 2 uses
  %i.dy = or disjoint i32 %i.dv, %i.dx
  %i.dz = icmp samesign ugt i8 %i.do, -33
  br i1 %i.dz, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i57.i, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ea = zext nneg i8 %i.do to i32
  br label %bb.r

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i57.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i53.i
  %i.eb = icmp samesign ne i64 %i.dk, 2
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 3 ; 2 uses
  %i.ed = load i8, ptr %i.dt, align 1, !noalias !240, !noundef !4
  %i.ee = shl nuw nsw i32 %i.dx, 6
  %i.ef = and i8 %i.ed, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg            ; 2 uses
  %i.ei = shl nuw nsw i32 %i.dr, 12
  %i.ej = or disjoint i32 %i.eh, %i.ei
  %i.ek = icmp samesign ugt i8 %i.do, -17
  br i1 %i.ek, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i58.i, label %bb.r

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i58.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i57.i
  %i.el = icmp samesign ne i64 %i.dk, 3
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.en = load i8, ptr %i.ec, align 1, !noalias !240, !noundef !4
  %i.eo = shl nuw nsw i32 %i.dr, 18
  %i.ep = and i32 %i.eo, 1835008
  %i.eq = shl nuw nsw i32 %i.eh, 6
  %i.er = and i8 %i.en, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = or disjoint i32 %i.et, %i.ep
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i58.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i57.i, %bb.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i53.i
  %i.ev = phi ptr [ %i.dt, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i53.i ], [ %i.ec, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i57.i ], [ %i.em, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i58.i ], [ %i.dn, %bb.q ] ; 6 uses
  %.sroa.4.0.i.ph.i55.i = phi i32 [ %i.dy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i53.i ], [ %i.ej, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i57.i ], [ %i.eu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i58.i ], [ %i.ea, %bb.q ] ; 2 uses
  %i.ew = icmp samesign ult i32 %.sroa.4.0.i.ph.i55.i, 1114112
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i32 %.sroa.4.0.i.ph.i55.i, %i.de
  br i1 %i.ex, label %bb.s, label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ey = ptrtoint ptr %i.dl to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub nuw i64 %i.ey, %i.ez                ; 7 uses
  store ptr %i.ev, ptr %i.e, align 8, !alias.scope !239, !noalias !234, !captures !10
  store i64 %i.fa, ptr %i.f, align 8, !alias.scope !239, !noalias !234
  %i.fb = load ptr, ptr %i.ba, align 8, !noalias !223, !nonnull !4, !noundef !4 ; 9 uses
  %i.fc = load ptr, ptr %i.bb, align 8, !noalias !223, !nonnull !4, !noundef !4 ; 5 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub nuw i64 %i.fd, %i.fe                ; 16 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ff
  br label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i, %bb.s
  %i.fh = load ptr, ptr %i.ba, align 8, !noalias !223, !nonnull !4, !noundef !4 ; 2 uses
  %i.fi = load ptr, ptr %i.bb, align 8, !noalias !223, !nonnull !4, !noundef !4 ; 3 uses
  %3 = ptrtoint ptr %i.fi to i64
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.fk = icmp eq ptr %i.fl, %i.fi
  br i1 %i.fk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.06.0.i150 = phi ptr [ %i.fl, %bb.u ], [ %i.fh, %bb.t ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i150, i64 1 ; 3 uses
  %i.fm = load i8, ptr %.sroa.06.0.i150, align 1, !noalias !231, !noundef !4
  %i.fn = icmp ult i8 %i.fm, %.sroa.05.0.i
  br i1 %i.fn, label %bb.u, label %bb.aa

._crit_edge:                                      ; preds = %bb.t, %bb.u
  %.not106.i = icmp eq ptr %i.fb, %i.ev
  br i1 %.not106.i, label %bb.v, label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit

bb.v:                                             ; preds = %._crit_edge
  %i.fo = icmp eq ptr %i.fc, %i.ev
  br i1 %i.fo, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i = icmp ult i64 %i.ff, %i.fa
  br i1 %.not.i.i.i, label %bb.x, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.w
  %i.fp = icmp eq i64 %i.ff, %i.fa
  br i1 %i.fp, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ff
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !241, !noalias !242, !noundef !4
  %i.fs = icmp sgt i8 %i.fr, -65
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %.split.i.i.i, %bb.v
  %i.ft = sub nuw i64 %i.fa, %i.ff
  br label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit

bb.z:                                             ; preds = %bb.x, %.split.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.fa, i64 noundef %i.ff, i64 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !231

.noexc61.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.lr.ph
  %i.fu = ptrtoint ptr %i.fl to i64
  %.neg.i = sub i64 %i.fu, %3
  %i.fv = add i64 %.neg.i, %i.ff                  ; 2 uses
  %i.fw = add i64 %i.fv, -1                       ; 8 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i62.i = icmp ult i64 %i.fw, %i.ff
  br i1 %.not.i62.i, label %bb.ac, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ab
  %i.fy = icmp eq i64 %i.fw, %i.ff
  br i1 %i.fy, label %bb.ad, label %.invoke.i

bb.ac:                                            ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !243, !noalias !231, !noundef !4
  %i.gb = icmp sgt i8 %i.ga, -65
  br i1 %i.gb, label %bb.ad, label %.invoke.i

bb.ad:                                            ; preds = %bb.ac, %.split.i.i, %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw ; 5 uses
  store ptr %i.gc, ptr %i.ba, align 8, !noalias !223
  store ptr %i.fg, ptr %i.bb, align 8, !noalias !223
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.gd = icmp samesign eq i64 %i.fw, %i.ff
  br i1 %i.gd, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fv ; 3 uses
  store ptr %i.ge, ptr %i.ba, align 8, !alias.scope !245, !noalias !223
  %i.gf = load i8, ptr %i.gc, align 1, !noalias !246, !noundef !4 ; 5 uses
  %i.gg = icmp sgt i8 %i.gf, -1
  br i1 %i.gg, label %.thread88.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i: ; preds = %bb.ae
  %i.gh = and i8 %i.gf, 31
  %i.gi = zext nneg i8 %i.gh to i32               ; 3 uses
  %i.gj = icmp ne ptr %i.ge, %i.fc
  call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 3 uses
  store ptr %i.gk, ptr %i.ba, align 8, !alias.scope !247, !noalias !223
  %i.gl = load i8, ptr %i.ge, align 1, !noalias !246, !noundef !4
  %i.gm = shl nuw nsw i32 %i.gi, 6
  %i.gn = and i8 %i.gl, 63
  %i.go = zext nneg i8 %i.gn to i32               ; 2 uses
  %i.gp = or disjoint i32 %i.gm, %i.go
  %i.gq = icmp samesign ugt i8 %i.gf, -33
  br i1 %i.gq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, label %bb.ag

.thread88.i:                                      ; preds = %bb.ae
  %i.gr = zext nneg i8 %i.gf to i32
  %i.gs = load ptr, ptr %i.be, align 8, !noalias !223, !nonnull !4, !align !6, !noundef !4
  br label %bb.ai

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %i.gt = icmp ne ptr %i.gk, %i.fc
  call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 3 ; 3 uses
  store ptr %i.gu, ptr %i.ba, align 8, !alias.scope !248, !noalias !223
  %i.gv = load i8, ptr %i.gk, align 1, !noalias !246, !noundef !4
  %i.gw = shl nuw nsw i32 %i.go, 6
  %i.gx = and i8 %i.gv, 63
  %i.gy = zext nneg i8 %i.gx to i32
  %i.gz = or disjoint i32 %i.gw, %i.gy            ; 2 uses
  %i.ha = shl nuw nsw i32 %i.gi, 12
  %i.hb = or disjoint i32 %i.gz, %i.ha
  %i.hc = icmp samesign ugt i8 %i.gf, -17
  br i1 %i.hc, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, label %bb.ag

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i
  %i.hd = icmp ne ptr %i.gu, %i.fc
  call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store ptr %i.he, ptr %i.ba, align 8, !alias.scope !249, !noalias !223
  %i.hf = load i8, ptr %i.gu, align 1, !noalias !246, !noundef !4
  %i.hg = shl nuw nsw i32 %i.gi, 18
  %i.hh = and i32 %i.hg, 1835008
  %i.hi = shl nuw nsw i32 %i.gz, 6
  %i.hj = and i8 %i.hf, 63
  %i.hk = zext nneg i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.hi, %i.hk
  %i.hm = or disjoint i32 %i.hl, %i.hh
  br label %bb.ag

bb.af:                                            ; preds = %bb.ah
  unreachable

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.hb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i ], [ %i.hm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i ], [ %i.gp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i ] ; 5 uses
  %i.hn = load ptr, ptr %i.be, align 8, !noalias !223, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ho = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.ho)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 52
  %i.hq = load i8, ptr %i.hp, align 4, !range !7, !alias.scope !250, !noalias !231, !noundef !4
  %i.hr = trunc nuw i8 %i.hq to i1
  %..i.i = select i1 %i.hr, i32 4095, i32 65535
  %.not.i.i = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, %..i.i
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !231

bb.ai:                                            ; preds = %bb.ag, %.thread88.i
  %i.hs = phi ptr [ %i.gs, %.thread88.i ], [ %i.hn, %bb.ag ] ; 4 uses
  %.sroa.4.0.i.ph92.i = phi i32 [ %i.gr, %.thread88.i ], [ %.sroa.4.0.i.ph.i, %bb.ag ] ; 3 uses
  %i.ht = lshr i32 %.sroa.4.0.i.ph92.i, 6
  %i.hu = zext nneg i32 %i.ht to i64              ; 2 uses
  %i.hv = load ptr, ptr %i.hs, align 8, !alias.scope !250, !noalias !231, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !250, !noalias !231, !noundef !4
  %i.hy = icmp ugt i64 %i.hx, %i.hu
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.hu
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.hz, align 1, !noalias !251
  %i.ia = zext i16 %.sroa.04.0.copyload.i.i to i64
  %i.ib = and i32 %.sroa.4.0.i.ph92.i, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = add nuw nsw i64 %i.ia, %i.ic            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !250, !noalias !231, !nonnull !4, !noundef !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !250, !noalias !231, !noundef !4
  %i.ii = icmp ult i64 %i.id, %i.ih
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.ij, align 1, !noalias !251
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i

bb.aj:                                            ; preds = %bb.ag
  %i.ik = invoke noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE20get32_by_small_indexCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hn, i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i) #15
          to label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i unwind label %.loopexit.i, !noalias !231

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i: ; preds = %bb.aj, %bb.ai
  %.sroa.4.0.i.ph9398.i = phi i32 [ %.sroa.4.0.i.ph92.i, %bb.ai ], [ %.sroa.4.0.i.ph.i, %bb.aj ] ; 5 uses
  %.sroa.026.0.i = phi i32 [ %.sroa.02.0.copyload.i.i, %bb.ai ], [ %i.ik, %bb.aj ] ; 4 uses
  %i.il = and i32 %.sroa.026.0.i, 1073741823
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.t, label %bb.ak

bb.ak:                                            ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i
  %i.in = load ptr, ptr %i.ba, align 8, !noalias !223, !nonnull !4, !noundef !4
  %i.io = load ptr, ptr %i.bb, align 8, !noalias !223, !nonnull !4, !noundef !4
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = icmp samesign ult i32 %.sroa.4.0.i.ph9398.i, 128
  br i1 %i.ir, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.is = icmp samesign ult i32 %.sroa.4.0.i.ph9398.i, 2048
  br i1 %i.is, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.it = icmp samesign ult i32 %.sroa.4.0.i.ph9398.i, 65536
  %..i = select i1 %i.it, i64 -3, i64 -4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.sroa.018.0.neg.i = phi i64 [ -2, %bb.al ], [ %..i, %bb.am ], [ -1, %bb.ak ]
  %.neg39.i = add i64 %i.ff, %i.iq
  %i.iu = sub i64 %.neg39.i, %i.ip
  %i.iv = add i64 %i.iu, %.sroa.018.0.neg.i       ; 7 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i66.i = icmp ult i64 %i.iv, %i.ff
  br i1 %.not.i66.i, label %bb.ap, label %.split.i67.i

.split.i67.i:                                     ; preds = %bb.ao
  %i.ix = icmp eq i64 %i.iv, %i.ff
  br i1 %i.ix, label %bb.aq, label %.invoke.i

bb.ap:                                            ; preds = %bb.ao
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.iv
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !252, !noalias !231, !noundef !4
  %i.ja = icmp sgt i8 %i.iz, -65
  br i1 %i.ja, label %bb.aq, label %.invoke.i

bb.aq:                                            ; preds = %bb.ap, %.split.i67.i, %bb.an
  %i.jb = invoke noundef zeroext i1 @_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.iv)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.i, !noalias !221

.invoke.i:                                        ; preds = %bb.ap, %.split.i67.i, %bb.ac, %.split.i.i
  %i.jc = phi i64 [ %i.fw, %bb.ac ], [ %i.fw, %.split.i.i ], [ 0, %.split.i67.i ], [ 0, %bb.ap ]
  %i.jd = phi i64 [ %i.ff, %bb.ac ], [ %i.ff, %.split.i.i ], [ %i.iv, %.split.i67.i ], [ %i.iv, %bb.ap ]
  %i.je = phi ptr [ @1, %bb.ac ], [ @1, %.split.i.i ], [ @3, %.split.i67.i ], [ @3, %bb.ap ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.ff, i64 noundef %i.jc, i64 noundef %i.jd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.je) #17
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !231

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.jb, label %_RINvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB6_29DecomposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@_RNvMs6_Cs9CN1NTpuHUY_14icu_normalizerNtB5_29DecomposingNormalizerBorrowed9normalize:bb.a
  %.sroa.0.0.ph.i.i.i = select i1 %i.cg, i64 2, i64 %..i.i.i
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.0.0.ph.i.i.i)
          to label %.noexc46.i unwind label %bb.t, !noalias !324

.noexc46.i:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !336, !noalias !337, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bz ; 9 uses
  %i.ck = trunc i32 %i.cc to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, -128              ; 3 uses
  %i.cn = lshr i32 %i.cc, 6
  %i.co = trunc i32 %i.cn to i8                   ; 2 uses
  %i.cp = and i8 %i.co, 63
  %i.cq = or disjoint i8 %i.cp, -128              ; 2 uses
  %i.cr = lshr i32 %i.cc, 12
  %i.cs = trunc i32 %i.cr to i8                   ; 2 uses
  %i.ct = and i8 %i.cs, 63
  %i.cu = or disjoint i8 %i.ct, -128
  %i.cv = lshr i32 %i.cc, 18
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = or i8 %i.cw, -16
  br i1 %i.cg, label %bb.p, label %bb.q

bb.o:                                             ; preds = %.lr.ph.i
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %.noexc47.i unwind label %bb.t, !noalias !324

.noexc47.i:                                       ; preds = %bb.o
  %i.cy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !336, !noalias !337, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bz
  %i.da = trunc i32 %i.cc to i8
  store i8 %i.da, ptr %i.cz, align 1, !noalias !324
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

bb.p:                                             ; preds = %.noexc46.i
  %i.db = or disjoint i8 %i.co, -64
  store i8 %i.db, ptr %i.cj, align 1, !noalias !324
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.cm, ptr %i.dc, align 1, !noalias !324
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

bb.q:                                             ; preds = %.noexc46.i
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dd = or disjoint i8 %i.cs, -32
  store i8 %i.dd, ptr %i.cj, align 1, !noalias !324
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.cq, ptr %i.de, align 1, !noalias !324
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i8 %i.cm, ptr %i.df, align 1, !noalias !324
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

bb.s:                                             ; preds = %bb.q
  store i8 %i.cx, ptr %i.cj, align 1, !noalias !324
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.cu, ptr %i.dg, align 1, !noalias !324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i8 %i.cq, ptr %i.dh, align 1, !noalias !324
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  store i8 %i.cm, ptr %i.di, align 1, !noalias !324
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i: ; preds = %bb.s, %bb.r, %bb.p, %.noexc47.i
  %.sroa.0.03.i.i.i = phi i64 [ 1, %.noexc47.i ], [ 2, %bb.p ], [ 3, %bb.r ], [ 4, %bb.s ]
  %i.dj = add nuw i64 %.sroa.0.03.i.i.i, %i.bz    ; 2 uses
  store i64 %i.dj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !336, !noalias !337
  %i.dk = load ptr, ptr %i.b, align 8, !noalias !326, !nonnull !4, !noundef !4 ; 2 uses
  %i.dl = load ptr, ptr %i.bp, align 8, !noalias !326, !nonnull !4, !noundef !4
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i, %bb.m
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !324

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit50.i unwind label %bb.u, !noalias !324

.loopexit107.i:                                   ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i, %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bo)
          to label %bb.bj unwind label %bb.e

bb.u:                                             ; preds = %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit50.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !324
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !326
  %i.dp = load i32, ptr %i.d, align 8, !range !8, !noalias !326, !noundef !4 ; 10 uses
  %i.dq = load i32, ptr %i.bq, align 4, !noalias !326 ; 2 uses
  store i32 -1, ptr %i.d, align 8, !noalias !326
  %.not.i4 = icmp eq i32 %i.dp, -1
  br i1 %.not.i4, label %.loopexit107.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i
  %i.dr = and i32 %i.dq, 1073741823
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ba, %bb.v
  %.sroa.514.0.i = phi i32 [ %i.dq, %bb.v ], [ %.sroa.026.0.i, %bb.ba ]
  %.sroa.011.0.i = phi i32 [ %i.dp, %bb.v ], [ %.sroa.4.0.i.ph9196.i, %bb.ba ]
  %i.dt = invoke fastcc noundef i32 @_RNvMs1_Cs9CN1NTpuHUY_14icu_normalizerINtB5_13DecompositionNtNtNtCshzWfHUSfYae_4core3str4iter5CharsE16decomposing_nextB5_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.011.0.i, i32 noundef %.sroa.514.0.i)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.i, !noalias !324 ; 8 uses

bb.x:                                             ; preds = %bb.v
  %i.du = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !338, !noalias !337, !noundef !4 ; 4 uses
  %i.dv = icmp sgt i64 %i.du, -1
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ult i32 %i.dp, 128
  br i1 %i.dw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = icmp samesign ult i32 %i.dp, 2048       ; 2 uses
  %i.dy = icmp samesign ult i32 %i.dp, 65536      ; 2 uses
  %..i.i51.i = select i1 %i.dy, i64 3, i64 4
  %.sroa.0.0.ph.i.i52.i = select i1 %i.dx, i64 2, i64 %..i.i51.i
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.0.0.ph.i.i52.i)
          to label %.noexc54.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !324

.noexc54.i:                                       ; preds = %bb.y
  %i.dz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !338, !noalias !337, !nonnull !4, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.du ; 9 uses
  %i.eb = trunc i32 %i.dp to i8
  %i.ec = and i8 %i.eb, 63
  %i.ed = or disjoint i8 %i.ec, -128              ; 3 uses
  %i.ee = lshr i32 %i.dp, 6
  %i.ef = trunc i32 %i.ee to i8                   ; 2 uses
  %i.eg = and i8 %i.ef, 63
  %i.eh = or disjoint i8 %i.eg, -128              ; 2 uses
  %i.ei = lshr i32 %i.dp, 12
  %i.ej = trunc i32 %i.ei to i8                   ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = or disjoint i8 %i.ek, -128
  %i.em = lshr i32 %i.dp, 18
  %i.en = trunc nuw nsw i32 %i.em to i8
  %i.eo = or disjoint i8 %i.en, -16
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !324

.noexc55.i:                                       ; preds = %bb.z
  %i.ep = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !338, !noalias !337, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.du
  %i.er = trunc nuw nsw i32 %i.dp to i8
  store i8 %i.er, ptr %i.eq, align 1, !noalias !324
  br label %bb.ae

bb.aa:                                            ; preds = %.noexc54.i
  %i.es = or disjoint i8 %i.ef, -64
  store i8 %i.es, ptr %i.ea, align 1, !noalias !324
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.ed, ptr %i.et, align 1, !noalias !324
  br label %bb.ae

bb.ab:                                            ; preds = %.noexc54.i
  br i1 %i.dy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = or disjoint i8 %i.ej, -32
  store i8 %i.eu, ptr %i.ea, align 1, !noalias !324
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.eh, ptr %i.ev, align 1, !noalias !324
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i8 %i.ed, ptr %i.ew, align 1, !noalias !324
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store i8 %i.eo, ptr %i.ea, align 1, !noalias !324
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.el, ptr %i.ex, align 1, !noalias !324
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i8 %i.eh, ptr %i.ey, align 1, !noalias !324
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  store i8 %i.ed, ptr %i.ez, align 1, !noalias !324
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %.noexc55.i
  %.sroa.0.03.i.i53.i = phi i64 [ 1, %.noexc55.i ], [ 2, %bb.aa ], [ 3, %bb.ac ], [ 4, %bb.ad ]
  %i.fa = add nuw i64 %.sroa.0.03.i.i53.i, %i.du
  store i64 %i.fa, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !338, !noalias !337
  %i.fb = load ptr, ptr %i.br, align 8, !noalias !326, !nonnull !4, !noundef !4 ; 10 uses
  %i.fc = load ptr, ptr %i.bs, align 8, !noalias !326, !nonnull !4, !noundef !4 ; 5 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub nuw i64 %i.fd, %i.fe                ; 14 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ff
  br label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i, %bb.ae
  %i.fh = load ptr, ptr %i.br, align 8, !noalias !326, !nonnull !4, !noundef !4 ; 2 uses
  %i.fi = load ptr, ptr %i.bs, align 8, !noalias !326, !nonnull !4, !noundef !4 ; 3 uses
  %4 = ptrtoint ptr %i.fi to i64
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.fk = icmp eq ptr %i.fl, %i.fi
  br i1 %i.fk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %bb.ag
  %.sroa.06.0.i117 = phi ptr [ %i.fl, %bb.ag ], [ %i.fh, %bb.af ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i117, i64 1 ; 3 uses
  %i.fm = load i8, ptr %.sroa.06.0.i117, align 1, !noalias !324, !noundef !4
  %i.fn = icmp ult i8 %i.fm, %.sroa.05.0.i
  br i1 %i.fn, label %bb.ag, label %bb.ai

._crit_edge:                                      ; preds = %bb.af, %bb.ag
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ff)
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !324

.noexc58.i:                                       ; preds = %._crit_edge
  %i.fo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !339, !noalias !340, !noundef !4 ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  %.not.i.i.i.i = icmp eq ptr %i.fc, %i.fb
  br i1 %.not.i.i.i.i, label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc58.i
  %i.fq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !339, !noalias !340, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %i.fb, i64 %i.ff, i1 false), !noalias !324
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !339, !noalias !340
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i: ; preds = %bb.ah, %.noexc58.i
  %i.fs = phi i64 [ %.pre.i.i.i.i, %bb.ah ], [ %i.fo, %.noexc58.i ]
  %i.ft = add i64 %i.fs, %i.ff
  store i64 %i.ft, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !339, !noalias !340
  br label %.loopexit107.i

bb.ai:                                            ; preds = %.lr.ph
  %i.fu = ptrtoint ptr %i.fl to i64
  %.neg.i = sub i64 %i.fu, %4
  %i.fv = add i64 %.neg.i, %i.ff                  ; 2 uses
  %i.fw = add i64 %i.fv, -1                       ; 8 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i59.i = icmp ult i64 %i.fw, %i.ff
  br i1 %.not.i59.i, label %bb.ak, label %.split.i.i5

.split.i.i5:                                      ; preds = %bb.aj
  %i.fy = icmp eq i64 %i.fw, %i.ff
  br i1 %i.fy, label %bb.al, label %.invoke.i

bb.ak:                                            ; preds = %bb.aj
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !341, !noalias !324, !noundef !4
  %i.gb = icmp sgt i8 %i.ga, -65
  br i1 %i.gb, label %bb.al, label %.invoke.i

bb.al:                                            ; preds = %bb.ak, %.split.i.i5, %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw ; 5 uses
  store ptr %i.gc, ptr %i.br, align 8, !noalias !326
  store ptr %i.fg, ptr %i.bs, align 8, !noalias !326
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.gd = icmp samesign eq i64 %i.fw, %i.ff
  br i1 %i.gd, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fv ; 3 uses
  store ptr %i.ge, ptr %i.br, align 8, !alias.scope !343, !noalias !326
  %i.gf = load i8, ptr %i.gc, align 1, !noalias !344, !noundef !4 ; 5 uses
  %i.gg = icmp sgt i8 %i.gf, -1
  br i1 %i.gg, label %.thread86.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i: ; preds = %bb.am
  %i.gh = and i8 %i.gf, 31
  %i.gi = zext nneg i8 %i.gh to i32               ; 3 uses
  %i.gj = icmp ne ptr %i.ge, %i.fc
  call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 3 uses
  store ptr %i.gk, ptr %i.br, align 8, !alias.scope !345, !noalias !326
  %i.gl = load i8, ptr %i.ge, align 1, !noalias !344, !noundef !4
  %i.gm = shl nuw nsw i32 %i.gi, 6
  %i.gn = and i8 %i.gl, 63
  %i.go = zext nneg i8 %i.gn to i32               ; 2 uses
  %i.gp = or disjoint i32 %i.gm, %i.go
  %i.gq = icmp samesign ugt i8 %i.gf, -33
  br i1 %i.gq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, label %bb.ao

.thread86.i:                                      ; preds = %bb.am
  %i.gr = zext nneg i8 %i.gf to i32
  %i.gs = load ptr, ptr %i.bv, align 8, !noalias !326, !nonnull !4, !align !6, !noundef !4
  br label %bb.aq

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %i.gt = icmp ne ptr %i.gk, %i.fc
  call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 3 ; 3 uses
  store ptr %i.gu, ptr %i.br, align 8, !alias.scope !346, !noalias !326
  %i.gv = load i8, ptr %i.gk, align 1, !noalias !344, !noundef !4
  %i.gw = shl nuw nsw i32 %i.go, 6
  %i.gx = and i8 %i.gv, 63
  %i.gy = zext nneg i8 %i.gx to i32
  %i.gz = or disjoint i32 %i.gw, %i.gy            ; 2 uses
  %i.ha = shl nuw nsw i32 %i.gi, 12
  %i.hb = or disjoint i32 %i.gz, %i.ha
  %i.hc = icmp samesign ugt i8 %i.gf, -17
  br i1 %i.hc, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, label %bb.ao

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i
  %i.hd = icmp ne ptr %i.gu, %i.fc
  call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store ptr %i.he, ptr %i.br, align 8, !alias.scope !347, !noalias !326
  %i.hf = load i8, ptr %i.gu, align 1, !noalias !344, !noundef !4
  %i.hg = shl nuw nsw i32 %i.gi, 18
  %i.hh = and i32 %i.hg, 1835008
  %i.hi = shl nuw nsw i32 %i.gz, 6
  %i.hj = and i8 %i.hf, 63
  %i.hk = zext nneg i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.hi, %i.hk
  %i.hm = or disjoint i32 %i.hl, %i.hh
  br label %bb.ao

bb.an:                                            ; preds = %bb.ap
  unreachable

bb.ao:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.hb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i ], [ %i.hm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i ], [ %i.gp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i ] ; 5 uses
  %i.hn = load ptr, ptr %i.bv, align 8, !noalias !326, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ho = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.ho)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 52
  %i.hq = load i8, ptr %i.hp, align 4, !range !7, !alias.scope !348, !noalias !324, !noundef !4
  %i.hr = trunc nuw i8 %i.hq to i1
  %..i.i = select i1 %i.hr, i32 4095, i32 65535
  %.not.i.i6 = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, %..i.i
  br i1 %.not.i.i6, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.al
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !324

bb.aq:                                            ; preds = %bb.ao, %.thread86.i
  %i.hs = phi ptr [ %i.gs, %.thread86.i ], [ %i.hn, %bb.ao ] ; 4 uses
  %.sroa.4.0.i.ph90.i = phi i32 [ %i.gr, %.thread86.i ], [ %.sroa.4.0.i.ph.i, %bb.ao ] ; 3 uses
  %i.ht = lshr i32 %.sroa.4.0.i.ph90.i, 6
  %i.hu = zext nneg i32 %i.ht to i64              ; 2 uses
  %i.hv = load ptr, ptr %i.hs, align 8, !alias.scope !348, !noalias !324, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !348, !noalias !324, !noundef !4
  %i.hy = icmp ugt i64 %i.hx, %i.hu
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.hu
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.hz, align 1, !noalias !349
  %i.ia = zext i16 %.sroa.04.0.copyload.i.i to i64
  %i.ib = and i32 %.sroa.4.0.i.ph90.i, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = add nuw nsw i64 %i.ia, %i.ic            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !348, !noalias !324, !nonnull !4, !noundef !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !348, !noalias !324, !noundef !4
  %i.ii = icmp ult i64 %i.id, %i.ih
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.ij, align 1, !noalias !349
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.ik = invoke noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE20get32_by_small_indexCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hn, i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i) #15
          to label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i unwind label %.loopexit.i, !noalias !324

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i: ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.i.ph9196.i = phi i32 [ %.sroa.4.0.i.ph90.i, %bb.aq ], [ %.sroa.4.0.i.ph.i, %bb.ar ] ; 5 uses
  %.sroa.026.0.i = phi i32 [ %.sroa.02.0.copyload.i.i, %bb.aq ], [ %i.ik, %bb.ar ] ; 4 uses
  %i.il = and i32 %.sroa.026.0.i, 1073741823
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.af, label %bb.as

bb.as:                                            ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit.i
  %i.in = load ptr, ptr %i.br, align 8, !noalias !326, !nonnull !4, !noundef !4
  %i.io = load ptr, ptr %i.bs, align 8, !noalias !326, !nonnull !4, !noundef !4
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = icmp samesign ult i32 %.sroa.4.0.i.ph9196.i, 128
  br i1 %i.ir, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.is = icmp samesign ult i32 %.sroa.4.0.i.ph9196.i, 2048
  br i1 %i.is, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = icmp samesign ult i32 %.sroa.4.0.i.ph9196.i, 65536
  %..i = select i1 %i.it, i64 -3, i64 -4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.018.0.neg.i = phi i64 [ -2, %bb.at ], [ %..i, %bb.au ], [ -1, %bb.as ]
  %.neg39.i = add i64 %i.ff, %i.iq
  %i.iu = sub i64 %.neg39.i, %i.ip
  %i.iv = add i64 %i.iu, %.sroa.018.0.neg.i       ; 9 uses
  %i.iw = icmp eq i64 %i.iv, 0                    ; 2 uses
  br i1 %i.iw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not.i63.i = icmp ult i64 %i.iv, %i.ff
  br i1 %.not.i63.i, label %bb.ax, label %.split.i64.i

.split.i64.i:                                     ; preds = %bb.aw
  %i.ix = icmp eq i64 %i.iv, %i.ff
  br i1 %i.ix, label %bb.ay, label %.invoke.i

bb.ax:                                            ; preds = %bb.aw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.iv
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !350, !noalias !324, !noundef !4
  %i.ja = icmp sgt i8 %i.iz, -65
  br i1 %i.ja, label %bb.ay, label %.invoke.i

bb.ay:                                            ; preds = %bb.ax, %.split.i64.i, %bb.av
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.iv)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !324

.noexc68.i:                                       ; preds = %bb.ay
  %i.jb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !351, !noalias !352, !noundef !4 ; 3 uses
  %i.jc = icmp sgt i64 %i.jb, -1
  call void @llvm.assume(i1 %i.jc)
  br i1 %i.iw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.noexc68.i
  %i.jd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !351, !noalias !352, !nonnull !4, !noundef !4
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.je, ptr nonnull readonly align 1 %i.fb, i64 %i.iv, i1 false), !noalias !324
  %.pre.i.i.i67.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !351, !noalias !352
  br label %bb.ba

.invoke.i:                                        ; preds = %bb.ax, %.split.i64.i, %bb.ak, %.split.i.i5
end_hunk_1
begin_hunk_2_@_RNvMs9_Cs9CN1NTpuHUY_14icu_normalizerNtB5_27ComposingNormalizerBorrowed19is_normalized_up_to:bb.a
  %i.ca = icmp samesign ult i32 %i.bz, 1114112
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i353354.i, i64 %i.bv
  %i.cc = icmp samesign eq i64 %i.bv, 0
  br i1 %i.cc, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i353354.i, i64 1 ; 2 uses
  %i.ce = load i8, ptr %.sroa.0.06.ph.i353354.i, align 1, !noalias !455, !noundef !4 ; 5 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i: ; preds = %bb.g
  %i.cg = and i8 %i.ce, 31
  %i.ch = zext nneg i8 %i.cg to i32               ; 3 uses
  %i.ci = icmp samesign ne i64 %i.bv, 1
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i353354.i, i64 2 ; 2 uses
  %i.ck = load i8, ptr %i.cd, align 1, !noalias !455, !noundef !4
  %i.cl = shl nuw nsw i32 %i.ch, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = icmp samesign ugt i8 %i.ce, -33
  br i1 %i.cp, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = zext nneg i8 %i.ce to i32
  br label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i
  %i.cr = icmp samesign ne i64 %i.bv, 2
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i353354.i, i64 3 ; 2 uses
  %i.ct = load i8, ptr %i.cj, align 1, !noalias !455, !noundef !4
  %i.cu = shl nuw nsw i32 %i.cn, 6
  %i.cv = and i8 %i.ct, 63
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw            ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ch, 12
  %i.cz = or disjoint i32 %i.cx, %i.cy
  %i.da = icmp samesign ugt i8 %i.ce, -17
  br i1 %i.da, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i, label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i
  %i.db = icmp samesign ne i64 %i.bv, 3
  call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.06.ph.i353354.i, i64 4
  %i.dd = load i8, ptr %i.cs, align 1, !noalias !455, !noundef !4
  %i.de = shl nuw nsw i32 %i.ch, 18
  %i.df = and i32 %i.de, 1835008
  %i.dg = shl nuw nsw i32 %i.cx, 6
  %i.dh = and i8 %i.dd, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = or disjoint i32 %i.dj, %i.df
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i, %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i
  %.sroa.0.06.ph.i.i = phi ptr [ %i.cj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i ], [ %i.cs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i ], [ %i.dc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i ], [ %i.cd, %bb.h ] ; 4 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.co, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i.i ], [ %i.cz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i.i ], [ %i.dk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i.i ], [ %i.cq, %bb.h ] ; 2 uses
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i32 %.sroa.4.0.i.ph.i.i, %i.bz
  br i1 %i.dm, label %_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i, label %bb.j

._crit_edge.i:                                    ; preds = %_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i, %bb.f
  %i.dn = phi i64 [ %2, %bb.f ], [ %i.dr, %_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i ] ; 2 uses
  %i.do = phi ptr [ %1, %bb.f ], [ %.sroa.0.06.ph.i.i, %_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i ]
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !451

_RNvXsc_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19IsNormalizedSinkStrNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i: ; preds = %bb.i
  %i.dp = ptrtoint ptr %i.cb to i64
  %i.dq = ptrtoint ptr %.sroa.0.06.ph.i.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq                ; 3 uses
  store ptr %.sroa.0.06.ph.i.i, ptr %i.o, align 8, !alias.scope !456, !noalias !457, !captures !10
  store i64 %i.dr, ptr %i.p, align 8, !alias.scope !456, !noalias !457
  %i.ds = icmp eq ptr %i.bx, %i.bt
  br i1 %i.ds, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit127.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !451

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit127.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !443
  br label %_RINvMs9_Cs9CN1NTpuHUY_14icu_normalizerNtB6_27ComposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit

bb.k:                                             ; preds = %.loopexit302.i
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !451
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !443
  %i.du = load i32, ptr %i.bq, align 4, !noalias !443, !noundef !4 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.dw = load i32, ptr %i.n, align 8, !range !8, !noalias !443, !noundef !4 ; 2 uses
  %i.dx = load i32, ptr %i.dv, align 4, !noalias !443
  store i32 -1, ptr %i.n, align 8, !noalias !443
  %.not387.i = icmp eq i32 %i.dw, -1
  br i1 %.not387.i, label %_RINvMs9_Cs9CN1NTpuHUY_14icu_normalizerNtB6_27ComposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit, label %.lr.ph388.i

.lr.ph388.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.ea = icmp eq i32 %i.du, 768
  %..i131.i = call range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.du, i32 128)
  %i.eb = trunc nuw i32 %..i131.i to i8
  %.sroa.06.0.i = select i1 %i.ea, i8 -52, i8 %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.bz, %.lr.ph388.i
  %i.es = phi i64 [ %i.dn, %.lr.ph388.i ], [ %i.sn, %bb.bz ] ; 6 uses
  %i.et = phi ptr [ %i.do, %.lr.ph388.i ], [ %i.so, %bb.bz ] ; 3 uses
  %i.eu = phi i32 [ %i.dx, %.lr.ph388.i ], [ %i.sq, %bb.bz ] ; 2 uses
  %i.ev = phi i32 [ %i.dw, %.lr.ph388.i ], [ %i.sp, %bb.bz ] ; 5 uses
  %i.ew = icmp ult i32 %i.ev, %i.du
  %i.ex = and i32 %i.eu, 1073741824
  %i.ey = icmp eq i32 %i.ex, 0
  %or.cond.i = select i1 %i.ew, i1 true, i1 %i.ey
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.at, %bb.l
  %.sroa.520.0.i = phi i32 [ %i.eu, %bb.l ], [ %.sroa.076.0.i, %bb.at ]
  %.sroa.017.0.i = phi i32 [ %i.ev, %bb.l ], [ %i.jp, %bb.at ]
  %i.ez = invoke fastcc noundef i32 @_RNvMs1_Cs9CN1NTpuHUY_14icu_normalizerINtB5_13DecompositionNtNtNtCshzWfHUSfYae_4core3str4iter5CharsE16decomposing_nextB5_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.n, i32 noundef %.sroa.017.0.i, i32 noundef %.sroa.520.0.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !451

.preheader.i:                                     ; preds = %bb.m
  %.promoted370.i = load ptr, ptr %i.o, align 8, !alias.scope !442, !noalias !457
  %.promoted377.i = load i64, ptr %i.p, align 8, !alias.scope !442, !noalias !457
  br label %.backedge.i.outer

bb.n:                                             ; preds = %bb.l
  %i.fa = load ptr, ptr %i.dy, align 8, !noalias !443, !nonnull !4, !noundef !4
  %i.fb = load ptr, ptr %i.dz, align 8, !noalias !443, !nonnull !4, !noundef !4
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = icmp samesign ult i32 %i.ev, 128
  br i1 %i.fe, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ff = icmp samesign ult i32 %i.ev, 2048
  br i1 %i.ff, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fg = icmp samesign ult i32 %i.ev, 65536
  %..i = select i1 %i.fg, i64 -3, i64 -4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.05.0.neg.i = phi i64 [ -2, %bb.o ], [ %..i, %bb.p ], [ -1, %bb.n ]
  %.neg.i = add i64 %2, %i.fd
  %i.fh = sub i64 %.neg.i, %i.fc
  %i.fi = add i64 %i.fh, %.sroa.05.0.neg.i        ; 9 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i128.i = icmp ult i64 %i.fi, %2
  br i1 %.not.i128.i, label %bb.s, label %.split.i.i

.split.i.i:                                       ; preds = %bb.r
  %i.fk = icmp eq i64 %i.fi, %2
  br i1 %i.fk, label %bb.t, label %.invoke583.i

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fi
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !458, !noalias !451, !noundef !4
  %i.fn = icmp sgt i8 %i.fm, -65
  br i1 %i.fn, label %bb.t, label %.invoke583.i

bb.t:                                             ; preds = %bb.s, %.split.i.i, %bb.q
  %i.fo = sub nuw i64 %2, %i.fi                   ; 13 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.fi ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit118.i, %bb.t
  %i.fq = load ptr, ptr %i.dy, align 8, !noalias !443, !nonnull !4, !noundef !4 ; 4 uses
  %i.fr = load ptr, ptr %i.dz, align 8, !noalias !443, !nonnull !4, !noundef !4 ; 5 uses
  %3 = ptrtoint ptr %i.fr to i64
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.ft = icmp eq ptr %i.fu, %i.fr
  br i1 %i.ft, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.sroa.07.0.i409 = phi ptr [ %i.fu, %bb.v ], [ %i.fq, %bb.u ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i409, i64 1 ; 3 uses
  %i.fv = load i8, ptr %.sroa.07.0.i409, align 1, !noalias !451, !noundef !4
  %i.fw = icmp ult i8 %i.fv, %.sroa.06.0.i
  br i1 %i.fw, label %bb.v, label %bb.ab

._crit_edge:                                      ; preds = %bb.u, %bb.v
  %.not298.i = icmp eq ptr %i.fp, %i.et
  br i1 %.not298.i, label %bb.w, label %_RINvMs9_Cs9CN1NTpuHUY_14icu_normalizerNtB6_27ComposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit

bb.w:                                             ; preds = %._crit_edge
  %i.fx = icmp eq i64 %2, %i.fi
  br i1 %i.fx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i = icmp ult i64 %i.fo, %i.es
  br i1 %.not.i.i.i, label %bb.y, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.x
  %i.fy = icmp eq i64 %i.fo, %i.es
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fo
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !459, !noalias !460, !noundef !4
  %i.gb = icmp sgt i8 %i.ga, -65
  br i1 %i.gb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.split.i.i.i, %bb.w
  %i.gc = sub nuw i64 %i.es, %i.fo
  br label %_RINvMs9_Cs9CN1NTpuHUY_14icu_normalizerNtB6_27ComposingNormalizerBorrowed12normalize_toNtB6_19IsNormalizedSinkStrEB6_.exit

bb.aa:                                            ; preds = %bb.y, %.split.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.es, i64 noundef %i.fo, i64 noundef %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
          to label %.noexc132.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !451

.noexc132.i:                                      ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %.lr.ph
  %i.gd = ptrtoint ptr %i.fu to i64
  %i.ge = xor i64 %3, -1
  %i.gf = add i64 %i.fo, %i.ge
  %i.gg = add i64 %i.gf, %i.gd                    ; 5 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i133.i = icmp ult i64 %i.gg, %i.fo
  br i1 %.not.i133.i, label %bb.ad, label %.split.i134.i

.split.i134.i:                                    ; preds = %bb.ac
  %i.gi = icmp eq i64 %i.gg, %i.fo
  br i1 %i.gi, label %bb.ae, label %.thread242.i

bb.ad:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gg
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !461, !noalias !451, !noundef !4
  %i.gl = icmp sgt i8 %i.gk, -65
  br i1 %i.gl, label %bb.ae, label %.thread242.i

bb.ae:                                            ; preds = %bb.ad, %.split.i134.i, %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gg ; 2 uses
  store ptr %i.gm, ptr %i.dy, align 8, !noalias !443
  store ptr %i.q, ptr %i.dz, align 8, !noalias !443
  br label %.thread242.i

.thread242.i:                                     ; preds = %bb.ae, %bb.ad, %.split.i134.i
  %i.gn = phi ptr [ %i.fr, %.split.i134.i ], [ %i.fr, %bb.ad ], [ %i.q, %bb.ae ] ; 4 uses
  %i.go = phi ptr [ %i.fq, %.split.i134.i ], [ %i.fq, %bb.ad ], [ %i.gm, %bb.ae ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.gp = icmp eq ptr %i.go, %i.gn
  br i1 %i.gp, label %.invoke.i, label %bb.af

bb.af:                                            ; preds = %.thread242.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 1 ; 3 uses
  store ptr %i.gq, ptr %i.dy, align 8, !alias.scope !463, !noalias !443
  %i.gr = load i8, ptr %i.go, align 1, !noalias !464, !noundef !4 ; 5 uses
  %i.gs = icmp sgt i8 %i.gr, -1
  br i1 %i.gs, label %.thread251.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i: ; preds = %bb.af
  %i.gt = and i8 %i.gr, 31
  %i.gu = zext nneg i8 %i.gt to i32               ; 3 uses
  %i.gv = icmp ne ptr %i.gq, %i.gn
  call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 2 ; 3 uses
  store ptr %i.gw, ptr %i.dy, align 8, !alias.scope !465, !noalias !443
  %i.gx = load i8, ptr %i.gq, align 1, !noalias !464, !noundef !4
  %i.gy = shl nuw nsw i32 %i.gu, 6
  %i.gz = and i8 %i.gx, 63
  %i.ha = zext nneg i8 %i.gz to i32               ; 2 uses
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %i.hc = icmp samesign ugt i8 %i.gr, -33
  br i1 %i.hc, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, label %bb.ag

.thread251.i:                                     ; preds = %bb.af
  %i.hd = zext nneg i8 %i.gr to i32
  %i.he = load ptr, ptr %i.ec, align 8, !noalias !443, !nonnull !4, !align !6, !noundef !4
  br label %bb.ah

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %i.hf = icmp ne ptr %i.gw, %i.gn
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.go, i64 3 ; 3 uses
  store ptr %i.hg, ptr %i.dy, align 8, !alias.scope !466, !noalias !443
  %i.hh = load i8, ptr %i.gw, align 1, !noalias !464, !noundef !4
  %i.hi = shl nuw nsw i32 %i.ha, 6
  %i.hj = and i8 %i.hh, 63
  %i.hk = zext nneg i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.hi, %i.hk            ; 2 uses
  %i.hm = shl nuw nsw i32 %i.gu, 12
  %i.hn = or disjoint i32 %i.hl, %i.hm
  %i.ho = icmp samesign ugt i8 %i.gr, -17
  br i1 %i.ho, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, label %bb.ag

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i
  %i.hp = icmp ne ptr %i.hg, %i.gn
  call void @llvm.assume(i1 %i.hp)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.hq, ptr %i.dy, align 8, !alias.scope !467, !noalias !443
  %i.hr = load i8, ptr %i.hg, align 1, !noalias !464, !noundef !4
  %i.hs = shl nuw nsw i32 %i.gu, 18
  %i.ht = and i32 %i.hs, 1835008
  %i.hu = shl nuw nsw i32 %i.hl, 6
  %i.hv = and i8 %i.hr, 63
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.hu, %i.hw
  %i.hy = or disjoint i32 %i.hx, %i.ht
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.hn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i ], [ %i.hy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i ], [ %i.hb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i ] ; 5 uses
  %i.hz = load ptr, ptr %i.ec, align 8, !noalias !443, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ia = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.ia)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 52
  %i.ic = load i8, ptr %i.ib, align 4, !range !7, !alias.scope !468, !noalias !451, !noundef !4
  %i.id = trunc nuw i8 %i.ic to i1
  %..i108.i = select i1 %i.id, i32 4095, i32 65535
  %.not.i109.i = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, %..i108.i
  br i1 %.not.i109.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread251.i
  %i.ie = phi ptr [ %i.he, %.thread251.i ], [ %i.hz, %bb.ag ] ; 4 uses
  %.sroa.4.0.i.ph255.i = phi i32 [ %i.hd, %.thread251.i ], [ %.sroa.4.0.i.ph.i, %bb.ag ] ; 3 uses
  %i.if = lshr i32 %.sroa.4.0.i.ph255.i, 6
  %i.ig = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ih = load ptr, ptr %i.ie, align 8, !alias.scope !468, !noalias !451, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !468, !noalias !451, !noundef !4
  %i.ik = icmp ugt i64 %i.ij, %i.ig
  call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.ig
  %.sroa.04.0.copyload.i110.i = load i16, ptr %i.il, align 1, !noalias !469
  %i.im = zext i16 %.sroa.04.0.copyload.i110.i to i64
  %i.in = and i32 %.sroa.4.0.i.ph255.i, 63
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = add nuw nsw i64 %i.im, %i.io            ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !468, !noalias !451, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !468, !noalias !451, !noundef !4
  %i.iu = icmp ult i64 %i.ip, %i.it
  call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  %.sroa.02.0.copyload.i111.i = load i32, ptr %i.iv, align 1, !noalias !469
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit118.i

bb.ai:                                            ; preds = %bb.ag
  %i.iw = invoke noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE20get32_by_small_indexCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hz, i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i) #15
          to label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit118.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !451

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit118.i: ; preds = %bb.ai, %bb.ah
  %.sroa.4.0.i.ph256261.i = phi i32 [ %.sroa.4.0.i.ph255.i, %bb.ah ], [ %.sroa.4.0.i.ph.i, %bb.ai ] ; 4 uses
  %.sroa.066.0.i = phi i32 [ %.sroa.02.0.copyload.i111.i, %bb.ah ], [ %i.iw, %bb.ai ] ; 2 uses
  %i.ix = icmp ult i32 %.sroa.066.0.i, 1073741824
  br i1 %i.ix, label %bb.u, label %bb.aj

bb.aj:                                            ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit118.i
  store i32 %.sroa.4.0.i.ph256261.i, ptr %i.n, align 8, !noalias !443
  store i32 %.sroa.066.0.i, ptr %i.dv, align 4, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !443
  %i.iy = load ptr, ptr %i.dy, align 8, !noalias !443, !nonnull !4, !noundef !4
  %i.iz = load ptr, ptr %i.dz, align 8, !noalias !443, !nonnull !4, !noundef !4
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = icmp samesign ult i32 %.sroa.4.0.i.ph256261.i, 128
  br i1 %i.jc, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jd = icmp samesign ult i32 %.sroa.4.0.i.ph256261.i, 2048
  br i1 %i.jd, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.je = icmp samesign ult i32 %.sroa.4.0.i.ph256261.i, 65536
  %.105.i = select i1 %i.je, i64 -3, i64 -4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.sroa.016.0.neg.i = phi i64 [ -2, %bb.ak ], [ %.105.i, %bb.al ], [ -1, %bb.aj ]
  %.neg95.i = add i64 %i.fo, %i.jb
  %i.jf = sub i64 %.neg95.i, %i.ja
  %i.jg = add i64 %i.jf, %.sroa.016.0.neg.i       ; 7 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.i139.i = icmp ult i64 %i.jg, %i.fo
  br i1 %.not.i139.i, label %bb.ao, label %.split.i140.i

.split.i140.i:                                    ; preds = %bb.an
  %i.ji = icmp eq i64 %i.jg, %i.fo
  br i1 %i.ji, label %bb.ap, label %.invoke583.i

bb.ao:                                            ; preds = %bb.an
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.jg
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !470, !noalias !451, !noundef !4
  %i.jl = icmp sgt i8 %i.jk, -65
  br i1 %i.jl, label %bb.ap, label %.invoke583.i

bb.ap:                                            ; preds = %bb.ao, %.split.i140.i, %bb.am
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.jg
  store ptr %i.fp, ptr %i.k, align 8, !noalias !443
  store ptr %i.jm, ptr %i.ed, align 8, !noalias !443
  %i.jn = call fastcc { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef align 8 dereferenceable(16) %i.k), !noalias !451 ; 2 uses
  %i.jo = extractvalue { i32, i32 } %i.jn, 0
  %i.jp = extractvalue { i32, i32 } %i.jn, 1      ; 6 uses
  %i.jq = trunc i32 %i.jo to i1
  br i1 %i.jq, label %bb.aq, label %.invoke.i, !prof !9

.invoke583.i:                                     ; preds = %bb.ao, %.split.i140.i, %bb.s, %.split.i.i
  %i.jr = phi ptr [ %1, %.split.i.i ], [ %1, %bb.s ], [ %i.fp, %bb.ao ], [ %i.fp, %.split.i140.i ]
  %i.js = phi i64 [ %2, %.split.i.i ], [ %2, %bb.s ], [ %i.fo, %bb.ao ], [ %i.fo, %.split.i140.i ]
  %i.jt = phi i64 [ %i.fi, %.split.i.i ], [ %i.fi, %bb.s ], [ 0, %bb.ao ], [ 0, %.split.i140.i ]
  %i.ju = phi i64 [ %2, %.split.i.i ], [ %2, %bb.s ], [ %i.jg, %bb.ao ], [ %i.jg, %.split.i140.i ]
  %i.jv = phi ptr [ @4, %.split.i.i ], [ @4, %bb.s ], [ @6, %bb.ao ], [ @6, %.split.i140.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jr, i64 noundef %i.js, i64 noundef %i.jt, i64 noundef %i.ju, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jv) #17
          to label %.cont584.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !451
end_hunk_2
begin_hunk_3_@_RNvMs9_Cs9CN1NTpuHUY_14icu_normalizerNtB5_27ComposingNormalizerBorrowed9normalize:bb.a
  %i.cs = icmp samesign ult i32 %i.cq, 128
  br i1 %i.cs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = icmp samesign ult i32 %i.cq, 2048       ; 2 uses
  %i.cu = icmp samesign ult i32 %i.cq, 65536      ; 2 uses
  %..i.i.i = select i1 %i.cu, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i = select i1 %i.ct, i64 2, i64 %..i.i.i
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.sroa.0.0.ph.i.i.i)
          to label %.noexc120.i unwind label %bb.u, !noalias !608

.noexc120.i:                                      ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cm ; 9 uses
  %i.cx = trunc i32 %i.cp to i8
  %i.cy = and i8 %i.cx, 63
  %i.cz = or disjoint i8 %i.cy, -128              ; 3 uses
  %i.da = lshr i32 %i.cp, 6
  %i.db = trunc i32 %i.da to i8                   ; 2 uses
  %i.dc = and i8 %i.db, 63
  %i.dd = or disjoint i8 %i.dc, -128              ; 2 uses
  %i.de = lshr i32 %i.cp, 12
  %i.df = trunc i32 %i.de to i8                   ; 2 uses
  %i.dg = and i8 %i.df, 63
  %i.dh = or disjoint i8 %i.dg, -128
  %i.di = lshr i32 %i.cp, 18
  %i.dj = trunc i32 %i.di to i8
  %i.dk = or i8 %i.dj, -16
  br i1 %i.ct, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc121.i unwind label %bb.u, !noalias !608

.noexc121.i:                                      ; preds = %bb.p
  %i.dl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cm
  %i.dn = trunc i32 %i.cp to i8
  store i8 %i.dn, ptr %i.dm, align 1, !noalias !608
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

bb.q:                                             ; preds = %.noexc120.i
  %i.do = or disjoint i8 %i.db, -64
  store i8 %i.do, ptr %i.cw, align 1, !noalias !608
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.cz, ptr %i.dp, align 1, !noalias !608
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

bb.r:                                             ; preds = %.noexc120.i
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dq = or disjoint i8 %i.df, -32
  store i8 %i.dq, ptr %i.cw, align 1, !noalias !608
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.dd, ptr %i.dr, align 1, !noalias !608
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 %i.cz, ptr %i.ds, align 1, !noalias !608
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

bb.t:                                             ; preds = %bb.r
  store i8 %i.dk, ptr %i.cw, align 1, !noalias !608
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.dh, ptr %i.dt, align 1, !noalias !608
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 %i.dd, ptr %i.du, align 1, !noalias !608
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 %i.cz, ptr %i.dv, align 1, !noalias !608
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i: ; preds = %bb.t, %bb.s, %bb.q, %.noexc121.i
  %.sroa.0.03.i.i.i = phi i64 [ 1, %.noexc121.i ], [ 2, %bb.q ], [ 3, %bb.s ], [ 4, %bb.t ]
  %i.dw = add nuw i64 %.sroa.0.03.i.i.i, %i.cm    ; 2 uses
  store i64 %i.dw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !621, !noalias !622
  %i.dx = load ptr, ptr %i.k, align 8, !noalias !611, !nonnull !4, !noundef !4 ; 2 uses
  %i.dy = load ptr, ptr %i.ci, align 8, !noalias !611, !nonnull !4, !noundef !4
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit.i, %bb.m
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !608

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit124.i unwind label %bb.v, !noalias !608

.loopexit316.sink.split.i:                        ; preds = %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit181.i, %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i
  %.sink.i5 = phi i64 [ %i.um, %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit181.i ], [ %i.gh, %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i ]
  store i64 %.sink.i5, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !610, !noalias !622
  br label %.loopexit316.i

.loopexit316.i:                                   ; preds = %bb.cr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i, %.loopexit316.sink.split.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ch)
          to label %bb.ex unwind label %bb.e

bb.v:                                             ; preds = %bb.eq, %bb.cq, %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit124.i
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !608
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !611
  %i.ec = load i32, ptr %i.cg, align 4, !noalias !611, !noundef !4 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %i.ee = load i32, ptr %i.m, align 8, !range !8, !noalias !611, !noundef !4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !noalias !611
  store i32 -1, ptr %i.m, align 8, !noalias !611
  %.not366.i = icmp eq i32 %i.ee, -1
  br i1 %.not366.i, label %.loopexit316.i, label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec5DrainANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_EEB1a_.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.ei = icmp eq i32 %i.ec, 768
  %..i128.i = call range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.ec, i32 128)
  %i.ej = trunc nuw i32 %..i128.i to i8
  %.sroa.06.0.i = select i1 %i.ei, i8 -52, i8 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.cr, %.lr.ph367.i
  %i.ez = phi i32 [ %i.ef, %.lr.ph367.i ], [ %i.tf, %bb.cr ] ; 2 uses
  %i.fa = phi i32 [ %i.ee, %.lr.ph367.i ], [ %i.te, %bb.cr ] ; 5 uses
  %i.fb = icmp ult i32 %i.fa, %i.ec
  %i.fc = and i32 %i.ez, 1073741824
  %i.fd = icmp eq i32 %i.fc, 0
  %or.cond.i = select i1 %i.fb, i1 true, i1 %i.fd
  br i1 %or.cond.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.bc, %bb.w
  %.sroa.520.0.i = phi i32 [ %.sroa.076.0.i, %bb.bc ], [ %i.ez, %bb.w ]
  %.sroa.017.0.i = phi i32 [ %.sroa.4.1.i.ph277283.i, %bb.bc ], [ %i.fa, %bb.w ]
  %i.fe = invoke fastcc noundef i32 @_RNvMs1_Cs9CN1NTpuHUY_14icu_normalizerINtB5_13DecompositionNtNtNtCshzWfHUSfYae_4core3str4iter5CharsE16decomposing_nextB5_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.m, i32 noundef %.sroa.017.0.i, i32 noundef %.sroa.520.0.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !608

bb.y:                                             ; preds = %bb.w
  %i.ff = load ptr, ptr %i.eg, align 8, !noalias !611, !nonnull !4, !noundef !4
  %i.fg = load ptr, ptr %i.eh, align 8, !noalias !611, !nonnull !4, !noundef !4
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = icmp samesign ult i32 %i.fa, 128
  br i1 %i.fj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = icmp samesign ult i32 %i.fa, 2048
  br i1 %i.fk, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = icmp samesign ult i32 %i.fa, 65536
  %..i = select i1 %i.fl, i64 -3, i64 -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.05.0.neg.i = phi i64 [ -2, %bb.z ], [ %..i, %bb.aa ], [ -1, %bb.y ]
  %.neg.i = add i64 %.sink.i16, %i.fi
  %i.fm = sub i64 %.neg.i, %i.fh
  %i.fn = add i64 %i.fm, %.sroa.05.0.neg.i        ; 9 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i125.i = icmp ult i64 %i.fn, %.sink.i16
  br i1 %.not.i125.i, label %bb.ad, label %.split.i.i6

.split.i.i6:                                      ; preds = %bb.ac
  %i.fp = icmp eq i64 %i.fn, %.sink.i16
  br i1 %i.fp, label %bb.ae, label %.invoke505.i

bb.ad:                                            ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %.sink7.i15, i64 %i.fn
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !623, !noalias !624, !noundef !4
  %i.fs = icmp sgt i8 %i.fr, -65
  br i1 %i.fs, label %bb.ae, label %.invoke505.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i6, %bb.ab
  %i.ft = sub nuw i64 %.sink.i16, %i.fn           ; 11 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink7.i15, i64 %i.fn ; 10 uses
  br label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit116.i, %bb.ae
  %i.fv = load ptr, ptr %i.eg, align 8, !noalias !611, !nonnull !4, !noundef !4 ; 4 uses
  %i.fw = load ptr, ptr %i.eh, align 8, !noalias !611, !nonnull !4, !noundef !4 ; 5 uses
  %4 = ptrtoint ptr %i.fw to i64
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.fy = icmp eq ptr %i.fz, %i.fw
  br i1 %i.fy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %bb.ag
  %.sroa.07.0.i241 = phi ptr [ %i.fz, %bb.ag ], [ %i.fv, %bb.af ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i241, i64 1 ; 3 uses
  %i.ga = load i8, ptr %.sroa.07.0.i241, align 1, !noalias !608, !noundef !4
  %i.gb = icmp ult i8 %i.ga, %.sroa.06.0.i
  br i1 %i.gb, label %bb.ag, label %bb.ai

._crit_edge:                                      ; preds = %bb.af, %bb.ag
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ft)
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !608

.noexc129.i:                                      ; preds = %._crit_edge
  %i.gc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !625, !noalias !626, !noundef !4 ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, -1
  call void @llvm.assume(i1 %i.gd)
  %.not.i.i.i.i = icmp eq i64 %.sink.i16, %i.fn
  br i1 %.not.i.i.i.i, label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc129.i
  %i.ge = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !625, !noalias !626, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull readonly align 1 %i.fu, i64 %i.ft, i1 false), !noalias !608
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !625, !noalias !626
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit.i: ; preds = %bb.ah, %.noexc129.i
  %i.gg = phi i64 [ %.pre.i.i.i.i, %bb.ah ], [ %i.gc, %.noexc129.i ]
  %i.gh = add i64 %i.gg, %i.ft
  br label %.loopexit316.sink.split.i

bb.ai:                                            ; preds = %.lr.ph
  %i.gi = ptrtoint ptr %i.fz to i64
  %i.gj = xor i64 %4, -1
  %i.gk = add i64 %i.ft, %i.gj
  %i.gl = add i64 %i.gk, %i.gi                    ; 5 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i130.i = icmp ult i64 %i.gl, %i.ft
  br i1 %.not.i130.i, label %bb.ak, label %.split.i131.i

.split.i131.i:                                    ; preds = %bb.aj
  %i.gn = icmp eq i64 %i.gl, %i.ft
  br i1 %i.gn, label %bb.al, label %.thread234.i

bb.ak:                                            ; preds = %bb.aj
  %i.go = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gl
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !627, !noalias !624, !noundef !4
  %i.gq = icmp sgt i8 %i.gp, -65
  br i1 %i.gq, label %bb.al, label %.thread234.i

bb.al:                                            ; preds = %bb.ak, %.split.i131.i, %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gl ; 2 uses
  store ptr %i.gr, ptr %i.eg, align 8, !noalias !611
  store ptr %i.ag, ptr %i.eh, align 8, !noalias !611
  br label %.thread234.i

.thread234.i:                                     ; preds = %bb.al, %bb.ak, %.split.i131.i
  %i.gs = phi ptr [ %i.fw, %.split.i131.i ], [ %i.fw, %bb.ak ], [ %i.ag, %bb.al ] ; 4 uses
  %i.gt = phi ptr [ %i.fv, %.split.i131.i ], [ %i.fv, %bb.ak ], [ %i.gr, %bb.al ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.gu = icmp eq ptr %i.gt, %i.gs
  br i1 %i.gu, label %.invoke.i, label %bb.am

bb.am:                                            ; preds = %.thread234.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  store ptr %i.gv, ptr %i.eg, align 8, !alias.scope !629, !noalias !611
  %i.gw = load i8, ptr %i.gt, align 1, !noalias !630, !noundef !4 ; 5 uses
  %i.gx = icmp sgt i8 %i.gw, -1
  br i1 %i.gx, label %.thread243.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i: ; preds = %bb.am
  %i.gy = and i8 %i.gw, 31
  %i.gz = zext nneg i8 %i.gy to i32               ; 3 uses
  %i.ha = icmp ne ptr %i.gv, %i.gs
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 3 uses
  store ptr %i.hb, ptr %i.eg, align 8, !alias.scope !631, !noalias !611
  %i.hc = load i8, ptr %i.gv, align 1, !noalias !630, !noundef !4
  %i.hd = shl nuw nsw i32 %i.gz, 6
  %i.he = and i8 %i.hc, 63
  %i.hf = zext nneg i8 %i.he to i32               ; 2 uses
  %i.hg = or disjoint i32 %i.hd, %i.hf
  %i.hh = icmp samesign ugt i8 %i.gw, -33
  br i1 %i.hh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, label %bb.an

.thread243.i:                                     ; preds = %bb.am
  %i.hi = zext nneg i8 %i.gw to i32
  %i.hj = load ptr, ptr %i.ek, align 8, !noalias !611, !nonnull !4, !align !6, !noundef !4
  br label %bb.ao

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %i.hk = icmp ne ptr %i.hb, %i.gs
  call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 3 ; 3 uses
  store ptr %i.hl, ptr %i.eg, align 8, !alias.scope !632, !noalias !611
  %i.hm = load i8, ptr %i.hb, align 1, !noalias !630, !noundef !4
  %i.hn = shl nuw nsw i32 %i.hf, 6
  %i.ho = and i8 %i.hm, 63
  %i.hp = zext nneg i8 %i.ho to i32
  %i.hq = or disjoint i32 %i.hn, %i.hp            ; 2 uses
  %i.hr = shl nuw nsw i32 %i.gz, 12
  %i.hs = or disjoint i32 %i.hq, %i.hr
  %i.ht = icmp samesign ugt i8 %i.gw, -17
  br i1 %i.ht, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, label %bb.an

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i
  %i.hu = icmp ne ptr %i.hl, %i.gs
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store ptr %i.hv, ptr %i.eg, align 8, !alias.scope !633, !noalias !611
  %i.hw = load i8, ptr %i.hl, align 1, !noalias !630, !noundef !4
  %i.hx = shl nuw nsw i32 %i.gz, 18
  %i.hy = and i32 %i.hx, 1835008
  %i.hz = shl nuw nsw i32 %i.hq, 6
  %i.ia = and i8 %i.hw, 63
  %i.ib = zext nneg i8 %i.ia to i32
  %i.ic = or disjoint i32 %i.hz, %i.ib
  %i.id = or disjoint i32 %i.ic, %i.hy
  br label %bb.an

bb.an:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.hs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit14.i.i ], [ %i.id, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit16.i.i ], [ %i.hg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer.exit12.i.i ] ; 5 uses
  %i.ie = load ptr, ptr %i.ek, align 8, !noalias !611, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.if = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.if)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 52
  %i.ih = load i8, ptr %i.ig, align 4, !range !7, !alias.scope !634, !noalias !608, !noundef !4
  %i.ii = trunc nuw i8 %i.ih to i1
  %..i106.i = select i1 %i.ii, i32 4095, i32 65535
  %.not.i107.i = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, %..i106.i
  br i1 %.not.i107.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread243.i
  %i.ij = phi ptr [ %i.hj, %.thread243.i ], [ %i.ie, %bb.an ] ; 4 uses
  %.sroa.4.0.i.ph247.i = phi i32 [ %i.hi, %.thread243.i ], [ %.sroa.4.0.i.ph.i, %bb.an ] ; 3 uses
  %i.ik = lshr i32 %.sroa.4.0.i.ph247.i, 6
  %i.il = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.im = load ptr, ptr %i.ij, align 8, !alias.scope !634, !noalias !608, !nonnull !4, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !634, !noalias !608, !noundef !4
  %i.ip = icmp ugt i64 %i.io, %i.il
  call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %i.il
  %.sroa.04.0.copyload.i108.i = load i16, ptr %i.iq, align 1, !noalias !635
  %i.ir = zext i16 %.sroa.04.0.copyload.i108.i to i64
  %i.is = and i32 %.sroa.4.0.i.ph247.i, 63
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = add nuw nsw i64 %i.ir, %i.it            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !634, !noalias !608, !nonnull !4, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !634, !noalias !608, !noundef !4
  %i.iz = icmp ult i64 %i.iu, %i.iy
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iu
  %.sroa.02.0.copyload.i109.i = load i32, ptr %i.ja, align 1, !noalias !635
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit116.i

bb.ap:                                            ; preds = %bb.an
  %i.jb = invoke noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE20get32_by_small_indexCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ie, i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i) #15
          to label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !608

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit116.i: ; preds = %bb.ap, %bb.ao
  %.sroa.4.0.i.ph248253.i = phi i32 [ %.sroa.4.0.i.ph247.i, %bb.ao ], [ %.sroa.4.0.i.ph.i, %bb.ap ] ; 4 uses
  %.sroa.066.0.i = phi i32 [ %.sroa.02.0.copyload.i109.i, %bb.ao ], [ %i.jb, %bb.ap ] ; 2 uses
  %i.jc = icmp ult i32 %.sroa.066.0.i, 1073741824
  br i1 %i.jc, label %bb.af, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE25get32_by_small_index_coldCs9CN1NTpuHUY_14icu_normalizer.exit116.i
  store i32 %.sroa.4.0.i.ph248253.i, ptr %i.m, align 8, !noalias !611
  store i32 %.sroa.066.0.i, ptr %i.ed, align 4, !noalias !611
  %i.jd = load ptr, ptr %i.eg, align 8, !noalias !611, !nonnull !4, !noundef !4
  %i.je = load ptr, ptr %i.eh, align 8, !noalias !611, !nonnull !4, !noundef !4
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = icmp samesign ult i32 %.sroa.4.0.i.ph248253.i, 128
  br i1 %i.jh, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ji = icmp samesign ult i32 %.sroa.4.0.i.ph248253.i, 2048
  br i1 %i.ji, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jj = icmp samesign ult i32 %.sroa.4.0.i.ph248253.i, 65536
  %.105.i = select i1 %i.jj, i64 -3, i64 -4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.sroa.016.0.neg.i = phi i64 [ -2, %bb.ar ], [ %.105.i, %bb.as ], [ -1, %bb.aq ]
  %.neg95.i = add i64 %i.ft, %i.jg
  %i.jk = sub i64 %.neg95.i, %i.jf
  %i.jl = add i64 %i.jk, %.sroa.016.0.neg.i       ; 10 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %.invoke.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i136.i = icmp ult i64 %i.jl, %i.ft
  br i1 %.not.i136.i, label %bb.av, label %.split.i137.i

.split.i137.i:                                    ; preds = %bb.au
  %i.jn = icmp eq i64 %i.jl, %i.ft
  br i1 %i.jn, label %bb.aw, label %.invoke505.i

bb.av:                                            ; preds = %bb.au
  %i.jo = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.jl
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !636, !noalias !624, !noundef !4
  %i.jq = icmp sgt i8 %i.jp, -65
  br i1 %i.jq, label %bb.aw, label %.invoke505.i

bb.aw:                                            ; preds = %bb.av, %.split.i137.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.jl ; 4 uses
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -1 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !609, !noalias !637, !noundef !4 ; 3 uses
  %i.ju = icmp sgt i8 %i.jt, -1
  br i1 %i.ju, label %.thread269.i, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9CN1NTpuHUY_14icu_normalizer.exit17.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9CN1NTpuHUY_14icu_normalizer.exit17.i.i: ; preds = %bb.aw
  %i.jv = icmp ne i64 %i.jl, 1
  call void @llvm.assume(i1 %i.jv)
  %i.jw = getelementptr inbounds i8, ptr %i.jr, i64 -2 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !609, !noalias !637, !noundef !4 ; 3 uses
  %i.jy = and i8 %i.jx, 31
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = icmp slt i8 %i.jx, -64
  br i1 %i.ka, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9CN1NTpuHUY_14icu_normalizer.exit19.i.i, label %bb.ay

.thread269.i:                                     ; preds = %bb.aw
  %i.kb = zext nneg i8 %i.jt to i32
end_hunk_3
