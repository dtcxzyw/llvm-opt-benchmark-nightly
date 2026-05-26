inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable12try_from_url0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br i1 %i.qs, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qt = icmp eq i64 %.val37.i.i.i.i.i.i, 23
  br i1 %i.qt, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  call void @llvm.experimental.noalias.scope.decl(metadata !17490)
  %i.qu = icmp ult i64 %.val37.i.i.i.i.i.i, 38
  br i1 %i.qu, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, label %bb.ew

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ev
  %i.qv = load i128, ptr %.val.i.i13.i.i.i.i, align 1
  %i.qw = xor i128 %i.qv, 43072362355690950656158319865334099790
  %i.qx = getelementptr i8, ptr %.val.i.i13.i.i.i.i, i64 7
  %i.qy = load i128, ptr %i.qx, align 1
  %i.qz = xor i128 %i.qy, 154763657356728356358779844745476251763
  %i.ra = or i128 %i.qw, %i.qz
  %i.rb = icmp ne i128 %i.ra, 0
  %i.rc = zext i1 %i.rb to i32
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i.i.i93 = phi i64 [ %i.ro, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i ], [ %.val37.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i.i.i92 = phi ptr [ %i.re, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i13.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  %i.re = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i92, i64 1 ; 3 uses
  %i.rf = load i128, ptr %i.re, align 1
  %i.rg = xor i128 %i.rf, 43072362355690950656158319865334099790
  %i.rh = getelementptr i8, ptr %i.re, i64 7
  %i.ri = load i128, ptr %i.rh, align 1
  %i.rj = xor i128 %i.ri, 154763657356728356358779844745476251763
  %i.rk = or i128 %i.rg, %i.rj
  %i.rl = icmp ne i128 %i.rk, 0
  %i.rm = zext i1 %i.rl to i32
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.ro = add nsw i64 %.in.i.i.i.i.i.i.i.i.i93, -1 ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ro, 23
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17493
  store ptr %.val.i.i13.i.i.i.i, ptr %i.g, align 8, !noalias !17493
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.val37.i.i.i.i.i.i, ptr %i.rp, align 8, !noalias !17493
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @89, i64 1), ptr %i.rq, align 8, !noalias !17493
  %i.rr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 22, ptr %i.rr, align 8, !noalias !17493
  %i.rs = icmp ult i64 %.val37.i.i.i.i.i.i, 87
  br i1 %i.rs, label %.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fa, %bb.ew
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ew ], [ %i.tn, %bb.fa ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ew ], [ %.sroa.014.2.3.i.i.i.i.i.i.i.i.i, %bb.fa ] ; 2 uses
  %i.rt = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i, 38
  %i.ru = icmp uge i64 %i.rt, %.val37.i.i.i.i.i.i
  %i.rv = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond338.i.i.i.i.i.i.i.i.i = select i1 %i.ru, i1 true, i1 %i.rv
  br i1 %or.cond338.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ew, %bb.fa
  %.sroa.06.036.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tn, %bb.fa ], [ 0, %bb.ew ] ; 7 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i.i.i, i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rw, align 1, !alias.scope !17494, !noalias !17495
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 22
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rx, align 1, !alias.scope !17494, !noalias !17495
  %i.ry = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.rz = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.sa = and <16 x i1> %i.ry, %i.rz
  %i.sb = bitcast <16 x i1> %i.sa to i16          ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sc, align 1, !alias.scope !17494, !noalias !17495
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 38
  %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sd, align 1, !alias.scope !17494, !noalias !17495
  %i.se = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.sf = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.sg = and <16 x i1> %i.se, %i.sf
  %i.sh = bitcast <16 x i1> %i.sg to i16          ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.si, align 1, !alias.scope !17494, !noalias !17495
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rw, i64 54
  %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sj, align 1, !alias.scope !17494, !noalias !17495
  %i.sk = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.sl = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.sm = and <16 x i1> %i.sk, %i.sl
  %i.sn = bitcast <16 x i1> %i.sm to i16          ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rw, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.so, align 1, !alias.scope !17494, !noalias !17495
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rw, i64 70
  %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sp, align 1, !alias.scope !17494, !noalias !17495
  %i.sq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.sr = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.ss = and <16 x i1> %i.sq, %i.sr
  %i.st = bitcast <16 x i1> %i.ss to i16          ; 2 uses
  %i.su = icmp eq i16 %i.sb, 0
  br i1 %i.su, label %.preheader30.1.i.i.i.i.i.i.i.i.i, label %bb.fb

.preheader30.1.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc58.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ts, %.noexc58.i.i.i.i.i.i ] ; 2 uses
  %i.sv = icmp eq i16 %i.sh, 0
  br i1 %i.sv, label %.preheader30.2.i.i.i.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.preheader30.1.i.i.i.i.i.i.i.i.i
  %i.sw = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 16
  %i.sx = trunc nuw i8 %.sroa.014.2.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.sy = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.sw, i16 noundef %i.sh, i1 noundef zeroext %i.sx) #43
          to label %.noexc55.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc55.i.i.i.i.i.i:                             ; preds = %bb.ex
  %i.sz = or i1 %i.sy, %i.sx
  %i.ta = zext i1 %i.sz to i8
  br label %.preheader30.2.i.i.i.i.i.i.i.i.i

.preheader30.2.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc55.i.i.i.i.i.i, %.preheader30.1.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i.i.i.i.i, %.preheader30.1.i.i.i.i.i.i.i.i.i ], [ %i.ta, %.noexc55.i.i.i.i.i.i ] ; 2 uses
  %i.tb = icmp eq i16 %i.sn, 0
  br i1 %i.tb, label %.preheader30.3.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %.preheader30.2.i.i.i.i.i.i.i.i.i
  %i.tc = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 32
  %i.td = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.te = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.tc, i16 noundef %i.sn, i1 noundef zeroext %i.td) #43
          to label %.noexc56.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc56.i.i.i.i.i.i:                             ; preds = %bb.ey
  %i.tf = or i1 %i.te, %i.td
  %i.tg = zext i1 %i.tf to i8
  br label %.preheader30.3.i.i.i.i.i.i.i.i.i

