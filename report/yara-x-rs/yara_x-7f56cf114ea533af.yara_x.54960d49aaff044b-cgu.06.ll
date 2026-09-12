Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule:bb.a

bb.ls:                                            ; preds = %bb.lq
  %i.bbv = landingpad { ptr, i32 }
          cleanup
  %i.bbw = load i64, ptr %i.bbs, align 8, !noundef !9
  %i.bbx = add i64 %i.bbw, 1
  store i64 %i.bbx, ptr %i.bbs, align 8
  br label %.body467

bb.lt:                                            ; preds = %bb.mb, %bb.lv
  %.pn199 = phi { ptr, i32 } [ %i.bca, %bb.lv ], [ %i.bcq, %bb.mb ] ; 2 uses
  %i.bby = load i64, ptr %i.hc, align 8, !range !55, !alias.scope !4608, !noundef !9
  %i.bbz = icmp eq i64 %i.bby, -2
  br i1 %i.bbz, label %.body467, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.hc)
          to label %.body467 unwind label %bb.ef

bb.lv:                                            ; preds = %bb.mc, %bb.lz, %bb.lx
  %i.bca = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.lw:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  %i.bcb = load i64, ptr %i.bbs, align 8, !noundef !9
  %i.bcc = add i64 %i.bcb, 1
  store i64 %i.bcc, ptr %i.bbs, align 8
  %i.bcd = load i64, ptr %i.hc, align 8, !range !55, !noundef !9
  %.not197 = icmp eq i64 %i.bcd, -2
  br i1 %.not197, label %bb.ly, label %bb.lx, !prof !10

bb.lx:                                            ; preds = %bb.lw
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #41
          to label %bb.ix unwind label %bb.lv

bb.ly:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  %i.bce = load i64, ptr %i.xn, align 8, !noundef !9 ; 2 uses
  %.not198 = icmp eq i64 %i.bce, 0
  br i1 %.not198, label %bb.lz, label %bb.ma, !prof !11

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #41
          to label %bb.ix unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.bcg = load ptr, ptr %i.bcf, align 8, !nonnull !9, !noundef !9
  %i.bch = getelementptr [112 x i8], ptr %i.bcg, i64 %i.bce
  %i.bci = getelementptr i8, ptr %i.bch, i64 -112
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  store ptr %i.bci, ptr %i.bcl, align 8
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  store ptr %i.bcj, ptr %i.bcm, align 8
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.ha, i64 88
  store ptr %i.bck, ptr %i.bcn, align 8
  %i.bco = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store ptr %i.zd, ptr %i.bco, align 8
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.ha, i64 104
  store ptr %i.ym, ptr %i.bcp, align 8
  store i64 0, ptr %i.ha, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.566.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.572.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler4emit19emit_rule_condition(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ha, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.yu, i32 noundef %i.ajn, i32 noundef %.sroa.041.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1976) %0)
          to label %bb.mc unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler4emit11EmitContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ha) #42
          to label %bb.lt unwind label %bb.ef

bb.mc:                                            ; preds = %bb.ma
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler4emit11EmitContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ha)
          to label %bb.md unwind label %bb.lv

bb.md:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  %i.bcr = load i64, ptr %i.hc, align 8, !range !55, !alias.scope !4609, !noundef !9
  %i.bcs = icmp eq i64 %i.bcr, -2
  br i1 %i.bcs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit489, label %bb.me

bb.me:                                            ; preds = %bb.md
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.hc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit489 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit: ; preds = %bb.me
  %i.bct = landingpad { ptr, i32 }
          cleanup
  br label %.body467

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit489: ; preds = %bb.md, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ht)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1z_.exit491 unwind label %bb.ih

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1z_.exit491: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hv)
          to label %bb.mf unwind label %.loopexit.split-lp841

bb.mf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1z_.exit491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules16HeaderConstraintEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hz)
          to label %bb.mg unwind label %.loopexit.split-lp849

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  br label %bb.cj

bb.mh:                                            ; preds = %bb.lr
  %i.bcu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.hd) #42
          to label %.body467 unwind label %bb.ef

.thread722.loopexit:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules16HeaderConstraintEBH_.exit.sink.split.i, %bb.ads, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.ady, %_RNvXsk_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_16HeaderConstraintNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.aec
  %lpad.loopexit823 = landingpad { ptr, i32 }
          cleanup
  br label %.thread709

.thread722.loopexit.split-lp:                     ; preds = %.invoke3074, %bb.aea
  %lpad.loopexit.split-lp824 = landingpad { ptr, i32 }
          cleanup
  br label %.thread709

bb.mi:                                            ; preds = %bb.lo
  br i1 %i.bbo, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bcv = load i64, ptr %i.hk, align 8, !range !33, !alias.scope !4610, !noundef !9
  %cond = icmp samesign ult i64 %i.bcv, 2
  br i1 %cond, label %bb.mk, label %.invoke3073

bb.mk:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir14LiteralPatternEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.hk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleEBH_.exit unwind label %bb.ln

.invoke3073:                                      ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13RegexpPatternEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.11620.8..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleEBH_.exit unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleEBH_.exit: ; preds = %.invoke3073, %bb.mk, %bb.aec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11620)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11620)
  %i.bcw = icmp eq ptr %i.bbk, %i.atu
  br i1 %i.bcw, label %._crit_edge2022, label %bb.lm

bb.ml:                                            ; preds = %bb.mi
  %.val269 = load i32, ptr %i.aub, align 8, !alias.scope !52, !noundef !9 ; 3 uses
  %.val270 = load i32, ptr %i.auc, align 4, !alias.scope !53, !noundef !9 ; 3 uses
  %.sroa.0628.0.copyload = load i64, ptr %i.hk, align 8 ; 3 uses
  %.sroa.5630.0.copyload = load i64, ptr %.sroa.5630.0..sroa_idx, align 8 ; 5 uses
  %i.bcx = icmp ult i64 %.sroa.0628.0.copyload, 2
  br i1 %i.bcx, label %bb.mm, label %bb.sh

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  store i64 %.sroa.0628.0.copyload, ptr %i.hj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6623.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.11620.8..sroa_idx, i64 136, i1 false)
  store i64 %.sroa.5630.0.copyload, ptr %.sroa.8625.0..sroa_idx, align 8
  %i.bcy = load i32, ptr %i.bbi, align 4, !noundef !9 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4611)
  call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  %i.bcz = trunc i64 %.sroa.5630.0.copyload to i16 ; 9 uses
  %i.bda = and i16 %i.bcz, 64
  %.not.i495 = icmp eq i16 %i.bda, 0
  %spec.select.i496 = select i1 %.not.i495, i16 0, i16 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !4613
  store i64 0, ptr %i.ds, align 8, !noalias !4613
  store ptr inttoptr (i64 8 to ptr), ptr %i.axw, align 8, !noalias !4613
  store i64 0, ptr %i.axx, align 8, !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !4613
  %i.bdb = and i16 %i.bcz, 3
  %.not38.i = icmp eq i16 %i.bdb, 0
  %2 = lshr i64 %.sroa.5630.0.copyload, 16
  br i1 %.not38.i, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.my, %bb.mm
  %i.bdc = phi i64 [ %i.beb, %bb.my ], [ 0, %bb.mm ]
  %i.bdd = phi ptr [ %i.bdz, %bb.my ], [ inttoptr (i64 8 to ptr), %bb.mm ]
  %.sroa.025.0.i = phi i8 [ 1, %bb.my ], [ 0, %bb.mm ] ; 8 uses
  %i.bde = and i16 %i.bcz, 1
  %.not39.i = icmp eq i16 %i.bde, 0
  br i1 %.not39.i, label %bb.mz, label %bb.ne

