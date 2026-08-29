Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.004?download=true
inline.NumInlined: 20024
inline.NumDeleted: 7135
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api10search_apiNtB10_13search_pointsNtNtB8_7service18HttpServiceFactory8register13search_pointsTINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB12_14CollectionPathEINtNtB4h_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types13SearchRequestEINtNtB4h_5query5QueryNtNtB12_11read_params10ReadParamsEIB36_NtNtB16_8settings13ServiceConfigENtNtB14_4auth9ActixAuthNtNtB12_13routing_token17ActixRoutingTokenEE00B16_:bb.a
  br label %bb.jg

bb.jl:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2x_10Collection17core_search_batch0s0_0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 3472
  store i64 %i.amd, ptr %i.amf, align 8, !noalias !23509
  %.val.i60.i.i.i.i = load ptr, ptr %i.alf, align 8, !noalias !23509, !nonnull !6, !noundef !6 ; 2 uses
  %.val69.i.i.i.i.i = load i64, ptr %i.alg, align 8, !noalias !23509, !noundef !6
  %i.amg = getelementptr inbounds nuw [472 x i8], ptr %.val.i60.i.i.i.i, i64 %.val69.i.i.i.i.i
  %i.amh = invoke noundef i64 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2f_10Collection17core_search_batch0s2_0ENtNtNtBa_6traits8iterator8Iterator3sumjECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i60.i.i.i.i, ptr noundef nonnull %i.amg)
          to label %bb.jn unwind label %bb.jm, !noalias !23513

bb.jm:                                            ; preds = %bb.jl
  %i.ami = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.jn:                                            ; preds = %bb.jl
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store i64 %i.amh, ptr %i.amj, align 8, !noalias !23509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !23509
  %i.amk = load ptr, ptr %i.ajy, align 8, !noalias !23509, !nonnull !6, !align !89, !noundef !6
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 360
  %i.amm = getelementptr inbounds nuw i8, ptr %1, i64 3520
  store ptr %i.aml, ptr %i.amm, align 8, !noalias !23509
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3624
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !23509
  br label %bb.jt

.body.i.i.i.i.i:                                  ; preds = %bb.ki, %bb.kg, %bb.kc, %bb.kb, %bb.ju
  %.pn20.i.i.i.i.i = phi { ptr, i32 } [ %i.aos, %bb.ki ], [ %i.aoa, %bb.kc ], [ %i.aoa, %bb.kb ], [ %i.ano, %bb.ju ], [ %i.aom, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !23509
  br label %bb.jg

._crit_edge178:                                   ; preds = %bb.jj, %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !23509
  %i.amn = icmp ult i64 %.val77.i.i.i.i.i, 19541042450963509
  call void @llvm.assume(i1 %i.amn)
  invoke void @_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching19empty_batch_resultsNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, i64 noundef %.val77.i.i.i.i.i)
          to label %bb.jp unwind label %bb.jo, !noalias !23513

bb.jo:                                            ; preds = %._crit_edge178
  %i.amo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !23509
  br label %bb.jg

bb.jp:                                            ; preds = %._crit_edge178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6192.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !23509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !23509
  br label %bb.jq

bb.jq:                                            ; preds = %bb.oq, %bb.np, %bb.jp
  %i.amp = phi ptr [ %i.ajh, %bb.jp ], [ %i.auy, %bb.np ], [ %i.azl, %bb.oq ] ; 5 uses
  %i.amq = phi ptr [ %i.aji, %bb.jp ], [ %i.auz, %bb.np ], [ %i.azm, %bb.oq ] ; 5 uses
  %i.amr = phi ptr [ %i.ajj, %bb.jp ], [ %i.ava, %bb.np ], [ %i.azn, %bb.oq ] ; 5 uses
  %i.ams = phi ptr [ %i.ajk, %bb.jp ], [ %i.avb, %bb.np ], [ %i.azo, %bb.oq ] ; 5 uses
  %i.amt = phi ptr [ %i.ajl, %bb.jp ], [ %i.avc, %bb.np ], [ %i.azp, %bb.oq ] ; 5 uses
  %i.amu = phi ptr [ %i.ajm, %bb.jp ], [ %i.avd, %bb.np ], [ %i.azq, %bb.oq ] ; 5 uses
  %i.amv = phi ptr [ %i.ajn, %bb.jp ], [ %i.ave, %bb.np ], [ %i.azr, %bb.oq ] ; 5 uses
  %i.amw = phi ptr [ %i.ajo, %bb.jp ], [ %i.avf, %bb.np ], [ %i.azs, %bb.oq ] ; 5 uses
  %i.amx = phi ptr [ %i.aju, %bb.jp ], [ %i.avg, %bb.np ], [ %i.azt, %bb.oq ] ; 5 uses
  %i.amy = phi ptr [ %i.ajv, %bb.jp ], [ %i.avh, %bb.np ], [ %i.azu, %bb.oq ] ; 5 uses
  %.sroa.0189.0.i.i.i.i.i = phi i64 [ -1, %bb.jp ], [ %i.avk, %bb.np ], [ %i.azx, %bb.oq ]
  %i.amz = getelementptr inbounds nuw i8, ptr %1, i64 3514 ; 2 uses
  %i.ana = load i8, ptr %i.amz, align 2, !range !23, !noalias !23509, !noundef !6
  %i.anb = trunc nuw i8 %i.ana to i1
  br i1 %i.anb, label %bb.os, label %bb.or