.preheader30.3.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc56.i.i.i.i.i.i, %.preheader30.2.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i.i.i.i.i, %.preheader30.2.i.i.i.i.i.i.i.i.i ], [ %i.tg, %.noexc56.i.i.i.i.i.i ] ; 2 uses
  %i.th = icmp eq i16 %i.st, 0
  br i1 %i.th, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.preheader30.3.i.i.i.i.i.i.i.i.i
  %i.ti = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 48
  %i.tj = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.tk = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.ti, i16 noundef %i.st, i1 noundef zeroext %i.tj) #43
          to label %.noexc57.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc57.i.i.i.i.i.i:                             ; preds = %bb.ez
  %i.tl = or i1 %i.tk, %i.tj
  %i.tm = zext i1 %i.tl to i8
  br label %bb.fa

bb.fa:                                            ; preds = %.noexc57.i.i.i.i.i.i, %.preheader30.3.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i.i.i.i.i, %.preheader30.3.i.i.i.i.i.i.i.i.i ], [ %i.tm, %.noexc57.i.i.i.i.i.i ] ; 2 uses
  %i.tn = add i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.to = add i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 150
  %i.tp = icmp uge i64 %i.to, %.val37.i.i.i.i.i.i
  %i.tq = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.tp, i1 true, i1 %i.tq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.tr = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.036.i.i.i.i.i.i.i.i.i, i16 noundef %i.sb, i1 noundef zeroext false) #43
          to label %.noexc58.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc58.i.i.i.i.i.i:                             ; preds = %bb.fb
  %i.ts = zext i1 %i.tr to i8
  br label %.preheader30.1.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.fc, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i.i.i.i.i, %bb.fc ]
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i1 [ %i.rv, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ul, %bb.fc ] ; 2 uses
  %i.tt = add i64 %.val37.i.i.i.i.i.i, -38        ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i.i.i, i64 %i.tt ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tu, align 1, !alias.scope !17494, !noalias !17498
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 22
  %.sroa.02.0.copyload.i59.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tv, align 1, !alias.scope !17494, !noalias !17498
  %i.tw = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.tx = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.ty = and <16 x i1> %i.tw, %i.tx
  %i.tz = bitcast <16 x i1> %i.ty to i16          ; 2 uses
  %i.ua = icmp eq i16 %i.tz, 0
  br i1 %i.ua, label %bb.fe, label %bb.ff

.lr.ph40.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.fc
  %.sroa.06.139.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ui, %bb.fc ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i.i.i, i64 %.sroa.06.139.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ub, align 1, !alias.scope !17494, !noalias !17501
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 22
  %.sroa.02.0.copyload.i61.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.uc, align 1, !alias.scope !17494, !noalias !17501
  %i.ud = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.ue = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.uf = and <16 x i1> %i.ud, %i.ue
  %i.ug = bitcast <16 x i1> %i.uf to i16          ; 2 uses
  %i.uh = icmp eq i16 %i.ug, 0
  br i1 %i.uh, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.noexc59.i.i.i.i.i.i, %.lr.ph40.i.i.i.i.i.i.i.i.i
  %.sroa.014.4.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph40.i.i.i.i.i.i.i.i.i ], [ %i.un, %.noexc59.i.i.i.i.i.i ] ; 2 uses
  %i.ui = add i64 %.sroa.06.139.i.i.i.i.i.i.i.i.i, 16
  %i.uj = add i64 %.sroa.06.139.i.i.i.i.i.i.i.i.i, 54
  %i.uk = icmp uge i64 %i.uj, %.val37.i.i.i.i.i.i
  %i.ul = trunc nuw i8 %.sroa.014.4.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i.i.i.i.i.i = select i1 %i.uk, i1 true, i1 %i.ul
  br i1 %or.cond3.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %.lr.ph40.i.i.i.i.i.i.i.i.i
  %i.um = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.139.i.i.i.i.i.i.i.i.i, i16 noundef %i.ug, i1 noundef zeroext false) #43
          to label %.noexc59.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc59.i.i.i.i.i.i:                             ; preds = %bb.fd
  %i.un = zext i1 %i.um to i8
  br label %bb.fc

bb.fe:                                            ; preds = %.noexc60.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.014.5.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ur, %.noexc60.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17493
  %i.uo = trunc nuw i8 %.sroa.014.5.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.uo, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.up = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.tt, i16 noundef %i.tz, i1 noundef zeroext %.lcssa.i.i.i.i.i.i.i.i.i) #43
          to label %.noexc60.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !17390

.noexc60.i.i.i.i.i.i:                             ; preds = %bb.ff
  %i.uq = or i1 %.lcssa.i.i.i.i.i.i.i.i.i, %i.up
  %i.ur = zext i1 %i.uq to i8
  br label %bb.fe

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.fd
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i:          ; preds = %bb.fb, %bb.ez, %bb.ey, %bb.ex
  %lpad.loopexit181.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i: ; preds = %bb.ff
  %lpad.loopexit.split-lp182.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit181.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp182.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #37
          to label %.body42.i.i.i.i.i.i unwind label %bb.em, !noalias !17390

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.eu
  %i.us = load i128, ptr %.val.i.i13.i.i.i.i, align 1
  %i.ut = xor i128 43072362355690950656158319865334099790, %i.us
  %i.uu = getelementptr i8, ptr %.val.i.i13.i.i.i.i, i64 7
  %i.uv = load i128, ptr %i.uu, align 1
  %i.uw = xor i128 154763657356728356358779844745476251763, %i.uv
  %i.ux = or i128 %i.ut, %i.uw
  %i.uy = icmp ne i128 %i.ux, 0
  %i.uz = zext i1 %i.uy to i32
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, %bb.fe, %bb.eu
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.fh unwind label %bb.fg, !noalias !17390

bb.fg:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i
  %i.vb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17504, !noalias !17386, !noundef !17 ; 2 uses
  %i.vc = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.vc, label %.body42.i.i.i.i.i.i, label %.body42.sink.split.i.i.i.i.i.i

