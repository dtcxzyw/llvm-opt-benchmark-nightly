Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
          to label %bb.fh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782 ; 2 uses

bb.fh:                                            ; preds = %bb.fg
  %i.tw = extractvalue { ptr, i64 } %i.tv, 0      ; 3 uses
  %i.tx = extractvalue { ptr, i64 } %i.tv, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tw) ]
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.tx ; 3 uses
  br label %bb.fi

bb.fi:                                            ; preds = %.outer.i.i, %bb.fh
  %.sroa.0.0.ph.i483.i = phi i64 [ 0, %bb.fh ], [ %i.xy, %.outer.i.i ] ; 2 uses
  %.sroa.013.0.ph.i482.i = phi i64 [ %i.ek, %bb.fh ], [ %i.xz, %.outer.i.i ] ; 7 uses
  %.sroa.036.0.ph.i481.i = phi ptr [ %i.tw, %bb.fh ], [ %.sroa.036.2.i.i, %.outer.i.i ] ; 4 uses
  %.sroa.11.0.ph.i480.i = phi ptr [ @2870, %bb.fh ], [ %.sroa.11.2.i.i, %.outer.i.i ] ; 9 uses
  %.not.i.i.peel.i.i = icmp eq ptr %.sroa.036.0.ph.i481.i, null
  %i.tz = icmp eq ptr %.sroa.036.0.ph.i481.i, %i.ty
  %or.cond242.i = select i1 %.not.i.i.peel.i.i, i1 true, i1 %i.tz
  br i1 %or.cond242.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ua = load i32, ptr %.sroa.036.0.ph.i481.i, align 4, !noalias !2793, !noundef !5 ; 4 uses
  %i.ub = xor i32 %i.ua, 55296
  %i.uc = add i32 %i.ub, -1114112
  %i.ud = icmp ult i32 %i.uc, -1112064
  br i1 %i.ud, label %.split.i.i.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.peel.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.peel.i.i: ; preds = %bb.fj
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.036.0.ph.i481.i, i64 4
  %i.uf = icmp ult i32 %i.ua, 1114112
  call void @llvm.assume(i1 %i.uf)
  br label %bb.fn

bb.fk:                                            ; preds = %bb.fi
  %.not.i.i.i.peel.i.i = icmp eq ptr %.sroa.11.0.ph.i480.i, null
  %.not.i.i.i.i.peel.i.i = icmp eq ptr %.sroa.11.0.ph.i480.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  %or.cond243.i = select i1 %.not.i.i.i.peel.i.i, i1 true, i1 %.not.i.i.i.i.peel.i.i
  br i1 %or.cond243.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.i480.i, i64 1 ; 2 uses
  %i.uh = load i8, ptr %.sroa.11.0.ph.i480.i, align 1, !noalias !2794, !noundef !5 ; 5 uses
  %i.ui = icmp sgt i8 %i.uh, -1
  br i1 %i.ui, label %bb.fm, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i: ; preds = %bb.fl
  %i.uj = and i8 %i.uh, 31
  %i.uk = zext nneg i8 %i.uj to i32               ; 3 uses
  %i.ul = icmp ne ptr %.sroa.11.0.ph.i480.i, @2870
  call void @llvm.assume(i1 %i.ul)
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.i480.i, i64 2 ; 3 uses
  %i.un = load i8, ptr %i.ug, align 1, !noalias !2794, !noundef !5
  %i.uo = shl nuw nsw i32 %i.uk, 6
  %i.up = and i8 %i.un, 63
  %i.uq = zext nneg i8 %i.up to i32               ; 2 uses
  %i.ur = or disjoint i32 %i.uo, %i.uq
  %i.us = icmp samesign ugt i8 %i.uh, -33
  br i1 %i.us, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i, label %bb.fn

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i
  %i.ut = icmp ne ptr %i.um, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  call void @llvm.assume(i1 %i.ut)
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.i480.i, i64 3 ; 3 uses
  %i.uv = load i8, ptr %i.um, align 1, !noalias !2794, !noundef !5
  %i.uw = shl nuw nsw i32 %i.uq, 6
  %i.ux = and i8 %i.uv, 63
  %i.uy = zext nneg i8 %i.ux to i32
  %i.uz = or disjoint i32 %i.uw, %i.uy            ; 2 uses
  %i.va = shl nuw nsw i32 %i.uk, 12
  %i.vb = or disjoint i32 %i.uz, %i.va
  %i.vc = icmp samesign ugt i8 %i.uh, -17
  br i1 %i.vc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.peel.i.i, label %bb.fn

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i
  %i.vd = icmp ne ptr %i.uu, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  call void @llvm.assume(i1 %i.vd)
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.i480.i, i64 4
  %i.vf = load i8, ptr %i.uu, align 1, !noalias !2794, !noundef !5
  %i.vg = shl nuw nsw i32 %i.uk, 18
  %i.vh = and i32 %i.vg, 1835008
  %i.vi = shl nuw nsw i32 %i.uz, 6
  %i.vj = and i8 %i.vf, 63
  %i.vk = zext nneg i8 %i.vj to i32
  %i.vl = or disjoint i32 %i.vi, %i.vk
  %i.vm = or disjoint i32 %i.vl, %i.vh
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vn = zext nneg i8 %i.uh to i32
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.peel.i.i
  %.sroa.11.1.ph.peel.i.i = phi ptr [ %.sroa.11.0.ph.i480.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.peel.i.i ], [ %i.um, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i ], [ %i.uu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i ], [ %i.ve, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.peel.i.i ], [ %i.ug, %bb.fm ] ; 2 uses
  %.sroa.036.1.ph.peel.i.i = phi ptr [ %i.ue, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.peel.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.peel.i.i ], [ null, %bb.fm ] ; 2 uses
  %.sroa.03.0.ph.peel.i.i = phi i32 [ %i.ua, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.peel.i.i ], [ %i.ur, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.peel.i.i ], [ %i.vb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.peel.i.i ], [ %i.vm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.peel.i.i ], [ %i.vn, %bb.fm ] ; 2 uses
  %i.vo = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph.peel.i.i)
          to label %.noexc180.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782 ; 2 uses