bb.jr:                                            ; preds = %bb.jb
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #29
          to label %.noexc61.i.i.i.i unwind label %bb.pb, !noalias !23469

.noexc61.i.i.i.i:                                 ; preds = %bb.jr
  unreachable

bb.js:                                            ; preds = %bb.jb
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #29
          to label %.noexc62.i.i.i.i unwind label %bb.pb, !noalias !23469

.noexc62.i.i.i.i:                                 ; preds = %bb.js
  unreachable

bb.jt:                                            ; preds = %bb.jn, %bb.jd
  %i.anc = phi ptr [ %i.ajh, %bb.jn ], [ %i.di, %bb.jd ] ; 6 uses
  %i.and = phi ptr [ %i.aji, %bb.jn ], [ %i.dh, %bb.jd ] ; 5 uses
  %i.ane = phi ptr [ %i.ajj, %bb.jn ], [ %.phi.trans.insert279.i, %bb.jd ] ; 6 uses
  %i.anf = phi ptr [ %i.ajk, %bb.jn ], [ %i.xo, %bb.jd ] ; 5 uses
  %i.ang = phi ptr [ %i.ajl, %bb.jn ], [ %.phi.trans.insert.i89.i, %bb.jd ] ; 6 uses
  %i.anh = phi ptr [ %i.ajm, %bb.jn ], [ %i.yp, %bb.jd ] ; 5 uses
  %i.ani = phi ptr [ %i.ajn, %bb.jn ], [ %.phi.trans.insert.i.i91.i, %bb.jd ] ; 6 uses
  %i.anj = phi ptr [ %i.ajo, %bb.jn ], [ %i.zw, %bb.jd ] ; 5 uses
  %i.ank = phi ptr [ %i.aju, %bb.jn ], [ %.phi.trans.insert174.i.i.i.i, %bb.jd ] ; 6 uses
  %i.anl = phi ptr [ %i.ajv, %bb.jn ], [ %i.ajg, %bb.jd ] ; 5 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 4 uses
  %i.ann = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.anm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jv unwind label %bb.ju, !noalias !23513 ; 2 uses

bb.ju:                                            ; preds = %bb.jt
  %i.ano = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.anm) #26
          to label %.body.i.i.i.i.i unwind label %bb.mb, !noalias !23513

bb.jv:                                            ; preds = %bb.jt
  %i.anp = extractvalue { ptr, ptr } %i.ann, 0    ; 2 uses
  %i.anq = icmp eq ptr %i.anp, null
  br i1 %i.anq, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !23509
  br label %bb.pc

bb.jx:                                            ; preds = %bb.jv
  %i.anr = extractvalue { ptr, ptr } %i.ann, 1
  store ptr %i.anp, ptr %i.x, align 8, !noalias !23509
  %i.ans = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.anr, ptr %i.ans, align 8, !noalias !23509
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 3624 ; 3 uses
  %i.anu = load i8, ptr %i.ant, align 8, !range !110, !noalias !23509, !noundef !6
  %cond.i.i.i.i.i100.i = icmp eq i8 %i.anu, 3
  br i1 %cond.i.i.i.i.i100.i, label %bb.jy, label %bb.kh

bb.jy:                                            ; preds = %bb.jx
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 3616
  %i.anw = load i8, ptr %i.anv, align 8, !range !110, !noalias !23509, !noundef !6
  %cond.i.i.i.i.i.i101.i = icmp eq i8 %i.anw, 3
  br i1 %cond.i.i.i.i.i.i101.i, label %bb.jz, label %bb.kh

bb.jz:                                            ; preds = %bb.jy
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 3608
  %i.any = load i8, ptr %i.anx, align 8, !range !110, !noalias !23509, !noundef !6
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %i.any, 3
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.ka, label %bb.kh

bb.ka:                                            ; preds = %bb.jz
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 3544
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.anz)
          to label %bb.kd unwind label %bb.kb, !noalias !23513

