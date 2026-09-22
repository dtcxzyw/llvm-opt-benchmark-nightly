Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeECskXtk6F4WjxZ_4just:bb.a
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bex, i64 noundef %i.bey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75
          to label %.cont.i.i.i311 unwind label %bb.mh, !noalias !4013

.cont.i.i.i311:                                   ; preds = %.invoke.i.i.i310
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit25.i.i.i.i.i
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bed, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !alias.scope !4029, !noalias !4030, !nonnull !28, !noundef !28
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bei
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.beo, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8, !alias.scope !4032, !noalias !4033, !nonnull !28, !noundef !28
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %i.bfd, i64 %i.bet
  %.val31.i.i.i.i.i = load i32, ptr %i.bfb, align 4, !noalias !4025, !noundef !28
  %.val32.i.i.i.i.i = load i32, ptr %i.bfe, align 4, !noalias !4025, !noundef !28
  %i.bff = icmp eq i32 %.val31.i.i.i.i.i, %.val32.i.i.i.i.i
  br i1 %i.bff, label %bb.lx, label %bb.kl

bb.kl:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4034
  %i.bfg = load i8, ptr %i.ali, align 8, !range !40, !noalias !4035, !noundef !28
  %i.bfh = trunc nuw i8 %i.bfg to i1
  br i1 %i.bfh, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i.i.i.i.i383, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i312, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i.i.i.i.i383: ; preds = %bb.kl
  %.pre.i.i.i.i.i.i.i.i384 = load i64, ptr %i.alh, align 8, !noalias !4036
  %.phi.trans.insert.i.i.i.i.i.i.i.i385 = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %.pre1.i.i.i.i.i.i.i.i386 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i385, align 8, !noalias !4036
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i314

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i312: ; preds = %bb.kl
  %i.bfi = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc38.i.i.i313 unwind label %bb.mh, !noalias !4013 ; 2 uses

.noexc38.i.i.i313:                                ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i312
  %i.bfj = extractvalue { i64, i64 } %i.bfi, 0
  %i.bfk = extractvalue { i64, i64 } %i.bfi, 1    ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  store i64 %i.bfk, ptr %i.bfl, align 8, !noalias !4037
  store i8 1, ptr %i.ali, align 8, !noalias !4037
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i314

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i314: ; preds = %.noexc38.i.i.i313, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i.i.i.i.i383
  %.pre-phi158.i.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i.i386, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i.i.i.i.i383 ], [ %i.bfk, %.noexc38.i.i.i313 ]
  %i.bfm = phi i64 [ %.pre.i.i.i.i.i.i.i.i384, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i.i.i.i.i383 ], [ %i.bfj, %.noexc38.i.i.i313 ] ; 2 uses
  %i.bfn = add i64 %i.bfm, 1
  store i64 %i.bfn, ptr %i.alh, align 8, !noalias !4036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false), !noalias !4034
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i315 = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  store i64 %i.bfm, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i315, align 8, !noalias !4034
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i316 = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  store i64 %.pre-phi158.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i316, align 8, !noalias !4034
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br label %bb.km

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.kr
  %lpad.loopexit.i.i.i.i.i.i374 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i319

.loopexit.split-lp.loopexit.i.i.i.i.i.i375:       ; preds = %bb.lt, %bb.lo, %bb.lg
  %lpad.loopexit67.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i319

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i318: ; preds = %.invoke.i.i.i.i.i.i317
  %lpad.loopexit.split-lp68.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i319

.loopexit.split-lp.i.i.i.i.i.i319:                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i318, %.loopexit.split-lp.loopexit.i.i.i.i.i.i375, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i320 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i374, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit67.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i375 ], [ %lpad.loopexit.split-lp68.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i318 ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #72, !noalias !4025
  br label %.body.i.i.i285

bb.km:                                            ; preds = %bb.lu, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i314
  %.sroa.0.032107.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i314 ], [ %i.bfr, %bb.lu ] ; 4 uses
  %i.bfr = add nuw nsw i64 %.sroa.0.032107.i.i.i.i.i.i, 1 ; 2 uses
  %i.bfs = and i64 %.sroa.0.032107.i.i.i.i.i.i, 1023
  %i.bft = icmp eq i64 %i.bfs, 0
  br i1 %i.bft, label %bb.lg, label %bb.li

.lr.ph110.i.i.i.i.i.i:                            ; preds = %bb.lu, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346
  %.sroa.011.0109.i.i.i.i.i.i = phi i64 [ %i.bfu, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346 ], [ 0, %bb.lu ] ; 3 uses
  %i.bfu = add nuw nsw i64 %.sroa.011.0109.i.i.i.i.i.i, 1 ; 2 uses
  %i.bfv = and i64 %.sroa.011.0109.i.i.i.i.i.i, 1023
  %i.bfw = icmp eq i64 %i.bfv, 0
  br i1 %i.bfw, label %bb.kr, label %bb.kt

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit26.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346
  call void @llvm.experimental.noalias.scope.decl(metadata !4038)
  call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  call void @llvm.experimental.noalias.scope.decl(metadata !4041)
  call void @llvm.experimental.noalias.scope.decl(metadata !4042)
  %i.bfx = load i64, ptr %i.bfo, align 8, !alias.scope !4043, !noalias !4034, !noundef !28 ; 3 uses
  %i.bfy = icmp eq i64 %i.bfx, 0
  br i1 %i.bfy, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit26.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4044)
  br i1 %i.bie, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i360, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bfz = load ptr, ptr %i.r, align 8, !alias.scope !4045, !noalias !4034, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i347 = load <16 x i8>, ptr %i.bfz, align 16, !noalias !4046
  %i.bga = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i347, splat (i8 -1)
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfz, i64 16
  %i.bgc = bitcast <16 x i1> %i.bga to i16
  br label %bb.kp

bb.kp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359, %bb.ko
  %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i348 = phi ptr [ %i.bfz, %bb.ko ], [ %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i355, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i349 = phi ptr [ %i.bgb, %bb.ko ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i354, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i350 = phi i16 [ %i.bgc, %bb.ko ], [ %i.bgl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i351 = phi i64 [ %i.bid, %bb.ko ], [ %i.bgo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359 ]
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i352 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i350, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i352, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i353

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367:              ; preds = %bb.kp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367
  %i.bgd = phi ptr [ %i.bgh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367 ], [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i349, %bb.kp ] ; 2 uses
  %i.bge = phi ptr [ %i.bgg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367 ], [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i348, %bb.kp ]
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i368 = load <16 x i8>, ptr %i.bgd, align 16, !noalias !4047
  %i.bgf = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i368, splat (i8 -1)
  %i.bgg = getelementptr inbounds i8, ptr %i.bge, i64 -512 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i369 = bitcast <16 x i1> %i.bgf to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i370 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i369, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i370, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i353

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i353: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367, %bb.kp
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i354 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i349, %bb.kp ], [ %i.bgh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367 ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i355 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i348, %bb.kp ], [ %i.bgg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i356 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i350, %bb.kp ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i369, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i367 ] ; 3 uses
  %i.bgi = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i356, -1
  %i.bgj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i356, i1 true)
  %i.bgk = zext nneg i16 %i.bgj to i64
  %i.bgl = and i16 %i.bgi, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i356
  %i.bgm = sub nsw i64 0, %i.bgk
  %i.bgn = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i355, i64 %i.bgm ; 2 uses
  %i.bgo = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i351, -1 ; 2 uses
  %i.bgp = getelementptr i8, ptr %i.bgn, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i357 = load i64, ptr %i.bgp, align 8, !alias.scope !4048, !noalias !4049 ; 2 uses
  %i.bgq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i357, 0
  br i1 %i.bgq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359, label %bb.kq

bb.kq:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i353
  %i.bgr = getelementptr i8, ptr %i.bgn, i64 -16
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i358 = load ptr, ptr %i.bgr, align 8, !noalias !4049, !nonnull !28, !noundef !28
  %i.bgs = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i357, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i.i358, i64 noundef %i.bgs, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !4050
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359: ; preds = %bb.kq, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i353
  %i.bgt = icmp eq i64 %i.bgo, 0
  br i1 %i.bgt, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i360, label %bb.kp

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i360: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i359, %bb.kn
  %i.bgu = shl i64 %i.bfx, 5                      ; 2 uses
  %i.bgv = add i64 %i.bgu, 32                     ; 2 uses
  %i.bgw = add i64 %i.bfx, 17
  %i.bgx = add i64 %i.bgw, %i.bgv                 ; 4 uses
  %i.bgy = icmp uge i64 %i.bgx, %i.bgv
  %i.bgz = icmp ult i64 %i.bgx, 9223372036854775793
  call void @llvm.assume(i1 %i.bgy)
  call void @llvm.assume(i1 %i.bgz)
  %i.bha = icmp eq i64 %i.bgx, 0
  br i1 %i.bha, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.kr:                                            ; preds = %.lr.ph110.i.i.i.i.i.i
  %i.bhb = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %bb.ks unwind label %.loopexit.i.i.i.i.i.i, !noalias !4025

bb.ks:                                            ; preds = %bb.kr
  br i1 %i.bhb, label %.loopexit66.i.i.i.i.i.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %.lr.ph110.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4034
  %i.bhc = getelementptr inbounds nuw [16 x i8], ptr %i.bcn, i64 %.sroa.011.0109.i.i.i.i.i.i ; 2 uses
  %i.bhd = load ptr, ptr %i.bhc, align 8, !alias.scope !4051, !noalias !4052, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  %i.bhf = load i64, ptr %i.bhe, align 8, !alias.scope !4051, !noalias !4052, !noundef !28
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhd, i64 24
  %i.bhh = load i64, ptr %i.bhg, align 8, !alias.scope !4053, !noalias !4054, !noundef !28
  %i.bhi = sub i64 %i.bhf, %i.bhh                 ; 3 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhd, i64 16
  %i.bhk = load i64, ptr %i.bhj, align 8, !alias.scope !4053, !noalias !4054, !noundef !28 ; 2 uses
  %i.bhl = icmp ult i64 %i.bhi, %i.bhk
  br i1 %i.bhl, label %bb.ku, label %.invoke.i.i.i.i.i.i317

bb.ku:                                            ; preds = %bb.kt
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8, !alias.scope !4053, !noalias !4054, !nonnull !28, !noundef !28
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.bhi
  %.val.i.i.i.i.i.i = load i32, ptr %i.bho, align 4, !noalias !4025, !noundef !28 ; 5 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i = lshr i32 %.val.i.i.i.i.i.i, 8
  %.sroa.5.0.extract.shift.i.i.i.i.i.i.i.i = lshr i32 %.val.i.i.i.i.i.i, 16
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i32 %.val.i.i.i.i.i.i, 24
  %i.bhp = and i32 %.val.i.i.i.i.i.i, 255
  %i.bhq = zext nneg i32 %i.bhp to i64
  %i.bhr = xor i64 %i.bhq, -3750763034362895579
  %i.bhs = mul i64 %i.bhr, 1099511628211
  %i.bht = and i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i, 255
  %i.bhu = zext nneg i32 %i.bht to i64
  %i.bhv = xor i64 %i.bhs, %i.bhu
  %i.bhw = mul i64 %i.bhv, 1099511628211
  %i.bhx = and i32 %.sroa.5.0.extract.shift.i.i.i.i.i.i.i.i, 255
  %i.bhy = zext nneg i32 %i.bhx to i64
  %i.bhz = xor i64 %i.bhw, %i.bhy
  %i.bia = mul i64 %i.bhz, 1099511628211
  %4 = zext nneg i32 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i64
  %i.bib = xor i64 %i.bia, %4
  %i.bic = mul i64 %i.bib, 1099511628211          ; 2 uses
  store i64 %i.bic, ptr %i.q, align 8, !noalias !4034
  call void @llvm.experimental.noalias.scope.decl(metadata !4055)
  %i.bid = load i64, ptr %i.bfq, align 8, !alias.scope !4055, !noalias !4056, !noundef !28 ; 2 uses
  %i.bie = icmp eq i64 %i.bid, 0                  ; 2 uses
  br i1 %i.bie, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %.val.i.i.i.i.i.i.i334 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i315, align 8, !alias.scope !4055, !noalias !4056, !noundef !28
  %.val5.i.i.i.i.i.i.i335 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i316, align 8, !alias.scope !4055, !noalias !4056, !noundef !28
  %i.bif = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i.i.i.i.i.i.i334, i64 %.val5.i.i.i.i.i.i.i335, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !4057 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4058)
  call void @llvm.experimental.noalias.scope.decl(metadata !4059)
  %i.big = lshr i64 %i.bif, 57
  %i.bih = trunc nuw nsw i64 %i.big to i8
  %i.bii = load i64, ptr %i.bfo, align 8, !alias.scope !4060, !noalias !4061, !noundef !28 ; 2 uses
  %i.bij = load ptr, ptr %i.r, align 8, !alias.scope !4060, !noalias !4061, !nonnull !28, !noundef !28 ; 2 uses
  %i.bik = insertelement <16 x i8> poison, i8 %i.bih, i64 0
  %i.bil = shufflevector <16 x i8> %i.bik, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ky, %bb.kv
  %.sroa.9.0.i.i.i.i.i.i.i.i.i336 = phi i64 [ 0, %bb.kv ], [ %i.bjc, %bb.ky ]
  %.pn.i.i.i.i.i.i.i.i337 = phi i64 [ %i.bif, %bb.kv ], [ %i.bjd, %bb.ky ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i338 = and i64 %.pn.i.i.i.i.i.i.i.i337, %i.bii ; 3 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i338
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i339 = load <16 x i8>, ptr %i.bim, align 1, !noalias !4062 ; 2 uses
  %i.bin = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i339, %i.bil
  %i.bio = bitcast <16 x i1> %i.bin to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i340 = icmp eq i16 %i.bio, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i340, label %._crit_edge.i.i.i.i.i.i.i.i345, label %.lr.ph.i.i.i.i.i.i.i.i341

.lr.ph.i.i.i.i.i.i.i.i341:                        ; preds = %bb.kw, %bb.kx
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i342 = phi i16 [ %i.bjb, %bb.kx ], [ %i.bio, %bb.kw ] ; 3 uses
  %i.bip = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i342, i1 true)
  %i.biq = zext nneg i16 %i.bip to i64
  %i.bir = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i338, %i.biq
  %i.bis = and i64 %i.bir, %i.bii
  %i.bit = sub nsw i64 0, %i.bis
  %i.biu = getelementptr inbounds [32 x i8], ptr %i.bij, i64 %i.bit ; 3 uses
  %i.biv = getelementptr inbounds i8, ptr %i.biu, i64 -32
  %.val2.i.i.i.i.i.i.i.i.i343 = load i64, ptr %i.biv, align 8, !noalias !4063, !noundef !28
  %i.biw = icmp eq i64 %i.bic, %.val2.i.i.i.i.i.i.i.i.i343
  br i1 %i.biw, label %bb.kz, label %bb.kx, !prof !29