bb.mo:                                            ; preds = %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !4613
  %i.bdf = load ptr, ptr %i.axy, align 8, !alias.scope !4612, !noalias !4611, !nonnull !9, !noundef !9
  %i.bdg = load i64, ptr %i.axz, align 8, !alias.scope !4612, !noalias !4611, !noundef !9
  invoke void @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms9make_wide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdf, i64 noundef %i.bdg)
          to label %bb.mp unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit, !noalias !4612

.body.i497:                                       ; preds = %.loopexit.split-lp397.loopexit.split-lp.i.loopexit, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp, %.thread354.i, %bb.nh, %.loopexit396.i
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %.pn60.pn.i, %.thread354.i ], [ %i.bff, %bb.nh ], [ %lpad.loopexit398.i, %.loopexit396.i ], [ %lpad.loopexit827, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp828, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %.sroa.027.0.i = phi i1 [ false, %.thread354.i ], [ true, %bb.nh ], [ true, %.loopexit396.i ], [ %.sroa.027.1.ph.ph.i.ph, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit ], [ true, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %.sroa.025.1.i = phi i8 [ %.sroa.025.0.i, %.thread354.i ], [ %.sroa.025.0.i, %bb.nh ], [ %.sroa.025.0.i, %.loopexit396.i ], [ %.sroa.025.2.ph.ph.i.ph, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit ], [ %.sroa.025.2.ph.ph.i.ph826, %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp ]
  %i.bdh = trunc nuw i8 %.sroa.025.1.i to i1
  br i1 %i.bdh, label %.body.thread.i, label %bb.ny

.loopexit396.i:                                   ; preds = %bb.nc
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i497

.body.thread807.i:                                ; preds = %bb.ms
  %lpad.loopexit401.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.loopexit.split-lp397.loopexit.split-lp.i.loopexit: ; preds = %bb.mo, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i
  %.sroa.027.1.ph.ph.i.ph = phi i1 [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ true, %bb.mo ], [ true, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i ], [ true, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i ]
  %.sroa.025.2.ph.ph.i.ph = phi i8 [ %.sroa.025.0.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ 0, %bb.mo ], [ 1, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i ], [ %.sroa.025.0.i, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i ]
  %lpad.loopexit827 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i497

.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp: ; preds = %bb.mr, %bb.mt, %bb.nb, %bb.nd
  %.sroa.025.2.ph.ph.i.ph826 = phi i8 [ 1, %bb.mt ], [ 1, %bb.mr ], [ %.sroa.025.0.i, %bb.nd ], [ %.sroa.025.0.i, %bb.nb ]
  %lpad.loopexit.split-lp828 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i497

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !4613
  %i.bdi = load ptr, ptr %i.aya, align 8, !noalias !4613, !nonnull !9, !noundef !9 ; 3 uses
  %i.bdj = load i64, ptr %i.ayb, align 8, !noalias !4613, !noundef !9 ; 5 uses
  %i.bdk = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bdj, i64 4)
  br label %bb.mq

bb.mq:                                            ; preds = %.noexc65.i, %bb.mp
  %.sroa.0.024.i.i.i = phi i32 [ -2147483648, %bb.mp ], [ %.sroa.0.1.i.i.i, %.noexc65.i ] ; 2 uses
  %.sroa.02.023.i.i.i = phi i64 [ 0, %bb.mp ], [ %.sroa.02.1.i.i.i, %.noexc65.i ]
  %.sroa.3.022.i.i.i = phi i64 [ 0, %bb.mp ], [ %.sroa.3.1.i.i.i, %.noexc65.i ]
  %.sroa.0.01121.i.i.i = phi i64 [ 0, %bb.mp ], [ %i.bdq, %.noexc65.i ] ; 8 uses
  %i.bdl = add i64 %.sroa.0.01121.i.i.i, 4
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bdl, i64 range(i64 0, -9223372036854775808) %i.bdj) ; 4 uses
  %i.bdm = icmp ult i64 %..i.i.i.i, %.sroa.0.01121.i.i.i
  br i1 %i.bdm, label %bb.mr, label %bb.ms, !prof !24

bb.mr:                                            ; preds = %bb.mq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i.i, i64 noundef %..i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.bdj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
          to label %.noexc.i522 unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp, !noalias !4612

.noexc.i522:                                      ; preds = %bb.mr
  unreachable

bb.ms:                                            ; preds = %bb.mq
  %i.bdn = sub nuw nsw i64 %..i.i.i.i, %.sroa.0.01121.i.i.i
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdi, i64 %.sroa.0.01121.i.i.i
  %i.bdp = invoke fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdo, i64 noundef %i.bdn) #47
          to label %.noexc65.i unwind label %.body.thread807.i, !noalias !4612 ; 2 uses

.noexc65.i:                                       ; preds = %bb.ms
  %i.bdq = add nuw i64 %.sroa.0.01121.i.i.i, 1
  %i.bdr = icmp sgt i32 %i.bdp, %.sroa.0.024.i.i.i ; 2 uses
  %.sroa.3.1.i.i.i = select i1 %i.bdr, i64 %..i.i.i.i, i64 %.sroa.3.022.i.i.i ; 2 uses
  %.sroa.02.1.i.i.i = select i1 %i.bdr, i64 %.sroa.0.01121.i.i.i, i64 %.sroa.02.023.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i = call i32 @llvm.smax.i32(i32 %i.bdp, i32 %.sroa.0.024.i.i.i)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.01121.i.i.i, %i.bdk
  br i1 %exitcond.not.i.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i, label %bb.mq

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i: ; preds = %.noexc65.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !4614
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdi, i64 noundef range(i64 0, -9223372036854775808) %i.bdj, i64 noundef %.sroa.02.1.i.i.i, i64 noundef %.sroa.3.1.i.i.i)
          to label %.noexc66.i unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit, !noalias !4612

.noexc66.i:                                       ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i
  %i.bds = load i8, ptr %i.ayc, align 2, !range !16, !noalias !4614, !noundef !9
  %.not.i.i499 = icmp eq i8 %i.bds, 2
  br i1 %.not.i.i499, label %bb.mt, label %bb.mu, !prof !11

bb.mt:                                            ; preds = %.noexc66.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
          to label %.noexc67.i unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp, !noalias !4612

.noexc67.i:                                       ; preds = %bb.mt
  unreachable

bb.mu:                                            ; preds = %.noexc66.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.da, i64 32, i1 false), !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !4614
  %i.bdt = or disjoint i16 %spec.select.i496, 1
  store ptr %i.bdi, ptr %i.ayd, align 8, !noalias !4613
  store i64 %i.bdj, ptr %i.aye, align 8, !noalias !4613
  store i16 %i.bdt, ptr %i.ayf, align 8, !noalias !4613
  %i.bdu = load i64, ptr %i.axx, align 8, !alias.scope !4615, !noalias !4616, !noundef !9 ; 3 uses
  %i.bdv = load i64, ptr %i.ds, align 8, !range !14, !alias.scope !4615, !noalias !4616, !noundef !9
  %i.bdw = icmp eq i64 %i.bdu, %i.bdv
  br i1 %i.bdw, label %bb.mv, label %bb.my

