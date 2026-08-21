Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_:bb.a
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i.i.i.i, label %bb.al

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit21.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.gs = load i64, ptr %i.gj, align 8, !alias.scope !190, !noalias !158, !noundef !5 ; 3 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit21.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  br i1 %i.kw, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = load ptr, ptr %i.as, align 8, !alias.scope !194, !noalias !158, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gu, align 16, !noalias !195
  %i.gv = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gx = bitcast <16 x i1> %i.gv to i16
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.ai ], [ %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %bb.ai ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gx, %bb.ai ], [ %i.hg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kv, %bb.ai ], [ %i.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  %i.gz = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gy, align 16, !noalias !198
  %i.ha = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -512 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ha to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %i.hc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hd = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.he = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = and i16 %i.hd, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = sub nsw i64 0, %i.hf
  %i.hi = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hh ; 2 uses
  %i.hj = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hk, align 8, !noalias !201 ; 2 uses
  %i.hl = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = getelementptr i8, ptr %i.hi, i64 -16
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !noalias !201, !nonnull !5, !noundef !5
  %i.hn = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !201
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = icmp eq i64 %i.hj, 0
  br i1 %i.ho, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.hp = shl i64 %i.gs, 5                        ; 2 uses
  %i.hq = add i64 %i.hp, 32                       ; 2 uses
  %i.hr = add i64 %i.gs, 17
  %i.hs = add i64 %i.hr, %i.hq                    ; 4 uses
  %i.ht = icmp uge i64 %i.hs, %i.hq
  %i.hu = icmp ult i64 %i.hs, 9223372036854775793
  call void @llvm.assume(i1 %i.ht)
  call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp eq i64 %i.hs, 0
  br i1 %i.hv, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread.i.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.i.i.i.i.i

bb.al:                                            ; preds = %.lr.ph109.i.i.i.i.i.i
  %i.hw = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc22.i.i.i.i.i.i unwind label %.loopexit72.i.i.i.i.i.i, !noalias !174 ; 2 uses

.noexc22.i.i.i.i.i.i:                             ; preds = %bb.al
  %i.hx = extractvalue { i64, i32 } %i.hw, 0      ; 2 uses
  %i.hy = icmp eq i64 %i.hx, %.sroa.01.0
  br i1 %i.hy, label %.split.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.noexc22.i.i.i.i.i.i
  %i.hz = extractvalue { i64, i32 } %i.hw, 1      ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 1000000000
  call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp samesign ugt i32 %i.hz, %.sroa.4.0
  br i1 %i.ib, label %.loopexit73.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i.i.i.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i
  %i.ic = icmp sgt i64 %i.hx, %.sroa.01.0
  br i1 %i.ic, label %.loopexit73.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i.i.i.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i.i.i.i: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.lr.ph109.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !158
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.011.0108.i.i.i.i.i.i ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !202, !noalias !205, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !202, !noalias !205, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ih = load i64, ptr %i.ie, align 8, !range !60, !alias.scope !213, !noalias !214, !noundef !5
  %i.ii = trunc nuw i64 %i.ih to i1               ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !213, !noalias !214, !noundef !5
  %i.il = icmp ult i64 %i.ig, %i.ik               ; 3 uses
  br i1 %i.ii, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i.i.i.i
  br i1 %i.il, label %bb.ap, label %.invoke.i.i.i.i.i.i

bb.an:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i.i.i.i
  br i1 %i.il, label %bb.ao, label %.invoke.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !alias.scope !213, !noalias !214, !nonnull !5, !noundef !5 ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %i.ig ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  br label %.noexc12.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.am
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !213, !noalias !214, !nonnull !5, !noundef !5 ; 2 uses
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ir, i64 %i.ig ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 8
  %i.iu = getelementptr i8, ptr %i.is, i64 16
  br label %.noexc12.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i:                             ; preds = %bb.ap, %bb.ao
  %i.iv = phi ptr [ %i.ir, %bb.ap ], [ %i.in, %bb.ao ] ; 2 uses
  %.sroa.5.1.i.in.i.i.i.i.i.i.i = phi ptr [ %i.iu, %bb.ap ], [ %i.ip, %bb.ao ]
  %.sroa.0.1.i.in.i.i.i.i.i.i.i = phi ptr [ %i.it, %bb.ap ], [ %i.io, %bb.ao ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i.i.i.i.i.i.i, align 8, !noalias !216, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i.i.i.i.i.i.i, align 8, !noalias !216, !noundef !5 ; 4 uses
  %i.iw = icmp samesign eq i64 %.sroa.5.1.i.i.i.i.i.i.i.i, 0
  br i1 %i.iw, label %.loopexit71.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc12.i.i.i.i.i.i
  %xtraiter368 = and i64 %.sroa.5.1.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.ix = icmp ult i64 %.sroa.5.1.i.i.i.i.i.i.i.i, 8
  br i1 %i.ix, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter375 = and i64 %.sroa.5.1.i.i.i.i.i.i.i.i, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.iy = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.km, %.lr.ph.i.i.i.i.i.i.i.i ]
  %niter376 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter376.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 1
  %i.ja = load i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.jb = zext i8 %i.ja to i64
  %i.jc = xor i64 %i.iy, %i.jb
  %i.jd = mul i64 %i.jc, 1099511628211
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 2
  %i.jf = load i8, ptr %i.iz, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.jg = zext i8 %i.jf to i64
  %i.jh = xor i64 %i.jd, %i.jg
  %i.ji = mul i64 %i.jh, 1099511628211
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 3
  %i.jk = load i8, ptr %i.je, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.jl = zext i8 %i.jk to i64
  %i.jm = xor i64 %i.ji, %i.jl
  %i.jn = mul i64 %i.jm, 1099511628211
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 4
  %i.jp = load i8, ptr %i.jj, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.jq = zext i8 %i.jp to i64
  %i.jr = xor i64 %i.jn, %i.jq
  %i.js = mul i64 %i.jr, 1099511628211
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 5
  %i.ju = load i8, ptr %i.jo, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.jv = zext i8 %i.ju to i64
  %i.jw = xor i64 %i.js, %i.jv
  %i.jx = mul i64 %i.jw, 1099511628211
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 6
  %i.jz = load i8, ptr %i.jt, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.ka = zext i8 %i.jz to i64
  %i.kb = xor i64 %i.jx, %i.ka
  %i.kc = mul i64 %i.kb, 1099511628211
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 7
  %i.ke = load i8, ptr %i.jy, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.kf = zext i8 %i.ke to i64
  %i.kg = xor i64 %i.kc, %i.kf
  %i.kh = mul i64 %i.kg, 1099511628211
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kj = load i8, ptr %i.kd, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.kk = zext i8 %i.kj to i64
  %i.kl = xor i64 %i.kh, %i.kk
  %i.km = mul i64 %i.kl, 1099511628211            ; 3 uses
  %niter376.next.7 = add nuw nsw i64 %niter376, 8 ; 2 uses
  %niter376.ncmp.7 = icmp eq i64 %niter376.next.7, %unroll_iter375
  br i1 %niter376.ncmp.7, label %.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod372.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod372.not, label %.loopexit71.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ki, %.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %.epil.init371 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.km, %.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod374 = icmp ne i64 %xtraiter368, 0
  call void @llvm.assume(i1 %lcmp.mod374)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.kn = phi i64 [ %i.ks, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.epil.init371, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter369 = phi i64 [ %epil.iter369.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil, i64 1
  %i.kp = load i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.epil, align 1, !alias.scope !217, !noalias !224, !noundef !5
  %i.kq = zext i8 %i.kp to i64
  %i.kr = xor i64 %i.kn, %i.kq
  %i.ks = mul i64 %i.kr, 1099511628211            ; 2 uses
  %epil.iter369.next = add i64 %epil.iter369, 1   ; 2 uses
  %epil.iter369.cmp.not = icmp eq i64 %epil.iter369.next, %xtraiter368
  br i1 %epil.iter369.cmp.not, label %.loopexit71.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !228

.loopexit71.loopexit.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa
  %.lcssa318 = phi i64 [ %i.km, %.loopexit71.loopexit.i.i.i.i.i.i.unr-lcssa ], [ %i.ks, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  %i.kt = xor i64 %.lcssa318, 255
  %i.ku = mul i64 %i.kt, 1099511628211
  br label %.loopexit71.i.i.i.i.i.i

.loopexit71.i.i.i.i.i.i:                          ; preds = %.loopexit71.loopexit.i.i.i.i.i.i, %.noexc12.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i.i.i.i.i.i ], [ %i.ku, %.loopexit71.loopexit.i.i.i.i.i.i ] ; 2 uses
  store i64 %.promoted.i.i.i.i.i.i.i.i.i, ptr %i.ar, align 8, !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.kv = load i64, ptr %i.gl, align 8, !alias.scope !230, !noalias !233, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0                    ; 2 uses
  br i1 %i.kw, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.loopexit71.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !230, !noalias !233, !noundef !5
  %.val5.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !230, !noalias !233, !noundef !5
  %i.kx = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar), !noalias !235 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ky = lshr i64 %i.kx, 57
  %i.kz = trunc nuw nsw i64 %i.ky to i8
  %i.la = load i64, ptr %i.gj, align 8, !alias.scope !242, !noalias !243, !noundef !5 ; 2 uses
  %i.lb = load ptr, ptr %i.as, align 8, !alias.scope !242, !noalias !243, !nonnull !5, !noundef !5 ; 2 uses
  %i.lc = insertelement <16 x i8> poison, i8 %i.kz, i64 0
  %i.ld = shufflevector <16 x i8> %i.lc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %i.lu, %bb.at ]
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %i.kx, %bb.aq ], [ %i.lv, %bb.at ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i, %i.la ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.le, align 1, !noalias !246 ; 2 uses
  %i.lf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i, %i.ld
  %i.lg = bitcast <16 x i1> %i.lf to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i = icmp eq i16 %i.lg, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i25.i.i.i.i.i.i

.lr.ph.i.i25.i.i.i.i.i.i:                         ; preds = %bb.ar, %bb.as
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i = phi i16 [ %i.lt, %bb.as ], [ %i.lg, %bb.ar ] ; 3 uses
  %i.lh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i, i1 true)
  %i.li = zext nneg i16 %i.lh to i64
  %i.lj = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.li
  %i.lk = and i64 %i.lj, %i.la
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds [32 x i8], ptr %i.lb, i64 %i.ll ; 3 uses
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 -32
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ln, align 8, !noalias !249, !noundef !5
  %i.lo = icmp eq i64 %.promoted.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i
  br i1 %i.lo, label %bb.au, label %bb.as, !prof !169

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.as, %bb.ar
  %i.lp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.lq = bitcast <16 x i1> %i.lp to i16
  %i.lr = icmp eq i16 %i.lq, 0
  br i1 %i.lr, label %bb.at, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, !prof !252

bb.as:                                            ; preds = %.lr.ph.i.i25.i.i.i.i.i.i
  %i.ls = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i, -1
  %i.lt = and i16 %i.ls, %.sroa.06.0.i31.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.lt, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i25.i.i.i.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.lu = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.lv = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.lu
  br label %bb.ar

bb.au:                                            ; preds = %.lr.ph.i.i25.i.i.i.i.i.i
  %i.lw = getelementptr inbounds i8, ptr %i.lm, i64 -16
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !174, !nonnull !5, !noundef !5 ; 3 uses
  %i.ly = getelementptr inbounds i8, ptr %i.lm, i64 -8
  %i.lz = load i64, ptr %i.ly, align 8, !noalias !174, !noundef !5 ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.lz, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx.i.i.i.i.i.i
  %.not.i29.i.i.i.i.i.i = icmp eq i64 %i.lz, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.au
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.ig ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.ig ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 8
  %i.mf = getelementptr i8, ptr %i.md, i64 16
  %.209.i.i.i.i.i.i = select i1 %i.ii, ptr %i.me, ptr %i.mb
  %..i.i.i.i.i.i = select i1 %i.ii, ptr %i.mf, ptr %i.mc
  br i1 %i.il, label %.lr.ph.i.i.us.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i.us.i.i.i.i.i
  %i.mg = phi ptr [ %i.mh, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i.us.i.i.i.i.i ], [ %i.lx, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %.val3.i.i.us.i.i.i.i.i = load i64, ptr %i.mg, align 8, !noalias !253, !noundef !5 ; 3 uses
  %i.mi = icmp ult i64 %.val3.i.i.us.i.i.i.i.i, %i.ce
  br i1 %i.mi, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.us.i.i.i.i.i, label %.invoke204.i.i.i.i.i.i

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.val3.i.i.us.i.i.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.us.i.i.i.i.i = load ptr, ptr %.209.i.i.i.i.i.i, align 8, !noalias !261, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.us.i.i.i.i.i = load i64, ptr %..i.i.i.i.i.i, align 8, !noalias !261, !noundef !5 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !alias.scope !258, !noalias !268, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !alias.scope !258, !noalias !268, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272), !noalias !275
  %i.mn = load i64, ptr %i.mk, align 8, !range !60, !alias.scope !276, !noalias !277, !noundef !5
  %i.mo = trunc nuw i64 %i.mn to i1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !276, !noalias !277, !noundef !5
  %i.mr = icmp ult i64 %i.mm, %i.mq               ; 2 uses
  br i1 %i.mo, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.us.i.i.i.i.i
  br i1 %i.mr, label %bb.aw, label %.invoke.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !alias.scope !276, !noalias !277, !nonnull !5, !noundef !5
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mm ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit6.i.i.i.us.i.i.i.i.i

bb.ax:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.us.i.i.i.i.i
  br i1 %i.mr, label %bb.ay, label %.invoke.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !276, !noalias !277, !nonnull !5, !noundef !5
  %i.my = getelementptr inbounds nuw [24 x i8], ptr %i.mx, i64 %i.mm ; 2 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 8
  %i.na = getelementptr i8, ptr %i.my, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit6.i.i.i.us.i.i.i.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit6.i.i.i.us.i.i.i.i.i: ; preds = %bb.ay, %bb.aw
  %.sroa.5.1.i.in.i2.i.i.i.us.i.i.i.i.i = phi ptr [ %i.na, %bb.ay ], [ %i.mv, %bb.aw ]
  %.sroa.0.1.i.in.i3.i.i.i.us.i.i.i.i.i = phi ptr [ %i.mz, %bb.ay ], [ %i.mu, %bb.aw ]
  %.sroa.5.1.i.i5.i.i.i.us.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i2.i.i.i.us.i.i.i.i.i, align 8, !noalias !279, !noundef !5
  %i.nb = icmp eq i64 %.sroa.5.1.i.i.i.i.i.us.i.i.i.i.i, %.sroa.5.1.i.i5.i.i.i.us.i.i.i.i.i
  br i1 %i.nb, label %.split.i.i.us.i.i.i.i.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i.us.i.i.i.i.i

.split.i.i.us.i.i.i.i.i:                          ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit6.i.i.i.us.i.i.i.i.i
  %.sroa.0.1.i.i4.i.i.i.us.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i3.i.i.i.us.i.i.i.i.i, align 8, !noalias !279, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.us.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.us.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i4.i.i.i.us.i.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i.us.i.i.i.i.i), !alias.scope !280, !noalias !284
  %i.nc = icmp eq i32 %bcmp.i.i.i.i.us.i.i.i.i.i, 0
  br i1 %i.nc, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0EB1K_.exit.i.i.i.i.i.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i.us.i.i.i.i.i

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i.us.i.i.i.i.i: ; preds = %.split.i.i.us.i.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit6.i.i.i.us.i.i.i.i.i
  %.not17.i.i.us.i.i.i.i.i = icmp eq ptr %i.mh, %i.ma
  br i1 %.not17.i.i.us.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.lx, align 8, !noalias !253, !noundef !5 ; 2 uses
  %i.nd = icmp ult i64 %.val3.i.i.i.i.i.i.i, %i.ce
  br i1 %i.nd, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i.i.i.i, label %.invoke204.i.i.i.i.i.i

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  br label %.invoke.i.i.i.i.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0EB1K_.exit.i.i.i.i.i.i: ; preds = %.split.i.i.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !158
  br label %.loopexit73.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i.us.i.i.i.i.i, %bb.au, %.loopexit71.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !158
  %exitcond140.not.i.i.i.i.i.i = icmp eq i64 %i.gp, %i.ci
  br i1 %exitcond140.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit21.i.i.i.i.i.i, label %.lr.ph109.i.i.i.i.i.i

.loopexit73.i.i.i.i.i.i:                          ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.i.i.i.i.i.i, %.split53.i.i.i.i.i.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0EB1K_.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
end_hunk_0
begin_hunk_1_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_:bb.a
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i46.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ni = load ptr, ptr %i.as, align 8, !alias.scope !304, !noalias !158, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i33.i.i.i.i.i.i = load <16 x i8>, ptr %i.ni, align 16, !noalias !305
  %i.nj = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i33.i.i.i.i.i.i, splat (i8 -1)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nl = bitcast <16 x i1> %i.nj to i16
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i, %bb.ba
  %.sroa.06.017.i.i.i.i.i.i34.i.i.i.i.i.i = phi ptr [ %i.ni, %bb.ba ], [ %.sroa.06.1.i.i.i.i.i.i41.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i35.i.i.i.i.i.i = phi ptr [ %i.nk, %bb.ba ], [ %.sroa.6.1.i.i.i.i.i.i40.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i36.i.i.i.i.i.i = phi i16 [ %i.nl, %bb.ba ], [ %i.nu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i37.i.i.i.i.i.i = phi i64 [ %i.ng, %bb.ba ], [ %i.nx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i38.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i36.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i38.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i39.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i:               ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i
  %i.nm = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i35.i.i.i.i.i.i, %bb.bb ] ; 2 uses
  %i.nn = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.bb ]
  %.val9.i.i.i.i.i.i.i48.i.i.i.i.i.i = load <16 x i8>, ptr %i.nm, align 16, !noalias !308
  %i.no = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i48.i.i.i.i.i.i, splat (i8 -1)
  %i.np = getelementptr inbounds i8, ptr %i.nn, i64 -512 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i49.i.i.i.i.i.i = bitcast <16 x i1> %i.no to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i50.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i49.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i50.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i39.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i39.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i, %bb.bb
  %.sroa.6.1.i.i.i.i.i.i40.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i35.i.i.i.i.i.i, %bb.bb ], [ %i.nq, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i41.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.bb ], [ %i.np, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i36.i.i.i.i.i.i, %bb.bb ], [ %.cast.i.i.i.i.i.i.i49.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ] ; 3 uses
  %i.nr = add i16 %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i, -1
  %i.ns = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i, i1 true)
  %i.nt = zext nneg i16 %i.ns to i64
  %i.nu = and i16 %i.nr, %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i
  %i.nv = sub nsw i64 0, %i.nt
  %i.nw = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i41.i.i.i.i.i.i, i64 %i.nv ; 2 uses
  %i.nx = add i64 %.sroa.108.014.i.i.i.i.i.i37.i.i.i.i.i.i, -1 ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nw, i64 -24
  %.val.i.i.i.i.i.i43.i.i.i.i.i.i = load i64, ptr %i.ny, align 8, !noalias !311 ; 2 uses
  %i.nz = icmp eq i64 %.val.i.i.i.i.i.i43.i.i.i.i.i.i, 0
  br i1 %i.nz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i39.i.i.i.i.i.i
  %i.oa = getelementptr i8, ptr %i.nw, i64 -16
  %.val5.i.i.i.i.i.i44.i.i.i.i.i.i = load ptr, ptr %i.oa, align 8, !noalias !311, !nonnull !5, !noundef !5
  %i.ob = shl nuw i64 %.val.i.i.i.i.i.i43.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i44.i.i.i.i.i.i, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !311
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i: ; preds = %bb.bc, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i39.i.i.i.i.i.i
  %i.oc = icmp eq i64 %i.nx, 0
  br i1 %i.oc, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i46.i.i.i.i.i.i, label %bb.bb

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i46.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i45.i.i.i.i.i.i, %bb.az
  %i.od = shl i64 %i.ne, 5                        ; 2 uses
  %i.oe = add i64 %i.od, 32                       ; 2 uses
  %i.of = add i64 %i.ne, 17
  %i.og = add i64 %i.of, %i.oe                    ; 4 uses
  %i.oh = icmp uge i64 %i.og, %i.oe
  %i.oi = icmp ult i64 %i.og, 9223372036854775793
  call void @llvm.assume(i1 %i.oh)
  call void @llvm.assume(i1 %i.oi)
  %i.oj = icmp eq i64 %i.og, 0
  br i1 %i.oj, label %.sink.split.i.i.i.i, label %.critedge.i.i.i.i.i

bb.bd:                                            ; preds = %bb.ag
  %i.ok = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc54.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !174 ; 2 uses

.noexc54.i.i.i.i.i.i:                             ; preds = %bb.bd
  %i.ol = extractvalue { i64, i32 } %i.ok, 0      ; 2 uses
  %i.om = icmp eq i64 %i.ol, %.sroa.01.0
  br i1 %i.om, label %.split53.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.i.i.i.i.i.i

.split53.i.i.i.i.i.i:                             ; preds = %.noexc54.i.i.i.i.i.i
  %i.on = extractvalue { i64, i32 } %i.ok, 1      ; 2 uses
  %i.oo = icmp ult i32 %i.on, 1000000000
  call void @llvm.assume(i1 %i.oo)
  %i.op = icmp samesign ugt i32 %i.on, %.sroa.4.0
  br i1 %i.op, label %.loopexit73.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.thread.i.i.i.i.i.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.i.i.i.i.i.i: ; preds = %.noexc54.i.i.i.i.i.i
  %i.oq = icmp sgt i64 %i.ol, %.sroa.01.0
  br i1 %i.oq, label %.loopexit73.i.i.i.i.i.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.thread.i.i.i.i.i.i