._crit_edge.i.i.i.i.i.i.i.i345:                   ; preds = %bb.kx, %bb.kw
  %i.bix = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i339, splat (i8 -1)
  %i.biy = bitcast <16 x i1> %i.bix to i16
  %i.biz = icmp eq i16 %i.biy, 0
  br i1 %i.biz, label %bb.ky, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346, !prof !44

bb.kx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i341
  %i.bja = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i342, -1
  %i.bjb = and i16 %i.bja, %.sroa.06.0.i31.i.i.i.i.i.i.i.i342 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i344 = icmp eq i16 %i.bjb, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i344, label %._crit_edge.i.i.i.i.i.i.i.i345, label %.lr.ph.i.i.i.i.i.i.i.i341

bb.ky:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i345
  %i.bjc = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i336, 16 ; 2 uses
  %i.bjd = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i338, %i.bjc
  br label %bb.kw

bb.kz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i341
  %i.bje = getelementptr inbounds i8, ptr %i.biu, i64 -16
  %i.bjf = load ptr, ptr %i.bje, align 8, !noalias !4025, !nonnull !28, !noundef !28 ; 2 uses
  %i.bjg = getelementptr inbounds i8, ptr %i.biu, i64 -8
  %i.bjh = load i64, ptr %i.bjg, align 8, !noalias !4025, !noundef !28 ; 2 uses
  %.idx213 = shl nuw nsw i64 %i.bjh, 3
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjf, i64 %.idx213
  %.not.not.not.i.not.i.i.i.i.i.i202 = icmp eq i64 %i.bjh, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i202, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346, label %.lr.ph

bb.la:                                            ; preds = %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.bjk, %i.bji
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346, label %.lr.ph

.lr.ph:                                           ; preds = %bb.kz, %bb.la
  %i.bjj = phi ptr [ %i.bjk, %bb.la ], [ %i.bjf, %bb.kz ] ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 8 ; 2 uses
  %.val3.i.i.i.i.i.i.i371 = load i64, ptr %i.bjj, align 8, !noalias !4064, !noundef !28 ; 3 uses
  %i.bjl = icmp ult i64 %.val3.i.i.i.i.i.i.i371, %i.bcl
  br i1 %i.bjl, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i317

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !4065)
  %i.bjm = getelementptr inbounds nuw [16 x i8], ptr %i.bcj, i64 %.val3.i.i.i.i.i.i.i371 ; 2 uses
  %i.bjn = load ptr, ptr %i.bjm, align 8, !alias.scope !4065, !noalias !4066, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjm, i64 8
  %i.bjp = load i64, ptr %i.bjo, align 8, !alias.scope !4065, !noalias !4066, !noundef !28
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjn, i64 24
  %i.bjr = load i64, ptr %i.bjq, align 8, !alias.scope !4067, !noalias !4068, !noundef !28
  %i.bjs = sub i64 %i.bjp, %i.bjr                 ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjn, i64 16
  %i.bju = load i64, ptr %i.bjt, align 8, !alias.scope !4067, !noalias !4068, !noundef !28 ; 2 uses
  %i.bjv = icmp ult i64 %i.bjs, %i.bju
  br i1 %i.bjv, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i317

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  %i.bjx = load ptr, ptr %i.bjw, align 8, !alias.scope !4067, !noalias !4068, !nonnull !28, !noundef !28
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.bjs
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.bjy, align 4, !noalias !4064, !noundef !28
  %i.bjz = icmp eq i32 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.bjz, label %bb.lb, label %bb.la

bb.lb:                                            ; preds = %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4034
  br label %.loopexit66.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i346: ; preds = %._crit_edge.i.i.i.i.i.i.i.i345, %bb.la, %bb.kz, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4034
  %exitcond154.not.i.i.i.i.i.i = icmp eq i64 %i.bfu, %i.bcp
  br i1 %exitcond154.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit26.i.i.i.i.i.i, label %.lr.ph110.i.i.i.i.i.i

.loopexit66.i.i.i.i.i.i:                          ; preds = %bb.lh, %bb.ks, %bb.lb
  call void @llvm.experimental.noalias.scope.decl(metadata !4069)
  call void @llvm.experimental.noalias.scope.decl(metadata !4070)
  call void @llvm.experimental.noalias.scope.decl(metadata !4071)
  call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  call void @llvm.experimental.noalias.scope.decl(metadata !4073)
  %i.bka = load i64, ptr %i.bfo, align 8, !alias.scope !4074, !noalias !4034, !noundef !28 ; 3 uses
  %i.bkb = icmp eq i64 %i.bka, 0
  br i1 %i.bkb, label %.sink.split.i.i.i.i373, label %bb.lc

bb.lc:                                            ; preds = %.loopexit66.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  %i.bkc = load i64, ptr %i.bfq, align 8, !alias.scope !4076, !noalias !4034, !noundef !28 ; 2 uses
  %i.bkd = icmp eq i64 %i.bkc, 0
  br i1 %i.bkd, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i46.i.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bke = load ptr, ptr %i.r, align 8, !alias.scope !4076, !noalias !4034, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i33.i.i.i.i.i.i = load <16 x i8>, ptr %i.bke, align 16, !noalias !4077
  %i.bkf = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i33.i.i.i.i.i.i, splat (i8 -1)
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bke, i64 16
  %i.bkh = bitcast <16 x i1> %i.bkf to i16
  br label %bb.le

bb.le:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i, %bb.ld
  %.sroa.06.017.i.i.i.i.i.i34.i.i.i.i.i.i = phi ptr [ %i.bke, %bb.ld ], [ %.sroa.06.1.i.i.i.i.i.i41.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i35.i.i.i.i.i.i = phi ptr [ %i.bkg, %bb.ld ], [ %.sroa.6.1.i.i.i.i.i.i40.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i36.i.i.i.i.i.i = phi i16 [ %i.bkh, %bb.ld ], [ %i.bkq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i37.i.i.i.i.i.i = phi i64 [ %i.bkc, %bb.ld ], [ %i.bkt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i38.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i36.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i38.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i39.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i:               ; preds = %bb.le, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i
  %i.bki = phi ptr [ %i.bkm, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i35.i.i.i.i.i.i, %bb.le ] ; 2 uses
  %i.bkj = phi ptr [ %i.bkl, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.le ]
  %.val9.i.i.i.i.i.i.i48.i.i.i.i.i.i = load <16 x i8>, ptr %i.bki, align 16, !noalias !4078
  %i.bkk = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i48.i.i.i.i.i.i, splat (i8 -1)
  %i.bkl = getelementptr inbounds i8, ptr %i.bkj, i64 -512 ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bki, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i49.i.i.i.i.i.i = bitcast <16 x i1> %i.bkk to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i50.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i49.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i50.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i39.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i39.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i, %bb.le
  %.sroa.6.1.i.i.i.i.i.i40.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i35.i.i.i.i.i.i, %bb.le ], [ %i.bkm, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i41.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.le ], [ %i.bkl, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i36.i.i.i.i.i.i, %bb.le ], [ %.cast.i.i.i.i.i.i.i49.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i47.i.i.i.i.i.i ] ; 3 uses
  %i.bkn = add i16 %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i, -1
  %i.bko = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i, i1 true)
  %i.bkp = zext nneg i16 %i.bko to i64
  %i.bkq = and i16 %i.bkn, %.lcssa.i.i.i.i.i.i.i42.i.i.i.i.i.i
  %i.bkr = sub nsw i64 0, %i.bkp
  %i.bks = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i41.i.i.i.i.i.i, i64 %i.bkr ; 2 uses
  %i.bkt = add i64 %.sroa.108.014.i.i.i.i.i.i37.i.i.i.i.i.i, -1 ; 2 uses
  %i.bku = getelementptr i8, ptr %i.bks, i64 -24
  %.val.i.i.i.i.i.i43.i.i.i.i.i.i = load i64, ptr %i.bku, align 8, !alias.scope !4079, !noalias !4080 ; 2 uses
  %i.bkv = icmp eq i64 %.val.i.i.i.i.i.i43.i.i.i.i.i.i, 0
  br i1 %i.bkv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i, label %bb.lf

bb.lf:                                            ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i39.i.i.i.i.i.i
  %i.bkw = getelementptr i8, ptr %i.bks, i64 -16
  %.val5.i.i.i.i.i.i44.i.i.i.i.i.i = load ptr, ptr %i.bkw, align 8, !noalias !4080, !nonnull !28, !noundef !28
  %i.bkx = shl nuw i64 %.val.i.i.i.i.i.i43.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i44.i.i.i.i.i.i, i64 noundef %i.bkx, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !4081
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i: ; preds = %bb.lf, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i39.i.i.i.i.i.i
  %i.bky = icmp eq i64 %i.bkt, 0
  br i1 %i.bky, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i46.i.i.i.i.i.i, label %bb.le

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i46.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i45.i.i.i.i.i.i, %bb.lc
  %i.bkz = shl i64 %i.bka, 5                      ; 2 uses
  %i.bla = add i64 %i.bkz, 32                     ; 2 uses
  %i.blb = add i64 %i.bka, 17
  %i.blc = add i64 %i.blb, %i.bla                 ; 4 uses
  %i.bld = icmp uge i64 %i.blc, %i.bla
  %i.ble = icmp ult i64 %i.blc, 9223372036854775793
  call void @llvm.assume(i1 %i.bld)
  call void @llvm.assume(i1 %i.ble)
  %i.blf = icmp eq i64 %i.blc, 0
  br i1 %i.blf, label %.sink.split.i.i.i.i373, label %.critedge.i.i.i.i.i372

bb.lg:                                            ; preds = %bb.km
  %i.blg = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %bb.lh unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i375, !noalias !4025

bb.lh:                                            ; preds = %bb.lg
  br i1 %i.blg, label %.loopexit66.i.i.i.i.i.i, label %bb.li

.invoke.i.i.i.i.i.i317:                           ; preds = %bb.li, %bb.kt, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i, %.lr.ph
  %i.blh = phi i64 [ %i.bhi, %bb.kt ], [ %i.bjs, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i.i.i371, %.lr.ph ], [ %i.blq, %bb.li ]
  %i.bli = phi i64 [ %i.bhk, %bb.kt ], [ %i.bju, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i ], [ %i.bcl, %.lr.ph ], [ %i.bls, %bb.li ]
  %i.blj = phi ptr [ @532, %bb.kt ], [ @532, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i.i.i.i.i.i.i ], [ @568, %.lr.ph ], [ @532, %bb.li ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.blh, i64 noundef %i.bli, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.blj) #75
          to label %.cont.i.i.i.i.i.i321 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i318, !noalias !4025

.cont.i.i.i.i.i.i321:                             ; preds = %.invoke.i.i.i.i.i.i317
  unreachable

bb.li:                                            ; preds = %bb.lh, %bb.km
  %i.blk = getelementptr inbounds nuw [16 x i8], ptr %i.bcj, i64 %.sroa.0.032107.i.i.i.i.i.i ; 2 uses
  %i.bll = load ptr, ptr %i.blk, align 8, !alias.scope !4082, !noalias !4083, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blk, i64 8
  %i.bln = load i64, ptr %i.blm, align 8, !alias.scope !4082, !noalias !4083, !noundef !28
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bll, i64 24
  %i.blp = load i64, ptr %i.blo, align 8, !alias.scope !4084, !noalias !4085, !noundef !28
  %i.blq = sub i64 %i.bln, %i.blp                 ; 3 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bll, i64 16
  %i.bls = load i64, ptr %i.blr, align 8, !alias.scope !4084, !noalias !4085, !noundef !28 ; 2 uses
  %i.blt = icmp ult i64 %i.blq, %i.bls
  br i1 %i.blt, label %bb.lj, label %.invoke.i.i.i.i.i.i317

bb.lj:                                            ; preds = %bb.li
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bll, i64 8
  %i.blv = load ptr, ptr %i.blu, align 8, !alias.scope !4084, !noalias !4085, !nonnull !28, !noundef !28
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.blv, i64 %i.blq
  %.val18.i.i.i.i.i.i = load i32, ptr %i.blw, align 4, !noalias !4025, !noundef !28 ; 4 uses
  %.sroa.4.0.extract.shift.i.i54.i.i.i.i.i.i = lshr i32 %.val18.i.i.i.i.i.i, 8
  %.sroa.5.0.extract.shift.i.i55.i.i.i.i.i.i = lshr i32 %.val18.i.i.i.i.i.i, 16
  %.sroa.6.0.extract.shift.i.i56.i.i.i.i.i.i = lshr i32 %.val18.i.i.i.i.i.i, 24
  %i.blx = and i32 %.val18.i.i.i.i.i.i, 255
  %i.bly = zext nneg i32 %i.blx to i64
  %i.blz = xor i64 %i.bly, -3750763034362895579
  %i.bma = mul i64 %i.blz, 1099511628211
  %i.bmb = and i32 %.sroa.4.0.extract.shift.i.i54.i.i.i.i.i.i, 255
  %i.bmc = zext nneg i32 %i.bmb to i64
  %i.bmd = xor i64 %i.bma, %i.bmc
  %i.bme = mul i64 %i.bmd, 1099511628211
  %i.bmf = and i32 %.sroa.5.0.extract.shift.i.i55.i.i.i.i.i.i, 255
  %i.bmg = zext nneg i32 %i.bmf to i64
  %i.bmh = xor i64 %i.bme, %i.bmg
  %i.bmi = mul i64 %i.bmh, 1099511628211
  %5 = zext nneg i32 %.sroa.6.0.extract.shift.i.i56.i.i.i.i.i.i to i64
  %i.bmj = xor i64 %i.bmi, %5
  %i.bmk = mul i64 %i.bmj, 1099511628211          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4086)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4034
  store i64 %i.bmk, ptr %i.p, align 8, !noalias !4087
  %.val.i59.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i315, align 8, !alias.scope !4086, !noalias !4088, !noundef !28
  %.val3.i60.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i316, align 8, !alias.scope !4086, !noalias !4088, !noundef !28
  %i.bml = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i59.i.i.i.i.i.i, i64 %.val3.i60.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !noalias !4089 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  %i.bmm = lshr i64 %i.bml, 57
  %i.bmn = trunc nuw nsw i64 %i.bmm to i8         ; 3 uses
  %i.bmo = load i64, ptr %i.bfo, align 8, !alias.scope !4092, !noalias !4093, !noundef !28 ; 3 uses
  %i.bmp = load ptr, ptr %i.r, align 8, !alias.scope !4092, !noalias !4093, !nonnull !28, !noundef !28 ; 3 uses
  %i.bmq = insertelement <16 x i8> poison, i8 %i.bmn, i64 0
  %i.bmr = shufflevector <16 x i8> %i.bmq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lm, %bb.lj
  %.sroa.9.0.i.i.i61.i.i.i.i.i.i = phi i64 [ 0, %bb.lj ], [ %i.bni, %bb.lm ]
  %.pn.i.i62.i.i.i.i.i.i = phi i64 [ %i.bml, %bb.lj ], [ %i.bnj, %bb.lm ]
  %.sroa.01.0.i.i.i63.i.i.i.i.i.i = and i64 %.pn.i.i62.i.i.i.i.i.i, %i.bmo ; 3 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %.sroa.01.0.i.i.i63.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i64.i.i.i.i.i.i = load <16 x i8>, ptr %i.bms, align 1, !noalias !4094 ; 2 uses
  %i.bmt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i64.i.i.i.i.i.i, %i.bmr
  %i.bmu = bitcast <16 x i1> %i.bmt to i16        ; 2 uses
  %.not.i.not30.i.i65.i.i.i.i.i.i = icmp eq i16 %i.bmu, 0
  br i1 %.not.i.not30.i.i65.i.i.i.i.i.i, label %._crit_edge.i.i70.i.i.i.i.i.i, label %.lr.ph.i.i66.i.i.i.i.i.i

.lr.ph.i.i66.i.i.i.i.i.i:                         ; preds = %bb.lk, %bb.ll
  %.sroa.06.0.i31.i.i67.i.i.i.i.i.i = phi i16 [ %i.bnh, %bb.ll ], [ %i.bmu, %bb.lk ] ; 3 uses
  %i.bmv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i67.i.i.i.i.i.i, i1 true)
  %i.bmw = zext nneg i16 %i.bmv to i64
  %i.bmx = add i64 %.sroa.01.0.i.i.i63.i.i.i.i.i.i, %i.bmw
  %i.bmy = and i64 %i.bmx, %i.bmo
  %i.bmz = sub nsw i64 0, %i.bmy
  %i.bna = getelementptr inbounds [32 x i8], ptr %i.bmp, i64 %i.bmz ; 2 uses
  %i.bnb = getelementptr inbounds i8, ptr %i.bna, i64 -32
  %.val2.i.i.i68.i.i.i.i.i.i = load i64, ptr %i.bnb, align 8, !noalias !4095, !noundef !28
  %i.bnc = icmp eq i64 %.val2.i.i.i68.i.i.i.i.i.i, %i.bmk
  br i1 %i.bnc, label %bb.lr, label %bb.ll, !prof !29