bb.mv:                                            ; preds = %bb.mu
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtBU_15SubPatternFlagsEE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.my unwind label %bb.mw, !noalias !4617

bb.mw:                                            ; preds = %bb.mv
  %i.bdx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dp)
          to label %.body.thread.i unwind label %bb.mx, !noalias !4612

bb.mx:                                            ; preds = %bb.mw
  %i.bdy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4612
  unreachable

bb.my:                                            ; preds = %bb.mv, %bb.mu
  %i.bdz = load ptr, ptr %i.axw, align 8, !alias.scope !4615, !noalias !4616, !nonnull !9, !noundef !9 ; 2 uses
  %i.bea = getelementptr inbounds nuw [56 x i8], ptr %i.bdz, i64 %i.bdu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bea, ptr noundef nonnull align 8 dereferenceable(56) %i.dp, i64 56, i1 false), !noalias !4612
  %i.beb = add i64 %i.bdu, 1                      ; 2 uses
  store i64 %i.beb, ptr %i.axx, align 8, !alias.scope !4615, !noalias !4616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !4613
  br label %bb.mn

bb.mz:                                            ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !4613
  %i.bec = load ptr, ptr %i.axy, align 8, !alias.scope !4612, !noalias !4611, !nonnull !9, !noundef !9 ; 3 uses
  %i.bed = load i64, ptr %i.axz, align 8, !alias.scope !4612, !noalias !4611, !noundef !9 ; 5 uses
  %i.bee = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bed, i64 4)
  br label %bb.na

bb.na:                                            ; preds = %.noexc80.i, %bb.mz
  %.sroa.0.024.i.i68.i = phi i32 [ -2147483648, %bb.mz ], [ %.sroa.0.1.i.i75.i, %.noexc80.i ] ; 2 uses
  %.sroa.02.023.i.i69.i = phi i64 [ 0, %bb.mz ], [ %.sroa.02.1.i.i74.i, %.noexc80.i ]
  %.sroa.3.022.i.i70.i = phi i64 [ 0, %bb.mz ], [ %.sroa.3.1.i.i73.i, %.noexc80.i ]
  %.sroa.0.01121.i.i71.i = phi i64 [ 0, %bb.mz ], [ %i.bek, %.noexc80.i ] ; 8 uses
  %i.bef = add i64 %.sroa.0.01121.i.i71.i, 4
  %..i.i.i72.i = call noundef i64 @llvm.umin.i64(i64 %i.bef, i64 range(i64 0, -9223372036854775808) %i.bed) ; 4 uses
  %i.beg = icmp ult i64 %..i.i.i72.i, %.sroa.0.01121.i.i71.i
  br i1 %i.beg, label %bb.nb, label %bb.nc, !prof !24

bb.nb:                                            ; preds = %bb.na
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i71.i, i64 noundef %..i.i.i72.i, i64 noundef range(i64 0, -9223372036854775808) %i.bed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
          to label %.noexc79.i unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp, !noalias !4612

.noexc79.i:                                       ; preds = %bb.nb
  unreachable

bb.nc:                                            ; preds = %bb.na
  %i.beh = sub nuw nsw i64 %..i.i.i72.i, %.sroa.0.01121.i.i71.i
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bec, i64 %.sroa.0.01121.i.i71.i
  %i.bej = invoke fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bei, i64 noundef %i.beh) #47
          to label %.noexc80.i unwind label %.loopexit396.i, !noalias !4612 ; 2 uses

.noexc80.i:                                       ; preds = %bb.nc
  %i.bek = add nuw i64 %.sroa.0.01121.i.i71.i, 1
  %i.bel = icmp sgt i32 %i.bej, %.sroa.0.024.i.i68.i ; 2 uses
  %.sroa.3.1.i.i73.i = select i1 %i.bel, i64 %..i.i.i72.i, i64 %.sroa.3.022.i.i70.i ; 2 uses
  %.sroa.02.1.i.i74.i = select i1 %i.bel, i64 %.sroa.0.01121.i.i71.i, i64 %.sroa.02.023.i.i69.i ; 2 uses
  %.sroa.0.1.i.i75.i = call i32 @llvm.smax.i32(i32 %i.bej, i32 %.sroa.0.024.i.i68.i)
  %exitcond.not.i76.i = icmp eq i64 %.sroa.0.01121.i.i71.i, %i.bee
  br i1 %exitcond.not.i76.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i, label %bb.na

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i: ; preds = %.noexc80.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !4618
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bec, i64 noundef range(i64 0, -9223372036854775808) %i.bed, i64 noundef %.sroa.02.1.i.i74.i, i64 noundef %.sroa.3.1.i.i73.i)
          to label %.noexc81.i unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit, !noalias !4612

.noexc81.i:                                       ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i
  %i.bem = load i8, ptr %i.ayg, align 2, !range !16, !noalias !4618, !noundef !9
  %.not.i78.i = icmp eq i8 %i.bem, 2
  br i1 %.not.i78.i, label %bb.nd, label %bb.nf, !prof !11

bb.nd:                                            ; preds = %.noexc81.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
          to label %.noexc82.i unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit.split-lp, !noalias !4612

.noexc82.i:                                       ; preds = %bb.nd
  unreachable

bb.ne:                                            ; preds = %bb.nj, %bb.mn
  %i.ben = phi i64 [ %i.bfj, %bb.nj ], [ %i.bdc, %bb.mn ] ; 3 uses
  %i.beo = phi ptr [ %i.bfh, %bb.nj ], [ %i.bdd, %bb.mn ] ; 4 uses
  %i.bep = load i64, ptr %i.ds, align 8, !range !14, !noalias !4613, !noundef !9
  %i.beq = icmp ult i64 %i.ben, 164703072086692426
  call void @llvm.assume(i1 %i.beq)
  %.idx.i501 = mul nuw nsw i64 %i.ben, 56
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beo, i64 %.idx.i501 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !4613
  store ptr %i.beo, ptr %i.dn, align 8, !noalias !4613
  store ptr %i.beo, ptr %.sroa.4.0..sroa_idx.i502, align 8, !noalias !4613
  store i64 %i.bep, ptr %.sroa.5.0..sroa_idx.i503, align 8, !noalias !4613
  store ptr %i.ber, ptr %.sroa.6.0..sroa_idx.i504, align 8, !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.bes = icmp eq i64 %i.ben, 0
  br i1 %i.bes, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader: ; preds = %bb.ne
  %i.bet = and i16 %i.bcz, 32
  %.not41.i = icmp eq i16 %i.bet, 0
  %i.beu = and i64 %.sroa.5630.0.copyload, 16711680
  %.not59.i = icmp eq i64 %i.beu, 131072
  %sh.diff = lshr i64 %.sroa.5630.0.copyload, 16
  %tr.sh.diff = trunc i64 %sh.diff to i24
  %i.bev = and i24 %tr.sh.diff, -256
  %i.bew = trunc i64 %2 to i24
  %.sroa.0.0.insert.ext.i.i = and i24 %i.bew, 255
  %.sroa.0.0.insert.insert.i.i = or disjoint i24 %i.bev, %.sroa.0.0.insert.ext.i.i
  %i.bex = and i16 %i.bcz, 4
  %.not42.i = icmp eq i16 %i.bex, 0
  %i.bey = and i16 %i.bcz, 24
  %.not43.i = icmp eq i16 %i.bey, 0
  %i.bez = and i16 %i.bcz, 8
  %.not44.i = icmp eq i16 %i.bez, 0
  %i.bfa = and i16 %i.bcz, 16
  %.not48.i = icmp eq i16 %i.bfa, 0
  %i.bfb = and i16 %i.bcz, 16
  %.not45.i = icmp eq i16 %i.bfb, 0
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i