.invoke204.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.us.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.or = phi i64 [ %.val3.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.val3.i.i.us.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.or, i64 noundef range(i64 0, 576460752303423488) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #37
          to label %.cont205.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !174

.cont205.i.i.i.i.i.i:                             ; preds = %.invoke204.i.i.i.i.i.i
  unreachable

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.thread.i.i.i.i.i.i: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.i.i.i.i.i.i, %.split53.i.i.i.i.i.i, %bb.ag
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.sroa.0.032106.i.i.i.i.i.i ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !alias.scope !312, !noalias !315, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !312, !noalias !315, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.ow = load i64, ptr %i.ot, align 8, !range !60, !alias.scope !323, !noalias !324, !noundef !5
  %i.ox = trunc nuw i64 %i.ow to i1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !323, !noalias !324, !noundef !5
  %i.pa = icmp ult i64 %i.ov, %i.oz               ; 2 uses
  br i1 %i.ox, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.thread.i.i.i.i.i.i
  br i1 %i.pa, label %bb.bh, label %.invoke.i.i.i.i.i.i

bb.bf:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit55.thread.i.i.i.i.i.i
  br i1 %i.pa, label %bb.bg, label %.invoke.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !alias.scope !323, !noalias !324, !nonnull !5, !noundef !5
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %i.ov ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  br label %.noexc.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.be
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8, !alias.scope !323, !noalias !324, !nonnull !5, !noundef !5
  %i.ph = getelementptr inbounds nuw [24 x i8], ptr %i.pg, i64 %i.ov ; 2 uses
  %i.pi = getelementptr i8, ptr %i.ph, i64 8
  %i.pj = getelementptr i8, ptr %i.ph, i64 16
  br label %.noexc.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.bf, %bb.be, %bb.an, %bb.am, %bb.ax, %bb.av, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !174

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bh, %bb.bg
  %.sroa.5.1.i.in.i58.i.i.i.i.i.i = phi ptr [ %i.pj, %bb.bh ], [ %i.pe, %bb.bg ]
  %.sroa.0.1.i.in.i59.i.i.i.i.i.i = phi ptr [ %i.pi, %bb.bh ], [ %i.pd, %bb.bg ]
  %.sroa.0.1.i.i60.i.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i59.i.i.i.i.i.i, align 8, !noalias !326, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i61.i.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i58.i.i.i.i.i.i, align 8, !noalias !326, !noundef !5 ; 4 uses
  %i.pk = icmp samesign eq i64 %.sroa.5.1.i.i61.i.i.i.i.i.i, 0
  br i1 %i.pk, label %.loopexit74.i.i.i.i.i.i, label %.lr.ph.i.i65.i.i.i.i.i.i.preheader

.lr.ph.i.i65.i.i.i.i.i.i.preheader:               ; preds = %.noexc.i.i.i.i.i.i
  %xtraiter = and i64 %.sroa.5.1.i.i61.i.i.i.i.i.i, 7 ; 3 uses
  %i.pl = icmp ult i64 %.sroa.5.1.i.i61.i.i.i.i.i.i, 8
  br i1 %i.pl, label %.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i65.i.i.i.i.i.i.preheader.new

.lr.ph.i.i65.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i65.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i61.i.i.i.i.i.i, -8
  br label %.lr.ph.i.i65.i.i.i.i.i.i

.lr.ph.i.i65.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i65.i.i.i.i.i.i, %.lr.ph.i.i65.i.i.i.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i66.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i60.i.i.i.i.i.i, %.lr.ph.i.i65.i.i.i.i.i.i.preheader.new ], [ %i.qw, %.lr.ph.i.i65.i.i.i.i.i.i ] ; 9 uses
  %i.pm = phi i64 [ -3750763034362895579, %.lr.ph.i.i65.i.i.i.i.i.i.preheader.new ], [ %i.ra, %.lr.ph.i.i65.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i65.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i65.i.i.i.i.i.i ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 1
  %i.po = load i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.pp = zext i8 %i.po to i64
  %i.pq = xor i64 %i.pm, %i.pp
  %i.pr = mul i64 %i.pq, 1099511628211
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 2
  %i.pt = load i8, ptr %i.pn, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.pu = zext i8 %i.pt to i64
  %i.pv = xor i64 %i.pr, %i.pu
  %i.pw = mul i64 %i.pv, 1099511628211
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 3
  %i.py = load i8, ptr %i.ps, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.pz = zext i8 %i.py to i64
  %i.qa = xor i64 %i.pw, %i.pz
  %i.qb = mul i64 %i.qa, 1099511628211
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 4
  %i.qd = load i8, ptr %i.px, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.qe = zext i8 %i.qd to i64
  %i.qf = xor i64 %i.qb, %i.qe
  %i.qg = mul i64 %i.qf, 1099511628211
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 5
  %i.qi = load i8, ptr %i.qc, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.qj = zext i8 %i.qi to i64
  %i.qk = xor i64 %i.qg, %i.qj
  %i.ql = mul i64 %i.qk, 1099511628211
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 6
  %i.qn = load i8, ptr %i.qh, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.qo = zext i8 %i.qn to i64
  %i.qp = xor i64 %i.ql, %i.qo
  %i.qq = mul i64 %i.qp, 1099511628211
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 7
  %i.qs = load i8, ptr %i.qm, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.qt = zext i8 %i.qs to i64
  %i.qu = xor i64 %i.qq, %i.qt
  %i.qv = mul i64 %i.qu, 1099511628211
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qx = load i8, ptr %i.qr, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.qy = zext i8 %i.qx to i64
  %i.qz = xor i64 %i.qv, %i.qy
  %i.ra = mul i64 %i.qz, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i65.i.i.i.i.i.i

.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa:       ; preds = %.lr.ph.i.i65.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit74.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader:          ; preds = %.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i65.i.i.i.i.i.i.preheader
  %.sroa.0.0.i1.i.i66.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i60.i.i.i.i.i.i, %.lr.ph.i.i65.i.i.i.i.i.i.preheader ], [ %i.qw, %.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i65.i.i.i.i.i.i.preheader ], [ %i.ra, %.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod367 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod367)
  br label %.lr.ph.i.i65.i.i.i.i.i.i.epil

.lr.ph.i.i65.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i65.i.i.i.i.i.i.epil, %.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i66.i.i.i.i.i.i.epil = phi ptr [ %i.rc, %.lr.ph.i.i65.i.i.i.i.i.i.epil ], [ %.sroa.0.0.i1.i.i66.i.i.i.i.i.i.epil.init, %.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.rb = phi i64 [ %i.rg, %.lr.ph.i.i65.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i65.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i65.i.i.i.i.i.i.epil.preheader ]
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i.epil, i64 1
  %i.rd = load i8, ptr %.sroa.0.0.i1.i.i66.i.i.i.i.i.i.epil, align 1, !alias.scope !327, !noalias !334, !noundef !5
  %i.re = zext i8 %i.rd to i64
  %i.rf = xor i64 %i.rb, %i.re
  %i.rg = mul i64 %i.rf, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit74.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i65.i.i.i.i.i.i.epil, !llvm.loop !338

.loopexit74.loopexit.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i65.i.i.i.i.i.i.epil, %.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa
  %.lcssa340 = phi i64 [ %i.ra, %.loopexit74.loopexit.i.i.i.i.i.i.unr-lcssa ], [ %i.rg, %.lr.ph.i.i65.i.i.i.i.i.i.epil ]
  %i.rh = xor i64 %.lcssa340, 255
  %i.ri = mul i64 %i.rh, 1099511628211
  br label %.loopexit74.i.i.i.i.i.i

.loopexit74.i.i.i.i.i.i:                          ; preds = %.loopexit74.loopexit.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %.promoted.i.i.i67.i.i.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc.i.i.i.i.i.i ], [ %i.ri, %.loopexit74.loopexit.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !158
  store i64 %.promoted.i.i.i67.i.i.i.i.i.i, ptr %i.aq, align 8, !noalias !342
  %.val.i69.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !339, !noalias !344, !noundef !5
  %.val3.i70.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !339, !noalias !344, !noundef !5
  %i.rj = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i69.i.i.i.i.i.i, i64 %.val3.i70.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq), !noalias !345 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.rk = lshr i64 %i.rj, 57
  %i.rl = trunc nuw nsw i64 %i.rk to i8           ; 3 uses
  %i.rm = load i64, ptr %i.gj, align 8, !alias.scope !352, !noalias !353, !noundef !5 ; 3 uses
  %i.rn = load ptr, ptr %i.as, align 8, !alias.scope !352, !noalias !353, !nonnull !5, !noundef !5 ; 3 uses
  %i.ro = insertelement <16 x i8> poison, i8 %i.rl, i64 0
  %i.rp = shufflevector <16 x i8> %i.ro, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %.loopexit74.i.i.i.i.i.i
  %.sroa.9.0.i.i.i71.i.i.i.i.i.i = phi i64 [ 0, %.loopexit74.i.i.i.i.i.i ], [ %i.sg, %bb.bk ]
  %.pn.i.i72.i.i.i.i.i.i = phi i64 [ %i.rj, %.loopexit74.i.i.i.i.i.i ], [ %i.sh, %bb.bk ]
  %.sroa.01.0.i.i.i73.i.i.i.i.i.i = and i64 %.pn.i.i72.i.i.i.i.i.i, %i.rm ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.sroa.01.0.i.i.i73.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i74.i.i.i.i.i.i = load <16 x i8>, ptr %i.rq, align 1, !noalias !356 ; 2 uses
  %i.rr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i74.i.i.i.i.i.i, %i.rp
  %i.rs = bitcast <16 x i1> %i.rr to i16          ; 2 uses
  %.not.i.not30.i.i75.i.i.i.i.i.i = icmp eq i16 %i.rs, 0
  br i1 %.not.i.not30.i.i75.i.i.i.i.i.i, label %._crit_edge.i.i80.i.i.i.i.i.i, label %.lr.ph.i.i76.i.i.i.i.i.i

.lr.ph.i.i76.i.i.i.i.i.i:                         ; preds = %bb.bi, %bb.bj
  %.sroa.06.0.i31.i.i77.i.i.i.i.i.i = phi i16 [ %i.sf, %bb.bj ], [ %i.rs, %bb.bi ] ; 3 uses
  %i.rt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i77.i.i.i.i.i.i, i1 true)
  %i.ru = zext nneg i16 %i.rt to i64
  %i.rv = add i64 %.sroa.01.0.i.i.i73.i.i.i.i.i.i, %i.ru
  %i.rw = and i64 %i.rv, %i.rm
  %i.rx = sub nsw i64 0, %i.rw
  %i.ry = getelementptr inbounds [32 x i8], ptr %i.rn, i64 %i.rx ; 2 uses
  %i.rz = getelementptr inbounds i8, ptr %i.ry, i64 -32
  %.val2.i.i.i78.i.i.i.i.i.i = load i64, ptr %i.rz, align 8, !noalias !359, !noundef !5
  %i.sa = icmp eq i64 %.val2.i.i.i78.i.i.i.i.i.i, %.promoted.i.i.i67.i.i.i.i.i.i
  br i1 %i.sa, label %bb.bp, label %bb.bj, !prof !169

._crit_edge.i.i80.i.i.i.i.i.i:                    ; preds = %bb.bj, %bb.bi
  %i.sb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i74.i.i.i.i.i.i, splat (i8 -1)
  %i.sc = bitcast <16 x i1> %i.sb to i16
  %i.sd = icmp eq i16 %i.sc, 0
  br i1 %i.sd, label %bb.bk, label %bb.bl, !prof !252

bb.bj:                                            ; preds = %.lr.ph.i.i76.i.i.i.i.i.i
  %i.se = add i16 %.sroa.06.0.i31.i.i77.i.i.i.i.i.i, -1
  %i.sf = and i16 %i.se, %.sroa.06.0.i31.i.i77.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i79.i.i.i.i.i.i = icmp eq i16 %i.sf, 0
  br i1 %.not.i.not.i.i79.i.i.i.i.i.i, label %._crit_edge.i.i80.i.i.i.i.i.i, label %.lr.ph.i.i76.i.i.i.i.i.i

bb.bk:                                            ; preds = %._crit_edge.i.i80.i.i.i.i.i.i
  %i.sg = add i64 %.sroa.9.0.i.i.i71.i.i.i.i.i.i, 16 ; 2 uses
  %i.sh = add i64 %.sroa.01.0.i.i.i73.i.i.i.i.i.i, %i.sg
  br label %bb.bi

bb.bl:                                            ; preds = %._crit_edge.i.i80.i.i.i.i.i.i
  %i.si = load i64, ptr %i.gk, align 8, !alias.scope !362, !noalias !365, !noundef !5
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %bb.bm, label %bb.bn, !prof !252

bb.bm:                                            ; preds = %bb.bl
  %i.sk = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, i1 noundef zeroext true) #34
          to label %.noexc81.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !174 ; 0 uses

.noexc81.i.i.i.i.i.i:                             ; preds = %bb.bm
  %.val.i.i83.pre.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !367, !noalias !370
  %.val3.i.i.pre.i.i.i.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !367, !noalias !370
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc81.i.i.i.i.i.i, %bb.bl
  %.val3.i.i.i.i.i.i.i.i = phi i64 [ %.val3.i.i.pre.i.i.i.i.i.i, %.noexc81.i.i.i.i.i.i ], [ %i.rm, %bb.bl ] ; 4 uses
  %.val.i.i83.i.i.i.i.i.i = phi ptr [ %.val.i.i83.pre.i.i.i.i.i.i, %.noexc81.i.i.i.i.i.i ], [ %i.rn, %bb.bl ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %.sroa.0.07.i.i.i.i.i.i.i.i.i = and i64 %.val3.i.i.i.i.i.i.i.i, %i.rj ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.val.i.i83.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sl, align 1, !noalias !374
  %i.sm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.sn = bitcast <16 x i1> %i.sm to i16          ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.sn, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !prof !377

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bn
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i.i.i.i, %bb.bn ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.sn, %bb.bn ], [ %i.te, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.so = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sp = zext nneg i16 %i.so to i64
  %i.sq = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i, %i.sp
  %i.sr = and i64 %i.sq, %.val3.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.val.i.i83.i.i.i.i.i.i, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !noalias !378, !noundef !5 ; 2 uses
  %i.su = icmp sgt i8 %i.st, -1
  br i1 %i.su, label %bb.bo, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i, !prof !252

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i83.i.i.i.i.i.i, align 16, !noalias !378
  %i.sv = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.sw = bitcast <16 x i1> %i.sv to i16          ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.sw, 0
  %i.sx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.sw, i1 true)
  %i.sy = zext nneg i16 %i.sx to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i85.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i83.i.i.i.i.i.i, i64 %i.sy
  %.pre.i.i86.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i85.i.i.i.i.i.i, align 1, !noalias !378
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bn, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i.i.i, %bb.bn ]
  %i.sz = phi i64 [ %i.ta, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bn ]
  %i.ta = add i64 %i.sz, 16                       ; 2 uses
  %i.tb = add i64 %i.ta, %.sroa.0.010.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = and i64 %i.tb, %.val3.i.i.i.i.i.i.i.i ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.val.i.i83.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tc, align 1, !noalias !374
  %i.td = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.te = bitcast <16 x i1> %i.td to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.te, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i: ; preds = %bb.bo, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.tf = phi i8 [ %.pre.i.i86.i.i.i.i.i.i, %bb.bo ], [ %i.st, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sy, %bb.bo ], [ %i.sr, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.val.i.i83.i.i.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i
  %i.th = add i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i, -16
  %i.ti = and i64 %i.th, %.val3.i.i.i.i.i.i.i.i
  store i8 %i.rl, ptr %i.tg, align 1, !noalias !378
  %i.tj = getelementptr i8, ptr %.val.i.i83.i.i.i.i.i.i, i64 %i.ti
  %i.tk = getelementptr i8, ptr %i.tj, i64 16
  store i8 %i.rl, ptr %i.tk, align 1, !noalias !378
  %i.tl = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i
  %i.tm = getelementptr inbounds [32 x i8], ptr %.val.i.i83.i.i.i.i.i.i, i64 %i.tl ; 5 uses
  %i.tn = and i8 %i.tf, 1
  %i.to = zext nneg i8 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %i.tm, i64 -32
  store i64 %.promoted.i.i.i67.i.i.i.i.i.i, ptr %i.tp, align 8, !noalias !380
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.tm, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !380
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.tm, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !380
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.tm, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !380
  %i.tq = load <2 x i64>, ptr %i.gk, align 8, !alias.scope !367, !noalias !370
  %i.tr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.to, i64 0
  %i.ts = sub <2 x i64> %i.tq, %i.tr
  store <2 x i64> %i.ts, ptr %i.gk, align 8, !alias.scope !367, !noalias !370
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i76.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !158
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi ptr [ %i.tm, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i ], [ %i.ry, %bb.bp ] ; 3 uses
  %.sroa.0.0.i84.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.tt = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !381, !noalias !174, !noundef !5 ; 3 uses
  %i.tv = load i64, ptr %.sroa.0.0.i84.i.i.i.i.i.i, align 8, !range !22, !alias.scope !381, !noalias !174, !noundef !5
  %i.tw = icmp eq i64 %i.tu, %i.tv
  br i1 %i.tw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i84.i.i.i.i.i.i) #34
end_hunk_1
begin_hunk_2_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %.val4.i.i25.i.i = load i64, ptr %i.ac, align 8, !alias.scope !759, !noalias !748 ; 2 uses
  %i.ami = icmp eq i64 %.val4.i.i25.i.i, 0
  br i1 %i.ami, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils12OffsetLookupjEEBI_.exit.i.i27.i.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val5.i.i26.i.i = load ptr, ptr %i.amj, align 8, !alias.scope !759, !noalias !748, !nonnull !5, !noundef !5
  %i.amk = shl nuw i64 %.val4.i.i25.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i26.i.i, i64 noundef %i.amk, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !762
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils12OffsetLookupjEEBI_.exit.i.i27.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils12OffsetLookupjEEBI_.exit.i.i27.i.i: ; preds = %bb.hm, %bb.hl
  %.val.i.i28.i.i = load i64, ptr %i.alz, align 8, !alias.scope !759, !noalias !748 ; 2 uses
  %i.aml = icmp eq i64 %.val.i.i28.i.i, 0
  br i1 %i.aml, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils16IdentifyDistinctjEEBI_.exit.i30.i.i, label %bb.hn

bb.hn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils12OffsetLookupjEEBI_.exit.i.i27.i.i
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.val1.i.i29.i.i = load ptr, ptr %i.amm, align 8, !alias.scope !759, !noalias !748, !nonnull !5, !noundef !5
  %i.amn = shl nuw i64 %.val.i.i28.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i29.i.i, i64 noundef %i.amn, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !762
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils16IdentifyDistinctjEEBI_.exit.i30.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils16IdentifyDistinctjEEBI_.exit.i30.i.i: ; preds = %bb.hn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils12OffsetLookupjEEBI_.exit.i.i27.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !748
  br label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i3.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i5.i.i
  %lpad.loopexit48.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.fr, %bb.hj, %bb.hi, %bb.fq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit163.i.i.i.invoke.i, %bb.fp, %bb.fn, %bb.fk, %bb.fi, %bb.fg, %bb.fd, %bb.fb, %.noexc123.i.i.i.i, %bb.dw, %bb.cx, %.noexc23.i, %bb.ct, %bb.cs, %bb.co, %bb.m, %bb.j, %bb.i, %bb.h
  %lpad.loopexit.split-lp49.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils16IdentifyDistinctjEEBI_.exit.i30.i.i, %.noexc41.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils16IdentifyDistinctjEEBI_.exit.i.i.i, %.noexc39.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit163.i.i.i.invoke.i, %.noexc33.i, %.noexc20.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit47.i.i.i, %.noexc18.i, %bb.i, %.noexc.i
  %.sroa.4.0.copyload.i = load i64, ptr %i.bs, align 8, !noalias !67 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !67 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, i64 24, i1 false), !noalias !763
  %i.amo = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.amo, label %_RINvNtCsdftwklc2oBO_7similar6common21capture_diff_deadlineINtNtB4_4text12TextDiffSideeEBU_EB4_.exit, label %bb.ho

bb.ho:                                            ; preds = %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i
  %i.amp = mul nuw i64 %.sroa.4.0.copyload.i, 40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.amp, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !76
  br label %_RINvNtCsdftwklc2oBO_7similar6common21capture_diff_deadlineINtNtB4_4text12TextDiffSideeEBU_EB4_.exit

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.hk, %.body.i17.i.i, %bb.fl, %bb.ee, %bb.dq, %.loopexit.split-lp.i.i.i.i.i, %bb.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit45.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp321.i.i.i.i, %bb.dq ], [ %i.amh, %bb.hk ], [ %.pn.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit45.i.i.i ], [ %eh.lpad-body.i18.i.i, %.body.i17.i.i ], [ %.pn.i.i.i, %bb.k ], [ %lpad.phi.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %lpad.phi.i.i.i.i, %bb.ee ], [ %lpad.thr_comm.split-lp321.i.i.i.i, %bb.fl ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit48.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp49.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms7compact7CompactINtNtBI_4text12TextDiffSideeEB1w_INtNtBG_7replace7ReplaceNtNtBG_7capture7CaptureEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.aw) #35, !noalias !76
  br label %.body

_RINvNtCsdftwklc2oBO_7similar6common21capture_diff_deadlineINtNtB4_4text12TextDiffSideeEBU_EB4_.exit: ; preds = %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !67
  br label %bb.hp

bb.hp:                                            ; preds = %_RINvNtCsdftwklc2oBO_7similar6common21capture_diff_deadlineINtNtB4_4text12TextDiffSideeEBU_EB4_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdftwklc2oBO_7similar10algorithms5utils16IdentifyDistinctmEEBI_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amq, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.amr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ams = load i8, ptr %i.amr, align 8, !range !764, !noundef !5 ; 2 uses
  %.not13 = icmp eq i8 %i.ams, 2
  %spec.select = select i1 %.not13, i8 1, i8 %i.ams
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.amu = load i8, ptr %i.amt, align 1, !range !61, !noundef !5
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amv, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %spec.select, ptr %i.amw, align 8
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.amu, ptr %i.amx, align 1
  ret void

._crit_edge:                                      ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.amy = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !772
  %i.amz = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 9 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16 ; 4 uses
  %i.anb = load i8, ptr %i.ana, align 8, !range !159, !noalias !773, !noundef !5
  %i.anc = trunc nuw i8 %i.anb to i1
  br i1 %i.anc, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i.i, !prof !169

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i.i: ; preds = %._crit_edge
  %.pre.i.i.i = load i64, ptr %i.amz, align 8, !noalias !782
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !782
  br label %bb.hr

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %._crit_edge
  %i.and = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc53 unwind label %bb.d   ; 2 uses

