Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeECskXtk6F4WjxZ_4just:bb.a

bb.af:                                            ; preds = %bb.bv, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %.sroa.0.032102.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ %i.ga, %bb.bv ] ; 4 uses
  %i.ga = add nuw i64 %.sroa.0.032102.i.i.i.i.i.i, 1 ; 2 uses
  %i.gb = and i64 %.sroa.0.032102.i.i.i.i.i.i, 1023
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.be, label %bb.bg

.lr.ph105.i.i.i.i.i.i:                            ; preds = %bb.bv, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %.sroa.011.0104.i.i.i.i.i.i = phi i64 [ %i.gd, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ 0, %bb.bv ] ; 3 uses
  %i.gd = add nuw i64 %.sroa.011.0104.i.i.i.i.i.i, 1 ; 2 uses
  %i.ge = and i64 %.sroa.011.0104.i.i.i.i.i.i, 1023
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.ak, label %bb.am

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit21.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.gg = load i64, ptr %i.fx, align 8, !alias.scope !2744, !noalias !2714, !noundef !29 ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit21.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  br i1 %i.ke, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = load ptr, ptr %i.as, align 8, !alias.scope !2748, !noalias !2714, !nonnull !29, !noundef !29 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gi, align 16, !noalias !2749
  %i.gj = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gl = bitcast <16 x i1> %i.gj to i16
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.ah ], [ %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.ah ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gl, %bb.ah ], [ %i.gu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kd, %bb.ah ], [ %i.gx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gm = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.gn = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ]
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gm, align 16, !noalias !2752
  %i.go = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -512 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.go to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gr = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = and i16 %i.gr, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = sub nsw i64 0, %i.gt
  %i.gw = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gv ; 2 uses
  %i.gx = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gy, align 8, !alias.scope !2755, !noalias !2758 ; 2 uses
  %i.gz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = getelementptr i8, ptr %i.gw, i64 -16
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !2758, !nonnull !29, !noundef !29
  %i.hb = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !2759
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = icmp eq i64 %i.gx, 0
  br i1 %i.hc, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %i.hd = shl i64 %i.gg, 5                        ; 2 uses
  %i.he = add i64 %i.hd, 32                       ; 2 uses
  %i.hf = add i64 %i.gg, 17
  %i.hg = add i64 %i.hf, %i.he                    ; 4 uses
  %i.hh = icmp uge i64 %i.hg, %i.he
  %i.hi = icmp ult i64 %i.hg, 9223372036854775793
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.assume(i1 %i.hi)
  %i.hj = icmp eq i64 %i.hg, 0
  br i1 %i.hj, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph105.i.i.i.i.i.i
  %i.hk = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %bb.al unwind label %.loopexit68.i.i.i.i.i.i, !noalias !2728

bb.al:                                            ; preds = %bb.ak
  br i1 %i.hk, label %.loopexit69.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph105.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2714
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.sroa.011.0104.i.i.i.i.i.i ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !2762, !noalias !2765, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !2762, !noalias !2765, !noundef !29 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.hp = load i64, ptr %i.hm, align 8, !range !274, !alias.scope !2773, !noalias !2774, !noundef !29
  %i.hq = trunc nuw i64 %i.hp to i1               ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !2773, !noalias !2774, !noundef !29
  %i.ht = icmp ult i64 %i.ho, %i.hs               ; 3 uses
  br i1 %i.hq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br i1 %i.ht, label %bb.aq, label %.invoke.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  br i1 %i.ht, label %bb.ap, label %.invoke.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !2773, !noalias !2774, !nonnull !29, !noundef !29 ; 2 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.ho ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  br label %.noexc12.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.an
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !2773, !noalias !2774, !nonnull !29, !noundef !29 ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hz, i64 %i.ho ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = getelementptr i8, ptr %i.ia, i64 16
  br label %.noexc12.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i:                             ; preds = %bb.aq, %bb.ap
  %i.id = phi ptr [ %i.hz, %bb.aq ], [ %i.hv, %bb.ap ] ; 2 uses
  %.sroa.5.1.i.in.i.i.i.i.i.i.i = phi ptr [ %i.ic, %bb.aq ], [ %i.hx, %bb.ap ]
  %.sroa.0.1.i.in.i.i.i.i.i.i.i = phi ptr [ %i.ib, %bb.aq ], [ %i.hw, %bb.ap ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i.i.i.i.i.i.i, align 8, !noalias !2776, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i.i.i.i.i.i.i, align 8, !noalias !2776, !noundef !29 ; 4 uses
  %i.ie = icmp samesign eq i64 %.sroa.5.1.i.i.i.i.i.i.i.i, 0
  br i1 %i.ie, label %.loopexit67.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc12.i.i.i.i.i.i
  %xtraiter368 = and i64 %.sroa.5.1.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.if = icmp ult i64 %.sroa.5.1.i.i.i.i.i.i.i.i, 8
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter375 = and i64 %.sroa.5.1.i.i.i.i.i.i.i.i, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.jq, %.lr.ph.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.ig = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i ]
  %niter376 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter376.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 1
  %i.ii = load i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.ij = zext i8 %i.ii to i64
  %i.ik = xor i64 %i.ig, %i.ij
  %i.il = mul i64 %i.ik, 1099511628211
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 2
  %i.in = load i8, ptr %i.ih, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.io = zext i8 %i.in to i64
  %i.ip = xor i64 %i.il, %i.io
  %i.iq = mul i64 %i.ip, 1099511628211
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 3
  %i.is = load i8, ptr %i.im, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.it = zext i8 %i.is to i64
  %i.iu = xor i64 %i.iq, %i.it
  %i.iv = mul i64 %i.iu, 1099511628211
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 4
  %i.ix = load i8, ptr %i.ir, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.iy = zext i8 %i.ix to i64
  %i.iz = xor i64 %i.iv, %i.iy
  %i.ja = mul i64 %i.iz, 1099511628211
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 5
  %i.jc = load i8, ptr %i.iw, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.jd = zext i8 %i.jc to i64
  %i.je = xor i64 %i.ja, %i.jd
  %i.jf = mul i64 %i.je, 1099511628211
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 6
  %i.jh = load i8, ptr %i.jb, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.ji = zext i8 %i.jh to i64
  %i.jj = xor i64 %i.jf, %i.ji
  %i.jk = mul i64 %i.jj, 1099511628211
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 7
  %i.jm = load i8, ptr %i.jg, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.jn = zext i8 %i.jm to i64
  %i.jo = xor i64 %i.jk, %i.jn
  %i.jp = mul i64 %i.jo, 1099511628211
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jr = load i8, ptr %i.jl, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.js = zext i8 %i.jr to i64
  %i.jt = xor i64 %i.jp, %i.js
  %i.ju = mul i64 %i.jt, 1099511628211            ; 3 uses
  %niter376.next.7 = add nuw nsw i64 %niter376, 8 ; 2 uses
  %niter376.ncmp.7 = icmp eq i64 %niter376.next.7, %unroll_iter375
  br i1 %niter376.ncmp.7, label %.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod372.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod372.not, label %.loopexit67.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.jq, %.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %.epil.init371 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ju, %.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod374 = icmp ne i64 %xtraiter368, 0
  call void @llvm.assume(i1 %lcmp.mod374)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.jv = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.epil.init371, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter369 = phi i64 [ %epil.iter369.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil, i64 1
  %i.jx = load i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil, align 1, !alias.scope !2777, !noalias !2784, !noundef !29
  %i.jy = zext i8 %i.jx to i64
  %i.jz = xor i64 %i.jv, %i.jy
  %i.ka = mul i64 %i.jz, 1099511628211            ; 2 uses
  %epil.iter369.next = add i64 %epil.iter369, 1   ; 2 uses
  %epil.iter369.cmp.not = icmp eq i64 %epil.iter369.next, %xtraiter368
  br i1 %epil.iter369.cmp.not, label %.loopexit67.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !2788

.loopexit67.loopexit.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa
  %.lcssa318 = phi i64 [ %i.ju, %.loopexit67.loopexit.i.i.i.i.i.i.unr-lcssa ], [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  %i.kb = xor i64 %.lcssa318, 255
  %i.kc = mul i64 %i.kb, 1099511628211
  br label %.loopexit67.i.i.i.i.i.i

.loopexit67.i.i.i.i.i.i:                          ; preds = %.loopexit67.loopexit.i.i.i.i.i.i, %.noexc12.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i.i.i.i.i.i ], [ %i.kc, %.loopexit67.loopexit.i.i.i.i.i.i ] ; 2 uses
  store i64 %.promoted.i.i.i.i.i.i.i.i.i, ptr %i.ar, align 8, !noalias !2714
  call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %i.kd = load i64, ptr %i.fz, align 8, !alias.scope !2789, !noalias !2792, !noundef !29 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0                    ; 2 uses
  br i1 %i.ke, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.loopexit67.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2789, !noalias !2792, !noundef !29
  %.val5.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2789, !noalias !2792, !noundef !29
  %i.kf = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar), !noalias !2794 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.kg = lshr i64 %i.kf, 57
  %i.kh = trunc nuw nsw i64 %i.kg to i8
  %i.ki = load i64, ptr %i.fx, align 8, !alias.scope !2801, !noalias !2802, !noundef !29 ; 2 uses
  %i.kj = load ptr, ptr %i.as, align 8, !alias.scope !2801, !noalias !2802, !nonnull !29, !noundef !29 ; 2 uses
  %i.kk = insertelement <16 x i8> poison, i8 %i.kh, i64 0
  %i.kl = shufflevector <16 x i8> %i.kk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.lc, %bb.au ]
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %i.kf, %bb.ar ], [ %i.ld, %bb.au ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i, %i.ki ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.km, align 1, !noalias !2805 ; 2 uses
  %i.kn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i, %i.kl
  %i.ko = bitcast <16 x i1> %i.kn to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i = icmp eq i16 %i.ko, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i24.i.i.i.i.i.i

.lr.ph.i.i24.i.i.i.i.i.i:                         ; preds = %bb.as, %bb.at
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i = phi i16 [ %i.lb, %bb.at ], [ %i.ko, %bb.as ] ; 3 uses
  %i.kp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i, i1 true)
  %i.kq = zext nneg i16 %i.kp to i64
  %i.kr = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.kq
  %i.ks = and i64 %i.kr, %i.ki
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds [32 x i8], ptr %i.kj, i64 %i.kt ; 3 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -32
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kv, align 8, !noalias !2808, !noundef !29
  %i.kw = icmp eq i64 %.promoted.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i
  br i1 %i.kw, label %bb.av, label %bb.at, !prof !36

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.at, %bb.as
  %i.kx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ky = bitcast <16 x i1> %i.kx to i16
  %i.kz = icmp eq i16 %i.ky, 0
  br i1 %i.kz, label %bb.au, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, !prof !340

bb.at:                                            ; preds = %.lr.ph.i.i24.i.i.i.i.i.i
  %i.la = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i, -1
  %i.lb = and i16 %i.la, %.sroa.06.0.i31.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.lb, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i24.i.i.i.i.i.i

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.lc = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ld = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.lc
  br label %bb.as

bb.av:                                            ; preds = %.lr.ph.i.i24.i.i.i.i.i.i
  %i.le = getelementptr inbounds i8, ptr %i.ku, i64 -16
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !2728, !nonnull !29, !noundef !29 ; 3 uses
  %i.lg = getelementptr inbounds i8, ptr %i.ku, i64 -8
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !2728, !noundef !29 ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.lh, 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx.i.i.i.i.i.i
  %.not.i27.i.i.i.i.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not.i27.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.av
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.ho ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.ho ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 8
  %i.ln = getelementptr i8, ptr %i.ll, i64 16
  %.199.i.i.i.i.i.i = select i1 %i.hq, ptr %i.lm, ptr %i.lj
  %..i.i.i.i.i.i = select i1 %i.hq, ptr %i.ln, ptr %i.lk
  br i1 %i.ht, label %.lr.ph.i.i.us.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i.i.us.i.i.i.i.i
  %i.lo = phi ptr [ %i.lp, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i.i.us.i.i.i.i.i ], [ %i.lf, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %.val3.i.i.us.i.i.i.i.i = load i64, ptr %i.lo, align 8, !noalias !2811, !noundef !29 ; 3 uses
  %i.lq = icmp ult i64 %.val3.i.i.us.i.i.i.i.i, %i.by
  br i1 %i.lq, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.us.i.i.i.i.i, label %.invoke194.i.i.i.i.i.i

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.val3.i.i.us.i.i.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.us.i.i.i.i.i = load ptr, ptr %.199.i.i.i.i.i.i, align 8, !noalias !2819, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i.i.i.i.us.i.i.i.i.i = load i64, ptr %..i.i.i.i.i.i, align 8, !noalias !2819, !noundef !29 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !2816, !noalias !2826, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !2816, !noalias !2826, !noundef !29 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830), !noalias !2833
  %i.lv = load i64, ptr %i.ls, align 8, !range !274, !alias.scope !2834, !noalias !2835, !noundef !29
  %i.lw = trunc nuw i64 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !2834, !noalias !2835, !noundef !29
  %i.lz = icmp ult i64 %i.lu, %i.ly               ; 2 uses
  br i1 %i.lw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.us.i.i.i.i.i
  br i1 %i.lz, label %bb.ax, label %.invoke.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !2834, !noalias !2835, !nonnull !29, !noundef !29
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.lu ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.us.i.i.i.i.i

bb.ay:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.us.i.i.i.i.i
  br i1 %i.lz, label %bb.az, label %.invoke.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !alias.scope !2834, !noalias !2835, !nonnull !29, !noundef !29
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %i.mf, i64 %i.lu ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 8
  %i.mi = getelementptr i8, ptr %i.mg, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.us.i.i.i.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.us.i.i.i.i.i: ; preds = %bb.az, %bb.ax
  %.sroa.5.1.i.in.i2.i.i.i.us.i.i.i.i.i = phi ptr [ %i.mi, %bb.az ], [ %i.md, %bb.ax ]
  %.sroa.0.1.i.in.i3.i.i.i.us.i.i.i.i.i = phi ptr [ %i.mh, %bb.az ], [ %i.mc, %bb.ax ]
  %.sroa.5.1.i.i5.i.i.i.us.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i2.i.i.i.us.i.i.i.i.i, align 8, !noalias !2837, !noundef !29
  %i.mj = icmp eq i64 %.sroa.5.1.i.i.i.i.i.us.i.i.i.i.i, %.sroa.5.1.i.i5.i.i.i.us.i.i.i.i.i
  br i1 %i.mj, label %.split.i.i.us.i.i.i.i.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i.i.us.i.i.i.i.i

.split.i.i.us.i.i.i.i.i:                          ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.us.i.i.i.i.i
  %.sroa.0.1.i.i4.i.i.i.us.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i3.i.i.i.us.i.i.i.i.i, align 8, !noalias !2837, !nonnull !29, !noundef !29
  %bcmp.i.i.i.i.us.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.us.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i4.i.i.i.us.i.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i.us.i.i.i.i.i), !alias.scope !2838, !noalias !2842
  %i.mk = icmp eq i32 %bcmp.i.i.i.i.us.i.i.i.i.i, 0
  br i1 %i.mk, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i.i.us.i.i.i.i.i

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i.i.us.i.i.i.i.i: ; preds = %.split.i.i.us.i.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.us.i.i.i.i.i
  %.not17.i.i.us.i.i.i.i.i = icmp eq ptr %i.lp, %i.li
  br i1 %.not17.i.i.us.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.lf, align 8, !noalias !2811, !noundef !29 ; 2 uses
  %i.ml = icmp ult i64 %.val3.i.i.i.i.i.i.i, %i.by
  br i1 %i.ml, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %.invoke194.i.i.i.i.i.i

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  br label %.invoke.i.i.i.i.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.split.i.i.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2714
  br label %.loopexit69.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i.i.us.i.i.i.i.i, %bb.av, %.loopexit67.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2714
  %exitcond136.not.i.i.i.i.i.i = icmp eq i64 %i.gd, %i.cc
  br i1 %exitcond136.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit21.i.i.i.i.i.i, label %.lr.ph105.i.i.i.i.i.i

.loopexit69.i.i.i.i.i.i:                          ; preds = %bb.bf, %bb.al, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.mm = load i64, ptr %i.fx, align 8, !alias.scope !2858, !noalias !2714, !noundef !29 ; 3 uses
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %.sink.split.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.loopexit69.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  %i.mo = load i64, ptr %i.fz, align 8, !alias.scope !2862, !noalias !2714, !noundef !29 ; 2 uses
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i44.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mq = load ptr, ptr %i.as, align 8, !alias.scope !2862, !noalias !2714, !nonnull !29, !noundef !29 ; 3 uses
  %.val3.i.i.i.i.i.i.i31.i.i.i.i.i.i = load <16 x i8>, ptr %i.mq, align 16, !noalias !2863
  %i.mr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i31.i.i.i.i.i.i, splat (i8 -1)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mt = bitcast <16 x i1> %i.mr to i16
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i, %bb.bb
  %.sroa.06.017.i.i.i.i.i.i32.i.i.i.i.i.i = phi ptr [ %i.mq, %bb.bb ], [ %.sroa.06.1.i.i.i.i.i.i39.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.ms, %bb.bb ], [ %.sroa.6.1.i.i.i.i.i.i38.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i34.i.i.i.i.i.i = phi i16 [ %i.mt, %bb.bb ], [ %i.nc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i35.i.i.i.i.i.i = phi i64 [ %i.mo, %bb.bb ], [ %i.nf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i36.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i34.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i36.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i37.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i:               ; preds = %bb.bc, %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i
  %i.mu = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i33.i.i.i.i.i.i, %bb.bc ] ; 2 uses
  %i.mv = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i32.i.i.i.i.i.i, %bb.bc ]
  %.val9.i.i.i.i.i.i.i46.i.i.i.i.i.i = load <16 x i8>, ptr %i.mu, align 16, !noalias !2866
  %i.mw = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i46.i.i.i.i.i.i, splat (i8 -1)
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 -512 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i47.i.i.i.i.i.i = bitcast <16 x i1> %i.mw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i48.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i47.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i48.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i37.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i37.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i, %bb.bc
  %.sroa.6.1.i.i.i.i.i.i38.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i33.i.i.i.i.i.i, %bb.bc ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i39.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i32.i.i.i.i.i.i, %bb.bc ], [ %i.mx, %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i40.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.bc ], [ %.cast.i.i.i.i.i.i.i47.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 3 uses
  %i.mz = add i16 %.lcssa.i.i.i.i.i.i.i40.i.i.i.i.i.i, -1
  %i.na = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i40.i.i.i.i.i.i, i1 true)
  %i.nb = zext nneg i16 %i.na to i64
  %i.nc = and i16 %i.mz, %.lcssa.i.i.i.i.i.i.i40.i.i.i.i.i.i
  %i.nd = sub nsw i64 0, %i.nb
  %i.ne = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i39.i.i.i.i.i.i, i64 %i.nd ; 2 uses
  %i.nf = add i64 %.sroa.108.014.i.i.i.i.i.i35.i.i.i.i.i.i, -1 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.ne, i64 -24
  %.val.i.i.i.i.i.i41.i.i.i.i.i.i = load i64, ptr %i.ng, align 8, !alias.scope !2869, !noalias !2872 ; 2 uses
  %i.nh = icmp eq i64 %.val.i.i.i.i.i.i41.i.i.i.i.i.i, 0
  br i1 %i.nh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i37.i.i.i.i.i.i
  %i.ni = getelementptr i8, ptr %i.ne, i64 -16
  %.val5.i.i.i.i.i.i42.i.i.i.i.i.i = load ptr, ptr %i.ni, align 8, !noalias !2872, !nonnull !29, !noundef !29
  %i.nj = shl nuw i64 %.val.i.i.i.i.i.i41.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i42.i.i.i.i.i.i, i64 noundef %i.nj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !2873
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i: ; preds = %bb.bd, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i37.i.i.i.i.i.i
  %i.nk = icmp eq i64 %i.nf, 0
  br i1 %i.nk, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i44.i.i.i.i.i.i, label %bb.bc

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i44.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i43.i.i.i.i.i.i, %bb.ba
  %i.nl = shl i64 %i.mm, 5                        ; 2 uses
  %i.nm = add i64 %i.nl, 32                       ; 2 uses
  %i.nn = add i64 %i.mm, 17
  %i.no = add i64 %i.nn, %i.nm                    ; 4 uses
  %i.np = icmp uge i64 %i.no, %i.nm
  %i.nq = icmp ult i64 %i.no, 9223372036854775793
  call void @llvm.assume(i1 %i.np)
  call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp eq i64 %i.no, 0
  br i1 %i.nr, label %.sink.split.i.i.i.i, label %.critedge.i.i.i.i.i

bb.be:                                            ; preds = %bb.af
  %i.ns = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !2728

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ns, label %.loopexit69.i.i.i.i.i.i, label %bb.bg

.invoke194.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.us.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.nt = phi i64 [ %.val3.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.val3.i.i.us.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nt, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @568) #75
          to label %.cont195.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !2728

.cont195.i.i.i.i.i.i:                             ; preds = %.invoke194.i.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %bb.bf, %bb.af
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.sroa.0.032102.i.i.i.i.i.i ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !alias.scope !2876, !noalias !2879, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !2876, !noalias !2879, !noundef !29 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %i.ny = load i64, ptr %i.nv, align 8, !range !274, !alias.scope !2887, !noalias !2888, !noundef !29
  %i.nz = trunc nuw i64 %i.ny to i1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.ob = load i64, ptr %i.oa, align 8, !alias.scope !2887, !noalias !2888, !noundef !29
  %i.oc = icmp ult i64 %i.nx, %i.ob               ; 2 uses
  br i1 %i.nz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.oc, label %bb.bk, label %.invoke.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.oc, label %bb.bj, label %.invoke.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.od = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !2887, !noalias !2888, !nonnull !29, !noundef !29
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %i.nx ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  br label %.noexc.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !alias.scope !2887, !noalias !2888, !nonnull !29, !noundef !29
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %i.nx ; 2 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  %i.ol = getelementptr i8, ptr %i.oj, i64 16
  br label %.noexc.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.bi, %bb.bh, %bb.ao, %bb.an, %bb.ay, %bb.aw, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !2728

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bk, %bb.bj
  %.sroa.5.1.i.in.i52.i.i.i.i.i.i = phi ptr [ %i.ol, %bb.bk ], [ %i.og, %bb.bj ]
  %.sroa.0.1.i.in.i53.i.i.i.i.i.i = phi ptr [ %i.ok, %bb.bk ], [ %i.of, %bb.bj ]
  %.sroa.0.1.i.i54.i.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i53.i.i.i.i.i.i, align 8, !noalias !2890, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i55.i.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i52.i.i.i.i.i.i, align 8, !noalias !2890, !noundef !29 ; 4 uses
  %i.om = icmp samesign eq i64 %.sroa.5.1.i.i55.i.i.i.i.i.i, 0
  br i1 %i.om, label %.loopexit70.i.i.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.i.i.preheader:               ; preds = %.noexc.i.i.i.i.i.i
  %xtraiter = and i64 %.sroa.5.1.i.i55.i.i.i.i.i.i, 7 ; 3 uses
  %i.on = icmp ult i64 %.sroa.5.1.i.i55.i.i.i.i.i.i, 8
  br i1 %i.on, label %.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i59.i.i.i.i.i.i.preheader.new

.lr.ph.i.i59.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i59.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i55.i.i.i.i.i.i, -8
  br label %.lr.ph.i.i59.i.i.i.i.i.i

.lr.ph.i.i59.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i59.i.i.i.i.i.i, %.lr.ph.i.i59.i.i.i.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i60.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i54.i.i.i.i.i.i, %.lr.ph.i.i59.i.i.i.i.i.i.preheader.new ], [ %i.py, %.lr.ph.i.i59.i.i.i.i.i.i ] ; 9 uses
  %i.oo = phi i64 [ -3750763034362895579, %.lr.ph.i.i59.i.i.i.i.i.i.preheader.new ], [ %i.qc, %.lr.ph.i.i59.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i59.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i59.i.i.i.i.i.i ]
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 1
  %i.oq = load i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.or = zext i8 %i.oq to i64
  %i.os = xor i64 %i.oo, %i.or
  %i.ot = mul i64 %i.os, 1099511628211
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 2
  %i.ov = load i8, ptr %i.op, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.ow = zext i8 %i.ov to i64
  %i.ox = xor i64 %i.ot, %i.ow
  %i.oy = mul i64 %i.ox, 1099511628211
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 3
  %i.pa = load i8, ptr %i.ou, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.pb = zext i8 %i.pa to i64
  %i.pc = xor i64 %i.oy, %i.pb
  %i.pd = mul i64 %i.pc, 1099511628211
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 4
  %i.pf = load i8, ptr %i.oz, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.pg = zext i8 %i.pf to i64
  %i.ph = xor i64 %i.pd, %i.pg
  %i.pi = mul i64 %i.ph, 1099511628211
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 5
  %i.pk = load i8, ptr %i.pe, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.pl = zext i8 %i.pk to i64
  %i.pm = xor i64 %i.pi, %i.pl
  %i.pn = mul i64 %i.pm, 1099511628211
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 6
  %i.pp = load i8, ptr %i.pj, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.pq = zext i8 %i.pp to i64
  %i.pr = xor i64 %i.pn, %i.pq
  %i.ps = mul i64 %i.pr, 1099511628211
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 7
  %i.pu = load i8, ptr %i.po, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.pv = zext i8 %i.pu to i64
  %i.pw = xor i64 %i.ps, %i.pv
  %i.px = mul i64 %i.pw, 1099511628211
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.pz = load i8, ptr %i.pt, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.qa = zext i8 %i.pz to i64
  %i.qb = xor i64 %i.px, %i.qa
  %i.qc = mul i64 %i.qb, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i59.i.i.i.i.i.i

.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa:       ; preds = %.lr.ph.i.i59.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit70.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader:          ; preds = %.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i59.i.i.i.i.i.i.preheader
  %.sroa.0.0.i1.i.i60.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i54.i.i.i.i.i.i, %.lr.ph.i.i59.i.i.i.i.i.i.preheader ], [ %i.py, %.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i59.i.i.i.i.i.i.preheader ], [ %i.qc, %.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod367 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod367)
  br label %.lr.ph.i.i59.i.i.i.i.i.i.epil

.lr.ph.i.i59.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i59.i.i.i.i.i.i.epil, %.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i60.i.i.i.i.i.i.epil = phi ptr [ %i.qe, %.lr.ph.i.i59.i.i.i.i.i.i.epil ], [ %.sroa.0.0.i1.i.i60.i.i.i.i.i.i.epil.init, %.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.qd = phi i64 [ %i.qi, %.lr.ph.i.i59.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i59.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i59.i.i.i.i.i.i.epil.preheader ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i.epil, i64 1
  %i.qf = load i8, ptr %.sroa.0.0.i1.i.i60.i.i.i.i.i.i.epil, align 1, !alias.scope !2891, !noalias !2898, !noundef !29
  %i.qg = zext i8 %i.qf to i64
  %i.qh = xor i64 %i.qd, %i.qg
  %i.qi = mul i64 %i.qh, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit70.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.i.i.epil, !llvm.loop !2902

.loopexit70.loopexit.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i59.i.i.i.i.i.i.epil, %.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa
  %.lcssa340 = phi i64 [ %i.qc, %.loopexit70.loopexit.i.i.i.i.i.i.unr-lcssa ], [ %i.qi, %.lr.ph.i.i59.i.i.i.i.i.i.epil ]
  %i.qj = xor i64 %.lcssa340, 255
  %i.qk = mul i64 %i.qj, 1099511628211
  br label %.loopexit70.i.i.i.i.i.i

.loopexit70.i.i.i.i.i.i:                          ; preds = %.loopexit70.loopexit.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %.promoted.i.i.i61.i.i.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc.i.i.i.i.i.i ], [ %i.qk, %.loopexit70.loopexit.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2714
  store i64 %.promoted.i.i.i61.i.i.i.i.i.i, ptr %i.aq, align 8, !noalias !2906
  %.val.i63.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2903, !noalias !2908, !noundef !29
  %.val3.i64.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2903, !noalias !2908, !noundef !29
  %i.ql = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i63.i.i.i.i.i.i, i64 %.val3.i64.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq), !noalias !2909 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  %i.qm = lshr i64 %i.ql, 57
  %i.qn = trunc nuw nsw i64 %i.qm to i8           ; 3 uses
  %i.qo = load i64, ptr %i.fx, align 8, !alias.scope !2916, !noalias !2917, !noundef !29 ; 3 uses
  %i.qp = load ptr, ptr %i.as, align 8, !alias.scope !2916, !noalias !2917, !nonnull !29, !noundef !29 ; 3 uses
  %i.qq = insertelement <16 x i8> poison, i8 %i.qn, i64 0
  %i.qr = shufflevector <16 x i8> %i.qq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.loopexit70.i.i.i.i.i.i
  %.sroa.9.0.i.i.i65.i.i.i.i.i.i = phi i64 [ 0, %.loopexit70.i.i.i.i.i.i ], [ %i.ri, %bb.bn ]
  %.pn.i.i66.i.i.i.i.i.i = phi i64 [ %i.ql, %.loopexit70.i.i.i.i.i.i ], [ %i.rj, %bb.bn ]
  %.sroa.01.0.i.i.i67.i.i.i.i.i.i = and i64 %.pn.i.i66.i.i.i.i.i.i, %i.qo ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.sroa.01.0.i.i.i67.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i68.i.i.i.i.i.i = load <16 x i8>, ptr %i.qs, align 1, !noalias !2920 ; 2 uses
  %i.qt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i68.i.i.i.i.i.i, %i.qr
  %i.qu = bitcast <16 x i1> %i.qt to i16          ; 2 uses
  %.not.i.not30.i.i69.i.i.i.i.i.i = icmp eq i16 %i.qu, 0
  br i1 %.not.i.not30.i.i69.i.i.i.i.i.i, label %._crit_edge.i.i74.i.i.i.i.i.i, label %.lr.ph.i.i70.i.i.i.i.i.i

.lr.ph.i.i70.i.i.i.i.i.i:                         ; preds = %bb.bl, %bb.bm
  %.sroa.06.0.i31.i.i71.i.i.i.i.i.i = phi i16 [ %i.rh, %bb.bm ], [ %i.qu, %bb.bl ] ; 3 uses
  %i.qv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i71.i.i.i.i.i.i, i1 true)
  %i.qw = zext nneg i16 %i.qv to i64
  %i.qx = add i64 %.sroa.01.0.i.i.i67.i.i.i.i.i.i, %i.qw
  %i.qy = and i64 %i.qx, %i.qo
  %i.qz = sub nsw i64 0, %i.qy
  %i.ra = getelementptr inbounds [32 x i8], ptr %i.qp, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 -32
  %.val2.i.i.i72.i.i.i.i.i.i = load i64, ptr %i.rb, align 8, !noalias !2923, !noundef !29
  %i.rc = icmp eq i64 %.val2.i.i.i72.i.i.i.i.i.i, %.promoted.i.i.i61.i.i.i.i.i.i
  br i1 %i.rc, label %bb.bs, label %bb.bm, !prof !36

._crit_edge.i.i74.i.i.i.i.i.i:                    ; preds = %bb.bm, %bb.bl
  %i.rd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i68.i.i.i.i.i.i, splat (i8 -1)
  %i.re = bitcast <16 x i1> %i.rd to i16
  %i.rf = icmp eq i16 %i.re, 0
  br i1 %i.rf, label %bb.bn, label %bb.bo, !prof !340

bb.bm:                                            ; preds = %.lr.ph.i.i70.i.i.i.i.i.i
  %i.rg = add i16 %.sroa.06.0.i31.i.i71.i.i.i.i.i.i, -1
  %i.rh = and i16 %i.rg, %.sroa.06.0.i31.i.i71.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i73.i.i.i.i.i.i = icmp eq i16 %i.rh, 0
  br i1 %.not.i.not.i.i73.i.i.i.i.i.i, label %._crit_edge.i.i74.i.i.i.i.i.i, label %.lr.ph.i.i70.i.i.i.i.i.i