bb.nf:                                            ; preds = %.noexc81.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !4618
  store ptr %i.bec, ptr %i.ayh, align 8, !noalias !4613
  store i64 %i.bed, ptr %i.ayi, align 8, !noalias !4613
  store i16 %spec.select.i496, ptr %i.ayj, align 8, !noalias !4613
  %i.bfc = load i64, ptr %i.axx, align 8, !alias.scope !4619, !noalias !4620, !noundef !9 ; 3 uses
  %i.bfd = load i64, ptr %i.ds, align 8, !range !14, !alias.scope !4619, !noalias !4620, !noundef !9
  %i.bfe = icmp eq i64 %i.bfc, %i.bfd
  br i1 %i.bfe, label %bb.ng, label %bb.nj

bb.ng:                                            ; preds = %bb.nf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtBU_15SubPatternFlagsEE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.nj unwind label %bb.nh, !noalias !4621

bb.nh:                                            ; preds = %bb.ng
  %i.bff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.do)
          to label %.body.i497 unwind label %bb.ni, !noalias !4612

bb.ni:                                            ; preds = %bb.nh
  %i.bfg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4612
  unreachable

bb.nj:                                            ; preds = %bb.ng, %bb.nf
  %i.bfh = load ptr, ptr %i.axw, align 8, !alias.scope !4619, !noalias !4620, !nonnull !9, !noundef !9 ; 2 uses
  %i.bfi = getelementptr inbounds nuw [56 x i8], ptr %i.bfh, i64 %i.bfc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bfi, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false), !noalias !4612
  %i.bfj = add i64 %i.bfc, 1                      ; 2 uses
  store i64 %i.bfj, ptr %i.axx, align 8, !alias.scope !4619, !noalias !4620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !4613
  br label %bb.ne

.thread354.i:                                     ; preds = %.thread350.i, %bb.sb, %bb.oa, %bb.nk
  %.pn60.pn.i = phi { ptr, i32 } [ %i.bnj, %bb.sb ], [ %lpad.thr_comm.split-lp.i, %bb.oa ], [ %i.bfk, %bb.nk ], [ %.pn60353.i, %.thread350.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB1x_15SubPatternFlagsEEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn) #42
          to label %.body.i497 unwind label %bb.qk, !noalias !4612

bb.nk:                                            ; preds = %bb.ot
  %i.bfk = landingpad { ptr, i32 }
          cleanup
  br label %.thread354.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i
  %i.bfl = phi ptr [ %i.bfm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i ], [ %i.beo, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader ] ; 7 uses
  %.sroa.7281.sroa.0.0653.i = phi i32 [ %.sroa.7281.sroa.0.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader ] ; 7 uses
  %.sroa.7303.sroa.0.0652.i = phi i32 [ %.sroa.7303.sroa.0.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4622)
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 56 ; 3 uses
  store ptr %i.bfm, ptr %.sroa.4.0..sroa_idx.i502, align 8, !alias.scope !4622, !noalias !4623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(26) %i.bfl, i64 26, i1 false), !noalias !4624
  %.sroa.5.0..sroa_idx264.i = getelementptr inbounds nuw i8, ptr %i.bfl, i64 26
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx264.i, align 2, !noalias !4624 ; 2 uses
  %.sroa.7.0..sroa_idx.i509 = getelementptr inbounds nuw i8, ptr %i.bfl, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.0..sroa_idx.i509, i64 5, i1 false), !noalias !4624
  %.sroa.7268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bfl, i64 32
  %.sroa.7268.0.copyload.i = load ptr, ptr %.sroa.7268.0..sroa_idx.i, align 8, !noalias !4624 ; 5 uses
  %.sroa.8.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %i.bfl, i64 40
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i510, align 8, !noalias !4624 ; 9 uses
  %.sroa.9.0..sroa_idx.i511 = getelementptr inbounds nuw i8, ptr %i.bfl, i64 48
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i511, align 8, !noalias !4624 ; 3 uses
  %.not40.i = icmp eq i8 %.sroa.5.0.copyload.i, 2
  br i1 %.not40.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i, label %bb.nl

bb.nl:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7268.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !4613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.dm, ptr noundef nonnull align 8 dereferenceable(26) %.sroa.0.i, i64 26, i1 false), !noalias !4613
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx265.i, align 2, !noalias !4613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.0..sroa_idx267.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, i64 5, i1 false), !noalias !4613
  call void @llvm.experimental.noalias.scope.decl(metadata !4625)
  %i.bfn = invoke fastcc noundef align 4 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRShNtCslAmxFS6h4Nz_8intaglio6SymbolINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE3getBP_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ayk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7268.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i) #47
          to label %.noexc91.i unwind label %.thread358.loopexit.i, !noalias !4612 ; 2 uses

.noexc91.i:                                       ; preds = %bb.nl
  %.not.i90.i = icmp eq ptr %i.bfn, null
  br i1 %.not.i90.i, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %.noexc91.i
  %i.bfo = load i32, ptr %i.bfn, align 4, !noalias !4626, !noundef !9
  br label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internRShEB8_.exit.i

bb.nn:                                            ; preds = %.noexc91.i
  %i.bfp = load i64, ptr %i.ayl, align 8, !alias.scope !4627, !noalias !4628, !noundef !9
  %i.bfq = add i64 %i.bfp, %.sroa.8.0.copyload.i
  store i64 %i.bfq, ptr %i.ayl, align 8, !alias.scope !4627, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !4629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !4629
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc92.i unwind label %.thread358.loopexit.i, !noalias !4612

.noexc92.i:                                       ; preds = %bb.nn
  %i.bfr = load i64, ptr %i.cx, align 8, !range !13, !noalias !4629, !noundef !9
  %i.bfs = trunc nuw i64 %i.bfr to i1
  %i.bft = load i64, ptr %i.aym, align 8, !range !18, !noalias !4629, !noundef !9 ; 3 uses
  br i1 %i.bfs, label %bb.no, label %bb.np, !prof !11

bb.no:                                            ; preds = %.noexc92.i
  %i.bfu = load i64, ptr %i.ayn, align 8, !noalias !4629
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bft, i64 %i.bfu) #41
          to label %.noexc93.i unwind label %.thread358.loopexit.split-lp.i, !noalias !4612

.noexc93.i:                                       ; preds = %bb.no
  unreachable