._crit_edge.i.i70.i.i.i.i.i.i:                    ; preds = %bb.ll, %bb.lk
  %i.bnd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i64.i.i.i.i.i.i, splat (i8 -1)
  %i.bne = bitcast <16 x i1> %i.bnd to i16
  %i.bnf = icmp eq i16 %i.bne, 0
  br i1 %i.bnf, label %bb.lm, label %bb.ln, !prof !44

bb.ll:                                            ; preds = %.lr.ph.i.i66.i.i.i.i.i.i
  %i.bng = add i16 %.sroa.06.0.i31.i.i67.i.i.i.i.i.i, -1
  %i.bnh = and i16 %i.bng, %.sroa.06.0.i31.i.i67.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i69.i.i.i.i.i.i = icmp eq i16 %i.bnh, 0
  br i1 %.not.i.not.i.i69.i.i.i.i.i.i, label %._crit_edge.i.i70.i.i.i.i.i.i, label %.lr.ph.i.i66.i.i.i.i.i.i

bb.lm:                                            ; preds = %._crit_edge.i.i70.i.i.i.i.i.i
  %i.bni = add i64 %.sroa.9.0.i.i.i61.i.i.i.i.i.i, 16 ; 2 uses
  %i.bnj = add i64 %.sroa.01.0.i.i.i63.i.i.i.i.i.i, %i.bni
  br label %bb.lk

bb.ln:                                            ; preds = %._crit_edge.i.i70.i.i.i.i.i.i
  %i.bnk = load i64, ptr %i.bfp, align 8, !alias.scope !4096, !noalias !4097, !noundef !28
  %i.bnl = icmp eq i64 %i.bnk, 0
  br i1 %i.bnl, label %bb.lo, label %bb.lp, !prof !44

bb.lo:                                            ; preds = %bb.ln
  %i.bnm = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i315, i1 noundef zeroext true) #74
          to label %.noexc71.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i375, !noalias !4025 ; 0 uses

.noexc71.i.i.i.i.i.i:                             ; preds = %bb.lo
  %.val.i.i73.pre.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !4098, !noalias !4099
  %.val3.i.i74.pre.i.i.i.i.i.i = load i64, ptr %i.bfo, align 8, !alias.scope !4098, !noalias !4099
  br label %bb.lp

bb.lp:                                            ; preds = %.noexc71.i.i.i.i.i.i, %bb.ln
  %.val3.i.i74.i.i.i.i.i.i = phi i64 [ %.val3.i.i74.pre.i.i.i.i.i.i, %.noexc71.i.i.i.i.i.i ], [ %i.bmo, %bb.ln ] ; 4 uses
  %.val.i.i73.i.i.i.i.i.i = phi ptr [ %.val.i.i73.pre.i.i.i.i.i.i, %.noexc71.i.i.i.i.i.i ], [ %i.bmp, %bb.ln ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4034
  call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  %.sroa.0.07.i.i.i.i.i.i.i.i.i322 = and i64 %.val3.i.i74.i.i.i.i.i.i, %i.bml ; 3 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %.val.i.i73.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i322
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i323 = load <16 x i8>, ptr %i.bnn, align 1, !noalias !4100
  %i.bno = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i323, zeroinitializer
  %i.bnp = bitcast <16 x i1> %i.bno to i16        ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i324 = icmp eq i16 %i.bnp, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i324, label %.lr.ph.i.i.i.i.i.i.i.i.i378, label %._crit_edge.i.i.i.i.i.i.i.i.i325, !prof !65

._crit_edge.i.i.i.i.i.i.i.i.i325:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i378, %bb.lp
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i326 = phi i64 [ %.sroa.0.07.i.i.i.i.i.i.i.i.i322, %bb.lp ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i380, %.lr.ph.i.i.i.i.i.i.i.i.i378 ]
  %.lcssa.i.i.i.i.i.i.i.i.i327 = phi i16 [ %i.bnp, %bb.lp ], [ %i.bog, %.lr.ph.i.i.i.i.i.i.i.i.i378 ]
  %i.bnq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i327, i1 true)
  %i.bnr = zext nneg i16 %i.bnq to i64
  %i.bns = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i326, %i.bnr
  %i.bnt = and i64 %i.bns, %.val3.i.i74.i.i.i.i.i.i ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %.val.i.i73.i.i.i.i.i.i, i64 %i.bnt
  %i.bnv = load i8, ptr %i.bnu, align 1, !noalias !4101, !noundef !28 ; 2 uses
  %i.bnw = icmp sgt i8 %i.bnv, -1
  br i1 %i.bnw, label %bb.lq, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i328, !prof !44

bb.lq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i325
  %.val2.i.i.i.i.i.i.i.i.i.i376 = load <16 x i8>, ptr %.val.i.i73.i.i.i.i.i.i, align 16, !noalias !4101
  %i.bnx = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i376, zeroinitializer
  %i.bny = bitcast <16 x i1> %i.bnx to i16        ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.i.i377 = icmp ne i16 %i.bny, 0
  %i.bnz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bny, i1 true)
  %i.boa = zext nneg i16 %i.bnz to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i.i.i.i377)
  %.phi.trans.insert.i.i76.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i73.i.i.i.i.i.i, i64 %i.boa
  %.pre.i.i77.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i76.i.i.i.i.i.i, align 1, !noalias !4101
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i328