bb.fh:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17504, !noalias !17386, !noundef !17 ; 2 uses
  %i.vd = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.vd, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !alias.scope !17511, !noalias !17386, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17512
  br label %bb.fm

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, %bb.fe, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.fk unwind label %bb.fj, !noalias !17390

bb.fj:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i63.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17515, !noalias !17386, !noundef !17 ; 2 uses
  %i.vf = icmp eq i64 %.val2.i.i63.i.i.i.i.i.i, 0
  br i1 %i.vf, label %.body42.i.i.i.i.i.i, label %.body42.sink.split.i.i.i.i.i.i

bb.fk:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i
  %.val.i.i66.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17515, !noalias !17386, !noundef !17 ; 2 uses
  %i.vg = icmp eq i64 %.val.i.i66.i.i.i.i.i.i, 0
  br i1 %i.vg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.val1.i.i67.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !alias.scope !17522, !noalias !17386, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i.i.i, i64 noundef %.val.i.i66.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17523
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i

.body42.sink.split.i.i.i.i.i.i:                   ; preds = %bb.fj, %bb.fg
  %.val2.i.i.sink.i.i.i.i.i.i = phi i64 [ %.val2.i.i.i.i.i.i.i.i, %bb.fg ], [ %.val2.i.i63.i.i.i.i.i.i, %bb.fj ]
  %.pn26.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.vb, %bb.fg ], [ %i.ve, %bb.fj ]
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !noalias !17386, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17390
  br label %.body42.i.i.i.i.i.i

.body42.i.i.i.i.i.i:                              ; preds = %.body42.sink.split.i.i.i.i.i.i, %bb.fj, %bb.fg, %.loopexit.split-lp.i.i.i.i.i.i, %bb.du
  %.pn26.i.i.i.i.i.i = phi { ptr, i32 } [ %i.op, %bb.du ], [ %lpad.phi.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %i.ve, %bb.fj ], [ %i.vb, %bb.fg ], [ %.pn26.ph.i.i.i.i.i.i, %.body42.sink.split.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17386
  br label %.body76.i.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17386
  %.sroa.0127.0.copyload.i.i.i.i.i.i = load i64, ptr %i.r, align 16, !noalias !17386
  %.sroa.5128.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !17386
  %.sroa.10.i.i.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i, align 16, !noalias !17386
  %.sroa.10.i.i.sroa.10.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.10.i.i.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.i.i.sroa.10.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i, align 8, !noalias !17386
  %.sroa.10.i.i.sroa.11.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.10.i.i.sroa.11.0.copyload.i.i.i.i = load ptr, ptr %.sroa.10.i.i.sroa.11.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i, align 16, !noalias !17386
  %.sroa.10.i.i.sroa.12.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i.sroa.12.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !17386
  %.sroa.7130.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx.i.i.i.i.i.i, align 16, !noalias !17386
  %.sroa.8131.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx.i.i.i.i.i.i, align 8, !noalias !17386
  br label %bb.fr

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17526
  store i64 0, ptr %i.f, align 8, !noalias !17526
  %.sroa.42.0..sroa_idx.i.i71.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i71.i.i.i.i.i.i, align 8, !noalias !17526
  %.sroa.53.0..sroa_idx.i.i72.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i72.i.i.i.i.i.i, align 8, !noalias !17526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17526
  %i.vh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1610612768, ptr %i.vh, align 8, !noalias !17526
  %.sroa.4.0..sroa_idx.i.i73.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i73.i.i.i.i.i.i, align 4, !noalias !17526
  %.sroa.5.0..sroa_idx.i.i74.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i74.i.i.i.i.i.i, align 2, !noalias !17526
  store ptr %i.f, ptr %i.e, align 8, !noalias !17526
  %i.vi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @436, ptr %i.vi, align 8, !noalias !17526
  %i.vj = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.fo unwind label %bb.fn, !noalias !17533

bb.fn:                                            ; preds = %bb.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i
  %i.vk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #37
          to label %.body76.i.i.i.i.i.i unwind label %bb.fq, !noalias !17533

bb.fo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i
  br i1 %i.vj, label %bb.fp, label %bb.fs, !prof !7

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @437, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #40
          to label %.noexc.i.i75.i.i.i.i.i.i unwind label %bb.fn, !noalias !17533

.noexc.i.i75.i.i.i.i.i.i:                         ; preds = %bb.fp
  unreachable

bb.fq:                                            ; preds = %bb.fn
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17533
  unreachable

bb.fr:                                            ; preds = %bb.fs, %bb.fm
  %.sroa.10.i.i.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.10.i.i.sroa.0.0.copyload118.i.i.i.i, %bb.fs ], [ %.sroa.10.i.i.sroa.0.0.copyload.i.i.i.i, %bb.fm ]
  %.sroa.10.i.i.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.10.i.i.sroa.10.0.copyload122.i.i.i.i, %bb.fs ], [ %.sroa.10.i.i.sroa.10.0.copyload.i.i.i.i, %bb.fm ]
  %.sroa.10.i.i.sroa.11.0.i.i.i.i = phi ptr [ undef, %bb.fs ], [ %.sroa.10.i.i.sroa.11.0.copyload.i.i.i.i, %bb.fm ]
  %.sroa.098.2175.i.i.i.i.i.i = phi i64 [ -9223372036854775735, %bb.fs ], [ %.sroa.0127.0.copyload.i.i.i.i.i.i, %bb.fm ]
  %.sroa.6.2173.i.i.i.i.i.i = phi ptr [ %.sroa.0117.0.copyload.i.i.i.i.i.i, %bb.fs ], [ %.sroa.5128.0.copyload.i.i.i.i.i.i, %bb.fm ]
  %.sroa.11105.2171.i.i.i.i.i.i = phi ptr [ undef, %bb.fs ], [ %.sroa.7130.0.copyload.i.i.i.i.i.i, %bb.fm ]
  %.sroa.12108.2169.i.i.i.i.i.i = phi ptr [ undef, %bb.fs ], [ %.sroa.8131.0.copyload.i.i.i.i.i.i, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17386
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit54.i.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fo
  %.sroa.0117.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !17534
  %.sroa.10.i.i.sroa.0.0.copyload118.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i71.i.i.i.i.i.i, align 8, !noalias !17386
  %.sroa.10.i.i.sroa.10.0.copyload122.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i72.i.i.i.i.i.i, align 8, !noalias !17386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17526
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.r)
          to label %bb.fr unwind label %bb.fu, !noalias !17390