bb.np:                                            ; preds = %.noexc92.i
  %i.bfv = load ptr, ptr %i.ayn, align 8, !noalias !4629, !nonnull !9, !noundef !9 ; 2 uses
  %i.bfw = icmp samesign ule i64 %.sroa.8.0.copyload.i, %i.bft
  call void @llvm.assume(i1 %i.bfw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !4629
  store i64 %i.bft, ptr %i.cy, align 8, !noalias !4629
  store ptr %i.bfv, ptr %i.ayo, align 8, !noalias !4629
  store i64 0, ptr %i.ayp, align 8, !noalias !4629
  %.not4.i.i = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %.not4.i.i, label %bb.nq, label %bb.ns

bb.nq:                                            ; preds = %bb.ns, %bb.np
  %i.bfx = invoke { i32, i32 } @_RINvMsc_NtCslAmxFS6h4Nz_8intaglio5bytesINtB6_11SymbolTableINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE6internINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ym, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy)
          to label %.noexc94.i unwind label %.thread358.loopexit.i, !noalias !4612 ; 2 uses

.noexc94.i:                                       ; preds = %bb.nq
  %i.bfy = extractvalue { i32, i32 } %i.bfx, 0
  %i.bfz = extractvalue { i32, i32 } %i.bfx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !4629
  %i.bga = trunc nuw i32 %i.bfy to i1
  br i1 %i.bga, label %bb.nr, label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internRShEB8_.exit.i, !prof !11

bb.nr:                                            ; preds = %.noexc94.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #46
          to label %.noexc95.i unwind label %.thread358.loopexit.split-lp.i, !noalias !4612

.noexc95.i:                                       ; preds = %bb.nr
  unreachable

bb.ns:                                            ; preds = %bb.np
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bfv, ptr nonnull readonly align 1 %.sroa.7268.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i, i1 false), !noalias !4626
  store i64 %.sroa.8.0.copyload.i, ptr %i.ayp, align 8, !noalias !4629
  br label %bb.nq

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i, %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB1x_15SubPatternFlagsEEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn)
          to label %bb.nt unwind label %.loopexit.split-lp397.loopexit.split-lp.i.loopexit, !noalias !4612

bb.nt:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !4613
  %i.bgb = trunc nuw i8 %.sroa.025.0.i to i1
  br i1 %i.bgb, label %bb.nu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.nw, %bb.nt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !4613
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir14LiteralPatternEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.hj)
          to label %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler17c_literal_pattern.exit unwind label %.thread722.loopexit

bb.nu:                                            ; preds = %bb.nt
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.nw unwind label %bb.nv, !noalias !4612

bb.nv:                                            ; preds = %bb.nu
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %.thread.i498 unwind label %bb.nx, !noalias !4612

bb.nw:                                            ; preds = %bb.nu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.nz, !noalias !4612

bb.nx:                                            ; preds = %bb.nv
  %i.bgd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4612
  unreachable

bb.ny:                                            ; preds = %.body.thread.i, %.body.i497
  %.pn60.pn.pn.pn.i = phi { ptr, i32 } [ %.pn60.pn.pn370.i, %.body.thread.i ], [ %.pn60.pn.pn.i, %.body.i497 ] ; 2 uses
  %.sroa.027.2.i = phi i1 [ %.sroa.027.0371.i, %.body.thread.i ], [ %.sroa.027.0.i, %.body.i497 ]
  br i1 %.sroa.027.2.i, label %bb.sg, label %.thread.i498

bb.nz:                                            ; preds = %bb.nw
  %i.bge = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i498
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule:bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtBP_10SubPatternEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avn) #44
          to label %bb.ws unwind label %bb.wy, !noalias !4686

bb.ws:                                            ; preds = %bb.wr, %bb.wq
  %i.byi = load ptr, ptr %i.avo, align 8, !alias.scope !4778, !noalias !4779, !nonnull !9, !noundef !9
  %i.byj = getelementptr inbounds nuw [32 x i8], ptr %i.byi, i64 %i.byf ; 6 uses
  store i32 %i.bnt, ptr %i.byj, align 8, !noalias !4780
  %.sroa.4.i100.sroa.3.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 8
  store i8 6, ptr %.sroa.4.i100.sroa.3.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 8, !noalias !4780
  %.sroa.4.i100.sroa.5.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 10
  store i16 %i.bya, ptr %.sroa.4.i100.sroa.5.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 2, !noalias !4780
  %.sroa.4.i100.sroa.6.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 12
  store i32 %.sroa.030.3209.i.i, ptr %.sroa.4.i100.sroa.6.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 4, !noalias !4780
  %.sroa.4.i100.sroa.7.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 16
  store i64 %.sroa.0170.sroa.0.0.insert.insert.i.i, ptr %.sroa.4.i100.sroa.7.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 8, !noalias !4780
  %.sroa.4.i100.sroa.8.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 24
  store i64 %.sroa.9.8.insert.ext.i.i, ptr %.sroa.4.i100.sroa.8.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 8, !noalias !4780
  %i.byk = add i64 %i.byf, 1
  store i64 %i.byk, ptr %i.xw, align 8, !alias.scope !4778, !noalias !4779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4724
  br label %bb.wl

bb.wt:                                            ; preds = %bb.wl
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i unwind label %bb.wu, !noalias !4686

bb.wu:                                            ; preds = %bb.wt
  %i.byl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body47.i unwind label %bb.wv, !noalias !4686

bb.wv:                                            ; preds = %bb.wu
  %i.bym = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4686
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i: ; preds = %bb.wt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.noexc60.i unwind label %.loopexit.i534, !noalias !4686

bb.ww:                                            ; preds = %bb.wl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4724
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7180.i.i)
  %i.byn = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  %i.byo = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 64
  %i.byp = load i8, ptr %i.byo, align 8, !range !16, !alias.scope !4782, !noalias !4783, !noundef !9 ; 2 uses
  %i.byq = icmp eq i8 %i.byp, 2
  %i.byr = load <2 x i32>, ptr %i.byn, align 8, !alias.scope !4784, !noalias !4742
  br i1 %i.byq, label %bb.wx, label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i

bb.wx:                                            ; preds = %bb.ww
  %.sroa.7180.0..sroa_idx181.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.0..sroa_idx181.i.i, i64 3, i1 false), !alias.scope !4785, !noalias !4742
  br label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i