.lr.ph.i.i.i.i.i.i.i.i.i378:                      ; preds = %bb.lp, %.lr.ph.i.i.i.i.i.i.i.i.i378
  %.sroa.0.010.i.i.i.i.i.i.i.i.i379 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i380, %.lr.ph.i.i.i.i.i.i.i.i.i378 ], [ %.sroa.0.07.i.i.i.i.i.i.i.i.i322, %bb.lp ]
  %i.bob = phi i64 [ %i.boc, %.lr.ph.i.i.i.i.i.i.i.i.i378 ], [ 0, %bb.lp ]
  %i.boc = add i64 %i.bob, 16                     ; 2 uses
  %i.bod = add i64 %i.boc, %.sroa.0.010.i.i.i.i.i.i.i.i.i379
  %.sroa.0.0.i.i.i.i.i.i.i.i.i380 = and i64 %i.bod, %.val3.i.i74.i.i.i.i.i.i ; 3 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %.val.i.i73.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i380
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i.i.i381 = load <16 x i8>, ptr %i.boe, align 1, !noalias !4100
  %i.bof = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i.i.i381, zeroinitializer
  %i.bog = bitcast <16 x i1> %i.bof to i16        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i382 = icmp eq i16 %i.bog, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i382, label %.lr.ph.i.i.i.i.i.i.i.i.i378, label %._crit_edge.i.i.i.i.i.i.i.i.i325, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i328: ; preds = %bb.lq, %._crit_edge.i.i.i.i.i.i.i.i.i325
  %i.boh = phi i8 [ %.pre.i.i77.i.i.i.i.i.i, %bb.lq ], [ %i.bnv, %._crit_edge.i.i.i.i.i.i.i.i.i325 ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i329 = phi i64 [ %i.boa, %bb.lq ], [ %i.bnt, %._crit_edge.i.i.i.i.i.i.i.i.i325 ] ; 3 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %.val.i.i73.i.i.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i329
  %i.boj = add i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i329, -16
  %i.bok = and i64 %i.boj, %.val3.i.i74.i.i.i.i.i.i
  store i8 %i.bmn, ptr %i.boi, align 1, !noalias !4101
  %i.bol = getelementptr i8, ptr %.val.i.i73.i.i.i.i.i.i, i64 %i.bok
  %i.bom = getelementptr i8, ptr %i.bol, i64 16
  store i8 %i.bmn, ptr %i.bom, align 1, !noalias !4101
  %i.bon = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i329
  %i.boo = getelementptr inbounds [32 x i8], ptr %.val.i.i73.i.i.i.i.i.i, i64 %i.bon ; 5 uses
  %i.bop = and i8 %i.boh, 1
  %i.boq = zext nneg i8 %i.bop to i64
  %i.bor = getelementptr inbounds i8, ptr %i.boo, i64 -32
  store i64 %i.bmk, ptr %i.bor, align 8, !noalias !4102
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i330 = getelementptr inbounds i8, ptr %i.boo, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i330, align 8, !noalias !4102
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i331 = getelementptr inbounds i8, ptr %i.boo, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i331, align 8, !noalias !4102
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i332 = getelementptr inbounds i8, ptr %i.boo, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i332, align 8, !noalias !4102
  %i.bos = load <2 x i64>, ptr %i.bfp, align 8, !alias.scope !4098, !noalias !4099
  %i.bot = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.boq, i64 0
  %i.bou = sub <2 x i64> %i.bos, %i.bot
  store <2 x i64> %i.bou, ptr %i.bfp, align 8, !alias.scope !4098, !noalias !4099
  br label %bb.ls

bb.lr:                                            ; preds = %.lr.ph.i.i66.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4034
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i328
  %.pn.i.i.i.i.i.i.i333 = phi ptr [ %i.boo, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i328 ], [ %i.bna, %bb.lr ] ; 3 uses
  %.sroa.0.0.i75.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i333, i64 -24 ; 2 uses
  %i.bov = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i333, i64 -8 ; 2 uses
  %i.bow = load i64, ptr %i.bov, align 8, !alias.scope !4103, !noalias !4025, !noundef !28 ; 3 uses
  %i.box = load i64, ptr %.sroa.0.0.i75.i.i.i.i.i.i, align 8, !range !43, !alias.scope !4103, !noalias !4025, !noundef !28
  %i.boy = icmp eq i64 %i.bow, %i.box
  br i1 %i.boy, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i75.i.i.i.i.i.i) #74
          to label %bb.lu unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i375, !noalias !4025

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.boz = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i333, i64 -16
  %i.bpa = load ptr, ptr %i.boz, align 8, !alias.scope !4103, !noalias !4025, !nonnull !28, !noundef !28
  %i.bpb = getelementptr inbounds nuw [8 x i8], ptr %i.bpa, i64 %i.bow
  store i64 %.sroa.0.032107.i.i.i.i.i.i, ptr %i.bpb, align 8, !noalias !4025
  %i.bpc = add i64 %i.bow, 1
  store i64 %i.bpc, ptr %i.bov, align 8, !alias.scope !4103, !noalias !4025
  %exitcond151.not.i.i.i.i.i.i = icmp eq i64 %i.bfr, %i.bcl
  br i1 %exitcond151.not.i.i.i.i.i.i, label %.lr.ph110.i.i.i.i.i.i, label %bb.km

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i360
  %i.bpd = load ptr, ptr %i.r, align 8, !noalias !4034, !nonnull !28, !noundef !28
  %i.bpe = sub nuw nsw i64 -32, %i.bgu
  %i.bpf = getelementptr inbounds i8, ptr %i.bpd, i64 %i.bpe
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bpf, i64 noundef %i.bgx, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !4025
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i360, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit26.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4034
  invoke fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %.noexc39.i.i.i361 unwind label %bb.mh, !noalias !4013

.noexc39.i.i.i361:                                ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB15_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i362 = load i64, ptr %i.s, align 8, !alias.scope !4104, !noalias !4105
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i363 = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.bpg = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i362 to i1
  br i1 %i.bpg, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %.noexc39.i.i.i361
  %.sroa.6.0.copyload.i.i.i.i.i.i366 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i363, align 8, !alias.scope !4104, !noalias !4105
  %i.bph = add i64 %.sroa.6.0.copyload.i.i.i.i.i.i366, %i.bcl
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1T_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2g_B2g_INtNtB4_7compact7CompactB2g_B2g_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_RINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB6_16IdentifyDistinctjE3newINtB6_12OffsetLookupmEB1i_ECskXtk6F4WjxZ_4just:bb.a
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit187.a
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit187.a ], [ %lpad.loopexit189, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp190, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !4360 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !4360, !nonnull !28, !noundef !28
  %i.o = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !4360
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i
  %.pre-phi270 = phi i64 [ %i.l, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.k, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi, 1
  store i64 %i.p, ptr %i.f, align 8, !noalias !4358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  store i64 %.pre-phi, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store i64 %.pre-phi270, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  %i.u = icmp ult i64 %2, %3
  br i1 %i.u, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !4361, !noalias !4362, !noundef !28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !4361, !noalias !4362, !noundef !28 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.ao, %bb.c
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.0.3, %bb.ao ]
  %i.ad = icmp ult i64 %5, %6
  br i1 %i.ad, label %.lr.ph232, label %._crit_edge

.lr.ph232:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !4363, !noalias !4364, !noundef !28 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !4363, !noalias !4364, !noundef !28 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.am, align 8
  %i.aq = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !nonnull !28
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %bb.ao
  %.sroa.0.0229 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.3, %bb.ao ] ; 4 uses
  %.sroa.021.0228 = phi i64 [ %2, %.lr.ph ], [ %i.as, %bb.ao ] ; 3 uses
  %i.as = add i64 %.sroa.021.0228, 1              ; 2 uses
  %i.at = sub i64 %.sroa.021.0228, %i.w           ; 3 uses
  %i.au = icmp ult i64 %i.at, %i.y
  br i1 %i.au, label %bb.aa, label %.split.us.i.invoke