bb.kb:                                            ; preds = %bb.ka
  %i.aoa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aob, align 8, !noalias !23509, !align !89, !noundef !6 ; 2 uses
  %i.aoc = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aoc, label %.body.i.i.i.i.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aod = getelementptr i8, ptr %1, i64 3560
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aod, align 8, !noalias !23509
  %i.aoe = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i, i64 24
  %i.aof = load ptr, ptr %i.aoe, align 8, !noalias !23513, !nonnull !6, !noundef !6
  invoke void %i.aof(ptr noundef %.val3.i.i.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.kf, !noalias !23513, !inline_history !3848

bb.kd:                                            ; preds = %bb.ka
  %i.aog = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aog, align 8, !noalias !23509, !align !89, !noundef !6 ; 2 uses
  %i.aoh = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aoh, label %bb.kh, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aoi = getelementptr i8, ptr %1, i64 3560
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aoi, align 8, !noalias !23509
  %i.aoj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 24
  %i.aok = load ptr, ptr %i.aoj, align 8, !noalias !23513, !nonnull !6, !noundef !6
  invoke void %i.aok(ptr noundef %.val1.i.i.i.i.i.i.i.i.i)
          to label %bb.kh unwind label %bb.kg, !noalias !23513, !inline_history !10989

bb.kf:                                            ; preds = %bb.kc
  %i.aol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !23513
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.kh:                                            ; preds = %bb.ke, %bb.kd, %bb.jz, %bb.jy, %bb.jx
  %.val80.i.i.i.i.i = load ptr, ptr %i.ans, align 8, !noalias !23509, !noundef !6
  %i.aon = getelementptr i8, ptr %.val80.i.i.i.i.i, i64 440
  %.val81.i.i.i.i.i = load i64, ptr %i.aon, align 8, !noalias !23513, !noundef !6
  %i.aoo = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 2 uses
  %i.aop = load i64, ptr %i.aoo, align 8, !noalias !23509, !noundef !6
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 3480
  %i.aor = load i64, ptr %i.aoq, align 8, !noalias !23509, !noundef !6
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.kj unwind label %bb.ki, !noalias !23513

bb.ki:                                            ; preds = %bb.kh
  %i.aos = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.kj:                                            ; preds = %bb.kh
  %i.aot = add i64 %i.aor, %i.aop
  %i.aou = mul i64 %i.aot, %.val81.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !23509
  %i.aov = load i64, ptr %i.aoo, align 8, !noalias !23509, !noundef !6 ; 2 uses
  %3 = icmp ult i64 %i.aov, 1844674407370955162
  %4 = mul nuw i64 %i.aov, 10
  %i.aow = icmp ult i64 %4, %i.aou
  %5 = select i1 %3, i1 %i.aow, i1 false, !prof !55
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 3513
  %i.aoy = load i8, ptr %i.aox, align 1, !range !23, !noalias !23509, !noundef !6
  %i.aoz = trunc nuw i8 %i.aoy to i1
  %brmerge.not.i.i.i.i.i = and i1 %5, %i.aoz
  br i1 %brmerge.not.i.i.i.i.i, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9209.i.i.i.i.i)
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 3296
  %i.apb = load ptr, ptr %i.apa, align 8, !noalias !23509, !nonnull !6, !align !89, !noundef !6
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 3515
  store i8 0, ptr %i.apc, align 1, !noalias !23509
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 3304
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.aph = getelementptr inbounds nuw i8, ptr %1, i64 3408
  %i.api = load i64, ptr %i.aph, align 8, !noalias !23509
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 3416
  %i.apk = load i32, ptr %i.apj, align 8, !range !22098, !noalias !23509, !noundef !6
  %i.apl = getelementptr inbounds nuw i8, ptr %1, i64 3514
  store i8 0, ptr %i.apl, align 2, !noalias !23509
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 3424
  %.sroa.9209.56..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9209.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9209.56..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.apm, i64 32, i1 false), !noalias !23509
  %.sroa.12221.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.12221.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.9209.i.i.i.i.i, i64 36, i1 false), !noalias !23509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9209.i.i.i.i.i)
  %i.apn = load <2 x i64>, ptr %i.apf, align 8, !noalias !23509
  store <2 x i64> %i.apn, ptr %i.anm, align 8, !noalias !23509
  %.sroa.9218.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9218.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.apd, i64 24, i1 false), !noalias !23509
  %.sroa.10219.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3560
  store i64 %i.api, ptr %.sroa.10219.0..sroa_idx.i.i.i.i.i, align 8, !noalias !23509
  %.sroa.11220.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3568
  store i32 %i.apk, ptr %.sroa.11220.0..sroa_idx.i.i.i.i.i, align 8, !noalias !23509
  %.sroa.13222.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13222.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ape, i64 16, i1 false), !noalias !23509
  store ptr %i.apb, ptr %i.ant, align 8, !noalias !23509
  %.sroa.15224.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3632
  store ptr %i.apg, ptr %.sroa.15224.0..sroa_idx.i.i.i.i.i, align 8, !noalias !23509
  %.sroa.17226.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3760
  store i8 0, ptr %.sroa.17226.0..sroa_idx.i.i.i.i.i, align 8, !noalias !23509
  br label %bb.ob