.noexc60.i:                                       ; preds = %.noexc61.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i
  %.sroa.032.5.i.i = phi i32 [ %i.byx, %.noexc61.i ], [ %.sroa.032.3208.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4724
  br label %bb.wi

_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i: ; preds = %bb.wx, %bb.ww
  store i32 %.sroa.032.3208.i.i, ptr %i.awd, align 4, !noalias !4724
  store <2 x i32> %i.byr, ptr %i.awe, align 8, !noalias !4724
  store i8 %i.byp, ptr %.sroa.6177.0..sroa_idx.i.i, align 8, !noalias !4724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.i.i, i64 3, i1 false), !noalias !4724
  store i16 %spec.select205.i.i, ptr %i.awf, align 2, !noalias !4724
  store i8 6, ptr %i.ae, align 8, !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7180.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4724
  %i.bys = load ptr, ptr %.sroa.249.0..sroa_idx.i.i, align 8, !noalias !4724, !nonnull !9, !noundef !9 ; 3 uses
  %i.byt = load i64, ptr %i.ag, align 8, !range !14, !noalias !4724, !noundef !9
  %i.byu = load i64, ptr %.sroa.350.0..sroa_idx.i.i, align 8, !noalias !4724, !noundef !9 ; 2 uses
  %i.byv = icmp ult i64 %i.byu, 230584300921369396
  call void @llvm.assume(i1 %i.byv)
  %i.byw = getelementptr inbounds nuw [40 x i8], ptr %i.bys, i64 %i.byu
  store ptr %i.bys, ptr %i.ad, align 8, !noalias !4724
  store i64 %i.byt, ptr %i.awg, align 8, !noalias !4724
  store ptr %i.bys, ptr %i.awh, align 8, !noalias !4724
  store ptr %i.byw, ptr %i.awi, align 8, !noalias !4724
  %i.byx = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB8_2re10RegexpAtomENvMsa_NtB6_5rulesNtB2o_14SubPatternAtom16from_regexp_atomB1V_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ad)
          to label %.noexc61.i unwind label %.loopexit.i534, !noalias !4686

.noexc61.i:                                       ; preds = %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4724
  br label %.noexc60.i

bb.wy:                                            ; preds = %bb.wr, %bb.wp
  %lpad.thr_comm192.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #42
          to label %.body47.i unwind label %bb.wz, !noalias !4686

bb.wz:                                            ; preds = %bb.xa, %bb.wy
  %i.byy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4686
  unreachable

bb.xa:                                            ; preds = %bb.vu, %bb.vs
  %lpad.thr_comm.i32.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #42
          to label %.body47.i unwind label %bb.wz, !noalias !4686

bb.xb:                                            ; preds = %bb.vi
  call void @llvm.experimental.noalias.scope.decl(metadata !4786)
  %i.byz = load ptr, ptr %i.awr, align 8, !alias.scope !4786, !noalias !4687, !nonnull !9, !noundef !9
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 78
  %i.bzb = load i8, ptr %i.bza, align 2, !range !46, !noalias !4787, !noundef !9
  %i.bzc = trunc nuw i8 %i.bzb to i1
  %i.bzd = icmp ne i64 %.sroa.0.sroa.0.0.i, 4
  call void @llvm.assume(i1 %i.bzd)
  br i1 %i.bzc, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.i, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.bze = icmp eq i64 %.sroa.0.sroa.0.0.i, 7
  br i1 %i.bze, label %bb.xd, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i

bb.xd:                                            ; preds = %bb.xc
  %i.bzf = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4786, !noalias !4687, !nonnull !9, !noundef !9 ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 40
  %i.bzh = load ptr, ptr %i.bzg, align 8, !noalias !4787, !nonnull !9, !noundef !9
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 78
  %i.bzj = load i8, ptr %i.bzi, align 2, !range !46, !noalias !4787, !noundef !9
  %i.bzk = trunc nuw i8 %i.bzj to i1
  br i1 %i.bzk, label %.split.i, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i

.split.i:                                         ; preds = %bb.xd
  %i.bzl = load i64, ptr %i.bzf, align 8, !range !34, !noalias !4787, !noundef !9 ; 2 uses
  %i.bzm = icmp ne i64 %i.bzl, 4
  call void @llvm.assume(i1 %i.bzm)
  %.not249.i = icmp eq i64 %i.bzl, 8
  br i1 %.not249.i, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i, label %bb.xh

.body47.i:                                        ; preds = %.loopexit.split-lp.i528.loopexit, %.loopexit.split-lp.i528.loopexit.split-lp, %bb.act, %bb.acc, %bb.abu, %bb.abl, %.body107.i, %bb.aax, %bb.aav, %bb.zm, %.body49.i.i, %bb.yo, %bb.ym, %common.resume.sink.split.i.i, %.loopexit.i534, %bb.xa, %bb.wy, %bb.wu, %bb.vx
  %.pn20.i = phi { ptr, i32 } [ %.pn.i544, %.body107.i ], [ %lpad.thr_comm230.i, %bb.act ], [ %lpad.thr_comm.split-lp231.i, %bb.abu ], [ %lpad.thr_comm.i32.i, %bb.xa ], [ %i.byl, %bb.wu ], [ %i.bvm, %bb.vx ], [ %lpad.thr_comm192.i.i, %bb.wy ], [ %i.cjn, %bb.abl ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %i.ces, %bb.zm ], [ %i.ckr, %bb.acc ], [ %lpad.phi.i.i552, %bb.ym ], [ %lpad.phi.i.i552, %bb.yo ], [ %i.cis, %bb.aav ], [ %.pn.pn.pn.pn.ph.i.i, %bb.aax ], [ %.pn.pn.i.i541, %.body49.i.i ], [ %lpad.loopexit.i535, %.loopexit.i534 ], [ %lpad.loopexit813, %.loopexit.split-lp.i528.loopexit ], [ %lpad.loopexit.split-lp814, %.loopexit.split-lp.i528.loopexit.split-lp ] ; 2 uses
  %.sroa.012.0.i = phi i1 [ true, %.body107.i ], [ true, %bb.act ], [ true, %bb.abu ], [ true, %bb.xa ], [ true, %bb.wu ], [ true, %bb.vx ], [ true, %bb.wy ], [ true, %bb.abl ], [ false, %common.resume.sink.split.i.i ], [ true, %bb.zm ], [ true, %bb.acc ], [ false, %bb.ym ], [ false, %bb.yo ], [ true, %bb.aav ], [ true, %bb.aax ], [ true, %.body49.i.i ], [ true, %.loopexit.i534 ], [ true, %.loopexit.split-lp.i528.loopexit ], [ true, %.loopexit.split-lp.i528.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #42
          to label %bb.acj unwind label %bb.abp, !noalias !4686

.loopexit.i534:                                   ; preds = %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i, %.noexc58.i, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit96.i.i, %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit89.i.i, %.noexc54.i, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit.i.i, %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.wc
  %lpad.loopexit.i535 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i528.loopexit:                 ; preds = %bb.vl, %bb.vn, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit.i.i, %.noexc41.i, %bb.vo, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit77.i.i, %.noexc45.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit.i.i, %bb.vz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit71.i.i, %bb.abm, %bb.abq, %bb.acd
  %lpad.loopexit813 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i528.loopexit.split-lp:        ; preds = %.invoke.i537
  %lpad.loopexit.split-lp814 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit264.i:                                   ; preds = %bb.wi, %bb.abs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit113.i, %bb.wj, %bb.vp
  %.sroa.7.0.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit113.i ], [ %i.cjt, %bb.abs ], [ %i.bua, %bb.vp ], [ %i.bxj, %bb.wj ], [ undef, %bb.wi ]
  %.sroa.0.0.i536 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit113.i ], [ %i.cjs, %bb.abs ], [ %i.btz, %bb.vp ], [ %i.bxi, %bb.wj ], [ -1, %bb.wi ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.xf unwind label %bb.xe, !noalias !4686

bb.xe:                                            ; preds = %.loopexit264.i
  %i.bzn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body64.thread.i unwind label %bb.xg, !noalias !4686

bb.xf:                                            ; preds = %.loopexit264.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternEEB1e_.exit.i unwind label %.body64.thread245.i, !noalias !4686

bb.xg:                                            ; preds = %bb.xe
  %i.bzo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4686
  unreachable

_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.i: ; preds = %bb.xb
  %.not250.i = icmp eq i64 %.sroa.0.sroa.0.0.i, 8
  br i1 %.not250.i, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i, label %bb.xh

bb.xh:                                            ; preds = %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !4687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.ca, i64 56, i1 false), !noalias !4687
  %i.bzp = load i16, ptr %i.avg, align 16, !alias.scope !4686, !noalias !4685, !noundef !9 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4687
  store i32 %i.bnt, ptr %i.u, align 4, !noalias !4789
  %i.bzq = load <2 x i64>, ptr %i.hi, align 16, !alias.scope !4686, !noalias !4685
  store <2 x i64> %i.bzq, ptr %i.t, align 16, !noalias !4789
  %i.bzr = and i16 %i.bzp, 1
  %.not.i66.i = icmp eq i16 %i.bzr, 0             ; 2 uses
  %i.bzs = and i16 %i.bzp, 3
  %.not12.i.i = icmp eq i16 %i.bzs, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4789
  %3 = lshr i16 %i.bzp, 2                         ; 2 uses
  %4 = trunc i16 %3 to i8
  %i.bzt = and i8 %4, 1
  store i8 %i.bzt, ptr %i.s, align 1, !noalias !4789
  %i.bzu = and i16 %i.bzp, 64
  %.not13.i.i = icmp eq i16 %i.bzu, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4789
  %5 = shl nuw nsw i16 %3, 1
  %spec.select.i67.i = and i16 %5, 2              ; 2 uses
  %i.bzv = or disjoint i16 %spec.select.i67.i, 24
  %spec.select26.i.i = select i1 %.not13.i.i, i16 %spec.select.i67.i, i16 %i.bzv
  store i16 %spec.select26.i.i, ptr %i.r, align 2, !noalias !4789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4789
  store ptr %0, ptr %i.q, align 8, !noalias !4789
  store ptr %i.r, ptr %i.aws, align 8, !noalias !4789
  store ptr %i.t, ptr %i.awt, align 8, !noalias !4789
  store ptr %i.s, ptr %i.awu, align 8, !noalias !4789
  store ptr %i.u, ptr %i.awv, align 8, !noalias !4789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4789
  %i.bzw = load i64, ptr %i.by, align 8, !range !34, !alias.scope !4788, !noalias !4790, !noundef !9 ; 2 uses
  %i.bzx = icmp ne i64 %i.bzw, 4
  call void @llvm.assume(i1 %i.bzx)
  %.not15.i.i = icmp eq i64 %i.bzw, 7             ; 3 uses
  br i1 %.not15.i.i, label %bb.xi, label %bb.xj