._crit_edge:                                      ; preds = %bb.z, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %5, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !4365)
  call void @llvm.experimental.noalias.scope.decl(metadata !4366)
  call void @llvm.experimental.noalias.scope.decl(metadata !4367)
  call void @llvm.experimental.noalias.scope.decl(metadata !4368)
  call void @llvm.experimental.noalias.scope.decl(metadata !4369)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !4370, !noundef !28 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !4371)
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !4372, !noundef !28 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.e, align 8, !alias.scope !4372, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bc, align 16, !noalias !4373
  %i.bd = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bf = bitcast <16 x i1> %i.bd to i16
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.f
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.f ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.be, %bb.f ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.bf, %bb.f ], [ %i.bo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.ba, %bb.f ], [ %i.br, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.bg = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.bh = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.g ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bg, align 16, !noalias !4374
  %i.bi = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -512 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bi to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.g
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.g ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.g ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bl = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = and i16 %i.bl, %.lcssa.i.i.i.i.i.i.i
  %i.bp = sub nsw i64 0, %i.bn
  %i.bq = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bp ; 2 uses
  %i.br = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !4372 ; 2 uses
  %i.bt = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bu = getelementptr i8, ptr %i.bq, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !noalias !4372, !nonnull !28, !noundef !28
  %i.bv = mul nuw i64 %.val.i.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !4372
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.h, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1C_16IdentifyDistinctpE3new14RepresentativejEEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.g

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1j_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.e
  %i.bx = shl i64 %i.ax, 5                        ; 2 uses
  %i.by = add i64 %i.bx, 32                       ; 2 uses
  %i.bz = add i64 %i.ax, 17
  %i.ca = add i64 %i.bz, %i.by                    ; 4 uses
  %i.cb = icmp uge i64 %i.ca, %i.by
  %i.cc = icmp ult i64 %i.ca, 9223372036854775793
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !4370, !nonnull !28, !noundef !28
  %i.cf = sub nuw nsw i64 -32, %i.bx
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !4370
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB2d_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit: ; preds = %._crit_edge, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1R_16IdentifyDistinctpE3new14RepresentativejEEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.j:                                             ; preds = %.lr.ph232, %bb.z
  %.sroa.0.1231 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph232 ], [ %.sroa.0.2, %bb.z ] ; 4 uses
  %.sroa.024.0230 = phi i64 [ %5, %.lr.ph232 ], [ %i.ch, %bb.z ] ; 3 uses
  %i.ch = add i64 %.sroa.024.0230, 1              ; 2 uses
  %i.ci = sub i64 %.sroa.024.0230, %i.af          ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.ah
  br i1 %i.cj, label %bb.k, label %.split.us.i.invoke

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ci ; 3 uses
  %.val34 = load i32, ptr %i.ck, align 4, !noundef !28 ; 4 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.val34, 8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.val34, 16
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.val34, 24
  %i.cl = and i32 %.val34, 255
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = xor i64 %i.cm, -3750763034362895579
  %i.co = mul i64 %i.cn, 1099511628211
  %i.cp = and i32 %.sroa.4.0.extract.shift.i.i, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = xor i64 %i.co, %i.cq
  %i.cs = mul i64 %i.cr, 1099511628211
  %i.ct = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = xor i64 %i.cs, %i.cu
  %i.cw = mul i64 %i.cv, 1099511628211
  %7 = zext nneg i32 %.sroa.6.0.extract.shift.i.i to i64
  %i.cx = xor i64 %i.cw, %7
  %i.cy = mul i64 %i.cx, 1099511628211            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.cy, ptr %i.b, align 8, !noalias !4376
  %.val.i35 = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !4375, !noalias !4377, !noundef !28
  %.val3.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4375, !noalias !4377, !noundef !28
  %i.cz = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i35, i64 %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !4376 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  call void @llvm.experimental.noalias.scope.decl(metadata !4379)
  %i.da = lshr i64 %i.cz, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 3 uses
  %i.dc = load i64, ptr %i.ak, align 8, !alias.scope !4380, !noalias !4381, !noundef !28 ; 3 uses
  %i.dd = load ptr, ptr %i.e, align 8, !alias.scope !4380, !noalias !4381, !nonnull !28, !noundef !28 ; 3 uses
  %i.de = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.dw, %bb.n ]
  %.pn.i.i = phi i64 [ %i.cz, %bb.k ], [ %i.dx, %bb.n ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.dc     ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dg, align 1, !noalias !4382 ; 2 uses
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.df
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.di, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.sroa.06.0.i31.i.i = phi i16 [ %i.dv, %bb.m ], [ %i.di, %bb.l ] ; 3 uses
  %i.dj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = add i64 %.sroa.01.0.i.i.i, %i.dk
  %i.dm = and i64 %i.dl, %i.dc
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [32 x i8], ptr %i.dd, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -32
  %.val2.i.i.i = load i64, ptr %i.dp, align 8, !noalias !4383, !noundef !28
  %i.dq = icmp eq i64 %.val2.i.i.i, %i.cy
  br i1 %i.dq, label %bb.s, label %bb.m, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %bb.o, !prof !44

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.du = add i16 %.sroa.06.0.i31.i.i, -1
  %i.dv = and i16 %i.du, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dv, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dw = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dx = add i64 %.sroa.01.0.i.i.i, %i.dw
  br label %bb.l

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.dy = load i64, ptr %i.al, align 8, !alias.scope !4384, !noalias !4385, !noundef !28
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.p, label %bb.q, !prof !44

bb.p:                                             ; preds = %bb.o
  %i.ea = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativejEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc36 unwind label %.loopexit187.a ; 0 uses

.noexc36:                                         ; preds = %bb.p
  %.val.i.i.pre = load ptr, ptr %i.e, align 8, !alias.scope !4386, !noalias !4387
  %.val3.i.i.pre = load i64, ptr %i.ak, align 8, !alias.scope !4386, !noalias !4387
  br label %bb.q

bb.q:                                             ; preds = %.noexc36, %bb.o
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc36 ], [ %i.dc, %bb.o ] ; 4 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %.noexc36 ], [ %i.dd, %bb.o ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4386)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.cz   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !4388
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !65

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.q
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.q ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.ed, %bb.q ], [ %i.eu, %.lr.ph.i.i.i ]
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ef
  %i.eh = and i64 %i.eg, %.val3.i.i               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !4389, !noundef !28 ; 2 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.r, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !4389
  %i.el = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.em, 0
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i37 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eo
  %.pre.i.i38 = load i8, ptr %.phi.trans.insert.i.i37, align 1, !noalias !4389
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.q ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i.i.i ], [ 0, %bb.q ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.er, %.val3.i.i    ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.es, align 1, !noalias !4388
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.r, %._crit_edge.i.i.i
  %i.ev = phi i8 [ %.pre.i.i38, %bb.r ], [ %i.ej, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.eo, %bb.r ], [ %i.eh, %._crit_edge.i.i.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.ex = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.ey = and i64 %i.ex, %.val3.i.i
  store i8 %i.db, ptr %i.ew, align 1, !noalias !4389
  %i.ez = getelementptr i8, ptr %.val.i.i, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  store i8 %i.db, ptr %i.fa, align 1, !noalias !4389
  %i.fb = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.fc = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.fb ; 5 uses
  %i.fd = and i8 %i.ev, 1
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 -32
  store i64 %i.cy, ptr %i.ff, align 8, !noalias !4390
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fc, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !4390
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fc, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !4390
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fc, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4390
  %i.fg = load <2 x i64>, ptr %i.al, align 8, !alias.scope !4386, !noalias !4387
  %i.fh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.fe, i64 0
  %i.fi = sub <2 x i64> %i.fg, %i.fh
  store <2 x i64> %i.fi, ptr %i.al, align 8, !alias.scope !4386, !noalias !4387
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.fc, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.do, %bb.s ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !28 ; 5 uses
  %.idx = mul nuw nsw i64 %i.fm, 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx
  %i.fo = icmp eq i64 %i.fm, 0
  br i1 %i.fo, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %i.fp = phi ptr [ %i.fq, %bb.u ], [ %i.fk, %bb.t ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 2 uses
  %i.fr = load i64, ptr %i.fp, align 8, !range !41, !noalias !4391, !noundef !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = trunc nuw i64 %i.fr to i1
  %i.fu = load i64, ptr %i.fs, align 8, !noalias !4391, !noundef !28 ; 2 uses
  br i1 %i.ft, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i: ; preds = %.lr.ph.i
  %i.fv = sub i64 %i.fu, %i.af                    ; 3 uses
  %i.fw = icmp ult i64 %i.fv, %i.ah
  br i1 %i.fw, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit2.i.i, label %.split.us.i.invoke

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit2.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fv
  %.val5.i.i = load i32, ptr %i.ck, align 4, !noalias !4391, !noundef !28
  %.val6.i.i = load i32, ptr %i.fx, align 4, !noalias !4391, !noundef !28
  %i.fy = icmp eq i32 %.val5.i.i, %.val6.i.i
  br i1 %i.fy, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_Es_0ECskXtk6F4WjxZ_4just.exit, label %bb.u

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i: ; preds = %.lr.ph.i
  %i.fz = sub i64 %i.fu, %i.ap                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.aq
  br i1 %i.ga, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i, label %.split.us.i.invoke

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.fz
  %.val.i.i39 = load i32, ptr %i.ck, align 4, !noalias !4391, !noundef !28
  %.val4.i.i = load i32, ptr %i.gb, align 4, !noalias !4391, !noundef !28
  %i.gc = icmp eq i32 %.val.i.i39, %.val4.i.i
  br i1 %i.gc, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_Es_0ECskXtk6F4WjxZ_4just.exit, label %bb.u

bb.u:                                             ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit2.i.i
  %i.gd = icmp eq ptr %i.fq, %i.fn
  br i1 %i.gd, label %.loopexit, label %.lr.ph.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_Es_0ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit2.i.i, %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_Es_0CskXtk6F4WjxZ_4just.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noundef !28
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_Es_0ECskXtk6F4WjxZ_4just.exit
  %.sroa.013.0 = phi i64 [ %i.gf, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_Es_0ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.1231, %bb.y ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1231, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_Es_0ECskXtk6F4WjxZ_4just.exit ], [ %i.gj, %bb.y ]
  %i.gg = load i64, ptr %i.t, align 8, !alias.scope !4392, !noundef !28 ; 3 uses
  %i.gh = load i64, ptr %i.c, align 8, !range !43, !alias.scope !4392, !noundef !28
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #74
          to label %bb.z unwind label %.loopexit187.a

.loopexit:                                        ; preds = %bb.u, %bb.t
  %i.gj = add i64 %.sroa.0.1231, 1
  %i.gk = load i64, ptr %.sroa.0.0.i, align 8, !range !43, !alias.scope !4393, !noalias !4394, !noundef !28
  %i.gl = icmp eq i64 %i.fm, %i.gk
  br i1 %i.gl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBV_16IdentifyDistinctpE3new14RepresentativejEE8grow_oneBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i) #74
          to label %._crit_edge266 unwind label %.loopexit187.a

._crit_edge266:                                   ; preds = %bb.x
  %.pre267 = load ptr, ptr %i.fj, align 8, !alias.scope !4393, !noalias !4394
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge266, %.loopexit
  %i.gm = phi ptr [ %.pre267, %._crit_edge266 ], [ %i.fk, %.loopexit ]
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %i.fm ; 3 uses
  store i64 1, ptr %i.gn, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %.sroa.024.0230, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.sroa.0.1231, ptr %.sroa.5127.0..sroa_idx, align 8
  %i.go = add i64 %i.fm, 1
  store i64 %i.go, ptr %i.fl, align 8, !alias.scope !4393, !noalias !4394
  br label %bb.v

bb.z:                                             ; preds = %bb.v, %bb.w
  %i.gp = load ptr, ptr %i.s, align 8, !alias.scope !4392, !nonnull !28, !noundef !28
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gg
  store i64 %.sroa.013.0, ptr %i.gq, align 8
  %i.gr = add i64 %i.gg, 1
  store i64 %i.gr, ptr %i.t, align 8, !alias.scope !4392
  %exitcond260.not = icmp eq i64 %i.ch, %6
  br i1 %exitcond260.not, label %._crit_edge, label %bb.j

bb.aa:                                            ; preds = %bb.d
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.at ; 2 uses
  %.val = load i32, ptr %i.gs, align 4, !noundef !28 ; 4 uses
  %.sroa.4.0.extract.shift.i.i47 = lshr i32 %.val, 8
  %.sroa.5.0.extract.shift.i.i48 = lshr i32 %.val, 16
  %.sroa.6.0.extract.shift.i.i49 = lshr i32 %.val, 24
  %i.gt = and i32 %.val, 255
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = xor i64 %i.gu, -3750763034362895579
  %i.gw = mul i64 %i.gv, 1099511628211
  %i.gx = and i32 %.sroa.4.0.extract.shift.i.i47, 255
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = xor i64 %i.gw, %i.gy
  %i.ha = mul i64 %i.gz, 1099511628211
  %i.hb = and i32 %.sroa.5.0.extract.shift.i.i48, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = xor i64 %i.ha, %i.hc
  %i.he = mul i64 %i.hd, 1099511628211
  %8 = zext nneg i32 %.sroa.6.0.extract.shift.i.i49 to i64
  %i.hf = xor i64 %i.he, %8
  %i.hg = mul i64 %i.hf, 1099511628211            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.hg, ptr %i.a, align 8, !noalias !4396
  %.val.i52 = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !4395, !noalias !4397, !noundef !28
  %.val3.i53 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4395, !noalias !4397, !noundef !28
  %i.hh = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i52, i64 %.val3.i53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !4396 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4398)
  call void @llvm.experimental.noalias.scope.decl(metadata !4399)
  %i.hi = lshr i64 %i.hh, 57
  %i.hj = trunc nuw nsw i64 %i.hi to i8           ; 3 uses
  %i.hk = load i64, ptr %i.ab, align 8, !alias.scope !4400, !noalias !4401, !noundef !28 ; 3 uses
  %i.hl = load ptr, ptr %i.e, align 8, !alias.scope !4400, !noalias !4401, !nonnull !28, !noundef !28 ; 3 uses
  %i.hm = insertelement <16 x i8> poison, i8 %i.hj, i64 0
  %i.hn = shufflevector <16 x i8> %i.hm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.9.0.i.i.i54 = phi i64 [ 0, %bb.aa ], [ %i.ie, %bb.ad ]
  %.pn.i.i55 = phi i64 [ %i.hh, %bb.aa ], [ %i.if, %bb.ad ]
  %.sroa.01.0.i.i.i56 = and i64 %.pn.i.i55, %i.hk ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.01.0.i.i.i56
  %.sroa.0.0.copyload.i24.i.i57 = load <16 x i8>, ptr %i.ho, align 1, !noalias !4402 ; 2 uses
  %i.hp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i57, %i.hn
  %i.hq = bitcast <16 x i1> %i.hp to i16          ; 2 uses
  %.not.i.not30.i.i58 = icmp eq i16 %i.hq, 0
  br i1 %.not.i.not30.i.i58, label %._crit_edge.i.i63, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.i31.i.i60 = phi i16 [ %i.id, %bb.ac ], [ %i.hq, %bb.ab ] ; 3 uses
  %i.hr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i60, i1 true)
  %i.hs = zext nneg i16 %i.hr to i64
  %i.ht = add i64 %.sroa.01.0.i.i.i56, %i.hs
  %i.hu = and i64 %i.ht, %i.hk
  %i.hv = sub nsw i64 0, %i.hu
  %i.hw = getelementptr inbounds [32 x i8], ptr %i.hl, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -32
  %.val2.i.i.i61 = load i64, ptr %i.hx, align 8, !noalias !4403, !noundef !28
  %i.hy = icmp eq i64 %.val2.i.i.i61, %i.hg
  br i1 %i.hy, label %bb.ai, label %bb.ac, !prof !29

._crit_edge.i.i63:                                ; preds = %bb.ac, %bb.ab
  %i.hz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i57, splat (i8 -1)
  %i.ia = bitcast <16 x i1> %i.hz to i16
  %i.ib = icmp eq i16 %i.ia, 0
  br i1 %i.ib, label %bb.ad, label %bb.ae, !prof !44

bb.ac:                                            ; preds = %.lr.ph.i.i59
  %i.ic = add i16 %.sroa.06.0.i31.i.i60, -1
  %i.id = and i16 %i.ic, %.sroa.06.0.i31.i.i60    ; 2 uses
  %.not.i.not.i.i62 = icmp eq i16 %i.id, 0
  br i1 %.not.i.not.i.i62, label %._crit_edge.i.i63, label %.lr.ph.i.i59

bb.ad:                                            ; preds = %._crit_edge.i.i63
  %i.ie = add i64 %.sroa.9.0.i.i.i54, 16          ; 2 uses
  %i.if = add i64 %.sroa.01.0.i.i.i56, %i.ie
  br label %bb.ab

bb.ae:                                            ; preds = %._crit_edge.i.i63
  %i.ig = load i64, ptr %i.ac, align 8, !alias.scope !4404, !noalias !4405, !noundef !28
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.af, label %bb.ag, !prof !44

bb.af:                                            ; preds = %bb.ae
  %i.ii = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1x_16IdentifyDistinctpE3new14RepresentativejEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.420.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc68:                                         ; preds = %bb.af
  %.val.i.i74.pre = load ptr, ptr %i.e, align 8, !alias.scope !4406, !noalias !4407
  %.val3.i.i75.pre = load i64, ptr %i.ab, align 8, !alias.scope !4406, !noalias !4407
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc68, %bb.ae
  %.val3.i.i75 = phi i64 [ %.val3.i.i75.pre, %.noexc68 ], [ %i.hk, %bb.ae ] ; 4 uses
  %.val.i.i74 = phi ptr [ %.val.i.i74.pre, %.noexc68 ], [ %i.hl, %bb.ae ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  %.sroa.0.07.i.i.i76 = and i64 %.val3.i.i75, %i.hh ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i.i74, i64 %.sroa.0.07.i.i.i76
  %.sroa.0.0.copyload.i68.i.i.i77 = load <16 x i8>, ptr %i.ij, align 1, !noalias !4408
  %i.ik = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i77, zeroinitializer
  %i.il = bitcast <16 x i1> %i.ik to i16          ; 2 uses
  %.not.i9.i.i.i78 = icmp eq i16 %i.il, 0
  br i1 %.not.i9.i.i.i78, label %.lr.ph.i.i.i93, label %._crit_edge.i.i.i79, !prof !65

._crit_edge.i.i.i79:                              ; preds = %.lr.ph.i.i.i93, %bb.ag
  %.sroa.0.0.lcssa.i.i.i80 = phi i64 [ %.sroa.0.07.i.i.i76, %bb.ag ], [ %.sroa.0.0.i.i.i95, %.lr.ph.i.i.i93 ]
  %.lcssa.i.i.i81 = phi i16 [ %i.il, %bb.ag ], [ %i.jc, %.lr.ph.i.i.i93 ]
  %i.im = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i81, i1 true)
  %i.in = zext nneg i16 %i.im to i64
  %i.io = add i64 %.sroa.0.0.lcssa.i.i.i80, %i.in
  %i.ip = and i64 %i.io, %.val3.i.i75             ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i.i74, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !noalias !4409, !noundef !28 ; 2 uses
  %i.is = icmp sgt i8 %i.ir, -1
  br i1 %i.is, label %bb.ah, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i82, !prof !44

bb.ah:                                            ; preds = %._crit_edge.i.i.i79
  %.val2.i.i.i.i89 = load <16 x i8>, ptr %.val.i.i74, align 16, !noalias !4409
  %i.it = icmp slt <16 x i8> %.val2.i.i.i.i89, zeroinitializer
  %i.iu = bitcast <16 x i1> %i.it to i16          ; 2 uses
  %.not.i6.i.i.i90 = icmp ne i16 %i.iu, 0
  %i.iv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.iu, i1 true)
  %i.iw = zext nneg i16 %i.iv to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i90)
  %.phi.trans.insert.i.i91 = getelementptr inbounds nuw i8, ptr %.val.i.i74, i64 %i.iw
  %.pre.i.i92 = load i8, ptr %.phi.trans.insert.i.i91, align 1, !noalias !4409
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i82