bb.bn:                                            ; preds = %._crit_edge.i.i74.i.i.i.i.i.i
  %i.ri = add i64 %.sroa.9.0.i.i.i65.i.i.i.i.i.i, 16 ; 2 uses
  %i.rj = add i64 %.sroa.01.0.i.i.i67.i.i.i.i.i.i, %i.ri
  br label %bb.bl

bb.bo:                                            ; preds = %._crit_edge.i.i74.i.i.i.i.i.i
  %i.rk = load i64, ptr %i.fy, align 8, !alias.scope !2926, !noalias !2929, !noundef !29
  %i.rl = icmp eq i64 %i.rk, 0
  br i1 %i.rl, label %bb.bp, label %bb.bq, !prof !340

bb.bp:                                            ; preds = %bb.bo
  %i.rm = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, i1 noundef zeroext true) #74
          to label %.noexc75.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !2728 ; 0 uses

.noexc75.i.i.i.i.i.i:                             ; preds = %bb.bp
  %.val.i.i77.pre.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !2931, !noalias !2934
  %.val3.i.i.pre.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !2931, !noalias !2934
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc75.i.i.i.i.i.i, %bb.bo
  %.val3.i.i.i.i.i.i.i.i = phi i64 [ %.val3.i.i.pre.i.i.i.i.i.i, %.noexc75.i.i.i.i.i.i ], [ %i.qo, %bb.bo ] ; 4 uses
  %.val.i.i77.i.i.i.i.i.i = phi ptr [ %.val.i.i77.pre.i.i.i.i.i.i, %.noexc75.i.i.i.i.i.i ], [ %i.qp, %bb.bo ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2714
  call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  %.sroa.0.07.i.i.i.i.i.i.i.i.i = and i64 %.val3.i.i.i.i.i.i.i.i, %i.ql ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.val.i.i77.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rn, align 1, !noalias !2938
  %i.ro = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.rp = bitcast <16 x i1> %i.ro to i16          ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.rp, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !prof !2941

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bq
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i.i.i.i, %bb.bq ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.rp, %bb.bq ], [ %i.sg, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.rq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.rr = zext nneg i16 %i.rq to i64
  %i.rs = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i, %i.rr
  %i.rt = and i64 %i.rs, %.val3.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.val.i.i77.i.i.i.i.i.i, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !noalias !2942, !noundef !29 ; 2 uses
  %i.rw = icmp sgt i8 %i.rv, -1
  br i1 %i.rw, label %bb.br, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, !prof !340

bb.br:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i77.i.i.i.i.i.i, align 16, !noalias !2942
  %i.rx = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ry = bitcast <16 x i1> %i.rx to i16          ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ry, 0
  %i.rz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ry, i1 true)
  %i.sa = zext nneg i16 %i.rz to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i79.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i77.i.i.i.i.i.i, i64 %i.sa
  %.pre.i.i80.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i79.i.i.i.i.i.i, align 1, !noalias !2942
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bq, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i.i.i, %bb.bq ]
  %i.sb = phi i64 [ %i.sc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bq ]
  %i.sc = add i64 %i.sb, 16                       ; 2 uses
  %i.sd = add i64 %i.sc, %.sroa.0.010.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = and i64 %i.sd, %.val3.i.i.i.i.i.i.i.i ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.val.i.i77.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.se, align 1, !noalias !2938
  %i.sf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.sg = bitcast <16 x i1> %i.sf to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.sg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.sh = phi i8 [ %.pre.i.i80.i.i.i.i.i.i, %bb.br ], [ %i.rv, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sa, %bb.br ], [ %i.rt, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.val.i.i77.i.i.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i
  %i.sj = add i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i, -16
  %i.sk = and i64 %i.sj, %.val3.i.i.i.i.i.i.i.i
  store i8 %i.qn, ptr %i.si, align 1, !noalias !2942
  %i.sl = getelementptr i8, ptr %.val.i.i77.i.i.i.i.i.i, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 16
  store i8 %i.qn, ptr %i.sm, align 1, !noalias !2942
  %i.sn = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i
  %i.so = getelementptr inbounds [32 x i8], ptr %.val.i.i77.i.i.i.i.i.i, i64 %i.sn ; 5 uses
  %i.sp = and i8 %i.sh, 1
  %i.sq = zext nneg i8 %i.sp to i64
  %i.sr = getelementptr inbounds i8, ptr %i.so, i64 -32
  store i64 %.promoted.i.i.i61.i.i.i.i.i.i, ptr %i.sr, align 8, !noalias !2944
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.so, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2944
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.so, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2944
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.so, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2944
  %i.ss = load <2 x i64>, ptr %i.fy, align 8, !alias.scope !2931, !noalias !2934
  %i.st = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.sq, i64 0
  %i.su = sub <2 x i64> %i.ss, %i.st
  store <2 x i64> %i.su, ptr %i.fy, align 8, !alias.scope !2931, !noalias !2934
  br label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i.i70.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2714
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi ptr [ %i.so, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.ra, %bb.bs ] ; 3 uses
  %.sroa.0.0.i78.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.sv = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.sw = load i64, ptr %i.sv, align 8, !alias.scope !2945, !noalias !2728, !noundef !29 ; 3 uses
  %i.sx = load i64, ptr %.sroa.0.0.i78.i.i.i.i.i.i, align 8, !range !306, !alias.scope !2945, !noalias !2728, !noundef !29
  %i.sy = icmp eq i64 %i.sw, %i.sx
  br i1 %i.sy, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i78.i.i.i.i.i.i) #74
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !2728
end_hunk_0
begin_hunk_1_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.amr, label %bb.hv, label %.split11.us.i.invoke.i

bb.hv:                                            ; preds = %bb.hu
  %i.ams = getelementptr inbounds nuw [16 x i8], ptr %i.amb, i64 %.sroa.021.0232.i ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  br label %bb.jj

bb.hw:                                            ; preds = %bb.ht
  %i.amu = getelementptr inbounds nuw [24 x i8], ptr %i.amb, i64 %.sroa.021.0232.i ; 2 uses
  %i.amv = getelementptr i8, ptr %i.amu, i64 8
  %i.amw = getelementptr i8, ptr %i.amu, i64 16
  br label %bb.jj

._crit_edge.i:                                    ; preds = %bb.ji, %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !3347
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !3347
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 6 uses
  store i64 0, ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !3308, !noalias !3347
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 6 uses
  store i64 0, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !3308, !noalias !3347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3315
  call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  call void @llvm.experimental.noalias.scope.decl(metadata !3351)
  call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  call void @llvm.experimental.noalias.scope.decl(metadata !3357)
  call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  %i.amy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.amz = load i64, ptr %i.amy, align 8, !alias.scope !3363, !noalias !3315, !noundef !29 ; 3 uses
  %i.ana = icmp eq i64 %i.amz, 0
  br i1 %i.ana, label %bb.kb, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  %i.anb = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.anc = load i64, ptr %i.anb, align 8, !alias.scope !3367, !noalias !3315, !noundef !29 ; 2 uses
  %i.and = icmp eq i64 %i.anc, 0
  br i1 %i.and, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ane = load ptr, ptr %i.aa, align 8, !alias.scope !3367, !noalias !3315, !nonnull !29, !noundef !29 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i40 = load <16 x i8>, ptr %i.ane, align 16, !noalias !3368
  %i.anf = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i40, splat (i8 -1)
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %i.anh = bitcast <16 x i1> %i.anf to i16
  br label %bb.hz

bb.hz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %bb.hy
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.ane, %bb.hy ], [ %.sroa.06.1.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.ang, %bb.hy ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.anh, %bb.hy ], [ %i.anq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.anc, %bb.hy ], [ %i.ant, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i43, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i43:                         ; preds = %bb.hz, %.lr.ph.i.i.i.i.i.i.i.i43
  %i.ani = phi ptr [ %i.anm, %.lr.ph.i.i.i.i.i.i.i.i43 ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.hz ] ; 2 uses
  %i.anj = phi ptr [ %i.anl, %.lr.ph.i.i.i.i.i.i.i.i43 ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.hz ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ani, align 16, !noalias !3371
  %i.ank = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.anl = getelementptr inbounds i8, ptr %i.anj, i64 -512 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ani, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ank to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i44 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i44, label %.lr.ph.i.i.i.i.i.i.i.i43, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i43, %bb.hz
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.hz ], [ %i.anm, %.lr.ph.i.i.i.i.i.i.i.i43 ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.hz ], [ %i.anl, %.lr.ph.i.i.i.i.i.i.i.i43 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.hz ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i43 ] ; 3 uses
  %i.ann = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ano = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.anp = zext nneg i16 %i.ano to i64
  %i.anq = and i16 %i.ann, %.lcssa.i.i.i.i.i.i.i.i
  %i.anr = sub nsw i64 0, %i.anp
  %i.ans = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.anr ; 2 uses
  %i.ant = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.anu = getelementptr i8, ptr %i.ans, i64 -24
  %.val.i.i.i.i.i.i.i41 = load i64, ptr %i.anu, align 8, !noalias !3374 ; 2 uses
  %i.anv = icmp eq i64 %.val.i.i.i.i.i.i.i41, 0
  br i1 %i.anv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.anw = getelementptr i8, ptr %i.ans, i64 -16
  %.val5.i.i.i.i.i.i.i42 = load ptr, ptr %i.anw, align 8, !noalias !3374, !nonnull !29, !noundef !29
  %i.anx = mul nuw i64 %.val.i.i.i.i.i.i.i41, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i42, i64 noundef %i.anx, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !3374
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.ia, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.any = icmp eq i64 %i.ant, 0
  br i1 %i.any, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.hz

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %bb.hx
  %i.anz = shl i64 %i.amz, 5                      ; 2 uses
  %i.aoa = add i64 %i.anz, 32                     ; 2 uses
  %i.aob = add i64 %i.amz, 17
  %i.aoc = add i64 %i.aob, %i.aoa                 ; 4 uses
  %i.aod = icmp uge i64 %i.aoc, %i.aoa
  %i.aoe = icmp ult i64 %i.aoc, 9223372036854775793
  call void @llvm.assume(i1 %i.aod)
  call void @llvm.assume(i1 %i.aoe)
  %i.aof = icmp eq i64 %i.aoc, 0
  br i1 %i.aof, label %bb.kb, label %bb.ib

bb.ib:                                            ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.aog = load ptr, ptr %i.aa, align 8, !alias.scope !3363, !noalias !3315, !nonnull !29, !noundef !29
  %i.aoh = sub nuw nsw i64 -32, %i.anz
  %i.aoi = getelementptr inbounds i8, ptr %i.aog, i64 %i.aoh
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aoi, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !3375
  br label %bb.kb

bb.ic:                                            ; preds = %bb.ji, %.lr.ph236.i
  %.sroa.0.1235.i = phi i32 [ %.sroa.0.0.lcssa.i, %.lr.ph236.i ], [ %.sroa.0.2.i, %bb.ji ] ; 4 uses
  %.sroa.024.0234.i = phi i64 [ 0, %.lr.ph236.i ], [ %i.aoj, %bb.ji ] ; 7 uses
  %i.aoj = add nuw nsw i64 %.sroa.024.0234.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3376)
  call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  %i.aok = icmp ult i64 %.sroa.024.0234.i, %i.amg ; 5 uses
  br i1 %i.amf, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  br i1 %i.aok, label %bb.ig, label %.split11.us.i.invoke.i

bb.ie:                                            ; preds = %bb.ic
  br i1 %i.aok, label %bb.if, label %.split11.us.i.invoke.i

bb.if:                                            ; preds = %bb.ie
  %i.aol = getelementptr inbounds nuw [16 x i8], ptr %i.ami, i64 %.sroa.024.0234.i ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  br label %bb.ih

bb.ig:                                            ; preds = %bb.id
  %i.aon = getelementptr inbounds nuw [24 x i8], ptr %i.ami, i64 %.sroa.024.0234.i ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.aon, i64 8
  %i.aop = getelementptr i8, ptr %i.aon, i64 16
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.sroa.5.1.i.in.i35.i = phi ptr [ %i.aop, %bb.ig ], [ %i.aom, %bb.if ]
  %.sroa.0.1.i.in.i36.i = phi ptr [ %i.aoo, %bb.ig ], [ %i.aol, %bb.if ]
  %.sroa.0.1.i.i37.i = load ptr, ptr %.sroa.0.1.i.in.i36.i, align 8, !noalias !3378, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i38.i = load i64, ptr %.sroa.5.1.i.in.i35.i, align 8, !noalias !3378, !noundef !29 ; 4 uses
  %i.aoq = icmp samesign eq i64 %.sroa.5.1.i.i38.i, 0
  br i1 %i.aoq, label %.loopexit192.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ih
  %xtraiter386 = and i64 %.sroa.5.1.i.i38.i, 7    ; 3 uses
  %i.aor = icmp ult i64 %.sroa.5.1.i.i38.i, 8
  br i1 %i.aor, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter393 = and i64 %.sroa.5.1.i.i38.i, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i = phi ptr [ %.sroa.0.1.i.i37.i, %.lr.ph.i.i.i.preheader.new ], [ %i.aqc, %.lr.ph.i.i.i ] ; 9 uses
  %i.aos = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.aqg, %.lr.ph.i.i.i ]
  %niter394 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter394.next.7, %.lr.ph.i.i.i ]
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 1
  %i.aou = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.aov = zext i8 %i.aou to i64
  %i.aow = xor i64 %i.aos, %i.aov
  %i.aox = mul i64 %i.aow, 1099511628211
  %i.aoy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.aoz = load i8, ptr %i.aot, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.apa = zext i8 %i.aoz to i64
  %i.apb = xor i64 %i.aox, %i.apa
  %i.apc = mul i64 %i.apb, 1099511628211
  %i.apd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.ape = load i8, ptr %i.aoy, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.apf = zext i8 %i.ape to i64
  %i.apg = xor i64 %i.apc, %i.apf
  %i.aph = mul i64 %i.apg, 1099511628211
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.apj = load i8, ptr %i.apd, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.apk = zext i8 %i.apj to i64
  %i.apl = xor i64 %i.aph, %i.apk
  %i.apm = mul i64 %i.apl, 1099511628211
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.apo = load i8, ptr %i.api, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.app = zext i8 %i.apo to i64
  %i.apq = xor i64 %i.apm, %i.app
  %i.apr = mul i64 %i.apq, 1099511628211
  %i.aps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.apt = load i8, ptr %i.apn, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.apu = zext i8 %i.apt to i64
  %i.apv = xor i64 %i.apr, %i.apu
  %i.apw = mul i64 %i.apv, 1099511628211
  %i.apx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.apy = load i8, ptr %i.aps, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.apz = zext i8 %i.apy to i64
  %i.aqa = xor i64 %i.apw, %i.apz
  %i.aqb = mul i64 %i.aqa, 1099511628211
  %i.aqc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.aqd = load i8, ptr %i.apx, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = xor i64 %i.aqb, %i.aqe
  %i.aqg = mul i64 %i.aqf, 1099511628211          ; 3 uses
  %niter394.next.7 = add nuw nsw i64 %niter394, 8 ; 2 uses
  %niter394.ncmp.7 = icmp eq i64 %niter394.next.7, %unroll_iter393
  br i1 %niter394.ncmp.7, label %.loopexit192.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i

.loopexit192.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i.i
  %lcmp.mod390.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod390.not, label %.loopexit192.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit192.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i37.i, %.lr.ph.i.i.i.preheader ], [ %i.aqc, %.loopexit192.loopexit.i.unr-lcssa ]
  %.epil.init389 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.aqg, %.loopexit192.loopexit.i.unr-lcssa ]
  %lcmp.mod392 = icmp ne i64 %xtraiter386, 0
  call void @llvm.assume(i1 %lcmp.mod392)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.epil = phi ptr [ %i.aqi, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.aqh = phi i64 [ %i.aqm, %.lr.ph.i.i.i.epil ], [ %.epil.init389, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter387 = phi i64 [ %epil.iter387.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.epil, i64 1
  %i.aqj = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !3379, !noalias !3386, !noundef !29
  %i.aqk = zext i8 %i.aqj to i64
  %i.aql = xor i64 %i.aqh, %i.aqk
  %i.aqm = mul i64 %i.aql, 1099511628211          ; 2 uses
  %epil.iter387.next = add i64 %epil.iter387, 1   ; 2 uses
  %epil.iter387.cmp.not = icmp eq i64 %epil.iter387.next, %xtraiter386
  br i1 %epil.iter387.cmp.not, label %.loopexit192.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !3390

.loopexit192.loopexit.i:                          ; preds = %.lr.ph.i.i.i.epil, %.loopexit192.loopexit.i.unr-lcssa
  %.lcssa286 = phi i64 [ %i.aqg, %.loopexit192.loopexit.i.unr-lcssa ], [ %i.aqm, %.lr.ph.i.i.i.epil ]
  %i.aqn = xor i64 %.lcssa286, 255
  %i.aqo = mul i64 %i.aqn, 1099511628211
  br label %.loopexit192.i

.loopexit192.i:                                   ; preds = %.loopexit192.loopexit.i, %bb.ih
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %bb.ih ], [ %i.aqo, %.loopexit192.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3315
  store i64 %.promoted.i.i.i.i, ptr %i.x, align 8, !noalias !3394
  %.val.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !3391, !noalias !3396, !noundef !29
  %.val3.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3391, !noalias !3396, !noundef !29
  %i.aqp = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i.i, i64 %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x), !noalias !3394 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  call void @llvm.experimental.noalias.scope.decl(metadata !3400)
  %i.aqq = lshr i64 %i.aqp, 57
  %i.aqr = trunc nuw nsw i64 %i.aqq to i8         ; 3 uses
  %i.aqs = load i64, ptr %i.amj, align 8, !alias.scope !3403, !noalias !3404, !noundef !29 ; 3 uses
  %i.aqt = load ptr, ptr %i.aa, align 8, !alias.scope !3403, !noalias !3404, !nonnull !29, !noundef !29 ; 3 uses
  %i.aqu = insertelement <16 x i8> poison, i8 %i.aqr, i64 0
  %i.aqv = shufflevector <16 x i8> %i.aqu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ik, %.loopexit192.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.loopexit192.i ], [ %i.arm, %bb.ik ]
  %.pn.i.i.i35 = phi i64 [ %i.aqp, %.loopexit192.i ], [ %i.arn, %bb.ik ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i35, %i.aqs ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.aqw, align 1, !noalias !3407 ; 2 uses
  %i.aqx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.aqv
  %i.aqy = bitcast <16 x i1> %i.aqx to i16        ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.aqy, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %bb.ii, %bb.ij
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.arl, %bb.ij ], [ %i.aqy, %bb.ii ] ; 3 uses
  %i.aqz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ara = zext nneg i16 %i.aqz to i64
  %i.arb = add i64 %.sroa.01.0.i.i.i.i, %i.ara
  %i.arc = and i64 %i.arb, %i.aqs
  %i.ard = sub nsw i64 0, %i.arc
  %i.are = getelementptr inbounds [32 x i8], ptr %i.aqt, i64 %i.ard ; 2 uses
  %i.arf = getelementptr inbounds i8, ptr %i.are, i64 -32
  %.val2.i.i.i.i = load i64, ptr %i.arf, align 8, !noalias !3410, !noundef !29
  %i.arg = icmp eq i64 %.val2.i.i.i.i, %.promoted.i.i.i.i
  br i1 %i.arg, label %bb.ip, label %bb.ij, !prof !36

._crit_edge.i.i.i:                                ; preds = %bb.ij, %bb.ii
  %i.arh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ari = bitcast <16 x i1> %i.arh to i16
  %i.arj = icmp eq i16 %i.ari, 0
  br i1 %i.arj, label %bb.ik, label %bb.il, !prof !340

bb.ij:                                            ; preds = %.lr.ph.i.i41.i
  %i.ark = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.arl = and i16 %i.ark, %.sroa.06.0.i31.i.i.i  ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.arl, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i41.i

bb.ik:                                            ; preds = %._crit_edge.i.i.i
  %i.arm = add i64 %.sroa.9.0.i.i.i.i, 16         ; 2 uses
  %i.arn = add i64 %.sroa.01.0.i.i.i.i, %i.arm
  br label %bb.ii

bb.il:                                            ; preds = %._crit_edge.i.i.i
  %i.aro = load i64, ptr %i.amk, align 8, !alias.scope !3413, !noalias !3416, !noundef !29
  %i.arp = icmp eq i64 %i.aro, 0
  br i1 %i.arp, label %bb.im, label %bb.in, !prof !340

bb.im:                                            ; preds = %bb.il
  %i.arq = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativemEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx.i, i1 noundef zeroext true) #74
          to label %.noexc42.i49 unwind label %.loopexit193.i, !noalias !3315 ; 0 uses

.noexc42.i49:                                     ; preds = %bb.im
  %.val.i.i.pre.i = load ptr, ptr %i.aa, align 8, !alias.scope !3418, !noalias !3421
  %.val3.i.i.pre.i = load i64, ptr %i.amj, align 8, !alias.scope !3418, !noalias !3421
  br label %bb.in

bb.in:                                            ; preds = %.noexc42.i49, %bb.il
  %.val3.i.i.i = phi i64 [ %.val3.i.i.pre.i, %.noexc42.i49 ], [ %i.aqs, %bb.il ] ; 4 uses
  %.val.i.i.i = phi ptr [ %.val.i.i.pre.i, %.noexc42.i49 ], [ %i.aqt, %bb.il ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3315
  call void @llvm.experimental.noalias.scope.decl(metadata !3418)
  %.sroa.0.07.i.i.i.i = and i64 %.val3.i.i.i, %i.aqp ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i = load <16 x i8>, ptr %i.arr, align 1, !noalias !3425
  %i.ars = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i, zeroinitializer
  %i.art = bitcast <16 x i1> %i.ars to i16        ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i16 %i.art, 0
  br i1 %.not.i9.i.i.i.i, label %.lr.ph.i.i.i.i46, label %._crit_edge.i.i.i.i36, !prof !2941

._crit_edge.i.i.i.i36:                            ; preds = %.lr.ph.i.i.i.i46, %bb.in
  %.sroa.0.0.lcssa.i.i.i.i37 = phi i64 [ %.sroa.0.07.i.i.i.i, %bb.in ], [ %.sroa.0.0.i.i.i.i47, %.lr.ph.i.i.i.i46 ]
  %.lcssa.i.i.i.i = phi i16 [ %i.art, %bb.in ], [ %i.ask, %.lr.ph.i.i.i.i46 ]
  %i.aru = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.arv = zext nneg i16 %i.aru to i64
  %i.arw = add i64 %.sroa.0.0.lcssa.i.i.i.i37, %i.arv
  %i.arx = and i64 %i.arw, %.val3.i.i.i           ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.arx
  %i.arz = load i8, ptr %i.ary, align 1, !noalias !3428, !noundef !29 ; 2 uses
  %i.asa = icmp sgt i8 %i.arz, -1
  br i1 %i.asa, label %bb.io, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i, !prof !340

bb.io:                                            ; preds = %._crit_edge.i.i.i.i36
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !3428
  %i.asb = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.asc = bitcast <16 x i1> %i.asb to i16        ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.asc, 0
  %i.asd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.asc, i1 true)
  %i.ase = zext nneg i16 %i.asd to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i)
  %.phi.trans.insert.i.i43.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ase
  %.pre.i.i44.i = load i8, ptr %.phi.trans.insert.i.i43.i, align 1, !noalias !3428
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i

.lr.ph.i.i.i.i46:                                 ; preds = %bb.in, %.lr.ph.i.i.i.i46
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i47, %.lr.ph.i.i.i.i46 ], [ %.sroa.0.07.i.i.i.i, %bb.in ]
  %i.asf = phi i64 [ %i.asg, %.lr.ph.i.i.i.i46 ], [ 0, %bb.in ]
  %i.asg = add i64 %i.asf, 16                     ; 2 uses
  %i.ash = add i64 %i.asg, %.sroa.0.010.i.i.i.i
  %.sroa.0.0.i.i.i.i47 = and i64 %i.ash, %.val3.i.i.i ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i47
  %.sroa.0.0.copyload.i6.i.i.i.i = load <16 x i8>, ptr %i.asi, align 1, !noalias !3425
  %i.asj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i, zeroinitializer
  %i.ask = bitcast <16 x i1> %i.asj to i16        ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq i16 %i.ask, 0
  br i1 %.not.i.i.i.i.i48, label %.lr.ph.i.i.i.i46, label %._crit_edge.i.i.i.i36, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.io, %._crit_edge.i.i.i.i36
  %i.asl = phi i8 [ %.pre.i.i44.i, %bb.io ], [ %i.arz, %._crit_edge.i.i.i.i36 ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.ase, %bb.io ], [ %i.arx, %._crit_edge.i.i.i.i36 ] ; 3 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.asn = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.aso = and i64 %i.asn, %.val3.i.i.i
  store i8 %i.aqr, ptr %i.asm, align 1, !noalias !3428
  %i.asp = getelementptr i8, ptr %.val.i.i.i, i64 %i.aso
  %i.asq = getelementptr i8, ptr %i.asp, i64 16
  store i8 %i.aqr, ptr %i.asq, align 1, !noalias !3428
  %i.asr = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.ass = getelementptr inbounds [32 x i8], ptr %.val.i.i.i, i64 %i.asr ; 5 uses
  %i.ast = and i8 %i.asl, 1
  %i.asu = zext nneg i8 %i.ast to i64
  %i.asv = getelementptr inbounds i8, ptr %i.ass, i64 -32
  store i64 %.promoted.i.i.i.i, ptr %i.asv, align 8, !noalias !3429
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ass, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !3429
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ass, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !3429
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ass, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3429
  %i.asw = load <2 x i64>, ptr %i.amk, align 8, !alias.scope !3418, !noalias !3421
  %i.asx = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.asu, i64 0
  %i.asy = sub <2 x i64> %i.asw, %i.asx
  store <2 x i64> %i.asy, ptr %i.amk, align 8, !alias.scope !3418, !noalias !3421
  br label %bb.iq

bb.ip:                                            ; preds = %.lr.ph.i.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3315
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i
  %.pn.i.i = phi ptr [ %i.ass, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.are, %bb.ip ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.asz = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16 ; 2 uses
  %i.ata = load ptr, ptr %i.asz, align 8, !noalias !3315, !nonnull !29, !noundef !29 ; 3 uses
  %i.atb = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.atc = load i64, ptr %i.atb, align 8, !noalias !3315, !noundef !29 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.atc, 24
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ata, i64 %.idx.i
  %i.ate = icmp eq i64 %i.atc, 0
  br i1 %i.ate, label %.loopexit.i39, label %.lr.ph.i.i

end_hunk_1
begin_hunk_2_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.aok, label %bb.iv, label %.split11.us.i.invoke.i

bb.iu:                                            ; preds = %bb.is
  br i1 %i.aok, label %bb.iw, label %.split11.us.i.invoke.i

bb.iv:                                            ; preds = %bb.it
  %i.atp = load i64, ptr %i.atn, align 8, !noalias !3430, !noundef !29 ; 2 uses
  %i.atq = icmp ult i64 %i.atp, %i.amg
  br i1 %i.atq, label %bb.iy, label %.split11.us.i.invoke.i

bb.iw:                                            ; preds = %bb.iu
  %i.atr = load i64, ptr %i.atn, align 8, !noalias !3430, !noundef !29 ; 2 uses
  %i.ats = icmp ult i64 %i.atr, %i.amg
  br i1 %i.ats, label %bb.ix, label %.split11.us.i.invoke.i

bb.ix:                                            ; preds = %bb.iw
  %i.att = getelementptr inbounds nuw [16 x i8], ptr %i.ami, i64 %i.atr ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i.i

bb.iy:                                            ; preds = %bb.iv
  %i.atv = getelementptr inbounds nuw [24 x i8], ptr %i.ami, i64 %i.atp ; 2 uses
  %i.atw = getelementptr i8, ptr %i.atv, i64 8
  %i.atx = getelementptr i8, ptr %i.atv, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i.i: ; preds = %bb.iy, %bb.ix
  %.sroa.5.1.i.i8.in.i.i.i = phi ptr [ %i.atj, %bb.iy ], [ %i.atg, %bb.ix ]
  %.sroa.0.1.i.i6.in.i.i.i = phi ptr [ %i.ati, %bb.iy ], [ %i.atf, %bb.ix ]
  %.sroa.5.1.i.in.i1.i.i.i = phi ptr [ %i.atx, %bb.iy ], [ %i.atu, %bb.ix ]
  %.sroa.0.1.i.in.i2.i.i.i = phi ptr [ %i.atw, %bb.iy ], [ %i.att, %bb.ix ]
  %.sroa.5.1.i.i8.i.i.i = load i64, ptr %.sroa.5.1.i.i8.in.i.i.i, align 8, !noalias !3436, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i4.i.i.i = load i64, ptr %.sroa.5.1.i.in.i1.i.i.i, align 8, !noalias !3442, !noundef !29
  %i.aty = icmp eq i64 %.sroa.5.1.i.i8.i.i.i, %.sroa.5.1.i.i4.i.i.i
  br i1 %i.aty, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i.i

bb.iz:                                            ; preds = %bb.ir
  br i1 %i.aok, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i, label %.split11.us.i.invoke.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i: ; preds = %bb.iz
  %.sroa.0.1.i.i8.i.i.i = load ptr, ptr %.237.i, align 8, !noalias !3448, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i9.i.i.i = load i64, ptr %..i38, align 8, !noalias !3448, !noundef !29 ; 2 uses
  %i.atz = load i64, ptr %i.atn, align 8, !noalias !3430, !noundef !29 ; 3 uses
  %i.aua = icmp ult i64 %i.atz, %i.amo            ; 2 uses
  br i1 %i.amn, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i
  br i1 %i.aua, label %bb.jd, label %.split11.us.i.invoke.i

bb.jb:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i
  br i1 %i.aua, label %bb.jc, label %.split11.us.i.invoke.i

bb.jc:                                            ; preds = %bb.jb
  %i.aub = getelementptr inbounds nuw [16 x i8], ptr %i.amp, i64 %i.atz ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i.i

bb.jd:                                            ; preds = %bb.ja
  %i.aud = getelementptr inbounds nuw [24 x i8], ptr %i.amp, i64 %i.atz ; 2 uses
  %i.aue = getelementptr i8, ptr %i.aud, i64 8
  %i.auf = getelementptr i8, ptr %i.aud, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i.i: ; preds = %bb.jd, %bb.jc
  %.sroa.5.1.i.in.i11.i.i.i = phi ptr [ %i.auf, %bb.jd ], [ %i.auc, %bb.jc ]
  %.sroa.0.1.i.in.i12.i.i.i = phi ptr [ %i.aue, %bb.jd ], [ %i.aub, %bb.jc ]
  %.sroa.5.1.i.i14.i.i.i = load i64, ptr %.sroa.5.1.i.in.i11.i.i.i, align 8, !noalias !3454, !noundef !29
  %i.aug = icmp eq i64 %.sroa.5.1.i.i9.i.i.i, %.sroa.5.1.i.i14.i.i.i
  br i1 %i.aug, label %.split.i.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i.i

.split.i.i:                                       ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i.i
  %.sroa.0.1.i.i13.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i12.i.i.i, align 8, !noalias !3454, !nonnull !29, !noundef !29
  %bcmp.i17.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i13.i.i.i, i64 %.sroa.5.1.i.i9.i.i.i), !alias.scope !3460, !noalias !3430
  %i.auh = icmp eq i32 %bcmp.i17.i.i.i, 0
  br i1 %i.auh, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i.i
  %.sroa.0.1.i.i6.i.i.i = load ptr, ptr %.sroa.0.1.i.i6.in.i.i.i, align 8, !noalias !3436, !nonnull !29, !noundef !29
  %.sroa.0.1.i.i3.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i2.i.i.i, align 8, !noalias !3442, !nonnull !29, !noundef !29
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i6.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i3.i.i.i, i64 %.sroa.5.1.i.i8.i.i.i), !alias.scope !3464, !noalias !3430
  %i.aui = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aui, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i.i, %.split.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i.i
  %i.auj = icmp eq ptr %i.atl, %i.atd
  br i1 %i.auj, label %.loopexit.i39, label %bb.ir

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i.i, %.split.i.i
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.aul = load i32, ptr %i.auk, align 8, !noalias !3315, !noundef !29
  br label %bb.je