.noexc53:                                         ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i.i
  %i.ane = extractvalue { i64, i64 } %i.and, 0
  %i.anf = extractvalue { i64, i64 } %i.and, 1    ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  store i64 %i.anf, ptr %i.ang, align 8, !noalias !783
  store i8 1, ptr %i.ana, align 8, !noalias !783
  br label %bb.hr

.loopexit193.i:                                   ; preds = %bb.jg, %bb.jf, %bb.im
  %lpad.loopexit.i47 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i52:                  ; preds = %bb.jx, %bb.jw, %bb.jo
  %lpad.loopexit202.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i35:         ; preds = %.split11.us.i.invoke.i
  %lpad.loopexit.split-lp203.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i35, %.loopexit.split-lp.loopexit.i52, %.loopexit193.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i47, %.loopexit193.i ], [ %lpad.loopexit202.i, %.loopexit.split-lp.loopexit.i52 ], [ %lpad.loopexit.split-lp203.i, %.loopexit.split-lp.loopexit.split-lp.i35 ]
  %.val33.i = load i64, ptr %i.y, align 8, !noalias !772 ; 2 uses
  %i.anh = icmp eq i64 %.val33.i, 0
  br i1 %i.anh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdftwklc2oBO_7similar.exit.i, label %bb.hq

bb.hq:                                            ; preds = %.loopexit.split-lp.i
  %.val34.i = load ptr, ptr %i.anm, align 8, !noalias !772, !nonnull !5, !noundef !5
  %i.ani = shl nuw i64 %.val33.i, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.ani, i64 noundef range(i64 1, -9223372036854775807) 4) #36, !noalias !772
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdftwklc2oBO_7similar.exit.i

bb.hr:                                            ; preds = %.noexc53, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i.i
  %.pre-phi278.i = phi i64 [ %i.anf, %.noexc53 ], [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.ane, %.noexc53 ], [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i.i ] ; 2 uses
  %i.anj = add i64 %.pre-phi.i, 1
  store i64 %i.anj, ptr %i.amz, align 8, !noalias !782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !772
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 5 uses
  store i64 %.pre-phi.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 3 uses
  store i64 %.pre-phi278.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !772
  store i64 0, ptr %i.z, align 8, !noalias !772
  %i.ank = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ank, align 8, !noalias !772
  %i.anl = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 0, ptr %i.anl, align 8, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !772
  store i64 0, ptr %i.y, align 8, !noalias !772
  %i.anm = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.anm, align 8, !noalias !772
  %i.ann = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store i64 0, ptr %i.ann, align 8, !noalias !772
  %.not.i = icmp eq i64 %.val24, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.hr
  %i.ano = load i64, ptr %2, align 8, !range !60, !alias.scope !786, !noalias !791, !noundef !5
  %i.anp = trunc nuw i64 %i.ano to i1             ; 2 uses
  %i.anq = load i64, ptr %i.bk, align 8, !alias.scope !786, !noalias !791, !noundef !5 ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ans = load ptr, ptr %i.anr, align 8, !alias.scope !768, !noalias !793, !nonnull !5 ; 6 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  br label %bb.hs

.preheader.i:                                     ; preds = %bb.jz, %bb.hr
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.hr ], [ %.sroa.0.3.i, %bb.jz ]
  %.not238.i = icmp eq i64 %.val14.pre, 0
  br i1 %.not238.i, label %._crit_edge.i, label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.preheader.i
  %i.anv = load i64, ptr %3, align 8, !range !60, !alias.scope !794, !noalias !799, !noundef !5
  %i.anw = trunc nuw i64 %i.anv to i1             ; 4 uses
  %i.anx = load i64, ptr %i.amy, align 8, !alias.scope !794, !noalias !799, !noundef !5 ; 3 uses
  %i.any = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.anz = load ptr, ptr %i.any, align 8, !alias.scope !770, !noalias !801, !nonnull !5 ; 6 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aod = load i64, ptr %2, align 8, !range !60, !alias.scope !768, !noalias !793
  %i.aoe = trunc nuw i64 %i.aod to i1
  %i.aof = load i64, ptr %i.bk, align 8, !alias.scope !768, !noalias !793
  %i.aog = load ptr, ptr %i.aoc, align 8, !alias.scope !768, !noalias !793, !nonnull !5 ; 2 uses
  br label %bb.ic

bb.hs:                                            ; preds = %bb.jz, %.lr.ph.i
  %i.aoh = phi ptr [ inttoptr (i64 4 to ptr), %.lr.ph.i ], [ %i.bdf, %bb.jz ]
  %i.aoi = phi i64 [ 0, %.lr.ph.i ], [ %i.aoj, %bb.jz ] ; 9 uses
  %.sroa.0.0233.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.3.i, %bb.jz ] ; 4 uses
  %i.aoj = add nuw nsw i64 %i.aoi, 1              ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.aok = icmp ult i64 %i.aoi, %i.anq            ; 4 uses
  br i1 %i.anp, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  br i1 %i.aok, label %bb.hw, label %.split11.us.i.invoke.i

bb.hu:                                            ; preds = %bb.hs
  br i1 %i.aok, label %bb.hv, label %.split11.us.i.invoke.i

bb.hv:                                            ; preds = %bb.hu
  %i.aol = getelementptr inbounds nuw [16 x i8], ptr %i.ans, i64 %i.aoi ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  br label %bb.jj

bb.hw:                                            ; preds = %bb.ht
  %i.aon = getelementptr inbounds nuw [24 x i8], ptr %i.ans, i64 %i.aoi ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.aon, i64 8
  %i.aop = getelementptr i8, ptr %i.aon, i64 16
  br label %bb.jj

._crit_edge.i:                                    ; preds = %bb.ji, %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !804
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoq, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !804
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 6 uses
  store i64 0, ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !765, !noalias !804
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 6 uses
  store i64 0, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !765, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aos = load i64, ptr %i.aor, align 8, !alias.scope !820, !noalias !772, !noundef !5 ; 3 uses
  %i.aot = icmp eq i64 %i.aos, 0
  br i1 %i.aot, label %bb.kb, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.aov = load i64, ptr %i.aou, align 8, !alias.scope !824, !noalias !772, !noundef !5 ; 2 uses
  %i.aow = icmp eq i64 %i.aov, 0
  br i1 %i.aow, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEEB1V_.exit.i.i.i.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aox = load ptr, ptr %i.aa, align 8, !alias.scope !824, !noalias !772, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i42 = load <16 x i8>, ptr %i.aox, align 16, !noalias !825
  %i.aoy = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i42, splat (i8 -1)
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.apa = bitcast <16 x i1> %i.aoy to i16
  br label %bb.hz

bb.hz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i, %bb.hy
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.aox, %bb.hy ], [ %.sroa.06.1.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.aoz, %bb.hy ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.apa, %bb.hy ], [ %i.apj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.aov, %bb.hy ], [ %i.apm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i45, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i45:                         ; preds = %bb.hz, %.lr.ph.i.i.i.i.i.i.i.i45
  %i.apb = phi ptr [ %i.apf, %.lr.ph.i.i.i.i.i.i.i.i45 ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.hz ] ; 2 uses
  %i.apc = phi ptr [ %i.ape, %.lr.ph.i.i.i.i.i.i.i.i45 ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.hz ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.apb, align 16, !noalias !828
  %i.apd = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ape = getelementptr inbounds i8, ptr %i.apc, i64 -512 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.apd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i46 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i.i45, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i45, %bb.hz
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.hz ], [ %i.apf, %.lr.ph.i.i.i.i.i.i.i.i45 ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.hz ], [ %i.ape, %.lr.ph.i.i.i.i.i.i.i.i45 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.hz ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i45 ] ; 3 uses
  %i.apg = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.aph = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.api = zext nneg i16 %i.aph to i64
  %i.apj = and i16 %i.apg, %.lcssa.i.i.i.i.i.i.i.i
  %i.apk = sub nsw i64 0, %i.api
  %i.apl = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.apk ; 2 uses
  %i.apm = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.apn = getelementptr i8, ptr %i.apl, i64 -24
  %.val.i.i.i.i.i.i.i43 = load i64, ptr %i.apn, align 8, !noalias !831 ; 2 uses
  %i.apo = icmp eq i64 %.val.i.i.i.i.i.i.i43, 0
  br i1 %i.apo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i.i
  %i.app = getelementptr i8, ptr %i.apl, i64 -16
  %.val5.i.i.i.i.i.i.i44 = load ptr, ptr %i.app, align 8, !noalias !831, !nonnull !5, !noundef !5
  %i.apq = mul nuw i64 %.val.i.i.i.i.i.i.i43, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i44, i64 noundef %i.apq, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !831
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i: ; preds = %bb.ia, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativemEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i.i
  %i.apr = icmp eq i64 %i.apm, 0
  br i1 %i.apr, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEEB1V_.exit.i.i.i.i.i.i, label %bb.hz

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEEB1V_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativemEEEEB1n_.exit.i.i.i.i.i.i.i, %bb.hx
  %i.aps = shl i64 %i.aos, 5                      ; 2 uses
  %i.apt = add i64 %i.aps, 32                     ; 2 uses
  %i.apu = add i64 %i.aos, 17
  %i.apv = add i64 %i.apu, %i.apt                 ; 4 uses
  %i.apw = icmp uge i64 %i.apv, %i.apt
  %i.apx = icmp ult i64 %i.apv, 9223372036854775793
  call void @llvm.assume(i1 %i.apw)
  call void @llvm.assume(i1 %i.apx)
  %i.apy = icmp eq i64 %i.apv, 0
  br i1 %i.apy, label %bb.kb, label %bb.ib

bb.ib:                                            ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativemEEEEB1V_.exit.i.i.i.i.i.i
  %i.apz = load ptr, ptr %i.aa, align 8, !alias.scope !820, !noalias !772, !nonnull !5, !noundef !5
  %i.aqa = sub nuw nsw i64 -32, %i.aps
  %i.aqb = getelementptr inbounds i8, ptr %i.apz, i64 %i.aqa
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqb, i64 noundef %i.apv, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !832
  br label %bb.kb

bb.ic:                                            ; preds = %bb.ji, %.lr.ph236.i
  %.sroa.0.1235.i = phi i32 [ %.sroa.0.0.lcssa.i, %.lr.ph236.i ], [ %.sroa.0.2.i, %bb.ji ] ; 4 uses
  %.sroa.024.0234.i = phi i64 [ 0, %.lr.ph236.i ], [ %i.aqc, %bb.ji ] ; 7 uses
  %i.aqc = add nuw nsw i64 %.sroa.024.0234.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.aqd = icmp ult i64 %.sroa.024.0234.i, %i.anx ; 5 uses
  br i1 %i.anw, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  br i1 %i.aqd, label %bb.ig, label %.split11.us.i.invoke.i

bb.ie:                                            ; preds = %bb.ic
  br i1 %i.aqd, label %bb.if, label %.split11.us.i.invoke.i

bb.if:                                            ; preds = %bb.ie
  %i.aqe = getelementptr inbounds nuw [16 x i8], ptr %i.anz, i64 %.sroa.024.0234.i ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  br label %bb.ih

bb.ig:                                            ; preds = %bb.id
  %i.aqg = getelementptr inbounds nuw [24 x i8], ptr %i.anz, i64 %.sroa.024.0234.i ; 2 uses
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 8
  %i.aqi = getelementptr i8, ptr %i.aqg, i64 16
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.sroa.5.1.i.in.i35.i = phi ptr [ %i.aqi, %bb.ig ], [ %i.aqf, %bb.if ]
  %.sroa.0.1.i.in.i36.i = phi ptr [ %i.aqh, %bb.ig ], [ %i.aqe, %bb.if ]
  %.sroa.0.1.i.i37.i = load ptr, ptr %.sroa.0.1.i.in.i36.i, align 8, !noalias !835, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i38.i = load i64, ptr %.sroa.5.1.i.in.i35.i, align 8, !noalias !835, !noundef !5 ; 4 uses
  %i.aqj = icmp samesign eq i64 %.sroa.5.1.i.i38.i, 0
  br i1 %i.aqj, label %.loopexit192.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ih
  %xtraiter386 = and i64 %.sroa.5.1.i.i38.i, 7    ; 3 uses
  %i.aqk = icmp ult i64 %.sroa.5.1.i.i38.i, 8
  br i1 %i.aqk, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter393 = and i64 %.sroa.5.1.i.i38.i, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i = phi ptr [ %.sroa.0.1.i.i37.i, %.lr.ph.i.i.i.preheader.new ], [ %i.arv, %.lr.ph.i.i.i ] ; 9 uses
  %i.aql = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.arz, %.lr.ph.i.i.i ]
  %niter394 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter394.next.7, %.lr.ph.i.i.i ]
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 1
  %i.aqn = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.aqo = zext i8 %i.aqn to i64
  %i.aqp = xor i64 %i.aql, %i.aqo
  %i.aqq = mul i64 %i.aqp, 1099511628211
  %i.aqr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.aqs = load i8, ptr %i.aqm, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.aqt = zext i8 %i.aqs to i64
  %i.aqu = xor i64 %i.aqq, %i.aqt
  %i.aqv = mul i64 %i.aqu, 1099511628211
  %i.aqw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.aqx = load i8, ptr %i.aqr, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.aqy = zext i8 %i.aqx to i64
  %i.aqz = xor i64 %i.aqv, %i.aqy
  %i.ara = mul i64 %i.aqz, 1099511628211
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.arc = load i8, ptr %i.aqw, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.ard = zext i8 %i.arc to i64
  %i.are = xor i64 %i.ara, %i.ard
  %i.arf = mul i64 %i.are, 1099511628211
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.arh = load i8, ptr %i.arb, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.ari = zext i8 %i.arh to i64
  %i.arj = xor i64 %i.arf, %i.ari
  %i.ark = mul i64 %i.arj, 1099511628211
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.arm = load i8, ptr %i.arg, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.arn = zext i8 %i.arm to i64
  %i.aro = xor i64 %i.ark, %i.arn
  %i.arp = mul i64 %i.aro, 1099511628211
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.arr = load i8, ptr %i.arl, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.ars = zext i8 %i.arr to i64
  %i.art = xor i64 %i.arp, %i.ars
  %i.aru = mul i64 %i.art, 1099511628211
  %i.arv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.arw = load i8, ptr %i.arq, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.arx = zext i8 %i.arw to i64
  %i.ary = xor i64 %i.aru, %i.arx
  %i.arz = mul i64 %i.ary, 1099511628211          ; 3 uses
  %niter394.next.7 = add nuw nsw i64 %niter394, 8 ; 2 uses
  %niter394.ncmp.7 = icmp eq i64 %niter394.next.7, %unroll_iter393
  br i1 %niter394.ncmp.7, label %.loopexit192.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i

.loopexit192.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i.i
  %lcmp.mod390.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod390.not, label %.loopexit192.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit192.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i37.i, %.lr.ph.i.i.i.preheader ], [ %i.arv, %.loopexit192.loopexit.i.unr-lcssa ]
  %.epil.init389 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.arz, %.loopexit192.loopexit.i.unr-lcssa ]
  %lcmp.mod392 = icmp ne i64 %xtraiter386, 0
  call void @llvm.assume(i1 %lcmp.mod392)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.epil = phi ptr [ %i.asb, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.asa = phi i64 [ %i.asf, %.lr.ph.i.i.i.epil ], [ %.epil.init389, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter387 = phi i64 [ %epil.iter387.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.asb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.epil, i64 1
  %i.asc = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !836, !noalias !843, !noundef !5
  %i.asd = zext i8 %i.asc to i64
  %i.ase = xor i64 %i.asa, %i.asd
  %i.asf = mul i64 %i.ase, 1099511628211          ; 2 uses
  %epil.iter387.next = add i64 %epil.iter387, 1   ; 2 uses
  %epil.iter387.cmp.not = icmp eq i64 %epil.iter387.next, %xtraiter386
  br i1 %epil.iter387.cmp.not, label %.loopexit192.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !847

.loopexit192.loopexit.i:                          ; preds = %.lr.ph.i.i.i.epil, %.loopexit192.loopexit.i.unr-lcssa
  %.lcssa286 = phi i64 [ %i.arz, %.loopexit192.loopexit.i.unr-lcssa ], [ %i.asf, %.lr.ph.i.i.i.epil ]
  %i.asg = xor i64 %.lcssa286, 255
  %i.ash = mul i64 %i.asg, 1099511628211
  br label %.loopexit192.i

.loopexit192.i:                                   ; preds = %.loopexit192.loopexit.i, %bb.ih
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %bb.ih ], [ %i.ash, %.loopexit192.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !772
  store i64 %.promoted.i.i.i.i, ptr %i.x, align 8, !noalias !851
  %.val.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !848, !noalias !853, !noundef !5
  %.val3.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !848, !noalias !853, !noundef !5
  %i.asi = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i.i, i64 %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x), !noalias !851 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.asj = lshr i64 %i.asi, 57
  %i.ask = trunc nuw nsw i64 %i.asj to i8         ; 3 uses
  %i.asl = load i64, ptr %i.aoa, align 8, !alias.scope !860, !noalias !861, !noundef !5 ; 3 uses
  %i.asm = load ptr, ptr %i.aa, align 8, !alias.scope !860, !noalias !861, !nonnull !5, !noundef !5 ; 3 uses
  %i.asn = insertelement <16 x i8> poison, i8 %i.ask, i64 0
  %i.aso = shufflevector <16 x i8> %i.asn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ik, %.loopexit192.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.loopexit192.i ], [ %i.atf, %bb.ik ]
  %.pn.i.i.i36 = phi i64 [ %i.asi, %.loopexit192.i ], [ %i.atg, %bb.ik ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i36, %i.asl ; 3 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.asp, align 1, !noalias !864 ; 2 uses
  %i.asq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.aso
  %i.asr = bitcast <16 x i1> %i.asq to i16        ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.asr, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %bb.ii, %bb.ij
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ate, %bb.ij ], [ %i.asr, %bb.ii ] ; 3 uses
  %i.ass = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ast = zext nneg i16 %i.ass to i64
  %i.asu = add i64 %.sroa.01.0.i.i.i.i, %i.ast
  %i.asv = and i64 %i.asu, %i.asl
  %i.asw = sub nsw i64 0, %i.asv
  %i.asx = getelementptr inbounds [32 x i8], ptr %i.asm, i64 %i.asw ; 2 uses
  %i.asy = getelementptr inbounds i8, ptr %i.asx, i64 -32
  %.val2.i.i.i.i = load i64, ptr %i.asy, align 8, !noalias !867, !noundef !5
  %i.asz = icmp eq i64 %.val2.i.i.i.i, %.promoted.i.i.i.i
  br i1 %i.asz, label %bb.ip, label %bb.ij, !prof !169

._crit_edge.i.i.i:                                ; preds = %bb.ij, %bb.ii
  %i.ata = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.atb = bitcast <16 x i1> %i.ata to i16
  %i.atc = icmp eq i16 %i.atb, 0
  br i1 %i.atc, label %bb.ik, label %bb.il, !prof !252

bb.ij:                                            ; preds = %.lr.ph.i.i41.i
  %i.atd = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ate = and i16 %i.atd, %.sroa.06.0.i31.i.i.i  ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ate, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i41.i

bb.ik:                                            ; preds = %._crit_edge.i.i.i
  %i.atf = add i64 %.sroa.9.0.i.i.i.i, 16         ; 2 uses
  %i.atg = add i64 %.sroa.01.0.i.i.i.i, %i.atf
  br label %bb.ii

bb.il:                                            ; preds = %._crit_edge.i.i.i
  %i.ath = load i64, ptr %i.aob, align 8, !alias.scope !870, !noalias !873, !noundef !5
  %i.ati = icmp eq i64 %i.ath, 0
  br i1 %i.ati, label %bb.im, label %bb.in, !prof !252

bb.im:                                            ; preds = %bb.il
  %i.atj = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativemEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx.i, i1 noundef zeroext true) #34
          to label %.noexc42.i51 unwind label %.loopexit193.i, !noalias !772 ; 0 uses

.noexc42.i51:                                     ; preds = %bb.im
  %.val.i.i.pre.i = load ptr, ptr %i.aa, align 8, !alias.scope !875, !noalias !878
  %.val3.i.i.pre.i = load i64, ptr %i.aoa, align 8, !alias.scope !875, !noalias !878
  br label %bb.in

bb.in:                                            ; preds = %.noexc42.i51, %bb.il
  %.val3.i.i.i = phi i64 [ %.val3.i.i.pre.i, %.noexc42.i51 ], [ %i.asl, %bb.il ] ; 4 uses
  %.val.i.i.i37 = phi ptr [ %.val.i.i.pre.i, %.noexc42.i51 ], [ %i.asm, %bb.il ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %.sroa.0.07.i.i.i.i = and i64 %.val3.i.i.i, %i.asi ; 3 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.val.i.i.i37, i64 %.sroa.0.07.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i = load <16 x i8>, ptr %i.atk, align 1, !noalias !882
  %i.atl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i, zeroinitializer
  %i.atm = bitcast <16 x i1> %i.atl to i16        ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i16 %i.atm, 0
  br i1 %.not.i9.i.i.i.i, label %.lr.ph.i.i.i.i48, label %._crit_edge.i.i.i.i38, !prof !377

._crit_edge.i.i.i.i38:                            ; preds = %.lr.ph.i.i.i.i48, %bb.in
  %.sroa.0.0.lcssa.i.i.i.i39 = phi i64 [ %.sroa.0.07.i.i.i.i, %bb.in ], [ %.sroa.0.0.i.i.i.i49, %.lr.ph.i.i.i.i48 ]
  %.lcssa.i.i.i.i = phi i16 [ %i.atm, %bb.in ], [ %i.aud, %.lr.ph.i.i.i.i48 ]
  %i.atn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ato = zext nneg i16 %i.atn to i64
  %i.atp = add i64 %.sroa.0.0.lcssa.i.i.i.i39, %i.ato
  %i.atq = and i64 %i.atp, %.val3.i.i.i           ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.val.i.i.i37, i64 %i.atq
  %i.ats = load i8, ptr %i.atr, align 1, !noalias !885, !noundef !5 ; 2 uses
  %i.att = icmp sgt i8 %i.ats, -1
  br i1 %i.att, label %bb.io, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i.i, !prof !252

bb.io:                                            ; preds = %._crit_edge.i.i.i.i38
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i37, align 16, !noalias !885
  %i.atu = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.atv = bitcast <16 x i1> %i.atu to i16        ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.atv, 0
  %i.atw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.atv, i1 true)
  %i.atx = zext nneg i16 %i.atw to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i)
  %.phi.trans.insert.i.i43.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i37, i64 %i.atx
  %.pre.i.i44.i = load i8, ptr %.phi.trans.insert.i.i43.i, align 1, !noalias !885
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i.i