.noexc180.i:                                      ; preds = %bb.fn
  %i.vp = extractvalue { i64, i64 } %i.vo, 0
  %i.vq = trunc nuw i64 %i.vp to i1
  br i1 %i.vq, label %.loopexit.i178.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.noexc180.i, %.noexc182.i
  %.sroa.11.0.i.i = phi ptr [ %.sroa.11.1.ph.i.i, %.noexc182.i ], [ %.sroa.11.1.ph.peel.i.i, %.noexc180.i ] ; 9 uses
  %.sroa.036.0.i.i = phi ptr [ %.sroa.036.1.ph.i.i, %.noexc182.i ], [ %.sroa.036.1.ph.peel.i.i, %.noexc180.i ] ; 4 uses
  %.not.i.i.i177.i = icmp eq ptr %.sroa.036.0.i.i, null
  %i.vr = icmp eq ptr %.sroa.036.0.i.i, %i.ty
  %or.cond244.i = select i1 %.not.i.i.i177.i, i1 true, i1 %i.vr
  br i1 %or.cond244.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.peel.next.i.i
  %i.vs = load i32, ptr %.sroa.036.0.i.i, align 4, !noalias !2793, !noundef !5 ; 4 uses
  %i.vt = xor i32 %i.vs, 55296
  %i.vu = add i32 %i.vt, -1114112
  %i.vv = icmp ult i32 %i.vu, -1112064
  br i1 %i.vv, label %.split.i.i.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.fj, %bb.fo
  %.lcssa.i.i = phi i32 [ %i.vs, %bb.fo ], [ %i.ua, %bb.fj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2795
  store i32 %.lcssa.i.i, ptr %i.b, align 4, !noalias !2795
  br label %.split.i.i.i.i.i.i.i.invoke.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.fo
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i, i64 4
  %i.vx = icmp ult i32 %i.vs, 1114112
  call void @llvm.assume(i1 %i.vx)
  br label %bb.fs

bb.fp:                                            ; preds = %.peel.next.i.i
  %.not.i.i.i.i179.i = icmp eq ptr %.sroa.11.0.i.i, null
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0.i.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  %or.cond245.i = select i1 %.not.i.i.i.i179.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond245.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 1 ; 2 uses
  %i.vz = load i8, ptr %.sroa.11.0.i.i, align 1, !noalias !2794, !noundef !5 ; 5 uses
  %i.wa = icmp sgt i8 %i.vz, -1
  br i1 %i.wa, label %bb.fr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i: ; preds = %bb.fq
  %i.wb = and i8 %i.vz, 31
  %i.wc = zext nneg i8 %i.wb to i32               ; 3 uses
  %i.wd = icmp ne ptr %.sroa.11.0.i.i, @2870
  call void @llvm.assume(i1 %i.wd)
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 2 ; 3 uses
  %i.wf = load i8, ptr %i.vy, align 1, !noalias !2794, !noundef !5
  %i.wg = shl nuw nsw i32 %i.wc, 6
  %i.wh = and i8 %i.wf, 63
  %i.wi = zext nneg i8 %i.wh to i32               ; 2 uses
  %i.wj = or disjoint i32 %i.wg, %i.wi
  %i.wk = icmp samesign ugt i8 %i.vz, -33
  br i1 %i.wk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.wl = zext nneg i8 %i.vz to i32
  br label %bb.fs

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.wm = icmp ne ptr %i.we, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  call void @llvm.assume(i1 %i.wm)
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 3 ; 3 uses
  %i.wo = load i8, ptr %i.we, align 1, !noalias !2794, !noundef !5
  %i.wp = shl nuw nsw i32 %i.wi, 6
  %i.wq = and i8 %i.wo, 63
  %i.wr = zext nneg i8 %i.wq to i32
  %i.ws = or disjoint i32 %i.wp, %i.wr            ; 2 uses
  %i.wt = shl nuw nsw i32 %i.wc, 12
  %i.wu = or disjoint i32 %i.ws, %i.wt
  %i.wv = icmp samesign ugt i8 %i.vz, -17
  br i1 %i.wv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, label %bb.fs

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i
  %i.ww = icmp ne ptr %i.wn, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  call void @llvm.assume(i1 %i.ww)
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 4
  %i.wy = load i8, ptr %i.wn, align 1, !noalias !2794, !noundef !5
  %i.wz = shl nuw nsw i32 %i.wc, 18
  %i.xa = and i32 %i.wz, 1835008
  %i.xb = shl nuw nsw i32 %i.ws, 6
  %i.xc = and i8 %i.wy, 63
  %i.xd = zext nneg i8 %i.xc to i32
  %i.xe = or disjoint i32 %i.xb, %i.xd
  %i.xf = or disjoint i32 %i.xe, %i.xa
  br label %bb.fs

bb.fs:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.fr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.11.1.ph.i.i = phi ptr [ %.sroa.11.0.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.we, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.wx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.vy, %bb.fr ] ; 2 uses
  %.sroa.036.1.ph.i.i = phi ptr [ %i.vw, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ null, %bb.fr ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi i32 [ %i.vs, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.xf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.wl, %bb.fr ] ; 2 uses
  %i.xg = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph.i.i)
          to label %.noexc182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782 ; 2 uses

.noexc182.i:                                      ; preds = %bb.fs
  %i.xh = extractvalue { i64, i64 } %i.xg, 0
  %i.xi = trunc nuw i64 %i.xh to i1
  br i1 %i.xi, label %.loopexit.i178.i, label %.peel.next.i.i, !llvm.loop !2728

.loopexit.i178.i:                                 ; preds = %.noexc182.i, %.noexc180.i
  %.sroa.11.1.ph.lcssa.i.i = phi ptr [ %.sroa.11.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.11.1.ph.i.i, %.noexc182.i ] ; 6 uses
  %.sroa.036.1.ph.lcssa.i.i = phi ptr [ %.sroa.036.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.036.1.ph.i.i, %.noexc182.i ] ; 4 uses
  %.sroa.03.0.ph.lcssa.i.i = phi i32 [ %.sroa.03.0.ph.peel.i.i, %.noexc180.i ], [ %.sroa.03.0.ph.i.i, %.noexc182.i ]
  %.lcssa72.i.i = phi { i64, i64 } [ %i.vo, %.noexc180.i ], [ %i.xg, %.noexc182.i ]
  %i.xj = extractvalue { i64, i64 } %.lcssa72.i.i, 1 ; 3 uses
  %i.xk = icmp ugt i64 %i.xj, %.sroa.013.0.ph.i482.i
  br i1 %i.xk, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %.loopexit.i178.i
  %.not485.i = icmp eq i64 %i.xj, %.sroa.013.0.ph.i482.i ; 2 uses
  br i1 %.not485.i, label %bb.fu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.fx, %bb.fw, %bb.ft
  %.sroa.11.2.i.i = phi ptr [ %.sroa.11.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ %.sroa.11.1.ph.lcssa.i.i, %bb.fx ]
  %.sroa.036.2.i.i = phi ptr [ %.sroa.036.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ null, %bb.fx ]
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tu, i32 noundef %.sroa.03.0.ph.lcssa.i.i, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc183.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

.noexc183.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i
  %i.xl = icmp eq i64 %.sroa.0.0.ph.i483.i, -1
  br i1 %i.xl, label %bb.fz, label %.outer.i.i

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i.i.i34.i.i = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, null
  %i.xm = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, %i.ty
  %or.cond246.i = select i1 %.not.i.i.i.i34.i.i, i1 true, i1 %i.xm
  br i1 %or.cond246.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xn = load i32, ptr %.sroa.036.1.ph.lcssa.i.i, align 4, !noalias !2796, !noundef !5 ; 2 uses
  %i.xo = xor i32 %i.xn, 55296
  %i.xp = add i32 %i.xo, -1114112
  %i.xq = icmp ult i32 %i.xp, -1112064
  br i1 %i.xq, label %.split.i.i.i.i.i.i.i.i, label %.sink.split.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2797
  store i32 %i.xn, ptr %i.a, align 4, !noalias !2797
  br label %.split.i.i.i.i.i.i.i.invoke.i

.split.i.i.i.i.i.i.i.invoke.i:                    ; preds = %.split.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %i.xr = phi ptr [ %i.a, %.split.i.i.i.i.i.i.i.i ], [ %i.b, %.split.i.i.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.xr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3115) #37
          to label %.split.i.i.i.i.i.i.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

.split.i.i.i.i.i.i.i.cont.i:                      ; preds = %.split.i.i.i.i.i.i.i.invoke.i
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xs = load i8, ptr %.sroa.11.1.ph.lcssa.i.i, align 1, !noalias !2798, !noundef !5
  %i.xt = icmp sgt i8 %i.xs, -1
  br i1 %i.xt, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy
  %i.xu = icmp ne ptr %.sroa.11.1.ph.lcssa.i.i, @2870
  call void @llvm.assume(i1 %i.xu)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i, %bb.fv, %bb.fy
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tu, i32 noundef 8230, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc185.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

.noexc185.i:                                      ; preds = %.sink.split.i.i
  %i.xv = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782 ; 2 uses

.noexc186.i:                                      ; preds = %.noexc185.i
  %i.xw = extractvalue { i64, i64 } %i.xv, 0
  %i.xx = trunc nuw i64 %i.xw to i1
  br i1 %i.xx, label %bb.ga, label %.invoke.i, !prof !8

.outer.i.i:                                       ; preds = %.noexc183.i
  %i.xy = add nuw i64 %.sroa.0.0.ph.i483.i, 1
  %i.xz = sub nuw i64 %.sroa.013.0.ph.i482.i, %i.xj
  br i1 %.not485.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, label %bb.fi

bb.fz:                                            ; preds = %.noexc183.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc187.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

.noexc187.i:                                      ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %.noexc186.i
  %i.ya = extractvalue { i64, i64 } %i.xv, 1
  %i.yb = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i482.i, i64 %i.ya)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.loopexit.i178.i, %bb.fk, %bb.fp, %bb.ga
  %.sroa.013.2.i.i = phi i64 [ %i.yb, %bb.ga ], [ %.sroa.013.0.ph.i482.i, %bb.fp ], [ %.sroa.013.0.ph.i482.i, %bb.fk ], [ %.sroa.013.0.ph.i482.i, %.loopexit.i178.i ] ; 2 uses
  %i.yc = icmp ult i64 %i.ek, %.sroa.013.2.i.i
  br i1 %i.yc, label %.invoke.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, !prof !2799