bb.je:                                            ; preds = %bb.jh, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit.i
  %.sroa.013.0.i = phi i32 [ %i.aul, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.0.1235.i, %bb.jh ]
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1235.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit.i ], [ %i.aup, %bb.jh ]
  %i.aum = load i64, ptr %i.alw, align 8, !alias.scope !3468, !noalias !3315, !noundef !29 ; 3 uses
  %i.aun = load i64, ptr %i.y, align 8, !range !306, !alias.scope !3468, !noalias !3315, !noundef !29
  %i.auo = icmp eq i64 %i.aum, %i.aun
  br i1 %i.auo, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #74
          to label %bb.ji unwind label %.loopexit193.i, !noalias !3315

.loopexit.i39:                                    ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i.i, %bb.iq
  %i.aup = add i32 %.sroa.0.1235.i, 1
  %i.auq = load i64, ptr %.sroa.0.0.i.i, align 8, !range !306, !alias.scope !3471, !noalias !3474, !noundef !29
  %i.aur = icmp eq i64 %i.atc, %i.auq
  br i1 %i.aur, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %.loopexit.i39
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBV_16IdentifyDistinctpE3new14RepresentativemEE8grow_oneBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i) #74
          to label %._crit_edge272.i unwind label %.loopexit193.i, !noalias !3315

._crit_edge272.i:                                 ; preds = %bb.jg
  %.pre273.i = load ptr, ptr %i.asz, align 8, !alias.scope !3471, !noalias !3474
  br label %bb.jh

bb.jh:                                            ; preds = %._crit_edge272.i, %.loopexit.i39
  %i.aus = phi ptr [ %.pre273.i, %._crit_edge272.i ], [ %i.ata, %.loopexit.i39 ]
  %i.aut = getelementptr inbounds nuw [24 x i8], ptr %i.aus, i64 %i.atc ; 3 uses
  store i64 1, ptr %i.aut, align 8, !noalias !3315
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  store i64 %.sroa.024.0234.i, ptr %.sroa.4130.0..sroa_idx.i, align 8, !noalias !3315
  %.sroa.5131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aut, i64 16
  store i32 %.sroa.0.1235.i, ptr %.sroa.5131.0..sroa_idx.i, align 8, !noalias !3315
  %i.auu = add i64 %i.atc, 1
  store i64 %i.auu, ptr %i.atb, align 8, !alias.scope !3471, !noalias !3474
  br label %bb.je

bb.ji:                                            ; preds = %bb.jf, %bb.je
  %i.auv = load ptr, ptr %i.alv, align 8, !alias.scope !3468, !noalias !3315, !nonnull !29, !noundef !29
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.auv, i64 %i.aum
  store i32 %.sroa.013.0.i, ptr %i.auw, align 4, !noalias !3315
  %i.aux = add i64 %i.aum, 1
  store i64 %i.aux, ptr %i.alw, align 8, !alias.scope !3468, !noalias !3315
  %exitcond266.not.i = icmp eq i64 %i.aoj, %.val14.pre
  br i1 %exitcond266.not.i, label %._crit_edge.i, label %bb.ic

bb.jj:                                            ; preds = %bb.hw, %bb.hv
  %.sroa.5.1.i.in.i.i = phi ptr [ %i.amw, %bb.hw ], [ %i.amt, %bb.hv ]
  %.sroa.0.1.i.in.i.i = phi ptr [ %i.amv, %bb.hw ], [ %i.ams, %bb.hv ]
  %.sroa.0.1.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i.i, align 8, !noalias !3476, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i.i = load i64, ptr %.sroa.5.1.i.in.i.i, align 8, !noalias !3476, !noundef !29 ; 4 uses
  %i.auy = icmp samesign eq i64 %.sroa.5.1.i.i.i, 0
  br i1 %i.auy, label %.loopexit201.i, label %.lr.ph.i.i53.i.preheader

.lr.ph.i.i53.i.preheader:                         ; preds = %bb.jj
  %xtraiter377 = and i64 %.sroa.5.1.i.i.i, 7      ; 3 uses
  %i.auz = icmp ult i64 %.sroa.5.1.i.i.i, 8
  br i1 %i.auz, label %.lr.ph.i.i53.i.epil.preheader, label %.lr.ph.i.i53.i.preheader.new

.lr.ph.i.i53.i.preheader.new:                     ; preds = %.lr.ph.i.i53.i.preheader
  %unroll_iter384 = and i64 %.sroa.5.1.i.i.i, -8
  br label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.preheader.new
  %.sroa.0.0.i1.i.i54.i = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i.i53.i.preheader.new ], [ %i.awk, %.lr.ph.i.i53.i ] ; 9 uses
  %i.ava = phi i64 [ -3750763034362895579, %.lr.ph.i.i53.i.preheader.new ], [ %i.awo, %.lr.ph.i.i53.i ]
  %niter385 = phi i64 [ 0, %.lr.ph.i.i53.i.preheader.new ], [ %niter385.next.7, %.lr.ph.i.i53.i ]
  %i.avb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 1
  %i.avc = load i8, ptr %.sroa.0.0.i1.i.i54.i, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.avd = zext i8 %i.avc to i64
  %i.ave = xor i64 %i.ava, %i.avd
  %i.avf = mul i64 %i.ave, 1099511628211
  %i.avg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 2
  %i.avh = load i8, ptr %i.avb, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.avi = zext i8 %i.avh to i64
  %i.avj = xor i64 %i.avf, %i.avi
  %i.avk = mul i64 %i.avj, 1099511628211
  %i.avl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 3
  %i.avm = load i8, ptr %i.avg, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.avn = zext i8 %i.avm to i64
  %i.avo = xor i64 %i.avk, %i.avn
  %i.avp = mul i64 %i.avo, 1099511628211
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 4
  %i.avr = load i8, ptr %i.avl, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.avs = zext i8 %i.avr to i64
  %i.avt = xor i64 %i.avp, %i.avs
  %i.avu = mul i64 %i.avt, 1099511628211
  %i.avv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 5
  %i.avw = load i8, ptr %i.avq, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.avx = zext i8 %i.avw to i64
  %i.avy = xor i64 %i.avu, %i.avx
  %i.avz = mul i64 %i.avy, 1099511628211
  %i.awa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 6
  %i.awb = load i8, ptr %i.avv, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.awc = zext i8 %i.awb to i64
  %i.awd = xor i64 %i.avz, %i.awc
  %i.awe = mul i64 %i.awd, 1099511628211
  %i.awf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 7
  %i.awg = load i8, ptr %i.awa, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.awh = zext i8 %i.awg to i64
  %i.awi = xor i64 %i.awe, %i.awh
  %i.awj = mul i64 %i.awi, 1099511628211
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 8 ; 2 uses
  %i.awl = load i8, ptr %i.awf, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.awm = zext i8 %i.awl to i64
  %i.awn = xor i64 %i.awj, %i.awm
  %i.awo = mul i64 %i.awn, 1099511628211          ; 3 uses
  %niter385.next.7 = add nuw nsw i64 %niter385, 8 ; 2 uses
  %niter385.ncmp.7 = icmp eq i64 %niter385.next.7, %unroll_iter384
  br i1 %niter385.ncmp.7, label %.loopexit201.loopexit.i.unr-lcssa, label %.lr.ph.i.i53.i

.loopexit201.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i53.i
  %lcmp.mod381.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod381.not, label %.loopexit201.loopexit.i, label %.lr.ph.i.i53.i.epil.preheader

.lr.ph.i.i53.i.epil.preheader:                    ; preds = %.loopexit201.loopexit.i.unr-lcssa, %.lr.ph.i.i53.i.preheader
  %.sroa.0.0.i1.i.i54.i.epil.init = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i.i53.i.preheader ], [ %i.awk, %.loopexit201.loopexit.i.unr-lcssa ]
  %.epil.init380 = phi i64 [ -3750763034362895579, %.lr.ph.i.i53.i.preheader ], [ %i.awo, %.loopexit201.loopexit.i.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter377, 0
  call void @llvm.assume(i1 %lcmp.mod383)
  br label %.lr.ph.i.i53.i.epil

.lr.ph.i.i53.i.epil:                              ; preds = %.lr.ph.i.i53.i.epil, %.lr.ph.i.i53.i.epil.preheader
  %.sroa.0.0.i1.i.i54.i.epil = phi ptr [ %i.awq, %.lr.ph.i.i53.i.epil ], [ %.sroa.0.0.i1.i.i54.i.epil.init, %.lr.ph.i.i53.i.epil.preheader ] ; 2 uses
  %i.awp = phi i64 [ %i.awu, %.lr.ph.i.i53.i.epil ], [ %.epil.init380, %.lr.ph.i.i53.i.epil.preheader ]
  %epil.iter378 = phi i64 [ %epil.iter378.next, %.lr.ph.i.i53.i.epil ], [ 0, %.lr.ph.i.i53.i.epil.preheader ]
  %i.awq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i.epil, i64 1
  %i.awr = load i8, ptr %.sroa.0.0.i1.i.i54.i.epil, align 1, !alias.scope !3477, !noalias !3484, !noundef !29
  %i.aws = zext i8 %i.awr to i64
  %i.awt = xor i64 %i.awp, %i.aws
  %i.awu = mul i64 %i.awt, 1099511628211          ; 2 uses
  %epil.iter378.next = add i64 %epil.iter378, 1   ; 2 uses
  %epil.iter378.cmp.not = icmp eq i64 %epil.iter378.next, %xtraiter377
  br i1 %epil.iter378.cmp.not, label %.loopexit201.loopexit.i, label %.lr.ph.i.i53.i.epil, !llvm.loop !3488

.loopexit201.loopexit.i:                          ; preds = %.lr.ph.i.i53.i.epil, %.loopexit201.loopexit.i.unr-lcssa
  %.lcssa302 = phi i64 [ %i.awo, %.loopexit201.loopexit.i.unr-lcssa ], [ %i.awu, %.lr.ph.i.i53.i.epil ]
  %i.awv = xor i64 %.lcssa302, 255
  %i.aww = mul i64 %i.awv, 1099511628211
  br label %.loopexit201.i

.loopexit201.i:                                   ; preds = %.loopexit201.loopexit.i, %bb.jj
  %.promoted.i.i.i55.i = phi i64 [ -5808391946409677970, %bb.jj ], [ %i.aww, %.loopexit201.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3315
  store i64 %.promoted.i.i.i55.i, ptr %i.w, align 8, !noalias !3492
  %.val.i57.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !3489, !noalias !3494, !noundef !29
  %.val3.i58.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3489, !noalias !3494, !noundef !29
  %i.awx = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i57.i, i64 %.val3.i58.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w), !noalias !3492 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  %i.awy = lshr i64 %i.awx, 57
  %i.awz = trunc nuw nsw i64 %i.awy to i8         ; 3 uses
  %i.axa = load i64, ptr %i.amc, align 8, !alias.scope !3501, !noalias !3502, !noundef !29 ; 3 uses
  %i.axb = load ptr, ptr %i.aa, align 8, !alias.scope !3501, !noalias !3502, !nonnull !29, !noundef !29 ; 3 uses
  %i.axc = insertelement <16 x i8> poison, i8 %i.awz, i64 0
  %i.axd = shufflevector <16 x i8> %i.axc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jm, %.loopexit201.i
  %.sroa.9.0.i.i.i59.i = phi i64 [ 0, %.loopexit201.i ], [ %i.axu, %bb.jm ]
  %.pn.i.i60.i = phi i64 [ %i.awx, %.loopexit201.i ], [ %i.axv, %bb.jm ]
  %.sroa.01.0.i.i.i61.i = and i64 %.pn.i.i60.i, %i.axa ; 3 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 %.sroa.01.0.i.i.i61.i
  %.sroa.0.0.copyload.i24.i.i62.i = load <16 x i8>, ptr %i.axe, align 1, !noalias !3505 ; 2 uses
  %i.axf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i62.i, %i.axd
  %i.axg = bitcast <16 x i1> %i.axf to i16        ; 2 uses
  %.not.i.not30.i.i63.i = icmp eq i16 %i.axg, 0
  br i1 %.not.i.not30.i.i63.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i64.i

.lr.ph.i.i64.i:                                   ; preds = %bb.jk, %bb.jl
  %.sroa.06.0.i31.i.i65.i = phi i16 [ %i.axt, %bb.jl ], [ %i.axg, %bb.jk ] ; 3 uses
  %i.axh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i65.i, i1 true)
  %i.axi = zext nneg i16 %i.axh to i64
  %i.axj = add i64 %.sroa.01.0.i.i.i61.i, %i.axi
  %i.axk = and i64 %i.axj, %i.axa
  %i.axl = sub nsw i64 0, %i.axk
  %i.axm = getelementptr inbounds [32 x i8], ptr %i.axb, i64 %i.axl ; 2 uses
  %i.axn = getelementptr inbounds i8, ptr %i.axm, i64 -32
  %.val2.i.i.i66.i = load i64, ptr %i.axn, align 8, !noalias !3508, !noundef !29
  %i.axo = icmp eq i64 %.val2.i.i.i66.i, %.promoted.i.i.i55.i
  br i1 %i.axo, label %bb.jr, label %bb.jl, !prof !36

._crit_edge.i.i68.i:                              ; preds = %bb.jl, %bb.jk
  %i.axp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i62.i, splat (i8 -1)
  %i.axq = bitcast <16 x i1> %i.axp to i16
  %i.axr = icmp eq i16 %i.axq, 0
  br i1 %i.axr, label %bb.jm, label %bb.jn, !prof !340

bb.jl:                                            ; preds = %.lr.ph.i.i64.i
  %i.axs = add i16 %.sroa.06.0.i31.i.i65.i, -1
  %i.axt = and i16 %i.axs, %.sroa.06.0.i31.i.i65.i ; 2 uses
  %.not.i.not.i.i67.i = icmp eq i16 %i.axt, 0
  br i1 %.not.i.not.i.i67.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i64.i

bb.jm:                                            ; preds = %._crit_edge.i.i68.i
  %i.axu = add i64 %.sroa.9.0.i.i.i59.i, 16       ; 2 uses
  %i.axv = add i64 %.sroa.01.0.i.i.i61.i, %i.axu
  br label %bb.jk

bb.jn:                                            ; preds = %._crit_edge.i.i68.i
  %i.axw = load i64, ptr %i.amd, align 8, !alias.scope !3511, !noalias !3514, !noundef !29
  %i.axx = icmp eq i64 %i.axw, 0
  br i1 %i.axx, label %bb.jo, label %bb.jp, !prof !340

bb.jo:                                            ; preds = %bb.jn
  %i.axy = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativemEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx.i, i1 noundef zeroext true) #74
          to label %.noexc73.i unwind label %.loopexit.split-lp.loopexit.i50, !noalias !3315 ; 0 uses

.noexc73.i:                                       ; preds = %bb.jo
  %.val.i.i79.pre.i = load ptr, ptr %i.aa, align 8, !alias.scope !3516, !noalias !3519
  %.val3.i.i80.pre.i = load i64, ptr %i.amc, align 8, !alias.scope !3516, !noalias !3519
  br label %bb.jp

bb.jp:                                            ; preds = %.noexc73.i, %bb.jn
  %.val3.i.i80.i = phi i64 [ %.val3.i.i80.pre.i, %.noexc73.i ], [ %i.axa, %bb.jn ] ; 4 uses
  %.val.i.i79.i = phi ptr [ %.val.i.i79.pre.i, %.noexc73.i ], [ %i.axb, %bb.jn ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3315
  call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  %.sroa.0.07.i.i.i81.i = and i64 %.val3.i.i80.i, %i.awx ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %.sroa.0.07.i.i.i81.i
  %.sroa.0.0.copyload.i68.i.i.i82.i = load <16 x i8>, ptr %i.axz, align 1, !noalias !3523
  %i.aya = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i82.i, zeroinitializer
  %i.ayb = bitcast <16 x i1> %i.aya to i16        ; 2 uses
  %.not.i9.i.i.i83.i = icmp eq i16 %i.ayb, 0
  br i1 %.not.i9.i.i.i83.i, label %.lr.ph.i.i.i98.i, label %._crit_edge.i.i.i84.i, !prof !2941

._crit_edge.i.i.i84.i:                            ; preds = %.lr.ph.i.i.i98.i, %bb.jp
  %.sroa.0.0.lcssa.i.i.i85.i = phi i64 [ %.sroa.0.07.i.i.i81.i, %bb.jp ], [ %.sroa.0.0.i.i.i100.i, %.lr.ph.i.i.i98.i ]
  %.lcssa.i.i.i86.i = phi i16 [ %i.ayb, %bb.jp ], [ %i.ays, %.lr.ph.i.i.i98.i ]
  %i.ayc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i86.i, i1 true)
  %i.ayd = zext nneg i16 %i.ayc to i64
  %i.aye = add i64 %.sroa.0.0.lcssa.i.i.i85.i, %i.ayd
  %i.ayf = and i64 %i.aye, %.val3.i.i80.i         ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %i.ayf
  %i.ayh = load i8, ptr %i.ayg, align 1, !noalias !3526, !noundef !29 ; 2 uses
  %i.ayi = icmp sgt i8 %i.ayh, -1
  br i1 %i.ayi, label %bb.jq, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i87.i, !prof !340

bb.jq:                                            ; preds = %._crit_edge.i.i.i84.i
  %.val2.i.i.i.i94.i = load <16 x i8>, ptr %.val.i.i79.i, align 16, !noalias !3526
  %i.ayj = icmp slt <16 x i8> %.val2.i.i.i.i94.i, zeroinitializer
  %i.ayk = bitcast <16 x i1> %i.ayj to i16        ; 2 uses
  %.not.i6.i.i.i95.i = icmp ne i16 %i.ayk, 0
  %i.ayl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ayk, i1 true)
  %i.aym = zext nneg i16 %i.ayl to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i95.i)
  %.phi.trans.insert.i.i96.i = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %i.aym
  %.pre.i.i97.i = load i8, ptr %.phi.trans.insert.i.i96.i, align 1, !noalias !3526
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i87.i

.lr.ph.i.i.i98.i:                                 ; preds = %bb.jp, %.lr.ph.i.i.i98.i
  %.sroa.0.010.i.i.i99.i = phi i64 [ %.sroa.0.0.i.i.i100.i, %.lr.ph.i.i.i98.i ], [ %.sroa.0.07.i.i.i81.i, %bb.jp ]
  %i.ayn = phi i64 [ %i.ayo, %.lr.ph.i.i.i98.i ], [ 0, %bb.jp ]
  %i.ayo = add i64 %i.ayn, 16                     ; 2 uses
  %i.ayp = add i64 %i.ayo, %.sroa.0.010.i.i.i99.i
  %.sroa.0.0.i.i.i100.i = and i64 %i.ayp, %.val3.i.i80.i ; 3 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %.sroa.0.0.i.i.i100.i
  %.sroa.0.0.copyload.i6.i.i.i101.i = load <16 x i8>, ptr %i.ayq, align 1, !noalias !3523
  %i.ayr = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i101.i, zeroinitializer
  %i.ays = bitcast <16 x i1> %i.ayr to i16        ; 2 uses
  %.not.i.i.i.i102.i = icmp eq i16 %i.ays, 0
  br i1 %.not.i.i.i.i102.i, label %.lr.ph.i.i.i98.i, label %._crit_edge.i.i.i84.i, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i87.i: ; preds = %bb.jq, %._crit_edge.i.i.i84.i
  %i.ayt = phi i8 [ %.pre.i.i97.i, %bb.jq ], [ %i.ayh, %._crit_edge.i.i.i84.i ]
  %.sroa.0.0.i5.i.i.i88.i = phi i64 [ %i.aym, %bb.jq ], [ %i.ayf, %._crit_edge.i.i.i84.i ] ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %.sroa.0.0.i5.i.i.i88.i
  %i.ayv = add i64 %.sroa.0.0.i5.i.i.i88.i, -16
  %i.ayw = and i64 %i.ayv, %.val3.i.i80.i
  store i8 %i.awz, ptr %i.ayu, align 1, !noalias !3526
  %i.ayx = getelementptr i8, ptr %.val.i.i79.i, i64 %i.ayw
  %i.ayy = getelementptr i8, ptr %i.ayx, i64 16
  store i8 %i.awz, ptr %i.ayy, align 1, !noalias !3526
  %i.ayz = sub nsw i64 0, %.sroa.0.0.i5.i.i.i88.i
  %i.aza = getelementptr inbounds [32 x i8], ptr %.val.i.i79.i, i64 %i.ayz ; 5 uses
  %i.azb = and i8 %i.ayt, 1
  %i.azc = zext nneg i8 %i.azb to i64
  %i.azd = getelementptr inbounds i8, ptr %i.aza, i64 -32
  store i64 %.promoted.i.i.i55.i, ptr %i.azd, align 8, !noalias !3527
  %.sroa.49.0..sroa_idx.i89.i = getelementptr inbounds i8, ptr %i.aza, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i89.i, align 8, !noalias !3527
  %.sroa.510.0..sroa_idx.i90.i = getelementptr inbounds i8, ptr %i.aza, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i90.i, align 8, !noalias !3527
  %.sroa.6.0..sroa_idx.i91.i = getelementptr inbounds i8, ptr %i.aza, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i91.i, align 8, !noalias !3527
  %i.aze = load <2 x i64>, ptr %i.amd, align 8, !alias.scope !3516, !noalias !3519
  %i.azf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.azc, i64 0
  %i.azg = sub <2 x i64> %i.aze, %i.azf
  store <2 x i64> %i.azg, ptr %i.amd, align 8, !alias.scope !3516, !noalias !3519
  br label %bb.js

bb.jr:                                            ; preds = %.lr.ph.i.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3315
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i87.i
  %.pn.i92.i = phi ptr [ %i.aza, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i87.i ], [ %i.axm, %bb.jr ] ; 3 uses
  %.sroa.0.0.i93.i = getelementptr inbounds i8, ptr %.pn.i92.i, i64 -24 ; 2 uses
  %i.azh = getelementptr inbounds i8, ptr %.pn.i92.i, i64 -16 ; 2 uses
  %i.azi = load ptr, ptr %i.azh, align 8, !noalias !3315, !nonnull !29, !noundef !29 ; 6 uses
  %i.azj = getelementptr inbounds i8, ptr %.pn.i92.i, i64 -8 ; 2 uses
  %i.azk = load i64, ptr %i.azj, align 8, !noalias !3315, !noundef !29 ; 5 uses
  %.idx191.i = mul nuw nsw i64 %i.azk, 24
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azi, i64 %.idx191.i ; 4 uses
  %i.azm = icmp eq i64 %i.azk, 0
  br i1 %i.azm, label %.loopexit194.i, label %.lr.ph.i105.i

end_hunk_2
begin_hunk_3_@_RINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB6_16IdentifyDistinctjE3newINtNtBa_4text12TextDiffSideeEB1i_ECskXtk6F4WjxZ_4just:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br label %bb.au

bb.h:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.021.0230 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  br label %bb.au

._crit_edge:                                      ; preds = %bb.at, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  call void @llvm.experimental.noalias.scope.decl(metadata !4359)
  call void @llvm.experimental.noalias.scope.decl(metadata !4362)
  call void @llvm.experimental.noalias.scope.decl(metadata !4365)
  call void @llvm.experimental.noalias.scope.decl(metadata !4368)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !4371, !noundef !29 ; 3 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !4372)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !4375, !noundef !29 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.e, align 8, !alias.scope !4375, !nonnull !29, !noundef !29 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.be, align 16, !noalias !4376
  %i.bf = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = bitcast <16 x i1> %i.bf to i16
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.j
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.be, %bb.j ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.bh, %bb.j ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.j ], [ %i.bt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bj = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.k ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bi, align 16, !noalias !4379
  %i.bk = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -512 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bk to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.k ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.k ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.k ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bn = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = and i16 %i.bn, %.lcssa.i.i.i.i.i.i.i
  %i.br = sub nsw i64 0, %i.bp
  %i.bs = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.br ; 2 uses
  %i.bt = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !4375 ; 2 uses
  %i.bv = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bs, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !noalias !4375, !nonnull !29, !noundef !29
  %i.bx = mul nuw i64 %.val.i.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !4375
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.l, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.k

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.i
  %i.bz = shl i64 %i.az, 5                        ; 2 uses
  %i.ca = add i64 %i.bz, 32                       ; 2 uses
  %i.cb = add i64 %i.az, 17
  %i.cc = add i64 %i.cb, %i.ca                    ; 4 uses
  %i.cd = icmp uge i64 %i.cc, %i.ca
  %i.ce = icmp ult i64 %i.cc, 9223372036854775793
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.cg = load ptr, ptr %i.e, align 8, !alias.scope !4371, !nonnull !29, !noundef !29
  %i.ch = sub nuw nsw i64 -32, %i.bz
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !4371
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit: ; preds = %._crit_edge, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %.lr.ph234, %bb.at
  %.sroa.0.1233 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph234 ], [ %.sroa.0.2, %bb.at ] ; 4 uses
  %.sroa.024.0232 = phi i64 [ 0, %.lr.ph234 ], [ %i.cj, %bb.at ] ; 7 uses
  %i.cj = add nuw nsw i64 %.sroa.024.0232, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4382)
  call void @llvm.experimental.noalias.scope.decl(metadata !4383)
  %i.ck = icmp ult i64 %.sroa.024.0232, %i.af     ; 5 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.ck, label %bb.r, label %.split11.us.i.invoke