bb.xi:                                            ; preds = %bb.xh
  %i.bzy = load ptr, ptr %i.aww, align 8, !alias.scope !4788, !noalias !4790, !nonnull !9, !noundef !9
  br label %bb.xk

bb.xj:                                            ; preds = %bb.xh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.ca, i64 48, i1 false), !noalias !4687
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xi
  %.sroa.0.0.i68.i = phi ptr [ %i.bzy, %bb.xi ], [ %i.p, %bb.xj ] ; 6 uses
  %i.bzz = load i64, ptr %.sroa.0.0.i68.i, align 8, !range !34, !noalias !4791, !noundef !9 ; 3 uses
  %i.caa = icmp ne i64 %i.bzz, 4
  call void @llvm.assume(i1 %i.caa)
  %i.cab = add nsw i64 %i.bzz, -2
  %.inv.i.i = icmp samesign ult i64 %i.bzz, 2
  %i.cac = select i1 %.inv.i.i, i64 2, i64 %i.cab
  switch i64 %i.cac, label %bb.xl [
    i64 1, label %bb.xm
    i64 7, label %bb.xn
  ], !prof !59

bb.xl:                                            ; preds = %bb.xk
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @339) #41
          to label %bb.ya unwind label %.loopexit.split-lp.i.i551.loopexit.split-lp, !noalias !4791

bb.xm:                                            ; preds = %bb.xk
  %i.cad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 8 ; 2 uses
  br i1 %.not.i66.i, label %bb.xw, label %bb.xv

bb.xn:                                            ; preds = %bb.xk
  %i.cae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 16
  %i.caf = load ptr, ptr %i.cae, align 8, !noalias !4791, !nonnull !9, !noundef !9 ; 6 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 24
  %i.cah = load i64, ptr %i.cag, align 8, !noalias !4791, !noundef !9 ; 4 uses
  %.idx.i69.i = mul nuw nsw i64 %i.cah, 48
  %i.cai = getelementptr inbounds nuw i8, ptr %i.caf, i64 %.idx.i69.i ; 4 uses
  %i.caj = icmp eq i64 %i.cah, 0
  br i1 %i.caj, label %.loopexit.i.i554, label %.lr.ph.i70.i

.lr.ph.i70.i:                                     ; preds = %bb.xn
  br i1 %.not.i66.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i70.i
  br i1 %.not12.i.i, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i.i, %bb.xp
  %.sroa.04.028.us.us.i.i = phi ptr [ %i.cak, %bb.xp ], [ %i.caf, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.cak = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us.us.i.i, i64 48 ; 2 uses
  %i.cal = load i64, ptr %.sroa.04.028.us.us.i.i, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cam = icmp ne i64 %i.cal, 4
  call void @llvm.assume(i1 %i.cam)
  %i.can = icmp eq i64 %i.cal, 3
  br i1 %i.can, label %bb.xo, label %.split.us.i.i, !prof !10

bb.xo:                                            ; preds = %.lr.ph.split.us.split.us.i.i
  %i.cao = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us.us.i.i, i64 8
  %.val18.us.us.i.i = load ptr, ptr %i.cao, align 8, !noalias !4791, !nonnull !9, !noundef !9
  %i.cap = getelementptr i8, ptr %.sroa.04.028.us.us.i.i, i64 16
  %.val19.us.us.i.i = load i64, ptr %i.cap, align 8, !noalias !4791, !noundef !9
  invoke fastcc void @_RNCNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB7_8Compiler21c_alternation_literal0B9_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q, ptr %.val18.us.us.i.i, i64 %.val19.us.us.i.i, i1 noundef zeroext false)
          to label %bb.xp unwind label %.loopexit27.split.us.split.us.i.i, !noalias !4791

bb.xp:                                            ; preds = %bb.xo
  %i.caq = icmp eq ptr %i.cak, %i.cai
  br i1 %i.caq, label %.loopexit.i.i554, label %.lr.ph.split.us.split.us.i.i