.invoke.i:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %.noexc186.i
  %i.yd = phi ptr [ @16, %.noexc186.i ], [ @17, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yd) #37
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread: ; preds = %.outer.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.013.2.i.i140 = phi i64 [ %.sroa.013.2.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.outer.i.i ] ; 2 uses
  %i.ye = load ptr, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !2756, !nonnull !5, !noundef !5 ; 2 uses
  %i.yf = load i64, ptr %.sroa.689.0..sroa_idx.i, align 8, !noalias !2756, !noundef !5
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.yf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2756
  store i8 0, ptr %i.r, align 1, !noalias !2756
  store i8 1, ptr %.sroa.454.0..sroa_idx.i, align 1, !noalias !2756
  store i16 0, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !2756
  %i.yh = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 0, i64 undef, ptr noundef nonnull %i.ye, ptr noundef nonnull %i.yg, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.r, i64 noundef %.sroa.013.2.i.i140, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.tu)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

bb.gb:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2756
  %i.yi = icmp ult i64 %.sroa.013.2.i.i140, %i.yh
  br i1 %i.yi, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i unwind label %bb.gd, !noalias !2782

bb.gd:                                            ; preds = %bb.gc
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body192.i unwind label %bb.ge, !noalias !2782

bb.ge:                                            ; preds = %bb.gd
  %i.yk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2782
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i unwind label %.loopexit.split-lp255.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