bb.p:                                             ; preds = %bb.n
  br i1 %i.ck, label %bb.q, label %.split11.us.i.invoke

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.sroa.024.0232 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.024.0232 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.5.1.i.in.i32 = phi ptr [ %i.cp, %bb.r ], [ %i.cm, %bb.q ]
  %.sroa.0.1.i.in.i33 = phi ptr [ %i.co, %bb.r ], [ %i.cl, %bb.q ]
  %.sroa.0.1.i.i34 = load ptr, ptr %.sroa.0.1.i.in.i33, align 8, !noalias !4384, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i35 = load i64, ptr %.sroa.5.1.i.in.i32, align 8, !noalias !4384, !noundef !29 ; 4 uses
  %i.cq = icmp samesign eq i64 %.sroa.5.1.i.i35, 0
  br i1 %i.cq, label %.loopexit190, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %xtraiter59 = and i64 %.sroa.5.1.i.i35, 7       ; 3 uses
  %i.cr = icmp ult i64 %.sroa.5.1.i.i35, 8
  br i1 %i.cr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter66 = and i64 %.sroa.5.1.i.i35, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i34, %.lr.ph.i.i.preheader.new ], [ %i.ec, %.lr.ph.i.i ] ; 9 uses
  %i.cs = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.eg, %.lr.ph.i.i ]
  %niter67 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cu = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.cv = zext i8 %i.cu to i64
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, 1099511628211
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.cz = load i8, ptr %i.ct, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.da = zext i8 %i.cz to i64
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, 1099511628211
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.de = load i8, ptr %i.cy, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.df = zext i8 %i.de to i64
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dj = load i8, ptr %i.dd, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %i.dh, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.do = load i8, ptr %i.di, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %i.dm, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dt = load i8, ptr %i.dn, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.dr, %i.du
  %i.dw = mul i64 %i.dv, 1099511628211
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.dy = load i8, ptr %i.ds, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.dz = zext i8 %i.dy to i64
  %i.ea = xor i64 %i.dw, %i.dz
  %i.eb = mul i64 %i.ea, 1099511628211
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.ed = load i8, ptr %i.dx, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = mul i64 %i.ef, 1099511628211            ; 3 uses
  %niter67.next.7 = add nuw nsw i64 %niter67, 8   ; 2 uses
  %niter67.ncmp.7 = icmp eq i64 %niter67.next.7, %unroll_iter66
  br i1 %niter67.ncmp.7, label %.loopexit190.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit190.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod63.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod63.not, label %.loopexit190.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit190.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.0.i1.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i34, %.lr.ph.i.i.preheader ], [ %i.ec, %.loopexit190.loopexit.unr-lcssa ]
  %.epil.init62 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.eg, %.loopexit190.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter59, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.epil = phi ptr [ %i.ei, %.lr.ph.i.i.epil ], [ %.sroa.0.0.i1.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.eh = phi i64 [ %i.em, %.lr.ph.i.i.epil ], [ %.epil.init62, %.lr.ph.i.i.epil.preheader ]
  %epil.iter60 = phi i64 [ %epil.iter60.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.epil, i64 1
  %i.ej = load i8, ptr %.sroa.0.0.i1.i.i.epil, align 1, !alias.scope !4385, !noalias !4392, !noundef !29
  %i.ek = zext i8 %i.ej to i64
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = mul i64 %i.el, 1099511628211            ; 2 uses
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %xtraiter59
  br i1 %epil.iter60.cmp.not, label %.loopexit190.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !4396

.loopexit190.loopexit:                            ; preds = %.lr.ph.i.i.epil, %.loopexit190.loopexit.unr-lcssa
  %.lcssa31 = phi i64 [ %i.eg, %.loopexit190.loopexit.unr-lcssa ], [ %i.em, %.lr.ph.i.i.epil ]
  %i.en = xor i64 %.lcssa31, 255
  %i.eo = mul i64 %i.en, 1099511628211
  br label %.loopexit190

.loopexit190:                                     ; preds = %.loopexit190.loopexit, %bb.s
  %.promoted.i.i.i = phi i64 [ -5808391946409677970, %bb.s ], [ %i.eo, %.loopexit190.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.promoted.i.i.i, ptr %i.b, align 8, !noalias !4400
  %.val.i38 = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !4397, !noalias !4402, !noundef !29
  %.val3.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4397, !noalias !4402, !noundef !29
  %i.ep = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i38, i64 %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !4400 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  %i.eq = lshr i64 %i.ep, 57
  %i.er = trunc nuw nsw i64 %i.eq to i8           ; 3 uses
  %i.es = load i64, ptr %i.ai, align 8, !alias.scope !4409, !noalias !4410, !noundef !29 ; 3 uses
  %i.et = load ptr, ptr %i.e, align 8, !alias.scope !4409, !noalias !4410, !nonnull !29, !noundef !29 ; 3 uses
  %i.eu = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.loopexit190
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit190 ], [ %i.fm, %bb.v ]
  %.pn.i.i = phi i64 [ %i.ep, %.loopexit190 ], [ %i.fn, %bb.v ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.es     ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ew, align 1, !noalias !4413 ; 2 uses
  %i.ex = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ev
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.t, %bb.u
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fl, %bb.u ], [ %i.ey, %bb.t ] ; 3 uses
  %i.ez = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.01.0.i.i.i, %i.fa
  %i.fc = and i64 %i.fb, %i.es
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [32 x i8], ptr %i.et, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -32
  %.val2.i.i.i = load i64, ptr %i.ff, align 8, !noalias !4416, !noundef !29
  %i.fg = icmp eq i64 %.val2.i.i.i, %.promoted.i.i.i
  br i1 %i.fg, label %bb.aa, label %bb.u, !prof !36

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.t
  %i.fh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fi = bitcast <16 x i1> %i.fh to i16
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.v, label %bb.w, !prof !340

bb.u:                                             ; preds = %.lr.ph.i.i39
  %i.fk = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fl = and i16 %i.fk, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i39

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.fm = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fn = add i64 %.sroa.01.0.i.i.i, %i.fm
  br label %bb.t

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.fo = load i64, ptr %i.aj, align 8, !alias.scope !4419, !noalias !4422, !noundef !29
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.x, label %bb.y, !prof !340

bb.x:                                             ; preds = %bb.w
  %i.fq = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativejEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc40 unwind label %.loopexit191 ; 0 uses

.noexc40:                                         ; preds = %bb.x
  %.val.i.i.pre = load ptr, ptr %i.e, align 8, !alias.scope !4424, !noalias !4427
  %.val3.i.i.pre = load i64, ptr %i.ai, align 8, !alias.scope !4424, !noalias !4427
  br label %bb.y

bb.y:                                             ; preds = %.noexc40, %bb.w
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc40 ], [ %i.es, %bb.w ] ; 4 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %.noexc40 ], [ %i.et, %bb.w ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4424)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.ep   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.fr, align 1, !noalias !4431
  %i.fs = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.ft, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !2941

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.y
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.y ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.ft, %bb.y ], [ %i.gk, %.lr.ph.i.i.i ]
  %i.fu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.fv = zext nneg i16 %i.fu to i64
  %i.fw = add i64 %.sroa.0.0.lcssa.i.i.i, %i.fv
  %i.fx = and i64 %i.fw, %.val3.i.i               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !4434, !noundef !29 ; 2 uses
  %i.ga = icmp sgt i8 %i.fz, -1
  br i1 %i.ga, label %bb.z, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !340

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !4434
  %i.gb = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.gc = bitcast <16 x i1> %i.gb to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.gc, 0
  %i.gd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gc, i1 true)
  %i.ge = zext nneg i16 %i.gd to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i41 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ge
  %.pre.i.i42 = load i8, ptr %.phi.trans.insert.i.i41, align 1, !noalias !4434
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.y ]
  %i.gf = phi i64 [ %i.gg, %.lr.ph.i.i.i ], [ 0, %bb.y ]
  %i.gg = add i64 %i.gf, 16                       ; 2 uses
  %i.gh = add i64 %i.gg, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.gh, %.val3.i.i    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.gi, align 1, !noalias !4431
  %i.gj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.gk = bitcast <16 x i1> %i.gj to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.gk, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.z, %._crit_edge.i.i.i
  %i.gl = phi i8 [ %.pre.i.i42, %bb.z ], [ %i.fz, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ge, %bb.z ], [ %i.fx, %._crit_edge.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.gn = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.go = and i64 %i.gn, %.val3.i.i
  store i8 %i.er, ptr %i.gm, align 1, !noalias !4434
  %i.gp = getelementptr i8, ptr %.val.i.i, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  store i8 %i.er, ptr %i.gq, align 1, !noalias !4434
  %i.gr = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.gs = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.gr ; 5 uses
  %i.gt = and i8 %i.gl, 1
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gs, i64 -32
  store i64 %.promoted.i.i.i, ptr %i.gv, align 8, !noalias !4435
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gs, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !4435
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gs, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !4435
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gs, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4435
  %i.gw = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !4424, !noalias !4427
  %i.gx = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gu, i64 0
  %i.gy = sub <2 x i64> %i.gw, %i.gx
  store <2 x i64> %i.gy, ptr %i.aj, align 8, !alias.scope !4424, !noalias !4427
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.gs, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.fe, %bb.aa ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !29 ; 5 uses
  %.idx = mul nuw nsw i64 %i.hc, 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx
  %i.he = icmp eq i64 %i.hc, 0
  br i1 %i.he, label %.loopexit, label %.lr.ph.i

end_hunk_3
begin_hunk_4_@_RINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB6_16IdentifyDistinctjE3newINtNtBa_4text12TextDiffSideeEB1i_ECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.ck, label %bb.ag, label %.split11.us.i.invoke

bb.af:                                            ; preds = %bb.ad
  br i1 %i.ck, label %bb.ah, label %.split11.us.i.invoke

bb.ag:                                            ; preds = %bb.ae
  %i.hp = load i64, ptr %i.hn, align 8, !noalias !4436, !noundef !29 ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.af
  br i1 %i.hq, label %bb.aj, label %.split11.us.i.invoke

bb.ah:                                            ; preds = %bb.af
  %i.hr = load i64, ptr %i.hn, align 8, !noalias !4436, !noundef !29 ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.af
  br i1 %i.hs, label %bb.ai, label %.split11.us.i.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.hr ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i

bb.aj:                                            ; preds = %bb.ag
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.hp ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = getelementptr i8, ptr %i.hv, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i: ; preds = %bb.aj, %bb.ai
  %.sroa.5.1.i.i8.in.i.i = phi ptr [ %i.hj, %bb.aj ], [ %i.hg, %bb.ai ]
  %.sroa.0.1.i.i6.in.i.i = phi ptr [ %i.hi, %bb.aj ], [ %i.hf, %bb.ai ]
  %.sroa.5.1.i.in.i1.i.i = phi ptr [ %i.hx, %bb.aj ], [ %i.hu, %bb.ai ]
  %.sroa.0.1.i.in.i2.i.i = phi ptr [ %i.hw, %bb.aj ], [ %i.ht, %bb.ai ]
  %.sroa.5.1.i.i8.i.i = load i64, ptr %.sroa.5.1.i.i8.in.i.i, align 8, !noalias !4442, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i4.i.i = load i64, ptr %.sroa.5.1.i.in.i1.i.i, align 8, !noalias !4448, !noundef !29
  %i.hy = icmp eq i64 %.sroa.5.1.i.i8.i.i, %.sroa.5.1.i.i4.i.i
  br i1 %i.hy, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i

bb.ak:                                            ; preds = %bb.ac
  br i1 %i.ck, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i, label %.split11.us.i.invoke

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i: ; preds = %bb.ak
  %.sroa.0.1.i.i8.i.i = load ptr, ptr %.235, align 8, !noalias !4454, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i9.i.i = load i64, ptr %., align 8, !noalias !4454, !noundef !29 ; 2 uses
  %i.hz = load i64, ptr %i.hn, align 8, !noalias !4436, !noundef !29 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.ao               ; 2 uses
  br i1 %i.an, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i
  br i1 %i.ia, label %bb.ao, label %.split11.us.i.invoke

bb.am:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i
  br i1 %i.ia, label %bb.an, label %.split11.us.i.invoke

bb.an:                                            ; preds = %bb.am
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.hz ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i

bb.ao:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.hz ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = getelementptr i8, ptr %i.id, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.5.1.i.in.i11.i.i = phi ptr [ %i.if, %bb.ao ], [ %i.ic, %bb.an ]
  %.sroa.0.1.i.in.i12.i.i = phi ptr [ %i.ie, %bb.ao ], [ %i.ib, %bb.an ]
  %.sroa.5.1.i.i14.i.i = load i64, ptr %.sroa.5.1.i.in.i11.i.i, align 8, !noalias !4460, !noundef !29
  %i.ig = icmp eq i64 %.sroa.5.1.i.i9.i.i, %.sroa.5.1.i.i14.i.i
  br i1 %i.ig, label %.split.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i

.split.i:                                         ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i
  %.sroa.0.1.i.i13.i.i = load ptr, ptr %.sroa.0.1.i.in.i12.i.i, align 8, !noalias !4460, !nonnull !29, !noundef !29
  %bcmp.i17.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i8.i.i, ptr nonnull readonly %.sroa.0.1.i.i13.i.i, i64 %.sroa.5.1.i.i9.i.i), !alias.scope !4466, !noalias !4436
  %i.ih = icmp eq i32 %bcmp.i17.i.i, 0
  br i1 %i.ih, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i
  %.sroa.0.1.i.i6.i.i = load ptr, ptr %.sroa.0.1.i.i6.in.i.i, align 8, !noalias !4442, !nonnull !29, !noundef !29
  %.sroa.0.1.i.i3.i.i = load ptr, ptr %.sroa.0.1.i.in.i2.i.i, align 8, !noalias !4448, !nonnull !29, !noundef !29
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i6.i.i, ptr nonnull readonly %.sroa.0.1.i.i3.i.i, i64 %.sroa.5.1.i.i8.i.i), !alias.scope !4470, !noalias !4436
  %i.ii = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ii, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i, %.split.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit15.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.i
  %i.ij = icmp eq ptr %i.hl, %i.hd
  br i1 %i.ij, label %.loopexit, label %bb.ac

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit: ; preds = %.split.i, %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !noundef !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit
  %.sroa.013.0 = phi i64 [ %i.il, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.1233, %bb.as ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1233, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0ECskXtk6F4WjxZ_4just.exit ], [ %i.ip, %bb.as ]
  %i.im = load i64, ptr %i.t, align 8, !alias.scope !4474, !noundef !29 ; 3 uses
  %i.in = load i64, ptr %i.c, align 8, !range !306, !alias.scope !4474, !noundef !29
  %i.io = icmp eq i64 %i.im, %i.in
  br i1 %i.io, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #74
          to label %bb.at unwind label %.loopexit191

.loopexit:                                        ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0CskXtk6F4WjxZ_4just.exit.thread.i, %bb.ab
  %i.ip = add i64 %.sroa.0.1233, 1
  %i.iq = load i64, ptr %.sroa.0.0.i, align 8, !range !306, !alias.scope !4477, !noalias !4480, !noundef !29
  %i.ir = icmp eq i64 %i.hc, %i.iq
  br i1 %i.ir, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.loopexit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBV_16IdentifyDistinctpE3new14RepresentativejEE8grow_oneBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i) #74
          to label %._crit_edge270 unwind label %.loopexit191

._crit_edge270:                                   ; preds = %bb.ar
  %.pre271 = load ptr, ptr %i.gz, align 8, !alias.scope !4477, !noalias !4480
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge270, %.loopexit
  %i.is = phi ptr [ %.pre271, %._crit_edge270 ], [ %i.ha, %.loopexit ]
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %i.hc ; 3 uses
  store i64 1, ptr %i.it, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i64 %.sroa.024.0232, ptr %.sroa.4129.0..sroa_idx, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store i64 %.sroa.0.1233, ptr %.sroa.5130.0..sroa_idx, align 8
  %i.iu = add i64 %i.hc, 1
  store i64 %i.iu, ptr %i.hb, align 8, !alias.scope !4477, !noalias !4480
  br label %bb.ap

bb.at:                                            ; preds = %bb.ap, %bb.aq
  %i.iv = load ptr, ptr %i.s, align 8, !alias.scope !4474, !nonnull !29, !noundef !29
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.im
  store i64 %.sroa.013.0, ptr %i.iw, align 8
  %i.ix = add i64 %i.im, 1
  store i64 %i.ix, ptr %i.t, align 8, !alias.scope !4474
  %exitcond264.not = icmp eq i64 %i.cj, %4
  br i1 %exitcond264.not, label %._crit_edge, label %bb.n

bb.au:                                            ; preds = %bb.h, %bb.g
  %.sroa.5.1.i.in.i = phi ptr [ %i.aw, %bb.h ], [ %i.at, %bb.g ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.av, %bb.h ], [ %i.as, %bb.g ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !4482, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !4482, !noundef !29 ; 4 uses
  %i.iy = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.iy, label %.loopexit199, label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.au
  %xtraiter = and i64 %.sroa.5.1.i.i, 7           ; 3 uses
  %i.iz = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.iz, label %.lr.ph.i.i51.epil.preheader, label %.lr.ph.i.i51.preheader.new

.lr.ph.i.i51.preheader.new:                       ; preds = %.lr.ph.i.i51.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51, %.lr.ph.i.i51.preheader.new
  %.sroa.0.0.i1.i.i52 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i51.preheader.new ], [ %i.kk, %.lr.ph.i.i51 ] ; 9 uses
  %i.ja = phi i64 [ -3750763034362895579, %.lr.ph.i.i51.preheader.new ], [ %i.ko, %.lr.ph.i.i51 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i51.preheader.new ], [ %niter.next.7, %.lr.ph.i.i51 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 1
  %i.jc = load i8, ptr %.sroa.0.0.i1.i.i52, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.jd = zext i8 %i.jc to i64
  %i.je = xor i64 %i.ja, %i.jd
  %i.jf = mul i64 %i.je, 1099511628211
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 2
  %i.jh = load i8, ptr %i.jb, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.ji = zext i8 %i.jh to i64
  %i.jj = xor i64 %i.jf, %i.ji
  %i.jk = mul i64 %i.jj, 1099511628211
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 3
  %i.jm = load i8, ptr %i.jg, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.jn = zext i8 %i.jm to i64
  %i.jo = xor i64 %i.jk, %i.jn
  %i.jp = mul i64 %i.jo, 1099511628211
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 4
  %i.jr = load i8, ptr %i.jl, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.js = zext i8 %i.jr to i64
  %i.jt = xor i64 %i.jp, %i.js
  %i.ju = mul i64 %i.jt, 1099511628211
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 5
  %i.jw = load i8, ptr %i.jq, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.jx = zext i8 %i.jw to i64
  %i.jy = xor i64 %i.ju, %i.jx
  %i.jz = mul i64 %i.jy, 1099511628211
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 6
  %i.kb = load i8, ptr %i.jv, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.kc = zext i8 %i.kb to i64
  %i.kd = xor i64 %i.jz, %i.kc
  %i.ke = mul i64 %i.kd, 1099511628211
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 7
  %i.kg = load i8, ptr %i.ka, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.kh = zext i8 %i.kg to i64
  %i.ki = xor i64 %i.ke, %i.kh
  %i.kj = mul i64 %i.ki, 1099511628211
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52, i64 8 ; 2 uses
  %i.kl = load i8, ptr %i.kf, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.km = zext i8 %i.kl to i64
  %i.kn = xor i64 %i.kj, %i.km
  %i.ko = mul i64 %i.kn, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit199.loopexit.unr-lcssa, label %.lr.ph.i.i51

.loopexit199.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit199.loopexit, label %.lr.ph.i.i51.epil.preheader

.lr.ph.i.i51.epil.preheader:                      ; preds = %.loopexit199.loopexit.unr-lcssa, %.lr.ph.i.i51.preheader
  %.sroa.0.0.i1.i.i52.epil.init = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i51.preheader ], [ %i.kk, %.loopexit199.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i51.preheader ], [ %i.ko, %.loopexit199.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.i.i51.epil

.lr.ph.i.i51.epil:                                ; preds = %.lr.ph.i.i51.epil, %.lr.ph.i.i51.epil.preheader
  %.sroa.0.0.i1.i.i52.epil = phi ptr [ %i.kq, %.lr.ph.i.i51.epil ], [ %.sroa.0.0.i1.i.i52.epil.init, %.lr.ph.i.i51.epil.preheader ] ; 2 uses
  %i.kp = phi i64 [ %i.ku, %.lr.ph.i.i51.epil ], [ %.epil.init, %.lr.ph.i.i51.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i51.epil ], [ 0, %.lr.ph.i.i51.epil.preheader ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i52.epil, i64 1
  %i.kr = load i8, ptr %.sroa.0.0.i1.i.i52.epil, align 1, !alias.scope !4483, !noalias !4490, !noundef !29
  %i.ks = zext i8 %i.kr to i64
  %i.kt = xor i64 %i.kp, %i.ks
  %i.ku = mul i64 %i.kt, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit199.loopexit, label %.lr.ph.i.i51.epil, !llvm.loop !4494

.loopexit199.loopexit:                            ; preds = %.lr.ph.i.i51.epil, %.loopexit199.loopexit.unr-lcssa
  %.lcssa47 = phi i64 [ %i.ko, %.loopexit199.loopexit.unr-lcssa ], [ %i.ku, %.lr.ph.i.i51.epil ]
  %i.kv = xor i64 %.lcssa47, 255
  %i.kw = mul i64 %i.kv, 1099511628211
  br label %.loopexit199

.loopexit199:                                     ; preds = %.loopexit199.loopexit, %bb.au
  %.promoted.i.i.i53 = phi i64 [ -5808391946409677970, %bb.au ], [ %i.kw, %.loopexit199.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted.i.i.i53, ptr %i.a, align 8, !noalias !4498
  %.val.i55 = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !4495, !noalias !4500, !noundef !29
  %.val3.i56 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4495, !noalias !4500, !noundef !29
  %i.kx = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i55, i64 %.val3.i56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !4498 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4501)
  call void @llvm.experimental.noalias.scope.decl(metadata !4504)
  %i.ky = lshr i64 %i.kx, 57
  %i.kz = trunc nuw nsw i64 %i.ky to i8           ; 3 uses
  %i.la = load i64, ptr %i.aa, align 8, !alias.scope !4507, !noalias !4508, !noundef !29 ; 3 uses
  %i.lb = load ptr, ptr %i.e, align 8, !alias.scope !4507, !noalias !4508, !nonnull !29, !noundef !29 ; 3 uses
  %i.lc = insertelement <16 x i8> poison, i8 %i.kz, i64 0
  %i.ld = shufflevector <16 x i8> %i.lc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.loopexit199
  %.sroa.9.0.i.i.i57 = phi i64 [ 0, %.loopexit199 ], [ %i.lu, %bb.ax ]
  %.pn.i.i58 = phi i64 [ %i.kx, %.loopexit199 ], [ %i.lv, %bb.ax ]
  %.sroa.01.0.i.i.i59 = and i64 %.pn.i.i58, %i.la ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.sroa.01.0.i.i.i59
  %.sroa.0.0.copyload.i24.i.i60 = load <16 x i8>, ptr %i.le, align 1, !noalias !4511 ; 2 uses
  %i.lf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i60, %i.ld
  %i.lg = bitcast <16 x i1> %i.lf to i16          ; 2 uses
  %.not.i.not30.i.i61 = icmp eq i16 %i.lg, 0
  br i1 %.not.i.not30.i.i61, label %._crit_edge.i.i66, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.av, %bb.aw
  %.sroa.06.0.i31.i.i63 = phi i16 [ %i.lt, %bb.aw ], [ %i.lg, %bb.av ] ; 3 uses
  %i.lh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i63, i1 true)
  %i.li = zext nneg i16 %i.lh to i64
  %i.lj = add i64 %.sroa.01.0.i.i.i59, %i.li
  %i.lk = and i64 %i.lj, %i.la
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds [32 x i8], ptr %i.lb, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 -32
  %.val2.i.i.i64 = load i64, ptr %i.ln, align 8, !noalias !4514, !noundef !29
  %i.lo = icmp eq i64 %.val2.i.i.i64, %.promoted.i.i.i53
  br i1 %i.lo, label %bb.bc, label %bb.aw, !prof !36

._crit_edge.i.i66:                                ; preds = %bb.aw, %bb.av
  %i.lp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i60, splat (i8 -1)
  %i.lq = bitcast <16 x i1> %i.lp to i16
  %i.lr = icmp eq i16 %i.lq, 0
  br i1 %i.lr, label %bb.ax, label %bb.ay, !prof !340

bb.aw:                                            ; preds = %.lr.ph.i.i62
  %i.ls = add i16 %.sroa.06.0.i31.i.i63, -1
  %i.lt = and i16 %i.ls, %.sroa.06.0.i31.i.i63    ; 2 uses
  %.not.i.not.i.i65 = icmp eq i16 %i.lt, 0
  br i1 %.not.i.not.i.i65, label %._crit_edge.i.i66, label %.lr.ph.i.i62

bb.ax:                                            ; preds = %._crit_edge.i.i66
  %i.lu = add i64 %.sroa.9.0.i.i.i57, 16          ; 2 uses
  %i.lv = add i64 %.sroa.01.0.i.i.i59, %i.lu
  br label %bb.av

bb.ay:                                            ; preds = %._crit_edge.i.i66
  %i.lw = load i64, ptr %i.ab, align 8, !alias.scope !4517, !noalias !4520, !noundef !29
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %bb.az, label %bb.ba, !prof !340

bb.az:                                            ; preds = %bb.ay
  %i.ly = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativejEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc71:                                         ; preds = %bb.az
  %.val.i.i77.pre = load ptr, ptr %i.e, align 8, !alias.scope !4522, !noalias !4525
  %.val3.i.i78.pre = load i64, ptr %i.aa, align 8, !alias.scope !4522, !noalias !4525
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc71, %bb.ay
  %.val3.i.i78 = phi i64 [ %.val3.i.i78.pre, %.noexc71 ], [ %i.la, %bb.ay ] ; 4 uses
  %.val.i.i77 = phi ptr [ %.val.i.i77.pre, %.noexc71 ], [ %i.lb, %bb.ay ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  %.sroa.0.07.i.i.i79 = and i64 %.val3.i.i78, %i.kx ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.val.i.i77, i64 %.sroa.0.07.i.i.i79
  %.sroa.0.0.copyload.i68.i.i.i80 = load <16 x i8>, ptr %i.lz, align 1, !noalias !4529
  %i.ma = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i80, zeroinitializer
  %i.mb = bitcast <16 x i1> %i.ma to i16          ; 2 uses
  %.not.i9.i.i.i81 = icmp eq i16 %i.mb, 0
  br i1 %.not.i9.i.i.i81, label %.lr.ph.i.i.i96, label %._crit_edge.i.i.i82, !prof !2941

._crit_edge.i.i.i82:                              ; preds = %.lr.ph.i.i.i96, %bb.ba
  %.sroa.0.0.lcssa.i.i.i83 = phi i64 [ %.sroa.0.07.i.i.i79, %bb.ba ], [ %.sroa.0.0.i.i.i98, %.lr.ph.i.i.i96 ]
  %.lcssa.i.i.i84 = phi i16 [ %i.mb, %bb.ba ], [ %i.ms, %.lr.ph.i.i.i96 ]
  %i.mc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i84, i1 true)
  %i.md = zext nneg i16 %i.mc to i64
  %i.me = add i64 %.sroa.0.0.lcssa.i.i.i83, %i.md
  %i.mf = and i64 %i.me, %.val3.i.i78             ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i77, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !noalias !4532, !noundef !29 ; 2 uses
  %i.mi = icmp sgt i8 %i.mh, -1
  br i1 %i.mi, label %bb.bb, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i85, !prof !340

bb.bb:                                            ; preds = %._crit_edge.i.i.i82
  %.val2.i.i.i.i92 = load <16 x i8>, ptr %.val.i.i77, align 16, !noalias !4532
  %i.mj = icmp slt <16 x i8> %.val2.i.i.i.i92, zeroinitializer
  %i.mk = bitcast <16 x i1> %i.mj to i16          ; 2 uses
  %.not.i6.i.i.i93 = icmp ne i16 %i.mk, 0
  %i.ml = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.mk, i1 true)
  %i.mm = zext nneg i16 %i.ml to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i93)
  %.phi.trans.insert.i.i94 = getelementptr inbounds nuw i8, ptr %.val.i.i77, i64 %i.mm
  %.pre.i.i95 = load i8, ptr %.phi.trans.insert.i.i94, align 1, !noalias !4532
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i85

.lr.ph.i.i.i96:                                   ; preds = %bb.ba, %.lr.ph.i.i.i96
  %.sroa.0.010.i.i.i97 = phi i64 [ %.sroa.0.0.i.i.i98, %.lr.ph.i.i.i96 ], [ %.sroa.0.07.i.i.i79, %bb.ba ]
  %i.mn = phi i64 [ %i.mo, %.lr.ph.i.i.i96 ], [ 0, %bb.ba ]
  %i.mo = add i64 %i.mn, 16                       ; 2 uses
  %i.mp = add i64 %i.mo, %.sroa.0.010.i.i.i97
  %.sroa.0.0.i.i.i98 = and i64 %i.mp, %.val3.i.i78 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.val.i.i77, i64 %.sroa.0.0.i.i.i98
  %.sroa.0.0.copyload.i6.i.i.i99 = load <16 x i8>, ptr %i.mq, align 1, !noalias !4529
  %i.mr = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i99, zeroinitializer
  %i.ms = bitcast <16 x i1> %i.mr to i16          ; 2 uses
  %.not.i.i.i.i100 = icmp eq i16 %i.ms, 0
  br i1 %.not.i.i.i.i100, label %.lr.ph.i.i.i96, label %._crit_edge.i.i.i82, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i85: ; preds = %bb.bb, %._crit_edge.i.i.i82
  %i.mt = phi i8 [ %.pre.i.i95, %bb.bb ], [ %i.mh, %._crit_edge.i.i.i82 ]
  %.sroa.0.0.i5.i.i.i86 = phi i64 [ %i.mm, %bb.bb ], [ %i.mf, %._crit_edge.i.i.i82 ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.val.i.i77, i64 %.sroa.0.0.i5.i.i.i86
  %i.mv = add i64 %.sroa.0.0.i5.i.i.i86, -16
  %i.mw = and i64 %i.mv, %.val3.i.i78
  store i8 %i.kz, ptr %i.mu, align 1, !noalias !4532
  %i.mx = getelementptr i8, ptr %.val.i.i77, i64 %i.mw
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  store i8 %i.kz, ptr %i.my, align 1, !noalias !4532
  %i.mz = sub nsw i64 0, %.sroa.0.0.i5.i.i.i86
  %i.na = getelementptr inbounds [32 x i8], ptr %.val.i.i77, i64 %i.mz ; 5 uses
  %i.nb = and i8 %i.mt, 1
  %i.nc = zext nneg i8 %i.nb to i64
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 -32
  store i64 %.promoted.i.i.i53, ptr %i.nd, align 8, !noalias !4533
  %.sroa.49.0..sroa_idx.i87 = getelementptr inbounds i8, ptr %i.na, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i87, align 8, !noalias !4533
  %.sroa.510.0..sroa_idx.i88 = getelementptr inbounds i8, ptr %i.na, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i88, align 8, !noalias !4533
  %.sroa.6.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %i.na, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i89, align 8, !noalias !4533
  %i.ne = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !4522, !noalias !4525
  %i.nf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.nc, i64 0
  %i.ng = sub <2 x i64> %i.ne, %i.nf
  store <2 x i64> %i.ng, ptr %i.ab, align 8, !alias.scope !4522, !noalias !4525
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i85
  %.pn.i90 = phi ptr [ %i.na, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i85 ], [ %i.lm, %bb.bc ] ; 3 uses
  %.sroa.0.0.i91 = getelementptr inbounds i8, ptr %.pn.i90, i64 -24 ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %.pn.i90, i64 -16 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !nonnull !29, !noundef !29 ; 6 uses
  %i.nj = getelementptr inbounds i8, ptr %.pn.i90, i64 -8 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !noundef !29 ; 5 uses
  %.idx189 = mul nuw nsw i64 %i.nk, 24
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.idx189 ; 4 uses
  %i.nm = icmp eq i64 %i.nk, 0
  br i1 %i.nm, label %.loopexit192, label %.lr.ph.i103

end_hunk_4
begin_hunk_5_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB6_4text12TextDiffSideeEECskXtk6F4WjxZ_4just:bb.a
  %i.bn = icmp eq i64 %i.bi, %i.bm
  br i1 %i.bn, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bi, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !20251

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.pre.i.i32 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !20250, !noalias !20251
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bo = phi ptr [ %.pre.i.i32, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i ], [ %i.bh, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bi ; 2 uses
  store ptr %i.bj, ptr %i.bp, align 8, !noalias !20254
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bk, ptr %i.bq, align 8, !noalias !20254
  %i.br = add nuw nsw i64 %i.bi, 1                ; 6 uses
  store i64 %i.br, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !20250, !noalias !20251
  %i.bs = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !20249 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d) #72, !noalias !20249
  %.val.i.i = load i64, ptr %i.e, align 8, !noalias !20232 ; 2 uses
  %i.bv = icmp eq i64 %.val.i.i, 0
  br i1 %i.bv, label %.thread, label %bb.j

bb.j:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20232, !nonnull !29, !noundef !29
  %i.bw = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !20232
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.062.0.copyload63.pre = load i64, ptr %i.e, align 8, !noalias !20255 ; 4 uses
  %.sroa.6.0.copyload65.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20255 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !20249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !20256)
  call void @llvm.experimental.noalias.scope.decl(metadata !20259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20256
  store ptr %i.a, ptr %i.c, align 8, !noalias !20262
  %i.bx = icmp samesign ult i64 %i.bi, 20
  br i1 %i.bx, label %bb.l, label %bb.k, !prof !36

bb.k:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2z_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload65.pre, i64 noundef range(i64 0, 576460752303423488) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #74
          to label %.loopexit unwind label %bb.o

bb.l:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.br, 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload65.pre, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload65.pre, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.l
  %.sroa.0.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.l ] ; 7 uses
  %.pn3.i.i.i = phi ptr [ %.sroa.0.04.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.6.0.copyload65.pre, %bb.l ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.pn3.i.i.i, i64 24
  %.val9.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !20264, !noalias !20267, !noundef !29 ; 3 uses
  %i.ca = getelementptr i8, ptr %.pn3.i.i.i, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !20264, !noalias !20267, !noundef !29
  %i.cb = icmp ult i64 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.cb, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !alias.scope !20264, !noalias !20267, !nonnull !29, !align !174, !noundef !29
  %.sroa.0.0.i.i.i.i243 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i243, i64 16, i1 false), !alias.scope !20264, !noalias !20267
  %i.cd = icmp eq ptr %.sroa.0.0.i.i.i.i243, %.sroa.6.0.copyload65.pre
  br i1 %i.cd, label %._crit_edge248, label %.lr.ph247

bb.n:                                             ; preds = %.lr.ph247
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i245, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i245, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i, i64 16, i1 false), !alias.scope !20264, !noalias !20267
  %i.ce = icmp eq ptr %.sroa.0.0.i.i.i.i, %.sroa.6.0.copyload65.pre
  br i1 %i.ce, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i.i245 = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i243, %bb.m ] ; 5 uses
  %.sroa.5.0.i.i.i.i244 = phi ptr [ %.sroa.0.0.i.i.i.i245, %bb.n ], [ %.sroa.0.04.i.i.i, %bb.m ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.5.0.i.i.i.i244, i64 -24
  %.val8.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !20264, !noalias !20267, !noundef !29
  %i.cg = icmp ult i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.cg, label %bb.n, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.n, %.lr.ph247, %bb.m
  %.sroa.5.0.i.i.i.i.lcssa = phi ptr [ %.sroa.0.04.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i245, %bb.n ], [ %.sroa.5.0.i.i.i.i244, %.lr.ph247 ]
  %.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %.sroa.6.0.copyload65.pre, %bb.m ], [ %.sroa.6.0.copyload65.pre, %bb.n ], [ %.sroa.0.0.i.i.i.i245, %.lr.ph247 ]
  store ptr %i.cc, ptr %.sroa.0.0.i.lcssa.i.i.i, align 8, !alias.scope !20264, !noalias !20268
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.i.lcssa, i64 -8
  store i64 %.val9.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i, align 8, !alias.scope !20264, !noalias !20268
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %._crit_edge248, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.by
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i64 %.sroa.062.0.copyload63.pre, 0
  br i1 %i.ci, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = shl nuw i64 %.sroa.062.0.copyload63.pre, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload65.pre) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload65.pre, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %.thread