.lr.ph.i.i.i93:                                   ; preds = %bb.ag, %.lr.ph.i.i.i93
  %.sroa.0.010.i.i.i94 = phi i64 [ %.sroa.0.0.i.i.i95, %.lr.ph.i.i.i93 ], [ %.sroa.0.07.i.i.i76, %bb.ag ]
  %i.ix = phi i64 [ %i.iy, %.lr.ph.i.i.i93 ], [ 0, %bb.ag ]
  %i.iy = add i64 %i.ix, 16                       ; 2 uses
  %i.iz = add i64 %i.iy, %.sroa.0.010.i.i.i94
  %.sroa.0.0.i.i.i95 = and i64 %i.iz, %.val3.i.i75 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val.i.i74, i64 %.sroa.0.0.i.i.i95
  %.sroa.0.0.copyload.i6.i.i.i96 = load <16 x i8>, ptr %i.ja, align 1, !noalias !4408
  %i.jb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i96, zeroinitializer
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i.i.i.i97 = icmp eq i16 %i.jc, 0
  br i1 %.not.i.i.i.i97, label %.lr.ph.i.i.i93, label %._crit_edge.i.i.i79, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i82: ; preds = %bb.ah, %._crit_edge.i.i.i79
  %i.jd = phi i8 [ %.pre.i.i92, %bb.ah ], [ %i.ir, %._crit_edge.i.i.i79 ]
  %.sroa.0.0.i5.i.i.i83 = phi i64 [ %i.iw, %bb.ah ], [ %i.ip, %._crit_edge.i.i.i79 ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i74, i64 %.sroa.0.0.i5.i.i.i83
  %i.jf = add i64 %.sroa.0.0.i5.i.i.i83, -16
  %i.jg = and i64 %i.jf, %.val3.i.i75
  store i8 %i.hj, ptr %i.je, align 1, !noalias !4409
  %i.jh = getelementptr i8, ptr %.val.i.i74, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  store i8 %i.hj, ptr %i.ji, align 1, !noalias !4409
  %i.jj = sub nsw i64 0, %.sroa.0.0.i5.i.i.i83
  %i.jk = getelementptr inbounds [32 x i8], ptr %.val.i.i74, i64 %i.jj ; 5 uses
  %i.jl = and i8 %i.jd, 1
  %i.jm = zext nneg i8 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 -32
  store i64 %i.hg, ptr %i.jn, align 8, !noalias !4410
  %.sroa.49.0..sroa_idx.i84 = getelementptr inbounds i8, ptr %i.jk, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i84, align 8, !noalias !4410
  %.sroa.510.0..sroa_idx.i85 = getelementptr inbounds i8, ptr %i.jk, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i85, align 8, !noalias !4410
  %.sroa.6.0..sroa_idx.i86 = getelementptr inbounds i8, ptr %i.jk, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i86, align 8, !noalias !4410
  %i.jo = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !4406, !noalias !4407
  %i.jp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.jm, i64 0
  %i.jq = sub <2 x i64> %i.jo, %i.jp
  store <2 x i64> %i.jq, ptr %i.ac, align 8, !alias.scope !4406, !noalias !4407
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i82
  %.pn.i87 = phi ptr [ %i.jk, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB1w_16IdentifyDistinctpE3new14RepresentativejEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i82 ], [ %i.hw, %bb.ai ] ; 3 uses
  %.sroa.0.0.i88 = getelementptr inbounds i8, ptr %.pn.i87, i64 -24 ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.pn.i87, i64 -16 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.jt = getelementptr inbounds i8, ptr %.pn.i87, i64 -8 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !noundef !28 ; 5 uses
  %.idx186 = mul nuw nsw i64 %i.ju, 24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %.idx186
  %i.jw = icmp eq i64 %i.ju, 0
  br i1 %i.jw, label %.loopexit188, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.aj, %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.thread.us.i
  %i.jx = phi ptr [ %i.jy, %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.thread.us.i ], [ %i.js, %bb.aj ] ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24 ; 2 uses
  %i.jz = load i64, ptr %i.jx, align 8, !range !41, !noalias !4411, !noundef !28
  %i.ka = trunc nuw i64 %i.jz to i1
  br i1 %i.ka, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.thread.us.i, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i: ; preds = %.lr.ph.split.us.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !4411, !noundef !28
  %i.kd = sub i64 %i.kc, %i.w                     ; 3 uses
  %i.ke = icmp ult i64 %i.kd, %i.y
  br i1 %i.ke, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.us.i, label %.split.us.i.invoke

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.us.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.kd
  %.val.i.us.i = load i32, ptr %i.gs, align 4, !noalias !4411, !noundef !28
  %.val2.i.us.i = load i32, ptr %i.kf, align 4, !noalias !4411, !noundef !28
  %i.kg = icmp eq i32 %.val.i.us.i, %.val2.i.us.i
  br i1 %i.kg, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtBZ_16IdentifyDistinctpE3new14RepresentativejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BZ_IB1I_jE3newINtBZ_12OffsetLookupmEB3B_E0ECskXtk6F4WjxZ_4just.exit, label %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.thread.us.i

_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.thread.us.i: ; preds = %_RNCINvMs4_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB8_16IdentifyDistinctjE3newINtB8_12OffsetLookupmEB1k_E0CskXtk6F4WjxZ_4just.exit.us.i, %.lr.ph.split.us.i
  %i.kh = icmp eq ptr %i.jy, %i.jv
  br i1 %i.kh, label %.loopexit188, label %.lr.ph.split.us.i

.split.us.i.invoke:                               ; preds = %bb.d, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i, %bb.j, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i
  %i.ki = phi i64 [ %i.kd, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i ], [ %i.ci, %bb.j ], [ %i.fz, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i ], [ %i.fv, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i ], [ %i.at, %bb.d ]
  %i.kj = phi i64 [ %i.y, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i ], [ %i.ah, %bb.j ], [ %i.aq, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i ], [ %i.y, %bb.d ]
  %i.kk = phi ptr [ @557, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.i ], [ @127, %bb.j ], [ @559, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.i ], [ @561, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit3.i.i ], [ @128, %bb.d ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ki, i64 noundef %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kk) #75
          to label %.split.us.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.split.us.i.cont:                                 ; preds = %.split.us.i.invoke
  unreachable
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2_12OffsetLookupmEECskXtk6F4WjxZ_4just:bb.a
  %i.aw = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #70, !noalias !20217 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.d, label %bb.e

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20215
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f), !noalias !20216
  br label %.loopexit.sink.split

.thread144:                                       ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f) #72, !noalias !20216
  br label %.thread

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #71
          to label %.noexc.i.i unwind label %.thread144, !noalias !20215

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  store ptr %i.au, ptr %i.aw, align 8, !noalias !20215
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.av, ptr %i.az, align 8, !noalias !20215
  store i64 4, ptr %i.e, align 8, !noalias !20215
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20215
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !20215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !20216
  call void @llvm.experimental.noalias.scope.decl(metadata !20218)
  call void @llvm.experimental.noalias.scope.decl(metadata !20219)
  %i.ba = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !20220 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not7.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214, label %.lr.ph.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214: ; preds = %bb.e
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !20220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20215
  br label %.loopexit.sink.split

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.bc = phi ptr [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.aw, %bb.e ]
  %i.bd = phi i64 [ %i.bm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 1, %bb.e ] ; 6 uses
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.bn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.be = phi ptr [ %i.bo, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.bb, %bb.e ]
  %i.bf = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %i.bg = icmp samesign ult i64 %i.bd, 576460752303423488
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.e, align 8, !range !43, !alias.scope !20221, !noalias !20222, !noundef !28
  %i.bi = icmp eq i64 %i.bd, %i.bh
  br i1 %i.bi, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bd, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !20222

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.pre.i.i39 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !20221, !noalias !20222
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bj = phi ptr [ %.pre.i.i39, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i ], [ %i.bc, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.bk, align 8, !noalias !20223
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bf, ptr %i.bl, align 8, !noalias !20223
  %i.bm = add nuw nsw i64 %i.bd, 1                ; 6 uses
  store i64 %i.bm, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !20221, !noalias !20222
  %i.bn = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !20220 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d) #72, !noalias !20220
  %.val.i.i = load i64, ptr %i.e, align 8, !noalias !20215 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i, 0
  br i1 %i.bq, label %.thread, label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20215, !nonnull !28, !noundef !28
  %i.br = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !20215
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.055.0.copyload56.pre = load i64, ptr %i.e, align 8, !noalias !20224 ; 4 uses
  %.sroa.6.0.copyload58.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20224 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !20220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !20225)
  call void @llvm.experimental.noalias.scope.decl(metadata !20226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20225
  store ptr %i.a, ptr %i.c, align 8, !noalias !20227
  %i.bs = icmp samesign ult i64 %i.bd, 20
  br i1 %i.bs, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2s_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload58.pre, i64 noundef range(i64 0, 576460752303423488) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #74
          to label %.loopexit unwind label %bb.k

bb.h:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.bm, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload58.pre, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload58.pre, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.h
  %.sroa.0.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.h ] ; 7 uses
  %.pn3.i.i.i = phi ptr [ %.sroa.0.04.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.6.0.copyload58.pre, %bb.h ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.pn3.i.i.i, i64 24
  %.val9.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !20228, !noalias !20229, !noundef !28 ; 3 uses
  %i.bv = getelementptr i8, ptr %.pn3.i.i.i, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !20228, !noalias !20229, !noundef !28
  %i.bw = icmp ult i64 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.bw, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !alias.scope !20228, !noalias !20229, !nonnull !28, !align !35, !noundef !28
  %.sroa.0.0.i.i.i.i246 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i246, i64 16, i1 false), !alias.scope !20228, !noalias !20229
  %i.by = icmp eq ptr %.sroa.0.0.i.i.i.i246, %.sroa.6.0.copyload58.pre
  br i1 %i.by, label %._crit_edge251, label %.lr.ph250

bb.j:                                             ; preds = %.lr.ph250
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i248, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i248, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i, i64 16, i1 false), !alias.scope !20228, !noalias !20229
  %i.bz = icmp eq ptr %.sroa.0.0.i.i.i.i, %.sroa.6.0.copyload58.pre
  br i1 %i.bz, label %._crit_edge251, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i.i248 = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.j ], [ %.sroa.0.0.i.i.i.i246, %bb.i ] ; 5 uses
  %.sroa.5.0.i.i.i.i247 = phi ptr [ %.sroa.0.0.i.i.i.i248, %bb.j ], [ %.sroa.0.04.i.i.i, %bb.i ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.5.0.i.i.i.i247, i64 -24
  %.val8.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !20228, !noalias !20229, !noundef !28
  %i.cb = icmp ult i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.cb, label %bb.j, label %._crit_edge251

._crit_edge251:                                   ; preds = %bb.j, %.lr.ph250, %bb.i
  %.sroa.5.0.i.i.i.i.lcssa = phi ptr [ %.sroa.0.04.i.i.i, %bb.i ], [ %.sroa.0.0.i.i.i.i248, %bb.j ], [ %.sroa.5.0.i.i.i.i247, %.lr.ph250 ]
  %.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %.sroa.6.0.copyload58.pre, %bb.i ], [ %.sroa.6.0.copyload58.pre, %bb.j ], [ %.sroa.0.0.i.i.i.i248, %.lr.ph250 ]
  store ptr %i.bx, ptr %.sroa.0.0.i.lcssa.i.i.i, align 8, !alias.scope !20228, !noalias !20230
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.i.lcssa, i64 -8
  store i64 %.val9.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i, align 8, !alias.scope !20228, !noalias !20230
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %._crit_edge251, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.bt
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = icmp eq i64 %.sroa.055.0.copyload56.pre, 0
  br i1 %i.cd, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = shl nuw i64 %.sroa.055.0.copyload56.pre, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload58.pre) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload58.pre, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %.thread