.loopexit27.split.us.split.us.i.i:                ; preds = %bb.xo
  %lpad.loopexit.us.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit27.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %bb.xs
  %.sroa.04.028.us.i.i = phi ptr [ %i.car, %bb.xs ], [ %i.caf, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.car = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us.i.i, i64 48 ; 2 uses
  %i.cas = load i64, ptr %.sroa.04.028.us.i.i, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cat = icmp ne i64 %i.cas, 4
  call void @llvm.assume(i1 %i.cat)
  %i.cau = icmp eq i64 %i.cas, 3
  br i1 %i.cau, label %bb.xq, label %.split.us.i.i, !prof !10

bb.xq:                                            ; preds = %.lr.ph.split.us.split.i.i
  %i.cav = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us.i.i, i64 8 ; 2 uses
  %.val18.us.i.i = load ptr, ptr %i.cav, align 8, !noalias !4791, !nonnull !9, !noundef !9
  %i.caw = getelementptr i8, ptr %.sroa.04.028.us.i.i, i64 16 ; 2 uses
  %.val19.us.i.i = load i64, ptr %i.caw, align 8, !noalias !4791, !noundef !9
  invoke fastcc void @_RNCNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB7_8Compiler21c_alternation_literal0B9_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q, ptr %.val18.us.i.i, i64 %.val19.us.i.i, i1 noundef zeroext false)
          to label %bb.xr unwind label %.loopexit27.split.us.split.i.i, !noalias !4791

bb.xr:                                            ; preds = %bb.xq
  %.val.us.i.i = load ptr, ptr %i.cav, align 8, !noalias !4791, !nonnull !9, !noundef !9
  %.val17.us.i.i = load i64, ptr %i.caw, align 8, !noalias !4791, !noundef !9
  invoke fastcc void @_RNCNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB7_8Compiler21c_alternation_literal0B9_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q, ptr %.val.us.i.i, i64 %.val17.us.i.i, i1 noundef zeroext true)
          to label %bb.xs unwind label %.loopexit27.split.us.split.i.i, !noalias !4791

bb.xs:                                            ; preds = %bb.xr
  %i.cax = icmp eq ptr %i.car, %i.cai
  br i1 %i.cax, label %.loopexit.i.i554, label %.lr.ph.split.us.split.i.i

.loopexit27.split.us.split.i.i:                   ; preds = %bb.xr, %bb.xq
  %lpad.loopexit.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit27.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i70.i
  br i1 %.not12.i.i, label %.lr.ph.split.split.us.i.i.preheader, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i.preheader:              ; preds = %.lr.ph.split.i.i
  %i.cay = add i64 %i.cah, 1152921504606846975
  %i.caz = and i64 %i.cay, 1152921504606846975
  %xtraiter = and i64 %i.cah, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.i.i.prol.loopexit, label %.lr.ph.split.split.us.i.i.prol

.lr.ph.split.split.us.i.i.prol:                   ; preds = %.lr.ph.split.split.us.i.i.preheader, %bb.xt
  %.sroa.04.028.us29.i.i.prol = phi ptr [ %i.cbd, %bb.xt ], [ %i.caf, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.xt ], [ 0, %.lr.ph.split.split.us.i.i.preheader ]
  %i.cba = load i64, ptr %.sroa.04.028.us29.i.i.prol, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cbb = icmp ne i64 %i.cba, 4
  call void @llvm.assume(i1 %i.cbb)
  %i.cbc = icmp eq i64 %i.cba, 3
  br i1 %i.cbc, label %bb.xt, label %.split.us.i.i, !prof !10

bb.xt:                                            ; preds = %.lr.ph.split.split.us.i.i.prol
  %i.cbd = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i.prol, i64 48 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.i.i.prol.loopexit, label %.lr.ph.split.split.us.i.i.prol, !llvm.loop !4409

.lr.ph.split.split.us.i.i.prol.loopexit:          ; preds = %bb.xt, %.lr.ph.split.split.us.i.i.preheader
  %.sroa.04.028.us29.i.i.unr = phi ptr [ %i.caf, %.lr.ph.split.split.us.i.i.preheader ], [ %i.cbd, %bb.xt ]
  %i.cbe = icmp samesign ult i64 %i.caz, 7
  br i1 %i.cbe, label %.loopexit.i.i554, label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.prol.loopexit, %bb.xu
  %.sroa.04.028.us29.i.i = phi ptr [ %i.cck, %bb.xu ], [ %.sroa.04.028.us29.i.i.unr, %.lr.ph.split.split.us.i.i.prol.loopexit ] ; 9 uses
  %i.cbf = load i64, ptr %.sroa.04.028.us29.i.i, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cbg = icmp ne i64 %i.cbf, 4
  call void @llvm.assume(i1 %i.cbg)
  %i.cbh = icmp eq i64 %i.cbf, 3
  br i1 %i.cbh, label %.lr.ph.split.split.us.i.i.1, label %.split.us.i.i, !prof !10

.lr.ph.split.split.us.i.i.1:                      ; preds = %.lr.ph.split.split.us.i.i
  %i.cbi = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i, i64 48
  %i.cbj = load i64, ptr %i.cbi, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cbk = icmp ne i64 %i.cbj, 4
  call void @llvm.assume(i1 %i.cbk)
  %i.cbl = icmp eq i64 %i.cbj, 3
  br i1 %i.cbl, label %.lr.ph.split.split.us.i.i.2, label %.split.us.i.i, !prof !10

.lr.ph.split.split.us.i.i.2:                      ; preds = %.lr.ph.split.split.us.i.i.1
  %i.cbm = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i, i64 96
  %i.cbn = load i64, ptr %i.cbm, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cbo = icmp ne i64 %i.cbn, 4
  call void @llvm.assume(i1 %i.cbo)
  %i.cbp = icmp eq i64 %i.cbn, 3
  br i1 %i.cbp, label %.lr.ph.split.split.us.i.i.3, label %.split.us.i.i, !prof !10

.lr.ph.split.split.us.i.i.3:                      ; preds = %.lr.ph.split.split.us.i.i.2
  %i.cbq = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i, i64 144
  %i.cbr = load i64, ptr %i.cbq, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cbs = icmp ne i64 %i.cbr, 4
  call void @llvm.assume(i1 %i.cbs)
  %i.cbt = icmp eq i64 %i.cbr, 3
  br i1 %i.cbt, label %.lr.ph.split.split.us.i.i.4, label %.split.us.i.i, !prof !10

.lr.ph.split.split.us.i.i.4:                      ; preds = %.lr.ph.split.split.us.i.i.3
  %i.cbu = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i, i64 192
  %i.cbv = load i64, ptr %i.cbu, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cbw = icmp ne i64 %i.cbv, 4
  call void @llvm.assume(i1 %i.cbw)
  %i.cbx = icmp eq i64 %i.cbv, 3
  br i1 %i.cbx, label %.lr.ph.split.split.us.i.i.5, label %.split.us.i.i, !prof !10

.lr.ph.split.split.us.i.i.5:                      ; preds = %.lr.ph.split.split.us.i.i.4
  %i.cby = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i, i64 240
  %i.cbz = load i64, ptr %i.cby, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
  %i.cca = icmp ne i64 %i.cbz, 4
  call void @llvm.assume(i1 %i.cca)
  %i.ccb = icmp eq i64 %i.cbz, 3
  br i1 %i.ccb, label %.lr.ph.split.split.us.i.i.6, label %.split.us.i.i, !prof !10

.lr.ph.split.split.us.i.i.6:                      ; preds = %.lr.ph.split.split.us.i.i.5
  %i.ccc = getelementptr inbounds nuw i8, ptr %.sroa.04.028.us29.i.i, i64 288
  %i.ccd = load i64, ptr %i.ccc, align 8, !range !34, !noalias !4791, !noundef !9 ; 2 uses
end_hunk_1