bb.kl:                                            ; preds = %bb.kj
  %i.apo = getelementptr i8, ptr %1, i64 3320     ; 2 uses
  %.val78.i.i.i.i.i = load i64, ptr %i.apo, align 8, !noalias !23509, !noundef !6 ; 3 uses
  %i.app = icmp ult i64 %.val78.i.i.i.i.i, 19541042450963509
  call void @llvm.assume(i1 %i.app)
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 3488 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23526
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 19541042450963509) %.val78.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 472)
          to label %.noexc92.i.i.i.i.i unwind label %bb.kn, !noalias !23513

.noexc92.i.i.i.i.i:                               ; preds = %bb.kl
  %i.apr = load i64, ptr %i.k, align 8, !range !28, !noalias !23526, !noundef !6
  %i.aps = trunc nuw i64 %i.apr to i1
  %i.apt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.apu = load i64, ptr %i.apt, align 8, !range !22087, !noalias !23526, !noundef !6 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.aps, label %bb.km, label %bb.ko, !prof !56

bb.km:                                            ; preds = %.noexc92.i.i.i.i.i
  %i.apw = load i64, ptr %i.apv, align 8, !noalias !23526
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.apu, i64 %i.apw) #25
          to label %.noexc93.i.i.i.i.i unwind label %bb.kn, !noalias !23513

.noexc93.i.i.i.i.i:                               ; preds = %bb.km
  unreachable

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.apx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ms

bb.ko:                                            ; preds = %.noexc92.i.i.i.i.i
  %i.apy = load ptr, ptr %i.apv, align 8, !noalias !23526, !nonnull !6, !noundef !6
  %i.apz = icmp ule i64 %.val78.i.i.i.i.i, %i.apu
  call void @llvm.assume(i1 %i.apz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23526
  store i64 %i.apu, ptr %i.apq, align 8, !alias.scope !23523, !noalias !23509
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 3496 ; 2 uses
  store ptr %i.apy, ptr %i.aqa, align 8, !alias.scope !23523, !noalias !23509
  %i.aqb = getelementptr inbounds nuw i8, ptr %1, i64 3504 ; 3 uses
  store i64 0, ptr %i.aqb, align 8, !alias.scope !23523, !noalias !23509
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 3517 ; 2 uses
  store i8 1, ptr %i.aqc, align 1, !noalias !23509
  %i.aqd = getelementptr i8, ptr %1, i64 3312
  %.val82.i.i.i.i.i = load ptr, ptr %i.aqd, align 8, !noalias !23509, !nonnull !6, !noundef !6 ; 2 uses
  %.val83.i.i.i.i.i = load i64, ptr %i.apo, align 8, !noalias !23509, !noundef !6 ; 2 uses
  %.idx254.i.i.i.i.i = mul nuw nsw i64 %.val83.i.i.i.i.i, 472
  %i.aqe = getelementptr inbounds nuw i8, ptr %.val82.i.i.i.i.i, i64 %.idx254.i.i.i.i.i
  %i.aqf = icmp eq i64 %.val83.i.i.i.i.i, 0
  br i1 %i.aqf, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ko
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.721.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 169
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.w, i64 456
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.w, i64 176 ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.w, i64 312 ; 3 uses
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 320 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 321
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.w, i64 448
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.w, i64 452
  %.sroa.5131.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  br label %bb.kp

bb.kp:                                            ; preds = %bb.mo, %.lr.ph.i.i.i.i.i
  %.sroa.0128.0253.i.i.i.i.i = phi ptr [ %.val82.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aqo, %bb.mo ] ; 21 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !23509
  call void @llvm.experimental.noalias.scope.decl(metadata !23527)
  call void @llvm.experimental.noalias.scope.decl(metadata !23530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23532
  %i.aqp = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 336
  invoke fastcc void @_RNvXs3_NtNtCs5QaNqjAn6vc_5shard5query10query_enumNtB5_9QueryEnumNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.aqp) #30
          to label %.noexc97.i.i.i.i.i unwind label %bb.mc, !noalias !23513

.noexc97.i.i.i.i.i:                               ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23532
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 208 ; 2 uses
  %i.aqr = load i64, ptr %i.aqq, align 8, !range !167, !alias.scope !23530, !noalias !23533, !noundef !6
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aqr, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %.noexc97.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23532
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.aqq)
          to label %bb.ku unwind label %bb.kt, !noalias !23533

bb.kr:                                            ; preds = %.noexc97.i.i.i.i.i
  store i64 -2, ptr %i.i, align 8, !noalias !23532
  br label %bb.ks

bb.ks:                                            ; preds = %bb.ku, %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23532
  %i.aqs = load i64, ptr %.sroa.0128.0253.i.i.i.i.i, align 8, !range !5, !alias.scope !23530, !noalias !23533, !noundef !6 ; 3 uses
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.aqs, 2      ; 2 uses
  br i1 %.not8.i.i.i.i.i.i, label %bb.lb, label %bb.kv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.ld, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.kt
  %.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aqt, %bb.kt ], [ %.pn.pn.i.i.i.i.i.i, %bb.ld ], [ %.pn.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query10query_enum9QueryEnumECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(112) %i.j) #26
          to label %.body98.i.i.i.i.i unwind label %bb.lu, !noalias !23533