bb.ft:                                            ; preds = %.body76.i.i.i.i.i.i, %bb.fu
  %.pn30.i.i.i.i.i.i = phi { ptr, i32 } [ %i.vm, %bb.fu ], [ %.pn28.ph.i.i.i.i.i.i, %.body76.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17386
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.body76.i.i.i.i.i.i:                              ; preds = %bb.fn, %.body42.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext10drop_table0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
default.unreachable:                              ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !noalias !20016, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !noalias !20016
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false), !noalias !20016
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %.val, i64 56, i1 false), !noalias !20016
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.u = load i8, ptr %i.t, align 8, !range !270, !noalias !20016, !noundef !17
  store i8 %i.u, ptr %i.s, align 1, !noalias !20016
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.061.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20016
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20021)
  %i.v = load i64, ptr %i.r, align 8, !range !283, !alias.scope !20021, !noalias !20023, !noundef !17 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !20021, !noalias !20023, !nonnull !17, !noundef !17 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !20021, !noalias !20023, !noundef !17 ; 3 uses
  %i.aa = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !20024
  %i.ab = icmp slt i64 %i.aa, 0                   ; 3 uses
  switch i64 %i.v, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.ab, label %bb.f, label %bb.q

bb.d:                                             ; preds = %bb.b
  br i1 %i.ab, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.ab, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.n ], [ %.sink18.i.sroa.gep64.i, %bb.g ]
  %.sink16.i.i = phi ptr [ %i.aj, %bb.n ], [ %i.x, %bb.g ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.n ], [ %.sink15.i.sroa.gep65.i, %bb.g ]
  %.sink13.i.i = phi i64 [ %i.al, %bb.n ], [ %i.z, %bb.g ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.ad, %bb.g ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i.i = phi i64 [ %i.ar, %bb.n ], [ %i.af, %bb.g ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !20018, !noalias !20025
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !20018, !noalias !20025
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !20021, !noalias !20023, !nonnull !17, !noundef !17 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !20021, !noalias !20023, !noundef !17
  %i.ag = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !20024
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !20021, !noalias !20023, !nonnull !17, !noundef !17 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !20021, !noalias !20023, !noundef !17
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !20024
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !20021, !noalias !20023, !nonnull !17, !noundef !17 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !20021, !noalias !20023, !noundef !17
  %i.as = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !20024
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.x, ptr %.sink18.i.sroa.gep64.i, align 8, !alias.scope !20018, !noalias !20025
  store i64 %i.z, ptr %.sink15.i.sroa.gep65.i, align 8, !alias.scope !20018, !noalias !20025
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.061.i)
  br label %bb.v

bb.q:                                             ; preds = %.sink.split.i.i, %bb.c
  %.sink12.i.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.x, %bb.c ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.z, %bb.c ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.au, align 8, !alias.scope !20018, !noalias !20025
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.av, align 8, !alias.scope !20018, !noalias !20025
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !20018, !noalias !20025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.061.i, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20016
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.061.i, i64 56, i1 false), !noalias !20016
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 272
  store ptr %i.p, ptr %.sroa.762.0..sroa_idx.i, align 8, !noalias !20016
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 416
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !20016
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 417
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !20016
  br label %bb.v

bb.r:                                             ; preds = %bb.z, %bb.u
  %.pn7.i = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061.i)
  br label %bb.bb

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #42, !noalias !20013
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #42, !noalias !20013
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20016
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ay) #37
          to label %bb.r unwind label %bb.at, !noalias !20013

bb.v:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20016
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  invoke fastcc void @_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.u, !noalias !20013

bb.w:                                             ; preds = %bb.v
  %i.az = load i64, ptr %i.j, align 8, !range !1799, !noalias !20016, !noundef !17
  %i.ba = icmp eq i64 %i.az, 21
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20016
  store i64 37, ptr %0, align 16, !alias.scope !20013, !noalias !20026
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061.i)
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext10drop_table0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20016
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ay)
          to label %bb.aa unwind label %bb.z, !noalias !20013

bb.z:                                             ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20016
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.bd = load i8, ptr %i.bc, align 1, !range !270, !noalias !20016, !noundef !17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !20016
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 %i.bd, ptr %i.be, align 8, !noalias !20016
  %i.bf = load i64, ptr %i.h, align 8, !range !1787, !noalias !20016, !noundef !17
  %.not9.i = icmp eq i64 %i.bf, 20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !range !270, !noalias !20016
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i = select i1 %.not9.i, i1 %i.bi, i1 false
  %i.bj = trunc nuw i8 %i.bd to i1
  %or.cond75.i = select i1 %or.cond.i, i1 true, i1 %i.bj
  br i1 %or.cond75.i, label %.invoke.i, label %bb.ah

bb.ab:                                            ; preds = %.body54.i, %bb.ad
  %.pn26.i = phi { ptr, i32 } [ %i.bm, %bb.ad ], [ %.pn20.i, %.body54.i ] ; 2 uses
  %i.bk = load i64, ptr %i.h, align 8, !range !1787, !alias.scope !20027, !noalias !20016, !noundef !17
  %i.bl = icmp eq i64 %i.bk, 20
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.at, !noalias !20013

bb.ad:                                            ; preds = %.invoke.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ae:                                            ; preds = %bb.as, %.invoke.i
  %i.bn = load i64, ptr %i.h, align 8, !range !1787, !alias.scope !20032, !noalias !20016, !noundef !17
  %i.bo = icmp eq i64 %i.bn, 20
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i unwind label %bb.au, !noalias !20013