.loopexit.sink.split:                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread224
  %.sroa.062.0134.ph = phi i64 [ 4, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread224 ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread ]
  %.sroa.6.0133.ph = phi ptr [ %i.bb, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread224 ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread ]
  %.sroa.9.0132.ph = phi i64 [ 1, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread224 ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i, %.loopexit.sink.split, %bb.k
  %.sroa.062.0134 = phi i64 [ %.sroa.062.0.copyload63.pre, %bb.k ], [ %.sroa.062.0134.ph, %.loopexit.sink.split ], [ %.sroa.062.0.copyload63.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ]
  %.sroa.6.0133 = phi ptr [ %.sroa.6.0.copyload65.pre, %bb.k ], [ %.sroa.6.0133.ph, %.loopexit.sink.split ], [ %.sroa.6.0.copyload65.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ]
  %.sroa.9.0132 = phi i64 [ %i.br, %bb.k ], [ %.sroa.9.0132.ph, %.loopexit.sink.split ], [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20256
  store i64 %.sroa.062.0134, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0133, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0132, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.q:                                             ; preds = %bb.f, %bb.e
  %.sroa.5.1.i.in.i = phi ptr [ %i.ar, %bb.f ], [ %i.ao, %bb.e ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !20273, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !20273, !noundef !29 ; 4 uses
  %i.ck = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.ck, label %.loopexit162, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %xtraiter = and i64 %.sroa.5.1.i.i, 7           ; 3 uses
  %i.cl = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.cl, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader.new ], [ %i.dw, %.lr.ph.i.i ] ; 9 uses
  %i.cm = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.ea, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.co = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.cp = zext i8 %i.co to i64
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = mul i64 %i.cq, 1099511628211
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.ct = load i8, ptr %i.cn, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.cu = zext i8 %i.ct to i64
  %i.cv = xor i64 %i.cr, %i.cu
  %i.cw = mul i64 %i.cv, 1099511628211
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.cy = load i8, ptr %i.cs, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.cz = zext i8 %i.cy to i64
  %i.da = xor i64 %i.cw, %i.cz
  %i.db = mul i64 %i.da, 1099511628211
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dd = load i8, ptr %i.cx, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.de = zext i8 %i.dd to i64
  %i.df = xor i64 %i.db, %i.de
  %i.dg = mul i64 %i.df, 1099511628211
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.di = load i8, ptr %i.dc, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.dj = zext i8 %i.di to i64
  %i.dk = xor i64 %i.dg, %i.dj
  %i.dl = mul i64 %i.dk, 1099511628211
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dn = load i8, ptr %i.dh, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.do = zext i8 %i.dn to i64
  %i.dp = xor i64 %i.dl, %i.do
  %i.dq = mul i64 %i.dp, 1099511628211
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.ds = load i8, ptr %i.dm, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.dt = zext i8 %i.ds to i64
  %i.du = xor i64 %i.dq, %i.dt
  %i.dv = mul i64 %i.du, 1099511628211
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.dx = load i8, ptr %i.dr, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.dy = zext i8 %i.dx to i64
  %i.dz = xor i64 %i.dv, %i.dy
  %i.ea = mul i64 %i.dz, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit162.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit162.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit162.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit162.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.0.i1.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader ], [ %i.dw, %.loopexit162.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.ea, %.loopexit162.loopexit.unr-lcssa ]
  %lcmp.mod262 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.epil = phi ptr [ %i.ec, %.lr.ph.i.i.epil ], [ %.sroa.0.0.i1.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.eb = phi i64 [ %i.eg, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.epil, i64 1
  %i.ed = load i8, ptr %.sroa.0.0.i1.i.i.epil, align 1, !alias.scope !20274, !noalias !20281, !noundef !29
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = mul i64 %i.ef, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit162.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !20285

.loopexit162.loopexit:                            ; preds = %.lr.ph.i.i.epil, %.loopexit162.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.ea, %.loopexit162.loopexit.unr-lcssa ], [ %i.eg, %.lr.ph.i.i.epil ]
  %i.eh = xor i64 %.lcssa, 255
  %i.ei = mul i64 %i.eh, 1099511628211
  br label %.loopexit162

.loopexit162:                                     ; preds = %.loopexit162.loopexit, %bb.q
  %.promoted.i.i.i = phi i64 [ -5808391946409677970, %bb.q ], [ %i.ei, %.loopexit162.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.promoted.i.i.i, ptr %i.b, align 8, !noalias !20289
  %.val.i = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !20286, !noalias !20291, !noundef !29
  %.val3.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20286, !noalias !20291, !noundef !29
  %i.ej = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !20289 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20292)
  call void @llvm.experimental.noalias.scope.decl(metadata !20295)
  %i.ek = lshr i64 %i.ej, 57
  %i.el = trunc nuw nsw i64 %i.ek to i8           ; 3 uses
  %i.em = load i64, ptr %i.y, align 8, !alias.scope !20298, !noalias !20299, !noundef !29 ; 3 uses
  %i.en = load ptr, ptr %i.g, align 8, !alias.scope !20298, !noalias !20299, !nonnull !29, !noundef !29 ; 3 uses
  %i.eo = insertelement <16 x i8> poison, i8 %i.el, i64 0
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.loopexit162
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit162 ], [ %i.fg, %bb.t ]
  %.pn.i.i = phi i64 [ %i.ej, %.loopexit162 ], [ %i.fh, %bb.t ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.em     ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.eq, align 1, !noalias !20302 ; 2 uses
  %i.er = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ep
  %i.es = bitcast <16 x i1> %i.er to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.es, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.r, %bb.s
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ff, %bb.s ], [ %i.es, %bb.r ] ; 3 uses
  %i.et = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = add i64 %.sroa.01.0.i.i.i, %i.eu
  %i.ew = and i64 %i.ev, %i.em
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds [32 x i8], ptr %i.en, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -32
  %.val2.i.i.i = load i64, ptr %i.ez, align 8, !noalias !20305, !noundef !29
  %i.fa = icmp eq i64 %.val2.i.i.i, %.promoted.i.i.i
  br i1 %i.fa, label %bb.y, label %bb.s, !prof !36

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %i.fb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fc = bitcast <16 x i1> %i.fb to i16
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %bb.t, label %bb.u, !prof !340

bb.s:                                             ; preds = %.lr.ph.i.i34
  %i.fe = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ff = and i16 %i.fe, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ff, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i34

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.fg = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fh = add i64 %.sroa.01.0.i.i.i, %i.fg
  br label %bb.r

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.fi = load i64, ptr %i.z, align 8, !alias.scope !20308, !noalias !20311, !noundef !29
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.v, label %bb.w, !prof !340

bb.v:                                             ; preds = %bb.u
  %i.fk = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.47.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc37 unwind label %.loopexit163 ; 0 uses

.noexc37:                                         ; preds = %bb.v
  %.val.i.i39.pre = load ptr, ptr %i.g, align 8, !alias.scope !20313, !noalias !20316
  %.val3.i.i.pre = load i64, ptr %i.y, align 8, !alias.scope !20313, !noalias !20316
  br label %bb.w

bb.w:                                             ; preds = %.noexc37, %bb.u
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc37 ], [ %i.em, %bb.u ] ; 4 uses
  %.val.i.i39 = phi ptr [ %.val.i.i39.pre, %.noexc37 ], [ %i.en, %bb.u ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !20313)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.ej   ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.fl, align 1, !noalias !20320
  %i.fm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i43, label %._crit_edge.i.i.i, !prof !2941

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i43, %bb.w
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.w ], [ %.sroa.0.0.i.i.i44, %.lr.ph.i.i.i43 ]
  %.lcssa.i.i.i = phi i16 [ %i.fn, %bb.w ], [ %i.ge, %.lr.ph.i.i.i43 ]
  %i.fo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = add i64 %.sroa.0.0.lcssa.i.i.i, %i.fp
  %i.fr = and i64 %i.fq, %.val3.i.i               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !noalias !20323, !noundef !29 ; 2 uses
  %i.fu = icmp sgt i8 %i.ft, -1
  br i1 %i.fu, label %bb.x, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !340

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i39, align 16, !noalias !20323
  %i.fv = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.fw = bitcast <16 x i1> %i.fv to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.fw, 0
  %i.fx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fw, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i41 = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %i.fy
  %.pre.i.i42 = load i8, ptr %.phi.trans.insert.i.i41, align 1, !noalias !20323
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i43:                                   ; preds = %bb.w, %.lr.ph.i.i.i43
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i44, %.lr.ph.i.i.i43 ], [ %.sroa.0.07.i.i.i, %bb.w ]
  %i.fz = phi i64 [ %i.ga, %.lr.ph.i.i.i43 ], [ 0, %bb.w ]
  %i.ga = add i64 %i.fz, 16                       ; 2 uses
  %i.gb = add i64 %i.ga, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i44 = and i64 %i.gb, %.val3.i.i  ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %.sroa.0.0.i.i.i44
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.gc, align 1, !noalias !20320
  %i.gd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ge = bitcast <16 x i1> %i.gd to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ge, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i43, label %._crit_edge.i.i.i, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.x, %._crit_edge.i.i.i
  %i.gf = phi i8 [ %.pre.i.i42, %bb.x ], [ %i.ft, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.fy, %bb.x ], [ %i.fr, %._crit_edge.i.i.i ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %.sroa.0.0.i5.i.i.i
  %i.gh = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.gi = and i64 %i.gh, %.val3.i.i
  store i8 %i.el, ptr %i.gg, align 1, !noalias !20323
  %i.gj = getelementptr i8, ptr %.val.i.i39, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.el, ptr %i.gk, align 1, !noalias !20323
  %i.gl = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.gm = getelementptr inbounds [32 x i8], ptr %.val.i.i39, i64 %i.gl ; 5 uses
  %i.gn = and i8 %i.gf, 1
  %i.go = zext nneg i8 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gm, i64 -32
  store i64 %.promoted.i.i.i, ptr %i.gp, align 8, !noalias !20324
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gm, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !20324
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gm, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !20324
  %.sroa.6.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %i.gm, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i40, align 8, !noalias !20324
  %i.gq = load <2 x i64>, ptr %i.z, align 8, !alias.scope !20313, !noalias !20316
  %i.gr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.go, i64 0
  %i.gs = sub <2 x i64> %i.gq, %i.gr
  store <2 x i64> %i.gs, ptr %i.z, align 8, !alias.scope !20313, !noalias !20316
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.gm, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.ey, %bb.y ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.gv = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !29 ; 5 uses
  %.idx = mul nuw nsw i64 %i.gw, 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx
  %i.gy = icmp eq i64 %i.gw, 0
  br i1 %i.gy, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit._crit_edge, label %.lr.ph

end_hunk_5
begin_hunk_6_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_ECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.aq, label %bb.ac, label %bb.ae

bb.c:                                             ; preds = %.lr.ph157, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.076.0156 = phi i64 [ %4, %.lr.ph157 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 6 uses
  %.sroa.878.0155 = phi i64 [ 0, %.lr.ph157 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.076.0156, 1
  %i.as = add i64 %.sroa.878.0155, 1              ; 2 uses
  %i.at = and i64 %.sroa.878.0155, 1023
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.j

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !21882)
  call void @llvm.experimental.noalias.scope.decl(metadata !21885)
  call void @llvm.experimental.noalias.scope.decl(metadata !21888)
  call void @llvm.experimental.noalias.scope.decl(metadata !21891)
  call void @llvm.experimental.noalias.scope.decl(metadata !21894)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !21897, !noundef !29 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12
  call void @llvm.experimental.noalias.scope.decl(metadata !21898)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !21901, !noundef !29 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !21901, !nonnull !29, !noundef !29 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !21902
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !21905
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !21908, !noalias !21901 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !21901, !nonnull !29, !noundef !29
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !21911
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35
  %.sink = phi i64 [ %i.hn, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sink213 = phi i64 [ %i.hq, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink213, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !29
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35, %.loopexit137
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit137 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.i unwind label %.loopexit136

bb.i:                                             ; preds = %bb.h
  br i1 %i.cg, label %.loopexit137, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = icmp ult i64 %.sroa.076.0156, %i.ab     ; 4 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ch, label %bb.n, label %.invoke

bb.l:                                             ; preds = %bb.j
  br i1 %i.ch, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.076.0156 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.076.0156 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.5.1.i.in.i = phi ptr [ %i.cm, %bb.n ], [ %i.cj, %bb.m ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.cl, %bb.n ], [ %i.ci, %bb.m ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !21914, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !21914, !noundef !29 ; 4 uses
  %i.cn = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.cn, label %.loopexit135, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %xtraiter252 = and i64 %.sroa.5.1.i.i, 7        ; 3 uses
  %i.co = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.co, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter259 = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader.new ], [ %i.dz, %.lr.ph.i.i ] ; 9 uses
  %i.cp = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.ed, %.lr.ph.i.i ]
  %niter260 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter260.next.7, %.lr.ph.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cr = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.cs = zext i8 %i.cr to i64
  %i.ct = xor i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, 1099511628211
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.cw = load i8, ptr %i.cq, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.cx = zext i8 %i.cw to i64
  %i.cy = xor i64 %i.cu, %i.cx
  %i.cz = mul i64 %i.cy, 1099511628211
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.db = load i8, ptr %i.cv, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.dc = zext i8 %i.db to i64
  %i.dd = xor i64 %i.cz, %i.dc
  %i.de = mul i64 %i.dd, 1099511628211
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dg = load i8, ptr %i.da, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.dl = load i8, ptr %i.df, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dj, %i.dm
  %i.do = mul i64 %i.dn, 1099511628211
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dq = load i8, ptr %i.dk, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211            ; 3 uses
  %niter260.next.7 = add nuw nsw i64 %niter260, 8 ; 2 uses
  %niter260.ncmp.7 = icmp eq i64 %niter260.next.7, %unroll_iter259
  br i1 %niter260.ncmp.7, label %.loopexit135.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit135.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod256.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod256.not, label %.loopexit135.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit135.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.0.i1.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader ], [ %i.dz, %.loopexit135.loopexit.unr-lcssa ]
  %.epil.init255 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.ed, %.loopexit135.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter252, 0
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.epil = phi ptr [ %i.ef, %.lr.ph.i.i.epil ], [ %.sroa.0.0.i1.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ee = phi i64 [ %i.ej, %.lr.ph.i.i.epil ], [ %.epil.init255, %.lr.ph.i.i.epil.preheader ]
  %epil.iter253 = phi i64 [ %epil.iter253.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.epil, i64 1
  %i.eg = load i8, ptr %.sroa.0.0.i1.i.i.epil, align 1, !alias.scope !21920, !noalias !21927, !noundef !29
  %i.eh = zext i8 %i.eg to i64
  %i.ei = xor i64 %i.ee, %i.eh
  %i.ej = mul i64 %i.ei, 1099511628211            ; 2 uses
  %epil.iter253.next = add i64 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i64 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %.loopexit135.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !21931

.loopexit135.loopexit:                            ; preds = %.lr.ph.i.i.epil, %.loopexit135.loopexit.unr-lcssa
  %.lcssa241 = phi i64 [ %i.ed, %.loopexit135.loopexit.unr-lcssa ], [ %i.ej, %.lr.ph.i.i.epil ]
  %i.ek = xor i64 %.lcssa241, 255
  %i.el = mul i64 %i.ek, 1099511628211
  br label %.loopexit135

.loopexit135:                                     ; preds = %.loopexit135.loopexit, %bb.o
  %.promoted.i.i.i = phi i64 [ -5808391946409677970, %bb.o ], [ %i.el, %.loopexit135.loopexit ] ; 2 uses
  store i64 %.promoted.i.i.i, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21932)
  %i.em = load i64, ptr %i.ae, align 8, !alias.scope !21932, !noalias !21935, !noundef !29
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit135
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !21932, !noalias !21935, !noundef !29
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !21932, !noalias !21935, !noundef !29
  %i.eo = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !21932 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21937)
  call void @llvm.experimental.noalias.scope.decl(metadata !21940)
  %i.ep = lshr i64 %i.eo, 57
  %i.eq = trunc nuw nsw i64 %i.ep to i8
  %i.er = load i64, ptr %i.af, align 8, !alias.scope !21943, !noalias !21944, !noundef !29 ; 2 uses
  %i.es = load ptr, ptr %i.c, align 8, !alias.scope !21943, !noalias !21944, !nonnull !29, !noundef !29 ; 2 uses
  %i.et = insertelement <16 x i8> poison, i8 %i.eq, i64 0
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.p ], [ %i.fl, %bb.s ]
  %.pn.i.i = phi i64 [ %i.eo, %bb.p ], [ %i.fm, %bb.s ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.er     ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ev, align 1, !noalias !21947 ; 2 uses
  %i.ew = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.eu
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.q, %bb.r
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fk, %bb.r ], [ %i.ex, %bb.q ] ; 3 uses
  %i.ey = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = add i64 %.sroa.01.0.i.i.i, %i.ez
  %i.fb = and i64 %i.fa, %i.er
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds [32 x i8], ptr %i.es, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -32
  %.val2.i.i.i = load i64, ptr %i.fe, align 8, !noalias !21950, !noundef !29
  %i.ff = icmp eq i64 %.promoted.i.i.i, %.val2.i.i.i
  br i1 %i.ff, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECskXtk6F4WjxZ_4just.exit, label %bb.r, !prof !36

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.q
  %i.fg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fh = bitcast <16 x i1> %i.fg to i16
  %i.fi = icmp eq i16 %i.fh, 0
  br i1 %i.fi, label %bb.s, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, !prof !340

bb.r:                                             ; preds = %.lr.ph.i.i13
  %i.fj = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fk = and i16 %i.fj, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fk, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i13

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fl = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fm = add i64 %.sroa.01.0.i.i.i, %i.fl
  br label %bb.q

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.i.i13
  br i1 %i.z, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECskXtk6F4WjxZ_4just.exit
  br i1 %i.ch, label %bb.w, label %.invoke

bb.u:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECskXtk6F4WjxZ_4just.exit
  br i1 %i.ch, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.076.0156 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.076.0156 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.5.1.i.in.i14 = phi ptr [ %i.fr, %bb.w ], [ %i.fo, %bb.v ]
  %.sroa.0.1.i.in.i15 = phi ptr [ %i.fq, %bb.w ], [ %i.fn, %bb.v ]
  %.sroa.0.1.i.i16 = load ptr, ptr %.sroa.0.1.i.in.i15, align 8, !noalias !21953, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i17 = load i64, ptr %.sroa.5.1.i.in.i14, align 8, !noalias !21953, !noundef !29 ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fd, i64 -16
  %i.ft = load ptr, ptr %i.fs, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !29 ; 2 uses
  %.idx = shl nuw nsw i64 %i.fv, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx ; 2 uses
  %.not.i20 = icmp eq i64 %i.fv, 0
  br i1 %.not.i20, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  br i1 %i.ah, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.us.i
  %i.fx = phi ptr [ %i.fy, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.us.i ], [ %i.ft, %.lr.ph.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %.val3.us.i = load i64, ptr %i.fx, align 8, !noalias !21959, !noundef !29 ; 2 uses
  %i.fz = icmp ult i64 %.val3.us.i, %i.aj
  br i1 %i.fz, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.i, label %.invoke

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.i: ; preds = %.lr.ph.split.us.i
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.val3.us.i ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %.sroa.5.1.i.i.i.us.i = load i64, ptr %i.gb, align 8, !noalias !21964, !noundef !29
  %i.gc = icmp eq i64 %.sroa.5.1.i.i17, %.sroa.5.1.i.i.i.us.i
  br i1 %i.gc, label %.split.us.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.us.i

.split.us.i:                                      ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.i
  %i.gd = getelementptr i8, ptr %i.ga, i64 8
  %.sroa.0.1.i.i.i.us.i = load ptr, ptr %i.gd, align 8, !noalias !21964, !nonnull !29, !noundef !29
  %bcmp.i.i.us.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i16, ptr nonnull readonly %.sroa.0.1.i.i.i.us.i, i64 %.sroa.5.1.i.i17), !alias.scope !21970, !noalias !21959
  %i.ge = icmp eq i32 %bcmp.i.i.us.i, 0
  br i1 %i.ge, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0ECskXtk6F4WjxZ_4just.exit, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.us.i

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.us.i: ; preds = %.split.us.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.i
  %.not19.i = icmp eq ptr %i.fy, %i.fw
  br i1 %.not19.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i
  %i.gf = phi ptr [ %i.gg, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i ], [ %i.ft, %.lr.ph.i ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %.val3.i = load i64, ptr %i.gf, align 8, !noalias !21959, !noundef !29 ; 2 uses
  %i.gh = icmp ult i64 %.val3.i, %i.aj
  br i1 %i.gh, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i, label %.invoke

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %.lr.ph.split.i
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.val3.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.5.1.i.i.i.i = load i64, ptr %i.gj, align 8, !noalias !21964, !noundef !29
  %i.gk = icmp eq i64 %.sroa.5.1.i.i17, %.sroa.5.1.i.i.i.i
  br i1 %i.gk, label %.split.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i

.split.i:                                         ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.0.1.i.i.i.i = load ptr, ptr %i.gi, align 8, !noalias !21964, !nonnull !29, !noundef !29
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i16, ptr nonnull readonly %.sroa.0.1.i.i.i.i, i64 %.sroa.5.1.i.i17), !alias.scope !21970, !noalias !21959
  %i.gl = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gl, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0ECskXtk6F4WjxZ_4just.exit, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i: ; preds = %.split.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i
  %.not18.i = icmp eq ptr %i.gg, %i.fw
  br i1 %.not18.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %.lr.ph.split.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0ECskXtk6F4WjxZ_4just.exit: ; preds = %.split.i, %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit137

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit: ; preds = %._crit_edge.i.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0CskXtk6F4WjxZ_4just.exit.backedge.us.i, %bb.x, %.loopexit135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond172.not = icmp eq i64 %i.as, %i.am
  br i1 %exitcond172.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12, label %bb.c

.loopexit137:                                     ; preds = %bb.ad, %bb.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.2 = phi i8 [ 2, %bb.i ], [ 1, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0ECskXtk6F4WjxZ_4just.exit ], [ 2, %bb.ad ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21974)
  call void @llvm.experimental.noalias.scope.decl(metadata !21977)
  call void @llvm.experimental.noalias.scope.decl(metadata !21980)
  call void @llvm.experimental.noalias.scope.decl(metadata !21983)
  call void @llvm.experimental.noalias.scope.decl(metadata !21986)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !21989, !noundef !29 ; 3 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40, label %bb.y

bb.y:                                             ; preds = %.loopexit137
  call void @llvm.experimental.noalias.scope.decl(metadata !21990)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !21993, !noundef !29 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gs = load ptr, ptr %i.c, align 8, !alias.scope !21993, !nonnull !29, !noundef !29 ; 3 uses
  %.val3.i.i.i.i.i.i.i22 = load <16 x i8>, ptr %i.gs, align 16, !noalias !21994
  %i.gt = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i22, splat (i8 -1)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gv = bitcast <16 x i1> %i.gt to i16
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34, %bb.z
  %.sroa.06.017.i.i.i.i.i.i23 = phi ptr [ %i.gs, %bb.z ], [ %.sroa.06.1.i.i.i.i.i.i30, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i24 = phi ptr [ %i.gu, %bb.z ], [ %.sroa.6.1.i.i.i.i.i.i29, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i25 = phi i16 [ %i.gv, %bb.z ], [ %i.he, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i26 = phi i64 [ %i.gq, %bb.z ], [ %i.hh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34 ]
  %.not11.i.i.i.i.i.i.i27 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i25, 0
  br i1 %.not11.i.i.i.i.i.i.i27, label %.lr.ph.i.i.i.i.i.i.i36, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i.i36:                           ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i.i36
  %i.gw = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.sroa.6.016.i.i.i.i.i.i24, %bb.aa ] ; 2 uses
  %i.gx = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.sroa.06.017.i.i.i.i.i.i23, %bb.aa ]
  %.val9.i.i.i.i.i.i.i37 = load <16 x i8>, ptr %i.gw, align 16, !noalias !21997
  %i.gy = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i37, splat (i8 -1)
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -512 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i38 = bitcast <16 x i1> %i.gy to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i39 = icmp eq i16 %.cast.i.i.i.i.i.i.i38, 0
  br i1 %.not.i.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i36, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i28

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i36, %bb.aa
  %.sroa.6.1.i.i.i.i.i.i29 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i24, %bb.aa ], [ %i.ha, %.lr.ph.i.i.i.i.i.i.i36 ]
  %.sroa.06.1.i.i.i.i.i.i30 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i23, %bb.aa ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i36 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i31 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i25, %bb.aa ], [ %.cast.i.i.i.i.i.i.i38, %.lr.ph.i.i.i.i.i.i.i36 ] ; 3 uses
  %i.hb = add i16 %.lcssa.i.i.i.i.i.i.i31, -1
  %i.hc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i31, i1 true)
  %i.hd = zext nneg i16 %i.hc to i64
  %i.he = and i16 %i.hb, %.lcssa.i.i.i.i.i.i.i31
  %i.hf = sub nsw i64 0, %i.hd
  %i.hg = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i30, i64 %i.hf ; 2 uses
  %i.hh = add i64 %.sroa.108.014.i.i.i.i.i.i26, -1 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 -24
  %.val.i.i.i.i.i.i32 = load i64, ptr %i.hi, align 8, !alias.scope !22000, !noalias !21993 ; 2 uses
  %i.hj = icmp eq i64 %.val.i.i.i.i.i.i32, 0
  br i1 %i.hj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34, label %bb.ab

bb.ab:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i28
  %i.hk = getelementptr i8, ptr %i.hg, i64 -16
  %.val5.i.i.i.i.i.i33 = load ptr, ptr %i.hk, align 8, !noalias !21993, !nonnull !29, !noundef !29
  %i.hl = shl nuw i64 %.val.i.i.i.i.i.i32, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i33, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !22003
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34: ; preds = %bb.ab, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i28
  %i.hm = icmp eq i64 %i.hh, 0
  br i1 %i.hm, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35, label %bb.aa

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i34, %bb.y
  %i.hn = shl i64 %i.gn, 5                        ; 2 uses
  %i.ho = add i64 %i.hn, 32                       ; 2 uses
  %i.hp = add i64 %i.gn, 17
  %i.hq = add i64 %i.hp, %i.ho                    ; 4 uses
  %i.hr = icmp uge i64 %i.hq, %i.ho
  %i.hs = icmp ult i64 %i.hq, 9223372036854775793
  call void @llvm.assume(i1 %i.hr)
  call void @llvm.assume(i1 %i.hs)
  %i.ht = icmp eq i64 %i.hq, 0
  br i1 %i.ht, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split

bb.ac:                                            ; preds = %bb.b
  %i.hu = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.hu, label %.loopexit137, label %bb.ae

bb.ae:                                            ; preds = %bb.b, %bb.ad
  %i.hv = icmp ult i64 %.sroa.0.097154, %i.r      ; 2 uses
  br i1 %i.p, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %i.hv, label %bb.ai, label %.invoke

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.hv, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.0.097154 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sroa.0.097154 ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %i.ia = getelementptr i8, ptr %i.hy, i64 16
  br label %bb.aj

.invoke:                                          ; preds = %bb.af, %bb.ag, %bb.t, %bb.u, %bb.k, %bb.l, %.lr.ph.split.i, %.lr.ph.split.us.i
  %i.ib = phi ptr [ @357, %bb.t ], [ @568, %.lr.ph.split.us.i ], [ @568, %.lr.ph.split.i ], [ @356, %bb.k ], [ @356, %bb.l ], [ @357, %bb.u ], [ @358, %bb.ag ], [ @358, %bb.af ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ib) #75
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.5.1.i.in.i41 = phi ptr [ %i.ia, %bb.ai ], [ %i.hx, %bb.ah ]
  %.sroa.0.1.i.in.i42 = phi ptr [ %i.hz, %bb.ai ], [ %i.hw, %bb.ah ]
  %.sroa.0.1.i.i43 = load ptr, ptr %.sroa.0.1.i.in.i42, align 8, !noalias !22006, !nonnull !29, !noundef !29 ; 2 uses
  %.sroa.5.1.i.i44 = load i64, ptr %.sroa.5.1.i.in.i41, align 8, !noalias !22006, !noundef !29 ; 4 uses
  %i.ic = icmp samesign eq i64 %.sroa.5.1.i.i44, 0
  br i1 %i.ic, label %.loopexit138, label %.lr.ph.i.i48.preheader

.lr.ph.i.i48.preheader:                           ; preds = %bb.aj
  %xtraiter = and i64 %.sroa.5.1.i.i44, 7         ; 3 uses
  %i.id = icmp ult i64 %.sroa.5.1.i.i44, 8
  br i1 %i.id, label %.lr.ph.i.i48.epil.preheader, label %.lr.ph.i.i48.preheader.new

.lr.ph.i.i48.preheader.new:                       ; preds = %.lr.ph.i.i48.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i44, -8
  br label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %.lr.ph.i.i48, %.lr.ph.i.i48.preheader.new
  %.sroa.0.0.i1.i.i49 = phi ptr [ %.sroa.0.1.i.i43, %.lr.ph.i.i48.preheader.new ], [ %i.jo, %.lr.ph.i.i48 ] ; 9 uses
  %i.ie = phi i64 [ -3750763034362895579, %.lr.ph.i.i48.preheader.new ], [ %i.js, %.lr.ph.i.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i48.preheader.new ], [ %niter.next.7, %.lr.ph.i.i48 ]
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 1
  %i.ig = load i8, ptr %.sroa.0.0.i1.i.i49, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.ih = zext i8 %i.ig to i64
  %i.ii = xor i64 %i.ie, %i.ih
  %i.ij = mul i64 %i.ii, 1099511628211
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 2
  %i.il = load i8, ptr %i.if, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.im = zext i8 %i.il to i64
  %i.in = xor i64 %i.ij, %i.im
  %i.io = mul i64 %i.in, 1099511628211
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 3
  %i.iq = load i8, ptr %i.ik, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.ir = zext i8 %i.iq to i64
  %i.is = xor i64 %i.io, %i.ir
  %i.it = mul i64 %i.is, 1099511628211
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 4
  %i.iv = load i8, ptr %i.ip, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.iw = zext i8 %i.iv to i64
  %i.ix = xor i64 %i.it, %i.iw
  %i.iy = mul i64 %i.ix, 1099511628211
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 5
  %i.ja = load i8, ptr %i.iu, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.jb = zext i8 %i.ja to i64
  %i.jc = xor i64 %i.iy, %i.jb
  %i.jd = mul i64 %i.jc, 1099511628211
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 6
  %i.jf = load i8, ptr %i.iz, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.jg = zext i8 %i.jf to i64
  %i.jh = xor i64 %i.jd, %i.jg
  %i.ji = mul i64 %i.jh, 1099511628211
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 7
  %i.jk = load i8, ptr %i.je, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.jl = zext i8 %i.jk to i64
  %i.jm = xor i64 %i.ji, %i.jl
  %i.jn = mul i64 %i.jm, 1099511628211
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49, i64 8 ; 2 uses
  %i.jp = load i8, ptr %i.jj, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.jq = zext i8 %i.jp to i64
  %i.jr = xor i64 %i.jn, %i.jq
  %i.js = mul i64 %i.jr, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit138.loopexit.unr-lcssa, label %.lr.ph.i.i48

.loopexit138.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit138.loopexit, label %.lr.ph.i.i48.epil.preheader

.lr.ph.i.i48.epil.preheader:                      ; preds = %.loopexit138.loopexit.unr-lcssa, %.lr.ph.i.i48.preheader
  %.sroa.0.0.i1.i.i49.epil.init = phi ptr [ %.sroa.0.1.i.i43, %.lr.ph.i.i48.preheader ], [ %i.jo, %.loopexit138.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i48.preheader ], [ %i.js, %.loopexit138.loopexit.unr-lcssa ]
  %lcmp.mod251 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod251)
  br label %.lr.ph.i.i48.epil

.lr.ph.i.i48.epil:                                ; preds = %.lr.ph.i.i48.epil, %.lr.ph.i.i48.epil.preheader
  %.sroa.0.0.i1.i.i49.epil = phi ptr [ %i.ju, %.lr.ph.i.i48.epil ], [ %.sroa.0.0.i1.i.i49.epil.init, %.lr.ph.i.i48.epil.preheader ] ; 2 uses
  %i.jt = phi i64 [ %i.jy, %.lr.ph.i.i48.epil ], [ %.epil.init, %.lr.ph.i.i48.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i48.epil ], [ 0, %.lr.ph.i.i48.epil.preheader ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i49.epil, i64 1
  %i.jv = load i8, ptr %.sroa.0.0.i1.i.i49.epil, align 1, !alias.scope !22012, !noalias !22019, !noundef !29
  %i.jw = zext i8 %i.jv to i64
  %i.jx = xor i64 %i.jt, %i.jw
  %i.jy = mul i64 %i.jx, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit138.loopexit, label %.lr.ph.i.i48.epil, !llvm.loop !22023

.loopexit138.loopexit:                            ; preds = %.lr.ph.i.i48.epil, %.loopexit138.loopexit.unr-lcssa
  %.lcssa246 = phi i64 [ %i.js, %.loopexit138.loopexit.unr-lcssa ], [ %i.jy, %.lr.ph.i.i48.epil ]
  %i.jz = xor i64 %.lcssa246, 255
  %i.ka = mul i64 %i.jz, 1099511628211
  br label %.loopexit138

.loopexit138:                                     ; preds = %.loopexit138.loopexit, %bb.aj
  %.promoted.i.i.i50 = phi i64 [ -5808391946409677970, %bb.aj ], [ %i.ka, %.loopexit138.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted.i.i.i50, ptr %i.a, align 8, !noalias !22027
  %.val.i52 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !22024, !noalias !22029, !noundef !29
  %.val3.i53 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !22024, !noalias !22029, !noundef !29
  %i.kb = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i52, i64 %.val3.i53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !22027 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22030)
  call void @llvm.experimental.noalias.scope.decl(metadata !22033)
  %i.kc = lshr i64 %i.kb, 57
  %i.kd = trunc nuw nsw i64 %i.kc to i8           ; 3 uses
  %i.ke = load i64, ptr %i.u, align 8, !alias.scope !22036, !noalias !22037, !noundef !29 ; 3 uses
  %i.kf = load ptr, ptr %i.c, align 8, !alias.scope !22036, !noalias !22037, !nonnull !29, !noundef !29 ; 3 uses
  %i.kg = insertelement <16 x i8> poison, i8 %i.kd, i64 0
  %i.kh = shufflevector <16 x i8> %i.kg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.loopexit138
  %.sroa.9.0.i.i.i54 = phi i64 [ 0, %.loopexit138 ], [ %i.ky, %bb.am ]
  %.pn.i.i55 = phi i64 [ %i.kb, %.loopexit138 ], [ %i.kz, %bb.am ]
  %.sroa.01.0.i.i.i56 = and i64 %.pn.i.i55, %i.ke ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.sroa.01.0.i.i.i56
  %.sroa.0.0.copyload.i24.i.i57 = load <16 x i8>, ptr %i.ki, align 1, !noalias !22040 ; 2 uses
  %i.kj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i57, %i.kh
  %i.kk = bitcast <16 x i1> %i.kj to i16          ; 2 uses
  %.not.i.not30.i.i58 = icmp eq i16 %i.kk, 0
  br i1 %.not.i.not30.i.i58, label %._crit_edge.i.i63, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %bb.ak, %bb.al
  %.sroa.06.0.i31.i.i60 = phi i16 [ %i.kx, %bb.al ], [ %i.kk, %bb.ak ] ; 3 uses
  %i.kl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i60, i1 true)
  %i.km = zext nneg i16 %i.kl to i64
  %i.kn = add i64 %.sroa.01.0.i.i.i56, %i.km
  %i.ko = and i64 %i.kn, %i.ke
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds [32 x i8], ptr %i.kf, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -32
  %.val2.i.i.i61 = load i64, ptr %i.kr, align 8, !noalias !22043, !noundef !29
  %i.ks = icmp eq i64 %.val2.i.i.i61, %.promoted.i.i.i50
  br i1 %i.ks, label %bb.ar, label %bb.al, !prof !36