bb.kt:                                            ; preds = %bb.kq
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.ku:                                            ; preds = %bb.kq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !23532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23532
  br label %bb.ks

bb.kv:                                            ; preds = %bb.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !23534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23532
  %i.aqu = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 8
  %i.aqv = load i64, ptr %i.aqu, align 8, !alias.scope !23537, !noalias !23538
  %i.aqw = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 168
  %i.aqx = load i8, ptr %i.aqw, align 8, !range !23, !alias.scope !23537, !noalias !23538, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i)
  %i.aqy = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 16
  %i.aqz = load i64, ptr %i.aqy, align 8, !range !5, !alias.scope !23537, !noalias !23538, !noundef !6 ; 2 uses
  %.not.i.i95.i.i.i.i.i = icmp eq i64 %i.aqz, 2
  br i1 %.not.i.i95.i.i.i.i.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !23538
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %i.ara = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 169
  %i.arb = load i8, ptr %i.ara, align 1, !range !23, !alias.scope !23537, !noalias !23538, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.i.i.i.i.i.i.i)
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 40
  %i.ard = load i64, ptr %i.arc, align 8, !range !5, !alias.scope !23537, !noalias !23538, !noundef !6 ; 2 uses
  %.not20.i.i.i.i.i.i.i = icmp eq i64 %i.ard, 2
  br i1 %.not20.i.i.i.i.i.i.i, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0128.0253.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !23538
  br label %bb.kz

end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB6_10Collection5query0Csl8OoimOLbh_6qdrant:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i64 %.lcssa197, ptr %i.eu, align 8, !noalias !38637
  %xtraiter200 = and i64 %.val99.i, 1
  %i.ev = icmp eq i64 %i.ei, 0
  br i1 %i.ev, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.u
  %unroll_iter204 = and i64 %.val99.i, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.new
  %.sroa.04.0.i111.i = phi i64 [ 0, %.new ], [ %i.fc, %bb.v ] ; 3 uses
  %.sroa.02.0.i112.i = phi i64 [ 0, %.new ], [ %i.fb, %bb.v ]
  %niter205 = phi i64 [ 0, %.new ], [ %niter205.next.1, %bb.v ]
  %i.ew = getelementptr inbounds nuw [568 x i8], ptr %.val98.i, i64 %.sroa.04.0.i111.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 560
  %.val.i113.i = load i64, ptr %i.ex, align 8, !noalias !38641, !noundef !6
  %i.ey = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.sroa.02.0.i112.i, i64 %.val.i113.i)
  %i.ez = getelementptr inbounds nuw [568 x i8], ptr %.val98.i, i64 %.sroa.04.0.i111.i
  %i.fa = getelementptr i8, ptr %i.ez, i64 1128
  %.val.i113.i.1 = load i64, ptr %i.fa, align 8, !noalias !38641, !noundef !6
  %i.fb = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.ey, i64 %.val.i113.i.1) ; 3 uses
  %i.fc = add nuw i64 %.sroa.04.0.i111.i, 2       ; 2 uses
  %niter205.next.1 = add i64 %niter205, 2         ; 2 uses
  %niter205.ncmp.1 = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1, label %.loopexit.i.unr-lcssa, label %bb.v