.lr.ph.i.i.i.i48:                                 ; preds = %bb.in, %.lr.ph.i.i.i.i48
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i49, %.lr.ph.i.i.i.i48 ], [ %.sroa.0.07.i.i.i.i, %bb.in ]
  %i.aty = phi i64 [ %i.atz, %.lr.ph.i.i.i.i48 ], [ 0, %bb.in ]
  %i.atz = add i64 %i.aty, 16                     ; 2 uses
  %i.aua = add i64 %i.atz, %.sroa.0.010.i.i.i.i
  %.sroa.0.0.i.i.i.i49 = and i64 %i.aua, %.val3.i.i.i ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %.val.i.i.i37, i64 %.sroa.0.0.i.i.i.i49
  %.sroa.0.0.copyload.i6.i.i.i.i = load <16 x i8>, ptr %i.aub, align 1, !noalias !882
  %i.auc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i, zeroinitializer
  %i.aud = bitcast <16 x i1> %i.auc to i16        ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq i16 %i.aud, 0
  br i1 %.not.i.i.i.i.i50, label %.lr.ph.i.i.i.i48, label %._crit_edge.i.i.i.i38, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i.i: ; preds = %bb.io, %._crit_edge.i.i.i.i38
  %i.aue = phi i8 [ %.pre.i.i44.i, %bb.io ], [ %i.ats, %._crit_edge.i.i.i.i38 ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.atx, %bb.io ], [ %i.atq, %._crit_edge.i.i.i.i38 ] ; 3 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.val.i.i.i37, i64 %.sroa.0.0.i5.i.i.i.i
  %i.aug = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.auh = and i64 %i.aug, %.val3.i.i.i
  store i8 %i.ask, ptr %i.auf, align 1, !noalias !885
  %i.aui = getelementptr i8, ptr %.val.i.i.i37, i64 %i.auh
  %i.auj = getelementptr i8, ptr %i.aui, i64 16
  store i8 %i.ask, ptr %i.auj, align 1, !noalias !885
  %i.auk = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.aul = getelementptr inbounds [32 x i8], ptr %.val.i.i.i37, i64 %i.auk ; 5 uses
  %i.aum = and i8 %i.aue, 1
  %i.aun = zext nneg i8 %i.aum to i64
  %i.auo = getelementptr inbounds i8, ptr %i.aul, i64 -32
  store i64 %.promoted.i.i.i.i, ptr %i.auo, align 8, !noalias !886
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.aul, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !886
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.aul, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !886
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.aul, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !886
  %i.aup = load <2 x i64>, ptr %i.aob, align 8, !alias.scope !875, !noalias !878
  %i.auq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aun, i64 0
  %i.aur = sub <2 x i64> %i.aup, %i.auq
  store <2 x i64> %i.aur, ptr %i.aob, align 8, !alias.scope !875, !noalias !878
  br label %bb.iq

bb.ip:                                            ; preds = %.lr.ph.i.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !772
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i.i
  %.pn.i.i = phi ptr [ %i.aul, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i.i ], [ %i.asx, %bb.ip ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.aus = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16 ; 2 uses
  %i.aut = load ptr, ptr %i.aus, align 8, !noalias !772, !nonnull !5, !noundef !5 ; 3 uses
  %i.auu = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.auv = load i64, ptr %i.auu, align 8, !noalias !772, !noundef !5 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.auv, 24
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.idx.i
  %i.aux = icmp eq i64 %i.auv, 0
  br i1 %i.aux, label %.loopexit.i41, label %.lr.ph.i.i

end_hunk_2
begin_hunk_3_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_:bb.a
bb.iu:                                            ; preds = %bb.is
  br i1 %i.aqd, label %bb.iw, label %.split11.us.i.invoke.i

bb.iv:                                            ; preds = %bb.it
  %i.avi = load i64, ptr %i.avg, align 8, !noalias !887, !noundef !5 ; 2 uses
  %i.avj = icmp ult i64 %i.avi, %i.anx
  br i1 %i.avj, label %bb.iy, label %.split11.us.i.invoke.i

bb.iw:                                            ; preds = %bb.iu
  %i.avk = load i64, ptr %i.avg, align 8, !noalias !887, !noundef !5 ; 2 uses
  %i.avl = icmp ult i64 %i.avk, %i.anx
  br i1 %i.avl, label %bb.ix, label %.split11.us.i.invoke.i

bb.ix:                                            ; preds = %bb.iw
  %i.avm = getelementptr inbounds nuw [16 x i8], ptr %i.anz, i64 %i.avk ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i.i

bb.iy:                                            ; preds = %bb.iv
  %i.avo = getelementptr inbounds nuw [24 x i8], ptr %i.anz, i64 %i.avi ; 2 uses
  %i.avp = getelementptr i8, ptr %i.avo, i64 8
  %i.avq = getelementptr i8, ptr %i.avo, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i.i: ; preds = %bb.iy, %bb.ix
  %.sroa.5.1.i.i8.in.i.i.i = phi ptr [ %i.avc, %bb.iy ], [ %i.auz, %bb.ix ]
  %.sroa.0.1.i.i6.in.i.i.i = phi ptr [ %i.avb, %bb.iy ], [ %i.auy, %bb.ix ]
  %.sroa.5.1.i.in.i1.i.i.i = phi ptr [ %i.avq, %bb.iy ], [ %i.avn, %bb.ix ]
  %.sroa.0.1.i.in.i2.i.i.i = phi ptr [ %i.avp, %bb.iy ], [ %i.avm, %bb.ix ]
  %.sroa.5.1.i.i8.i.i.i = load i64, ptr %.sroa.5.1.i.i8.in.i.i.i, align 8, !noalias !893, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i4.i.i.i = load i64, ptr %.sroa.5.1.i.in.i1.i.i.i, align 8, !noalias !899, !noundef !5
  %i.avr = icmp eq i64 %.sroa.5.1.i.i8.i.i.i, %.sroa.5.1.i.i4.i.i.i
  br i1 %i.avr, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i.i

bb.iz:                                            ; preds = %bb.ir
  br i1 %i.aqd, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i, label %.split11.us.i.invoke.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i: ; preds = %bb.iz
  %.sroa.0.1.i.i8.i.i.i = load ptr, ptr %.237.i, align 8, !noalias !905, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i9.i.i.i = load i64, ptr %..i40, align 8, !noalias !905, !noundef !5 ; 2 uses
  %i.avs = load i64, ptr %i.avg, align 8, !noalias !887, !noundef !5 ; 3 uses
  %i.avt = icmp ult i64 %i.avs, %i.aof            ; 2 uses
  br i1 %i.aoe, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i
  br i1 %i.avt, label %bb.jd, label %.split11.us.i.invoke.i

bb.jb:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i
  br i1 %i.avt, label %bb.jc, label %.split11.us.i.invoke.i

bb.jc:                                            ; preds = %bb.jb
  %i.avu = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %i.avs ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i.i

bb.jd:                                            ; preds = %bb.ja
  %i.avw = getelementptr inbounds nuw [24 x i8], ptr %i.aog, i64 %i.avs ; 2 uses
  %i.avx = getelementptr i8, ptr %i.avw, i64 8
  %i.avy = getelementptr i8, ptr %i.avw, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i.i: ; preds = %bb.jd, %bb.jc
  %.sroa.5.1.i.in.i11.i.i.i = phi ptr [ %i.avy, %bb.jd ], [ %i.avv, %bb.jc ]
  %.sroa.0.1.i.in.i12.i.i.i = phi ptr [ %i.avx, %bb.jd ], [ %i.avu, %bb.jc ]
  %.sroa.5.1.i.i14.i.i.i = load i64, ptr %.sroa.5.1.i.in.i11.i.i.i, align 8, !noalias !911, !noundef !5
  %i.avz = icmp eq i64 %.sroa.5.1.i.i9.i.i.i, %.sroa.5.1.i.i14.i.i.i
  br i1 %i.avz, label %.split.i.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i.i

.split.i.i:                                       ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i.i
  %.sroa.0.1.i.i13.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i12.i.i.i, align 8, !noalias !911, !nonnull !5, !noundef !5
  %bcmp.i17.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i13.i.i.i, i64 %.sroa.5.1.i.i9.i.i.i), !alias.scope !917, !noalias !887
  %i.awa = icmp eq i32 %bcmp.i17.i.i.i, 0
  br i1 %i.awa, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i.i
  %.sroa.0.1.i.i6.i.i.i = load ptr, ptr %.sroa.0.1.i.i6.in.i.i.i, align 8, !noalias !893, !nonnull !5, !noundef !5
  %.sroa.0.1.i.i3.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i2.i.i.i, align 8, !noalias !899, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i6.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i3.i.i.i, i64 %.sroa.5.1.i.i8.i.i.i), !alias.scope !921, !noalias !887
  %i.awb = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.awb, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i.i, %.split.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i.i
  %i.awc = icmp eq ptr %i.ave, %i.auw
  br i1 %i.awc, label %.loopexit.i41, label %bb.ir

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i.i, %.split.i.i
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avd, i64 16
  %i.awe = load i32, ptr %i.awd, align 8, !noalias !772, !noundef !5
  br label %bb.je

bb.je:                                            ; preds = %bb.jh, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit.i
  %.sroa.013.0.i = phi i32 [ %i.awe, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit.i ], [ %.sroa.0.1235.i, %bb.jh ]
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1235.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativemEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_mE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit.i ], [ %i.awi, %bb.jh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.awf = load i64, ptr %i.ann, align 8, !alias.scope !925, !noalias !772, !noundef !5 ; 3 uses
  %i.awg = load i64, ptr %i.y, align 8, !range !22, !alias.scope !925, !noalias !772, !noundef !5
  %i.awh = icmp eq i64 %i.awf, %i.awg
  br i1 %i.awh, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #34
          to label %bb.ji unwind label %.loopexit193.i, !noalias !772

.loopexit.i41:                                    ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctmE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i.i, %bb.iq
  %i.awi = add i32 %.sroa.0.1235.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.awj = load i64, ptr %.sroa.0.0.i.i, align 8, !range !22, !alias.scope !928, !noalias !931, !noundef !5
  %i.awk = icmp eq i64 %i.auv, %i.awj
  br i1 %i.awk, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %.loopexit.i41
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBV_16IdentifyDistinctpE3new14RepresentativemEE8grow_oneBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i) #34
          to label %._crit_edge274.i unwind label %.loopexit193.i, !noalias !772

._crit_edge274.i:                                 ; preds = %bb.jg
  %.pre275.i = load ptr, ptr %i.aus, align 8, !alias.scope !928, !noalias !931
  br label %bb.jh

bb.jh:                                            ; preds = %._crit_edge274.i, %.loopexit.i41
  %i.awl = phi ptr [ %.pre275.i, %._crit_edge274.i ], [ %i.aut, %.loopexit.i41 ]
  %i.awm = getelementptr inbounds nuw [24 x i8], ptr %i.awl, i64 %i.auv ; 3 uses
  store i64 1, ptr %i.awm, align 8, !noalias !933
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  store i64 %.sroa.024.0234.i, ptr %.sroa.4130.0..sroa_idx.i, align 8, !noalias !933
  %.sroa.5131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  store i32 %.sroa.0.1235.i, ptr %.sroa.5131.0..sroa_idx.i, align 8, !noalias !933
  %i.awn = add i64 %i.auv, 1
  store i64 %i.awn, ptr %i.auu, align 8, !alias.scope !928, !noalias !931
  br label %bb.je

bb.ji:                                            ; preds = %bb.jf, %bb.je
  %i.awo = load ptr, ptr %i.anm, align 8, !alias.scope !925, !noalias !772, !nonnull !5, !noundef !5
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.awf
  store i32 %.sroa.013.0.i, ptr %i.awp, align 4, !noalias !934
  %i.awq = add i64 %i.awf, 1
  store i64 %i.awq, ptr %i.ann, align 8, !alias.scope !925, !noalias !772
  %exitcond266.not.i = icmp eq i64 %i.aqc, %.val14.pre
  br i1 %exitcond266.not.i, label %._crit_edge.i, label %bb.ic

bb.jj:                                            ; preds = %bb.hw, %bb.hv
  %.sroa.5.1.i.in.i.i = phi ptr [ %i.aop, %bb.hw ], [ %i.aom, %bb.hv ]
  %.sroa.0.1.i.in.i.i = phi ptr [ %i.aoo, %bb.hw ], [ %i.aol, %bb.hv ]
  %.sroa.0.1.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i.i, align 8, !noalias !935, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i.i = load i64, ptr %.sroa.5.1.i.in.i.i, align 8, !noalias !935, !noundef !5 ; 4 uses
  %i.awr = icmp samesign eq i64 %.sroa.5.1.i.i.i, 0
  br i1 %i.awr, label %.loopexit201.i, label %.lr.ph.i.i53.i.preheader

.lr.ph.i.i53.i.preheader:                         ; preds = %bb.jj
  %xtraiter377 = and i64 %.sroa.5.1.i.i.i, 7      ; 3 uses
  %i.aws = icmp ult i64 %.sroa.5.1.i.i.i, 8
  br i1 %i.aws, label %.lr.ph.i.i53.i.epil.preheader, label %.lr.ph.i.i53.i.preheader.new

.lr.ph.i.i53.i.preheader.new:                     ; preds = %.lr.ph.i.i53.i.preheader
  %unroll_iter384 = and i64 %.sroa.5.1.i.i.i, -8
  br label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.preheader.new
  %.sroa.0.0.i1.i.i54.i = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i.i53.i.preheader.new ], [ %i.ayd, %.lr.ph.i.i53.i ] ; 9 uses
  %i.awt = phi i64 [ -3750763034362895579, %.lr.ph.i.i53.i.preheader.new ], [ %i.ayh, %.lr.ph.i.i53.i ]
  %niter385 = phi i64 [ 0, %.lr.ph.i.i53.i.preheader.new ], [ %niter385.next.7, %.lr.ph.i.i53.i ]
  %i.awu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 1
  %i.awv = load i8, ptr %.sroa.0.0.i1.i.i54.i, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.aww = zext i8 %i.awv to i64
  %i.awx = xor i64 %i.awt, %i.aww
  %i.awy = mul i64 %i.awx, 1099511628211
  %i.awz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 2
  %i.axa = load i8, ptr %i.awu, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.axb = zext i8 %i.axa to i64
  %i.axc = xor i64 %i.awy, %i.axb
  %i.axd = mul i64 %i.axc, 1099511628211
  %i.axe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 3
  %i.axf = load i8, ptr %i.awz, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.axg = zext i8 %i.axf to i64
  %i.axh = xor i64 %i.axd, %i.axg
  %i.axi = mul i64 %i.axh, 1099511628211
  %i.axj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 4
  %i.axk = load i8, ptr %i.axe, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.axl = zext i8 %i.axk to i64
  %i.axm = xor i64 %i.axi, %i.axl
  %i.axn = mul i64 %i.axm, 1099511628211
  %i.axo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 5
  %i.axp = load i8, ptr %i.axj, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.axq = zext i8 %i.axp to i64
  %i.axr = xor i64 %i.axn, %i.axq
  %i.axs = mul i64 %i.axr, 1099511628211
  %i.axt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 6
  %i.axu = load i8, ptr %i.axo, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.axv = zext i8 %i.axu to i64
  %i.axw = xor i64 %i.axs, %i.axv
  %i.axx = mul i64 %i.axw, 1099511628211
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 7
  %i.axz = load i8, ptr %i.axt, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.aya = zext i8 %i.axz to i64
  %i.ayb = xor i64 %i.axx, %i.aya
  %i.ayc = mul i64 %i.ayb, 1099511628211
  %i.ayd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i, i64 8 ; 2 uses
  %i.aye = load i8, ptr %i.axy, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.ayf = zext i8 %i.aye to i64
  %i.ayg = xor i64 %i.ayc, %i.ayf
  %i.ayh = mul i64 %i.ayg, 1099511628211          ; 3 uses
  %niter385.next.7 = add nuw nsw i64 %niter385, 8 ; 2 uses
  %niter385.ncmp.7 = icmp eq i64 %niter385.next.7, %unroll_iter384
  br i1 %niter385.ncmp.7, label %.loopexit201.loopexit.i.unr-lcssa, label %.lr.ph.i.i53.i

.loopexit201.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i53.i
  %lcmp.mod381.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod381.not, label %.loopexit201.loopexit.i, label %.lr.ph.i.i53.i.epil.preheader

.lr.ph.i.i53.i.epil.preheader:                    ; preds = %.loopexit201.loopexit.i.unr-lcssa, %.lr.ph.i.i53.i.preheader
  %.sroa.0.0.i1.i.i54.i.epil.init = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i.i53.i.preheader ], [ %i.ayd, %.loopexit201.loopexit.i.unr-lcssa ]
  %.epil.init380 = phi i64 [ -3750763034362895579, %.lr.ph.i.i53.i.preheader ], [ %i.ayh, %.loopexit201.loopexit.i.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter377, 0
  call void @llvm.assume(i1 %lcmp.mod383)
  br label %.lr.ph.i.i53.i.epil

.lr.ph.i.i53.i.epil:                              ; preds = %.lr.ph.i.i53.i.epil, %.lr.ph.i.i53.i.epil.preheader
  %.sroa.0.0.i1.i.i54.i.epil = phi ptr [ %i.ayj, %.lr.ph.i.i53.i.epil ], [ %.sroa.0.0.i1.i.i54.i.epil.init, %.lr.ph.i.i53.i.epil.preheader ] ; 2 uses
  %i.ayi = phi i64 [ %i.ayn, %.lr.ph.i.i53.i.epil ], [ %.epil.init380, %.lr.ph.i.i53.i.epil.preheader ]
  %epil.iter378 = phi i64 [ %epil.iter378.next, %.lr.ph.i.i53.i.epil ], [ 0, %.lr.ph.i.i53.i.epil.preheader ]
  %i.ayj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.i.epil, i64 1
  %i.ayk = load i8, ptr %.sroa.0.0.i1.i.i54.i.epil, align 1, !alias.scope !936, !noalias !943, !noundef !5
  %i.ayl = zext i8 %i.ayk to i64
  %i.aym = xor i64 %i.ayi, %i.ayl
  %i.ayn = mul i64 %i.aym, 1099511628211          ; 2 uses
  %epil.iter378.next = add i64 %epil.iter378, 1   ; 2 uses
  %epil.iter378.cmp.not = icmp eq i64 %epil.iter378.next, %xtraiter377
  br i1 %epil.iter378.cmp.not, label %.loopexit201.loopexit.i, label %.lr.ph.i.i53.i.epil, !llvm.loop !947

.loopexit201.loopexit.i:                          ; preds = %.lr.ph.i.i53.i.epil, %.loopexit201.loopexit.i.unr-lcssa
  %.lcssa302 = phi i64 [ %i.ayh, %.loopexit201.loopexit.i.unr-lcssa ], [ %i.ayn, %.lr.ph.i.i53.i.epil ]
  %i.ayo = xor i64 %.lcssa302, 255
  %i.ayp = mul i64 %i.ayo, 1099511628211
  br label %.loopexit201.i

.loopexit201.i:                                   ; preds = %.loopexit201.loopexit.i, %bb.jj
  %.promoted.i.i.i55.i = phi i64 [ -5808391946409677970, %bb.jj ], [ %i.ayp, %.loopexit201.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !772
  store i64 %.promoted.i.i.i55.i, ptr %i.w, align 8, !noalias !951
  %.val.i57.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !948, !noalias !953, !noundef !5
  %.val3.i58.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !948, !noalias !953, !noundef !5
  %i.ayq = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i57.i, i64 %.val3.i58.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w), !noalias !951 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.ayr = lshr i64 %i.ayq, 57
  %i.ays = trunc nuw nsw i64 %i.ayr to i8         ; 3 uses
  %i.ayt = load i64, ptr %i.ant, align 8, !alias.scope !960, !noalias !961, !noundef !5 ; 3 uses
  %i.ayu = load ptr, ptr %i.aa, align 8, !alias.scope !960, !noalias !961, !nonnull !5, !noundef !5 ; 3 uses
  %i.ayv = insertelement <16 x i8> poison, i8 %i.ays, i64 0
  %i.ayw = shufflevector <16 x i8> %i.ayv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jm, %.loopexit201.i
  %.sroa.9.0.i.i.i59.i = phi i64 [ 0, %.loopexit201.i ], [ %i.azn, %bb.jm ]
  %.pn.i.i60.i = phi i64 [ %i.ayq, %.loopexit201.i ], [ %i.azo, %bb.jm ]
  %.sroa.01.0.i.i.i61.i = and i64 %.pn.i.i60.i, %i.ayt ; 3 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayu, i64 %.sroa.01.0.i.i.i61.i
  %.sroa.0.0.copyload.i24.i.i62.i = load <16 x i8>, ptr %i.ayx, align 1, !noalias !964 ; 2 uses
  %i.ayy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i62.i, %i.ayw
  %i.ayz = bitcast <16 x i1> %i.ayy to i16        ; 2 uses
  %.not.i.not30.i.i63.i = icmp eq i16 %i.ayz, 0
  br i1 %.not.i.not30.i.i63.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i64.i

.lr.ph.i.i64.i:                                   ; preds = %bb.jk, %bb.jl
  %.sroa.06.0.i31.i.i65.i = phi i16 [ %i.azm, %bb.jl ], [ %i.ayz, %bb.jk ] ; 3 uses
  %i.aza = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i65.i, i1 true)
  %i.azb = zext nneg i16 %i.aza to i64
  %i.azc = add i64 %.sroa.01.0.i.i.i61.i, %i.azb
  %i.azd = and i64 %i.azc, %i.ayt
  %i.aze = sub nsw i64 0, %i.azd
  %i.azf = getelementptr inbounds [32 x i8], ptr %i.ayu, i64 %i.aze ; 2 uses
  %i.azg = getelementptr inbounds i8, ptr %i.azf, i64 -32
  %.val2.i.i.i66.i = load i64, ptr %i.azg, align 8, !noalias !967, !noundef !5
  %i.azh = icmp eq i64 %.val2.i.i.i66.i, %.promoted.i.i.i55.i
  br i1 %i.azh, label %bb.jr, label %bb.jl, !prof !169