.invoke.i:                                        ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !20016, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq)
          to label %bb.ae unwind label %bb.ad, !noalias !20013

bb.ag:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20016
  br label %.body54.i

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20016
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20016
  store ptr %i.bs, ptr %i.d, align 8, !noalias !20016
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB4_14TableReferenceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !20016
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @103, ptr noundef nonnull %i.d)
          to label %bb.aj unwind label %bb.ag, !noalias !20013

.body.i:                                          ; preds = %bb.al, %bb.ak, %bb.ai
  %.pn18.i = phi { ptr, i32 } [ %i.bt, %bb.ai ], [ %i.bv, %bb.ak ], [ %i.bv, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20016
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #37
          to label %.body54.i unwind label %bb.at, !noalias !20013

bb.ai:                                            ; preds = %bb.aj
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20016
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body.i unwind label %bb.at, !noalias !20013

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !20037, !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20016
  store i64 0, ptr %i.c, align 8, !noalias !20016
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20016
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.573.0..sroa_idx.i, align 8, !noalias !20016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20016
  store ptr %i.f, ptr %i.b, align 8, !noalias !20016
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !20016
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bu, align 8, !noalias !20016
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !20016
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @40, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i unwind label %bb.ai, !noalias !20013

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i:   ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20016
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.am unwind label %bb.ak, !noalias !20013

bb.ak:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !range !95, !alias.scope !20041, !noalias !20016, !noundef !17 ; 2 uses
  %i.bw = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bw, label %.body.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20048, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20049
  br label %.body.i

bb.am:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !95, !alias.scope !20041, !noalias !20016, !noundef !17 ; 2 uses
  %i.bx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20048, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20052
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20016
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aq unwind label %bb.ao, !noalias !20013

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i49.i = load i64, ptr %i.f, align 8, !range !95, !alias.scope !20055, !noalias !20016, !noundef !17 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i49.i, 0
  br i1 %i.bz, label %.body54.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i50.i = load ptr, ptr %i.ca, align 8, !alias.scope !20062, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i50.i, i64 noundef %.val2.i.i49.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20063
  br label %.body54.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val.i.i52.i = load i64, ptr %i.f, align 8, !range !95, !alias.scope !20055, !noalias !20016, !noundef !17 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i52.i, 0
  br i1 %i.cb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i53.i = load ptr, ptr %i.cc, align 8, !alias.scope !20062, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i53.i, i64 noundef %.val.i.i52.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20066
  br label %bb.as

.body54.i:                                        ; preds = %bb.ap, %bb.ao, %.body.i, %bb.ag
  %.pn20.i = phi { ptr, i32 } [ %i.br, %bb.ag ], [ %.pn18.i, %.body.i ], [ %i.by, %bb.ao ], [ %i.by, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20016
  br label %bb.ab

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20016
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20016
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.cd, align 8, !noalias !20016
  store i64 36, ptr %i.a, align 16, !noalias !20016
  br label %bb.ae

bb.at:                                            ; preds = %bb.bb, %bb.aw, %bb.ai, %.body.i, %bb.ac, %bb.u
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20013
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %bb.ac, %bb.ab
  %.pn28.i = phi { ptr, i32 } [ %i.cf, %bb.au ], [ %.pn26.i, %bb.ac ], [ %.pn26.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20016
  br label %bb.bb

bb.au:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20016
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.cg)
          to label %bb.ay unwind label %bb.ax, !noalias !20013

bb.av:                                            ; preds = %bb.bb, %bb.ax
  %.pn31.i = phi { ptr, i32 } [ %i.cl, %bb.ax ], [ %.pn28.pn.i, %bb.bb ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20069)
  call void @llvm.experimental.noalias.scope.decl(metadata !20072)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !20075, !noalias !20016, !nonnull !17, !noundef !17
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !20076
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ch) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.at, !noalias !20013

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext11drop_schema0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @437, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #40
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !20352

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20352
  unreachable

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !20353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20345
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !20342
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val27.pre.i = load i64, ptr %.phi.trans.insert16.i, align 8, !noalias !20342
  br label %bb.p

bb.i:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %_RNvMs2_NtCslfDARg5dRCJ_8lock_api6rwlockINtB5_6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateE4readCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val29.i, i64 1440
  %.val28.i = load ptr, ptr %i.an, align 8, !noalias !20342, !nonnull !17, !noundef !17 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val28.i, i64 456
  %.val39.i = load ptr, ptr %i.ao, align 8, !noalias !20342, !nonnull !17, !noundef !17
  %i.ap = getelementptr i8, ptr %.val28.i, i64 464
  %.val40.i = load i64, ptr %i.ap, align 8, !noalias !20342, !noundef !17 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20357)
  %i.aq = icmp eq i64 %.val40.i, 0
  br i1 %i.aq, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !20360
  %i.ar = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val40.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20360 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val40.i) #40
          to label %.noexc42.i unwind label %bb.i, !noalias !20342

.noexc42.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.val39.i, i64 range(i64 0, -9223372036854775808) %.val40.i, i1 false), !noalias !20366
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.m, %bb.j
  %.sroa.5.0.i.i.i = phi ptr [ %i.ar, %bb.m ], [ inttoptr (i64 1 to ptr), %bb.j ] ; 2 uses
  store i64 %.val40.i, ptr %i.g, align 8, !alias.scope !20367, !noalias !20342
  %.sroa.5.0..sroa_idx.i.i41.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i41.i, align 8, !alias.scope !20367, !noalias !20342
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.val40.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !20367, !noalias !20342
  br label %bb.p