.loopexit.i.unr-lcssa:                            ; preds = %bb.v
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.unr-lcssa, %bb.u
  %.sroa.04.0.i111.i.epil.init = phi i64 [ 0, %bb.u ], [ %i.fc, %.loopexit.i.unr-lcssa ]
  %.sroa.02.0.i112.i.epil.init = phi i64 [ 0, %bb.u ], [ %i.fb, %.loopexit.i.unr-lcssa ]
  %lcmp.mod203 = trunc i64 %.val99.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.fd = getelementptr inbounds nuw [568 x i8], ptr %.val98.i, i64 %.sroa.04.0.i111.i.epil.init
  %i.fe = getelementptr i8, ptr %i.fd, i64 560
  %.val.i113.i.epil = load i64, ptr %i.fe, align 8, !noalias !38641, !noundef !6
  %i.ff = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.sroa.02.0.i112.i.epil.init, i64 %.val.i113.i.epil)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.fb, %.loopexit.i.unr-lcssa ], [ %i.ff, %.epil.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i64 %.lcssa, ptr %i.fg, align 8, !noalias !38637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !38637
  %i.fh = load ptr, ptr %i.cg, align 8, !noalias !38637, !nonnull !6, !align !89, !noundef !6
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 360
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store ptr %i.fi, ptr %i.fj, align 8, !noalias !38637
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !38637
  br label %bb.ab

.body.i:                                          ; preds = %bb.aq, %bb.ao, %bb.ak, %bb.aj, %bb.ac
  %.pn39.i = phi { ptr, i32 } [ %i.gx, %bb.aq ], [ %i.gf, %bb.ak ], [ %i.gf, %bb.aj ], [ %i.ft, %bb.ac ], [ %i.gr, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !38637
  br label %bb.o

._crit_edge:                                      ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !38637
  %i.fk = icmp ult i64 %.val99.i, 16238331050800662
  tail call void @llvm.assume(i1 %i.fk)
  invoke void @_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching19empty_batch_resultsNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, i64 noundef %.val99.i)
          to label %bb.x unwind label %bb.w, !noalias !38641

bb.w:                                             ; preds = %._crit_edge
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !38637
  br label %bb.o

bb.x:                                             ; preds = %._crit_edge
  %.sroa.5245.i.sroa.0.0.copyload78 = load i64, ptr %i.an, align 8, !noalias !38637
  %.sroa.5245.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5245.i.sroa.7.0.copyload81 = load ptr, ptr %.sroa.5245.i.sroa.7.0..sroa_idx, align 8, !noalias !38637
  %.sroa.5245.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.5245.i.sroa.8.0.copyload84 = load i64, ptr %.sroa.5245.i.sroa.8.0..sroa_idx, align 8, !noalias !38637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !38637
  br label %bb.y

bb.y:                                             ; preds = %bb.fm, %bb.x
  %i.fm = phi ptr [ %i.cb, %bb.x ], [ %i.pk, %bb.fm ] ; 5 uses
  %i.fn = phi ptr [ %i.cc, %bb.x ], [ %i.pl, %bb.fm ] ; 5 uses
  %.sroa.5245.i.sroa.0.2 = phi i64 [ %.sroa.5245.i.sroa.0.0.copyload78, %bb.x ], [ %.sroa.3.i.sroa.0.0.copyload, %bb.fm ]
  %.sroa.5245.i.sroa.7.2 = phi ptr [ %.sroa.5245.i.sroa.7.0.copyload81, %bb.x ], [ %.sroa.3.i.sroa.5.0.copyload, %bb.fm ]
  %.sroa.5245.i.sroa.8.2 = phi i64 [ %.sroa.5245.i.sroa.8.0.copyload84, %bb.x ], [ %.sroa.3.i.sroa.6.0.copyload, %bb.fm ]
  %.sroa.0242.0.i = phi i64 [ -1, %bb.x ], [ %i.po, %bb.fm ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 992
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fo)
          to label %bb.fp unwind label %bb.fo, !noalias !38641

bb.z:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #29
          to label %.noexc21 unwind label %bb.gq

.noexc21:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #29
          to label %.noexc22 unwind label %bb.gq

.noexc22:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %.loopexit.i, %bb.l
  %i.fp = phi ptr [ %i.cb, %.loopexit.i ], [ %i.ca, %bb.l ] ; 6 uses
  %i.fq = phi ptr [ %i.cc, %.loopexit.i ], [ %i.bz, %bb.l ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 4 uses
  %i.fs = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.fr, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ad unwind label %bb.ac, !noalias !38641 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.fr) #26
          to label %.body.i unwind label %bb.az, !noalias !38641

bb.ad:                                            ; preds = %bb.ab
  %i.fu = extractvalue { ptr, ptr } %i.fs, 0      ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !38637
  br label %bb.gr

bb.af:                                            ; preds = %bb.ad
  %i.fw = extractvalue { ptr, ptr } %i.fs, 1
  store ptr %i.fu, ptr %i.am, align 8, !noalias !38637
  %i.fx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8, !noalias !38637
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  %i.fz = load i8, ptr %i.fy, align 8, !range !110, !noalias !38637, !noundef !6
  %cond.i.i = icmp eq i8 %i.fz, 3
  br i1 %cond.i.i, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.gb = load i8, ptr %i.ga, align 8, !range !110, !noalias !38637, !noundef !6
  %cond.i.i.i = icmp eq i8 %i.gb, 3
  br i1 %cond.i.i.i, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.gd = load i8, ptr %i.gc, align 8, !range !110, !noalias !38637, !noundef !6
  %cond.i.i.i.i = icmp eq i8 %i.gd, 3
  br i1 %cond.i.i.i.i, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 1112
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ge)
          to label %bb.al unwind label %bb.aj, !noalias !38641

bb.aj:                                            ; preds = %bb.ai
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %.val2.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !noalias !38637, !align !89, !noundef !6 ; 2 uses
  %i.gh = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.gh, label %.body.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gi = getelementptr i8, ptr %1, i64 1128
  %.val3.i.i.i.i.i = load ptr, ptr %i.gi, align 8, !noalias !38637
  %i.gj = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !38641, !nonnull !6, !noundef !6
  invoke void %i.gk(ptr noundef %.val3.i.i.i.i.i)
          to label %.body.i unwind label %bb.an, !noalias !38641, !inline_history !3848