._crit_edge.i.i63:                                ; preds = %bb.al, %bb.ak
  %i.kt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i57, splat (i8 -1)
  %i.ku = bitcast <16 x i1> %i.kt to i16
  %i.kv = icmp eq i16 %i.ku, 0
  br i1 %i.kv, label %bb.am, label %bb.an, !prof !340

bb.al:                                            ; preds = %.lr.ph.i.i59
  %i.kw = add i16 %.sroa.06.0.i31.i.i60, -1
  %i.kx = and i16 %i.kw, %.sroa.06.0.i31.i.i60    ; 2 uses
  %.not.i.not.i.i62 = icmp eq i16 %i.kx, 0
  br i1 %.not.i.not.i.i62, label %._crit_edge.i.i63, label %.lr.ph.i.i59

bb.am:                                            ; preds = %._crit_edge.i.i63
  %i.ky = add i64 %.sroa.9.0.i.i.i54, 16          ; 2 uses
  %i.kz = add i64 %.sroa.01.0.i.i.i56, %i.ky
  br label %bb.ak

bb.an:                                            ; preds = %._crit_edge.i.i63
  %i.la = load i64, ptr %i.v, align 8, !alias.scope !22046, !noalias !22049, !noundef !29
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %bb.ao, label %bb.ap, !prof !340

bb.ao:                                            ; preds = %bb.an
  %i.lc = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc64:                                         ; preds = %bb.ao
  %.val.i.i.pre = load ptr, ptr %i.c, align 8, !alias.scope !22051, !noalias !22054
  %.val3.i.i.pre = load i64, ptr %i.u, align 8, !alias.scope !22051, !noalias !22054
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc64, %bb.an
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc64 ], [ %i.ke, %bb.an ] ; 4 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %.noexc64 ], [ %i.kf, %bb.an ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !22051)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.kb   ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.ld, align 1, !noalias !22058
  %i.le = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.lf = bitcast <16 x i1> %i.le to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.lf, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !2941

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ap
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.ap ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.lf, %bb.ap ], [ %i.lw, %.lr.ph.i.i.i ]
  %i.lg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.lh = zext nneg i16 %i.lg to i64
  %i.li = add i64 %.sroa.0.0.lcssa.i.i.i, %i.lh
  %i.lj = and i64 %i.li, %.val3.i.i               ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !noalias !22061, !noundef !29 ; 2 uses
  %i.lm = icmp sgt i8 %i.ll, -1
  br i1 %i.lm, label %bb.aq, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !340

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !22061
  %i.ln = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.lo = bitcast <16 x i1> %i.ln to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.lo, 0
  %i.lp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.lo, i1 true)
  %i.lq = zext nneg i16 %i.lp to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i67 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.lq
  %.pre.i.i68 = load i8, ptr %.phi.trans.insert.i.i67, align 1, !noalias !22061
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.ap ]
  %i.lr = phi i64 [ %i.ls, %.lr.ph.i.i.i ], [ 0, %bb.ap ]
  %i.ls = add i64 %i.lr, 16                       ; 2 uses
  %i.lt = add i64 %i.ls, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.lt, %.val3.i.i    ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.lu, align 1, !noalias !22058
  %i.lv = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.lw = bitcast <16 x i1> %i.lv to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.lw, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !2943

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.aq, %._crit_edge.i.i.i
  %i.lx = phi i8 [ %.pre.i.i68, %bb.aq ], [ %i.ll, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.lq, %bb.aq ], [ %i.lj, %._crit_edge.i.i.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.lz = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.ma = and i64 %i.lz, %.val3.i.i
  store i8 %i.kd, ptr %i.ly, align 1, !noalias !22061
  %i.mb = getelementptr i8, ptr %.val.i.i, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 16
  store i8 %i.kd, ptr %i.mc, align 1, !noalias !22061
  %i.md = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.me = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.md ; 5 uses
  %i.mf = and i8 %i.lx, 1
  %i.mg = zext nneg i8 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %i.me, i64 -32
  store i64 %.promoted.i.i.i50, ptr %i.mh, align 8, !noalias !22062
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.me, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !22062
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.me, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !22062
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.me, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !22062
  %i.mi = load <2 x i64>, ptr %i.v, align 8, !alias.scope !22051, !noalias !22054
  %i.mj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.mg, i64 0
  %i.mk = sub <2 x i64> %i.mi, %i.mj
  store <2 x i64> %i.mk, ptr %i.v, align 8, !alias.scope !22051, !noalias !22054
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.me, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.kq, %bb.ar ] ; 3 uses
  %.sroa.0.0.i66 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !alias.scope !22063, !noundef !29 ; 3 uses
  %i.mn = load i64, ptr %.sroa.0.0.i66, align 8, !range !306, !alias.scope !22063, !noundef !29
  %i.mo = icmp eq i64 %i.mm, %i.mn
  br i1 %i.mo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i66) #74
          to label %bb.au unwind label %.loopexit.split-lp.loopexit
end_hunk_6
begin_hunk_7_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
bb.nb:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.beu = icmp eq ptr %i.beo, %i.bel
  br i1 %i.beu, label %.backedge, label %.lr.ph1292

bb.nc:                                            ; preds = %bb.ml
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.0194.0, i64 184
  %i.bew = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bew, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !36937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36944
  %i.bex = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bex, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !36937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !36937
  %i.bey = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bey, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !36937
  %i.bez = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i64 %.sroa.028.0.i, ptr %i.bez, align 8, !alias.scope !36934, !noalias !36937
  %.sroa.6.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx30.i, align 8, !alias.scope !36934, !noalias !36937
  %.sroa.7.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx32.i, align 8, !alias.scope !36934, !noalias !36937
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store i32 %i.bck, ptr %i.bfa, align 8, !alias.scope !36934, !noalias !36937
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i64 %.val18.i, ptr %i.bfb, align 8, !alias.scope !36934, !noalias !36937
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %.sroa.635.0.i, ptr %.sroa.635.0..sroa_idx.i, align 8, !alias.scope !36934, !noalias !36937
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i64 %.val18.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !36934, !noalias !36937
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bfc, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !36937
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bfd, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bev, i64 72, i1 false), !alias.scope !36944
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.as, i64 340
  store i32 %i.bcy, ptr %i.bfe, align 4, !alias.scope !36934, !noalias !36937
  %i.bff = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bff, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !36937
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  store i64 %i.bde, ptr %i.bfg, align 8, !alias.scope !36934, !noalias !36937
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  store i8 %i.bdg, ptr %i.bfh, align 8, !alias.scope !36934, !noalias !36937
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.as, i64 345
  store i8 %i.bdi, ptr %i.bfi, align 1, !alias.scope !36934, !noalias !36937
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bfj, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !36937
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.as, i64 346
  store i8 %i.bdo, ptr %i.bfk, align 2, !alias.scope !36934, !noalias !36937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !36944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !37028
  %i.bfl = call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 352, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !37028 ; 3 uses
  %i.bfm = icmp eq ptr %i.bfl, null
  br i1 %i.bfm, label %bb.nd, label %bb.ng, !prof !7

bb.nd:                                            ; preds = %bb.nc
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #71
          to label %.noexc467 unwind label %bb.ne

.noexc467:                                        ; preds = %bb.nd
  unreachable

bb.ne:                                            ; preds = %bb.nd
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.as) #72
          to label %.body unwind label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bfo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.ng:                                            ; preds = %bb.nc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.bfl, ptr noundef nonnull align 8 dereferenceable(352) %i.as, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.bfp = load ptr, ptr %i.da, align 8, !nonnull !29, !noundef !29 ; 6 uses
  %i.bfq = load i64, ptr %i.cj, align 8, !noundef !29 ; 9 uses
  %.idx = mul nuw nsw i64 %i.bfq, 448
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 %.idx
  %i.bfs = icmp eq i64 %i.bfq, 0
  br i1 %i.bfs, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ng, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.bgn, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ], [ 0, %bb.ng ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.bgm, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ], [ 0, %bb.ng ]
  %i.bft = getelementptr inbounds nuw [448 x i8], ptr %i.bfp, i64 %.sroa.04.0.i.i ; 8 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 104
  %i.bfv = load i64, ptr %i.bfu, align 8, !range !266, !alias.scope !37031, !noundef !29
  %.not.i.i.i.i.i469 = icmp ne i64 %i.bfv, -1
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bft, i64 441
  %i.bfx = load i8, ptr %i.bfw, align 1, !range !273, !alias.scope !37031
  %i.bfy = trunc nuw i8 %i.bfx to i1
  %or.cond.i.i.i.i470 = select i1 %.not.i.i.i.i.i469, i1 true, i1 %i.bfy
  br i1 %or.cond.i.i.i.i470, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i, label %bb.nh

bb.nh:                                            ; preds = %.preheader.i
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bft, i64 443
  %i.bga = load i8, ptr %i.bfz, align 1, !range !190, !alias.scope !37031, !noundef !29
  %.not4.i.i.i.i.i = icmp eq i8 %i.bga, 2
  br i1 %.not4.i.i.i.i.i, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bft, i64 16
  %i.bgc = load i64, ptr %i.bgb, align 8, !range !274, !alias.scope !37031, !noundef !29
  %i.bgd = trunc nuw i64 %i.bgc to i1
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bft, i64 24
  %i.bgf = load i64, ptr %i.bge, align 8, !alias.scope !37031
  %.not5.i.i.i.i.i = icmp ne i64 %i.bgf, 0
  %or.cond4.not7.i.i.i.i = select i1 %i.bgd, i1 %.not5.i.i.i.i.i, i1 false
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bft, i64 56
  %i.bgh = load i64, ptr %i.bgg, align 8, !range !183, !alias.scope !37031
  %.not6.i.i.i.i.i = icmp eq i64 %i.bgh, -1
  %or.cond6.i.i.i.i = select i1 %or.cond4.not7.i.i.i.i, i1 %.not6.i.i.i.i.i, i1 false
  br i1 %or.cond6.i.i.i.i, label %bb.nk, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

bb.nj:                                            ; preds = %bb.nh
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bft, i64 56
  %.old5.i.i.i.i = load i64, ptr %.old.i.i.i.i, align 8, !range !183, !alias.scope !37031, !noundef !29
  %.not6.i.old.i.i.i.i = icmp eq i64 %.old5.i.i.i.i, -1
  br i1 %.not6.i.old.i.i.i.i, label %bb.nk, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bft, i64 432
  %i.bgj = load i32, ptr %i.bgi, align 8, !range !586, !alias.scope !37031, !noundef !29
  %i.bgk = icmp eq i32 %i.bgj, -1
  %i.bgl = zext i1 %i.bgk to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i: ; preds = %bb.nk, %bb.nj, %bb.ni, %.preheader.i
  %.sroa.0.0.i.i.i.i.i471 = phi i64 [ %i.bgl, %bb.nk ], [ 0, %bb.ni ], [ 0, %bb.nj ], [ 0, %.preheader.i ]
  %i.bgm = add i64 %.sroa.0.0.i.i.i.i.i471, %.sroa.02.0.i.i ; 5 uses
  %i.bgn = add nuw i64 %.sroa.04.0.i.i, 1         ; 2 uses
  %i.bgo = icmp eq i64 %i.bgn, %i.bfq
  br i1 %i.bgo, label %bb.nl, label %.preheader.i

bb.nl:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i
  %i.bgp = icmp ule i64 %i.bgm, %i.bfq
  call void @llvm.assume(i1 %i.bgp)
  br label %.lr.ph.i474

.lr.ph.i474:                                      ; preds = %bb.nl, %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i
  %i.bgq = phi ptr [ %i.bgr, %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i ], [ %i.bfp, %bb.nl ] ; 4 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 448 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgq, i64 443
  %i.bgt = load i8, ptr %i.bgs, align 1, !range !190, !alias.scope !37036, !noalias !37039, !noundef !29
  %.not.i.i475 = icmp eq i8 %i.bgt, 1
  br i1 %.not.i.i475, label %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i474
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgq, i64 56
  %i.bgv = load i64, ptr %i.bgu, align 8, !range !183, !alias.scope !37036, !noalias !37039, !noundef !29
  %.not2.i.i = icmp eq i64 %i.bgv, -1
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgq, i64 432
  %i.bgx = load i32, ptr %i.bgw, align 8, !range !586, !alias.scope !37036, !noalias !37039
  %i.bgy = icmp eq i32 %i.bgx, -1
  %.sroa.01.0.i.i = select i1 %.not2.i.i, i1 %i.bgy, i1 false
  br i1 %.sroa.01.0.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_17invocation_parserNtB2m_16InvocationParser16parse_invocations4_0EBU_.exit, label %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i

_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i474
  %.not5.i476 = icmp eq ptr %i.bgr, %i.bfr
  br i1 %.not5.i476, label %.preheader.i477.preheader, label %.lr.ph.i474

.preheader.i477.preheader:                        ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i
  %xtraiter3025 = and i64 %i.bfq, 1
  %i.bgz = icmp eq i64 %i.bfq, 1
  br i1 %i.bgz, label %.preheader.i477.epil.preheader, label %.preheader.i477.preheader.new

.preheader.i477.preheader.new:                    ; preds = %.preheader.i477.preheader
  %unroll_iter = and i64 %i.bfq, -2
  br label %.preheader.i477

.preheader.i477:                                  ; preds = %.preheader.i477, %.preheader.i477.preheader.new
  %.sroa.04.0.i.i478 = phi i64 [ 0, %.preheader.i477.preheader.new ], [ %i.bhm, %.preheader.i477 ] ; 3 uses
  %.sroa.02.0.i.i479 = phi i64 [ 0, %.preheader.i477.preheader.new ], [ %i.bhl, %.preheader.i477 ]
  %niter = phi i64 [ 0, %.preheader.i477.preheader.new ], [ %niter.next.1, %.preheader.i477 ]
  %i.bha = getelementptr inbounds nuw [448 x i8], ptr %i.bfp, i64 %.sroa.04.0.i.i478 ; 2 uses
  %i.bhb = getelementptr i8, ptr %i.bha, i64 56
  %.val.i.i480 = load i64, ptr %i.bhb, align 8, !range !183, !alias.scope !37042, !noundef !29
  %i.bhc = getelementptr i8, ptr %i.bha, i64 432
  %.val11.i.i = load i32, ptr %i.bhc, align 8, !alias.scope !37042
  %.not.i.i.i.i.i481 = icmp eq i64 %.val.i.i480, -1
  %i.bhd = icmp eq i32 %.val11.i.i, -1
  %.sroa.0.0.i.i.i.i.i482 = select i1 %.not.i.i.i.i.i481, i1 %i.bhd, i1 false
  %i.bhe = zext i1 %.sroa.0.0.i.i.i.i.i482 to i64
  %i.bhf = add i64 %.sroa.02.0.i.i479, %i.bhe
  %i.bhg = getelementptr inbounds nuw [448 x i8], ptr %i.bfp, i64 %.sroa.04.0.i.i478 ; 2 uses
  %i.bhh = getelementptr i8, ptr %i.bhg, i64 504
  %.val.i.i480.1 = load i64, ptr %i.bhh, align 8, !range !183, !alias.scope !37042, !noundef !29
  %i.bhi = getelementptr i8, ptr %i.bhg, i64 880
  %.val11.i.i.1 = load i32, ptr %i.bhi, align 8, !alias.scope !37042
  %.not.i.i.i.i.i481.1 = icmp eq i64 %.val.i.i480.1, -1
  %i.bhj = icmp eq i32 %.val11.i.i.1, -1
  %.sroa.0.0.i.i.i.i.i482.1 = select i1 %.not.i.i.i.i.i481.1, i1 %i.bhj, i1 false
  %i.bhk = zext i1 %.sroa.0.0.i.i.i.i.i482.1 to i64
  %i.bhl = add i64 %i.bhf, %i.bhk                 ; 3 uses
  %i.bhm = add nuw nsw i64 %.sroa.04.0.i.i478, 2  ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, label %.preheader.i477

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i477
  %lcmp.mod3026.not = icmp eq i64 %xtraiter3025, 0
  br i1 %lcmp.mod3026.not, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i477.epil.preheader

.preheader.i477.epil.preheader:                   ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %.preheader.i477.preheader
  %.sroa.04.0.i.i478.epil.init = phi i64 [ 0, %.preheader.i477.preheader ], [ %i.bhm, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i479.epil.init = phi i64 [ 0, %.preheader.i477.preheader ], [ %i.bhl, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3028 = trunc i64 %i.bfq to i1
  call void @llvm.assume(i1 %lcmp.mod3028)
  %i.bhn = getelementptr inbounds nuw [448 x i8], ptr %i.bfp, i64 %.sroa.04.0.i.i478.epil.init ; 2 uses
  %i.bho = getelementptr i8, ptr %i.bhn, i64 56
  %.val.i.i480.epil = load i64, ptr %i.bho, align 8, !range !183, !alias.scope !37042, !noundef !29
  %i.bhp = getelementptr i8, ptr %i.bhn, i64 432
  %.val11.i.i.epil = load i32, ptr %i.bhp, align 8, !alias.scope !37042
  %.not.i.i.i.i.i481.epil = icmp eq i64 %.val.i.i480.epil, -1
  %i.bhq = icmp eq i32 %.val11.i.i.epil, -1
  %.sroa.0.0.i.i.i.i.i482.epil = select i1 %.not.i.i.i.i.i481.epil, i1 %i.bhq, i1 false
  %i.bhr = zext i1 %.sroa.0.0.i.i.i.i.i482.epil to i64
  %i.bhs = add i64 %.sroa.02.0.i.i479.epil.init, %i.bhr
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %.preheader.i477.epil.preheader, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %bb.ng
  %.sroa.0.0.i.i472794.ph802 = phi i64 [ 0, %bb.ng ], [ %i.bgm, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ], [ %i.bgm, %.preheader.i477.epil.preheader ]
  %.sroa.0.0.i.i483 = phi i64 [ 0, %bb.ng ], [ %i.bhl, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ], [ %i.bhs, %.preheader.i477.epil.preheader ] ; 2 uses
  %i.bht = icmp ule i64 %.sroa.0.0.i.i483, %i.bfq
  call void @llvm.assume(i1 %i.bht)
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_17invocation_parserNtB2m_16InvocationParser16parse_invocations4_0EBU_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_17invocation_parserNtB2m_16InvocationParser16parse_invocations4_0EBU_.exit: ; preds = %.split.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit
  %.sroa.0.0.i.i472794797 = phi i64 [ %.sroa.0.0.i.i472794.ph802, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit ], [ %i.bgm, %.split.i ]
  %.sroa.0121.0 = phi i64 [ %.sroa.0.0.i.i483, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit ], [ -2, %.split.i ]
  store i64 71, ptr %0, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bfl, ptr %.sroa.4116.0..sroa_idx, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.067.0.lcssa, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i472794797, ptr %.sroa.6118.0..sroa_idx, align 8
  %.sroa.7119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0121.0, ptr %.sroa.7119.0..sroa_idx, align 8
  br label %bb.kd

bb.nm:                                            ; preds = %bb.kg
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.ayz, i64 104
  %i.bhv = load i64, ptr %i.bhu, align 8, !range !266, !noundef !29
  %.not231 = icmp eq i64 %i.bhv, -1
  br i1 %.not231, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.no, %bb.np, %bb.kg
  %i.bhw = icmp ult i64 %i.ayy, %..i.i.i
  br i1 %i.bhw, label %bb.kg, label %.outer._crit_edge

bb.no:                                            ; preds = %bb.nm
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.ayz, i64 443
  %i.bhy = load i8, ptr %i.bhx, align 1, !range !190, !noundef !29
  %i.bhz = icmp eq i8 %i.bhy, 2
  br i1 %i.bhz, label %bb.nn, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bia = getelementptr inbounds nuw i8, ptr %i.ayz, i64 441
  %i.bib = load i8, ptr %i.bia, align 1, !range !273, !noundef !29
  %i.bic = trunc nuw i8 %i.bib to i1
  br i1 %i.bic, label %bb.nn, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.bid = getelementptr inbounds nuw i8, ptr %i.ayz, i64 56
  %i.bie = load i64, ptr %i.bid, align 8, !range !183, !noundef !29
  %.not232 = icmp eq i64 %i.bie, -1
  br i1 %.not232, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bif = getelementptr inbounds nuw i8, ptr %.sroa.0194.0, i64 184
  %i.big = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bif)
          to label %bb.nt unwind label %.loopexit.split-lp815.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ns:                                            ; preds = %bb.nq
  %i.bih = getelementptr inbounds nuw i8, ptr %i.ayz, i64 432
  %i.bii = load i32, ptr %i.bih, align 8, !range !586, !noundef !29
  %.not233 = icmp eq i32 %i.bii, -1
  br i1 %.not233, label %.outer, label %bb.nv

bb.nt:                                            ; preds = %bb.nr
  %i.bij = getelementptr inbounds nuw i8, ptr %i.ayz, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bij)
          to label %bb.nu unwind label %.loopexit.split-lp815.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nu:                                            ; preds = %bb.nt
  %i.bik = extractvalue { ptr, i64 } %i.big, 1
  %i.bil = extractvalue { ptr, i64 } %i.big, 0
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4104.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 63, ptr %0, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bil, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bik, ptr %.sroa.6106.0..sroa_idx, align 8
  br label %bb.kd

bb.nv:                                            ; preds = %bb.ns
  %i.bim = getelementptr inbounds nuw i8, ptr %.sroa.0194.0, i64 184
  %i.bin = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bim)
          to label %bb.nw unwind label %.loopexit.split-lp815.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.outer:                                           ; preds = %bb.ns
  %i.bio = add i32 %.sroa.097.0.ph1288, 1         ; 2 uses
  %i.bip = icmp ult i64 %i.ayy, %..i.i.i
  br i1 %i.bip, label %.lr.ph1282, label %.outer._crit_edge

bb.nw:                                            ; preds = %bb.nv
  %i.biq = getelementptr inbounds nuw i8, ptr %i.ayz, i64 432
  %i.bir = extractvalue { ptr, i64 } %i.bin, 0
  %i.bis = extractvalue { ptr, i64 } %i.bin, 1
  %i.bit = load i32, ptr %i.biq, align 8, !range !775, !noundef !29
  store i64 63, ptr %0, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bit, ptr %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bir, ptr %.sroa.5109.0..sroa_idx, align 8
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bis, ptr %.sroa.6110.0..sroa_idx, align 8
  br label %bb.kd

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit430: ; preds = %bb.ke, %bb.kd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37045
  %.not.i.i484 = icmp eq ptr %.val249549, null
  br i1 %.not.i.i484, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit430
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !37045
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.val249549, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37045
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.val250551, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37045
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !37045
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.val249549, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37045
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.val250551, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37045
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit430
  %.sink31.i.i = phi i64 [ 1, %bb.nx ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit430 ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i = phi i64 [ %.sink.i316, %bb.nx ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit430 ]
  store i64 %.sink31.i.i, ptr %i.d, align 8, !noalias !37045
  %i.biu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink31.i.i, ptr %i.biu, align 8, !noalias !37045
  %i.biv = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i, ptr %i.biv, align 8, !noalias !37045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37050
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItercjE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc487 unwind label %.loopexit.split-lp

.noexc487:                                        ; preds = %bb.ny
  %i.biw = load ptr, ptr %i.c, align 8, !noalias !37050, !noundef !29
  %.not5.i.i.i.i = icmp eq ptr %i.biw, null
  br i1 %.not5.i.i.i.i, label %.loopexit812, label %.lr.ph.i.i.i.i485

.lr.ph.i.i.i.i485:                                ; preds = %.noexc487, %.noexc488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37050
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItercjE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc488 unwind label %.loopexit808

.noexc488:                                        ; preds = %.lr.ph.i.i.i.i485
  %i.bix = load ptr, ptr %i.c, align 8, !noalias !37050, !noundef !29
  %.not.i.i.i.i486 = icmp eq ptr %i.bix, null
  br i1 %.not.i.i.i.i486, label %.loopexit812, label %.lr.ph.i.i.i.i485

.loopexit812:                                     ; preds = %.noexc488, %.noexc487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37055
  %.not.i.i490 = icmp eq ptr %.val247543, null
  br i1 %.not.i.i490, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %.loopexit812
  %.sroa.414.0..sroa_idx.i.i495 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i495, align 8, !noalias !37055
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i496 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val247543, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i496, align 8, !noalias !37055
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i497 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val248545, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i497, align 8, !noalias !37055
  %.sroa.616.0..sroa_idx.i.i498 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i498, align 8, !noalias !37055
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i499 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.val247543, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i499, align 8, !noalias !37055
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i500 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.val248545, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i500, align 8, !noalias !37055
  br label %bb.oa

end_hunk_7
begin_hunk_8_@_RNvMNtCskXtk6F4WjxZ_4just8compilerNtB2_8Compiler7compile:bb.a

.thread1101:                                      ; preds = %.thread1101.loopexit.split-lp, %.thread1101.loopexit
  %lpad.phi1128 = phi { ptr, i32 } [ %lpad.loopexit1126, %.thread1101.loopexit ], [ %lpad.loopexit.split-lp1127, %.thread1101.loopexit.split-lp ] ; 2 uses
  %i.bgr = icmp eq i64 %.sroa.11810.sroa.0.0.insert.insert, 0
  br i1 %i.bgr, label %.body595, label %bb.up

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit607: ; preds = %bb.st, %bb.ss
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.3) ]
  %i.bgs = icmp eq i64 %.sroa.26.3, 0             ; 4 uses
  br i1 %i.bgs, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit610, label %bb.sw

bb.sw:                                            ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit607
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54071
  %i.bgt = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.26.3, i64 noundef range(i64 1, 9) 1) #70, !noalias !54071 ; 3 uses
  %i.bgu = icmp eq ptr %i.bgt, null
  br i1 %i.bgu, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.26.3) #71
          to label %.noexc609 unwind label %.thread1101.loopexit.split-lp

.noexc609:                                        ; preds = %bb.sx
  unreachable

bb.sy:                                            ; preds = %bb.sw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgt, ptr nonnull readonly align 1 %.sroa.20.3, i64 range(i64 0, -9223372036854775808) %.sroa.26.3, i1 false), !noalias !54079
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit610

bb.sz:                                            ; preds = %.noexc606
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.do, i64 48 ; 2 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bgv, i64 24, i1 false)
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.bgw, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.11810.sroa.0.0.insert.insert, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.570.sroa.4.0..sroa.570.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.20.3, ptr %.sroa.570.sroa.4.0..sroa.570.0..sroa_idx.sroa_idx, align 8
  %.sroa.570.sroa.5.0..sroa.570.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.26.3, ptr %.sroa.570.sroa.5.0..sroa.570.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.un

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit610: ; preds = %bb.sy, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit607
  %.sroa.5924.0 = phi ptr [ %i.bgt, %bb.sy ], [ inttoptr (i64 1 to ptr), %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit607 ]
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 8 ; 2 uses
  %.val361 = load i64, ptr %i.bgx, align 8, !range !183, !noundef !29 ; 2 uses
  %i.bgy = getelementptr i8, ptr %.sroa.024.04146, i64 16 ; 2 uses
  %i.bgz = icmp sgt i64 %.val361, 0
  br i1 %i.bgz, label %bb.ta, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit614

bb.ta:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit610
  %.val362 = load ptr, ptr %i.bgy, align 8, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val362, i64 noundef %.val361, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54080
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit614

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit614: ; preds = %bb.ta, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit610
  store i64 %.sroa.26.3, ptr %i.bgx, align 8
  store ptr %.sroa.5924.0, ptr %i.bgy, align 8
  %.sroa.6940.0..sroa_idx941 = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 24
  store i64 %.sroa.26.3, ptr %.sroa.6940.0..sroa_idx941, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0851)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6855)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0851, ptr noundef nonnull align 8 dereferenceable(64) %i.ago, i64 64, i1 false)
  %.sroa.5852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 224
  %.sroa.5852.0.copyload = load i8, ptr %.sroa.5852.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6855, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6855.0..sroa_idx, i64 7, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54087)
  call void @llvm.experimental.noalias.scope.decl(metadata !54090)
  %i.bha = load i32, ptr %i.gv, align 8, !alias.scope !54090, !noalias !54092, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !54095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54095
  %.val26.i = load ptr, ptr %i.gt, align 8, !alias.scope !54090, !noalias !54092, !nonnull !29, !noundef !29
  %.val27.i = load i64, ptr %i.gu, align 8, !alias.scope !54090, !noalias !54092, !noundef !29
  invoke fastcc void @_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsaKJjC64KgbL_3std4path7PathBufNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val26.i, i64 noundef %.val27.i) #76
          to label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i619 unwind label %bb.tc, !noalias !54095

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit790: ; preds = %bb.uh, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i788, %bb.ui, %bb.tc
  %.pn.pn.pn.i615 = phi { ptr, i32 } [ %i.bje, %bb.ui ], [ %i.bhc, %bb.tc ], [ %.pn.pn.i623, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i788 ], [ %.pn.pn.i623, %bb.uh ] ; 2 uses
  %i.bhb = icmp eq i64 %.sroa.11810.sroa.0.0.insert.insert, 0
  br i1 %i.bhb, label %.body595, label %bb.tb

bb.tb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit790
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.3, i64 noundef %.sroa.11810.sroa.0.0.insert.insert, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54096
  br label %.body595

bb.tc:                                            ; preds = %bb.tg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit614
  %i.bhc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit790

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i619: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit614
  %i.bhd = load ptr, ptr %i.gw, align 8, !noalias !54095, !nonnull !29, !noundef !29 ; 3 uses
  %i.bhe = load i64, ptr %i.e, align 8, !range !306, !noalias !54095, !noundef !29
  %i.bhf = load i64, ptr %i.gx, align 8, !noalias !54095, !noundef !29 ; 2 uses
  %i.bhg = icmp ult i64 %i.bhf, 384307168202282326
  call void @llvm.assume(i1 %i.bhg)
  %i.bhh = getelementptr inbounds nuw [24 x i8], ptr %i.bhd, i64 %i.bhf
  store ptr %i.bhd, ptr %i.f, align 8, !noalias !54095
  store i64 %i.bhe, ptr %i.gy, align 8, !noalias !54095
  store ptr %i.bhd, ptr %i.gz, align 8, !noalias !54095
  store ptr %i.bhh, ptr %i.ha, align 8, !noalias !54095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54095
  br i1 %i.bgs, label %bb.tg, label %bb.td