._crit_edge.i.i68.i:                              ; preds = %bb.jl, %bb.jk
  %i.azi = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i62.i, splat (i8 -1)
  %i.azj = bitcast <16 x i1> %i.azi to i16
  %i.azk = icmp eq i16 %i.azj, 0
  br i1 %i.azk, label %bb.jm, label %bb.jn, !prof !252

bb.jl:                                            ; preds = %.lr.ph.i.i64.i
  %i.azl = add i16 %.sroa.06.0.i31.i.i65.i, -1
  %i.azm = and i16 %i.azl, %.sroa.06.0.i31.i.i65.i ; 2 uses
  %.not.i.not.i.i67.i = icmp eq i16 %i.azm, 0
  br i1 %.not.i.not.i.i67.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i64.i

bb.jm:                                            ; preds = %._crit_edge.i.i68.i
  %i.azn = add i64 %.sroa.9.0.i.i.i59.i, 16       ; 2 uses
  %i.azo = add i64 %.sroa.01.0.i.i.i61.i, %i.azn
  br label %bb.jk

bb.jn:                                            ; preds = %._crit_edge.i.i68.i
  %i.azp = load i64, ptr %i.anu, align 8, !alias.scope !970, !noalias !973, !noundef !5
  %i.azq = icmp eq i64 %i.azp, 0
  br i1 %i.azq, label %bb.jo, label %bb.jp, !prof !252

bb.jo:                                            ; preds = %bb.jn
  %i.azr = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativemEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx.i, i1 noundef zeroext true) #34
          to label %.noexc73.i unwind label %.loopexit.split-lp.loopexit.i52, !noalias !772 ; 0 uses

.noexc73.i:                                       ; preds = %bb.jo
  %.val.i.i79.pre.i = load ptr, ptr %i.aa, align 8, !alias.scope !975, !noalias !978
  %.val3.i.i80.pre.i = load i64, ptr %i.ant, align 8, !alias.scope !975, !noalias !978
  br label %bb.jp

bb.jp:                                            ; preds = %.noexc73.i, %bb.jn
  %.val3.i.i80.i = phi i64 [ %.val3.i.i80.pre.i, %.noexc73.i ], [ %i.ayt, %bb.jn ] ; 4 uses
  %.val.i.i79.i = phi ptr [ %.val.i.i79.pre.i, %.noexc73.i ], [ %i.ayu, %bb.jn ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %.sroa.0.07.i.i.i81.i = and i64 %.val3.i.i80.i, %i.ayq ; 3 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %.sroa.0.07.i.i.i81.i
  %.sroa.0.0.copyload.i68.i.i.i82.i = load <16 x i8>, ptr %i.azs, align 1, !noalias !982
  %i.azt = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i82.i, zeroinitializer
  %i.azu = bitcast <16 x i1> %i.azt to i16        ; 2 uses
  %.not.i9.i.i.i83.i = icmp eq i16 %i.azu, 0
  br i1 %.not.i9.i.i.i83.i, label %.lr.ph.i.i.i98.i, label %._crit_edge.i.i.i84.i, !prof !377

._crit_edge.i.i.i84.i:                            ; preds = %.lr.ph.i.i.i98.i, %bb.jp
  %.sroa.0.0.lcssa.i.i.i85.i = phi i64 [ %.sroa.0.07.i.i.i81.i, %bb.jp ], [ %.sroa.0.0.i.i.i100.i, %.lr.ph.i.i.i98.i ]
  %.lcssa.i.i.i86.i = phi i16 [ %i.azu, %bb.jp ], [ %i.bal, %.lr.ph.i.i.i98.i ]
  %i.azv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i86.i, i1 true)
  %i.azw = zext nneg i16 %i.azv to i64
  %i.azx = add i64 %.sroa.0.0.lcssa.i.i.i85.i, %i.azw
  %i.azy = and i64 %i.azx, %.val3.i.i80.i         ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %i.azy
  %i.baa = load i8, ptr %i.azz, align 1, !noalias !985, !noundef !5 ; 2 uses
  %i.bab = icmp sgt i8 %i.baa, -1
  br i1 %i.bab, label %bb.jq, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i87.i, !prof !252

bb.jq:                                            ; preds = %._crit_edge.i.i.i84.i
  %.val2.i.i.i.i94.i = load <16 x i8>, ptr %.val.i.i79.i, align 16, !noalias !985
  %i.bac = icmp slt <16 x i8> %.val2.i.i.i.i94.i, zeroinitializer
  %i.bad = bitcast <16 x i1> %i.bac to i16        ; 2 uses
  %.not.i6.i.i.i95.i = icmp ne i16 %i.bad, 0
  %i.bae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bad, i1 true)
  %i.baf = zext nneg i16 %i.bae to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i95.i)
  %.phi.trans.insert.i.i96.i = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %i.baf
  %.pre.i.i97.i = load i8, ptr %.phi.trans.insert.i.i96.i, align 1, !noalias !985
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i87.i

.lr.ph.i.i.i98.i:                                 ; preds = %bb.jp, %.lr.ph.i.i.i98.i
  %.sroa.0.010.i.i.i99.i = phi i64 [ %.sroa.0.0.i.i.i100.i, %.lr.ph.i.i.i98.i ], [ %.sroa.0.07.i.i.i81.i, %bb.jp ]
  %i.bag = phi i64 [ %i.bah, %.lr.ph.i.i.i98.i ], [ 0, %bb.jp ]
  %i.bah = add i64 %i.bag, 16                     ; 2 uses
  %i.bai = add i64 %i.bah, %.sroa.0.010.i.i.i99.i
  %.sroa.0.0.i.i.i100.i = and i64 %i.bai, %.val3.i.i80.i ; 3 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %.sroa.0.0.i.i.i100.i
  %.sroa.0.0.copyload.i6.i.i.i101.i = load <16 x i8>, ptr %i.baj, align 1, !noalias !982
  %i.bak = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i101.i, zeroinitializer
  %i.bal = bitcast <16 x i1> %i.bak to i16        ; 2 uses
  %.not.i.i.i.i102.i = icmp eq i16 %i.bal, 0
  br i1 %.not.i.i.i.i102.i, label %.lr.ph.i.i.i98.i, label %._crit_edge.i.i.i84.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i87.i: ; preds = %bb.jq, %._crit_edge.i.i.i84.i
  %i.bam = phi i8 [ %.pre.i.i97.i, %bb.jq ], [ %i.baa, %._crit_edge.i.i.i84.i ]
  %.sroa.0.0.i5.i.i.i88.i = phi i64 [ %i.baf, %bb.jq ], [ %i.azy, %._crit_edge.i.i.i84.i ] ; 3 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %.val.i.i79.i, i64 %.sroa.0.0.i5.i.i.i88.i
  %i.bao = add i64 %.sroa.0.0.i5.i.i.i88.i, -16
  %i.bap = and i64 %i.bao, %.val3.i.i80.i
  store i8 %i.ays, ptr %i.ban, align 1, !noalias !985
  %i.baq = getelementptr i8, ptr %.val.i.i79.i, i64 %i.bap
  %i.bar = getelementptr i8, ptr %i.baq, i64 16
  store i8 %i.ays, ptr %i.bar, align 1, !noalias !985
  %i.bas = sub nsw i64 0, %.sroa.0.0.i5.i.i.i88.i
  %i.bat = getelementptr inbounds [32 x i8], ptr %.val.i.i79.i, i64 %i.bas ; 5 uses
  %i.bau = and i8 %i.bam, 1
  %i.bav = zext nneg i8 %i.bau to i64
  %i.baw = getelementptr inbounds i8, ptr %i.bat, i64 -32
  store i64 %.promoted.i.i.i55.i, ptr %i.baw, align 8, !noalias !986
  %.sroa.49.0..sroa_idx.i89.i = getelementptr inbounds i8, ptr %i.bat, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i89.i, align 8, !noalias !986
  %.sroa.510.0..sroa_idx.i90.i = getelementptr inbounds i8, ptr %i.bat, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i90.i, align 8, !noalias !986
  %.sroa.6.0..sroa_idx.i91.i = getelementptr inbounds i8, ptr %i.bat, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i91.i, align 8, !noalias !986
  %i.bax = load <2 x i64>, ptr %i.anu, align 8, !alias.scope !975, !noalias !978
  %i.bay = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bav, i64 0
  %i.baz = sub <2 x i64> %i.bax, %i.bay
  store <2 x i64> %i.baz, ptr %i.anu, align 8, !alias.scope !975, !noalias !978
  br label %bb.js

bb.jr:                                            ; preds = %.lr.ph.i.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !772
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i87.i
  %.pn.i92.i = phi ptr [ %i.bat, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativemEEEE14insert_no_growB1A_.exit.i87.i ], [ %i.azf, %bb.jr ] ; 3 uses
  %.sroa.0.0.i93.i = getelementptr inbounds i8, ptr %.pn.i92.i, i64 -24 ; 2 uses
  %i.bba = getelementptr inbounds i8, ptr %.pn.i92.i, i64 -16 ; 2 uses
  %i.bbb = load ptr, ptr %i.bba, align 8, !noalias !772, !nonnull !5, !noundef !5 ; 6 uses
  %i.bbc = getelementptr inbounds i8, ptr %.pn.i92.i, i64 -8 ; 2 uses
  %i.bbd = load i64, ptr %i.bbc, align 8, !noalias !772, !noundef !5 ; 5 uses
  %.idx191.i = mul nuw nsw i64 %i.bbd, 24
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbb, i64 %.idx191.i ; 4 uses
  %i.bbf = icmp eq i64 %i.bbd, 0
  br i1 %i.bbf, label %.loopexit194.i, label %.lr.ph.i105.i

end_hunk_3
begin_hunk_4_@_RINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB6_16IdentifyDistinctjE3newINtNtBa_4text12TextDiffSideeEB1i_EBa_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %bb.au

bb.h:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.021.0230 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  br label %bb.au

._crit_edge:                                      ; preds = %bb.at, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !1834, !noundef !5 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEEB2h_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !1838, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEEB1V_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.e, align 8, !alias.scope !1838, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bg, align 16, !noalias !1839
  %i.bh = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = bitcast <16 x i1> %i.bh to i16
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i, %bb.j
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.j ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.bj, %bb.j ], [ %i.bs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.be, %bb.j ], [ %i.bv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.bk = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bl = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.k ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bk, align 16, !noalias !1842
  %i.bm = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -512 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bm to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.k ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.k ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.k ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bp = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = and i16 %i.bp, %.lcssa.i.i.i.i.i.i.i
  %i.bt = sub nsw i64 0, %i.br
  %i.bu = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bt ; 2 uses
  %i.bv = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !noalias !1838 ; 2 uses
  %i.bx = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i
  %i.by = getelementptr i8, ptr %i.bu, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !noalias !1838, !nonnull !5, !noundef !5
  %i.bz = mul nuw i64 %.val.i.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !1838
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_EB1G_.exit.i.i.i.i.i.i
  %i.ca = icmp eq i64 %i.bv, 0
  br i1 %i.ca, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEEB1V_.exit.i.i.i.i.i, label %bb.k

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEEB1V_.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEEB1n_.exit.i.i.i.i.i.i, %bb.i
  %i.cb = shl i64 %i.bb, 5                        ; 2 uses
  %i.cc = add i64 %i.cb, 32                       ; 2 uses
  %i.cd = add i64 %i.bb, 17
  %i.ce = add i64 %i.cd, %i.cc                    ; 4 uses
  %i.cf = icmp uge i64 %i.ce, %i.cc
  %i.cg = icmp ult i64 %i.ce, 9223372036854775793
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEEB2h_.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEEB1V_.exit.i.i.i.i.i
  %i.ci = load ptr, ptr %i.e, align 8, !alias.scope !1834, !nonnull !5, !noundef !5
  %i.cj = sub nuw nsw i64 -32, %i.cb
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !1834
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEEB2h_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEEB2h_.exit: ; preds = %._crit_edge, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEEB1V_.exit.i.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %.lr.ph234, %bb.at
  %.sroa.0.1233 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph234 ], [ %.sroa.0.2, %bb.at ] ; 4 uses
  %.sroa.024.0232 = phi i64 [ 0, %.lr.ph234 ], [ %i.cl, %bb.at ] ; 7 uses
  %i.cl = add nuw nsw i64 %.sroa.024.0232, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  %i.cm = icmp ult i64 %.sroa.024.0232, %i.af     ; 5 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.cm, label %bb.r, label %.split11.us.i.invoke

bb.p:                                             ; preds = %bb.n
  br i1 %i.cm, label %bb.q, label %.split11.us.i.invoke

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.sroa.024.0232 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.024.0232 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.5.1.i.in.i35 = phi ptr [ %i.cr, %bb.r ], [ %i.co, %bb.q ]
  %.sroa.0.1.i.in.i36 = phi ptr [ %i.cq, %bb.r ], [ %i.cn, %bb.q ]
  %.sroa.0.1.i.i37 = load ptr, ptr %.sroa.0.1.i.in.i36, align 8, !noalias !1847, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i38 = load i64, ptr %.sroa.5.1.i.in.i35, align 8, !noalias !1847, !noundef !5 ; 4 uses
  %i.cs = icmp samesign eq i64 %.sroa.5.1.i.i38, 0
  br i1 %i.cs, label %.loopexit190, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %xtraiter59 = and i64 %.sroa.5.1.i.i38, 7       ; 3 uses
  %i.ct = icmp ult i64 %.sroa.5.1.i.i38, 8
  br i1 %i.ct, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter66 = and i64 %.sroa.5.1.i.i38, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i37, %.lr.ph.i.i.preheader.new ], [ %i.ee, %.lr.ph.i.i ] ; 9 uses
  %i.cu = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.ei, %.lr.ph.i.i ]
  %niter67 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cw = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.cx = zext i8 %i.cw to i64
  %i.cy = xor i64 %i.cu, %i.cx
  %i.cz = mul i64 %i.cy, 1099511628211
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.db = load i8, ptr %i.cv, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.dc = zext i8 %i.db to i64
  %i.dd = xor i64 %i.cz, %i.dc
  %i.de = mul i64 %i.dd, 1099511628211
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.dg = load i8, ptr %i.da, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dl = load i8, ptr %i.df, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dj, %i.dm
  %i.do = mul i64 %i.dn, 1099511628211
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.dq = load i8, ptr %i.dk, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.ef = load i8, ptr %i.dz, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.ed, %i.eg
  %i.ei = mul i64 %i.eh, 1099511628211            ; 3 uses
  %niter67.next.7 = add nuw nsw i64 %niter67, 8   ; 2 uses
  %niter67.ncmp.7 = icmp eq i64 %niter67.next.7, %unroll_iter66
  br i1 %niter67.ncmp.7, label %.loopexit190.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit190.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod63.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod63.not, label %.loopexit190.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit190.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.0.i1.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i37, %.lr.ph.i.i.preheader ], [ %i.ee, %.loopexit190.loopexit.unr-lcssa ]
  %.epil.init62 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.ei, %.loopexit190.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter59, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.epil = phi ptr [ %i.ek, %.lr.ph.i.i.epil ], [ %.sroa.0.0.i1.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ej = phi i64 [ %i.eo, %.lr.ph.i.i.epil ], [ %.epil.init62, %.lr.ph.i.i.epil.preheader ]
  %epil.iter60 = phi i64 [ %epil.iter60.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.epil, i64 1
  %i.el = load i8, ptr %.sroa.0.0.i1.i.i.epil, align 1, !alias.scope !1848, !noalias !1855, !noundef !5
  %i.em = zext i8 %i.el to i64
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = mul i64 %i.en, 1099511628211            ; 2 uses
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %xtraiter59
  br i1 %epil.iter60.cmp.not, label %.loopexit190.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !1859

.loopexit190.loopexit:                            ; preds = %.lr.ph.i.i.epil, %.loopexit190.loopexit.unr-lcssa
  %.lcssa31 = phi i64 [ %i.ei, %.loopexit190.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i.i.epil ]
  %i.ep = xor i64 %.lcssa31, 255
  %i.eq = mul i64 %i.ep, 1099511628211
  br label %.loopexit190

.loopexit190:                                     ; preds = %.loopexit190.loopexit, %bb.s
  %.promoted.i.i.i = phi i64 [ -5808391946409677970, %bb.s ], [ %i.eq, %.loopexit190.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.promoted.i.i.i, ptr %i.b, align 8, !noalias !1863
  %.val.i = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !1860, !noalias !1865, !noundef !5
  %.val3.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1860, !noalias !1865, !noundef !5
  %i.er = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !1863 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.es = lshr i64 %i.er, 57
  %i.et = trunc nuw nsw i64 %i.es to i8           ; 3 uses
  %i.eu = load i64, ptr %i.ai, align 8, !alias.scope !1872, !noalias !1873, !noundef !5 ; 3 uses
  %i.ev = load ptr, ptr %i.e, align 8, !alias.scope !1872, !noalias !1873, !nonnull !5, !noundef !5 ; 3 uses
  %i.ew = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ex = shufflevector <16 x i8> %i.ew, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.loopexit190
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit190 ], [ %i.fo, %bb.v ]
  %.pn.i.i = phi i64 [ %i.er, %.loopexit190 ], [ %i.fp, %bb.v ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.eu     ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !1876 ; 2 uses
  %i.ez = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ex
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %bb.t, %bb.u
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fn, %bb.u ], [ %i.fa, %bb.t ] ; 3 uses
  %i.fb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.01.0.i.i.i, %i.fc
  %i.fe = and i64 %i.fd, %i.eu
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -32
  %.val2.i.i.i = load i64, ptr %i.fh, align 8, !noalias !1879, !noundef !5
  %i.fi = icmp eq i64 %.val2.i.i.i, %.promoted.i.i.i
  br i1 %i.fi, label %bb.aa, label %bb.u, !prof !169

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.t
  %i.fj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fk = bitcast <16 x i1> %i.fj to i16
  %i.fl = icmp eq i16 %i.fk, 0
  br i1 %i.fl, label %bb.v, label %bb.w, !prof !252

bb.u:                                             ; preds = %.lr.ph.i.i41
  %i.fm = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fn = and i16 %i.fm, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i41

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.fo = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fp = add i64 %.sroa.01.0.i.i.i, %i.fo
  br label %bb.t

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.fq = load i64, ptr %i.aj, align 8, !alias.scope !1882, !noalias !1885, !noundef !5
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.x, label %bb.y, !prof !252

bb.x:                                             ; preds = %bb.w
  %i.fs = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativejEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx, i1 noundef zeroext true) #34
          to label %.noexc42 unwind label %.loopexit191 ; 0 uses

.noexc42:                                         ; preds = %bb.x
  %.val.i.i.pre = load ptr, ptr %i.e, align 8, !alias.scope !1887, !noalias !1890
  %.val3.i.i.pre = load i64, ptr %i.ai, align 8, !alias.scope !1887, !noalias !1890
  br label %bb.y

bb.y:                                             ; preds = %.noexc42, %bb.w
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc42 ], [ %i.eu, %bb.w ] ; 4 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %.noexc42 ], [ %i.ev, %bb.w ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.er   ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.ft, align 1, !noalias !1894
  %i.fu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.fv = bitcast <16 x i1> %i.fu to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.fv, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !377

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.y
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.y ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.fv, %bb.y ], [ %i.gm, %.lr.ph.i.i.i ]
  %i.fw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = add i64 %.sroa.0.0.lcssa.i.i.i, %i.fx
  %i.fz = and i64 %i.fy, %.val3.i.i               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !1897, !noundef !5 ; 2 uses
  %i.gc = icmp sgt i8 %i.gb, -1
  br i1 %i.gc, label %bb.z, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i, !prof !252

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !1897
  %i.gd = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ge = bitcast <16 x i1> %i.gd to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.ge, 0
  %i.gf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ge, i1 true)
  %i.gg = zext nneg i16 %i.gf to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gg
  %.pre.i.i44 = load i8, ptr %.phi.trans.insert.i.i43, align 1, !noalias !1897
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.y ]
  %i.gh = phi i64 [ %i.gi, %.lr.ph.i.i.i ], [ 0, %bb.y ]
  %i.gi = add i64 %i.gh, 16                       ; 2 uses
  %i.gj = add i64 %i.gi, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.gj, %.val3.i.i    ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.gk, align 1, !noalias !1894
  %i.gl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.gm = bitcast <16 x i1> %i.gl to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.gm, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i: ; preds = %bb.z, %._crit_edge.i.i.i
  %i.gn = phi i8 [ %.pre.i.i44, %bb.z ], [ %i.gb, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.gg, %bb.z ], [ %i.fz, %._crit_edge.i.i.i ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.gp = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.gq = and i64 %i.gp, %.val3.i.i
  store i8 %i.et, ptr %i.go, align 1, !noalias !1897
  %i.gr = getelementptr i8, ptr %.val.i.i, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 %i.et, ptr %i.gs, align 1, !noalias !1897
  %i.gt = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.gu = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.gt ; 5 uses
  %i.gv = and i8 %i.gn, 1
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 -32
  store i64 %.promoted.i.i.i, ptr %i.gx, align 8, !noalias !1898
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gu, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1898
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gu, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !1898
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gu, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1898
  %i.gy = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !1887, !noalias !1890
  %i.gz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gw, i64 0
  %i.ha = sub <2 x i64> %i.gy, %i.gz
  store <2 x i64> %i.ha, ptr %i.aj, align 8, !alias.scope !1887, !noalias !1890
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i
  %.pn.i = phi ptr [ %i.gu, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i ], [ %i.fg, %bb.aa ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.hd = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !noundef !5 ; 5 uses
  %.idx = mul nuw nsw i64 %i.he, 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.idx
  %i.hg = icmp eq i64 %i.he, 0
  br i1 %i.hg, label %.loopexit, label %.lr.ph.i

end_hunk_4
begin_hunk_5_@_RINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB6_16IdentifyDistinctjE3newINtNtBa_4text12TextDiffSideeEB1i_EBa_:bb.a
bb.af:                                            ; preds = %bb.ad
  br i1 %i.cm, label %bb.ah, label %.split11.us.i.invoke

bb.ag:                                            ; preds = %bb.ae
  %i.hr = load i64, ptr %i.hp, align 8, !noalias !1899, !noundef !5 ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.af
  br i1 %i.hs, label %bb.aj, label %.split11.us.i.invoke

bb.ah:                                            ; preds = %bb.af
  %i.ht = load i64, ptr %i.hp, align 8, !noalias !1899, !noundef !5 ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.af
  br i1 %i.hu, label %bb.ai, label %.split11.us.i.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ht ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i

bb.aj:                                            ; preds = %bb.ag
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.hr ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %i.hz = getelementptr i8, ptr %i.hx, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i: ; preds = %bb.aj, %bb.ai
  %.sroa.5.1.i.i8.in.i.i = phi ptr [ %i.hl, %bb.aj ], [ %i.hi, %bb.ai ]
  %.sroa.0.1.i.i6.in.i.i = phi ptr [ %i.hk, %bb.aj ], [ %i.hh, %bb.ai ]
  %.sroa.5.1.i.in.i1.i.i = phi ptr [ %i.hz, %bb.aj ], [ %i.hw, %bb.ai ]
  %.sroa.0.1.i.in.i2.i.i = phi ptr [ %i.hy, %bb.aj ], [ %i.hv, %bb.ai ]
  %.sroa.5.1.i.i8.i.i = load i64, ptr %.sroa.5.1.i.i8.in.i.i, align 8, !noalias !1905, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i4.i.i = load i64, ptr %.sroa.5.1.i.in.i1.i.i, align 8, !noalias !1911, !noundef !5
  %i.ia = icmp eq i64 %.sroa.5.1.i.i8.i.i, %.sroa.5.1.i.i4.i.i
  br i1 %i.ia, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i

bb.ak:                                            ; preds = %bb.ac
  br i1 %i.cm, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i, label %.split11.us.i.invoke

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i: ; preds = %bb.ak
  %.sroa.0.1.i.i8.i.i = load ptr, ptr %.235, align 8, !noalias !1917, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i9.i.i = load i64, ptr %., align 8, !noalias !1917, !noundef !5 ; 2 uses
  %i.ib = load i64, ptr %i.hp, align 8, !noalias !1899, !noundef !5 ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %i.ao               ; 2 uses
  br i1 %i.an, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i
  br i1 %i.ic, label %bb.ao, label %.split11.us.i.invoke

bb.am:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i
  br i1 %i.ic, label %bb.an, label %.split11.us.i.invoke

bb.an:                                            ; preds = %bb.am
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ib ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i

bb.ao:                                            ; preds = %bb.al
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ib ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 8
  %i.ih = getelementptr i8, ptr %i.if, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.5.1.i.in.i11.i.i = phi ptr [ %i.ih, %bb.ao ], [ %i.ie, %bb.an ]
  %.sroa.0.1.i.in.i12.i.i = phi ptr [ %i.ig, %bb.ao ], [ %i.id, %bb.an ]
  %.sroa.5.1.i.i14.i.i = load i64, ptr %.sroa.5.1.i.in.i11.i.i, align 8, !noalias !1923, !noundef !5
  %i.ii = icmp eq i64 %.sroa.5.1.i.i9.i.i, %.sroa.5.1.i.i14.i.i
  br i1 %i.ii, label %.split.i, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i

.split.i:                                         ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i
  %.sroa.0.1.i.i13.i.i = load ptr, ptr %.sroa.0.1.i.in.i12.i.i, align 8, !noalias !1923, !nonnull !5, !noundef !5
  %bcmp.i17.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i8.i.i, ptr nonnull readonly %.sroa.0.1.i.i13.i.i, i64 %.sroa.5.1.i.i9.i.i), !alias.scope !1929, !noalias !1899
  %i.ij = icmp eq i32 %bcmp.i17.i.i, 0
  br i1 %i.ij, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i
  %.sroa.0.1.i.i6.i.i = load ptr, ptr %.sroa.0.1.i.i6.in.i.i, align 8, !noalias !1905, !nonnull !5, !noundef !5
  %.sroa.0.1.i.i3.i.i = load ptr, ptr %.sroa.0.1.i.in.i2.i.i, align 8, !noalias !1911, !nonnull !5, !noundef !5
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i6.i.i, ptr nonnull readonly %.sroa.0.1.i.i3.i.i, i64 %.sroa.5.1.i.i8.i.i), !alias.scope !1933, !noalias !1899
  %i.ik = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ik, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i, %.split.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit15.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.i
  %i.il = icmp eq ptr %i.hn, %i.hf
  br i1 %i.il, label %.loopexit, label %bb.ac

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit: ; preds = %.split.i, %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.in = load i64, ptr %i.im, align 8, !noundef !5
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit
  %.sroa.013.0 = phi i64 [ %i.in, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit ], [ %.sroa.0.1233, %bb.as ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1233, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtNtB13_4text12TextDiffSideeEB3B_Es_0EB13_.exit ], [ %i.ir, %bb.as ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %i.io = load i64, ptr %i.t, align 8, !alias.scope !1937, !noundef !5 ; 3 uses
  %i.ip = load i64, ptr %i.c, align 8, !range !22, !alias.scope !1937, !noundef !5
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %bb.at unwind label %.loopexit191

.loopexit:                                        ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtNtBc_4text12TextDiffSideeEB1k_Es_0Bc_.exit.thread.i, %bb.ab
  %i.ir = add i64 %.sroa.0.1233, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %i.is = load i64, ptr %.sroa.0.0.i, align 8, !range !22, !alias.scope !1940, !noalias !1943, !noundef !5
  %i.it = icmp eq i64 %i.he, %i.is
  br i1 %i.it, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.loopexit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBV_16IdentifyDistinctpE3new14RepresentativejEE8grow_oneBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i) #34
          to label %._crit_edge272 unwind label %.loopexit191