.loopexit.sink.split:                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214
  %.sroa.055.0127.ph = phi i64 [ 4, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214 ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread ]
  %.sroa.6.0126.ph = phi ptr [ %i.aw, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214 ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread ]
  %.sroa.9.0125.ph = phi i64 [ 1, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214 ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i, %.loopexit.sink.split, %bb.g
  %.sroa.055.0127 = phi i64 [ %.sroa.055.0.copyload56.pre, %bb.g ], [ %.sroa.055.0127.ph, %.loopexit.sink.split ], [ %.sroa.055.0.copyload56.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ]
  %.sroa.6.0126 = phi ptr [ %.sroa.6.0.copyload58.pre, %bb.g ], [ %.sroa.6.0126.ph, %.loopexit.sink.split ], [ %.sroa.6.0.copyload58.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ]
  %.sroa.9.0125 = phi i64 [ %i.bm, %bb.g ], [ %.sroa.9.0125.ph, %.loopexit.sink.split ], [ %i.bm, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20225
  store i64 %.sroa.055.0127, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0126, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0125, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.m:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.am ; 2 uses
  %.val36 = load i32, ptr %i.cf, align 4, !noundef !28 ; 4 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.val36, 8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.val36, 16
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.val36, 24
  %i.cg = and i32 %.val36, 255
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = xor i64 %i.ch, -3750763034362895579
  %i.cj = mul i64 %i.ci, 1099511628211
  %i.ck = and i32 %.sroa.4.0.extract.shift.i.i, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = xor i64 %i.cj, %i.cl
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = xor i64 %i.cn, %i.cp
  %i.cr = mul i64 %i.cq, 1099511628211
  %4 = zext nneg i32 %.sroa.6.0.extract.shift.i.i to i64
  %i.cs = xor i64 %i.cr, %4
  %i.ct = mul i64 %i.cs, 1099511628211            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ct, ptr %i.b, align 8, !noalias !20232
  %.val.i = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !20231, !noalias !20233, !noundef !28
  %.val3.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20231, !noalias !20233, !noundef !28
  %i.cu = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !20232 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20234)
  call void @llvm.experimental.noalias.scope.decl(metadata !20235)
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8           ; 3 uses
  %i.cx = load i64, ptr %i.y, align 8, !alias.scope !20236, !noalias !20237, !noundef !28 ; 3 uses
  %i.cy = load ptr, ptr %i.g, align 8, !alias.scope !20236, !noalias !20237, !nonnull !28, !noundef !28 ; 3 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.dr, %bb.p ]
  %.pn.i.i = phi i64 [ %i.cu, %bb.m ], [ %i.ds, %bb.p ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.cx     ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.db, align 1, !noalias !20238 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.da
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.o
  %.sroa.06.0.i31.i.i = phi i16 [ %i.dq, %bb.o ], [ %i.dd, %bb.n ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i, %i.df
  %i.dh = and i64 %i.dg, %i.cx
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.cy, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %.val2.i.i.i = load i64, ptr %i.dk, align 8, !noalias !20239, !noundef !28
  %i.dl = icmp eq i64 %.val2.i.i.i, %i.ct
  br i1 %i.dl, label %bb.u, label %bb.o, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.n
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.p, label %bb.q, !prof !44

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.dp = add i16 %.sroa.06.0.i31.i.i, -1
  %i.dq = and i16 %i.dp, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.dr = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i, %i.dr
  br label %bb.n

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.dt = load i64, ptr %i.z, align 8, !alias.scope !20240, !noalias !20241, !noundef !28
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %bb.q
  %i.dv = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.47.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc43 unwind label %.loopexit146 ; 0 uses

.noexc43:                                         ; preds = %bb.r
  %.val.i.i45.pre = load ptr, ptr %i.g, align 8, !alias.scope !20242, !noalias !20243
  %.val3.i.i.pre = load i64, ptr %i.y, align 8, !alias.scope !20242, !noalias !20243
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %bb.q
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc43 ], [ %i.cx, %bb.q ] ; 4 uses
  %.val.i.i45 = phi ptr [ %.val.i.i45.pre, %.noexc43 ], [ %i.cy, %bb.q ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !20242)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.cu   ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.dw, align 1, !noalias !20244
  %i.dx = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i49, label %._crit_edge.i.i.i, !prof !65

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i49, %bb.s
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.s ], [ %.sroa.0.0.i.i.i50, %.lr.ph.i.i.i49 ]
  %.lcssa.i.i.i = phi i16 [ %i.dy, %bb.s ], [ %i.ep, %.lr.ph.i.i.i49 ]
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ea
  %i.ec = and i64 %i.eb, %.val3.i.i               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !20245, !noundef !28 ; 2 uses
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %bb.t, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i45, align 16, !noalias !20245
  %i.eg = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.eh, 0
  %i.ei = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eh, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i47 = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %i.ej
  %.pre.i.i48 = load i8, ptr %.phi.trans.insert.i.i47, align 1, !noalias !20245
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i49:                                   ; preds = %bb.s, %.lr.ph.i.i.i49
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i50, %.lr.ph.i.i.i49 ], [ %.sroa.0.07.i.i.i, %bb.s ]
  %i.ek = phi i64 [ %i.el, %.lr.ph.i.i.i49 ], [ 0, %bb.s ]
  %i.el = add i64 %i.ek, 16                       ; 2 uses
  %i.em = add i64 %i.el, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i50 = and i64 %i.em, %.val3.i.i  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %.sroa.0.0.i.i.i50
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.en, align 1, !noalias !20244
  %i.eo = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ep = bitcast <16 x i1> %i.eo to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i49, label %._crit_edge.i.i.i, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.t, %._crit_edge.i.i.i
  %i.eq = phi i8 [ %.pre.i.i48, %bb.t ], [ %i.ee, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ej, %bb.t ], [ %i.ec, %._crit_edge.i.i.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %.sroa.0.0.i5.i.i.i
  %i.es = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.et = and i64 %i.es, %.val3.i.i
  store i8 %i.cw, ptr %i.er, align 1, !noalias !20245
  %i.eu = getelementptr i8, ptr %.val.i.i45, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  store i8 %i.cw, ptr %i.ev, align 1, !noalias !20245
  %i.ew = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.ex = getelementptr inbounds [32 x i8], ptr %.val.i.i45, i64 %i.ew ; 5 uses
  %i.ey = and i8 %i.eq, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 -32
  store i64 %i.ct, ptr %i.fa, align 8, !noalias !20246
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ex, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !20246
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ex, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !20246
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds i8, ptr %i.ex, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i46, align 8, !noalias !20246
  %i.fb = load <2 x i64>, ptr %i.z, align 8, !alias.scope !20242, !noalias !20243
  %i.fc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ez, i64 0
  %i.fd = sub <2 x i64> %i.fb, %i.fc
  store <2 x i64> %i.fd, ptr %i.z, align 8, !alias.scope !20242, !noalias !20243
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.ex, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.dj, %bb.u ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !28 ; 5 uses
  %.idx = mul nuw nsw i64 %i.fh, 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx
  %i.fj = icmp eq i64 %i.fh, 0
  br i1 %i.fj, label %._crit_edge245, label %.lr.ph244

bb.w:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.02.0242, i64 24 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fi
  br i1 %i.fl, label %._crit_edge245, label %.lr.ph244

.lr.ph244:                                        ; preds = %bb.v, %bb.w
  %.sroa.02.0242 = phi ptr [ %i.fk, %bb.w ], [ %i.ff, %bb.v ] ; 3 uses
  %i.fm = load i64, ptr %.sroa.02.0242, align 8, !noundef !28
  %i.fn = sub i64 %i.fm, %i.t                     ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.v
  br i1 %i.fo, label %bb.x, label %.invoke

.invoke:                                          ; preds = %bb.b, %.lr.ph244
  %i.fp = phi i64 [ %i.fn, %.lr.ph244 ], [ %i.am, %bb.b ]
  %i.fq = phi ptr [ @299, %.lr.ph244 ], [ @297, %bb.b ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq) #75
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %.lr.ph244
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.fn
  %.val = load i32, ptr %i.cf, align 4, !noundef !28
  %.val35 = load i32, ptr %i.fr, align 4, !noundef !28
  %i.fs = icmp eq i32 %.val, %.val35
  br i1 %i.fs, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.02.0242, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !range !41, !noundef !28
  %.not29 = icmp eq i64 %i.fu, 0
  br i1 %.not29, label %bb.aa, label %bb.z

end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupmEB15_ECskXtk6F4WjxZ_4just:bb.a
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !21861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi174, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader: ; preds = %bb.ak, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph152, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17

.lr.ph152:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !28
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aj, %bb.ae, %bb.w
  %lpad.loopexit124 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit124, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #72
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.0.089149 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.ak ] ; 3 uses
  %.sroa.8.0148 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.ak ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.089149, 1
  %i.ao = add i64 %.sroa.8.0148, 1                ; 2 uses
  %i.ap = and i64 %.sroa.8.0148, 1023
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %bb.y