bb.al:                                            ; preds = %bb.ai
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %.val.i.i.i.i.i = load ptr, ptr %i.gl, align 8, !noalias !38637, !align !89, !noundef !6 ; 2 uses
  %i.gm = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.gm, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gn = getelementptr i8, ptr %1, i64 1128
  %.val1.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !noalias !38637
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !38641, !nonnull !6, !noundef !6
  invoke void %i.gp(ptr noundef %.val1.i.i.i.i.i)
          to label %bb.ap unwind label %bb.ao, !noalias !38641, !inline_history !10989

bb.an:                                            ; preds = %bb.ak
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !38641
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ap:                                            ; preds = %bb.am, %bb.al, %bb.ah, %bb.ag, %bb.af
  %.val.i = load ptr, ptr %i.fx, align 8, !noalias !38637, !noundef !6
  %i.gs = getelementptr i8, ptr %.val.i, i64 440
  %.val89.i = load i64, ptr %i.gs, align 8, !noalias !38641, !noundef !6 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !38637, !noundef !6
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !38637, !noundef !6
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.ar unwind label %bb.aq, !noalias !38641

bb.aq:                                            ; preds = %bb.ap
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ar:                                            ; preds = %bb.ap
  %i.gy = call noundef i64 @llvm.uadd.sat.i64(i64 %i.gu, i64 %i.gw) ; 2 uses
  %i.gz = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val89.i, i64 %i.gy)
  %i.ha = extractvalue { i64, i1 } %i.gz, 1
  %3 = mul nuw i64 %i.gy, %.val89.i
  %.sroa.0.0.i116.i = select i1 %i.ha, i64 -1, i64 %3, !prof !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !38637
  %i.hb = load i64, ptr %i.gt, align 8, !noalias !38637, !noundef !6 ; 2 uses
  %4 = icmp ult i64 %i.hb, 1844674407370955162
  %5 = mul nuw i64 %i.hb, 10
  %i.hc = icmp ult i64 %5, %.sroa.0.0.i116.i
  %6 = select i1 %4, i1 %i.hc, i1 false, !prof !55
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 1081
  %i.he = load i8, ptr %i.hd, align 1, !range !23, !noalias !38637, !noundef !6
  %i.hf = trunc nuw i8 %i.he to i1
  %brmerge.not.i = and i1 %6, %i.hf
  br i1 %brmerge.not.i, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !38637, !nonnull !6, !align !89, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 1082
  store i8 0, ptr %i.hi, align 2, !noalias !38637
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !noalias !38637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !noalias !38637
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.hm = load <2 x i64>, ptr %i.hl, align 8, !noalias !38637
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.ho = load i64, ptr %i.hn, align 8, !noalias !38637
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.hq = load i32, ptr %i.hp, align 8, !range !22098, !noalias !38637, !noundef !6
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 992
  call void @llvm.experimental.noalias.scope.decl(metadata !38651)
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !38651, !noalias !38654, !nonnull !6, !noundef !6 ; 2 uses
  %i.ht = atomicrmw add ptr %i.hs, i64 1 monotonic, align 8, !noalias !38656
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !38651, !noalias !38654, !nonnull !6, !noundef !6 ; 2 uses
  %i.hx = atomicrmw add ptr %i.hw, i64 1 monotonic, align 8, !noalias !38656
  %i.hy = icmp slt i64 %i.hx, 0
  br i1 %i.hy, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ia = load i8, ptr %i.hz, align 8, !range !23, !alias.scope !38651, !noalias !38654, !noundef !6
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !38651, !noalias !38654, !nonnull !6, !noundef !6 ; 2 uses
  %i.id = atomicrmw add ptr %i.ic, i64 1 monotonic, align 8, !noalias !38656
  %i.ie = icmp slt i64 %i.id, 0
  br i1 %i.ie, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 928
  %.sroa.8227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8227.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !38637
  %.sroa.12231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12231.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !38637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store <2 x i64> %i.hm, ptr %i.fr, align 8, !noalias !38637
  %.sroa.9228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store i64 %i.ho, ptr %.sroa.9228.0..sroa_idx.i, align 8, !noalias !38637
  %.sroa.10229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store i32 %i.hq, ptr %.sroa.10229.0..sroa_idx.i, align 8, !noalias !38637
  %.sroa.11230.sroa.7.0..sroa.11230.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1144
  store ptr %i.hs, ptr %.sroa.11230.sroa.7.0..sroa.11230.0..sroa_idx.sroa_idx.i, align 8, !noalias !38637
  %.sroa.11230.sroa.8.0..sroa.11230.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  store ptr %i.hw, ptr %.sroa.11230.sroa.8.0..sroa.11230.0..sroa_idx.sroa_idx.i, align 8, !noalias !38637
  %.sroa.11230.sroa.9.0..sroa.11230.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1160
  store ptr %i.ic, ptr %.sroa.11230.sroa.9.0..sroa.11230.0..sroa_idx.sroa_idx.i, align 8, !noalias !38637
  %.sroa.11230.sroa.10.0..sroa.11230.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1168
  store i8 %i.ia, ptr %.sroa.11230.sroa.10.0..sroa.11230.0..sroa_idx.sroa_idx.i, align 8, !noalias !38637
  store ptr %i.hh, ptr %i.fy, align 8, !noalias !38637
  %.sroa.14233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.if, ptr %.sroa.14233.0..sroa_idx.i, align 8, !noalias !38637
  %.sroa.16235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.16235.0..sroa_idx.i, align 8, !noalias !38637
  br label %bb.gi