.body.i:                                          ; preds = %bb.bm, %bb.bl, %bb.bi, %bb.t, %bb.s, %bb.i, %bb.e
  %.pn8.i = phi { ptr, i32 } [ %i.fa, %bb.bl ], [ %.pn6.i, %bb.bi ], [ %i.am, %bb.i ], [ %i.ak, %bb.e ], [ %i.bl, %bb.s ], [ %i.fa, %bb.bm ], [ %i.bl, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20342
  %i.at = atomicrmw sub ptr %i.v, i64 16 release, align 8, !noalias !20342
  %i.au = and i64 %i.at, -14
  %i.av = icmp eq i64 %i.au, 18
  br i1 %i.av, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !7

bb.n:                                             ; preds = %.body.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !20342

bb.o:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.p:                                             ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val27.i = phi i64 [ %.val40.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.val27.pre.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %.val.i = phi ptr [ %.sroa.5.0.i.i.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.val.pre.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.val29.i, i64 1168
  %.val32.i = load ptr, ptr %i.ax, align 8, !noalias !20342, !nonnull !17, !noundef !17
  %i.ay = getelementptr i8, ptr %.val29.i, i64 1176
  %.val33.i = load ptr, ptr %i.ay, align 8, !noalias !20342, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !313, !invariant.load !17, !noalias !20342
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val33.i, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !17, !noalias !20342, !nonnull !17
  %i.bi = invoke { ptr, ptr } %i.bh(ptr noundef nonnull %i.be, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val27.i)
          to label %bb.q unwind label %bb.o, !noalias !20342 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0      ; 3 uses
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1      ; 4 uses
  %.not5.i = icmp eq ptr %i.bj, null
  br i1 %.not5.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.u unwind label %bb.s, !noalias !20342

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !range !95, !alias.scope !20368, !noalias !20342, !noundef !17 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bm, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !20375, !noalias !20342, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20376
  br label %.body.i

bb.u:                                             ; preds = %bb.r
  %.val.i.i.i = load i64, ptr %i.g, align 8, !range !95, !alias.scope !20368, !noalias !20342, !noundef !17 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !20375, !noalias !20342, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20379
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.w:                                             ; preds = %bb.q
  br i1 %i.q, label %bb.bh, label %bb.bg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20342
  %i.bo = atomicrmw sub ptr %i.v, i64 16 release, align 8, !noalias !20342
  %i.bp = and i64 %i.bo, -14
  %i.bq = icmp eq i64 %i.bp, 18
  br i1 %i.bq, label %bb.x, label %bb.y, !prof !7

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.v)
          to label %bb.y unwind label %bb.c, !noalias !20342

bb.y:                                             ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  store ptr %i.bj, ptr %i.h, align 8, !noalias !20342
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bk, ptr %i.br, align 8, !noalias !20342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !313, !invariant.load !17, !noalias !20342
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.i, align 8, !alias.scope !20382, !noalias !20342, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null             ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !20382, !noalias !20342 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %.pn.i.i = select i1 %.not.i.i, ptr %i.ca, ptr %i.by
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.val.i.i = load i64, ptr %i.cb, align 8, !alias.scope !20382, !noalias !20342
  %.val1.cast.i.i = ptrtoint ptr %i.ca to i64
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %.val.i.i, i64 %.val1.cast.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !invariant.load !17, !noalias !20342, !nonnull !17
  invoke void %i.cd(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull %i.bx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, i1 noundef zeroext %i.t)
          to label %bb.aa unwind label %bb.z, !noalias !20342

bb.z:                                             ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20342
  br label %bb.aw

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !20385)
  %i.cf = load i64, ptr %i.f, align 8, !range !1787, !alias.scope !20388, !noalias !20390, !noundef !17 ; 2 uses
  %.not.i48.i = icmp eq i64 %i.cf, 20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !20391, !noalias !20342 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !20391, !noalias !20342 ; 2 uses
  br i1 %.not.i48.i, label %bb.ab, label %bb.ay

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20342
  store ptr %i.ch, ptr %i.e, align 8, !noalias !20342
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !noalias !20342
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.p, ptr %i.cl, align 8, !noalias !20342
  %.not15.i = icmp ne ptr %i.ch, null
  %brmerge.i = select i1 %.not15.i, i1 true, i1 %i.q
  br i1 %brmerge.i, label %.invoke.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext23schema_doesnt_exist_err(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.ag unwind label %bb.ad, !noalias !20342

.invoke.i:                                        ; preds = %bb.ab
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
          to label %bb.ag unwind label %bb.ad, !noalias !20342

bb.ad:                                            ; preds = %.invoke.i, %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20392)
  call void @llvm.experimental.noalias.scope.decl(metadata !20395)
  %i.cn = load ptr, ptr %i.e, align 8, !alias.scope !20398, !noalias !20342, !noundef !17 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !20399
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !20342

bb.ag:                                            ; preds = %.invoke.i, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !20404)
  call void @llvm.experimental.noalias.scope.decl(metadata !20407)
  %i.cr = load ptr, ptr %i.e, align 8, !alias.scope !20410, !noalias !20342, !noundef !17 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit51.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !20411
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit51.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit51.i unwind label %bb.aj, !noalias !20342

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.aj, %bb.af, %bb.ae, %bb.ad
  %.pn16.i = phi { ptr, i32 } [ %i.cv, %bb.aj ], [ %i.cm, %bb.af ], [ %i.cm, %bb.ad ], [ %i.cm, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20342
  br label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit51.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20342
  call void @llvm.experimental.noalias.scope.decl(metadata !20416)
  call void @llvm.experimental.noalias.scope.decl(metadata !20419)
  %i.cw = load ptr, ptr %i.h, align 8, !alias.scope !20422, !noalias !20342, !nonnull !17, !noundef !17
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !20423
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit51.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.al, !noalias !20342

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ax, %bb.aw, %bb.al, %bb.n, %.body.i, %bb.c
  %.pn21.i = phi { ptr, i32 } [ %i.cz, %bb.al ], [ %.pn8.i, %.body.i ], [ %i.ae, %bb.c ], [ %.pn18.pn.i, %bb.aw ], [ %.pn8.i, %bb.n ], [ %.pn18.pn.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20342
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.i) #37
          to label %.body54.i unwind label %bb.av, !noalias !20342

bb.al:                                            ; preds = %bb.az, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20342
  call void @llvm.experimental.noalias.scope.decl(metadata !20424)
  %i.da = load ptr, ptr %i.i, align 8, !alias.scope !20424, !noalias !20342, !noundef !17 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20427)
  call void @llvm.experimental.noalias.scope.decl(metadata !20430)
  %i.dc = load ptr, ptr %i.bz, align 8, !alias.scope !20433, !noalias !20342, !nonnull !17, !noundef !17
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !20434
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.df = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !20435
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit1.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit1.i.i unwind label %bb.ap, !noalias !20342

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit1.i.i, %bb.am
  %.sink.i.i = phi ptr [ %i.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit1.i.i ], [ %i.bz, %bb.am ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink.i.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.at, !noalias !20342

bb.ap:                                            ; preds = %bb.ao
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20440)
  call void @llvm.experimental.noalias.scope.decl(metadata !20443)
  %i.di = load ptr, ptr %i.cb, align 8, !alias.scope !20446, !noalias !20342, !nonnull !17, !noundef !17
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !20447
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.aq, label %.body54.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cb) #41
          to label %.body54.i unwind label %bb.ar, !noalias !20342

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit1.i.i: ; preds = %bb.ao, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !20448)
  call void @llvm.experimental.noalias.scope.decl(metadata !20451)
  %i.dl = load ptr, ptr %i.cb, align 8, !alias.scope !20454, !noalias !20342, !nonnull !17, !noundef !17
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !20455
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20342
  unreachable