bb.td:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i619
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54103
  %i.bhi = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.26.3, i64 noundef range(i64 1, 9) 1) #70, !noalias !54103 ; 3 uses
  %i.bhj = icmp eq ptr %i.bhi, null
  br i1 %i.bhj, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %bb.td
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.26.3) #71
          to label %.noexc.i627 unwind label %bb.ui, !noalias !54095

.noexc.i627:                                      ; preds = %bb.te
  unreachable

bb.tf:                                            ; preds = %bb.td
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhi, ptr nonnull readonly align 1 %.sroa.20.3, i64 range(i64 0, -9223372036854775808) %.sroa.26.3, i1 false), !noalias !54111
  br label %bb.tg

bb.tg:                                            ; preds = %bb.tf, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i619
  %.sroa.558.0.i = phi ptr [ %i.bhi, %bb.tf ], [ inttoptr (i64 1 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i619 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54112)
  call void @llvm.experimental.noalias.scope.decl(metadata !54115)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !54117, !noalias !54119
  store i64 %.sroa.26.3, ptr %i.g, align 8, !alias.scope !54120, !noalias !54121
  store ptr %.sroa.558.0.i, ptr %.sroa.479.0..sroa_idx.i, align 8, !alias.scope !54120, !noalias !54121
  store i64 %.sroa.26.3, ptr %.sroa.580.0..sroa_idx.i, align 8, !alias.scope !54120, !noalias !54121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54095
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterB13_EINtNtNtB2e_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.g)
          to label %bb.th unwind label %bb.tc, !noalias !54095

bb.th:                                            ; preds = %bb.tg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54095
  %i.bhk = load i64, ptr %i.fc, align 8, !range !183, !alias.scope !54090, !noalias !54092, !noundef !29
  %.not.i620 = icmp eq i64 %i.bhk, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !54122)
  br i1 %.not.i620, label %bb.tm, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %.val.i.i621 = load ptr, ptr %i.hc, align 8, !alias.scope !54125, !noalias !54126, !nonnull !29, !noundef !29 ; 3 uses
  %.val4.i.i = load i64, ptr %i.hd, align 8, !alias.scope !54125, !noalias !54126, !noundef !29 ; 9 uses
  %narrow.i.i.i.i.i = icmp ult i8 %.sroa.5852.0.copyload, -2
  %i.bhl = zext i1 %narrow.i.i.i.i.i to i64
  %.sink22.i.i.i.i.i.i = add nuw nsw i64 %.val4.i.i, %i.bhl ; 4 uses
  %i.bhm = mul i64 %.sink22.i.i.i.i.i.i, 72       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sink22.i.i.i.i.i.i, 128102389400760775
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.tl, label %bb.tj, !prof !34423

bb.tj:                                            ; preds = %bb.ti
  %i.bhn = icmp eq i64 %i.bhm, 0
  br i1 %i.bhn, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54130
  %i.bho = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.bhm, i64 noundef range(i64 1, 9) 8) #70, !noalias !54130 ; 2 uses
  %i.bhp = icmp eq ptr %i.bho, null
  br i1 %i.bhp, label %bb.tl, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i

bb.tl:                                            ; preds = %bb.tk, %bb.ti
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.tk ], [ 0, %bb.ti ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.bhm) #71
          to label %.noexc28.i unwind label %bb.to, !noalias !54095

.noexc28.i:                                       ; preds = %bb.tl
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i: ; preds = %bb.tk, %bb.tj
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.tj ], [ %i.bho, %bb.tk ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.tj ], [ %.sink22.i.i.i.i.i.i, %bb.tk ] ; 3 uses
  %i.bhq = icmp samesign ule i64 %.sink22.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bhq)
  %i.bhr = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bhr, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i
  %xtraiter13099 = and i64 %.val4.i.i, 1
  %i.bhs = icmp eq i64 %.val4.i.i, 1
  br i1 %i.bhs, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter13103 = and i64 %.val4.i.i, 144115188075855870
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.bht = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.bhz, %.preheader.i.i.i.i ] ; 4 uses
  %niter13104 = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter13104.next.1, %.preheader.i.i.i.i ]
  %i.bhu = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i621, i64 %i.bht
  %i.bhv = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bhv, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bhu, i64 72, i1 false), !noalias !54142
  %i.bhw = or disjoint i64 %i.bht, 1              ; 2 uses
  %i.bhx = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i621, i64 %i.bhw
  %i.bhy = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bhw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bhy, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bhx, i64 72, i1 false), !noalias !54142
  %i.bhz = add nuw nsw i64 %i.bht, 2              ; 2 uses
  %niter13104.next.1 = add nuw nsw i64 %niter13104, 2 ; 2 uses
  %niter13104.ncmp.1 = icmp eq i64 %niter13104.next.1, %unroll_iter13103
  br i1 %niter13104.ncmp.1, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod13101.not = icmp eq i64 %xtraiter13099, 0
  br i1 %lcmp.mod13101.not, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.bhz, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod13102 = trunc i64 %.val4.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod13102)
  %i.bia = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i621, i64 %.epil.init
  %i.bib = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bib, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bia, i64 72, i1 false), !noalias !54142
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.epil.preheader, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i
  %switch.i.i.i.i.i.i.i.i = icmp ugt i8 %.sroa.5852.0.copyload, -3
  br i1 %switch.i.i.i.i.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i
  %i.bic = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.val4.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bic, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0851, i64 64, i1 false), !noalias !54163
  %.sroa.411.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bic, i64 64
  store i8 %.sroa.5852.0.copyload, ptr %.sroa.411.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54164
  %.sroa.512.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bic, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.512.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6855, i64 7, i1 false), !noalias !54172
  %i.bid = add nuw nsw i64 %.val4.i.i, 1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i

bb.tm:                                            ; preds = %bb.th
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54173
  %i.bie = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54173 ; 5 uses
  %i.bif = icmp eq ptr %i.bie, null
  br i1 %i.bif, label %bb.tn, label %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i, !prof !7

bb.tn:                                            ; preds = %bb.tm
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #71
          to label %.noexc29.i unwind label %bb.to, !noalias !54095

.noexc29.i:                                       ; preds = %bb.tn
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i: ; preds = %bb.tm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bie, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0851, i64 64, i1 false), !noalias !54180
  %.sroa.5852.0..sroa_idx853 = getelementptr inbounds nuw i8, ptr %i.bie, i64 64
  store i8 %.sroa.5852.0.copyload, ptr %.sroa.5852.0..sroa_idx853, align 8, !noalias !54180
  %.sroa.6855.0..sroa_idx856 = getelementptr inbounds nuw i8, ptr %i.bie, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6855.0..sroa_idx856, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6855, i64 7, i1 false), !noalias !54180
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i

bb.to:                                            ; preds = %bb.tn, %bb.tl
  %i.big = landingpad { ptr, i32 }
          cleanup
  br label %bb.uf

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.sink.i.i = phi i64 [ 1, %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i ], [ %.sroa.4.0.i.i.i.i.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i.sink.i.i = phi ptr [ %i.bie, %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i.i.i.i.i.i.sink.i.i = phi i64 [ 1, %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i ], [ %.val4.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i ], [ %i.bid, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  br i1 %i.bgs, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i, label %bb.tp

bb.tp:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54181
  %i.bih = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.26.3, i64 noundef range(i64 1, 9) 1) #70, !noalias !54181 ; 3 uses
  %i.bii = icmp eq ptr %i.bih, null
  br i1 %i.bii, label %bb.tq, label %bb.tr

bb.tq:                                            ; preds = %bb.tp
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.26.3) #71
          to label %.noexc32.i unwind label %bb.tt, !noalias !54095

.noexc32.i:                                       ; preds = %bb.tq
  unreachable

bb.tr:                                            ; preds = %bb.tp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bih, ptr nonnull readonly align 1 %.sroa.20.3, i64 range(i64 0, -9223372036854775808) %.sroa.26.3, i1 false), !noalias !54189
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i: ; preds = %bb.tv, %bb.tu, %bb.tt
  %.pn.i622 = phi { ptr, i32 } [ %i.bik, %bb.tt ], [ %lpad.phi1144, %bb.tu ], [ %lpad.phi1144, %bb.tv ] ; 2 uses
  %.not110.i = icmp eq i64 %.sroa.4.0.i.i.i.i.sink.i.i, 0
  br i1 %.not110.i, label %bb.uf, label %bb.ts

bb.ts:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i.i.i.i.sink.i.i) ]
  %i.bij = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.sink.i.i, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.sink.i.i, i64 noundef %i.bij, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54190
  br label %bb.uf

bb.tt:                                            ; preds = %bb.tq
  %i.bik = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i: ; preds = %bb.tr, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i
  %.sroa.588.0.i = phi ptr [ %i.bih, %bb.tr ], [ inttoptr (i64 1 to ptr), %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i ] ; 2 uses
  %i.bil = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.20.3, i64 noundef %.sroa.26.3)
          to label %bb.tw unwind label %.loopexit1140, !noalias !54095 ; 2 uses

.loopexit1140:                                    ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i
  %lpad.loopexit1142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

.loopexit.split-lp1141:                           ; preds = %bb.ua, %bb.uc
  %lpad.loopexit.split-lp1143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.tu:                                            ; preds = %.loopexit.split-lp1141, %.loopexit1140
  %lpad.phi1144 = phi { ptr, i32 } [ %lpad.loopexit1142, %.loopexit1140 ], [ %lpad.loopexit.split-lp1143, %.loopexit.split-lp1141 ] ; 2 uses
  br i1 %i.bgs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.588.0.i, i64 noundef %.sroa.26.3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54193
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i

bb.tw:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i
  %i.bim = extractvalue { ptr, i64 } %i.bil, 0    ; 2 uses
  %i.bin = extractvalue { ptr, i64 } %i.bil, 1    ; 7 uses
  %.not16.i = icmp eq ptr %i.bim, null
  br i1 %.not16.i, label %bb.ua, label %bb.tx, !prof !340

bb.tx:                                            ; preds = %bb.tw
  %.not.i.i624 = icmp slt i64 %i.bin, 0
  br i1 %.not.i.i624, label %bb.uc, label %bb.ty, !prof !297

bb.ty:                                            ; preds = %bb.tx
  %i.bio = icmp eq i64 %i.bin, 0
  br i1 %i.bio, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54200
  %i.bip = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.bin, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54200 ; 3 uses
  %i.biq = icmp eq ptr %i.bip, null
  br i1 %i.biq, label %bb.uc, label %bb.ue

bb.ua:                                            ; preds = %bb.tw
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @924) #71
          to label %bb.ub unwind label %.loopexit.split-lp1141, !noalias !54095

bb.ub:                                            ; preds = %bb.uc, %bb.ua
  unreachable

bb.uc:                                            ; preds = %bb.tz, %bb.tx
  %.sroa.490.0.ph.i = phi i64 [ 1, %bb.tz ], [ 0, %bb.tx ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.490.0.ph.i, i64 %i.bin) #71
          to label %bb.ub unwind label %.loopexit.split-lp1141, !noalias !54095

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i: ; preds = %bb.ue, %bb.ty
  %i.bir = phi ptr [ %i.bip, %bb.ue ], [ inttoptr (i64 1 to ptr), %bb.ty ]
  %i.bis = add i32 %i.bha, 1
  store i32 %i.bis, ptr %i.he, align 8, !alias.scope !54087, !noalias !54203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !54203
  store i64 0, ptr %i.hf, align 8, !alias.scope !54087, !noalias !54203
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i625, align 8, !alias.scope !54087, !noalias !54203
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !54087, !noalias !54203
  store i64 %.sroa.4.0.i.i.i.i.sink.i.i, ptr %i.hg, align 8, !alias.scope !54087, !noalias !54203
  store ptr %.sroa.10.0.i.i.i.i.sink.i.i, ptr %.sroa.542.0..sroa_idx43.i626, align 8, !alias.scope !54087, !noalias !54203
  store i64 %storemerge.i.i.i.i.i.i.sink.i.i, ptr %.sroa.6.0..sroa_idx45.i, align 8, !alias.scope !54087, !noalias !54203
  store i64 %.sroa.26.3, ptr %i.hh, align 8, !alias.scope !54087, !noalias !54203
  store ptr %.sroa.588.0.i, ptr %.sroa.551.0..sroa_idx52.i, align 8, !alias.scope !54087, !noalias !54203
  store i64 %.sroa.26.3, ptr %.sroa.654.0..sroa_idx55.i, align 8, !alias.scope !54087, !noalias !54203
  store i64 %i.bin, ptr %i.hi, align 8, !alias.scope !54087, !noalias !54203
  store ptr %i.bir, ptr %.sroa.413.0..sroa_idx.i, align 8, !alias.scope !54087, !noalias !54203
  store i64 %i.bin, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !54087, !noalias !54203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54095
  %i.bit = icmp eq i64 %.sroa.11810.sroa.0.0.insert.insert, 0
  br i1 %i.bit, label %_RNvMNtCskXtk6F4WjxZ_4just6sourceNtB2_6Source6module.exit, label %bb.ud

bb.ud:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.3, i64 noundef %.sroa.11810.sroa.0.0.insert.insert, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54204
  br label %_RNvMNtCskXtk6F4WjxZ_4just6sourceNtB2_6Source6module.exit

bb.ue:                                            ; preds = %bb.tz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bip, ptr nonnull align 1 %i.bim, i64 %i.bin, i1 false), !noalias !54095
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i

bb.uf:                                            ; preds = %bb.ts, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i, %bb.to
  %.pn.pn.i623 = phi { ptr, i32 } [ %i.big, %bb.to ], [ %.pn.i622, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i ], [ %.pn.i622, %bb.ts ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54211)
  %i.biu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i781 = load ptr, ptr %i.biu, align 8, !alias.scope !54211, !noalias !54095, !nonnull !29, !noundef !29 ; 2 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i782 = load i64, ptr %i.biv, align 8, !alias.scope !54211, !noalias !54095, !noundef !29 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54214), !noalias !54095
  %i.biw = icmp eq i64 %.val1.i782, 0
  br i1 %i.biw, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i788, label %.lr.ph.i.i.i783

.lr.ph.i.i.i783:                                  ; preds = %bb.uf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i787
  %.sroa.0.010.i.i.i784 = phi i64 [ %i.biy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i787 ], [ 0, %bb.uf ] ; 2 uses
  %i.bix = getelementptr inbounds nuw [24 x i8], ptr %.val.i781, i64 %.sroa.0.010.i.i.i784 ; 2 uses
  %i.biy = add nuw nsw i64 %.sroa.0.010.i.i.i784, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54217), !noalias !54095
  call void @llvm.experimental.noalias.scope.decl(metadata !54220), !noalias !54095
  %.val.i.i.i.i.i785 = load i64, ptr %i.bix, align 8, !alias.scope !54223, !noalias !54226 ; 2 uses
  %i.biz = icmp eq i64 %.val.i.i.i.i.i785, 0
  br i1 %i.biz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i787, label %bb.ug

end_hunk_8
begin_hunk_9_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile13public_groups:.preheader
  %i.aw = load i16, ptr %i.av, align 8, !noalias !55646 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 274
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !55637, !noundef !29
  %i.az = icmp ult i16 %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i unwind label %bb.h, !noalias !55649

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.at, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.au, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.as, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i ] ; 3 uses
  %i.ba = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit276

bb.g:                                             ; preds = %bb.e
  %i.bc = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 288
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter511 = and i64 %.sroa.7.0.ph.i.i.i, 7   ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.bf, %.prol.preheader ], [ %i.be, %bb.g ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.g ]
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !55650, !nonnull !29, !noundef !29 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !55654

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.be, %bb.g ], [ %i.bf, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.g ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.bg = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.bg, label %.loopexit276, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.bp, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 280
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 280
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 280
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 280
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.bk, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 280
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.bl, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 280
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.bm, align 8, !noalias !55650, !nonnull !29, !noundef !29
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 280
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.bn, align 8, !noalias !55650, !nonnull !29, !noundef !29 ; 2 uses
  %i.bo = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 280
  br i1 %i.bo, label %.loopexit276, label %.new

bb.h:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.loopexit86:                                      ; preds = %bb.bb, %bb.i, %_RNvXsA_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

.loopexit.split-lp:                               ; preds = %.thread, %bb.r, %bb.v, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, %.critedge.i.i168
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

.loopexit276:                                     ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.78.0.i.i.i = phi i64 [ %i.bb, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.f ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.br = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 184
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.10.0.ph.i.i.i ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 360
  %i.bw = load i8, ptr %i.bv, align 8, !range !273, !alias.scope !55655, !noundef !29
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit276
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.bz = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet8contains(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, i8 noundef 23)
          to label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit unwind label %.loopexit86

.thread:                                          ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit.thread, %.preheader
  %i.ca = phi i64 [ 0, %.preheader ], [ %i.iv, %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile14public_modules(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %1, i8 %.540.val)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.cd = load i64, ptr %i.f, align 8, !range !306, !noundef !29 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !29 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cg)
  %.idx152 = shl nuw nsw i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ci = icmp eq i64 %i.cf, 0
  br i1 %i.ci, label %._crit_edge149, label %.lr.ph148

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit: ; preds = %.body143, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.l ], [ %eh.lpad-body144, %.body143 ] ; 2 uses
  %i.cj = icmp eq i64 %i.cd, 0
  br i1 %i.cj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit
  %i.ck = shl nuw i64 %i.cd, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !55658
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

bb.l:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit

.lr.ph148:                                        ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142
  %i.cm = phi i64 [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142 ], [ %i.ca, %bb.j ] ; 2 uses
  %.sroa.515.0146 = phi ptr [ %i.cn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142 ], [ %i.cc, %bb.j ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.515.0146, i64 8 ; 2 uses
  %i.co = load ptr, ptr %.sroa.515.0146, align 8, !noalias !55661, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %.val126 = load ptr, ptr %i.cp, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 40
  %.val127 = load i64, ptr %i.cq, align 8, !noundef !29 ; 7 uses
  %i.cr = shl nuw i64 %.val127, 4                 ; 5 uses
  %i.cs = icmp eq i64 %.val127, 0
  br i1 %i.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142, label %bb.m

bb.m:                                             ; preds = %.lr.ph148
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !55664
  %i.ct = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.cr, i64 noundef range(i64 1, 9) 8) #70, !noalias !55664 ; 8 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.n, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.m
  %xtraiter541 = and i64 %.val127, 1
  %i.cv = icmp eq i64 %.val127, 1
  br i1 %i.cv, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %.val127, -2
  br label %.preheader.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cr) #71
          to label %.noexc131 unwind label %bb.l

.noexc131:                                        ; preds = %bb.n
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.cw = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.di, %.preheader.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw [104 x i8], ptr %.val126, i64 %i.cw ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !55671, !nonnull !29, !noundef !29
  %i.cz = getelementptr i8, ptr %i.cx, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !55671, !noundef !29
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.da, align 8, !noalias !55682, !captures !182
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.db, align 8, !noalias !55691
  %i.dc = or disjoint i64 %i.cw, 1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [104 x i8], ptr %.val126, i64 %i.dc ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.de, align 8, !noalias !55671, !nonnull !29, !noundef !29
  %i.df = getelementptr i8, ptr %i.dd, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.df, align 8, !noalias !55671, !noundef !29
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.dc ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.dg, align 8, !noalias !55682, !captures !182
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.dh, align 8, !noalias !55691
  %i.di = add nuw nsw i64 %i.cw, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph144.unr-lcssa, label %.preheader.i.i.i.i

._crit_edge149:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142, %bb.j
  %i.dj = phi i64 [ %i.ca, %bb.j ], [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142 ] ; 15 uses
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132, label %bb.o

bb.o:                                             ; preds = %._crit_edge149
  %i.dl = shl nuw i64 %i.cd, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !55692
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132: ; preds = %bb.o, %._crit_edge149
  %i.dm = trunc nuw i8 %.540.val to i1
  %i.dn = load ptr, ptr %i.j, align 8, !nonnull !29, !noundef !29 ; 17 uses
  br i1 %i.dm, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !55695
  %i.do = icmp samesign ult i64 %i.dj, 2
  br i1 %i.do, label %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit, label %bb.q, !prof !36

bb.q:                                             ; preds = %bb.p
  %i.dp = icmp samesign ult i64 %i.dj, 21
  br i1 %i.dp, label %bb.s, label %bb.r, !prof !36

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB18_5sliceSBZ_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2g_8Justfile13public_groups0E0INtNtB18_3vec3VecBZ_EEB2i_(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #74
          to label %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1v_5sliceSB1m_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2E_8Justfile13public_groups0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj)
  br label %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit

_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit: ; preds = %bb.r, %bb.p, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !55695
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132
  %i.dq = icmp samesign ult i64 %i.dj, 2
  br i1 %i.dq, label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit, label %bb.u, !prof !36

bb.u:                                             ; preds = %bb.t
  %i.dr = icmp samesign ult i64 %i.dj, 21
  br i1 %i.dr, label %bb.w, label %bb.v, !prof !36

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB18_3vec3VecBZ_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj, ptr noalias nofree noundef nonnull %i.a) #74
          to label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYB1m_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj)
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit: ; preds = %bb.w, %bb.t, %bb.v, %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ds = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !range !273, !noalias !55698, !noundef !29
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !36

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %.pre.i.i = load i64, ptr %i.ds, align 8, !noalias !55707
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !55707
  br label %bb.x

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %i.dw = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc135 unwind label %.loopexit.split-lp ; 2 uses

.noexc135:                                        ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !noalias !55708
  store i8 1, ptr %i.dt, align 8, !noalias !55708
  br label %bb.x

bb.x:                                             ; preds = %.noexc135, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i
  %.pre-phi222 = phi i64 [ %i.dy, %.noexc135 ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.dx, %.noexc135 ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ] ; 2 uses
  %i.ea = add i64 %.pre-phi, 1
  store i64 %i.ea, ptr %i.ds, align 8, !noalias !55707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.pre-phi, ptr %.sroa.4101.0..sroa_idx, align 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.pre-phi222, ptr %.sroa.5102.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !55714
  call void @llvm.experimental.noalias.scope.decl(metadata !55716)
  %i.eb = icmp ult i64 %i.dj, 192153584101141163
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i64 %i.dj, 0
  br i1 %i.ec, label %._crit_edge.i.i.i.i.thread, label %.preheader.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ed = load i64, ptr %i.i, align 8, !range !306, !noundef !29
  br label %.loopexit

.preheader.i.i:                                   ; preds = %bb.x, %bb.y
  %.sroa.0.0.i.i = phi i64 [ %i.eg, %bb.y ], [ 0, %bb.x ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.0.0.i.i ; 3 uses
  %i.ef = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB7_3VecTRSjjNtNtB9_6string6StringEE6retainNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1l_8Justfile13public_groupss_0E0B1n_(ptr nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef align 8 dereferenceable(48) %i.ee) #76
          to label %.noexc138 unwind label %bb.ag

.noexc138:                                        ; preds = %.preheader.i.i
  br i1 %i.ef, label %bb.y, label %bb.z, !prof !36

bb.y:                                             ; preds = %.noexc138
  %i.eg = add nuw nsw i64 %.sroa.0.0.i.i, 1       ; 2 uses
  %i.eh = icmp eq i64 %i.eg, %i.dj
  br i1 %i.eh, label %.loopexit84.thread254, label %.preheader.i.i

.loopexit84.thread254:                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ei = load i64, ptr %i.i, align 8, !range !306, !noundef !29
  %.idx255 = mul nuw nsw i64 %i.dj, 48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx255
  br label %.lr.ph.i.i.i.i139.preheader

bb.z:                                             ; preds = %.noexc138
  %i.ek = getelementptr i8, ptr %i.ee, i64 24
  %.val10.i.i = load i64, ptr %i.ek, align 8, !alias.scope !55719, !noalias !55724 ; 2 uses
  %i.el = icmp eq i64 %.val10.i.i, 0
  br i1 %i.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr i8, ptr %i.ee, i64 32
  %.val11.i.i = load ptr, ptr %i.em, align 8, !noalias !55724, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef %.val10.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !55726
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.8.033.i.i = add nuw i64 %.sroa.0.0.i.i, 1 ; 2 uses
  %i.en = icmp ult i64 %.sroa.8.033.i.i, %i.dj
  br i1 %i.en, label %.lr.ph.i.i137, label %.loopexit84

.lr.ph.i.i137:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i
  %.sroa.8.035.i.i = phi i64 [ %.sroa.8.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i ], [ %.sroa.8.033.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %.sroa.15.034.i.i = phi i64 [ %.sroa.15.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i ], [ %.sroa.0.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.8.035.i.i ; 5 uses
  %i.ep = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB7_3VecTRSjjNtNtB9_6string6StringEE6retainNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1l_8Justfile13public_groupss_0E0B1n_(ptr nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef align 8 dereferenceable(48) %i.eo)
          to label %bb.ab unwind label %bb.af, !noalias !55731

bb.ab:                                            ; preds = %.lr.ph.i.i137
  br i1 %i.ep, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr i8, ptr %i.eo, i64 24
  %.val.i.i = load i64, ptr %i.eq, align 8, !alias.scope !55719, !noalias !55724 ; 2 uses
  %i.er = icmp eq i64 %.val.i.i, 0
  br i1 %i.er, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr i8, ptr %i.eo, i64 32
  %.val9.i.i = load ptr, ptr %i.es, align 8, !noalias !55724, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !55732
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.15.034.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.eo, i64 48, i1 false), !noalias !55724
  %i.eu = add i64 %.sroa.15.034.i.i, 1
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.15.1.i.i = phi i64 [ %i.eu, %bb.ae ], [ %.sroa.15.034.i.i, %bb.ac ], [ %.sroa.15.034.i.i, %bb.ad ] ; 2 uses
  %.sroa.8.0.i.i = add nuw nsw i64 %.sroa.8.035.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.8.0.i.i, %i.dj
  br i1 %exitcond.not.i.i, label %.loopexit84, label %.lr.ph.i.i137

bb.af:                                            ; preds = %.lr.ph.i.i137
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = sub nsw i64 %i.dj, %.sroa.8.035.i.i     ; 2 uses
  %i.ex = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.15.034.i.i
  %i.ey = mul nuw nsw i64 %i.ew, 48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr nonnull align 8 %i.eo, i64 %i.ey, i1 false), !noalias !55737
  %i.ez = add i64 %i.ew, %.sroa.15.034.i.i
  store i64 %i.ez, ptr %i.k, align 8, !alias.scope !55731, !noalias !55742
  br label %.body

bb.ag:                                            ; preds = %.preheader.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.af, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.fa, %bb.ag ], [ %i.ev, %bb.af ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #72
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

.loopexit84:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.15.0.lcssa.i.i = phi i64 [ %.sroa.0.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.15.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i ] ; 4 uses
end_hunk_9
begin_hunk_10_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule:bb.a

bb.g:                                             ; preds = %._crit_edge81
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 1600
  %i.bd = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i29, 12
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.4.0.i.ph.i.i29
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !59056, !nonnull !29, !noundef !29
  %i.bg = add i64 %.sroa.3.0.i.i20, -1
  br label %.preheader.i19

bb.h:                                             ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit, %bb.i
  %.sroa.05.1 = phi ptr [ %i.aj, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bh = icmp eq ptr %i.g, %i.e
  br i1 %i.bh, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReINtNtCskXtk6F4WjxZ_4just5alias5AliasNtNtB1f_10modulepath10ModulepathEE3geteEB1f_.exit.thread, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph80
  %i.bi = icmp samesign ult i64 %.sroa.8.0.i.i.i2278, 11
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.i.i21, i64 %.sroa.8.0.i.i.i2278
  %i.bk = tail call fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj) ; 2 uses
  %.not14 = icmp eq ptr %i.bk, null
  br i1 %.not14, label %bb.j, label %bb.h, !prof !340

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReINtNtCskXtk6F4WjxZ_4just5alias5AliasNtNtB1f_10modulepath10ModulepathEE3geteEB1f_.exit.thread: ; preds = %bb.h, %.loopexit, %._crit_edge81, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ null, %._crit_edge81 ], [ %.sroa.05.1, %bb.h ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #75
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings13shell_command(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings5shell(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %2)
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !29, !noundef !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx18, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtNtNtCsaKJjC64KgbL_3std3sys7process4unix6commonNtB4_7Command3new(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit unwind label %bb.f

_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.g = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %.idx = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.idx
  %i.i = icmp sgt i64 %.sroa.0.0.copyload, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.j, label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge, label %.lr.ph

_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.520.031, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59057
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit

.lr.ph:                                           ; preds = %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit, %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit
  %.sroa.520.031 = phi ptr [ %i.k, %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit ], [ %.sroa.5.0.copyload, %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.520.031, align 8, !noalias !59060, !nonnull !29, !noundef !29
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.520.031, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !59060, !noundef !29
  invoke void @_RNvMs_NtNtNtNtCsaKJjC64KgbL_3std3sys7process4unix6commonNtB4_7Command3arg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit unwind label %bb.b

_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge: ; preds = %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit, %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit
  %i.s = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit17, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge
  %i.t = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59063
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit17

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(200) %i.a) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit17: ; preds = %bb.d, %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit
  %.pn.pn24 = phi { ptr, i32 } [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %.pn.pn24

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings5shell(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.c = load i64, ptr %i.a, align 8, !range !183, !noundef !29
  %.not = icmp eq i64 %i.c, -1
  %i.d = load i64, ptr %i.b, align 8, !range !183, !noundef !29
  %.not4 = icmp eq i64 %i.d, -1                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.h = load i64, ptr %i.g, align 8, !noundef !29 ; 4 uses
  br i1 %.not4, label %bb.p, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.l = load i64, ptr %i.k, align 8, !noundef !29 ; 9 uses
  %i.m = shl nuw i64 %i.l, 4                      ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59066
  %i.o = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 8) #70, !noalias !59066 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter76 = and i64 %i.l, 1
  %i.q = icmp eq i64 %i.l, 1
  br i1 %i.q, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter81 = and i64 %i.l, -2
  br label %.preheader.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.m) #71, !noalias !59071
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.r = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ad, %.preheader.i.i.i ] ; 4 uses
  %niter82 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter82.next.1, %.preheader.i.i.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !59072, !nonnull !29, !noundef !29
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val16.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !59072, !noundef !29
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  store ptr %.val15.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !59083, !captures !182
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.val16.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !59092
  %i.x = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val15.i.i.i.i.i.i.1 = load ptr, ptr %i.z, align 8, !noalias !59072, !nonnull !29, !noundef !29
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val16.i.i.i.i.i.i.1 = load i64, ptr %i.aa, align 8, !noalias !59072, !noundef !29
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.x ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.1, ptr %i.ab, align 8, !noalias !59083, !captures !182
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.val16.i.i.i.i.i.i.1, ptr %i.ac, align 8, !noalias !59092
  %i.ad = add nuw nsw i64 %i.r, 2                 ; 2 uses
  %niter82.next.1 = add nuw nsw i64 %niter82, 2   ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa, label %.preheader.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !range !183, !noundef !29
  %.not5 = icmp eq i64 %i.af, -1
  br i1 %.not5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !29 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.an = load i64, ptr %i.am, align 8, !noundef !29 ; 9 uses
  %i.ao = shl nuw i64 %i.an, 4                    ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59093
  %i.aq = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #70, !noalias !59093 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %.preheader.i.i.i9.preheader

.preheader.i.i.i9.preheader:                      ; preds = %bb.i
  %xtraiter83 = and i64 %i.an, 1
  %i.as = icmp eq i64 %i.an, 1
  br i1 %i.as, label %.preheader.i.i.i9.epil.preheader, label %.preheader.i.i.i9.preheader.new

.preheader.i.i.i9.preheader.new:                  ; preds = %.preheader.i.i.i9.preheader
  %unroll_iter88 = and i64 %i.an, -2
  br label %.preheader.i.i.i9

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ao) #71, !noalias !59098
  unreachable

.preheader.i.i.i9:                                ; preds = %.preheader.i.i.i9, %.preheader.i.i.i9.preheader.new
  %i.at = phi i64 [ 0, %.preheader.i.i.i9.preheader.new ], [ %i.bf, %.preheader.i.i.i9 ] ; 4 uses
  %niter89 = phi i64 [ 0, %.preheader.i.i.i9.preheader.new ], [ %niter89.next.1, %.preheader.i.i.i9 ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val15.i.i.i.i.i.i10 = load ptr, ptr %i.av, align 8, !noalias !59099, !nonnull !29, !noundef !29
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val16.i.i.i.i.i.i11 = load i64, ptr %i.aw, align 8, !noalias !59099, !noundef !29
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  store ptr %.val15.i.i.i.i.i.i10, ptr %i.ax, align 8, !noalias !59110, !captures !182
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.val16.i.i.i.i.i.i11, ptr %i.ay, align 8, !noalias !59119
  %i.az = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val15.i.i.i.i.i.i10.1 = load ptr, ptr %i.bb, align 8, !noalias !59099, !nonnull !29, !noundef !29
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val16.i.i.i.i.i.i11.1 = load i64, ptr %i.bc, align 8, !noalias !59099, !noundef !29
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  store ptr %.val15.i.i.i.i.i.i10.1, ptr %i.bd, align 8, !noalias !59110, !captures !182
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.val16.i.i.i.i.i.i11.1, ptr %i.be, align 8, !noalias !59119
  %i.bf = add nuw nsw i64 %i.at, 2                ; 2 uses
  %niter89.next.1 = add nuw nsw i64 %niter89, 2   ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa, label %.preheader.i.i.i9

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59120
  %i.bg = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59120 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #71
  unreachable

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split: ; preds = %bb.k, %bb.p
  %.sink = phi ptr [ %i.cv, %bb.p ], [ %i.bg, %bb.k ] ; 2 uses
  %.sink70.ph = phi ptr [ %i.f, %bb.p ], [ @663, %bb.k ]
  %.sink68.ph = phi i64 [ %i.h, %bb.p ], [ 2, %bb.k ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 8 dereferenceable(16) @981, i64 16, i1 false)
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i9
  %lcmp.mod86.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod86.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %.preheader.i.i.i9.epil.preheader

.preheader.i.i.i9.epil.preheader:                 ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa, %.preheader.i.i.i9.preheader
  %.epil.init85 = phi i64 [ 0, %.preheader.i.i.i9.preheader ], [ %i.bf, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.epil.init85 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val15.i.i.i.i.i.i10.epil = load ptr, ptr %i.bj, align 8, !noalias !59099, !nonnull !29, !noundef !29
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val16.i.i.i.i.i.i11.epil = load i64, ptr %i.bk, align 8, !noalias !59099, !noundef !29
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.epil.init85 ; 2 uses
  store ptr %.val15.i.i.i.i.i.i10.epil, ptr %i.bl, align 8, !noalias !59110, !captures !182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.val16.i.i.i.i.i.i11.epil, ptr %i.bm, align 8, !noalias !59119
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod79.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init78 = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ad, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ] ; 2 uses
  %lcmp.mod80 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.epil.init78 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val15.i.i.i.i.i.i.epil = load ptr, ptr %i.bo, align 8, !noalias !59072, !nonnull !29, !noundef !29
  %i.bp = getelementptr i8, ptr %i.bn, i64 16
  %.val16.i.i.i.i.i.i.epil = load i64, ptr %i.bp, align 8, !noalias !59072, !noundef !29
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.epil.init78 ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.epil, ptr %i.bq, align 8, !noalias !59083, !captures !182
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.val16.i.i.i.i.i.i.epil, ptr %i.br, align 8, !noalias !59092
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa: ; preds = %.preheader.i.i.i22
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %.preheader.i.i.i22.epil.preheader

.preheader.i.i.i22.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa, %.preheader.i.i.i22.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i22.preheader ], [ %i.cu, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ] ; 2 uses
  %lcmp.mod75 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.epil.init ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val15.i.i.i.i.i.i23.epil = load ptr, ptr %i.bt, align 8, !noalias !59123, !nonnull !29, !noundef !29
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  %.val16.i.i.i.i.i.i24.epil = load i64, ptr %i.bu, align 8, !noalias !59123, !noundef !29
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i23.epil, ptr %i.bv, align 8, !noalias !59136, !captures !182
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.val16.i.i.i.i.i.i24.epil, ptr %i.bw, align 8, !noalias !59145
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32: ; preds = %.preheader.i.i.i22.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa, %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa, %.preheader.i.i.i9.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split, %bb.h, %bb.d, %bb.m
  %.sink70 = phi ptr [ @663, %bb.d ], [ %.sink70.ph, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ %i.ah, %bb.h ], [ %i.f, %bb.m ], [ %i.ah, %.preheader.i.i.i9.epil.preheader ], [ @663, %.preheader.i.i.i.epil.preheader ], [ %i.ah, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ @663, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.f, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.f, %.preheader.i.i.i22.epil.preheader ]
  %.sink68 = phi i64 [ 2, %bb.d ], [ %.sink68.ph, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ %i.aj, %bb.h ], [ %i.h, %bb.m ], [ %i.aj, %.preheader.i.i.i9.epil.preheader ], [ 2, %.preheader.i.i.i.epil.preheader ], [ %i.aj, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ 2, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.h, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.h, %.preheader.i.i.i22.epil.preheader ]
  %.sink66 = phi i64 [ %i.l, %bb.d ], [ 1, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ %i.an, %bb.h ], [ %i.cc, %bb.m ], [ %i.an, %.preheader.i.i.i9.epil.preheader ], [ %i.l, %.preheader.i.i.i.epil.preheader ], [ %i.an, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ %i.l, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.cc, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.cc, %.preheader.i.i.i22.epil.preheader ] ; 2 uses
  %.sroa.10.0.i10.i13.sink = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sink, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ inttoptr (i64 8 to ptr), %bb.h ], [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.aq, %.preheader.i.i.i9.epil.preheader ], [ %i.o, %.preheader.i.i.i.epil.preheader ], [ %i.aq, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.cf, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.cf, %.preheader.i.i.i22.epil.preheader ]
  store ptr %.sink70, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink68, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink66, ptr %i.by, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i10.i13.sink, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink66, ptr %.sroa.541.0..sroa_idx, align 8
  ret void