bb.gf:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2871) #36
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2782

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2756
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.sink.split.sink.split.i unwind label %bb.gg, !noalias !2782

bb.gg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i
  %i.yl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.gh, !noalias !2782

bb.gh:                                            ; preds = %bb.gg
  %i.ym = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2782
  unreachable

.sink.split.sink.split.i:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i, %bb.ev
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %.sink.split.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2756
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit

bb.gi:                                            ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2872, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2873) #37
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.gi
  unreachable

.split.i:                                         ; preds = %.outer.i, %.outer.split.split.us.i
  %.sroa.022.0.ph461.i310 = phi i64 [ %.sroa.022.0.ph461.i581, %.outer.split.split.us.i ], [ %..i200.i, %.outer.i ] ; 4 uses
  %.sroa.025.0.ph460.i307 = phi i64 [ %.sroa.025.0.ph460.i582, %.outer.split.split.us.i ], [ %..i201.i, %.outer.i ]
  %i.yn = add i64 %.sroa.025.0.ph460.i307, %.sroa.022.0.ph461.i310 ; 2 uses
  %i.yo = icmp ult i64 %i.yn, %.sroa.022.0.ph461.i310
  br i1 %i.yo, label %.split473.us.i.invoke, label %bb.gj

bb.gj:                                            ; preds = %.split.i
  %i.yp = icmp ugt i64 %.sroa.022.0.ph461.i310, -3
  br i1 %i.yp, label %.split473.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i: ; preds = %bb.gj
  %..i199.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.yn) ; 2 uses
  %i.yq = add nuw i64 %.sroa.022.0.ph461.i310, 2  ; 2 uses
  br i1 %i.dd, label %.outer.split.us.1.i, label %.outer.split.1.i.preheader

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread: ; preds = %.loopexit279.thread1020
  store i64 0, ptr %i.aw, align 8, !alias.scope !2755
  br i1 %i.dd, label %.outer.split.preheader.2.i, label %.outer.split.1.i.preheader

.outer.split.1.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %i.yr = phi i64 [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %i.yq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %..i199.i1064 = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %..i199.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %.sroa.0.0.i207.fr815.i1028104410511060 = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %.sroa.0.0.i207.fr814.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ] ; 9 uses
  %i.ys = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %i.fg, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %.sroa.08.1.i1031104310521058 = phi i64 [ %spec.select1024, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %.sroa.08.1.i1033, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %exitcond.1.not.i16051610 = icmp eq i64 %.sroa.0.0.i207.fr815.i1028104410511060, 0
  br i1 %exitcond.1.not.i16051610, label %.split.1.i, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.split.1.i.preheader, %.outer.1.i
  %umax.1.i1614 = phi i64 [ %umax.1.i, %.outer.1.i ], [ %.sroa.0.0.i207.fr815.i1028104410511060, %.outer.split.1.i.preheader ]
  %.sroa.060.0.ph459.1.i1613 = phi i64 [ %i.yv, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ]
end_hunk_0