.body54.i:                                        ; preds = %bb.be, %bb.bd, %bb.at, %bb.aq, %bb.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn23.i = phi { ptr, i32 } [ %.pn21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dh, %bb.ap ], [ %i.dh, %bb.aq ], [ %i.dt, %bb.at ], [ %i.ep, %bb.be ], [ %i.ep, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20342
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20456)
  call void @llvm.experimental.noalias.scope.decl(metadata !20459)
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !20462, !noalias !20342, !nonnull !17, !noundef !17
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !20463
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.as:                                            ; preds = %.body54.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dp) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !20342

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i64.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20342
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20464)
  call void @llvm.experimental.noalias.scope.decl(metadata !20467)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !20470, !noalias !20342, !nonnull !17, !noundef !17
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !20471
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %.invoke26.i, label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext11drop_schema0Cs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %bb.as, %.body54.i
  %.pn25.i = phi { ptr, i32 } [ %i.dy, %bb.au ], [ %.pn23.i, %bb.as ], [ %.pn23.i, %.body54.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20342
  store i8 2, ptr %i.k, align 8, !noalias !20342
  resume { ptr, i32 } %.pn25.i

bb.au:                                            ; preds = %.invoke26.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.av:                                            ; preds = %bb.bi, %bb.ax, %bb.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.af, %bb.n
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20342
  unreachable

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.z
  %.pn18.pn.i = phi { ptr, i32 } [ %i.ce, %bb.z ], [ %.pn16.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20472)
  call void @llvm.experimental.noalias.scope.decl(metadata !20475)
  %i.ea = load ptr, ptr %i.h, align 8, !alias.scope !20478, !noalias !20342, !nonnull !17, !noundef !17
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !20479
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext9drop_view0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
default.unreachable:                              ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !noalias !21607, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !noalias !21607
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false), !noalias !21607
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %.val, i64 56, i1 false), !noalias !21607
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.u = load i8, ptr %i.t, align 8, !range !270, !noalias !21607, !noundef !17
  store i8 %i.u, ptr %i.s, align 1, !noalias !21607
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.061.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21612)
  %i.v = load i64, ptr %i.r, align 8, !range !283, !alias.scope !21612, !noalias !21614, !noundef !17 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !21612, !noalias !21614, !nonnull !17, !noundef !17 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !21612, !noalias !21614, !noundef !17 ; 3 uses
  %i.aa = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !21615
  %i.ab = icmp slt i64 %i.aa, 0                   ; 3 uses
  switch i64 %i.v, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.ab, label %bb.f, label %bb.q

bb.d:                                             ; preds = %bb.b
  br i1 %i.ab, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.ab, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.n ], [ %.sink18.i.sroa.gep64.i, %bb.g ]
  %.sink16.i.i = phi ptr [ %i.aj, %bb.n ], [ %i.x, %bb.g ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.n ], [ %.sink15.i.sroa.gep65.i, %bb.g ]
  %.sink13.i.i = phi i64 [ %i.al, %bb.n ], [ %i.z, %bb.g ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.ad, %bb.g ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i.i = phi i64 [ %i.ar, %bb.n ], [ %i.af, %bb.g ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !21609, !noalias !21616
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !21609, !noalias !21616
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !21612, !noalias !21614, !nonnull !17, !noundef !17 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !21612, !noalias !21614, !noundef !17
  %i.ag = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !21615
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !21612, !noalias !21614, !nonnull !17, !noundef !17 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !21612, !noalias !21614, !noundef !17
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !21615
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !21612, !noalias !21614, !nonnull !17, !noundef !17 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !21612, !noalias !21614, !noundef !17
  %i.as = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !21615
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.x, ptr %.sink18.i.sroa.gep64.i, align 8, !alias.scope !21609, !noalias !21616
  store i64 %i.z, ptr %.sink15.i.sroa.gep65.i, align 8, !alias.scope !21609, !noalias !21616
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.061.i)
  br label %bb.v

bb.q:                                             ; preds = %.sink.split.i.i, %bb.c
  %.sink12.i.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.x, %bb.c ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.z, %bb.c ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.au, align 8, !alias.scope !21609, !noalias !21616
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.av, align 8, !alias.scope !21609, !noalias !21616
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !21609, !noalias !21616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.061.i, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !21607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21607
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.061.i, i64 56, i1 false), !noalias !21607
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 272
  store ptr %i.p, ptr %.sroa.762.0..sroa_idx.i, align 8, !noalias !21607
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 416
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !21607
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 417
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !21607
  br label %bb.v

bb.r:                                             ; preds = %bb.z, %bb.u
  %.pn7.i = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061.i)
  br label %bb.bb

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #42, !noalias !21604
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #42, !noalias !21604
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21607
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ay) #37
          to label %bb.r unwind label %bb.at, !noalias !21604