bb.az:                                            ; preds = %bb.gp, %bb.gj, %bb.gh, %bb.gg, %bb.fz, %bb.fn, %bb.er, %.critedge87.i, %.critedge86.i, %bb.en, %bb.el, %bb.ek, %bb.ej, %bb.ac, %bb.o
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !38641
  unreachable

bb.ba:                                            ; preds = %bb.ar
  %i.ih = getelementptr i8, ptr %1, i64 888       ; 2 uses
  %.val100.i = load i64, ptr %i.ih, align 8, !noalias !38637, !noundef !6 ; 3 uses
  %i.ii = icmp ult i64 %.val100.i, 16238331050800662
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !38660
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef range(i64 0, 16238331050800662) %.val100.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 568)
          to label %.noexc120.i unwind label %bb.bc, !noalias !38641

.noexc120.i:                                      ; preds = %bb.ba
  %i.ik = load i64, ptr %i.z, align 8, !range !28, !noalias !38660, !noundef !6
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !22087, !noalias !38660, !noundef !6 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br i1 %i.il, label %bb.bb, label %bb.bd, !prof !56

bb.bb:                                            ; preds = %.noexc120.i
  %i.ip = load i64, ptr %i.io, align 8, !noalias !38660
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.in, i64 %i.ip) #25
          to label %.noexc121.i unwind label %bb.bc, !noalias !38641

.noexc121.i:                                      ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.bd:                                            ; preds = %.noexc120.i
  %i.ir = load ptr, ptr %i.io, align 8, !noalias !38660, !nonnull !6, !noundef !6
  %i.is = icmp ule i64 %.val100.i, %i.in
  call void @llvm.assume(i1 %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !38660
  store i64 %i.in, ptr %i.ij, align 8, !alias.scope !38657, !noalias !38637
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 2 uses
  store ptr %i.ir, ptr %i.it, align 8, !alias.scope !38657, !noalias !38637
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 3 uses
  store i64 0, ptr %i.iu, align 8, !alias.scope !38657, !noalias !38637
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 1084 ; 2 uses
  store i8 1, ptr %i.iv, align 4, !noalias !38637
  %i.iw = getelementptr i8, ptr %1, i64 880
  %.val102.i = load ptr, ptr %i.iw, align 8, !noalias !38637, !nonnull !6, !noundef !6 ; 2 uses
  %.val103.i = load i64, ptr %i.ih, align 8, !noalias !38637, !noundef !6 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val103.i, 568
  %i.ix = getelementptr inbounds nuw i8, ptr %.val102.i, i64 %.idx.i
  %i.iy = icmp eq i64 %.val103.i, 0
  br i1 %i.iy, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bd
  %i.iz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.jf = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.04.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.04.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 169
  %i.ji = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.al, i64 208 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.al, i64 360 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.al, i64 256 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.al, i64 544
  %i.jn = getelementptr inbounds nuw i8, ptr %i.al, i64 548
  %i.jo = getelementptr inbounds nuw i8, ptr %i.al, i64 552
  %i.jp = getelementptr inbounds nuw i8, ptr %i.al, i64 232 ; 8 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.al, i64 176 ; 5 uses
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.al, i64 184 ; 2 uses
  %.sroa.614.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.al, i64 240 ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.eh, %.lr.ph.i
  %.sroa.0158.0295.i = phi ptr [ %.val102.i, %.lr.ph.i ], [ %i.jr, %bb.eh ] ; 41 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0158.0295.i, i64 568 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !38637
  call void @llvm.experimental.noalias.scope.decl(metadata !38661)
  call void @llvm.experimental.noalias.scope.decl(metadata !38664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !38666
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0158.0295.i, i64 208
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.js)
          to label %.noexc125.i unwind label %bb.dw, !noalias !38641

.noexc125.i:                                      ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !38666
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0158.0295.i, i64 360 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !range !266, !alias.scope !38664, !noalias !38667, !noundef !6 ; 4 uses
  %.not.i.i = icmp eq i64 %i.ju, -1
  br i1 %.not.i.i, label %bb.cj, label %bb.bf

end_hunk_1