bb.m:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !29 ; 9 uses
  %i.cd = shl nuw i64 %i.cc, 4                    ; 2 uses
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59146
  %i.cf = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, 9) 8) #70, !noalias !59146 ; 6 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.o, label %.preheader.i.i.i22.preheader

.preheader.i.i.i22.preheader:                     ; preds = %bb.n
  %xtraiter = and i64 %i.cc, 1
  %i.ch = icmp eq i64 %i.cc, 1
  br i1 %i.ch, label %.preheader.i.i.i22.epil.preheader, label %.preheader.i.i.i22.preheader.new

.preheader.i.i.i22.preheader.new:                 ; preds = %.preheader.i.i.i22.preheader
  %unroll_iter = and i64 %i.cc, -2
  br label %.preheader.i.i.i22

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cd) #71, !noalias !59149
  unreachable

.preheader.i.i.i22:                               ; preds = %.preheader.i.i.i22, %.preheader.i.i.i22.preheader.new
  %i.ci = phi i64 [ 0, %.preheader.i.i.i22.preheader.new ], [ %i.cu, %.preheader.i.i.i22 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i22.preheader.new ], [ %niter.next.1, %.preheader.i.i.i22 ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val15.i.i.i.i.i.i23 = load ptr, ptr %i.ck, align 8, !noalias !59123, !nonnull !29, !noundef !29
  %i.cl = getelementptr i8, ptr %i.cj, i64 16
  %.val16.i.i.i.i.i.i24 = load i64, ptr %i.cl, align 8, !noalias !59123, !noundef !29
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ci ; 2 uses
  store ptr %.val15.i.i.i.i.i.i23, ptr %i.cm, align 8, !noalias !59136, !captures !182
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %.val16.i.i.i.i.i.i24, ptr %i.cn, align 8, !noalias !59145
  %i.co = or disjoint i64 %i.ci, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.co ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %.val15.i.i.i.i.i.i23.1 = load ptr, ptr %i.cq, align 8, !noalias !59123, !nonnull !29, !noundef !29
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val16.i.i.i.i.i.i24.1 = load i64, ptr %i.cr, align 8, !noalias !59123, !noundef !29
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.co ; 2 uses
  store ptr %.val15.i.i.i.i.i.i23.1, ptr %i.cs, align 8, !noalias !59136, !captures !182
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.val16.i.i.i.i.i.i24.1, ptr %i.ct, align 8, !noalias !59145
  %i.cu = add nuw nsw i64 %i.ci, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa, label %.preheader.i.i.i22

bb.p:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59150
  %i.cv = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59150 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.q, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #71
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9completerNtB2_9Completer17candidate_recipes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1472) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [120 x i8], align 8               ; 12 uses
  %i.m = alloca [120 x i8], align 8               ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [120 x i8], align 8               ; 12 uses
  %i.q = alloca [120 x i8], align 8               ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 540
  %.val30 = load i8, ptr %i.w, align 4            ; 2 uses
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile24public_recipes_recursive(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %i.v, i8 %.val30)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.at, %.body48, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit61.i, %bb.ar, %bb.d, %.body59, %bb.b
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.d ], [ %.pn48.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit61.i ], [ %i.x, %bb.b ], [ %.pn23.pn, %.body59 ], [ %.pn48.i, %bb.ar ], [ %.pn.pn, %.body48 ], [ %.pn.pn, %bb.at ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine9candidate19CompletionCandidateEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #72
  resume { ptr, i32 } %.pn23.pn.pn

bb.b:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.aa = load i64, ptr %i.r, align 8, !range !306, !noundef !29 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !29 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ad)
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1464
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  br label %bb.f

.body59:                                          ; preds = %bb.cl, %bb.cj, %bb.cf, %bb.bv, %bb.bw, %bb.e
  %.pn23.pn = phi { ptr, i32 } [ %lpad.phi125, %bb.bv ], [ %lpad.phi125, %bb.bw ], [ %i.at, %bb.e ], [ %i.lu, %bb.cf ], [ %i.mc, %bb.cl ], [ %i.ly, %bb.cj ] ; 2 uses
  %i.ar = icmp eq i64 %i.aa, 0
  br i1 %i.ar, label %.body, label %bb.d

bb.d:                                             ; preds = %.body59
  %i.as = shl nuw i64 %i.aa, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59153
  br label %.body

bb.e:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit68
  %.sroa.5.0198 = phi ptr [ %i.z, %.lr.ph ], [ %i.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit68 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.5.0198, i64 8 ; 2 uses
  %i.av = load ptr, ptr %.sroa.5.0198, align 8, !noalias !59156, !nonnull !29, !align !174, !noundef !29 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !183, !alias.scope !59159, !noundef !29
  %.not.i = icmp eq i64 %i.ax, -1
  br i1 %.not.i, label %bb.g, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe11recipe_path.exit, !prof !340

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1258) #75
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.g
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit68, %bb.c
  %i.ay = icmp eq i64 %i.aa, 0
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.az = shl nuw i64 %i.aa, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59162
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36: ; preds = %bb.h, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 526
  %i.bb = load i8, ptr %i.ba, align 2, !range !273, !noundef !29
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtCskXtk6F4WjxZ_4just5alias5AliasINtNtBI_4sync3ArcNtNtB1w_6recipe6RecipeEERNtNtB1w_10modulepath10ModulepathEEEB1w_.exit39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtCskXtk6F4WjxZ_4just5alias5AliasINtNtBI_4sync3ArcNtNtB1w_6recipe6RecipeEERNtNtB1w_10modulepath10ModulepathEEEB1w_.exit39: ; preds = %._crit_edge202, %bb.az, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !59165
  store i64 0, ptr %i.h, align 8, !noalias !59165
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8, !noalias !59165
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.be, align 8, !noalias !59165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !59165
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59165
  %i.bf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59165 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.j, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #71
          to label %.noexc.i unwind label %bb.k, !noalias !59169

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit61.i

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.i
  store ptr %i.v, ptr %i.bf, align 8, !noalias !59165
  store i64 1, ptr %i.g, align 8, !noalias !59165
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.bf, ptr %i.bi, align 8, !noalias !59165
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.n

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i
  %.sroa.084.0.copyload = load i64, ptr %i.h, align 8, !noalias !59170 ; 4 uses
  %.sroa.485.0.copyload = load ptr, ptr %i.bd, align 8, !noalias !59170 ; 5 uses
  %.sroa.586.0.copyload = load i64, ptr %i.be, align 8, !noalias !59170 ; 3 uses
  %.val51.i = load i64, ptr %i.g, align 8, !noalias !59165 ; 2 uses
  %i.bm = icmp eq i64 %.val51.i, 0
  br i1 %i.bm, label %bb.as, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val52.i = load ptr, ptr %i.bi, align 8, !noalias !59165, !nonnull !29, !noundef !29
  %i.bn = shl nuw i64 %.val51.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59169
  br label %bb.as

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  %i.bo = phi ptr [ %i.bf, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.ie, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 2 uses
  %i.bp = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 3 uses
  %i.bq = phi i64 [ 0, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 3 uses
  %i.br = phi ptr [ %i.bf, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 2 uses
  %i.bs = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %.pr.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 2 uses
  %i.bt = add nsw i64 %i.bs, -1                   ; 3 uses
  store i64 %i.bt, ptr %i.bj, align 8, !noalias !59165
  %i.bu = load i64, ptr %i.g, align 8, !range !306, !noalias !59165, !noundef !29
end_hunk_10
begin_hunk_11_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand11list_module:bb.a
bb.hp:                                            ; preds = %bb.ho
  %i.arf = icmp eq i64 %i.aqy, 0
  br i1 %i.arf, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hr, %bb.hp
  %i.arg = icmp eq i64 %i.arb, %i.aqw
  br i1 %i.arg, label %bb.hu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846

bb.hr:                                            ; preds = %bb.hp
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqy
  %i.ari = load i8, ptr %i.arh, align 1, !alias.scope !64876, !noalias !64873, !noundef !29
  %i.arj = icmp sgt i8 %i.ari, -65
  br i1 %i.arj, label %bb.hq, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845, !prof !165

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846: ; preds = %bb.hq
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.arb
  %i.arl = load i8, ptr %i.ark, align 1, !alias.scope !64876, !noalias !64873, !noundef !29
  %i.arm = icmp sgt i8 %i.arl, -65
  br i1 %i.arm, label %bb.hu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845, !prof !166

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846, %bb.hr, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit843
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqu, i64 noundef %i.aqw, i64 noundef %i.aqy, i64 noundef %i.arb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc847 unwind label %bb.hs

.noexc847:                                        ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845
  unreachable

bb.hs:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845
  %i.arn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.01826.0.copyload.off = add i64 %.sroa.01826.0.copyload, -1
  %switch = icmp ult i64 %.sroa.01826.0.copyload.off, -2
  br i1 %switch, label %bb.ht, label %.body853

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51827.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51827.0.copyload, i64 noundef %.sroa.01826.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !64879
  br label %.body853

bb.hu:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846, %bb.hq, %bb.ho
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqy
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqs, i64 24
  %i.arq = load ptr, ptr %i.arp, align 8, !nonnull !29, !noundef !29
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !64886)
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aql, i64 16 ; 2 uses
  %i.art = load i64, ptr %i.ars, align 8, !alias.scope !64886, !noalias !64889, !noundef !29 ; 3 uses
  %i.aru = load i64, ptr %i.aql, align 8, !range !306, !alias.scope !64886, !noalias !64889, !noundef !29
  %i.arv = icmp eq i64 %i.art, %i.aru
  br i1 %i.arv, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aql)
          to label %bb.hy unwind label %bb.hw, !noalias !64889

bb.hw:                                            ; preds = %bb.hv
  %i.arw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arx = icmp sgt i64 %.sroa.01826.0.copyload, 0
  br i1 %i.arx, label %bb.hx, label %.body853

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51827.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51827.0.copyload, i64 noundef %.sroa.01826.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !64891
  br label %.body853

bb.hy:                                            ; preds = %bb.hv, %bb.hu
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.arz = load ptr, ptr %i.ary, align 8, !alias.scope !64886, !noalias !64889, !nonnull !29, !noundef !29
  %i.asa = getelementptr inbounds nuw [64 x i8], ptr %i.arz, i64 %i.art ; 8 uses
  store i64 %.sroa.01826.0.copyload, ptr %i.asa, align 8, !noalias !64886
  %.sroa.51815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  store ptr %.sroa.51827.0.copyload, ptr %.sroa.51815.0..sroa_idx, align 8, !noalias !64886
  %.sroa.61818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  store i64 %.sroa.71828.0.copyload, ptr %.sroa.61818.0..sroa_idx, align 8, !noalias !64886
  %.sroa.61821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.61821.0..sroa_idx, align 8, !noalias !64886
  %.sroa.71822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 32
  store i64 0, ptr %.sroa.71822.0..sroa_idx, align 8, !noalias !64886
  %.sroa.81823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 40
  store ptr %i.aro, ptr %.sroa.81823.0..sroa_idx, align 8, !noalias !64886
  %.sroa.91824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 48
  store i64 %i.ara, ptr %.sroa.91824.0..sroa_idx, align 8, !noalias !64886
  %.sroa.101825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 56
  store ptr %i.arr, ptr %.sroa.101825.0..sroa_idx, align 8, !noalias !64886
  %i.asb = add i64 %i.art, 1
  store i64 %i.asb, ptr %i.ars, align 8, !alias.scope !64886, !noalias !64889
  %i.asc = icmp eq ptr %i.aqk, %i.acn
  br i1 %i.asc, label %._crit_edge3016, label %bb.hl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857: ; preds = %bb.ic, %bb.ib, %bb.hz
  %.pn624.pn = phi { ptr, i32 } [ %i.asd, %bb.hz ], [ %.pn624, %bb.ib ], [ %.pn624, %bb.ic ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtB4_6option6OptionNtNtBK_6string6StringEINtNtBK_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB2D_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #72
          to label %bb.jg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hz:                                            ; preds = %._crit_edge3016
  %i.asd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857

bb.ia:                                            ; preds = %._crit_edge3016
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.asf = load ptr, ptr %i.ase, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.asg = load i64, ptr %i.ba, align 8, !range !306, !noundef !29 ; 4 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.asi = load i64, ptr %i.ash, align 8, !noundef !29 ; 3 uses
  %i.asj = icmp ult i64 %i.asi, 1152921504606846976
  call void @llvm.assume(i1 %i.asj)
  %.idx3189 = shl nuw nsw i64 %i.asi, 3
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asf, i64 %.idx3189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.asl = icmp eq i64 %i.asi, 0
  br i1 %i.asl, label %._crit_edge3024, label %.lr.ph3023

.lr.ph3023:                                       ; preds = %bb.ia
  %i.asm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %.sroa.03.sroa.4.0..sroa_idx.i1219 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %.sroa.03.sroa.5.0..sroa_idx.i1220 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %.sroa.44.0..sroa_idx.i1221 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.aso = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i4991 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  br label %bb.ie

bb.ib:                                            ; preds = %bb.om, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit1239, %bb.id
  %.pn624 = phi { ptr, i32 } [ %i.asr, %bb.id ], [ %i.bow, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit1239 ], [ %lpad.phi2262, %bb.om ] ; 2 uses
  %i.asp = icmp eq i64 %i.asg, 0
  br i1 %i.asp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.asq = shl nuw i64 %i.asg, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asf, i64 noundef %i.asq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !64898
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857

bb.id:                                            ; preds = %bb.ig
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ie:                                            ; preds = %.lr.ph3023, %bb.on
  %.sroa.51832.03021 = phi ptr [ %i.asf, %.lr.ph3023 ], [ %i.ass, %bb.on ] ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.sroa.51832.03021, i64 8 ; 2 uses
  %i.ast = load ptr, ptr %.sroa.51832.03021, align 8, !noalias !64901, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.asu = getelementptr i8, ptr %i.ast, i64 32
  %.val687 = load ptr, ptr %i.asu, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.asv = getelementptr i8, ptr %i.ast, i64 40
  %.val688 = load i64, ptr %i.asv, align 8, !noundef !29 ; 7 uses
  %i.asw = shl nuw i64 %.val688, 4                ; 5 uses
  %i.asx = icmp eq i64 %.val688, 0
  br i1 %i.asx, label %bb.of, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !64904
  %i.asy = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.asw, i64 noundef range(i64 1, 9) 8) #70, !noalias !64904 ; 8 uses
  %i.asz = icmp eq ptr %i.asy, null
  br i1 %i.asz, label %bb.ig, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.if
  %xtraiter8810 = and i64 %.val688, 1
  %i.ata = icmp eq i64 %.val688, 1
  br i1 %i.ata, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter8814 = and i64 %.val688, -2
  br label %.preheader.i.i.i.i

bb.ig:                                            ; preds = %bb.if
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.asw) #71
          to label %.noexc858 unwind label %bb.id

.noexc858:                                        ; preds = %bb.ig
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.atb = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.atn, %.preheader.i.i.i.i ] ; 4 uses
  %niter8815 = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter8815.next.1, %.preheader.i.i.i.i ]
  %i.atc = getelementptr inbounds nuw [104 x i8], ptr %.val687, i64 %i.atb ; 2 uses
  %i.atd = getelementptr i8, ptr %i.atc, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.atd, align 8, !noalias !64911, !nonnull !29, !noundef !29
  %i.ate = getelementptr i8, ptr %i.atc, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.ate, align 8, !noalias !64911, !noundef !29
  %i.atf = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %i.atb ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.atf, align 8, !noalias !64922, !captures !182
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.atg, align 8, !noalias !64931
  %i.ath = or disjoint i64 %i.atb, 1              ; 2 uses
  %i.ati = getelementptr inbounds nuw [104 x i8], ptr %.val687, i64 %i.ath ; 2 uses
  %i.atj = getelementptr i8, ptr %i.ati, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.atj, align 8, !noalias !64911, !nonnull !29, !noundef !29
  %i.atk = getelementptr i8, ptr %i.ati, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.atk, align 8, !noalias !64911, !noundef !29
  %i.atl = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %i.ath ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.atl, align 8, !noalias !64922, !captures !182
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.atm, align 8, !noalias !64931
  %i.atn = add nuw nsw i64 %i.atb, 2              ; 2 uses
  %niter8815.next.1 = add nuw nsw i64 %niter8815, 2 ; 2 uses
  %niter8815.ncmp.1 = icmp eq i64 %niter8815.next.1, %unroll_iter8814
  br i1 %niter8815.ncmp.1, label %.lr.ph3019.preheader.unr-lcssa, label %.preheader.i.i.i.i

._crit_edge3024:                                  ; preds = %bb.on, %bb.ia
  %i.ato = icmp eq i64 %i.asg, 0
  br i1 %i.ato, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859, label %bb.ih

bb.ih:                                            ; preds = %._crit_edge3024
  %i.atp = shl nuw i64 %i.asg, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asf, i64 noundef %i.atp, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !64932
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859: ; preds = %bb.ih, %._crit_edge3024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  br i1 %i.ams, label %bb.il, label %bb.ii

bb.ii:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !64935
  %.idx2204 = mul nuw nsw i64 %4, 24              ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !64938
  %i.atq = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.idx2204, i64 noundef range(i64 1, 9) 8) #70, !noalias !64938 ; 3 uses
  %i.atr = icmp eq ptr %i.atq, null
  br i1 %i.atr, label %bb.ij, label %.preheader.i.i.preheader.i

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx2204) #71
          to label %.noexc863 unwind label %bb.im

.noexc863:                                        ; preds = %bb.ij
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %bb.ii
  store i64 %4, ptr %i.w, align 8, !noalias !64935
  %i.ats = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.atq, ptr %i.ats, align 8, !noalias !64935
  %i.att = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64941)
  call void @llvm.experimental.noalias.scope.decl(metadata !64944)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ik, %.preheader.i.i.preheader.i
  %.val10.i.i.i.i.i.i.i = phi i64 [ %i.atw, %bb.ik ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.atu = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.val10.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !64947
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atu)
          to label %bb.ik unwind label %.body.i, !noalias !64959

bb.ik:                                            ; preds = %.preheader.i.i.i
  %i.atv = getelementptr inbounds nuw [24 x i8], ptr %i.atq, i64 %.val10.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !64960
  %i.atw = add nuw nsw i64 %.val10.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !64947
  %i.atx = icmp eq i64 %i.atw, %4
  br i1 %i.atx, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtB2B_6cloned6ClonedINtNtNtB18_5slice4iter4IterB1F_EENcNtB13_4Some0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i.i

.body.i:                                          ; preds = %.preheader.i.i.i
  %i.aty = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i, ptr %i.att, align 8, !alias.scope !64967, !noalias !64968
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #72, !noalias !64935
  br label %.body864

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtB2B_6cloned6ClonedINtNtNtB18_5slice4iter4IterB1F_EENcNtB13_4Some0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %bb.ik
  store i64 %4, ptr %i.att, align 8, !alias.scope !64967, !noalias !64968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !64935
  %.phi.trans.insert3918 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.pre3919 = load i64, ptr %.phi.trans.insert3918, align 8
  %.phi.trans.insert3920.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre3921.pre = load ptr, ptr %.phi.trans.insert3920.phi.trans.insert, align 8
  %.pre6413 = load i64, ptr %i.ax, align 8, !range !306
  br label %bb.iy

bb.il:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile13public_groups(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %5, i8 %.val672)
          to label %.loopexit2257 unwind label %bb.im

.body864:                                         ; preds = %bb.oe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.jb, %bb.im, %.body.i
  %.pn617.pn = phi { ptr, i32 } [ %i.bmc, %bb.oe ], [ %.pn612, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.atz, %bb.im ], [ %i.aty, %.body.i ], [ %.pn612, %bb.jb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtB4_6option6OptionNtNtBK_6string6StringEINtNtBK_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB2D_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #72
          to label %bb.jg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.im:                                            ; preds = %bb.ij, %bb.il
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %.body864

.loopexit2257:                                    ; preds = %bb.il
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.auc = load i64, ptr %i.aw, align 8, !range !306, !noundef !29 ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.aue = load i64, ptr %i.aud, align 8, !noundef !29 ; 8 uses
  %i.auf = icmp ult i64 %i.aue, 384307168202282326
  call void @llvm.assume(i1 %i.auf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.not11.i.i.i.i = icmp eq i64 %i.aue, 0
  %.idx2206 = mul nuw i64 %i.aue, 24
  store i64 %i.auc, ptr %i.ax, align 8, !alias.scope !64969, !noalias !64972
  %i.aug = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.aub, ptr %i.aug, align 8, !alias.scope !64969, !noalias !64972
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  store i64 %i.aue, ptr %i.auh, align 8, !alias.scope !64969, !noalias !64972
  %.val704 = load ptr, ptr %i.bs, align 8, !noundef !29 ; 2 uses
  %.not.i875 = icmp eq ptr %.val704, null
  br i1 %.not.i875, label %.loopexit2256, label %bb.in

bb.in:                                            ; preds = %.loopexit2257
  %i.aui = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val705 = load i64, ptr %i.aui, align 8
  br label %.split.us.i.us.i.i

.split.us.i.us.i.i:                               ; preds = %bb.ip, %bb.in
  %.sroa.3.0.us.i.i = phi i64 [ %i.aur, %bb.ip ], [ %.val705, %bb.in ] ; 2 uses
  %.sroa.0.0.us.i.i = phi ptr [ %i.auq, %bb.ip ], [ %.val704, %bb.in ] ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 538
  %i.auk = load i16, ptr %i.auj, align 2, !noalias !64974, !noundef !29
  %i.aul = icmp eq i16 %i.auk, 0
  br i1 %i.aul, label %bb.io, label %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i

_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i: ; preds = %.split.us.i.us.i.i
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 8
  %i.aun = load i64, ptr %i.aum, align 8, !range !183, !alias.scope !64982, !noalias !64985, !noundef !29
  %.not1.i.us.not.i.us.i.i = icmp eq i64 %i.aun, -1
  br i1 %.not1.i.us.not.i.us.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit, label %bb.io

bb.io:                                            ; preds = %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i, %.split.us.i.us.i.i
  %i.auo = icmp eq i64 %.sroa.3.0.us.i.i, 0
  br i1 %i.auo, label %.loopexit2256, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 544
  %i.auq = load ptr, ptr %i.aup, align 8, !noalias !64987, !nonnull !29, !noundef !29
  %i.aur = add i64 %.sroa.3.0.us.i.i, -1
  br label %.split.us.i.us.i.i

.loopexit2256:                                    ; preds = %bb.io, %.loopexit2257
  %.val708 = load ptr, ptr %i.bc, align 8, !noundef !29 ; 2 uses
  %.not.i877 = icmp eq ptr %.val708, null
  br i1 %.not.i877, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE3getB18_EB2r_.exit.thread, label %bb.iq

bb.iq:                                            ; preds = %.loopexit2256
  %i.aus = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val709 = load i64, ptr %i.aus, align 8
  br label %.split.us.i.us.i.i878

.split.us.i.us.i.i878:                            ; preds = %bb.is, %bb.iq
  %.sroa.3.0.us.i.i879 = phi i64 [ %i.avb, %bb.is ], [ %.val709, %bb.iq ] ; 2 uses
  %.sroa.0.0.us.i.i880 = phi ptr [ %i.ava, %bb.is ], [ %.val708, %bb.iq ] ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i880, i64 538
  %i.auu = load i16, ptr %i.aut, align 2, !noalias !64988, !noundef !29
  %i.auv = icmp eq i16 %i.auu, 0
  br i1 %i.auv, label %bb.ir, label %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881

_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881: ; preds = %.split.us.i.us.i.i878
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i880, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !range !183, !alias.scope !64996, !noalias !64999, !noundef !29
  %.not1.i.us.not.i.us.i.i882 = icmp eq i64 %i.aux, -1
  br i1 %.not1.i.us.not.i.us.i.i882, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit, label %bb.ir

bb.ir:                                            ; preds = %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881, %.split.us.i.us.i.i878
  %i.auy = icmp eq i64 %.sroa.3.0.us.i.i879, 0
  br i1 %i.auy, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE3getB18_EB2r_.exit.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.auz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i880, i64 544
  %i.ava = load ptr, ptr %i.auz, align 8, !noalias !65001, !nonnull !29, !noundef !29
  %i.avb = add i64 %.sroa.3.0.us.i.i879, -1
  br label %.split.us.i.us.i.i878

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE3getB18_EB2r_.exit.thread: ; preds = %bb.ir, %.loopexit2256, %bb.iw
  %.pre6414 = phi i64 [ %.pre6414.pre, %bb.iw ], [ %i.auc, %.loopexit2256 ], [ %i.auc, %bb.ir ] ; 2 uses
  %i.avc = phi ptr [ %i.avh, %bb.iw ], [ %i.aub, %.loopexit2256 ], [ %i.aub, %bb.ir ] ; 4 uses
  %i.avd = phi i64 [ %i.avj, %bb.iw ], [ %i.aue, %.loopexit2256 ], [ %i.aue, %bb.ir ] ; 3 uses
  %i.ave = icmp ult i64 %i.avd, 384307168202282326
  call void @llvm.assume(i1 %i.ave)
  %i.avf = icmp eq i64 %i.avd, 1
  br i1 %i.avf, label %bb.ix, label %bb.iy

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit: ; preds = %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i, %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881
  call void @llvm.experimental.noalias.scope.decl(metadata !65002)
  %i.avg = icmp eq i64 %i.aue, %i.auc
  br i1 %i.avg, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB7_6string6StringEE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %._crit_edge3916 unwind label %bb.oe, !noalias !65005

._crit_edge3916:                                  ; preds = %bb.it
  %.pre3917 = load ptr, ptr %i.aug, align 8, !alias.scope !65002, !noalias !65005
  br label %bb.iu

bb.iu:                                            ; preds = %._crit_edge3916, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit
  %i.avh = phi ptr [ %.pre3917, %._crit_edge3916 ], [ %i.aub, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit ] ; 4 uses
  br i1 %.not11.i.i.i.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
end_hunk_11