._crit_edge272:                                   ; preds = %bb.ar
  %.pre273 = load ptr, ptr %i.hb, align 8, !alias.scope !1940, !noalias !1943
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge272, %.loopexit
  %i.iu = phi ptr [ %.pre273, %._crit_edge272 ], [ %i.hc, %.loopexit ]
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.iu, i64 %i.he ; 3 uses
  store i64 1, ptr %i.iv, align 8, !noalias !1940
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 %.sroa.024.0232, ptr %.sroa.4129.0..sroa_idx, align 8, !noalias !1940
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i64 %.sroa.0.1233, ptr %.sroa.5130.0..sroa_idx, align 8, !noalias !1940
  %i.iw = add i64 %i.he, 1
  store i64 %i.iw, ptr %i.hd, align 8, !alias.scope !1940, !noalias !1943
  br label %bb.ap

bb.at:                                            ; preds = %bb.ap, %bb.aq
  %i.ix = load ptr, ptr %i.s, align 8, !alias.scope !1937, !nonnull !5, !noundef !5
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.io
  store i64 %.sroa.013.0, ptr %i.iy, align 8, !noalias !1937
  %i.iz = add i64 %i.io, 1
  store i64 %i.iz, ptr %i.t, align 8, !alias.scope !1937
  %exitcond264.not = icmp eq i64 %i.cl, %4
  br i1 %exitcond264.not, label %._crit_edge, label %bb.n

bb.au:                                            ; preds = %bb.h, %bb.g
  %.sroa.5.1.i.in.i = phi ptr [ %i.ay, %bb.h ], [ %i.av, %bb.g ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.ax, %bb.h ], [ %i.au, %bb.g ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !1945, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !1945, !noundef !5 ; 4 uses
  %i.ja = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.ja, label %.loopexit199, label %.lr.ph.i.i53.preheader

.lr.ph.i.i53.preheader:                           ; preds = %bb.au
  %xtraiter = and i64 %.sroa.5.1.i.i, 7           ; 3 uses
  %i.jb = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.jb, label %.lr.ph.i.i53.epil.preheader, label %.lr.ph.i.i53.preheader.new

.lr.ph.i.i53.preheader.new:                       ; preds = %.lr.ph.i.i53.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %.lr.ph.i.i53, %.lr.ph.i.i53.preheader.new
  %.sroa.0.0.i1.i.i54 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i53.preheader.new ], [ %i.km, %.lr.ph.i.i53 ] ; 9 uses
  %i.jc = phi i64 [ -3750763034362895579, %.lr.ph.i.i53.preheader.new ], [ %i.kq, %.lr.ph.i.i53 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i53.preheader.new ], [ %niter.next.7, %.lr.ph.i.i53 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 1
  %i.je = load i8, ptr %.sroa.0.0.i1.i.i54, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.jf = zext i8 %i.je to i64
  %i.jg = xor i64 %i.jc, %i.jf
  %i.jh = mul i64 %i.jg, 1099511628211
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 2
  %i.jj = load i8, ptr %i.jd, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.jk = zext i8 %i.jj to i64
  %i.jl = xor i64 %i.jh, %i.jk
  %i.jm = mul i64 %i.jl, 1099511628211
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 3
  %i.jo = load i8, ptr %i.ji, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.jp = zext i8 %i.jo to i64
  %i.jq = xor i64 %i.jm, %i.jp
  %i.jr = mul i64 %i.jq, 1099511628211
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 4
  %i.jt = load i8, ptr %i.jn, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.ju = zext i8 %i.jt to i64
  %i.jv = xor i64 %i.jr, %i.ju
  %i.jw = mul i64 %i.jv, 1099511628211
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 5
  %i.jy = load i8, ptr %i.js, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.jz = zext i8 %i.jy to i64
  %i.ka = xor i64 %i.jw, %i.jz
  %i.kb = mul i64 %i.ka, 1099511628211
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 6
  %i.kd = load i8, ptr %i.jx, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.ke = zext i8 %i.kd to i64
  %i.kf = xor i64 %i.kb, %i.ke
  %i.kg = mul i64 %i.kf, 1099511628211
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 7
  %i.ki = load i8, ptr %i.kc, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.kj = zext i8 %i.ki to i64
  %i.kk = xor i64 %i.kg, %i.kj
  %i.kl = mul i64 %i.kk, 1099511628211
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54, i64 8 ; 2 uses
  %i.kn = load i8, ptr %i.kh, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.ko = zext i8 %i.kn to i64
  %i.kp = xor i64 %i.kl, %i.ko
  %i.kq = mul i64 %i.kp, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit199.loopexit.unr-lcssa, label %.lr.ph.i.i53

.loopexit199.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i53
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit199.loopexit, label %.lr.ph.i.i53.epil.preheader

.lr.ph.i.i53.epil.preheader:                      ; preds = %.loopexit199.loopexit.unr-lcssa, %.lr.ph.i.i53.preheader
  %.sroa.0.0.i1.i.i54.epil.init = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i53.preheader ], [ %i.km, %.loopexit199.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i53.preheader ], [ %i.kq, %.loopexit199.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.i.i53.epil

.lr.ph.i.i53.epil:                                ; preds = %.lr.ph.i.i53.epil, %.lr.ph.i.i53.epil.preheader
  %.sroa.0.0.i1.i.i54.epil = phi ptr [ %i.ks, %.lr.ph.i.i53.epil ], [ %.sroa.0.0.i1.i.i54.epil.init, %.lr.ph.i.i53.epil.preheader ] ; 2 uses
  %i.kr = phi i64 [ %i.kw, %.lr.ph.i.i53.epil ], [ %.epil.init, %.lr.ph.i.i53.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i53.epil ], [ 0, %.lr.ph.i.i53.epil.preheader ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i54.epil, i64 1
  %i.kt = load i8, ptr %.sroa.0.0.i1.i.i54.epil, align 1, !alias.scope !1946, !noalias !1953, !noundef !5
  %i.ku = zext i8 %i.kt to i64
  %i.kv = xor i64 %i.kr, %i.ku
  %i.kw = mul i64 %i.kv, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit199.loopexit, label %.lr.ph.i.i53.epil, !llvm.loop !1957

.loopexit199.loopexit:                            ; preds = %.lr.ph.i.i53.epil, %.loopexit199.loopexit.unr-lcssa
  %.lcssa47 = phi i64 [ %i.kq, %.loopexit199.loopexit.unr-lcssa ], [ %i.kw, %.lr.ph.i.i53.epil ]
  %i.kx = xor i64 %.lcssa47, 255
  %i.ky = mul i64 %i.kx, 1099511628211
  br label %.loopexit199

.loopexit199:                                     ; preds = %.loopexit199.loopexit, %bb.au
  %.promoted.i.i.i55 = phi i64 [ -5808391946409677970, %bb.au ], [ %i.ky, %.loopexit199.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted.i.i.i55, ptr %i.a, align 8, !noalias !1961
  %.val.i57 = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !1958, !noalias !1963, !noundef !5
  %.val3.i58 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1958, !noalias !1963, !noundef !5
  %i.kz = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i57, i64 %.val3.i58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !1961 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  %i.la = lshr i64 %i.kz, 57
  %i.lb = trunc nuw nsw i64 %i.la to i8           ; 3 uses
  %i.lc = load i64, ptr %i.aa, align 8, !alias.scope !1970, !noalias !1971, !noundef !5 ; 3 uses
  %i.ld = load ptr, ptr %i.e, align 8, !alias.scope !1970, !noalias !1971, !nonnull !5, !noundef !5 ; 3 uses
  %i.le = insertelement <16 x i8> poison, i8 %i.lb, i64 0
  %i.lf = shufflevector <16 x i8> %i.le, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.loopexit199
  %.sroa.9.0.i.i.i59 = phi i64 [ 0, %.loopexit199 ], [ %i.lw, %bb.ax ]
  %.pn.i.i60 = phi i64 [ %i.kz, %.loopexit199 ], [ %i.lx, %bb.ax ]
  %.sroa.01.0.i.i.i61 = and i64 %.pn.i.i60, %i.lc ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.sroa.01.0.i.i.i61
  %.sroa.0.0.copyload.i24.i.i62 = load <16 x i8>, ptr %i.lg, align 1, !noalias !1974 ; 2 uses
  %i.lh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i62, %i.lf
  %i.li = bitcast <16 x i1> %i.lh to i16          ; 2 uses
  %.not.i.not30.i.i63 = icmp eq i16 %i.li, 0
  br i1 %.not.i.not30.i.i63, label %._crit_edge.i.i68, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %bb.av, %bb.aw
  %.sroa.06.0.i31.i.i65 = phi i16 [ %i.lv, %bb.aw ], [ %i.li, %bb.av ] ; 3 uses
  %i.lj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i65, i1 true)
  %i.lk = zext nneg i16 %i.lj to i64
  %i.ll = add i64 %.sroa.01.0.i.i.i61, %i.lk
  %i.lm = and i64 %i.ll, %i.lc
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds [32 x i8], ptr %i.ld, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -32
  %.val2.i.i.i66 = load i64, ptr %i.lp, align 8, !noalias !1977, !noundef !5
  %i.lq = icmp eq i64 %.val2.i.i.i66, %.promoted.i.i.i55
  br i1 %i.lq, label %bb.bc, label %bb.aw, !prof !169

._crit_edge.i.i68:                                ; preds = %bb.aw, %bb.av
  %i.lr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i62, splat (i8 -1)
  %i.ls = bitcast <16 x i1> %i.lr to i16
  %i.lt = icmp eq i16 %i.ls, 0
  br i1 %i.lt, label %bb.ax, label %bb.ay, !prof !252

bb.aw:                                            ; preds = %.lr.ph.i.i64
  %i.lu = add i16 %.sroa.06.0.i31.i.i65, -1
  %i.lv = and i16 %i.lu, %.sroa.06.0.i31.i.i65    ; 2 uses
  %.not.i.not.i.i67 = icmp eq i16 %i.lv, 0
  br i1 %.not.i.not.i.i67, label %._crit_edge.i.i68, label %.lr.ph.i.i64

bb.ax:                                            ; preds = %._crit_edge.i.i68
  %i.lw = add i64 %.sroa.9.0.i.i.i59, 16          ; 2 uses
  %i.lx = add i64 %.sroa.01.0.i.i.i61, %i.lw
  br label %bb.av

bb.ay:                                            ; preds = %._crit_edge.i.i68
  %i.ly = load i64, ptr %i.ab, align 8, !alias.scope !1980, !noalias !1983, !noundef !5
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.az, label %bb.ba, !prof !252

bb.az:                                            ; preds = %bb.ay
  %i.ma = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativejEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx, i1 noundef zeroext true) #34
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc73:                                         ; preds = %bb.az
  %.val.i.i79.pre = load ptr, ptr %i.e, align 8, !alias.scope !1985, !noalias !1988
  %.val3.i.i80.pre = load i64, ptr %i.aa, align 8, !alias.scope !1985, !noalias !1988
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc73, %bb.ay
  %.val3.i.i80 = phi i64 [ %.val3.i.i80.pre, %.noexc73 ], [ %i.lc, %bb.ay ] ; 4 uses
  %.val.i.i79 = phi ptr [ %.val.i.i79.pre, %.noexc73 ], [ %i.ld, %bb.ay ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %.sroa.0.07.i.i.i81 = and i64 %.val3.i.i80, %i.kz ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.val.i.i79, i64 %.sroa.0.07.i.i.i81
  %.sroa.0.0.copyload.i68.i.i.i82 = load <16 x i8>, ptr %i.mb, align 1, !noalias !1992
  %i.mc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i82, zeroinitializer
  %i.md = bitcast <16 x i1> %i.mc to i16          ; 2 uses
  %.not.i9.i.i.i83 = icmp eq i16 %i.md, 0
  br i1 %.not.i9.i.i.i83, label %.lr.ph.i.i.i98, label %._crit_edge.i.i.i84, !prof !377

._crit_edge.i.i.i84:                              ; preds = %.lr.ph.i.i.i98, %bb.ba
  %.sroa.0.0.lcssa.i.i.i85 = phi i64 [ %.sroa.0.07.i.i.i81, %bb.ba ], [ %.sroa.0.0.i.i.i100, %.lr.ph.i.i.i98 ]
  %.lcssa.i.i.i86 = phi i16 [ %i.md, %bb.ba ], [ %i.mu, %.lr.ph.i.i.i98 ]
  %i.me = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i86, i1 true)
  %i.mf = zext nneg i16 %i.me to i64
  %i.mg = add i64 %.sroa.0.0.lcssa.i.i.i85, %i.mf
  %i.mh = and i64 %i.mg, %.val3.i.i80             ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.val.i.i79, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !1995, !noundef !5 ; 2 uses
  %i.mk = icmp sgt i8 %i.mj, -1
  br i1 %i.mk, label %bb.bb, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i87, !prof !252

bb.bb:                                            ; preds = %._crit_edge.i.i.i84
  %.val2.i.i.i.i94 = load <16 x i8>, ptr %.val.i.i79, align 16, !noalias !1995
  %i.ml = icmp slt <16 x i8> %.val2.i.i.i.i94, zeroinitializer
  %i.mm = bitcast <16 x i1> %i.ml to i16          ; 2 uses
  %.not.i6.i.i.i95 = icmp ne i16 %i.mm, 0
  %i.mn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.mm, i1 true)
  %i.mo = zext nneg i16 %i.mn to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i95)
  %.phi.trans.insert.i.i96 = getelementptr inbounds nuw i8, ptr %.val.i.i79, i64 %i.mo
  %.pre.i.i97 = load i8, ptr %.phi.trans.insert.i.i96, align 1, !noalias !1995
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i87

.lr.ph.i.i.i98:                                   ; preds = %bb.ba, %.lr.ph.i.i.i98
  %.sroa.0.010.i.i.i99 = phi i64 [ %.sroa.0.0.i.i.i100, %.lr.ph.i.i.i98 ], [ %.sroa.0.07.i.i.i81, %bb.ba ]
  %i.mp = phi i64 [ %i.mq, %.lr.ph.i.i.i98 ], [ 0, %bb.ba ]
  %i.mq = add i64 %i.mp, 16                       ; 2 uses
  %i.mr = add i64 %i.mq, %.sroa.0.010.i.i.i99
  %.sroa.0.0.i.i.i100 = and i64 %i.mr, %.val3.i.i80 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.val.i.i79, i64 %.sroa.0.0.i.i.i100
  %.sroa.0.0.copyload.i6.i.i.i101 = load <16 x i8>, ptr %i.ms, align 1, !noalias !1992
  %i.mt = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i101, zeroinitializer
  %i.mu = bitcast <16 x i1> %i.mt to i16          ; 2 uses
  %.not.i.i.i.i102 = icmp eq i16 %i.mu, 0
  br i1 %.not.i.i.i.i102, label %.lr.ph.i.i.i98, label %._crit_edge.i.i.i84, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i87: ; preds = %bb.bb, %._crit_edge.i.i.i84
  %i.mv = phi i8 [ %.pre.i.i97, %bb.bb ], [ %i.mj, %._crit_edge.i.i.i84 ]
  %.sroa.0.0.i5.i.i.i88 = phi i64 [ %i.mo, %bb.bb ], [ %i.mh, %._crit_edge.i.i.i84 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.val.i.i79, i64 %.sroa.0.0.i5.i.i.i88
  %i.mx = add i64 %.sroa.0.0.i5.i.i.i88, -16
  %i.my = and i64 %i.mx, %.val3.i.i80
  store i8 %i.lb, ptr %i.mw, align 1, !noalias !1995
  %i.mz = getelementptr i8, ptr %.val.i.i79, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 16
  store i8 %i.lb, ptr %i.na, align 1, !noalias !1995
  %i.nb = sub nsw i64 0, %.sroa.0.0.i5.i.i.i88
  %i.nc = getelementptr inbounds [32 x i8], ptr %.val.i.i79, i64 %i.nb ; 5 uses
  %i.nd = and i8 %i.mv, 1
  %i.ne = zext nneg i8 %i.nd to i64
  %i.nf = getelementptr inbounds i8, ptr %i.nc, i64 -32
  store i64 %.promoted.i.i.i55, ptr %i.nf, align 8, !noalias !1996
  %.sroa.49.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %i.nc, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i89, align 8, !noalias !1996
  %.sroa.510.0..sroa_idx.i90 = getelementptr inbounds i8, ptr %i.nc, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i90, align 8, !noalias !1996
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds i8, ptr %i.nc, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i91, align 8, !noalias !1996
  %i.ng = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !1985, !noalias !1988
  %i.nh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ne, i64 0
  %i.ni = sub <2 x i64> %i.ng, %i.nh
  store <2 x i64> %i.ni, ptr %i.ab, align 8, !alias.scope !1985, !noalias !1988
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i87
  %.pn.i92 = phi ptr [ %i.nc, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growB1A_.exit.i87 ], [ %i.lo, %bb.bc ] ; 3 uses
  %.sroa.0.0.i93 = getelementptr inbounds i8, ptr %.pn.i92, i64 -24 ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %.pn.i92, i64 -16 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.nl = getelementptr inbounds i8, ptr %.pn.i92, i64 -8 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !noundef !5 ; 5 uses
  %.idx189 = mul nuw nsw i64 %i.nm, 24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx189 ; 4 uses
  %i.no = icmp eq i64 %i.nm, 0
  br i1 %i.no, label %.loopexit192, label %.lr.ph.i105

end_hunk_5
begin_hunk_6_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB6_4text12TextDiffSideeEEB6_:bb.a
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.d, align 8, !range !22, !alias.scope !7324, !noalias !7325, !noundef !5
  %i.bm = icmp eq i64 %i.bh, %i.bl
  br i1 %i.bm, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bh, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !7325

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %.pre.i.i32 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7324, !noalias !7325
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bn = phi ptr [ %.pre.i.i32, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i ], [ %i.bg, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bh ; 2 uses
  store ptr %i.bi, ptr %i.bo, align 8, !noalias !7328
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bj, ptr %i.bp, align 8, !noalias !7328
  %i.bq = add nuw nsw i64 %i.bh, 1                ; 6 uses
  store i64 %i.bq, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !7324, !noalias !7325
  %i.br = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7323 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c) #35, !noalias !7323
  %.val.i.i = load i64, ptr %i.d, align 8, !noalias !7306 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i, 0
  br i1 %i.bu, label %.thread, label %bb.j

bb.j:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7306, !nonnull !5, !noundef !5
  %i.bv = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !7306
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i
  %.sroa.062.0.copyload63.pre = load i64, ptr %i.d, align 8, !noalias !7329 ; 4 uses
  %.sroa.6.0.copyload65.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7329 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !7330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7330
  %i.bw = icmp samesign ult i64 %i.bh, 20
  br i1 %i.bw, label %bb.l, label %bb.k, !prof !169

bb.k:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2z_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload65.pre, i64 noundef range(i64 0, 576460752303423488) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #34
          to label %.loopexit unwind label %bb.o

bb.l:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.bq, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload65.pre, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload65.pre, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i, %bb.l
  %.sroa.0.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.l ] ; 7 uses
  %.pn3.i.i.i = phi ptr [ %.sroa.0.04.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ], [ %.sroa.6.0.copyload65.pre, %bb.l ] ; 2 uses
  %i.by = getelementptr i8, ptr %.pn3.i.i.i, i64 24
  %.val9.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !7333, !noalias !7338, !noundef !5 ; 3 uses
  %i.bz = getelementptr i8, ptr %.pn3.i.i.i, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !7333, !noalias !7338, !noundef !5
  %i.ca = icmp ult i64 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.ca, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !alias.scope !7333, !noalias !7338, !nonnull !5, !align !97, !noundef !5
  %.sroa.0.0.i.i.i.i243 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i243, i64 16, i1 false), !alias.scope !7333, !noalias !7338
  %i.cc = icmp eq ptr %.sroa.0.0.i.i.i.i243, %.sroa.6.0.copyload65.pre
  br i1 %i.cc, label %._crit_edge248, label %.lr.ph247