bb.c:                                             ; preds = %.lr.ph152, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.068.0151 = phi i64 [ %4, %.lr.ph152 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %.sroa.870.0150 = phi i64 [ 0, %.lr.ph152 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.068.0151, 1
  %i.as = add i64 %.sroa.870.0150, 1              ; 2 uses
  %i.at = and i64 %.sroa.870.0150, 1023
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.j

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !21863)
  call void @llvm.experimental.noalias.scope.decl(metadata !21864)
  call void @llvm.experimental.noalias.scope.decl(metadata !21865)
  call void @llvm.experimental.noalias.scope.decl(metadata !21866)
  call void @llvm.experimental.noalias.scope.decl(metadata !21867)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !21868, !noundef !28 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17
  call void @llvm.experimental.noalias.scope.decl(metadata !21869)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !21870, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !21870, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !21871
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
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !21872
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
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !21873, !noalias !21870 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !21870, !nonnull !28, !noundef !28
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !21874
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
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32
  %.sink = phi i64 [ %i.fo, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sink221 = phi i64 [ %i.fr, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink221, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32, %.loopexit123
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit123 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.cg, label %.loopexit123, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = sub i64 %.sroa.068.0151, %i.z           ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.ab
  br i1 %i.ci, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ch
  %.val15 = load i32, ptr %i.cj, align 4, !noundef !28 ; 5 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.val15, 8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.val15, 16
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.val15, 24
  %i.ck = and i32 %.val15, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = xor i64 %i.cl, -3750763034362895579
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = and i32 %.sroa.4.0.extract.shift.i.i, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = xor i64 %i.cn, %i.cp
  %i.cr = mul i64 %i.cq, 1099511628211
  %i.cs = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = xor i64 %i.cr, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %8 = zext nneg i32 %.sroa.6.0.extract.shift.i.i to i64
  %i.cw = xor i64 %i.cv, %8
  %i.cx = mul i64 %i.cw, 1099511628211            ; 2 uses
  store i64 %i.cx, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21875)
  %i.cy = load i64, ptr %i.ae, align 8, !alias.scope !21875, !noalias !21876, !noundef !28
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !21875, !noalias !21876, !noundef !28
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !21875, !noalias !21876, !noundef !28
  %i.da = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !21875 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21877)
  call void @llvm.experimental.noalias.scope.decl(metadata !21878)
  %i.db = lshr i64 %i.da, 57
  %i.dc = trunc nuw nsw i64 %i.db to i8
  %i.dd = load i64, ptr %i.af, align 8, !alias.scope !21879, !noalias !21880, !noundef !28 ; 2 uses
  %i.de = load ptr, ptr %i.c, align 8, !alias.scope !21879, !noalias !21880, !nonnull !28, !noundef !28 ; 2 uses
  %i.df = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.dx, %bb.o ]
  %.pn.i.i = phi i64 [ %i.da, %bb.l ], [ %i.dy, %bb.o ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.dd     ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !21881 ; 2 uses
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dg
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.sroa.06.0.i31.i.i = phi i16 [ %i.dw, %bb.n ], [ %i.dj, %bb.m ] ; 3 uses
  %i.dk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = add i64 %.sroa.01.0.i.i.i, %i.dl
  %i.dn = and i64 %i.dm, %i.dd
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [32 x i8], ptr %i.de, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -32
  %.val2.i.i.i = load i64, ptr %i.dq, align 8, !noalias !21882, !noundef !28
  %i.dr = icmp eq i64 %i.cx, %.val2.i.i.i
  br i1 %i.dr, label %bb.p, label %bb.n, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  %i.ds = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %i.du = icmp eq i16 %i.dt, 0
  br i1 %i.du, label %bb.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, !prof !44

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.dv = add i16 %.sroa.06.0.i31.i.i, -1
  %i.dw = and i16 %i.dv, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.dx = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dy = add i64 %.sroa.01.0.i.i.i, %i.dx
  br label %bb.m

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dp, i64 -16
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dp, i64 -8
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !28 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ec, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx
  %.not.not.not.i.not244 = icmp eq i64 %i.ec, 0
  br i1 %.not.not.not.i.not244, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %.lr.ph245

bb.q:                                             ; preds = %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_5utils12OffsetLookupmEB17_E0CskXtk6F4WjxZ_4just.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.not.not.i.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.p, %bb.q
  %i.ef = phi ptr [ %i.ee, %bb.q ], [ %i.ea, %bb.p ] ; 2 uses
  %.val3.i = load i64, ptr %i.ef, align 8, !noalias !21883, !noundef !28
  %i.eg = sub i64 %.val3.i, %i.ah                 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.aj
  br i1 %i.eh, label %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_5utils12OffsetLookupmEB17_E0CskXtk6F4WjxZ_4just.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.y, %bb.j, %.lr.ph245
  %i.ei = phi i64 [ %i.ch, %bb.j ], [ %i.eg, %.lr.ph245 ], [ %i.fw, %bb.y ]
  %i.ej = phi i64 [ %i.ab, %bb.j ], [ %i.aj, %.lr.ph245 ], [ %i.r, %bb.y ]
  %i.ek = phi ptr [ @356, %bb.j ], [ @568, %.lr.ph245 ], [ @358, %bb.y ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek) #75
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_5utils12OffsetLookupmEB17_E0CskXtk6F4WjxZ_4just.exit.i: ; preds = %.lr.ph245
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.eg
  %.val1.i.i = load i32, ptr %i.el, align 4, !noalias !21883, !noundef !28
  %i.em = icmp eq i32 %.val15, %.val1.i.i
  br i1 %i.em, label %bb.r, label %bb.q

bb.r:                                             ; preds = %_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_5utils12OffsetLookupmEB17_E0CskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit123

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit: ; preds = %._crit_edge.i.i, %bb.q, %bb.p, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond170.not = icmp eq i64 %i.as, %i.am
  br i1 %exitcond170.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17, label %bb.c

.loopexit123:                                     ; preds = %bb.x, %bb.i, %bb.r
  %.sroa.0.2 = phi i8 [ 2, %bb.i ], [ 1, %bb.r ], [ 2, %bb.x ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21884)
  call void @llvm.experimental.noalias.scope.decl(metadata !21885)
  call void @llvm.experimental.noalias.scope.decl(metadata !21886)
  call void @llvm.experimental.noalias.scope.decl(metadata !21887)
  call void @llvm.experimental.noalias.scope.decl(metadata !21888)
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !21889, !noundef !28 ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %bb.s

bb.s:                                             ; preds = %.loopexit123
  call void @llvm.experimental.noalias.scope.decl(metadata !21890)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !21891, !noundef !28 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = load ptr, ptr %i.c, align 8, !alias.scope !21891, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i19 = load <16 x i8>, ptr %i.et, align 16, !noalias !21892
  %i.eu = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i19, splat (i8 -1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ew = bitcast <16 x i1> %i.eu to i16
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31, %bb.t
  %.sroa.06.017.i.i.i.i.i.i20 = phi ptr [ %i.et, %bb.t ], [ %.sroa.06.1.i.i.i.i.i.i27, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i21 = phi ptr [ %i.ev, %bb.t ], [ %.sroa.6.1.i.i.i.i.i.i26, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i22 = phi i16 [ %i.ew, %bb.t ], [ %i.ff, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i23 = phi i64 [ %i.er, %bb.t ], [ %i.fi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31 ]
  %.not11.i.i.i.i.i.i.i24 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i22, 0
  br i1 %.not11.i.i.i.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i33, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i25

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i33
  %i.ex = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.sroa.6.016.i.i.i.i.i.i21, %bb.u ] ; 2 uses
  %i.ey = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.sroa.06.017.i.i.i.i.i.i20, %bb.u ]
  %.val9.i.i.i.i.i.i.i34 = load <16 x i8>, ptr %i.ex, align 16, !noalias !21893
  %i.ez = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i34, splat (i8 -1)
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 -512 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i35 = bitcast <16 x i1> %i.ez to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i36 = icmp eq i16 %.cast.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i25

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.u
  %.sroa.6.1.i.i.i.i.i.i26 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i21, %bb.u ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i33 ]
  %.sroa.06.1.i.i.i.i.i.i27 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i20, %bb.u ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i33 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i28 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i22, %bb.u ], [ %.cast.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i.i33 ] ; 3 uses
  %i.fc = add i16 %.lcssa.i.i.i.i.i.i.i28, -1
  %i.fd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i28, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = and i16 %i.fc, %.lcssa.i.i.i.i.i.i.i28
  %i.fg = sub nsw i64 0, %i.fe
  %i.fh = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i27, i64 %i.fg ; 2 uses
  %i.fi = add i64 %.sroa.108.014.i.i.i.i.i.i23, -1 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fh, i64 -24
  %.val.i.i.i.i.i.i29 = load i64, ptr %i.fj, align 8, !alias.scope !21894, !noalias !21891 ; 2 uses
  %i.fk = icmp eq i64 %.val.i.i.i.i.i.i29, 0
  br i1 %i.fk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31, label %bb.v

bb.v:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i25
  %i.fl = getelementptr i8, ptr %i.fh, i64 -16
  %.val5.i.i.i.i.i.i30 = load ptr, ptr %i.fl, align 8, !noalias !21891, !nonnull !28, !noundef !28
  %i.fm = shl nuw i64 %.val.i.i.i.i.i.i29, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i30, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !21895
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31: ; preds = %bb.v, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i25
  %i.fn = icmp eq i64 %i.fi, 0
  br i1 %i.fn, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32, label %bb.u

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i31, %bb.s
  %i.fo = shl i64 %i.eo, 5                        ; 2 uses
  %i.fp = add i64 %i.fo, 32                       ; 2 uses
  %i.fq = add i64 %i.eo, 17
  %i.fr = add i64 %i.fq, %i.fp                    ; 4 uses
  %i.fs = icmp uge i64 %i.fr, %i.fp
  %i.ft = icmp ult i64 %i.fr, 9223372036854775793
  call void @llvm.assume(i1 %i.fs)
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp eq i64 %i.fr, 0
  br i1 %i.fu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split

bb.w:                                             ; preds = %bb.b
  %i.fv = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %bb.w
  br i1 %i.fv, label %.loopexit123, label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.x
  %i.fw = sub i64 %.sroa.0.089149, %i.p           ; 3 uses
  %i.fx = icmp ult i64 %i.fw, %i.r
  br i1 %i.fx, label %bb.z, label %.invoke

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fw
  %.val = load i32, ptr %i.fy, align 4, !noundef !28 ; 4 uses
  %.sroa.4.0.extract.shift.i.i38 = lshr i32 %.val, 8
  %.sroa.5.0.extract.shift.i.i39 = lshr i32 %.val, 16
  %.sroa.6.0.extract.shift.i.i40 = lshr i32 %.val, 24
  %i.fz = and i32 %.val, 255
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = xor i64 %i.ga, -3750763034362895579
  %i.gc = mul i64 %i.gb, 1099511628211
  %i.gd = and i32 %.sroa.4.0.extract.shift.i.i38, 255
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = xor i64 %i.gc, %i.ge
  %i.gg = mul i64 %i.gf, 1099511628211
  %i.gh = and i32 %.sroa.5.0.extract.shift.i.i39, 255
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = xor i64 %i.gg, %i.gi
  %i.gk = mul i64 %i.gj, 1099511628211
  %9 = zext nneg i32 %.sroa.6.0.extract.shift.i.i40 to i64
  %i.gl = xor i64 %i.gk, %9
  %i.gm = mul i64 %i.gl, 1099511628211            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.gm, ptr %i.a, align 8, !noalias !21897
  %.val.i43 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !21896, !noalias !21898, !noundef !28
  %.val3.i44 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !21896, !noalias !21898, !noundef !28
  %i.gn = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i43, i64 %.val3.i44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !21897 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21899)
  call void @llvm.experimental.noalias.scope.decl(metadata !21900)
  %i.go = lshr i64 %i.gn, 57
  %i.gp = trunc nuw nsw i64 %i.go to i8           ; 3 uses
  %i.gq = load i64, ptr %i.u, align 8, !alias.scope !21901, !noalias !21902, !noundef !28 ; 3 uses
  %i.gr = load ptr, ptr %i.c, align 8, !alias.scope !21901, !noalias !21902, !nonnull !28, !noundef !28 ; 3 uses
  %i.gs = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.gt = shufflevector <16 x i8> %i.gs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.sroa.9.0.i.i.i45 = phi i64 [ 0, %bb.z ], [ %i.hk, %bb.ac ]
  %.pn.i.i46 = phi i64 [ %i.gn, %bb.z ], [ %i.hl, %bb.ac ]
  %.sroa.01.0.i.i.i47 = and i64 %.pn.i.i46, %i.gq ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.01.0.i.i.i47
  %.sroa.0.0.copyload.i24.i.i48 = load <16 x i8>, ptr %i.gu, align 1, !noalias !21903 ; 2 uses
  %i.gv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i48, %i.gt
  %i.gw = bitcast <16 x i1> %i.gv to i16          ; 2 uses
  %.not.i.not30.i.i49 = icmp eq i16 %i.gw, 0
  br i1 %.not.i.not30.i.i49, label %._crit_edge.i.i54, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.aa, %bb.ab
  %.sroa.06.0.i31.i.i51 = phi i16 [ %i.hj, %bb.ab ], [ %i.gw, %bb.aa ] ; 3 uses
  %i.gx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i51, i1 true)
  %i.gy = zext nneg i16 %i.gx to i64
  %i.gz = add i64 %.sroa.01.0.i.i.i47, %i.gy
  %i.ha = and i64 %i.gz, %i.gq
  %i.hb = sub nsw i64 0, %i.ha
  %i.hc = getelementptr inbounds [32 x i8], ptr %i.gr, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -32
  %.val2.i.i.i52 = load i64, ptr %i.hd, align 8, !noalias !21904, !noundef !28
  %i.he = icmp eq i64 %.val2.i.i.i52, %i.gm
  br i1 %i.he, label %bb.ah, label %bb.ab, !prof !29

._crit_edge.i.i54:                                ; preds = %bb.ab, %bb.aa
  %i.hf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i48, splat (i8 -1)
  %i.hg = bitcast <16 x i1> %i.hf to i16
  %i.hh = icmp eq i16 %i.hg, 0
  br i1 %i.hh, label %bb.ac, label %bb.ad, !prof !44

bb.ab:                                            ; preds = %.lr.ph.i.i50
  %i.hi = add i16 %.sroa.06.0.i31.i.i51, -1
  %i.hj = and i16 %i.hi, %.sroa.06.0.i31.i.i51    ; 2 uses
  %.not.i.not.i.i53 = icmp eq i16 %i.hj, 0
  br i1 %.not.i.not.i.i53, label %._crit_edge.i.i54, label %.lr.ph.i.i50

bb.ac:                                            ; preds = %._crit_edge.i.i54
  %i.hk = add i64 %.sroa.9.0.i.i.i45, 16          ; 2 uses
  %i.hl = add i64 %.sroa.01.0.i.i.i47, %i.hk
  br label %bb.aa

bb.ad:                                            ; preds = %._crit_edge.i.i54
  %i.hm = load i64, ptr %i.v, align 8, !alias.scope !21905, !noalias !21906, !noundef !28
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %bb.ae, label %bb.af, !prof !44

bb.ae:                                            ; preds = %bb.ad
  %i.ho = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true) #74
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc55:                                         ; preds = %bb.ae
  %.val.i.i57.pre = load ptr, ptr %i.c, align 8, !alias.scope !21907, !noalias !21908
  %.val3.i.i.pre = load i64, ptr %i.u, align 8, !alias.scope !21907, !noalias !21908
  br label %bb.af

bb.af:                                            ; preds = %.noexc55, %bb.ad
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc55 ], [ %i.gq, %bb.ad ] ; 4 uses
  %.val.i.i57 = phi ptr [ %.val.i.i57.pre, %.noexc55 ], [ %i.gr, %bb.ad ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !21907)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.gn   ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.hp, align 1, !noalias !21909
  %i.hq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.hr = bitcast <16 x i1> %i.hq to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.hr, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !65

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.af
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.hr, %bb.af ], [ %i.ii, %.lr.ph.i.i.i ]
  %i.hs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ht = zext nneg i16 %i.hs to i64
  %i.hu = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ht
  %i.hv = and i64 %i.hu, %.val3.i.i               ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !noalias !21910, !noundef !28 ; 2 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %bb.ag, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i57, align 16, !noalias !21910
  %i.hz = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ia = bitcast <16 x i1> %i.hz to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.ia, 0
  %i.ib = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ia, i1 true)
  %i.ic = zext nneg i16 %i.ib to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %i.ic
  %.pre.i.i60 = load i8, ptr %.phi.trans.insert.i.i59, align 1, !noalias !21910
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.af ]
  %i.id = phi i64 [ %i.ie, %.lr.ph.i.i.i ], [ 0, %bb.af ]
  %i.ie = add i64 %i.id, 16                       ; 2 uses
  %i.if = add i64 %i.ie, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.if, %.val3.i.i    ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.ig, align 1, !noalias !21909
  %i.ih = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ii = bitcast <16 x i1> %i.ih to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ag, %._crit_edge.i.i.i
  %i.ij = phi i8 [ %.pre.i.i60, %bb.ag ], [ %i.hx, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ic, %bb.ag ], [ %i.hv, %._crit_edge.i.i.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %.sroa.0.0.i5.i.i.i
  %i.il = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.im = and i64 %i.il, %.val3.i.i
  store i8 %i.gp, ptr %i.ik, align 1, !noalias !21910
  %i.in = getelementptr i8, ptr %.val.i.i57, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 16
  store i8 %i.gp, ptr %i.io, align 1, !noalias !21910
  %i.ip = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.iq = getelementptr inbounds [32 x i8], ptr %.val.i.i57, i64 %i.ip ; 5 uses
  %i.ir = and i8 %i.ij, 1
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 -32
  store i64 %i.gm, ptr %i.it, align 8, !noalias !21911
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.iq, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !21911
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.iq, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !21911
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.iq, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !21911
  %i.iu = load <2 x i64>, ptr %i.v, align 8, !alias.scope !21907, !noalias !21908
  %i.iv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.is, i64 0
  %i.iw = sub <2 x i64> %i.iu, %i.iv
  store <2 x i64> %i.iw, ptr %i.v, align 8, !alias.scope !21907, !noalias !21908
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.iq, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.hc, %bb.ah ] ; 3 uses
  %.sroa.0.0.i58 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !21912, !noundef !28 ; 3 uses
  %i.iz = load i64, ptr %.sroa.0.0.i58, align 8, !range !43, !alias.scope !21912, !noundef !28
  %i.ja = icmp eq i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i58) #74
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.jb = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !21912, !nonnull !28, !noundef !28
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.iy
  store i64 %.sroa.0.089149, ptr %i.jd, align 8
  %i.je = add i64 %i.iy, 1
  store i64 %i.je, ptr %i.ix, align 8, !alias.scope !21912
  %exitcond.not = icmp eq i64 %i.ao, %i.w
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !40, !noalias !22048, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !22049
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !22049
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !22050 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
end_hunk_3