bb.v:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21607
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  invoke fastcc void @_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.u, !noalias !21604

bb.w:                                             ; preds = %bb.v
  %i.az = load i64, ptr %i.j, align 8, !range !1799, !noalias !21607, !noundef !17
  %i.ba = icmp eq i64 %i.az, 21
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21607
  store i64 37, ptr %0, align 16, !alias.scope !21604, !noalias !21617
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061.i)
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext9drop_view0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !21607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21607
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ay)
          to label %bb.aa unwind label %bb.z, !noalias !21604

bb.z:                                             ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21607
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.bd = load i8, ptr %i.bc, align 1, !range !270, !noalias !21607, !noundef !17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !21607
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 %i.bd, ptr %i.be, align 8, !noalias !21607
  %i.bf = load i64, ptr %i.h, align 8, !range !1787, !noalias !21607, !noundef !17
  %.not9.i = icmp eq i64 %i.bf, 20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !range !270, !noalias !21607
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i = select i1 %.not9.i, i1 %i.bi, i1 false
  %i.bj = trunc nuw i8 %i.bd to i1
  %or.cond75.i = select i1 %or.cond.i, i1 true, i1 %i.bj
  br i1 %or.cond75.i, label %.invoke.i, label %bb.ah

bb.ab:                                            ; preds = %.body54.i, %bb.ad
  %.pn26.i = phi { ptr, i32 } [ %i.bm, %bb.ad ], [ %.pn20.i, %.body54.i ] ; 2 uses
  %i.bk = load i64, ptr %i.h, align 8, !range !1787, !alias.scope !21618, !noalias !21607, !noundef !17
  %i.bl = icmp eq i64 %i.bk, 20
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.at, !noalias !21604

bb.ad:                                            ; preds = %.invoke.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ae:                                            ; preds = %bb.as, %.invoke.i
  %i.bn = load i64, ptr %i.h, align 8, !range !1787, !alias.scope !21623, !noalias !21607, !noundef !17
  %i.bo = icmp eq i64 %i.bn, 20
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i unwind label %bb.au, !noalias !21604

.invoke.i:                                        ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !21607, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq)
          to label %bb.ae unwind label %bb.ad, !noalias !21604

bb.ag:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21607
  br label %.body54.i

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21607
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21607
  store ptr %i.bs, ptr %i.d, align 8, !noalias !21607
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB4_14TableReferenceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !21607
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @140, ptr noundef nonnull %i.d)
          to label %bb.aj unwind label %bb.ag, !noalias !21604

.body.i:                                          ; preds = %bb.al, %bb.ak, %bb.ai
  %.pn18.i = phi { ptr, i32 } [ %i.bt, %bb.ai ], [ %i.bv, %bb.ak ], [ %i.bv, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21607
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #37
          to label %.body54.i unwind label %bb.at, !noalias !21604

bb.ai:                                            ; preds = %bb.aj
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21607
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body.i unwind label %bb.at, !noalias !21604

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !21628, !noalias !21607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21607
  store i64 0, ptr %i.c, align 8, !noalias !21607
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21607
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.573.0..sroa_idx.i, align 8, !noalias !21607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21607
  store ptr %i.f, ptr %i.b, align 8, !noalias !21607
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !21607
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bu, align 8, !noalias !21607
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !21607
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @40, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i unwind label %bb.ai, !noalias !21604

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i:   ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21607
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.am unwind label %bb.ak, !noalias !21604

bb.ak:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !range !95, !alias.scope !21632, !noalias !21607, !noundef !17 ; 2 uses
  %i.bw = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bw, label %.body.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21639, !noalias !21607, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21640
  br label %.body.i

bb.am:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !95, !alias.scope !21632, !noalias !21607, !noundef !17 ; 2 uses
  %i.bx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21639, !noalias !21607, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21643
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21607
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aq unwind label %bb.ao, !noalias !21604

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i49.i = load i64, ptr %i.f, align 8, !range !95, !alias.scope !21646, !noalias !21607, !noundef !17 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i49.i, 0
  br i1 %i.bz, label %.body54.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i50.i = load ptr, ptr %i.ca, align 8, !alias.scope !21653, !noalias !21607, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i50.i, i64 noundef %.val2.i.i49.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21654
  br label %.body54.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val.i.i52.i = load i64, ptr %i.f, align 8, !range !95, !alias.scope !21646, !noalias !21607, !noundef !17 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i52.i, 0
  br i1 %i.cb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i53.i = load ptr, ptr %i.cc, align 8, !alias.scope !21653, !noalias !21607, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i53.i, i64 noundef %.val.i.i52.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21657
  br label %bb.as

.body54.i:                                        ; preds = %bb.ap, %bb.ao, %.body.i, %bb.ag
  %.pn20.i = phi { ptr, i32 } [ %i.br, %bb.ag ], [ %.pn18.i, %.body.i ], [ %i.by, %bb.ao ], [ %i.by, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21607
  br label %bb.ab

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21607
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !21607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21607
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.cd, align 8, !noalias !21607
  store i64 36, ptr %i.a, align 16, !noalias !21607
  br label %bb.ae

bb.at:                                            ; preds = %bb.bb, %bb.aw, %bb.ai, %.body.i, %bb.ac, %bb.u
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !21604
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %bb.ac, %bb.ab
  %.pn28.i = phi { ptr, i32 } [ %i.cf, %bb.au ], [ %.pn26.i, %bb.ac ], [ %.pn26.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21607
  br label %bb.bb

bb.au:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21607
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.cg)
          to label %bb.ay unwind label %bb.ax, !noalias !21604

bb.av:                                            ; preds = %bb.bb, %bb.ax
  %.pn31.i = phi { ptr, i32 } [ %i.cl, %bb.ax ], [ %.pn28.pn.i, %bb.bb ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21660)
  call void @llvm.experimental.noalias.scope.decl(metadata !21663)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !21666, !noalias !21607, !nonnull !17, !noundef !17
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !21667
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ch) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.at, !noalias !21604

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i
end_hunk_3