bb.n:                                             ; preds = %.lr.ph247
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i245, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i245, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i, i64 16, i1 false), !alias.scope !7333, !noalias !7338
  %i.cd = icmp eq ptr %.sroa.0.0.i.i.i.i, %.sroa.6.0.copyload65.pre
  br i1 %i.cd, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i.i245 = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i243, %bb.m ] ; 5 uses
  %.sroa.5.0.i.i.i.i244 = phi ptr [ %.sroa.0.0.i.i.i.i245, %bb.n ], [ %.sroa.0.04.i.i.i, %bb.m ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.5.0.i.i.i.i244, i64 -24
  %.val8.i.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !7333, !noalias !7338, !noundef !5
  %i.cf = icmp ult i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.cf, label %bb.n, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.n, %.lr.ph247, %bb.m
  %.sroa.5.0.i.i.i.i.lcssa = phi ptr [ %.sroa.0.04.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i245, %bb.n ], [ %.sroa.5.0.i.i.i.i244, %.lr.ph247 ]
  %.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %.sroa.6.0.copyload65.pre, %bb.m ], [ %.sroa.6.0.copyload65.pre, %bb.n ], [ %.sroa.0.0.i.i.i.i245, %.lr.ph247 ]
  store ptr %i.cb, ptr %.sroa.0.0.i.lcssa.i.i.i, align 8, !alias.scope !7333, !noalias !7340
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.i.lcssa, i64 -8
  store i64 %.val9.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i, align 8, !alias.scope !7333, !noalias !7340
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i: ; preds = %._crit_edge248, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.bx
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = icmp eq i64 %.sroa.062.0.copyload63.pre, 0
  br i1 %i.ch, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = shl nuw i64 %.sroa.062.0.copyload63.pre, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload65.pre) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload65.pre, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %.thread

.loopexit.sink.split:                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread224
  %.sroa.062.0134.ph = phi i64 [ 4, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread224 ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread ]
  %.sroa.6.0133.ph = phi ptr [ %i.ba, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread224 ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread ]
  %.sroa.9.0132.ph = phi i64 [ 1, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread224 ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i, %.loopexit.sink.split, %bb.k
  %.sroa.062.0134 = phi i64 [ %.sroa.062.0.copyload63.pre, %bb.k ], [ %.sroa.062.0134.ph, %.loopexit.sink.split ], [ %.sroa.062.0.copyload63.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ]
  %.sroa.6.0133 = phi ptr [ %.sroa.6.0.copyload65.pre, %bb.k ], [ %.sroa.6.0133.ph, %.loopexit.sink.split ], [ %.sroa.6.0.copyload65.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ]
  %.sroa.9.0132 = phi i64 [ %i.bq, %bb.k ], [ %.sroa.9.0132.ph, %.loopexit.sink.split ], [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7330
  store i64 %.sroa.062.0134, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0133, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0132, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.q:                                             ; preds = %bb.f, %bb.e
  %.sroa.5.1.i.in.i = phi ptr [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.ap, %bb.f ], [ %i.am, %bb.e ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !7345, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !7345, !noundef !5 ; 4 uses
  %i.cj = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.cj, label %.loopexit162, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %xtraiter = and i64 %.sroa.5.1.i.i, 7           ; 3 uses
  %i.ck = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.ck, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader.new ], [ %i.dv, %.lr.ph.i.i ] ; 9 uses
  %i.cl = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.dz, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cn = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.co = zext i8 %i.cn to i64
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = mul i64 %i.cp, 1099511628211
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.cs = load i8, ptr %i.cm, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit162.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit162.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit162.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit162.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.0.i1.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader ], [ %i.dv, %.loopexit162.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.dz, %.loopexit162.loopexit.unr-lcssa ]
  %lcmp.mod262 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.epil = phi ptr [ %i.eb, %.lr.ph.i.i.epil ], [ %.sroa.0.0.i1.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ea = phi i64 [ %i.ef, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.epil, i64 1
  %i.ec = load i8, ptr %.sroa.0.0.i1.i.i.epil, align 1, !alias.scope !7346, !noalias !7353, !noundef !5
  %i.ed = zext i8 %i.ec to i64
  %i.ee = xor i64 %i.ea, %i.ed
  %i.ef = mul i64 %i.ee, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit162.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !7357

.loopexit162.loopexit:                            ; preds = %.lr.ph.i.i.epil, %.loopexit162.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.dz, %.loopexit162.loopexit.unr-lcssa ], [ %i.ef, %.lr.ph.i.i.epil ]
  %i.eg = xor i64 %.lcssa, 255
  %i.eh = mul i64 %i.eg, 1099511628211
  br label %.loopexit162

.loopexit162:                                     ; preds = %.loopexit162.loopexit, %bb.q
  %.promoted.i.i.i = phi i64 [ -5808391946409677970, %bb.q ], [ %i.eh, %.loopexit162.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted.i.i.i, ptr %i.a, align 8, !noalias !7361
  %.val.i = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !7358, !noalias !7363, !noundef !5
  %.val3.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7358, !noalias !7363, !noundef !5
  %i.ei = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7361 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7364)
  call void @llvm.experimental.noalias.scope.decl(metadata !7367)
  %i.ej = lshr i64 %i.ei, 57
  %i.ek = trunc nuw nsw i64 %i.ej to i8           ; 3 uses
  %i.el = load i64, ptr %i.x, align 8, !alias.scope !7370, !noalias !7371, !noundef !5 ; 3 uses
  %i.em = load ptr, ptr %i.f, align 8, !alias.scope !7370, !noalias !7371, !nonnull !5, !noundef !5 ; 3 uses
  %i.en = insertelement <16 x i8> poison, i8 %i.ek, i64 0
  %i.eo = shufflevector <16 x i8> %i.en, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.loopexit162
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit162 ], [ %i.ff, %bb.t ]
  %.pn.i.i = phi i64 [ %i.ei, %.loopexit162 ], [ %i.fg, %bb.t ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.el     ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ep, align 1, !noalias !7374 ; 2 uses
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.eo
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.er, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.r, %bb.s
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fe, %bb.s ], [ %i.er, %bb.r ] ; 3 uses
  %i.es = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = add i64 %.sroa.01.0.i.i.i, %i.et
  %i.ev = and i64 %i.eu, %i.el
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [32 x i8], ptr %i.em, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -32
  %.val2.i.i.i = load i64, ptr %i.ey, align 8, !noalias !7377, !noundef !5
  %i.ez = icmp eq i64 %.val2.i.i.i, %.promoted.i.i.i
  br i1 %i.ez, label %bb.y, label %bb.s, !prof !169

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %i.fa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.t, label %bb.u, !prof !252

bb.s:                                             ; preds = %.lr.ph.i.i34
  %i.fd = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fe = and i16 %i.fd, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fe, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i34

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.ff = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fg = add i64 %.sroa.01.0.i.i.i, %i.ff
  br label %bb.r

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.fh = load i64, ptr %i.y, align 8, !alias.scope !7380, !noalias !7383, !noundef !5
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.v, label %bb.w, !prof !252

bb.v:                                             ; preds = %bb.u
  %i.fj = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.47.0..sroa_idx, i1 noundef zeroext true) #34
          to label %.noexc37 unwind label %.loopexit163 ; 0 uses

.noexc37:                                         ; preds = %bb.v
  %.val.i.i39.pre = load ptr, ptr %i.f, align 8, !alias.scope !7385, !noalias !7388
  %.val3.i.i.pre = load i64, ptr %i.x, align 8, !alias.scope !7385, !noalias !7388
  br label %bb.w

bb.w:                                             ; preds = %.noexc37, %bb.u
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc37 ], [ %i.el, %bb.u ] ; 4 uses
  %.val.i.i39 = phi ptr [ %.val.i.i39.pre, %.noexc37 ], [ %i.em, %bb.u ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !7385)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.ei   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.fk, align 1, !noalias !7392
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i43, label %._crit_edge.i.i.i, !prof !377

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i43, %bb.w
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.w ], [ %.sroa.0.0.i.i.i44, %.lr.ph.i.i.i43 ]
  %.lcssa.i.i.i = phi i16 [ %i.fm, %bb.w ], [ %i.gd, %.lr.ph.i.i.i43 ]
  %i.fn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.fo = zext nneg i16 %i.fn to i64
  %i.fp = add i64 %.sroa.0.0.lcssa.i.i.i, %i.fo
  %i.fq = and i64 %i.fp, %.val3.i.i               ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !7395, !noundef !5 ; 2 uses
  %i.ft = icmp sgt i8 %i.fs, -1
  br i1 %i.ft, label %bb.x, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i, !prof !252

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i39, align 16, !noalias !7395
  %i.fu = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.fv = bitcast <16 x i1> %i.fu to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.fv, 0
  %i.fw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fv, i1 true)
  %i.fx = zext nneg i16 %i.fw to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i41 = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %i.fx
  %.pre.i.i42 = load i8, ptr %.phi.trans.insert.i.i41, align 1, !noalias !7395
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i

.lr.ph.i.i.i43:                                   ; preds = %bb.w, %.lr.ph.i.i.i43
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i44, %.lr.ph.i.i.i43 ], [ %.sroa.0.07.i.i.i, %bb.w ]
  %i.fy = phi i64 [ %i.fz, %.lr.ph.i.i.i43 ], [ 0, %bb.w ]
  %i.fz = add i64 %i.fy, 16                       ; 2 uses
  %i.ga = add i64 %i.fz, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i44 = and i64 %i.ga, %.val3.i.i  ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %.sroa.0.0.i.i.i44
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.gb, align 1, !noalias !7392
  %i.gc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.gd = bitcast <16 x i1> %i.gc to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.gd, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i43, label %._crit_edge.i.i.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i: ; preds = %bb.x, %._crit_edge.i.i.i
  %i.ge = phi i8 [ %.pre.i.i42, %bb.x ], [ %i.fs, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.fx, %bb.x ], [ %i.fq, %._crit_edge.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 %.sroa.0.0.i5.i.i.i
  %i.gg = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.gh = and i64 %i.gg, %.val3.i.i
  store i8 %i.ek, ptr %i.gf, align 1, !noalias !7395
  %i.gi = getelementptr i8, ptr %.val.i.i39, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.ek, ptr %i.gj, align 1, !noalias !7395
  %i.gk = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.gl = getelementptr inbounds [32 x i8], ptr %.val.i.i39, i64 %i.gk ; 5 uses
  %i.gm = and i8 %i.ge, 1
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %i.gl, i64 -32
  store i64 %.promoted.i.i.i, ptr %i.go, align 8, !noalias !7396
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gl, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !7396
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gl, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !7396
  %.sroa.6.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %i.gl, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i40, align 8, !noalias !7396
  %i.gp = load <2 x i64>, ptr %i.y, align 8, !alias.scope !7385, !noalias !7388
  %i.gq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gn, i64 0
  %i.gr = sub <2 x i64> %i.gp, %i.gq
  store <2 x i64> %i.gr, ptr %i.y, align 8, !alias.scope !7385, !noalias !7388
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i
  %.pn.i = phi ptr [ %i.gl, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i ], [ %i.ex, %bb.y ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !noundef !5 ; 5 uses
  %.idx = mul nuw nsw i64 %i.gv, 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx
  %i.gx = icmp eq i64 %i.gv, 0
  br i1 %i.gx, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit._crit_edge, label %.lr.ph

end_hunk_6
begin_hunk_7_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_EB6_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9108)
  call void @llvm.experimental.noalias.scope.decl(metadata !9111)
  call void @llvm.experimental.noalias.scope.decl(metadata !9114)
  call void @llvm.experimental.noalias.scope.decl(metadata !9117)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !9120, !noundef !5 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12
  call void @llvm.experimental.noalias.scope.decl(metadata !9121)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !9124, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !9124, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !9125
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !9128
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
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
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !9124 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !9124, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9124
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37
  %.sink = phi i64 [ %i.ht, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sink228 = phi i64 [ %i.hw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink228, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37, %.loopexit147
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit147 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc unwind label %.loopexit146 ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.ch = extractvalue { i64, i32 } %i.cg, 0      ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %6
  br i1 %i.ci, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %.noexc
  %i.cj = extractvalue { i64, i32 } %i.cg, 1      ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 1000000000
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i32 %i.cj, %7
  br i1 %i.cl, label %.loopexit147, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %.noexc
  %i.cm = icmp sgt i64 %i.ch, %6
  br i1 %i.cm, label %.loopexit147, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread: ; preds = %.split, %bb.c, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cn = icmp ult i64 %.sroa.082.0166, %i.ab     ; 4 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  br i1 %i.cn, label %bb.l, label %.invoke

bb.j:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  br i1 %i.cn, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.082.0166 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.082.0166 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5.1.i.in.i = phi ptr [ %i.cs, %bb.l ], [ %i.cp, %bb.k ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.cr, %bb.l ], [ %i.co, %bb.k ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !9131, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !9131, !noundef !5 ; 4 uses
  %i.ct = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.ct, label %.loopexit145, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %xtraiter267 = and i64 %.sroa.5.1.i.i, 7        ; 3 uses
  %i.cu = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.cu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter274 = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ef, %.lr.ph.i.i ] ; 9 uses
  %i.cv = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i ]
  %niter275 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter275.next.7, %.lr.ph.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cx = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.eg = load i8, ptr %i.ea, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.eh = zext i8 %i.eg to i64
  %i.ei = xor i64 %i.ee, %i.eh
  %i.ej = mul i64 %i.ei, 1099511628211            ; 3 uses
  %niter275.next.7 = add nuw nsw i64 %niter275, 8 ; 2 uses
  %niter275.ncmp.7 = icmp eq i64 %niter275.next.7, %unroll_iter274
  br i1 %niter275.ncmp.7, label %.loopexit145.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit145.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod271.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod271.not, label %.loopexit145.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit145.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.0.i1.i.i.epil.init = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader ], [ %i.ef, %.loopexit145.loopexit.unr-lcssa ]
  %.epil.init270 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.ej, %.loopexit145.loopexit.unr-lcssa ]
  %lcmp.mod273 = icmp ne i64 %xtraiter267, 0
  call void @llvm.assume(i1 %lcmp.mod273)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.epil = phi ptr [ %i.el, %.lr.ph.i.i.epil ], [ %.sroa.0.0.i1.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ek = phi i64 [ %i.ep, %.lr.ph.i.i.epil ], [ %.epil.init270, %.lr.ph.i.i.epil.preheader ]
  %epil.iter268 = phi i64 [ %epil.iter268.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.epil, i64 1
  %i.em = load i8, ptr %.sroa.0.0.i1.i.i.epil, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.en = zext i8 %i.em to i64
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = mul i64 %i.eo, 1099511628211            ; 2 uses
  %epil.iter268.next = add i64 %epil.iter268, 1   ; 2 uses
  %epil.iter268.cmp.not = icmp eq i64 %epil.iter268.next, %xtraiter267
  br i1 %epil.iter268.cmp.not, label %.loopexit145.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !9148

.loopexit145.loopexit:                            ; preds = %.lr.ph.i.i.epil, %.loopexit145.loopexit.unr-lcssa
  %.lcssa256 = phi i64 [ %i.ej, %.loopexit145.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph.i.i.epil ]
  %i.eq = xor i64 %.lcssa256, 255
  %i.er = mul i64 %i.eq, 1099511628211
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit145.loopexit, %bb.m
  %.promoted.i.i.i = phi i64 [ -5808391946409677970, %bb.m ], [ %i.er, %.loopexit145.loopexit ] ; 2 uses
  store i64 %.promoted.i.i.i, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9149)
  %i.es = load i64, ptr %i.ae, align 8, !alias.scope !9149, !noalias !9152, !noundef !5
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit145
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9149, !noalias !9152, !noundef !5
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9149, !noalias !9152, !noundef !5
  %i.eu = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !9149 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  %i.ev = lshr i64 %i.eu, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8
  %i.ex = load i64, ptr %i.af, align 8, !alias.scope !9160, !noalias !9161, !noundef !5 ; 2 uses
  %i.ey = load ptr, ptr %i.c, align 8, !alias.scope !9160, !noalias !9161, !nonnull !5, !noundef !5 ; 2 uses
  %i.ez = insertelement <16 x i8> poison, i8 %i.ew, i64 0
  %i.fa = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.n ], [ %i.fr, %bb.q ]
  %.pn.i.i = phi i64 [ %i.eu, %bb.n ], [ %i.fs, %bb.q ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ex     ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.fb, align 1, !noalias !9164 ; 2 uses
  %i.fc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.fa
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.fd, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.o, %bb.p
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fq, %bb.p ], [ %i.fd, %bb.o ] ; 3 uses
  %i.fe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64
  %i.fg = add i64 %.sroa.01.0.i.i.i, %i.ff
  %i.fh = and i64 %i.fg, %i.ex
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds [32 x i8], ptr %i.ey, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -32
  %.val2.i.i.i = load i64, ptr %i.fk, align 8, !noalias !9167, !noundef !5
  %i.fl = icmp eq i64 %.promoted.i.i.i, %.val2.i.i.i
  br i1 %i.fl, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECsdftwklc2oBO_7similar.exit, label %bb.p, !prof !169

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %i.fm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fn = bitcast <16 x i1> %i.fm to i16
  %i.fo = icmp eq i16 %i.fn, 0
  br i1 %i.fo, label %bb.q, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, !prof !252

bb.p:                                             ; preds = %.lr.ph.i.i14
  %i.fp = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fq = and i16 %i.fp, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.fr = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fs = add i64 %.sroa.01.0.i.i.i, %i.fr
  br label %bb.o

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECsdftwklc2oBO_7similar.exit: ; preds = %.lr.ph.i.i14
  br i1 %i.z, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECsdftwklc2oBO_7similar.exit
  br i1 %i.cn, label %bb.u, label %.invoke

bb.s:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getyECsdftwklc2oBO_7similar.exit
  br i1 %i.cn, label %bb.t, label %.invoke

bb.t:                                             ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.082.0166 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.082.0166 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = getelementptr i8, ptr %i.fv, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.5.1.i.in.i16 = phi ptr [ %i.fx, %bb.u ], [ %i.fu, %bb.t ]
  %.sroa.0.1.i.in.i17 = phi ptr [ %i.fw, %bb.u ], [ %i.ft, %bb.t ]
  %.sroa.0.1.i.i18 = load ptr, ptr %.sroa.0.1.i.in.i17, align 8, !noalias !9170, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i19 = load i64, ptr %.sroa.5.1.i.in.i16, align 8, !noalias !9170, !noundef !5 ; 4 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fj, i64 -16
  %i.fz = load ptr, ptr %i.fy, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fj, i64 -8
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gb, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx ; 2 uses
  %.not.i22 = icmp eq i64 %i.gb, 0
  br i1 %.not.i22, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  br i1 %i.ah, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.us.i
  %i.gd = phi ptr [ %i.ge, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.us.i ], [ %i.fz, %.lr.ph.i ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %.val3.us.i = load i64, ptr %i.gd, align 8, !noalias !9176, !noundef !5 ; 2 uses
  %i.gf = icmp ult i64 %.val3.us.i, %i.aj
  br i1 %i.gf, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.i, label %.invoke

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.i: ; preds = %.lr.ph.split.us.i
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.val3.us.i ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %.sroa.5.1.i.i.i.us.i = load i64, ptr %i.gh, align 8, !noalias !9181, !noundef !5
  %i.gi = icmp eq i64 %.sroa.5.1.i.i19, %.sroa.5.1.i.i.i.us.i
  br i1 %i.gi, label %.split.us.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.us.i

.split.us.i:                                      ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.i
  %i.gj = getelementptr i8, ptr %i.gg, i64 8
  %.sroa.0.1.i.i.i.us.i = load ptr, ptr %i.gj, align 8, !noalias !9181, !nonnull !5, !noundef !5
  %bcmp.i.i.us.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i18, ptr nonnull readonly %.sroa.0.1.i.i.i.us.i, i64 %.sroa.5.1.i.i19), !alias.scope !9187, !noalias !9176
  %i.gk = icmp eq i32 %bcmp.i.i.us.i, 0
  br i1 %i.gk, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0EB1K_.exit, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.us.i

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.us.i: ; preds = %.split.us.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.i
  %.not19.i = icmp eq ptr %i.ge, %i.gc
  br i1 %.not19.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.i
  %i.gl = phi ptr [ %i.gm, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.i ], [ %i.fz, %.lr.ph.i ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %.val3.i = load i64, ptr %i.gl, align 8, !noalias !9176, !noundef !5 ; 2 uses
  %i.gn = icmp ult i64 %.val3.i, %i.aj
  br i1 %i.gn, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i, label %.invoke

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i: ; preds = %.lr.ph.split.i
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.val3.i ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.5.1.i.i.i.i = load i64, ptr %i.gp, align 8, !noalias !9181, !noundef !5
  %i.gq = icmp eq i64 %.sroa.5.1.i.i19, %.sroa.5.1.i.i.i.i
  br i1 %i.gq, label %.split.i, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.i

.split.i:                                         ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i
  %.sroa.0.1.i.i.i.i = load ptr, ptr %i.go, align 8, !noalias !9181, !nonnull !5, !noundef !5
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i18, ptr nonnull readonly %.sroa.0.1.i.i.i.i, i64 %.sroa.5.1.i.i19), !alias.scope !9187, !noalias !9176
  %i.gr = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gr, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0EB1K_.exit, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.i

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.i: ; preds = %.split.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i
  %.not18.i = icmp eq ptr %i.gm, %i.gc
  br i1 %.not18.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, label %.lr.ph.split.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0EB1K_.exit: ; preds = %.split.i, %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit147

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit: ; preds = %._crit_edge.i.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.i, %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB8_4text12TextDiffSideeEB17_E0B8_.exit.backedge.us.i, %bb.v, %.loopexit145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond182.not = icmp eq i64 %i.as, %i.am
  br i1 %exitcond182.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12, label %bb.c

.loopexit147:                                     ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46, %.split124, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0EB1K_.exit
  %.sroa.0.2 = phi i8 [ 2, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 1, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB1K_4text12TextDiffSideeEB2J_E0EB1K_.exit ], [ 2, %.split ], [ 2, %.split124 ], [ 2, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9191)
  call void @llvm.experimental.noalias.scope.decl(metadata !9194)
  call void @llvm.experimental.noalias.scope.decl(metadata !9197)
  call void @llvm.experimental.noalias.scope.decl(metadata !9200)
  call void @llvm.experimental.noalias.scope.decl(metadata !9203)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !9206, !noundef !5 ; 3 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42, label %bb.w

bb.w:                                             ; preds = %.loopexit147
  call void @llvm.experimental.noalias.scope.decl(metadata !9207)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !9210, !noundef !5 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = load ptr, ptr %i.c, align 8, !alias.scope !9210, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i24 = load <16 x i8>, ptr %i.gy, align 16, !noalias !9211
  %i.gz = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i24, splat (i8 -1)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hb = bitcast <16 x i1> %i.gz to i16
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36, %bb.x
  %.sroa.06.017.i.i.i.i.i.i25 = phi ptr [ %i.gy, %bb.x ], [ %.sroa.06.1.i.i.i.i.i.i32, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i26 = phi ptr [ %i.ha, %bb.x ], [ %.sroa.6.1.i.i.i.i.i.i31, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i27 = phi i16 [ %i.hb, %bb.x ], [ %i.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i28 = phi i64 [ %i.gw, %bb.x ], [ %i.hn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36 ]
  %.not11.i.i.i.i.i.i.i29 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i27, 0
  br i1 %.not11.i.i.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i.i.i38, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i.i38:                           ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i.i38
  %i.hc = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.sroa.6.016.i.i.i.i.i.i26, %bb.y ] ; 2 uses
  %i.hd = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.sroa.06.017.i.i.i.i.i.i25, %bb.y ]
  %.val9.i.i.i.i.i.i.i39 = load <16 x i8>, ptr %i.hc, align 16, !noalias !9214
  %i.he = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i39, splat (i8 -1)
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -512 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i40 = bitcast <16 x i1> %i.he to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i41 = icmp eq i16 %.cast.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i.i.i41, label %.lr.ph.i.i.i.i.i.i.i38, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i30

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i.i38, %bb.y
  %.sroa.6.1.i.i.i.i.i.i31 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i26, %bb.y ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i38 ]
  %.sroa.06.1.i.i.i.i.i.i32 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i25, %bb.y ], [ %i.hf, %.lr.ph.i.i.i.i.i.i.i38 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i33 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i27, %bb.y ], [ %.cast.i.i.i.i.i.i.i40, %.lr.ph.i.i.i.i.i.i.i38 ] ; 3 uses
  %i.hh = add i16 %.lcssa.i.i.i.i.i.i.i33, -1
  %i.hi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i33, i1 true)
  %i.hj = zext nneg i16 %i.hi to i64
  %i.hk = and i16 %i.hh, %.lcssa.i.i.i.i.i.i.i33
  %i.hl = sub nsw i64 0, %i.hj
  %i.hm = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i32, i64 %i.hl ; 2 uses
  %i.hn = add i64 %.sroa.108.014.i.i.i.i.i.i28, -1 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 -24
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ho, align 8, !noalias !9210 ; 2 uses
  %i.hp = icmp eq i64 %.val.i.i.i.i.i.i34, 0
  br i1 %i.hp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36, label %bb.z

bb.z:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i30
  %i.hq = getelementptr i8, ptr %i.hm, i64 -16
  %.val5.i.i.i.i.i.i35 = load ptr, ptr %i.hq, align 8, !noalias !9210, !nonnull !5, !noundef !5
  %i.hr = shl nuw i64 %.val.i.i.i.i.i.i34, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i35, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9210
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36: ; preds = %bb.z, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i30
  %i.hs = icmp eq i64 %i.hn, 0
  br i1 %i.hs, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37, label %bb.y

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i36, %bb.w
  %i.ht = shl i64 %i.gt, 5                        ; 2 uses
  %i.hu = add i64 %i.ht, 32                       ; 2 uses
  %i.hv = add i64 %i.gt, 17
  %i.hw = add i64 %i.hv, %i.hu                    ; 4 uses
  %i.hx = icmp uge i64 %i.hw, %i.hu
  %i.hy = icmp ult i64 %i.hw, 9223372036854775793
  call void @llvm.assume(i1 %i.hx)
  call void @llvm.assume(i1 %i.hy)
  %i.hz = icmp eq i64 %i.hw, 0
  br i1 %i.hz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split

bb.aa:                                            ; preds = %bb.b
  %i.ia = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc45:                                         ; preds = %bb.aa
  %i.ib = extractvalue { i64, i32 } %i.ia, 0      ; 2 uses
  %i.ic = icmp eq i64 %i.ib, %6
  br i1 %i.ic, label %.split124, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46

.split124:                                        ; preds = %.noexc45
  %i.id = extractvalue { i64, i32 } %i.ia, 1      ; 2 uses
  %i.ie = icmp ult i32 %i.id, 1000000000
  call void @llvm.assume(i1 %i.ie)
  %i.if = icmp samesign ugt i32 %i.id, %7
  br i1 %i.if, label %.loopexit147, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46: ; preds = %.noexc45
  %i.ig = icmp sgt i64 %i.ib, %6
  br i1 %i.ig, label %.loopexit147, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46.thread: ; preds = %.split124, %bb.b, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46
  %i.ih = icmp ult i64 %.sroa.0.0103164, %i.r     ; 2 uses
  br i1 %i.p, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46.thread
  br i1 %i.ih, label %bb.ae, label %.invoke

bb.ac:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46.thread
  br i1 %i.ih, label %bb.ad, label %.invoke

bb.ad:                                            ; preds = %bb.ac
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.0.0103164 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sroa.0.0103164 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  %i.im = getelementptr i8, ptr %i.ik, i64 16
  br label %bb.af

.invoke:                                          ; preds = %bb.ab, %bb.ac, %bb.r, %bb.s, %bb.i, %bb.j, %.lr.ph.split.i, %.lr.ph.split.us.i
  %i.in = phi ptr [ @132, %bb.r ], [ @155, %.lr.ph.split.us.i ], [ @155, %.lr.ph.split.i ], [ @131, %bb.i ], [ @131, %bb.j ], [ @132, %bb.s ], [ @133, %bb.ac ], [ @133, %bb.ab ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.5.1.i.in.i47 = phi ptr [ %i.im, %bb.ae ], [ %i.ij, %bb.ad ]
  %.sroa.0.1.i.in.i48 = phi ptr [ %i.il, %bb.ae ], [ %i.ii, %bb.ad ]
  %.sroa.0.1.i.i49 = load ptr, ptr %.sroa.0.1.i.in.i48, align 8, !noalias !9217, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i50 = load i64, ptr %.sroa.5.1.i.in.i47, align 8, !noalias !9217, !noundef !5 ; 4 uses
  %i.io = icmp samesign eq i64 %.sroa.5.1.i.i50, 0
  br i1 %i.io, label %.loopexit148, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %bb.af
  %xtraiter = and i64 %.sroa.5.1.i.i50, 7         ; 3 uses
  %i.ip = icmp ult i64 %.sroa.5.1.i.i50, 8
  br i1 %i.ip, label %.lr.ph.i.i54.epil.preheader, label %.lr.ph.i.i54.preheader.new

.lr.ph.i.i54.preheader.new:                       ; preds = %.lr.ph.i.i54.preheader
  %unroll_iter = and i64 %.sroa.5.1.i.i50, -8
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54, %.lr.ph.i.i54.preheader.new
  %.sroa.0.0.i1.i.i55 = phi ptr [ %.sroa.0.1.i.i49, %.lr.ph.i.i54.preheader.new ], [ %i.ka, %.lr.ph.i.i54 ] ; 9 uses
  %i.iq = phi i64 [ -3750763034362895579, %.lr.ph.i.i54.preheader.new ], [ %i.ke, %.lr.ph.i.i54 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i54.preheader.new ], [ %niter.next.7, %.lr.ph.i.i54 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 1
  %i.is = load i8, ptr %.sroa.0.0.i1.i.i55, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.it = zext i8 %i.is to i64
  %i.iu = xor i64 %i.iq, %i.it
  %i.iv = mul i64 %i.iu, 1099511628211
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 2
  %i.ix = load i8, ptr %i.ir, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.iy = zext i8 %i.ix to i64
  %i.iz = xor i64 %i.iv, %i.iy
  %i.ja = mul i64 %i.iz, 1099511628211
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 3
  %i.jc = load i8, ptr %i.iw, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.jd = zext i8 %i.jc to i64
  %i.je = xor i64 %i.ja, %i.jd
  %i.jf = mul i64 %i.je, 1099511628211
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 4
  %i.jh = load i8, ptr %i.jb, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.ji = zext i8 %i.jh to i64
  %i.jj = xor i64 %i.jf, %i.ji
  %i.jk = mul i64 %i.jj, 1099511628211
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 5
  %i.jm = load i8, ptr %i.jg, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.jn = zext i8 %i.jm to i64
  %i.jo = xor i64 %i.jk, %i.jn
  %i.jp = mul i64 %i.jo, 1099511628211
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 6
  %i.jr = load i8, ptr %i.jl, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.js = zext i8 %i.jr to i64
  %i.jt = xor i64 %i.jp, %i.js
  %i.ju = mul i64 %i.jt, 1099511628211
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 7
  %i.jw = load i8, ptr %i.jq, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.jx = zext i8 %i.jw to i64
  %i.jy = xor i64 %i.ju, %i.jx
  %i.jz = mul i64 %i.jy, 1099511628211
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55, i64 8 ; 2 uses
  %i.kb = load i8, ptr %i.jv, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.kc = zext i8 %i.kb to i64
  %i.kd = xor i64 %i.jz, %i.kc
  %i.ke = mul i64 %i.kd, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit148.loopexit.unr-lcssa, label %.lr.ph.i.i54

.loopexit148.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i54
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit148.loopexit, label %.lr.ph.i.i54.epil.preheader

.lr.ph.i.i54.epil.preheader:                      ; preds = %.loopexit148.loopexit.unr-lcssa, %.lr.ph.i.i54.preheader
  %.sroa.0.0.i1.i.i55.epil.init = phi ptr [ %.sroa.0.1.i.i49, %.lr.ph.i.i54.preheader ], [ %i.ka, %.loopexit148.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i54.preheader ], [ %i.ke, %.loopexit148.loopexit.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod266)
  br label %.lr.ph.i.i54.epil

.lr.ph.i.i54.epil:                                ; preds = %.lr.ph.i.i54.epil, %.lr.ph.i.i54.epil.preheader
  %.sroa.0.0.i1.i.i55.epil = phi ptr [ %i.kg, %.lr.ph.i.i54.epil ], [ %.sroa.0.0.i1.i.i55.epil.init, %.lr.ph.i.i54.epil.preheader ] ; 2 uses
  %i.kf = phi i64 [ %i.kk, %.lr.ph.i.i54.epil ], [ %.epil.init, %.lr.ph.i.i54.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i54.epil ], [ 0, %.lr.ph.i.i54.epil.preheader ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i55.epil, i64 1
  %i.kh = load i8, ptr %.sroa.0.0.i1.i.i55.epil, align 1, !alias.scope !9223, !noalias !9230, !noundef !5
  %i.ki = zext i8 %i.kh to i64
  %i.kj = xor i64 %i.kf, %i.ki
  %i.kk = mul i64 %i.kj, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit148.loopexit, label %.lr.ph.i.i54.epil, !llvm.loop !9234

.loopexit148.loopexit:                            ; preds = %.lr.ph.i.i54.epil, %.loopexit148.loopexit.unr-lcssa
  %.lcssa261 = phi i64 [ %i.ke, %.loopexit148.loopexit.unr-lcssa ], [ %i.kk, %.lr.ph.i.i54.epil ]
  %i.kl = xor i64 %.lcssa261, 255
  %i.km = mul i64 %i.kl, 1099511628211
  br label %.loopexit148

.loopexit148:                                     ; preds = %.loopexit148.loopexit, %bb.af
  %.promoted.i.i.i56 = phi i64 [ -5808391946409677970, %bb.af ], [ %i.km, %.loopexit148.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted.i.i.i56, ptr %i.a, align 8, !noalias !9238
  %.val.i58 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9235, !noalias !9240, !noundef !5
  %.val3.i59 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9235, !noalias !9240, !noundef !5
  %i.kn = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i58, i64 %.val3.i59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !9238 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9241)
  call void @llvm.experimental.noalias.scope.decl(metadata !9244)
  %i.ko = lshr i64 %i.kn, 57
  %i.kp = trunc nuw nsw i64 %i.ko to i8           ; 3 uses
  %i.kq = load i64, ptr %i.u, align 8, !alias.scope !9247, !noalias !9248, !noundef !5 ; 3 uses
  %i.kr = load ptr, ptr %i.c, align 8, !alias.scope !9247, !noalias !9248, !nonnull !5, !noundef !5 ; 3 uses
  %i.ks = insertelement <16 x i8> poison, i8 %i.kp, i64 0
  %i.kt = shufflevector <16 x i8> %i.ks, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.loopexit148
  %.sroa.9.0.i.i.i60 = phi i64 [ 0, %.loopexit148 ], [ %i.lk, %bb.ai ]
  %.pn.i.i61 = phi i64 [ %i.kn, %.loopexit148 ], [ %i.ll, %bb.ai ]
  %.sroa.01.0.i.i.i62 = and i64 %.pn.i.i61, %i.kq ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.sroa.01.0.i.i.i62
  %.sroa.0.0.copyload.i24.i.i63 = load <16 x i8>, ptr %i.ku, align 1, !noalias !9251 ; 2 uses
  %i.kv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i63, %i.kt
  %i.kw = bitcast <16 x i1> %i.kv to i16          ; 2 uses
  %.not.i.not30.i.i64 = icmp eq i16 %i.kw, 0
  br i1 %.not.i.not30.i.i64, label %._crit_edge.i.i69, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.ag, %bb.ah
  %.sroa.06.0.i31.i.i66 = phi i16 [ %i.lj, %bb.ah ], [ %i.kw, %bb.ag ] ; 3 uses
  %i.kx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i66, i1 true)
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = add i64 %.sroa.01.0.i.i.i62, %i.ky
  %i.la = and i64 %i.kz, %i.kq
  %i.lb = sub nsw i64 0, %i.la
  %i.lc = getelementptr inbounds [32 x i8], ptr %i.kr, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -32
  %.val2.i.i.i67 = load i64, ptr %i.ld, align 8, !noalias !9254, !noundef !5
  %i.le = icmp eq i64 %.val2.i.i.i67, %.promoted.i.i.i56
  br i1 %i.le, label %bb.an, label %bb.ah, !prof !169

._crit_edge.i.i69:                                ; preds = %bb.ah, %bb.ag
  %i.lf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i63, splat (i8 -1)
  %i.lg = bitcast <16 x i1> %i.lf to i16
  %i.lh = icmp eq i16 %i.lg, 0
  br i1 %i.lh, label %bb.ai, label %bb.aj, !prof !252

bb.ah:                                            ; preds = %.lr.ph.i.i65
  %i.li = add i16 %.sroa.06.0.i31.i.i66, -1
  %i.lj = and i16 %i.li, %.sroa.06.0.i31.i.i66    ; 2 uses
  %.not.i.not.i.i68 = icmp eq i16 %i.lj, 0
  br i1 %.not.i.not.i.i68, label %._crit_edge.i.i69, label %.lr.ph.i.i65

bb.ai:                                            ; preds = %._crit_edge.i.i69
  %i.lk = add i64 %.sroa.9.0.i.i.i60, 16          ; 2 uses
  %i.ll = add i64 %.sroa.01.0.i.i.i62, %i.lk
  br label %bb.ag

bb.aj:                                            ; preds = %._crit_edge.i.i69
  %i.lm = load i64, ptr %i.v, align 8, !alias.scope !9257, !noalias !9260, !noundef !5
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.ak, label %bb.al, !prof !252

bb.ak:                                            ; preds = %bb.aj
  %i.lo = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true) #34
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc70:                                         ; preds = %bb.ak
  %.val.i.i.pre = load ptr, ptr %i.c, align 8, !alias.scope !9262, !noalias !9265
  %.val3.i.i.pre = load i64, ptr %i.u, align 8, !alias.scope !9262, !noalias !9265
  br label %bb.al

bb.al:                                            ; preds = %.noexc70, %bb.aj
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc70 ], [ %i.kq, %bb.aj ] ; 4 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %.noexc70 ], [ %i.kr, %bb.aj ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !9262)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.kn   ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.lp, align 1, !noalias !9269
  %i.lq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.lr = bitcast <16 x i1> %i.lq to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.lr, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !377

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.al
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.al ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.lr, %bb.al ], [ %i.mi, %.lr.ph.i.i.i ]
  %i.ls = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.lt = zext nneg i16 %i.ls to i64
  %i.lu = add i64 %.sroa.0.0.lcssa.i.i.i, %i.lt
  %i.lv = and i64 %i.lu, %.val3.i.i               ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !9272, !noundef !5 ; 2 uses
  %i.ly = icmp sgt i8 %i.lx, -1
  br i1 %i.ly, label %bb.am, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i, !prof !252

bb.am:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !9272
  %i.lz = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ma = bitcast <16 x i1> %i.lz to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.ma, 0
  %i.mb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ma, i1 true)
  %i.mc = zext nneg i16 %i.mb to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i73 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.mc
  %.pre.i.i74 = load i8, ptr %.phi.trans.insert.i.i73, align 1, !noalias !9272
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.al, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.al ]
  %i.md = phi i64 [ %i.me, %.lr.ph.i.i.i ], [ 0, %bb.al ]
  %i.me = add i64 %i.md, 16                       ; 2 uses
  %i.mf = add i64 %i.me, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.mf, %.val3.i.i    ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.mg, align 1, !noalias !9269
  %i.mh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.mi = bitcast <16 x i1> %i.mh to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.mi, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i: ; preds = %bb.am, %._crit_edge.i.i.i
  %i.mj = phi i8 [ %.pre.i.i74, %bb.am ], [ %i.lx, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.mc, %bb.am ], [ %i.lv, %._crit_edge.i.i.i ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.ml = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.mm = and i64 %i.ml, %.val3.i.i
  store i8 %i.kp, ptr %i.mk, align 1, !noalias !9272
  %i.mn = getelementptr i8, ptr %.val.i.i, i64 %i.mm
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  store i8 %i.kp, ptr %i.mo, align 1, !noalias !9272
  %i.mp = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.mq = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.mp ; 5 uses
  %i.mr = and i8 %i.mj, 1
  %i.ms = zext nneg i8 %i.mr to i64
  %i.mt = getelementptr inbounds i8, ptr %i.mq, i64 -32
  store i64 %.promoted.i.i.i56, ptr %i.mt, align 8, !noalias !9273
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mq, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !9273
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mq, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !9273
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mq, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9273
  %i.mu = load <2 x i64>, ptr %i.v, align 8, !alias.scope !9262, !noalias !9265
  %i.mv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ms, i64 0
  %i.mw = sub <2 x i64> %i.mu, %i.mv
  store <2 x i64> %i.mw, ptr %i.v, align 8, !alias.scope !9262, !noalias !9265
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i
  %.pn.i = phi ptr [ %i.mq, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i ], [ %i.lc, %bb.an ] ; 3 uses
  %.sroa.0.0.i72 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9274)
  %i.mx = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !9274, !noundef !5 ; 3 uses
  %i.mz = load i64, ptr %.sroa.0.0.i72, align 8, !range !22, !alias.scope !9274, !noundef !5
  %i.na = icmp eq i64 %i.my, %i.mz
  br i1 %i.na, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i72) #34
end_hunk_7
