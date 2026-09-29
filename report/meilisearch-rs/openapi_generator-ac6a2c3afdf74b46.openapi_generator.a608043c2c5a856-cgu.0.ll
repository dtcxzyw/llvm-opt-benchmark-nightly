Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
          to label %bb.no unwind label %.body.thread141.i.i.i ; 2 uses

bb.nn:                                            ; preds = %bb.no, %bb.nk
  %i.arx = getelementptr inbounds nuw i8, ptr %i.kh, i64 584 ; 2 uses
  %i.ary = load i64, ptr %i.arx, align 8, !range !21, !alias.scope !7644, !noalias !7645, !noundef !16
  %.not59.i.i.i = icmp eq i64 %i.ary, -9223372036854775808
  br i1 %.not59.i.i.i, label %bb.nq, label %bb.np

bb.no:                                            ; preds = %bb.nm
  %.not57.i.i.i = icmp eq ptr %i.arw, null
  br i1 %.not57.i.i.i, label %bb.nn, label %bb.na

bb.np:                                            ; preds = %bb.nn
  %i.arz = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha927e370c691d21cE(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.arx)
          to label %bb.nr unwind label %.body.thread141.i.i.i ; 2 uses

bb.nq:                                            ; preds = %bb.nr, %bb.nn
  %i.asa = getelementptr inbounds nuw i8, ptr %i.kh, i64 608 ; 2 uses
  %i.asb = load i64, ptr %i.asa, align 8, !range !21, !alias.scope !7644, !noalias !7645, !noundef !16
  %.not62.i.i.i = icmp eq i64 %i.asb, -9223372036854775808
  br i1 %.not62.i.i.i, label %bb.nt, label %bb.ns

bb.nr:                                            ; preds = %bb.np
  %.not60.i.i.i = icmp eq ptr %i.arz, null
  br i1 %.not60.i.i.i, label %bb.nq, label %bb.na

bb.ns:                                            ; preds = %bb.nq
  %i.asc = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h2915a1a736dfb7e8E(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.asa)
          to label %bb.nu unwind label %.body.thread141.i.i.i ; 2 uses

bb.nt:                                            ; preds = %bb.nu, %bb.nq
  %i.asd = getelementptr inbounds nuw i8, ptr %i.kh, i64 528
  %i.ase = load i64, ptr %i.asd, align 8, !alias.scope !7644, !noalias !7645, !noundef !16 ; 3 uses
  %i.asf = icmp sgt i64 %i.ase, -1
  call void @llvm.assume(i1 %i.asf)
  %i.asg = icmp eq i64 %i.ase, 0
  br i1 %i.asg, label %bb.nw, label %bb.nv

bb.nu:                                            ; preds = %bb.ns
  %.not63.i.i.i = icmp eq ptr %i.asc, null
  br i1 %.not63.i.i.i, label %bb.nt, label %bb.na

bb.nv:                                            ; preds = %bb.nt
  %i.ash = getelementptr inbounds nuw i8, ptr %i.kh, i64 520
  %.val.i.i.i = load ptr, ptr %i.ash, align 8, !alias.scope !7644, !noalias !7645
  %i.asi = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @345, i64 noundef 7, ptr %.val.i.i.i, i64 %i.ase)
          to label %bb.nx unwind label %.body.thread141.i.i.i, !noalias !7550 ; 2 uses

bb.nw:                                            ; preds = %bb.nx, %bb.nt
  %i.asj = getelementptr inbounds nuw i8, ptr %i.kh, i64 776
  %i.ask = load ptr, ptr %i.asj, align 8, !alias.scope !7644, !noalias !7645, !noundef !16 ; 2 uses
  %.not67.i.i.i = icmp eq ptr %i.ask, null
  br i1 %.not67.i.i.i, label %bb.nz, label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  %.not65.i.i.i = icmp eq ptr %i.asi, null
  br i1 %.not65.i.i.i, label %bb.nw, label %bb.na

bb.ny:                                            ; preds = %bb.nw
  %i.asl = getelementptr inbounds nuw i8, ptr %i.kh, i64 800
  %.val77.i.i.i = load i64, ptr %i.asl, align 8, !alias.scope !7715, !noalias !7716, !noundef !16
  %i.asm = invoke fastcc noundef align 8 ptr @"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E"(ptr nonnull %i.ask, i64 %.val77.i.i.i, ptr noalias noundef align 8 dereferenceable(96) %i.hp)
          to label %bb.oa unwind label %.body.thread141.i.i.i, !noalias !7550 ; 2 uses

bb.nz:                                            ; preds = %bb.oa, %bb.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !noalias !7550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hn, ptr noundef nonnull align 8 dereferenceable(96) %i.hp, i64 96, i1 false), !noalias !7550
  invoke void @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6c83369807a7ac6cE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.kf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.hn)
          to label %bb.oj unwind label %bb.oi

bb.oa:                                            ; preds = %bb.ny
  %.not68.i.i.i = icmp eq ptr %i.asm, null
  br i1 %.not68.i.i.i, label %bb.nz, label %bb.na

.body.thread.i.i.i:                               ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i85.i.i.i", %.body.thread141.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i"
  %eh.lpad-body139.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread141.i.i.i ], [ %eh.lpad-body.i.i101.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i85.i.i.i" ], [ %i.adq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7717)
  %i.asn = load i64, ptr %i.hp, align 8, !range !21, !alias.scope !7717, !noalias !7550, !noundef !16
  %.not.i.i.i145 = icmp eq i64 %i.asn, -9223372036854775808
  br i1 %.not.i.i.i145, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %.body.thread.i.i.i
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.hp) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i" unwind label %bb.oe, !noalias !7550, !inline_history !27

bb.oc:                                            ; preds = %.body.thread.i.i.i
  %i.aso = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !23, !alias.scope !7718, !noalias !7550, !noundef !16
  %i.asp = icmp eq i64 %i.aso, -9223372036854775803
  br i1 %i.asp, label %.body, label %bb.od

bb.od:                                            ; preds = %bb.oc
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i)
          to label %.body unwind label %bb.oh, !noalias !7719

bb.oe:                                            ; preds = %bb.ob
  %i.asq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %.val2.i.i.i = load i64, ptr %i.asr, align 8, !range !21, !alias.scope !7717, !noalias !7550, !noundef !16 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.of, label %.body.i.i

bb.of:                                            ; preds = %bb.oe
  %i.ass = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %.val3.i.i.i = load ptr, ptr %i.ass, align 8, !alias.scope !7717, !noalias !7550, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7720
  br label %.body.i.i

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i": ; preds = %bb.ob
  %i.ast = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %.val.i1.i.i = load i64, ptr %i.ast, align 8, !range !21, !alias.scope !7717, !noalias !7550, !noundef !16 ; 2 uses
  %switch5.i.i.i = icmp sgt i64 %.val.i1.i.i, 0
  br i1 %switch5.i.i.i, label %bb.og, label %.body

bb.og:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i"
  %i.asu = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %.val1.i.i.i = load ptr, ptr %i.asu, align 8, !alias.scope !7717, !noalias !7550, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7720
  br label %.body

bb.oh:                                            ; preds = %bb.od
  %i.asv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.oh, %bb.of, %bb.oe
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !7550
  unreachable

.body:                                            ; preds = %bb.oi, %bb.og, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i", %bb.od, %bb.oc, %bb.nf, %bb.ne, %.body162
  %.sroa.071.2 = phi i8 [ %.sroa.071.4, %.body162 ], [ %.sroa.071.3, %bb.oi ], [ 1, %bb.og ], [ 1, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i" ], [ 1, %bb.od ], [ 1, %bb.oc ], [ 1, %bb.nf ], [ 1, %bb.ne ]
  %.pn116 = phi { ptr, i32 } [ %.pn114, %.body162 ], [ %i.asw, %bb.oi ], [ %eh.lpad-body139.i.i.i, %bb.og ], [ %eh.lpad-body139.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i" ], [ %eh.lpad-body139.i.i.i, %bb.od ], [ %eh.lpad-body139.i.i.i, %bb.oc ], [ %i.arq, %bb.nf ], [ %i.arq, %bb.ne ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$utoipa..openapi..OpenApi$GT$17hd5704d9a60762741E"(ptr noalias noundef align 8 dereferenceable(824) %i.kh) #33
          to label %bb.fj unwind label %bb.ahi

bb.oi:                                            ; preds = %bb.nz, %bb.nd, %bb.fl, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit440", %bb.ok
  %.sroa.071.3 = phi i8 [ 1, %bb.ok ], [ %.sroa.071.6, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441" ], [ 0, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit440" ], [ 1, %bb.nz ], [ 1, %bb.fl ], [ 1, %bb.nd ]
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread1890:                                      ; preds = %bb.ng, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i", %bb.nc, %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !7550
  br label %._crit_edge

bb.oj:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !7550
  %.pr.pre = load i64, ptr %i.kf, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !7550
  %i.asx = icmp eq i64 %.pr.pre, -9223372036854775803
  br i1 %i.asx, label %._crit_edge, label %bb.ol

._crit_edge:                                      ; preds = %.thread1890, %bb.oj
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.ok

bb.ok:                                            ; preds = %._crit_edge, %.thread
  %i.asy = phi ptr [ %.pre, %._crit_edge ], [ %i.ade, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  %i.asz = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hb89519a85d0c63efE"(ptr noalias noundef nonnull align 8 %i.asy)
          to label %bb.ahj unwind label %bb.oi

bb.ol:                                            ; preds = %bb.oj
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.575.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  store i64 %.pr.pre, ptr %i.kg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %.sroa.474.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ata = trunc nuw i8 %i.aba to i1
  br i1 %i.ata, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.pb, %bb.ol
  %i.atb = trunc nuw i8 %i.abl to i1
  br i1 %i.atb, label %bb.pd, label %bb.pc

bb.on:                                            ; preds = %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  %i.atc = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg)
          to label %.noexc158 unwind label %bb.pa ; 4 uses

.noexc158:                                        ; preds = %bb.on
  %.not.i.i156 = icmp eq ptr %i.atc, null
  br i1 %.not.i.i156, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i, label %bb.oo

bb.oo:                                            ; preds = %.noexc158
  %i.atd = load i64, ptr %i.atc, align 8, !range !38, !noundef !16
  %i.ate = icmp sgt i64 %i.atd, -1
  br i1 %i.ate, label %bb.op, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i

_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i: ; preds = %bb.oo, %.noexc158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !7721
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.fw)
          to label %.noexc159 unwind label %bb.pa

.noexc159:                                        ; preds = %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i
  %i.atf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hb0c7329a645b5af6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.fw)
          to label %.thread489 unwind label %bb.pa

.thread489:                                       ; preds = %.noexc159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !7721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.op:                                            ; preds = %bb.oo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !noalias !7722
  %i.atg = getelementptr i8, ptr %i.atc, i64 8
  %.val.i = load ptr, ptr %i.atg, align 8, !nonnull !16, !noundef !16
  %i.ath = getelementptr i8, ptr %i.atc, i64 16
  %.val18.i = load i64, ptr %i.ath, align 8, !noundef !16
  invoke fastcc void @_ZN17openapi_generator30routes_missing_operation_field17h4542a4e0d342267aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.gf, ptr nonnull %.val.i, i64 %.val18.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @190, i64 noundef 7)
          to label %.noexc161 unwind label %bb.pa

.noexc161:                                        ; preds = %bb.op
  %i.ati = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.atj = load i64, ptr %i.ati, align 8, !noalias !7722, !noundef !16 ; 5 uses
  %i.atk = icmp ult i64 %i.atj, 384307168202282326
  call void @llvm.assume(i1 %i.atk)
  %i.atl = icmp eq i64 %i.atj, 0
  br i1 %i.atl, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %.noexc161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !7722
  store ptr @192, ptr %i.ge, align 8, !noalias !7722
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 1, ptr %i.atm, align 8, !noalias !7722
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store ptr null, ptr %i.atn, align 8, !noalias !7722
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ato, align 8, !noalias !7722
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store i64 0, ptr %i.atp, align 8, !noalias !7722
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ge)
          to label %.thread.i unwind label %.loopexit.split-lp.i

bb.or:                                            ; preds = %.noexc161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !7722
  store ptr @194, ptr %i.gd, align 8, !noalias !7722
  %i.atq = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 1, ptr %i.atq, align 8, !noalias !7722
  %i.atr = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  store ptr null, ptr %i.atr, align 8, !noalias !7722
  %i.ats = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ats, align 8, !noalias !7722
  %i.att = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i64 0, ptr %i.att, align 8, !noalias !7722
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.gd)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.ow
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

.loopexit.split-lp.i:                             ; preds = %bb.oz, %bb.oy, %._crit_edge.i, %bb.or, %bb.oq
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

bb.os:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE"(ptr noalias noundef align 8 dereferenceable(24) %i.gf) #33
  br label %.body162

.thread.i:                                        ; preds = %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !7722
  %i.atu = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.val.i22.i = load ptr, ptr %i.atu, align 8, !alias.scope !7723, !noalias !7722, !nonnull !16, !noundef !16
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i"

bb.ot:                                            ; preds = %bb.oz
  call void @llvm.experimental.noalias.scope.decl(metadata !7724)
  call void @llvm.experimental.noalias.scope.decl(metadata !7725)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157", %bb.ot
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.atw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157" ], [ 0, %bb.ot ] ; 2 uses
  %i.atv = getelementptr inbounds nuw [24 x i8], ptr %i.aud, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.atw = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.atv, align 8, !alias.scope !7725, !noalias !7724 ; 2 uses
  %i.atx = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.atx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157", label %bb.ou

bb.ou:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aty = getelementptr i8, ptr %i.atv, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.aty, align 8, !alias.scope !7725, !noalias !7724, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7726
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157": ; preds = %bb.ou, %.lr.ph.i.i.i.i
  %i.atz = icmp eq i64 %i.atw, %i.atj
  br i1 %i.atz, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157", %.thread.i
  %.val.i24.i = phi ptr [ %.val.i22.i, %.thread.i ], [ %i.aud, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157" ]
  %.sroa.0.023.i = phi ptr [ null, %.thread.i ], [ %i.aul, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i157" ] ; 2 uses
  %.val2.i.i = load i64, ptr %i.gf, align 8, !range !17, !alias.scope !7724, !noalias !7722, !noundef !16 ; 2 uses
  %i.aua = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aua, label %bb.pb, label %bb.ov

bb.ov:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i"
  %i.aub = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i, i64 noundef %i.aub, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7724
  br label %bb.pb

.lr.ph.i:                                         ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !7722
  %i.auc = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.aud = load ptr, ptr %i.auc, align 8, !noalias !7722, !nonnull !16, !noundef !16 ; 4 uses
  %.idx.i = mul nuw nsw i64 %i.atj, 24
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 %.idx.i
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.auf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.aug = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.auh = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.aui = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ox, %.lr.ph.i
  %.sroa.015.025.i = phi ptr [ %i.aud, %.lr.ph.i ], [ %i.auj, %bb.ox ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !7722
  store ptr %.sroa.015.025.i, ptr %i.gc, align 8, !noalias !7722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !7722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !noalias !7722
  store ptr %i.gc, ptr %i.ga, align 8, !noalias !7722
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !7722
  store ptr @55, ptr %i.gb, align 8, !noalias !7722
  store i64 2, ptr %i.auf, align 8, !noalias !7722
  store ptr null, ptr %i.aug, align 8, !noalias !7722
  store ptr %i.ga, ptr %i.auh, align 8, !noalias !7722
  store i64 1, ptr %i.aui, align 8, !noalias !7722
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.gb)
          to label %bb.ox unwind label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.ox
  invoke fastcc void @_ZN17openapi_generator22print_doc_comment_help17h8990527aaa26e021E()
          to label %bb.oy unwind label %.loopexit.split-lp.i

bb.ox:                                            ; preds = %bb.ow
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !noalias !7722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !noalias !7722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !7722
  %i.auk = icmp eq ptr %i.auj, %i.aue
  br i1 %i.auk, label %._crit_edge.i, label %bb.ow

bb.oy:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !7722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !7722
  store i64 %i.atj, ptr %i.fx, align 8, !noalias !7722
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !7722
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !7722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !7727
  store ptr @196, ptr %i.fv, align 8, !noalias !7728
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7728
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr %i.fy, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7728
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7728
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !7728
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.fv)
          to label %bb.oz unwind label %.loopexit.split-lp.i

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !7727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !7722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !7722
  %i.aul = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17haef158ae05b406a1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fz)
          to label %bb.ot unwind label %.loopexit.split-lp.i

.body162:                                         ; preds = %bb.agj, %.body410, %common.resume.sink.split.i, %bb.zr, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i", %bb.ss, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457", %bb.px, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i", %bb.os, %bb.pa, %bb.pi
  %.sroa.071.4 = phi i8 [ 1, %common.resume.sink.split.i ], [ 1, %bb.os ], [ 1, %bb.pi ], [ 1, %bb.ss ], [ 1, %bb.px ], [ %.sroa.071.5, %bb.pa ], [ 1, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i" ], [ 1, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457" ], [ 1, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i" ], [ 1, %bb.zr ], [ 0, %.body410 ], [ 0, %bb.agj ]
  %.pn114 = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %lpad.phi.i, %bb.os ], [ %lpad.phi.i171, %bb.pi ], [ %eh.lpad-body.i, %bb.ss ], [ %.pn.pn.i, %bb.px ], [ %i.aum, %bb.pa ], [ %.pn.pn.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i" ], [ %eh.lpad-body.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457" ], [ %.pn78.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i" ], [ %i.cup, %bb.zr ], [ %.pn, %.body410 ], [ %.pn, %bb.agj ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef align 8 dereferenceable(72) %i.kg) #33
          to label %.body unwind label %bb.ahi

bb.pa:                                            ; preds = %.noexc159, %.noexc197, %.noexc243, %.noexc320, %bb.afu, %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.thread.i", %bb.zp, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i249, %bb.so, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i204, %bb.ps, %bb.pf, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i165, %bb.pd, %bb.op, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i, %bb.on
  %.sroa.071.5 = phi i8 [ 1, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i249 ], [ 1, %bb.zp ], [ 0, %bb.afu ], [ 1, %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.thread.i" ], [ 1, %.noexc320 ], [ 1, %.noexc243 ], [ 1, %bb.pf ], [ 1, %bb.op ], [ 1, %bb.on ], [ 1, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i ], [ 1, %.noexc159 ], [ 1, %bb.pd ], [ 1, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i165 ], [ 1, %.noexc197 ], [ 1, %bb.ps ], [ 1, %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i204 ], [ 1, %bb.so ]
  %i.aum = landingpad { ptr, i32 }
          cleanup
  br label %.body162

bb.pb:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i", %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !noalias !7722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  %.not = icmp eq ptr %.sroa.0.023.i, null
  br i1 %.not, label %bb.om, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.pc:                                            ; preds = %bb.pq, %bb.om
  %i.aun = trunc nuw i8 %i.abw to i1
  br i1 %i.aun, label %bb.ps, label %bb.pr

bb.pd:                                            ; preds = %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  %i.auo = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg)
          to label %.noexc196 unwind label %bb.pa ; 4 uses

.noexc196:                                        ; preds = %bb.pd
  %.not.i.i164 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i164, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i165, label %bb.pe

bb.pe:                                            ; preds = %.noexc196
  %i.aup = load i64, ptr %i.auo, align 8, !range !38, !noundef !16
  %i.auq = icmp sgt i64 %i.aup, -1
  br i1 %i.auq, label %bb.pf, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i165

_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i165: ; preds = %bb.pe, %.noexc196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !7729
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.fl)
          to label %.noexc197 unwind label %bb.pa

.noexc197:                                        ; preds = %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i165
  %i.aur = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hb0c7329a645b5af6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.fl)
          to label %.thread492 unwind label %bb.pa

.thread492:                                       ; preds = %.noexc197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !7730
  %i.aus = getelementptr i8, ptr %i.auo, i64 8
  %.val.i167 = load ptr, ptr %i.aus, align 8, !nonnull !16, !noundef !16
  %i.aut = getelementptr i8, ptr %i.auo, i64 16
  %.val18.i168 = load i64, ptr %i.aut, align 8, !noundef !16
  invoke fastcc void @_ZN17openapi_generator30routes_missing_operation_field17h4542a4e0d342267aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fu, ptr nonnull %.val.i167, i64 %.val18.i168, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 11)
          to label %.noexc199 unwind label %bb.pa

.noexc199:                                        ; preds = %bb.pf
  %i.auu = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.auv = load i64, ptr %i.auu, align 8, !noalias !7730, !noundef !16 ; 5 uses
  %i.auw = icmp ult i64 %i.auv, 384307168202282326
  call void @llvm.assume(i1 %i.auw)
  %i.aux = icmp eq i64 %i.auv, 0
  br i1 %i.aux, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %.noexc199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !7730
  store ptr @206, ptr %i.ft, align 8, !noalias !7730
  %i.auy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 1, ptr %i.auy, align 8, !noalias !7730
  %i.auz = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store ptr null, ptr %i.auz, align 8, !noalias !7730
  %i.ava = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ava, align 8, !noalias !7730
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 0, ptr %i.avb, align 8, !noalias !7730
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ft)
          to label %.thread.i194 unwind label %.loopexit.split-lp.i169

bb.ph:                                            ; preds = %.noexc199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !7730
  store ptr @208, ptr %i.fs, align 8, !noalias !7730
  %i.avc = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 1, ptr %i.avc, align 8, !noalias !7730
  %i.avd = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  store ptr null, ptr %i.avd, align 8, !noalias !7730
  %i.ave = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ave, align 8, !noalias !7730
  %i.avf = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 0, ptr %i.avf, align 8, !noalias !7730
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.fs)
          to label %.lr.ph.i172 unwind label %.loopexit.split-lp.i169

.loopexit.i176:                                   ; preds = %bb.pm
  %lpad.loopexit.i177 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pi

.loopexit.split-lp.i169:                          ; preds = %bb.pp, %bb.po, %._crit_edge.i178, %bb.ph, %bb.pg
  %lpad.loopexit.split-lp.i170 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pi

bb.pi:                                            ; preds = %.loopexit.split-lp.i169, %.loopexit.i176
  %lpad.phi.i171 = phi { ptr, i32 } [ %lpad.loopexit.i177, %.loopexit.i176 ], [ %lpad.loopexit.split-lp.i170, %.loopexit.split-lp.i169 ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE"(ptr noalias noundef align 8 dereferenceable(24) %i.fu) #33
  br label %.body162

.thread.i194:                                     ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !7730
  %i.avg = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.val.i22.i195 = load ptr, ptr %i.avg, align 8, !alias.scope !7731, !noalias !7730, !nonnull !16, !noundef !16
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i189"

bb.pj:                                            ; preds = %bb.pp
  call void @llvm.experimental.noalias.scope.decl(metadata !7732)
  call void @llvm.experimental.noalias.scope.decl(metadata !7733)
  br label %.lr.ph.i.i.i.i184

.lr.ph.i.i.i.i184:                                ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188", %bb.pj
  %.sroa.0.011.i.i.i.i185 = phi i64 [ %i.avi, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188" ], [ 0, %bb.pj ] ; 2 uses
  %i.avh = getelementptr inbounds nuw [24 x i8], ptr %i.avp, i64 %.sroa.0.011.i.i.i.i185 ; 2 uses
  %i.avi = add nuw nsw i64 %.sroa.0.011.i.i.i.i185, 1 ; 2 uses
  %.val8.i.i.i.i186 = load i64, ptr %i.avh, align 8, !alias.scope !7733, !noalias !7732 ; 2 uses
  %i.avj = icmp eq i64 %.val8.i.i.i.i186, 0
  br i1 %i.avj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188", label %bb.pk

bb.pk:                                            ; preds = %.lr.ph.i.i.i.i184
  %i.avk = getelementptr i8, ptr %i.avh, i64 8
  %.val9.i.i.i.i187 = load ptr, ptr %i.avk, align 8, !alias.scope !7733, !noalias !7732, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i187, i64 noundef %.val8.i.i.i.i186, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7734
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188": ; preds = %bb.pk, %.lr.ph.i.i.i.i184
  %i.avl = icmp eq i64 %i.avi, %i.auv
  br i1 %i.avl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i189", label %.lr.ph.i.i.i.i184

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i189": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188", %.thread.i194
  %.val.i24.i190 = phi ptr [ %.val.i22.i195, %.thread.i194 ], [ %i.avp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188" ]
  %.sroa.0.023.i191 = phi ptr [ null, %.thread.i194 ], [ %i.avx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i188" ] ; 2 uses
  %.val2.i.i192 = load i64, ptr %i.fu, align 8, !range !17, !alias.scope !7732, !noalias !7730, !noundef !16 ; 2 uses
  %i.avm = icmp eq i64 %.val2.i.i192, 0
  br i1 %i.avm, label %bb.pq, label %bb.pl

bb.pl:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i189"
  %i.avn = mul nuw i64 %.val2.i.i192, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i190, i64 noundef %i.avn, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7732
  br label %bb.pq

.lr.ph.i172:                                      ; preds = %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !7730
  %i.avo = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.avp = load ptr, ptr %i.avo, align 8, !noalias !7730, !nonnull !16, !noundef !16 ; 4 uses
  %.idx.i173 = mul nuw nsw i64 %i.auv, 24
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.idx.i173
  %.sroa.410.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.avr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.avs = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.avt = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.avu = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pn, %.lr.ph.i172
  %.sroa.015.025.i175 = phi ptr [ %i.avp, %.lr.ph.i172 ], [ %i.avv, %bb.pn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !7730
  store ptr %.sroa.015.025.i175, ptr %i.fr, align 8, !noalias !7730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !7730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !7730
  store ptr %i.fr, ptr %i.fp, align 8, !noalias !7730
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.410.0..sroa_idx.i174, align 8, !noalias !7730
  store ptr @55, ptr %i.fq, align 8, !noalias !7730
  store i64 2, ptr %i.avr, align 8, !noalias !7730
  store ptr null, ptr %i.avs, align 8, !noalias !7730
  store ptr %i.fp, ptr %i.avt, align 8, !noalias !7730
  store i64 1, ptr %i.avu, align 8, !noalias !7730
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.fq)
          to label %bb.pn unwind label %.loopexit.i176

._crit_edge.i178:                                 ; preds = %bb.pn
  invoke fastcc void @_ZN17openapi_generator22print_doc_comment_help17h8990527aaa26e021E()
          to label %bb.po unwind label %.loopexit.split-lp.i169

bb.pn:                                            ; preds = %bb.pm
  %i.avv = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i175, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !7730
  %i.avw = icmp eq ptr %i.avv, %i.avq
  br i1 %i.avw, label %._crit_edge.i178, label %bb.pm

bb.po:                                            ; preds = %._crit_edge.i178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !7730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !7730
  store i64 %i.auv, ptr %i.fm, align 8, !noalias !7730
  store ptr %i.fm, ptr %i.fn, align 8, !noalias !7730
  %.sroa.414.0..sroa_idx.i179 = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.414.0..sroa_idx.i179, align 8, !noalias !7730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !7735
  store ptr @210, ptr %i.fk, align 8, !noalias !7736
  %.sroa.4.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i180, align 8, !noalias !7736
  %.sroa.5.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr %i.fn, ptr %.sroa.5.0..sroa_idx.i181, align 8, !noalias !7736
  %.sroa.6.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i182, align 8, !noalias !7736
  %.sroa.7.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i183, align 8, !noalias !7736
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.fk)
          to label %bb.pp unwind label %.loopexit.split-lp.i169

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !7735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !7730
  %i.avx = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17haef158ae05b406a1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fo)
          to label %bb.pj unwind label %.loopexit.split-lp.i169

bb.pq:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i189", %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  %.not102 = icmp eq ptr %.sroa.0.023.i191, null
  br i1 %.not102, label %bb.pc, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.pr:                                            ; preds = %bb.sm, %bb.pc
  %i.avy = trunc nuw i8 %i.ach to i1
  br i1 %i.avy, label %bb.so, label %bb.sn

bb.ps:                                            ; preds = %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  %i.avz = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg)
          to label %.noexc242 unwind label %bb.pa ; 4 uses

.noexc242:                                        ; preds = %bb.ps
  %.not.i.i203 = icmp eq ptr %i.avz, null
  br i1 %.not.i.i203, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i204, label %bb.pt

bb.pt:                                            ; preds = %.noexc242
  %i.awa = load i64, ptr %i.avz, align 8, !range !38, !noundef !16
  %i.awb = icmp sgt i64 %i.awa, -1
  br i1 %i.awb, label %bb.pu, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i204

_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i204: ; preds = %bb.pt, %.noexc242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !7737
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.eo)
          to label %.noexc243 unwind label %bb.pa

.noexc243:                                        ; preds = %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i204
  %i.awc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hb0c7329a645b5af6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.eo)
          to label %.noexc244 unwind label %bb.pa

.noexc244:                                        ; preds = %.noexc243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !7737
  br label %.thread495

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !7738
  store i64 0, ptr %i.fj, align 8, !noalias !7738
  %i.awd = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.awd, align 8, !noalias !7738
  %i.awe = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 13 uses
  store i64 0, ptr %i.awe, align 8, !noalias !7738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !noalias !7738
  %i.awf = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 16 ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 8, !range !20, !noalias !7739, !noundef !16
  %i.awi = trunc nuw i8 %i.awh to i1
  br i1 %i.awi, label %._ZN4core3ops8function6FnOnce9call_once17h106dd54f65a55411E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h60bb79ca1a54c602E.exit.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h106dd54f65a55411E.exit_crit_edge.i.i.i: ; preds = %bb.pu
  %.pre.i.i.i = load i64, ptr %i.awf, align 8, !noalias !7740
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.awf, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !7740
  br label %bb.pz

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h60bb79ca1a54c602E.exit.i.i.i": ; preds = %bb.pu
  %i.awj = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i205 unwind label %bb.py ; 2 uses

.noexc.i205:                                      ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h60bb79ca1a54c602E.exit.i.i.i"
  %i.awk = extractvalue { i64, i64 } %i.awj, 0
  %i.awl = extractvalue { i64, i64 } %i.awj, 1    ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awf, i64 8
  store i64 %i.awl, ptr %i.awm, align 8, !noalias !7741
  store i8 1, ptr %i.awg, align 8, !noalias !7741
  br label %bb.pz

bb.pv:                                            ; preds = %.body.i212, %bb.py
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i213, %.body.i212 ], [ %i.awv, %bb.py ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7742)
  %.val.i445 = load ptr, ptr %i.awd, align 8, !alias.scope !7742, !nonnull !16, !noundef !16 ; 2 uses
  %.val1.i = load i64, ptr %i.awe, align 8, !alias.scope !7742, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7743)
  %i.awn = icmp eq i64 %.val1.i, 0
  br i1 %i.awn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i", label %.lr.ph.i.i.i446

.lr.ph.i.i.i446:                                  ; preds = %bb.pv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i449"
  %.sroa.0.011.i.i.i = phi i64 [ %i.awp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i449" ], [ 0, %bb.pv ] ; 2 uses
  %i.awo = getelementptr inbounds nuw [24 x i8], ptr %.val.i445, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.awp = add nuw i64 %.sroa.0.011.i.i.i, 1      ; 2 uses
  %.val8.i.i.i447 = load i64, ptr %i.awo, align 8, !alias.scope !7743, !noalias !7742 ; 2 uses
  %i.awq = icmp eq i64 %.val8.i.i.i447, 0
  br i1 %i.awq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i449", label %bb.pw

bb.pw:                                            ; preds = %.lr.ph.i.i.i446
  %i.awr = getelementptr i8, ptr %i.awo, i64 8
  %.val9.i.i.i448 = load ptr, ptr %i.awr, align 8, !alias.scope !7743, !noalias !7742, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i448, i64 noundef %.val8.i.i.i447, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7744
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i449"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i449": ; preds = %bb.pw, %.lr.ph.i.i.i446
  %i.aws = icmp eq i64 %i.awp, %.val1.i
  br i1 %i.aws, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i", label %.lr.ph.i.i.i446

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i449", %bb.pv
  %.val2.i = load i64, ptr %i.fj, align 8, !range !17, !alias.scope !7742, !noundef !16 ; 2 uses
  %i.awt = icmp eq i64 %.val2.i, 0
  br i1 %i.awt, label %.body162, label %bb.px

bb.px:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i"
  %i.awu = mul nuw i64 %.val2.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i445, i64 noundef %i.awu, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7742
  br label %.body162

bb.py:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h60bb79ca1a54c602E.exit.i.i.i"
  %i.awv = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

bb.pz:                                            ; preds = %.noexc.i205, %._ZN4core3ops8function6FnOnce9call_once17h106dd54f65a55411E.exit_crit_edge.i.i.i
  %.pre-phi380.i = phi i64 [ %i.awl, %.noexc.i205 ], [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h106dd54f65a55411E.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.awk, %.noexc.i205 ], [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h106dd54f65a55411E.exit_crit_edge.i.i.i ] ; 2 uses
  %i.aww = add i64 %.pre-phi.i, 1
  store i64 %i.aww, ptr %i.awf, align 8, !noalias !7740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) @90, i64 32, i1 false), !noalias !7738
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 3 uses
  store i64 %.pre-phi.i, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !7738
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 40 ; 2 uses
  store i64 %.pre-phi380.i, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !7738
  %i.awx = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  %i.awy = load ptr, ptr %i.awx, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.avz, i64 16
  %i.axa = load i64, ptr %i.awz, align 8, !noundef !16 ; 2 uses
  %.idx.i206 = mul nuw nsw i64 %i.axa, 104
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.idx.i206
  %i.axc = icmp eq i64 %i.axa, 0
  br i1 %i.axc, label %._crit_edge.i222, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.pz
  %.sroa.064.1288.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 104
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.4.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.5.0..sroa_idx129.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %.sroa.6.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %.sroa.7.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.sroa.7134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %.sroa.515.sroa.6.0..sroa.515.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %.sroa.515.sroa.7.0..sroa.515.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %.sroa.515.sroa.8.0..sroa.515.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 52
  %.sroa.515.sroa.9.0..sroa.515.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 65
  %.sroa.5.0..sroa_idx.i.i.i.i211 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.axd = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.axe = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.ej, i64 65 ; 4 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.axh = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.axi = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.axk = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 3 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.axm = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.axn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.axp = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.axq = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.axs = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.sroa.6139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %.sroa.7140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  br label %bb.qn

._crit_edge.i222:                                 ; preds = %bb.sc, %bb.pz
  %i.axt = load i64, ptr %i.awe, align 8, !noalias !7738, !noundef !16 ; 2 uses
  %i.axu = icmp ult i64 %i.axt, 384307168202282326
  call void @llvm.assume(i1 %i.axu)
  %i.axv = icmp eq i64 %i.axt, 0
  br i1 %i.axv, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %._crit_edge.i222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !7738
  store ptr @92, ptr %i.ey, align 8, !noalias !7738
  %i.axw = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 1, ptr %i.axw, align 8, !noalias !7738
  %i.axx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr null, ptr %i.axx, align 8, !noalias !7738
  %i.axy = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.axy, align 8, !noalias !7738
  %i.axz = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 0, ptr %i.axz, align 8, !noalias !7738
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ey)
          to label %bb.qc unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.qb:                                            ; preds = %._crit_edge.i222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !7738
  store ptr @94, ptr %i.ex, align 8, !noalias !7738
  %i.aya = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 1, ptr %i.aya, align 8, !noalias !7738
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store ptr null, ptr %i.ayb, align 8, !noalias !7738
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ayc, align 8, !noalias !7738
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 0, ptr %i.ayd, align 8, !noalias !7738
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ex)
          to label %bb.qf unwind label %.loopexit.split-lp.loopexit.split-lp.i

.body.i212:                                       ; preds = %bb.sl, %bb.sk, %bb.sg, %bb.sf, %bb.rv, %bb.ru, %bb.rt, %bb.rs, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.qs, %bb.qr, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i223
  %.pn.i213 = phi { ptr, i32 } [ %i.bgk, %bb.sg ], [ %i.bgk, %bb.sf ], [ %i.bez, %bb.ru ], [ %i.azv, %bb.qr ], [ %i.bef, %bb.rl ], [ %i.ben, %bb.rs ], [ %i.bia, %bb.sl ], [ %i.azv, %bb.qs ], [ %lpad.phi192.i, %bb.rj ], [ %lpad.phi9.i.i.i.i.i.i, %bb.rk ], [ %i.bef, %bb.rm ], [ %i.ben, %bb.rt ], [ %i.bez, %bb.rv ], [ %i.bia, %bb.sk ], [ %lpad.loopexit.i224, %.loopexit.i223 ], [ %lpad.loopexit196.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp197.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h4a27a159d73e626dE"(ptr noalias noundef align 8 dereferenceable(48) %i.fi) #33
  br label %bb.pv

.loopexit.i223:                                   ; preds = %bb.qg
  %lpad.loopexit.i224 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i212

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd1836d3870a337b4E.exit.thread.i", %bb.rp, %bb.qu, %bb.qo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.thread.i"
  %lpad.loopexit196.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i212

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.qv, %bb.qi, %bb.qh, %._crit_edge297.i, %bb.qb, %bb.qa
  %lpad.loopexit.split-lp197.i = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  %i.bgf = icmp eq i32 %bcmp.i.i110.i, 0
  br i1 %i.bgf, label %bb.sc, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd1836d3870a337b4E.exit.thread.i"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd1836d3870a337b4E.exit.thread.i": ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd1836d3870a337b4E.exit.i", %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !noalias !7738
  store ptr %i.bga, ptr %i.fa, align 8, !noalias !7738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !7738
  store ptr %i.fa, ptr %i.ez, align 8, !noalias !7738
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !7738
  store ptr %i.fh, ptr %i.axs, align 8, !noalias !7738
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !7738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !7815
  store ptr @107, ptr %i.eh, align 8, !noalias !7816
  store i64 2, ptr %.sroa.4137.0..sroa_idx.i, align 8, !noalias !7816
  store ptr %i.ez, ptr %.sroa.5138.0..sroa_idx.i, align 8, !noalias !7816
  store i64 2, ptr %.sroa.6139.0..sroa_idx.i, align 8, !noalias !7816
  store ptr null, ptr %.sroa.7140.0..sroa_idx.i, align 8, !noalias !7816
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.eh)
          to label %bb.sd unwind label %.loopexit.split-lp.loopexit.i

bb.sc:                                            ; preds = %bb.sj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit118.i", %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd1836d3870a337b4E.exit.i"
  %i.bgg = icmp eq ptr %.sroa.064.1290.i, %i.axb  ; 2 uses
  %.sroa.064.1.idx.i = select i1 %i.bgg, i64 0, i64 104
  %.sroa.064.1.i = getelementptr inbounds nuw i8, ptr %.sroa.064.1290.i, i64 %.sroa.064.1.idx.i
  br i1 %i.bgg, label %._crit_edge.i222, label %bb.qn

bb.sd:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hd1836d3870a337b4E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !7815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !7738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !7738
  call void @llvm.experimental.noalias.scope.decl(metadata !7817)
  call void @llvm.experimental.noalias.scope.decl(metadata !7818)
  %i.bgh = load i64, ptr %i.awe, align 8, !alias.scope !7817, !noalias !7819, !noundef !16 ; 3 uses
  %i.bgi = load i64, ptr %i.fj, align 8, !range !17, !alias.scope !7817, !noalias !7819, !noundef !16
  %i.bgj = icmp eq i64 %i.bgh, %i.bgi
  br i1 %i.bgj, label %bb.se, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit118.i"

bb.se:                                            ; preds = %bb.sd
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @108)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit118.i" unwind label %bb.sf, !noalias !7818

bb.sf:                                            ; preds = %bb.se
  %i.bgk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i113.i = load i64, ptr %i.fb, align 8, !alias.scope !7818, !noalias !7820 ; 2 uses
  %i.bgl = icmp eq i64 %.val.i113.i, 0
  br i1 %i.bgl, label %.body.i212, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val2.i114.i = load ptr, ptr %i.bgm, align 8, !alias.scope !7818, !noalias !7820, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i114.i, i64 noundef %.val.i113.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7818
  br label %.body.i212

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit118.i": ; preds = %bb.se, %bb.sd
  %i.bgn = load ptr, ptr %i.awd, align 8, !alias.scope !7817, !noalias !7819, !nonnull !16, !noundef !16
  %i.bgo = getelementptr inbounds nuw [24 x i8], ptr %i.bgn, i64 %i.bgh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgo, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fb, i64 24, i1 false)
  %i.bgp = add i64 %i.bgh, 1
  store i64 %i.bgp, ptr %i.awe, align 8, !alias.scope !7817, !noalias !7819
  br label %bb.sc

bb.sh:                                            ; preds = %bb.sb
  call void @llvm.experimental.noalias.scope.decl(metadata !7821)
  %.val.i119.i = load ptr, ptr %i.fi, align 8, !alias.scope !7821, !noalias !7822, !nonnull !16, !noundef !16 ; 8 uses
  %.val4.i.i = load i64, ptr %i.axn, align 8, !alias.scope !7821, !noalias !7822, !noundef !16 ; 4 uses
  %.sroa.0.04.i.i.i.i = and i64 %.val4.i.i, %i.bet ; 3 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %.val.i119.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.bgq, align 1, !noalias !7823
  %i.bgr = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
  %i.bgs = bitcast <16 x i1> %i.bgr to i16        ; 2 uses
  %.not.not.i.not6.i.i.i.i = icmp eq i16 %i.bgs, 0
  br i1 %.not.not.i.not6.i.i.i.i, label %.lr.ph.i.i.i122.i, label %._crit_edge.i.i.i.i, !prof !7824

.lr.ph.i.i.i122.i:                                ; preds = %bb.sh, %.lr.ph.i.i.i122.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i122.i ], [ %.sroa.0.04.i.i.i.i, %bb.sh ]
  %i.bgt = phi i64 [ %i.bgu, %.lr.ph.i.i.i122.i ], [ 0, %bb.sh ]
  %i.bgu = add i64 %i.bgt, 16                     ; 2 uses
  %i.bgv = add i64 %i.bgu, %.sroa.0.07.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.bgv, %.val4.i.i ; 3 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %.val.i119.i, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i = load <16 x i8>, ptr %i.bgw, align 1, !noalias !7823
  %i.bgx = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i, zeroinitializer
  %i.bgy = bitcast <16 x i1> %i.bgx to i16        ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.bgy, 0
  br i1 %.not.not.i.not.i.i.i.i, label %.lr.ph.i.i.i122.i, label %._crit_edge.i.i.i.i, !prof !7825

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i122.i, %bb.sh
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i, %bb.sh ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i122.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.bgs, %bb.sh ], [ %i.bgy, %.lr.ph.i.i.i122.i ]
  %i.bgz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.bha = zext nneg i16 %i.bgz to i64
  %i.bhb = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.bha
  %i.bhc = and i64 %i.bhb, %.val4.i.i             ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.val.i119.i, i64 %i.bhc
  %i.bhe = load i8, ptr %i.bhd, align 1, !noalias !7826, !noundef !16 ; 2 uses
  %i.bhf = icmp sgt i8 %i.bhe, -1
  br i1 %i.bhf, label %bb.si, label %bb.sj, !prof !18

bb.si:                                            ; preds = %._crit_edge.i.i.i.i
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i119.i, align 16, !noalias !7826
  %i.bhg = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.bhh = bitcast <16 x i1> %i.bhg to i16        ; 2 uses
  %i.bhi = icmp ne i16 %i.bhh, 0
  call void @llvm.assume(i1 %i.bhi)
  %i.bhj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bhh, i1 true)
  %i.bhk = zext nneg i16 %i.bhj to i64            ; 2 uses
  %.phi.trans.insert.i.i120.i = getelementptr inbounds nuw i8, ptr %.val.i119.i, i64 %i.bhk
  %.pre.i.i121.i = load i8, ptr %.phi.trans.insert.i.i120.i, align 1, !noalias !7826
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %._crit_edge.i.i.i.i
  %i.bhl = phi i8 [ %.pre.i.i121.i, %bb.si ], [ %i.bhe, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.bhk, %bb.si ], [ %i.bhc, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %.val.i119.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.bhn = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.bho = and i64 %i.bhn, %.val4.i.i
  store i8 %i.bev, ptr %i.bhm, align 1, !noalias !7826
  %i.bhp = getelementptr i8, ptr %.val.i119.i, i64 %i.bho
  %i.bhq = getelementptr i8, ptr %i.bhp, i64 16
  store i8 %i.bev, ptr %i.bhq, align 1, !noalias !7826
  %i.bhr = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.bhs = getelementptr inbounds [48 x i8], ptr %.val.i119.i, i64 %i.bhr ; 4 uses
  %i.bht = and i8 %i.bhl, 1
  %i.bhu = zext nneg i8 %i.bht to i64
  %i.bhv = load i64, ptr %i.axq, align 8, !alias.scope !7821, !noalias !7822, !noundef !16
  %i.bhw = sub i64 %i.bhv, %i.bhu
  store i64 %i.bhw, ptr %i.axq, align 8, !alias.scope !7821, !noalias !7822
  %i.bhx = getelementptr inbounds i8, ptr %i.bhs, i64 -48
  store i64 %.sroa.0152.0.copyload.i, ptr %i.bhx, align 8, !noalias !7821
  %.sroa.4157.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bhs, i64 -40
  store ptr %.val2.i.i.i.i.i220, ptr %.sroa.4157.0..sroa_idx.i, align 8, !noalias !7821
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bhs, i64 -32
  store ptr %i.bey, ptr %.sroa.5158.0..sroa_idx.i, align 8, !noalias !7821
  %.sroa.6159.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bhs, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6159.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  %i.bhy = load i64, ptr %i.axr, align 8, !alias.scope !7821, !noalias !7822, !noundef !16
  %i.bhz = add i64 %i.bhy, 1
  store i64 %i.bhz, ptr %i.axr, align 8, !alias.scope !7821, !noalias !7822
  br label %bb.sc

bb.sk:                                            ; preds = %bb.sb
  %i.bia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bib = icmp eq i64 %.sroa.0152.0.copyload.i, 0
  br i1 %i.bib, label %.body.i212, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i220) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i220, i64 noundef %.sroa.0152.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body.i212

.thread495:                                       ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit86.i", %.noexc244
  %.sroa.0.0.i.ph = phi ptr [ %i.awc, %.noexc244 ], [ %i.aza, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit86.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.sm:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i230", %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !7738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  br label %bb.pr

bb.sn:                                            ; preds = %bb.zn, %bb.pr
  %i.bic = trunc nuw i8 %i.acs to i1
  br i1 %i.bic, label %bb.zp, label %bb.zo

bb.so:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.bid = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg)
          to label %.noexc319 unwind label %bb.pa ; 4 uses

.noexc319:                                        ; preds = %bb.so
  %.not.i.i248 = icmp eq ptr %i.bid, null
  %.sink329.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %.sink329.i.sroa.gep304.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  br i1 %.not.i.i248, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i249, label %bb.sp

bb.sp:                                            ; preds = %.noexc319
  %i.bie = load i64, ptr %i.bid, align 8, !range !38, !noundef !16
  %i.bif = icmp sgt i64 %i.bie, -1
  br i1 %i.bif, label %bb.sq, label %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i249

_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i249: ; preds = %bb.sp, %.noexc319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !7827
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.dq)
          to label %.noexc320 unwind label %bb.pa

.noexc320:                                        ; preds = %_ZN17openapi_generator16get_paths_object17hcc67c5e85965ba96E.exit.thread.i249
  %i.big = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hb0c7329a645b5af6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.dq)
          to label %.noexc321 unwind label %bb.pa

.noexc321:                                        ; preds = %.noexc320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !7827
  br label %.thread499

bb.sq:                                            ; preds = %bb.sp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !7828
  store i64 0, ptr %i.ee, align 8, !noalias !7828
  %i.bih = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 13 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bih, align 8, !noalias !7828
  %i.bii = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 22 uses
  store i64 0, ptr %i.bii, align 8, !noalias !7828
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bid, i64 8
  %i.bik = load ptr, ptr %i.bij, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bid, i64 16
  %i.bim = load i64, ptr %i.bil, align 8, !noundef !16 ; 2 uses
  %.idx.i251 = mul nuw nsw i64 %i.bim, 104
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bik, i64 %.idx.i251
  %i.bio = icmp eq i64 %i.bim, 0
  br i1 %i.bio, label %._crit_edge.thread.i, label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %bb.sq
  %i.bip = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.bir = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.sroa.447.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.548.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.649.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.750.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.bis = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.bit = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %.sroa.4.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.5.0..sroa_idx.i.i.i254 = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.6.0..sroa_idx.i.i.i255 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.biu = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.66.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i256 = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.biv = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.biw = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.bix = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.biy = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.42.0..sroa_idx.i.i.i257 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.4.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.biz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.bja = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.431.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.sroa.435.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.sroa.4.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.6.0..sroa_idx.i26.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.7.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.bje = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.4.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.6.0..sroa_idx.i41.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.7.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %.sroa.5.0..sroa_idx.i43.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.42.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.4.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.5.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.6.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.7.0..sroa_idx.i57.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i258 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.521.0..sroa_idx.i73.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.622.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.723.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.sroa.410.0..sroa_idx.i78.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.4.0..sroa_idx.i79.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.5.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.6.0..sroa_idx.i81.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.sroa.7.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.410.0..sroa_idx.i99.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.520.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.722.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sroa.46.0..sroa_idx.i108.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.4.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0..sroa_idx.i110.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.6.0..sroa_idx.i111.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.7.0..sroa_idx.i112.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.46.0..sroa_idx.i134.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4.0..sroa_idx.i135.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.5.0..sroa_idx.i136.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.6.0..sroa_idx.i137.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.7.0..sroa_idx.i138.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.413.0..sroa_idx.i158.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.417.0..sroa_idx.i159.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.4.0..sroa_idx.i160.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.6.0..sroa_idx.i161.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.7.0..sroa_idx.i162.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.sroa.5.0..sroa_idx.i163.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.8.0..sroa_idx.i164.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  br label %bb.st

.loopexit.i264:                                   ; preds = %bb.tg
  %lpad.loopexit.i265 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i260

.loopexit.split-lp.loopexit.i259:                 ; preds = %bb.ts, %bb.tq, %bb.tn
  %lpad.loopexit443.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i260

.loopexit.split-lp.loopexit.split-lp.i263:        ; preds = %bb.tu, %bb.tp, %bb.ti, %bb.th, %._crit_edge650.i, %_ZN5alloc5slice11stable_sort17h48b4e998b9fe5bf6E.exit.i, %bb.tb, %bb.ta, %bb.sz, %bb.sy, %bb.sw, %._crit_edge.thread.i
  %lpad.loopexit.split-lp444.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i260

.body.i260:                                       ; preds = %.body.i.i286, %common.resume.sink.split.i.i283, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit31.i.i.i", %.loopexit.split-lp.loopexit.split-lp.i263, %.loopexit.split-lp.loopexit.i259, %.loopexit.i264
  %eh.lpad-body.i = phi { ptr, i32 } [ %common.resume.op.ph.i.i284, %common.resume.sink.split.i.i283 ], [ %.pn.i.i.i282, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit31.i.i.i" ], [ %.pn.i.i, %.body.i.i286 ], [ %lpad.loopexit.i265, %.loopexit.i264 ], [ %lpad.loopexit443.i, %.loopexit.split-lp.loopexit.i259 ], [ %lpad.loopexit.split-lp444.i, %.loopexit.split-lp.loopexit.split-lp.i263 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7829)
  %.val.i450 = load ptr, ptr %i.bih, align 8, !alias.scope !7829, !nonnull !16, !noundef !16 ; 2 uses
  %.val1.i451 = load i64, ptr %i.bii, align 8, !alias.scope !7829, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7830)
  %i.bjn = icmp eq i64 %.val1.i451, 0
  br i1 %i.bjn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457", label %.lr.ph.i.i.i452

.lr.ph.i.i.i452:                                  ; preds = %.body.i260, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i456"
  %.sroa.0.011.i.i.i453 = phi i64 [ %i.bjp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i456" ], [ 0, %.body.i260 ] ; 2 uses
  %i.bjo = getelementptr inbounds nuw [24 x i8], ptr %.val.i450, i64 %.sroa.0.011.i.i.i453 ; 2 uses
  %i.bjp = add nuw i64 %.sroa.0.011.i.i.i453, 1   ; 2 uses
  %.val8.i.i.i454 = load i64, ptr %i.bjo, align 8, !alias.scope !7830, !noalias !7829 ; 2 uses
  %i.bjq = icmp eq i64 %.val8.i.i.i454, 0
  br i1 %i.bjq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i456", label %bb.sr

bb.sr:                                            ; preds = %.lr.ph.i.i.i452
  %i.bjr = getelementptr i8, ptr %i.bjo, i64 8
  %.val9.i.i.i455 = load ptr, ptr %i.bjr, align 8, !alias.scope !7830, !noalias !7829, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i455, i64 noundef %.val8.i.i.i454, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7831
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i456"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i456": ; preds = %bb.sr, %.lr.ph.i.i.i452
  %i.bjs = icmp eq i64 %i.bjp, %.val1.i451
  br i1 %i.bjs, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457", label %.lr.ph.i.i.i452

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i456", %.body.i260
  %.val2.i458 = load i64, ptr %i.ee, align 8, !range !17, !alias.scope !7829, !noundef !16 ; 2 uses
  %i.bjt = icmp eq i64 %.val2.i458, 0
  br i1 %i.bjt, label %.body162, label %bb.ss

bb.ss:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i457"
  %i.bju = mul nuw i64 %.val2.i458, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i450, i64 noundef %i.bju, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7829
  br label %.body162

bb.st:                                            ; preds = %.backedge.i, %.lr.ph.i252
  %.sroa.0.0399643.i = phi ptr [ %i.bik, %.lr.ph.i252 ], [ %i.bjv, %.backedge.i ] ; 6 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.sroa.0.0399643.i, i64 104 ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %.sroa.0.0399643.i, i64 24 ; 2 uses
  %i.bjx = load i64, ptr %i.bjw, align 8, !range !38, !noundef !16
  %i.bjy = icmp slt i64 %i.bjx, 0
  br i1 %i.bjy, label %.backedge.i, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17heb57c2c11c86384dE.exit.preheader.i"

.backedge.i:                                      ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17heb57c2c11c86384dE.exit.backedge.i", %bb.st
  %i.bjz = icmp eq ptr %i.bjv, %i.bin
  br i1 %i.bjz, label %._crit_edge.i261, label %bb.st

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17heb57c2c11c86384dE.exit.preheader.i": ; preds = %bb.st
  %i.bka = getelementptr inbounds nuw i8, ptr %.sroa.0.0399643.i, i64 40
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sroa.0.0399643.i, i64 32
  %i.bkc = getelementptr inbounds nuw i8, ptr %.sroa.0.0399643.i, i64 8
  %i.bkd = getelementptr inbounds nuw i8, ptr %.sroa.0.0399643.i, i64 16
  br label %bb.tn

._crit_edge.i261:                                 ; preds = %.backedge.i
  %.pre.i262 = load i64, ptr %i.bii, align 8, !noalias !7828 ; 6 uses
  %i.bke = icmp ult i64 %.pre.i262, 384307168202282326
end_hunk_1
begin_hunk_2_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  br i1 %i.ctp, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i", label %.backedge.i.i.i289

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i"
  %i.ctq = phi ptr [ %i.cnb, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i" ], [ %i.csk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i" ]
  %.sroa.5.0.i9.i.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i" ], [ %.val.i.i.i.i.i.i298, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i" ] ; 3 uses
  %i.ctr = icmp ult i64 %.sroa.5.0.i9.i.i, %i.cna
  br i1 %i.ctr, label %bb.zc, label %.invoke.i294

bb.zc:                                            ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i"
  %i.cts = getelementptr inbounds nuw [104 x i8], ptr %i.ctq, i64 %.sroa.5.0.i9.i.i
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cts, i64 24
  %i.ctu = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ctt)
          to label %.noexc170.i.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc170.i.i:                                    ; preds = %bb.zc
  %.not22.i.i.i = icmp eq ptr %i.ctu, null
  br i1 %.not22.i.i.i, label %.backedge.i.i.i289, label %bb.zd

bb.zd:                                            ; preds = %.noexc170.i.i
  %i.ctv = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ctu)
          to label %.noexc171.i.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc171.i.i:                                    ; preds = %bb.zd
  %.not23.i.i.i = icmp eq ptr %i.ctv, null
  br i1 %.not23.i.i.i, label %.backedge.i.i.i289, label %bb.ze

bb.ze:                                            ; preds = %.noexc171.i.i
  %i.ctw = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @145, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ctv)
          to label %.noexc172.i.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc172.i.i:                                    ; preds = %bb.ze
  %.not24.i.i.i = icmp eq ptr %i.ctw, null
  br i1 %.not24.i.i.i, label %.backedge.i.i.i289, label %bb.zf

.backedge.i.i.i289:                               ; preds = %._crit_edge.i.i.i.i.i299, %bb.zj, %bb.zi, %.noexc172.i.i, %.noexc171.i.i, %.noexc170.i.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i", %bb.yt, %bb.ys
  %i.ctx = icmp eq ptr %i.cmz, %i.cmr
  br i1 %i.ctx, label %.loopexit194.i.i, label %bb.ys

bb.zf:                                            ; preds = %.noexc172.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !8030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !8030
  store ptr %i.bq, ptr %i.bn, align 8, !noalias !8030
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.413.0..sroa_idx.i158.i.i, align 8, !noalias !8030
  store ptr %i.bp, ptr %i.bjm, align 8, !noalias !8030
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.417.0..sroa_idx.i159.i.i, align 8, !noalias !8030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !8056
  store ptr @147, ptr %i.bm, align 8, !noalias !8057
  store i64 2, ptr %.sroa.4.0..sroa_idx.i160.i.i, align 8, !noalias !8057
  store ptr %i.bn, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !noalias !8057
  store i64 2, ptr %.sroa.6.0..sroa_idx.i161.i.i, align 8, !noalias !8057
  store ptr null, ptr %.sroa.7.0..sroa_idx.i162.i.i, align 8, !noalias !8057
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bm)
          to label %.noexc173.i.i unwind label %.loopexit.i.loopexit.i

.noexc173.i.i:                                    ; preds = %bb.zf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !8056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8030
  %.sroa.0.0.copyload.i165.i.i = load i64, ptr %i.bo, align 8, !noalias !8030 ; 4 uses
  %.sroa.5.0.copyload.i166.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i163.i.i, align 8, !noalias !8030, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.8.0.copyload.i167.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i164.i.i, align 8, !noalias !8030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !8030
  invoke fastcc void @_ZN17openapi_generator40check_schema_properties_have_description17h5912de5e614fa570E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ctw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload.i166.i.i, i64 noundef %.sroa.8.0.copyload.i167.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %bb.zi unwind label %bb.zg, !noalias !8058

bb.zg:                                            ; preds = %.noexc173.i.i
  %i.cty = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ctz = icmp eq i64 %.sroa.0.0.copyload.i165.i.i, 0
  br i1 %i.ctz, label %.body21.i.i, label %bb.zh

bb.zh:                                            ; preds = %bb.zg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i166.i.i, i64 noundef %.sroa.0.0.copyload.i165.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8058
  br label %.body21.i.i

bb.zi:                                            ; preds = %.noexc173.i.i
  %i.cua = icmp eq i64 %.sroa.0.0.copyload.i165.i.i, 0
  br i1 %i.cua, label %.backedge.i.i.i289, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i166.i.i, i64 noundef %.sroa.0.0.copyload.i165.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8058
  br label %.backedge.i.i.i289

.loopexit194.i.i:                                 ; preds = %.backedge.i.i.i289, %bb.yq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !7844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7844
  call void @llvm.experimental.noalias.scope.decl(metadata !8059)
  %i.cub = icmp eq i64 %.sink.i.i.i287, 0
  br i1 %i.cub, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i.i", label %.lr.ph.i.i.i177.i.i

.lr.ph.i.i.i177.i.i:                              ; preds = %.loopexit194.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i291"
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.cud, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i291" ], [ 0, %.loopexit194.i.i ] ; 2 uses
  %i.cuc = getelementptr inbounds nuw [24 x i8], ptr %.sink52.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.cud = add nuw i64 %.sroa.0.011.i.i.i.i.i, 1  ; 2 uses
  %.val8.i.i.i.i.i290 = load i64, ptr %i.cuc, align 8, !alias.scope !8059, !noalias !8060 ; 2 uses
  %i.cue = icmp eq i64 %.val8.i.i.i.i.i290, 0
  br i1 %i.cue, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i291", label %bb.zk

bb.zk:                                            ; preds = %.lr.ph.i.i.i177.i.i
  %i.cuf = getelementptr i8, ptr %i.cuc, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.cuf, align 8, !alias.scope !8059, !noalias !8060, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i290, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8061
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i291"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i291": ; preds = %bb.zk, %.lr.ph.i.i.i177.i.i
  %i.cug = icmp eq i64 %i.cud, %.sink.i.i.i287
  br i1 %i.cug, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i.i", label %.lr.ph.i.i.i177.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i291", %.loopexit194.i.i, %.thread190.i.i
  %i.cuh = icmp eq i64 %.sink54.i.i.i, 0
  br i1 %i.cuh, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit.i.i", label %bb.zl

bb.zl:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i.i"
  %i.cui = mul nuw i64 %.sink54.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink52.i.i.i, i64 noundef %i.cui, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !8060
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit.i.i": ; preds = %bb.zl, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !7844
  %.val.i50.i = load i64, ptr %i.do, align 8, !noalias !7844 ; 2 uses
  %i.cuj = icmp eq i64 %.val.i50.i, 0
  br i1 %i.cuj, label %_ZN17openapi_generator20check_operation_docs17h0789ebcbcb1125e5E.exit.i, label %bb.zm

bb.zm:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit.i.i"
  %.val10.i.i = load ptr, ptr %.sink329.i.sroa.gep.i, align 8, !noalias !7844, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i, i64 noundef %.val.i50.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %_ZN17openapi_generator20check_operation_docs17h0789ebcbcb1125e5E.exit.i

_ZN17openapi_generator20check_operation_docs17h0789ebcbcb1125e5E.exit.i: ; preds = %bb.zm, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !7844
  br label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17heb57c2c11c86384dE.exit.backedge.i"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17heb57c2c11c86384dE.exit.backedge.i": ; preds = %_ZN17openapi_generator20check_operation_docs17h0789ebcbcb1125e5E.exit.i, %.noexc47.i
  %i.cuk = icmp eq ptr %.sroa.026.1642.i, getelementptr inbounds nuw (i8, ptr @61, i64 80)
  %i.cul = getelementptr inbounds nuw i8, ptr %.sroa.026.1642.i, i64 16
  br i1 %i.cuk, label %.backedge.i, label %bb.tn

.thread499:                                       ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit45.i", %.noexc321
  %.sroa.0.0.i250.ph = phi ptr [ %i.big, %.noexc321 ], [ %i.bmd, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit45.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.zn:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i277", %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !7828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.sn

bb.zo:                                            ; preds = %.thread503, %bb.afs, %bb.sn
  %.not110 = icmp eq i64 %.sroa.7.0158.i.i, -9223372036854775808
  br i1 %.not110, label %bb.aft, label %bb.afw

bb.zp:                                            ; preds = %bb.sn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @62, i64 noundef 18)
          to label %.noexc397 unwind label %bb.pa

.noexc397:                                        ; preds = %bb.zp
  call void @llvm.experimental.noalias.scope.decl(metadata !8062)
  call void @llvm.experimental.noalias.scope.decl(metadata !8063)
  %i.cum = load i64, ptr %i.bl, align 8, !range !37, !alias.scope !8063, !noalias !8062, !noundef !16
  %i.cun = trunc nuw i64 %i.cum to i1
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.0.0.copyload.i.i325 = load i64, ptr %i.cuo, align 8, !alias.scope !8064 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8064 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i326 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i326, align 8, !alias.scope !8064 ; 2 uses
  br i1 %i.cun, label %bb.zq, label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.i"

bb.zq:                                            ; preds = %.noexc397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !8066
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ar)
          to label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.thread.i" unwind label %bb.zr, !noalias !8066

common.resume.sink.split.i:                       ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i", %bb.zr
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.cup, %bb.zr ], [ %.pn78.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i325, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body162

bb.zr:                                            ; preds = %bb.zq
  %i.cup = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i.i.i.i396 = icmp sgt i64 %.sroa.0.0.copyload.i.i325, 0
  br i1 %switch.i.i.i.i396, label %common.resume.sink.split.i, label %.body162

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.thread.i": ; preds = %bb.zq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !8066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !8066
  store ptr @63, ptr %i.aq, align 8, !noalias !8067
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 26, ptr %i.cuq, align 8, !noalias !8067
  %i.cur = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.0.0.copyload.i.i325, ptr %i.cur, align 8, !noalias !8068
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !8068
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !noalias !8068
  %i.cus = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h304efce7a54c597aE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.as)
          to label %.thread506 unwind label %bb.pa

.thread506:                                       ; preds = %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.i": ; preds = %.noexc397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.cut = icmp eq i64 %.sroa.0.0.copyload.i.i325, -9223372036854775808
  br i1 %i.cut, label %bb.afs, label %bb.zs

bb.zs:                                            ; preds = %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17h7d7c665a504396b3E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.3.0.copyload.i.i, i64 noundef %.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @64, i64 noundef 18)
          to label %_ZN3std4path4Path4join17hf6bc4b0ce6c78eefE.exit.i unwind label %bb.zt

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i": ; preds = %.body.i331, %.thread.i332, %bb.zv, %bb.zu, %bb.zt
  %.pn78.i = phi { ptr, i32 } [ %i.cuv, %bb.zt ], [ %i.cva, %bb.zv ], [ %i.cva, %bb.zu ], [ %.pn74.i, %.body.i331 ], [ %.pn74.i, %.thread.i332 ] ; 2 uses
  %i.cuu = icmp eq i64 %.sroa.0.0.copyload.i.i325, 0
  br i1 %i.cuu, label %.body162, label %common.resume.sink.split.i

bb.zt:                                            ; preds = %bb.zs
  %i.cuv = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i"

_ZN3std4path4Path4join17hf6bc4b0ce6c78eefE.exit.i: ; preds = %bb.zs
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cux = load ptr, ptr %i.cuw, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cuz = load i64, ptr %i.cuy, align 8, !noundef !16
  invoke void @_ZN3std3sys2fs12canonicalize17ha56160b4e1725479E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cux, i64 noundef %i.cuz)
          to label %_ZN3std2fs12canonicalize17h78300767016bbd85E.exit.i unwind label %bb.zu

bb.zu:                                            ; preds = %bb.zw, %_ZN3std4path4Path4join17hf6bc4b0ce6c78eefE.exit.i
  %i.cva = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val105.i = load i64, ptr %i.bj, align 8       ; 2 uses
  %i.cvb = icmp eq i64 %.val105.i, 0
  br i1 %i.cvb, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i", label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cux, i64 noundef %.val105.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i"

_ZN3std2fs12canonicalize17h78300767016bbd85E.exit.i: ; preds = %_ZN3std4path4Path4join17hf6bc4b0ce6c78eefE.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8069)
  %i.cvc = load i64, ptr %i.bk, align 8, !range !21, !alias.scope !8070, !noalias !8069, !noundef !16 ; 7 uses
  %i.cvd = icmp eq i64 %i.cvc, -9223372036854775808
  %i.cve = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cvf = load ptr, ptr %i.cve, align 8, !alias.scope !8071 ; 7 uses
  br i1 %i.cvd, label %bb.zw, label %bb.zz

bb.zw:                                            ; preds = %_ZN3std2fs12canonicalize17h78300767016bbd85E.exit.i
  %i.cvg = invoke fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hebfb1d74b3956f56E"(ptr noundef nonnull %i.cvf)
          to label %bb.zx unwind label %bb.zu

bb.zx:                                            ; preds = %bb.zw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.val103.i = load i64, ptr %i.bj, align 8       ; 2 uses
  %i.cvh = icmp eq i64 %.val103.i, 0
  br i1 %i.cvh, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit109.i", label %bb.zy

bb.zy:                                            ; preds = %bb.zx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cux, i64 noundef %.val103.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit109.i"

bb.zz:                                            ; preds = %_ZN3std2fs12canonicalize17h78300767016bbd85E.exit.i
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.8199.0.copyload.i = load i64, ptr %.sroa.8199.0..sroa_idx.i, align 8, !alias.scope !8072 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.val101.i = load i64, ptr %i.bj, align 8       ; 2 uses
  %i.cvi = icmp eq i64 %.val101.i, 0
  br i1 %i.cvi, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit110.i", label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cux, i64 noundef %.val101.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit110.i"

.thread.i332:                                     ; preds = %.body.i331
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cvf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cvf, i64 noundef %i.cvc, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit110.i": ; preds = %bb.aaa, %bb.zz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 0, ptr %i.bi, align 8
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cvj, align 8
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 8 uses
  store i64 0, ptr %i.cvk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke fastcc void @_ZN17openapi_generator13walk_rs_files17h7b289328698134a0E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cvf, i64 noundef %.sroa.8199.0.copyload.i)
          to label %bb.aab unwind label %.loopexit.split-lp.i329

.body.i331:                                       ; preds = %bb.afn, %bb.afm, %bb.aaf, %bb.aae, %.body169.i, %.loopexit.split-lp.i329, %.loopexit.i343
  %.pn74.i = phi { ptr, i32 } [ %.pn72.i, %.body169.i ], [ %i.cwp, %bb.aae ], [ %i.drh, %bb.afm ], [ %i.cwp, %bb.aaf ], [ %i.drh, %bb.afn ], [ %lpad.loopexit.i344, %.loopexit.i343 ], [ %lpad.loopexit.split-lp.i330, %.loopexit.split-lp.i329 ] ; 2 uses
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE"(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #33
  %i.cvl = icmp eq i64 %i.cvc, 0
  br i1 %i.cvl, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit.i", label %.thread.i332

.loopexit.i343:                                   ; preds = %bb.aar
  %lpad.loopexit.i344 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i331

.loopexit.split-lp.i329:                          ; preds = %bb.aat, %bb.aas, %._crit_edge.i345, %bb.aap, %bb.aaj, %bb.aai, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit110.i"
  %lpad.loopexit.split-lp.i330 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i331

bb.aab:                                           ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit110.i"
  %i.cvm = load i64, ptr %i.bh, align 8, !range !21, !noundef !16 ; 10 uses
  %i.cvn = icmp eq i64 %i.cvm, -9223372036854775808
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cvp = load ptr, ptr %i.cvo, align 8          ; 10 uses
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.554.0.copyload.i = load i64, ptr %.sroa.554.0..sroa_idx.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br i1 %i.cvn, label %bb.aau, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cvp) ]
  %i.cvq = icmp ult i64 %.sroa.554.0.copyload.i, 230584300921369396
  call void @llvm.assume(i1 %i.cvq)
  %.idx.i333 = mul nuw nsw i64 %.sroa.554.0.copyload.i, 40
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvp, i64 %.idx.i333 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr %i.cvp, ptr %i.bg, align 8
  %.sroa.5201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.6.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.cvm, ptr %.sroa.6.0..sroa_idx.i334, align 8
  %.sroa.7202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.cvr, ptr %.sroa.7202.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8206.i)
  %i.cvs = icmp eq i64 %.sroa.554.0.copyload.i, 0
  br i1 %i.cvs, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.lr.ph.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.lr.ph.i": ; preds = %bb.aac
  %.sroa.8206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 5 uses
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.5212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.8213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0..sroa_idx.i.i139.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx.i.i140.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.62.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.7.0..sroa_idx.i.i141.i = getelementptr inbounds nuw i8, ptr %i.r, i64 65
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i335 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 6 uses
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 6 uses
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.86.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.449.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.453.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.457.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 4 uses
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.i"

.body169.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i177.i", %bb.afl, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i.i", %bb.afi, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit129.i"
  %.pn72.i = phi { ptr, i32 } [ %.pn70.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit129.i" ], [ %i.dqs, %bb.afi ], [ %i.dra, %bb.afl ], [ %i.dqs, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i.i" ], [ %i.dra, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i177.i" ]
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..fs..DirEntry$GT$$GT$17hc57fd457a525b582E"(ptr noalias noundef align 8 dereferenceable(32) %i.bg) #33
          to label %.body.i331 unwind label %bb.afj

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.i": ; preds = %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h5bf4fe31355c134eE.exit.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.lr.ph.i"
  %i.cwi = phi ptr [ %i.cvp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h111b5e861825692aE.exit.lr.ph.i" ], [ %i.cwj, %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h5bf4fe31355c134eE.exit.i" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8073)
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwi, i64 40 ; 6 uses
  store ptr %i.cwj, ptr %.sroa.5201.0..sroa_idx.i, align 8, !alias.scope !8073, !noalias !8074
  %.sroa.0204.0.copyload205.i = load ptr, ptr %i.cwi, align 8, !noalias !8073 ; 2 uses
  %.sroa.8206.0..sroa_idx207.i = getelementptr inbounds nuw i8, ptr %i.cwi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8206.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8206.0..sroa_idx207.i, i64 32, i1 false), !noalias !8073
  %.not.i336 = icmp eq ptr %.sroa.0204.0.copyload205.i, null
end_hunk_2
begin_hunk_3_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  br label %bb.aar

bb.aar:                                           ; preds = %bb.aax, %.lr.ph.i342
  %.sroa.066.1655.i = phi ptr [ %.sroa.066.1653.i, %.lr.ph.i342 ], [ %.sroa.066.1.i, %bb.aax ] ; 3 uses
  %.sroa.066.0654.i = phi ptr [ %i.cxt, %.lr.ph.i342 ], [ %.sroa.066.1655.i, %bb.aax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %.sroa.066.0654.i, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %i.az, ptr %i.ax, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.461.0..sroa_idx.i, align 8
  store ptr @55, ptr %i.ay, align 8
  store i64 2, ptr %i.cxx, align 8
  store ptr null, ptr %i.cxy, align 8
  store ptr %i.ax, ptr %i.cxz, align 8
  store i64 1, ptr %i.cya, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ay)
          to label %bb.aax unwind label %.loopexit.i343

._crit_edge.i345:                                 ; preds = %bb.aax, %bb.aaq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr @73, ptr %i.aw, align 8
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 1, ptr %i.cyb, align 8
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr null, ptr %i.cyc, align 8
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cyd, align 8
  %i.cye = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.cye, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aw)
          to label %bb.aas unwind label %.loopexit.split-lp.i329

bb.aas:                                           ; preds = %._crit_edge.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.cyf = load i64, ptr %i.cvk, align 8, !noundef !16 ; 2 uses
  store i64 %i.cyf, ptr %i.at, align 8
  %i.cyg = icmp ult i64 %i.cyf, 384307168202282326
  call void @llvm.assume(i1 %i.cyg)
  store ptr %i.at, ptr %i.au, align 8
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.465.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8079
  store ptr @75, ptr %i.ap, align 8, !noalias !8080
  %.sroa.4215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 2, ptr %.sroa.4215.0..sroa_idx.i, align 8, !noalias !8080
  %.sroa.5216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.au, ptr %.sroa.5216.0..sroa_idx.i, align 8, !noalias !8080
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 1, ptr %.sroa.6217.0..sroa_idx.i, align 8, !noalias !8080
  %.sroa.7218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr null, ptr %.sroa.7218.0..sroa_idx.i, align 8, !noalias !8080
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ap)
          to label %bb.aat unwind label %.loopexit.split-lp.i329

bb.aat:                                           ; preds = %bb.aas
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.cyh = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17haef158ae05b406a1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.aau unwind label %.loopexit.split-lp.i329

bb.aau:                                           ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..fs..DirEntry$GT$$GT$17hc57fd457a525b582E.exit186.i", %bb.aat, %bb.aab
  %.sroa.0.1.i346 = phi ptr [ %i.cyh, %bb.aat ], [ %i.cyy, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..fs..DirEntry$GT$$GT$17hc57fd457a525b582E.exit186.i" ], [ %i.cvp, %bb.aab ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8081)
  %.val.i118.i = load ptr, ptr %i.cvj, align 8, !alias.scope !8081, !nonnull !16, !noundef !16 ; 2 uses
  %.val1.i119.i = load i64, ptr %i.cvk, align 8, !alias.scope !8081, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8082)
  %i.cyi = icmp eq i64 %.val1.i119.i, 0
  br i1 %i.cyi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i125.i", label %.lr.ph.i.i.i120.i

.lr.ph.i.i.i120.i:                                ; preds = %bb.aau, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i124.i"
  %.sroa.0.011.i.i.i121.i = phi i64 [ %i.cyk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i124.i" ], [ 0, %bb.aau ] ; 2 uses
  %i.cyj = getelementptr inbounds nuw [24 x i8], ptr %.val.i118.i, i64 %.sroa.0.011.i.i.i121.i ; 2 uses
  %i.cyk = add nuw i64 %.sroa.0.011.i.i.i121.i, 1 ; 2 uses
  %.val8.i.i.i122.i = load i64, ptr %i.cyj, align 8, !alias.scope !8082, !noalias !8081 ; 2 uses
  %i.cyl = icmp eq i64 %.val8.i.i.i122.i, 0
  br i1 %i.cyl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i124.i", label %bb.aav

bb.aav:                                           ; preds = %.lr.ph.i.i.i120.i
  %i.cym = getelementptr i8, ptr %i.cyj, i64 8
  %.val9.i.i.i123.i = load ptr, ptr %i.cym, align 8, !alias.scope !8082, !noalias !8081, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i123.i, i64 noundef %.val8.i.i.i122.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8083
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i124.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i124.i": ; preds = %bb.aav, %.lr.ph.i.i.i120.i
  %i.cyn = icmp eq i64 %i.cyk, %.val1.i119.i
  br i1 %i.cyn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i125.i", label %.lr.ph.i.i.i120.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i125.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i124.i", %bb.aau
  %.val2.i126.i = load i64, ptr %i.bi, align 8, !range !17, !alias.scope !8081, !noundef !16 ; 2 uses
  %i.cyo = icmp eq i64 %.val2.i126.i, 0
  br i1 %i.cyo, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit127.i", label %bb.aaw

bb.aaw:                                           ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i125.i"
  %i.cyp = mul nuw i64 %.val2.i126.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i118.i, i64 noundef %i.cyp, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !8081
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h123b195c811b98eaE.exit127.i"

bb.aax:                                           ; preds = %bb.aar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.cyq = icmp eq ptr %.sroa.066.1655.i, %i.cxv  ; 2 uses
  %.sroa.066.1.idx.i = select i1 %i.cyq, i64 0, i64 24
  %.sroa.066.1.i = getelementptr inbounds nuw i8, ptr %.sroa.066.1655.i, i64 %.sroa.066.1.idx.i
  br i1 %i.cyq, label %._crit_edge.i345, label %bb.aar

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit129.i": ; preds = %bb.aba, %.body132.i, %bb.aay
  %.pn70.i = phi { ptr, i32 } [ %i.cyr, %bb.aay ], [ %.pn.i339, %.body132.i ], [ %.pn.i339, %bb.aba ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h5bf4fe31355c134eE"(ptr noalias noundef align 8 dereferenceable(40) %i.bf) #33
          to label %.body169.i unwind label %bb.afj

bb.aay:                                           ; preds = %bb.aad
  %i.cyr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit129.i"

bb.aaz:                                           ; preds = %bb.aad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %.val.i.i.i337 = load ptr, ptr %i.cvt, align 8, !alias.scope !8084, !noalias !8085, !nonnull !16, !noundef !16 ; 5 uses
  %.val1.i.i.i338 = load i64, ptr %i.cvu, align 8, !alias.scope !8084, !noalias !8085, !noundef !16 ; 4 uses
  invoke void @_ZN3std2fs14read_to_string5inner17h9de4c5ac53797604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i337, i64 noundef %.val1.i.i.i338)
          to label %_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i unwind label %.loopexit320.i

.body132.i:                                       ; preds = %bb.abn, %.body161.i, %bb.abi, %bb.abh, %.loopexit.split-lp321.i, %.loopexit320.i
  %.pn.i339 = phi { ptr, i32 } [ %i.czd, %bb.abi ], [ %eh.lpad-body162.i, %bb.abn ], [ %i.cyz, %bb.abh ], [ %eh.lpad-body162.i, %.body161.i ], [ %lpad.loopexit322.i, %.loopexit320.i ], [ %lpad.loopexit.split-lp323.i, %.loopexit.split-lp321.i ] ; 2 uses
  %.val95.i = load i64, ptr %i.be, align 8        ; 2 uses
  %i.cys = icmp eq i64 %.val95.i, 0
  br i1 %i.cys, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit129.i", label %bb.aba

bb.aba:                                           ; preds = %.body132.i
  %.val96.i = load ptr, ptr %i.cvt, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef %.val95.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit129.i"

.loopexit320.i:                                   ; preds = %bb.aaz
  %lpad.loopexit322.i = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp321.i:                          ; preds = %bb.abd
  %lpad.loopexit.split-lp323.i = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i: ; preds = %bb.aaz
  call void @llvm.experimental.noalias.scope.decl(metadata !8086)
  call void @llvm.experimental.noalias.scope.decl(metadata !8087)
  %i.cyt = load i64, ptr %i.bd, align 8, !range !21, !alias.scope !8087, !noalias !8086, !noundef !16 ; 5 uses
  %i.cyu = icmp eq i64 %i.cyt, -9223372036854775808
  %i.cyv = load ptr, ptr %.sroa.5212.0..sroa_idx.i, align 8, !alias.scope !8088 ; 22 uses
  br i1 %i.cyu, label %bb.abb, label %bb.abm

bb.abb:                                           ; preds = %_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8089
  store ptr %i.cyv, ptr %i.ao, align 8, !noalias !8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8090
  store ptr %.val.i.i.i337, ptr %i.al, align 8, !noalias !8090
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.val1.i.i.i338, ptr %i.cyw, align 8, !noalias !8090
  store ptr %i.al, ptr %i.am, align 8, !noalias !8090
  %.sroa.42.0..sroa_idx.i.i.i390 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx.i.i.i390, align 8, !noalias !8090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8091
  store ptr @77, ptr %i.ak, align 8, !noalias !8092
  %.sroa.4.0..sroa_idx.i.i.i391 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i391, align 8, !noalias !8092
  %.sroa.5.0..sroa_idx.i.i.i392 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i392, align 8, !noalias !8092
  %.sroa.6.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i393, align 8, !noalias !8092
  %.sroa.7.0..sroa_idx.i.i.i394 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i394, align 8, !noalias !8092
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ak)
          to label %bb.abc unwind label %bb.abi, !noalias !8089

bb.abc:                                           ; preds = %bb.abb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8090
  call void @llvm.experimental.noalias.scope.decl(metadata !8093)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8089
  store ptr %i.cyv, ptr %i.aj, align 8, !noalias !8094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8094
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.abd unwind label %bb.abe, !noalias !8094

bb.abd:                                           ; preds = %bb.abc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !8094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !8095
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.cyv, ptr %i.cyx, align 8, !noalias !8096
  %i.cyy = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45c5a1d7a44c14e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.abk unwind label %.loopexit.split-lp321.i

bb.abe:                                           ; preds = %bb.abc
  %i.cyz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i130.i = load i64, ptr %i.an, align 8, !alias.scope !8093, !noalias !8089 ; 2 uses
  %i.cza = icmp eq i64 %.val.i.i130.i, 0
  br i1 %i.cza, label %bb.abh, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.czb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val3.i.i.i395 = load ptr, ptr %i.czb, align 8, !alias.scope !8093, !noalias !8089, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i395, i64 noundef %.val.i.i130.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8094
  br label %bb.abh

bb.abg:                                           ; preds = %bb.abh
  %i.czc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8094
  unreachable

bb.abh:                                           ; preds = %bb.abf, %bb.abe
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #33
          to label %.body132.i unwind label %bb.abg, !noalias !8094

bb.abi:                                           ; preds = %bb.abb
  %i.czd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #33
          to label %.body132.i unwind label %bb.abj, !noalias !8089

bb.abj:                                           ; preds = %bb.abi
  %i.cze = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8089
  unreachable

bb.abk:                                           ; preds = %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.val93.i = load i64, ptr %i.be, align 8        ; 2 uses
  %i.czf = icmp eq i64 %.val93.i, 0
  br i1 %i.czf, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit134.i", label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i337, i64 noundef %.val93.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit134.i"

bb.abm:                                           ; preds = %_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i
  %.sroa.8213.0.copyload.i = load i64, ptr %.sroa.8213.0..sroa_idx.i, align 8, !alias.scope !8089 ; 32 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.czg = invoke { ptr, i64 } @_ZN3std4path4Path13_strip_prefix17h70fd9b124dcff30fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i337, i64 noundef %.val1.i.i.i338, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cvf, i64 noundef %.sroa.8199.0.copyload.i)
          to label %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.loopexit304.i:                                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %lpad.loopexit306.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.i:                 ; preds = %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i", %bb.acr
  %lpad.loopexit310.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %lpad.loopexit313.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.adp, %.noexc151.i, %bb.ack, %.noexc149.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i", %bb.acf, %bb.ace, %.noexc143.i, %bb.abr
  %lpad.loopexit317.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.abm
  %lpad.loopexit325.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke2962, %bb.adq
  %lpad.loopexit.split-lp326.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.body161.i:                                       ; preds = %bb.adw, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit86.i.i.i", %bb.adt, %bb.ads, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.i, %.loopexit304.i
  %eh.lpad-body162.i = phi { ptr, i32 } [ %.pn.i.i.i372, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit86.i.i.i" ], [ %lpad.loopexit.i.i.i.i.i.i.i, %bb.ads ], [ %lpad.phi9.i.i.i.i.i.i.i, %bb.adt ], [ %.pn.i.i.i372, %bb.adw ], [ %lpad.loopexit306.i, %.loopexit304.i ], [ %lpad.loopexit310.i, %.loopexit.split-lp305.loopexit.i ], [ %lpad.loopexit313.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit317.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit325.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp326.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.czh = icmp eq i64 %i.cyt, 0
  br i1 %i.czh, label %.body132.i, label %bb.abn

bb.abn:                                           ; preds = %.body161.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cyv) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cyv, i64 noundef %i.cyt, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body132.i

_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i: ; preds = %bb.abm
  %i.czi = extractvalue { ptr, i64 } %i.czg, 0    ; 2 uses
  %i.czj = icmp eq ptr %i.czi, null               ; 2 uses
  %i.czk = extractvalue { ptr, i64 } %i.czg, 1
  %.sroa.539.0.i = select i1 %i.czj, i64 %.val1.i.i.i338, i64 %i.czk
  %.sroa.038.0.i = select i1 %i.czj, ptr %.val.i.i.i337, ptr %i.czi
  call void @llvm.experimental.noalias.scope.decl(metadata !8097)
  call void @llvm.experimental.noalias.scope.decl(metadata !8098)
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.8213.0.copyload.i ; 4 uses
  br label %bb.abo

bb.abo:                                           ; preds = %.backedge.i.i, %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i
  %.sroa.0.0.i.i340 = phi i64 [ 0, %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 9 uses
  %i.czm = icmp eq i64 %.sroa.0.0.i.i340, 0
  br i1 %i.czm, label %bb.abr, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %.not.i.i.i341 = icmp ult i64 %.sroa.0.0.i.i340, %.sroa.8213.0.copyload.i
  br i1 %.not.i.i.i341, label %bb.abq, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.abp
  %i.czn = icmp eq i64 %.sroa.0.0.i.i340, %.sroa.8213.0.copyload.i
  br i1 %i.czn, label %bb.abr, label %.invoke2962

bb.abq:                                           ; preds = %bb.abp
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.0.0.i.i340
  %i.czp = load i8, ptr %i.czo, align 1, !alias.scope !8099, !noalias !8100, !noundef !16
  %i.czq = icmp sgt i8 %i.czp, -65
  br i1 %i.czq, label %bb.abr, label %.invoke2962

bb.abr:                                           ; preds = %bb.abq, %.split.i.i.i, %bb.abo
  %i.czr = sub nuw i64 %.sroa.8213.0.copyload.i, %.sroa.0.0.i.i340
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.0.0.i.i340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8101
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ae, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.czs, i64 noundef %i.czr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @171, i64 noundef range(i64 7, 15) 14)
          to label %.noexc143.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc143.i:                                      ; preds = %bb.abr
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef align 8 dereferenceable(104) %i.ae)
          to label %.noexc144.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc144.i:                                      ; preds = %.noexc143.i
  %i.czt = load i64, ptr %i.af, align 8, !range !37, !noalias !8101, !noundef !16
  %i.czu = trunc nuw i64 %i.czt to i1
  %i.czv = load i64, ptr %i.cvv, align 8, !noalias !8101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8101
  br i1 %i.czu, label %bb.abs, label %_ZN17openapi_generator26check_query_params_in_file17h5f39b7d75028c088E.exit.i

bb.abs:                                           ; preds = %.noexc144.i
  %i.czw = add i64 %i.czv, %.sroa.0.0.i.i340      ; 21 uses
  %i.czx = add i64 %i.czw, 2                      ; 6 uses
  %i.czy = icmp eq i64 %i.czx, 0
  br i1 %i.czy, label %bb.abv, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %.not.i.i.i.i358 = icmp ult i64 %i.czx, %.sroa.8213.0.copyload.i
  br i1 %.not.i.i.i.i358, label %bb.abu, label %.split.i.i.i.i359

.split.i.i.i.i359:                                ; preds = %bb.abt
  %i.czz = icmp eq i64 %i.czx, %.sroa.8213.0.copyload.i
  br i1 %i.czz, label %bb.abv, label %.backedge.i.i

bb.abu:                                           ; preds = %bb.abt
  %i.daa = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.czx
  %i.dab = load i8, ptr %i.daa, align 1, !alias.scope !8102, !noalias !8100, !noundef !16
  %i.dac = icmp sgt i8 %i.dab, -65
  br i1 %i.dac, label %bb.abv, label %.backedge.i.i

bb.abv:                                           ; preds = %bb.abu, %.split.i.i.i.i359, %bb.abs
  %i.dad = sub nuw i64 %.sroa.8213.0.copyload.i, %i.czx ; 6 uses
  %i.dae = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.czx ; 4 uses
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %bb.abv
  %i.daf = phi i64 [ 0, %bb.abv ], [ %i.das, %.backedge.i.i.i.i.backedge ] ; 5 uses
  %i.dag = sub nuw i64 %i.dad, %i.daf             ; 3 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.daf ; 2 uses
  %i.dai = icmp ult i64 %i.dag, 16
  br i1 %i.dai, label %.preheader.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.backedge.i.i.i.i
  %.not.i.i.i.i.i.i389 = icmp eq i64 %i.dad, %i.daf
  br i1 %.not.i.i.i.i.i.i389, label %.backedge.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.abw
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.dam, %bb.abw ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dah, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.dak = load i8, ptr %i.daj, align 1, !alias.scope !8103, !noalias !8104, !noundef !16
  %i.dal = icmp eq i8 %i.dak, 40
  br i1 %i.dal, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %bb.abw

bb.abw:                                           ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dam = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dam, %i.dag
  br i1 %exitcond.not.i.i.i.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i: ; preds = %.backedge.i.i.i.i
  %i.dan = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dah, i64 noundef %i.dag)
          to label %.noexc146.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.i ; 2 uses

end_hunk_3
begin_hunk_4_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  %i.drw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.n, align 8, !noalias !8171 ; 2 uses
  %i.drx = icmp eq i64 %.val4.i, 0
  br i1 %i.drx, label %.body410, label %bb.afz

bb.afz:                                           ; preds = %bb.afy
  %.val5.i = load ptr, ptr %i.drt, align 8, !noalias !8171, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8171
  br label %.body410

bb.aga:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8173
  %.not.i407 = icmp eq ptr %i.drv, null
  %.sroa.0481.0.copyload = load i64, ptr %i.n, align 8, !noalias !8175 ; 4 uses
  br i1 %.not.i407, label %bb.agl, label %bb.agb

bb.agb:                                           ; preds = %bb.aga
  %i.dry = icmp eq i64 %.sroa.0481.0.copyload, 0
  br i1 %i.dry, label %.thread510, label %bb.agc

bb.agc:                                           ; preds = %bb.agb
  %.val3.i = load ptr, ptr %i.drt, align 8, !noalias !8171, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.sroa.0481.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8171
  br label %.thread510

bb.agd:                                           ; preds = %bb.afw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8176
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8177
  %i.drz = call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #37, !noalias !8177 ; 2 uses
  %i.dsa = icmp eq ptr %i.drz, null
  br i1 %i.dsa, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i412"

.invoke:                                          ; preds = %bb.agd, %bb.afx
  %i.dsb = phi ptr [ @10, %bb.afx ], [ @6, %bb.agd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dsb) #38
          to label %.cont unwind label %bb.agk

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i412": ; preds = %bb.agd
  store i64 128, ptr %i.l, align 8, !noalias !8176
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %i.drz, ptr %i.dsc, align 8, !noalias !8176
  %i.dsd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.dsd, align 8, !noalias !8176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8178
  store ptr %i.l, ptr %i.k, align 8, !noalias !8178
  %i.dse = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @7, ptr %i.dse, align 8, !noalias !8178
  %.sroa.4.0..sroa_idx.i.i413 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i413, align 8, !noalias !8178
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !8178
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !8178
  %i.dsf = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17ha2d779eec244e936E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg, ptr noalias noundef align 8 dereferenceable(40) %i.k)
          to label %bb.agg unwind label %bb.age, !noalias !8179 ; 2 uses

bb.age:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i412"
  %i.dsg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i414 = load i64, ptr %i.l, align 8, !noalias !8176 ; 2 uses
  %i.dsh = icmp eq i64 %.val4.i414, 0
  br i1 %i.dsh, label %.body410, label %bb.agf

bb.agf:                                           ; preds = %bb.age
  %.val5.i415 = load ptr, ptr %i.dsc, align 8, !noalias !8176, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i415, i64 noundef %.val4.i414, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8176
  br label %.body410

bb.agg:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i412"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8178
  %.not.i417 = icmp eq ptr %i.dsf, null
  %.sroa.0478.0.copyload = load i64, ptr %i.l, align 8, !noalias !8180 ; 4 uses
  br i1 %.not.i417, label %bb.agn, label %bb.agh

bb.agh:                                           ; preds = %bb.agg
  %i.dsi = icmp eq i64 %.sroa.0478.0.copyload, 0
  br i1 %i.dsi, label %.thread523, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %.val3.i419 = load ptr, ptr %i.dsc, align 8, !noalias !8176, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i419, i64 noundef %.sroa.0478.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8176
  br label %.thread523

.body410:                                         ; preds = %bb.agp, %.body434, %bb.afz, %bb.afy, %bb.age, %bb.agf, %bb.agk
  %.pn = phi { ptr, i32 } [ %i.dsg, %bb.age ], [ %i.drw, %bb.afy ], [ %i.drw, %bb.afz ], [ %i.dsk, %bb.agk ], [ %i.dsg, %bb.agf ], [ %eh.lpad-body435, %.body434 ], [ %eh.lpad-body435, %bb.agp ] ; 2 uses
  %i.dsj = icmp eq i64 %.sroa.0462.0, 0
  br i1 %i.dsj, label %.body162, label %bb.agj

bb.agj:                                           ; preds = %.body410
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0484) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0484, i64 noundef %.sroa.0462.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body162

bb.agk:                                           ; preds = %.invoke2416, %.invoke
  %i.dsk = landingpad { ptr, i32 }
          cleanup
  br label %.body410

.thread510:                                       ; preds = %bb.agb, %bb.agc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8171
  br label %.invoke2416

bb.agl:                                           ; preds = %bb.aga
  %.sroa.6482.0.copyload = load ptr, ptr %i.drt, align 8, !noalias !8175 ; 2 uses
  %.sroa.9483.0.copyload = load i64, ptr %i.dru, align 8, !noalias !8175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8171
  %i.dsl = icmp eq i64 %.sroa.0481.0.copyload, -9223372036854775808
  br i1 %i.dsl, label %.invoke2416, label %bb.agm

bb.agm:                                           ; preds = %bb.agn, %bb.agl
  %.sroa.14469.0 = phi i64 [ %.sroa.9483.0.copyload, %bb.agl ], [ %.sroa.9480.0.copyload, %bb.agn ]
  %.sroa.8468.0 = phi ptr [ %.sroa.6482.0.copyload, %bb.agl ], [ %.sroa.6479.0.copyload, %bb.agn ] ; 5 uses
  %.sroa.0465.0 = phi i64 [ %.sroa.0481.0.copyload, %bb.agl ], [ %.sroa.0478.0.copyload, %bb.agn ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8468.0) ]
  %i.dsm = invoke noundef ptr @_ZN3std2fs5write5inner17ha8f0a95daa2fc383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0484, i64 noundef %.sroa.15.0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8468.0, i64 noundef %.sroa.14469.0)
          to label %_ZN3std2fs5write17h938cb9515c7363a5E.exit unwind label %bb.ago ; 4 uses

.thread523:                                       ; preds = %bb.agh, %bb.agi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8176
  br label %.invoke2416

bb.agn:                                           ; preds = %bb.agg
  %.sroa.6479.0.copyload = load ptr, ptr %i.dsc, align 8, !noalias !8180 ; 2 uses
  %.sroa.9480.0.copyload = load i64, ptr %i.dsd, align 8, !noalias !8180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8176
  %i.dsn = icmp eq i64 %.sroa.0478.0.copyload, -9223372036854775808
  br i1 %i.dsn, label %.invoke2416, label %bb.agm

.invoke2416:                                      ; preds = %.thread523, %bb.agn, %.thread510, %bb.agl
  %.sroa.6482.0514.sink = phi ptr [ %.sroa.6482.0.copyload, %bb.agl ], [ %i.drv, %.thread510 ], [ %i.dsf, %.thread523 ], [ %.sroa.6479.0.copyload, %bb.agn ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6482.0514.sink) ]
  %i.dso = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hb89519a85d0c63efE"(ptr noalias noundef nonnull align 8 %.sroa.6482.0514.sink)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437" unwind label %bb.agk

bb.ago:                                           ; preds = %bb.ags, %bb.agm, %bb.ahb
  %i.dsp = landingpad { ptr, i32 }
          cleanup
  br label %.body434

.body434:                                         ; preds = %bb.agw, %bb.agx, %bb.ago
  %eh.lpad-body435 = phi { ptr, i32 } [ %i.dsp, %bb.ago ], [ %i.dsu, %bb.agw ], [ %i.dsy, %bb.agx ] ; 2 uses
  %i.dsq = icmp eq i64 %.sroa.0465.0, 0
  br i1 %i.dsq, label %.body410, label %bb.agp

bb.agp:                                           ; preds = %.body434
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8468.0, i64 noundef %.sroa.0465.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body410

_ZN3std2fs5write17h938cb9515c7363a5E.exit:        ; preds = %bb.agm
  %.not.i427 = icmp eq ptr %i.dsm, null
  br i1 %.not.i427, label %bb.ahb, label %bb.agq

bb.agq:                                           ; preds = %_ZN3std2fs5write17h938cb9515c7363a5E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dsm, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8181
  store ptr %.sroa.8.0484, ptr %i.g, align 8, !noalias !8181
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.15.0, ptr %i.dsr, align 8, !noalias !8181
  store ptr %i.g, ptr %i.h, align 8, !noalias !8181
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !8181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8182
  store ptr @222, ptr %i.f, align 8, !noalias !8183
  %.sroa.4.0..sroa_idx.i.i428 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i428, align 8, !noalias !8183
  %.sroa.5.0..sroa_idx.i.i429 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i429, align 8, !noalias !8183
  %.sroa.6.0..sroa_idx.i.i430 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i430, align 8, !noalias !8183
  %.sroa.7.0..sroa_idx.i.i431 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i431, align 8, !noalias !8183
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.agr unwind label %bb.agx

bb.agr:                                           ; preds = %bb.agq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8181
  call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.dsm, ptr %i.e, align 8, !noalias !8184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8184
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ags unwind label %bb.agt, !noalias !8184

bb.ags:                                           ; preds = %bb.agr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !8184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !8185
  %i.dss = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.dsm, ptr %i.dss, align 8, !noalias !8186
  %i.dst = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45c5a1d7a44c14e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.agz unwind label %bb.ago   ; 2 uses

bb.agt:                                           ; preds = %bb.agr
  %i.dsu = landingpad { ptr, i32 }
          cleanup
  %.val.i.i432 = load i64, ptr %i.i, align 8, !alias.scope !8184 ; 2 uses
  %i.dsv = icmp eq i64 %.val.i.i432, 0
  br i1 %i.dsv, label %bb.agw, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val3.i.i = load ptr, ptr %i.dsw, align 8, !alias.scope !8184, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val.i.i432, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8184
  br label %bb.agw

bb.agv:                                           ; preds = %bb.agw
  %i.dsx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8184
  unreachable

bb.agw:                                           ; preds = %bb.agu, %bb.agt
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #33
          to label %.body434 unwind label %bb.agv, !noalias !8184

bb.agx:                                           ; preds = %bb.agq
  %i.dsy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #33
          to label %.body434 unwind label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  %i.dsz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.agz:                                           ; preds = %bb.ags
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dta = icmp eq i64 %.sroa.0465.0, 0
  br i1 %i.dta, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437", label %bb.aha

bb.aha:                                           ; preds = %bb.agz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8468.0, i64 noundef %.sroa.0465.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437"

bb.ahb:                                           ; preds = %_ZN3std2fs5write17h938cb9515c7363a5E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  store ptr %.sroa.8.0484, ptr %i.kc, align 8
  %i.dtb = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i64 %.sroa.15.0, ptr %i.dtb, align 8
  store ptr %i.kc, ptr %i.kd, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.499.0..sroa_idx, align 8
  store ptr @220, ptr %i.ke, align 8
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i64 2, ptr %i.dtc, align 8
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  store ptr null, ptr %i.dtd, align 8
  %i.dte = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store ptr %i.kd, ptr %i.dte, align 8
  %i.dtf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store i64 1, ptr %i.dtf, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ke)
          to label %bb.ahc unwind label %bb.ago

bb.ahc:                                           ; preds = %bb.ahb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ke)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  %i.dtg = icmp eq i64 %.sroa.0465.0, 0
  br i1 %i.dtg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit439", label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8468.0, i64 noundef %.sroa.0465.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit439"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit439": ; preds = %bb.ahd, %bb.ahc
  %i.dth = icmp eq i64 %.sroa.0462.0, 0
  br i1 %i.dth, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit440", label %bb.ahe

bb.ahe:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit439"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0484, i64 noundef %.sroa.0462.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit440"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit440": ; preds = %bb.ahe, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit439"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef align 8 dereferenceable(72) %i.kg)
          to label %bb.ahf unwind label %bb.oi

bb.ahf:                                           ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit440"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$utoipa..openapi..OpenApi$GT$17hd5704d9a60762741E"(ptr noalias noundef align 8 dereferenceable(824) %i.kh)
          to label %bb.ahg unwind label %bb.fk

bb.ahg:                                           ; preds = %bb.ahf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hd316423a8ece3e57E.exit"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hd316423a8ece3e57E.exit": ; preds = %bb.ahm, %bb.ahl, %bb.ahl, %bb.ahk, %bb.ahg
  %.sroa.0.0 = phi ptr [ null, %bb.ahg ], [ %.sroa.0.3, %bb.ahk ], [ %.sroa.0.3, %bb.ahl ], [ %.sroa.0.3, %bb.ahl ], [ %.sroa.0.3, %bb.ahm ]
  ret ptr %.sroa.0.0

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437": ; preds = %.invoke2416, %bb.aha, %bb.agz
  %.sroa.0.1 = phi ptr [ %i.dst, %bb.aha ], [ %i.dso, %.invoke2416 ], [ %i.dst, %bb.agz ] ; 2 uses
  %i.dti = icmp eq i64 %.sroa.0462.0, 0
  br i1 %i.dti, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441", label %bb.ahh

bb.ahh:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0484) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0484, i64 noundef %.sroa.0462.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"

bb.ahi:                                           ; preds = %.body162, %.body
  %i.dtj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437", %bb.ahh, %.thread506, %.thread499, %.thread495, %.thread492, %.thread489, %bb.afs, %bb.pq, %bb.pb
  %.sroa.071.6 = phi i8 [ 1, %.thread506 ], [ 1, %bb.pb ], [ 1, %bb.pq ], [ 1, %.thread495 ], [ 1, %.thread499 ], [ 1, %bb.afs ], [ 1, %.thread489 ], [ 1, %.thread492 ], [ 0, %bb.ahh ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437" ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.cus, %.thread506 ], [ %.sroa.0.023.i, %bb.pb ], [ %.sroa.0.023.i191, %bb.pq ], [ %.sroa.0.0.i.ph, %.thread495 ], [ %.sroa.0.0.i250.ph, %.thread499 ], [ %.sroa.0.0.i347, %bb.afs ], [ %i.atf, %.thread489 ], [ %i.aur, %.thread492 ], [ %.sroa.0.1, %bb.ahh ], [ %.sroa.0.1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit437" ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef align 8 dereferenceable(72) %i.kg)
          to label %bb.ahj unwind label %bb.oi

bb.ahj:                                           ; preds = %bb.ok, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441"
  %.sroa.071.7 = phi i8 [ %.sroa.071.6, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441" ], [ 1, %bb.ok ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441" ], [ %i.asz, %bb.ok ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$utoipa..openapi..OpenApi$GT$17hd5704d9a60762741E"(ptr noalias noundef align 8 dereferenceable(824) %i.kh)
          to label %bb.ahk unwind label %bb.fk

bb.ahk:                                           ; preds = %bb.ahj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  %i.dtk = trunc nuw i8 %.sroa.071.7 to i1
  br i1 %i.dtk, label %bb.ahl, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hd316423a8ece3e57E.exit"

bb.ahl:                                           ; preds = %bb.ahk
  switch i64 %.sroa.7.0158.i.i, label %bb.ahm [
    i64 -9223372036854775808, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hd316423a8ece3e57E.exit"
    i64 0, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hd316423a8ece3e57E.exit"
  ]

bb.ahm:                                           ; preds = %bb.ahl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0157.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0157.i.i, i64 noundef %.sroa.7.0158.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hd316423a8ece3e57E.exit"

bb.ahn:                                           ; preds = %bb.fj
  switch i64 %.sroa.7.0158.i.i, label %bb.aho [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.aho:                                           ; preds = %bb.ahn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0157.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0157.i.i, i64 noundef %.sroa.7.0158.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN3std2rt10lang_start17hdf90118898d0f042E(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_ZN3std2rt19lang_start_internal17h6ba36b077a531782E(ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @224, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 2) i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hca647a8d2762b986E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.e = tail call fastcc noundef ptr @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h186125e1a123e6c4E(ptr noundef nonnull %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$std..process..Termination$GT$6report17h5b576fc66f9a6ef4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN6anyhow5error60_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..Error$GT$3fmt17h917d9e1f1af60d41E", ptr %.sroa.45.0..sroa_idx.i, align 8
  store ptr @473, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8
end_hunk_4
begin_hunk_5_@_ZN4core5error5Error7provide17ha3a9193f70ad05c7E:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hc5592f4802c70390E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd3048a57dcc25e48E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hf8fde76b6031dc1bE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h194df85831543698E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @233, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h245fa976d02ac31bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @234, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h2e1512a633b253dfE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @235, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h3841f225f6348055E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @236, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h3b17f07639f52fdaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @237, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h591c9247f82f0f90E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @238, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h65980e023c1dd553E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @239, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h67e829a3eb905ea6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @240, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h7db6fca6a33bcf32E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @241, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h8c963ed896f0198aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @242, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h96db411e4ce596e1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @243, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hb972d7e1bd0d7b42E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @244, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hbbc0af9e06ffc4c1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @245, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hbd86fc440bc64c9aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @246, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hd224f7e7089ad765E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @247, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hae2340b50cfed68eE(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 7 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 32
  %.val11.i = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 40
  %.val12.i = load i64, ptr %i.c, align 8, !noundef !16 ; 5 uses
  %i.d = getelementptr i8, ptr %.pn3, i64 8
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr i8, ptr %.pn3, i64 16
  %.val14.i = load i64, ptr %i.e, align 8, !noundef !16 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.f = sub i64 %.val12.i, %.val14.i
  %i.g = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val13.i, i64 %..i.i.i.i.i.i.i), !alias.scope !9615 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.i, i64 %i.f, i64 %i.h
  %i.j = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit

bb.a:                                             ; preds = %.lr.ph
  %.sroa.08.0.copyload.i = load i64, ptr %.sroa.0.04, align 8
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i1, i64 24, i1 false)
  %i.k = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 24, i1 false)
  %i.l = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i1, %bb.a ] ; 5 uses
  %.sroa.5.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.0.04, %bb.a ] ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.5.0.i2, i64 -40
  %.val9.i = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16
  %i.n = getelementptr i8, ptr %.sroa.5.0.i2, i64 -32
  %.val10.i = load i64, ptr %i.n, align 8, !noundef !16 ; 2 uses
  %..i.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.o = sub i64 %.val12.i, %.val10.i
  %i.p = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val9.i, i64 %..i.i.i.i.i.i15.i), !alias.scope !9616 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %spec.store.select.i.i.i.i.i.i16.i = select i1 %i.r, i64 %i.o, i64 %i.q
  %i.s = icmp slt i64 %spec.store.select.i.i.i.i.i.i16.i, 0
  br i1 %i.s, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %.lr.ph5, %bb.a
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.04, %bb.a ], [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.5.0.i2, %.lr.ph5 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  store i64 %.sroa.08.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !9617
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !9617
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !9617
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h60e71dd7db3fddedE.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hebfb1d74b3956f56E"(ptr noundef nonnull %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @65, ptr %i.a, align 8, !noalias !9620
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 54, ptr %i.e, align 8, !noalias !9620
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.f, align 8, !noalias !9620
  %i.g = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h57bdd95ddb9bccd0E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 2, 17) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.thread: ; preds = %.split.us.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader", %.lr.ph.split.us.i.i, %bb.s, %bb.u, %bb.b, %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit
  %.sroa.011.0 = phi i8 [ 0, %bb.b ], [ %i.dr, %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit ], [ %i.dt, %bb.u ], [ %.sroa.015.5.i, %bb.s ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.011.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.u, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9641)
  %i.f = load i8, ptr %0, align 1, !alias.scope !9640, !noalias !9641, !noundef !16 ; 6 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = icmp eq i64 %1, 2
  br i1 %i.h, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 17) %1, i64 4) ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, %1
  br i1 %i.j, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.k = icmp ult i64 %i.i, %i.x
  br i1 %i.k, label %.lr.ph.1, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit

.lr.ph.1:                                         ; preds = %bb.e
  %i.l = add nsw i64 %1, -2                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !9640, !noalias !9642, !noundef !16 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.1
  %i.o = icmp ult i64 %i.i, %i.l
  br i1 %i.o, label %.lr.ph.2, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit

.lr.ph.2:                                         ; preds = %bb.f
  %i.p = add nsw i64 %1, -3                       ; 4 uses
  %i.q = icmp samesign ugt i64 %1, 2
  br i1 %i.q, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.2", label %bb.h

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.2": ; preds = %.lr.ph.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !9640, !noalias !9642, !noundef !16 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.s, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.g, label %bb.i

bb.g:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.2"
  %i.t = icmp ult i64 %i.i, %i.p
  br i1 %i.t, label %.lr.ph.3, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit

.lr.ph.3:                                         ; preds = %bb.g
  %i.u = add nsw i64 %1, -4                       ; 3 uses
  %.not65 = icmp eq i64 %1, 3
  br i1 %.not65, label %bb.h, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.3"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.3": ; preds = %.lr.ph.3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !9640, !noalias !9642, !noundef !16 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.w, %i.f
  br i1 %.not.i.not.i.i.3, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit, label %bb.i

.lr.ph:                                           ; preds = %bb.d
  %i.x = add nsw i64 %1, -1                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !9640, !noalias !9642, !noundef !16 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.z, %i.f
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.i

bb.h:                                             ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa60 = phi i64 [ %i.u, %.lr.ph.3 ], [ %i.p, %.lr.ph.2 ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa60, i64 noundef range(i64 2, 17) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #38, !noalias !9643
  unreachable

bb.i:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.2", %.lr.ph.1, %.lr.ph
  %.lcssa63 = phi i8 [ %i.z, %.lr.ph ], [ %i.n, %.lr.ph.1 ], [ %i.s, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.2" ], [ %i.w, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.3" ]
  %.lcssa61 = phi i64 [ %i.x, %.lr.ph ], [ %i.l, %.lr.ph.1 ], [ %i.p, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.2" ], [ %i.u, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hcfc30cf49ef35f8bE.exit.i.i.3" ]
  %i.aa = add nuw nsw i64 %1, 15
  %i.ab = icmp ult i64 %3, %i.aa
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %bb.j

.thread.i:                                        ; preds = %bb.c
  %i.ac = icmp ult i64 %3, 17
  br i1 %i.ac, label %.lr.ph.split.us.i.i, label %.thread106.i

.thread106.i:                                     ; preds = %.thread.i
  %i.ad = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.ae = shufflevector <1 x i8> %i.ad, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load <1 x i8>, ptr %.phi.trans.insert.i, align 1, !alias.scope !9640, !noalias !9641
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = insertelement <1 x i8> poison, i8 %.lcssa63, i64 0
  %i.ag = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.ah = shufflevector <1 x i8> %i.ag, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

.lr.ph.split.us.i.i:                              ; preds = %bb.i, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 17) %1), !alias.scope !9644, !noalias !9645
  %i.ai = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ai, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.aj = add i64 %3, -1                          ; 2 uses
  %.not28.i.i56 = icmp ugt i64 %1, %i.aj
  br i1 %.not28.i.i56, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i"
  %i.ak = phi i64 [ %i.an, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i" ], [ %i.aj, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader" ]
  %.pn.i57 = phi ptr [ %i.al, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i.preheader" ]
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i57, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 17) %1), !alias.scope !9644, !noalias !9645
  %i.am = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.am, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17he1cd1c77c6b0fa93E.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.an = add i64 %i.ak, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.an
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.thread, label %.split.us.i.i

bb.k:                                             ; preds = %bb.j, %.thread106.i
  %i.ao = phi <1 x i8> [ %.pre.i, %.thread106.i ], [ %i.af, %bb.j ]
  %i.ap = phi <16 x i8> [ %i.ae, %.thread106.i ], [ %i.ah, %bb.j ] ; 6 uses
  %storemerge105108.i = phi i64 [ 1, %.thread106.i ], [ %.lcssa61, %bb.j ] ; 6 uses
  %i.aq = shufflevector <1 x i8> %i.ao, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9644
  store ptr %2, ptr %i.a, align 8, !noalias !9644
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.as, align 8, !noalias !9644
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ar, ptr %i.at, align 8, !noalias !9644
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.au, align 8, !noalias !9644
  %i.av = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.av, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.k
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.k ], [ %.sroa.015.2.3.i, %bb.o ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.cn, %bb.o ] ; 2 uses
  %i.aw = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ax = add i64 %.sroa.07.0.lcssa.i, %i.aw
  %i.ay = icmp uge i64 %i.ax, %3
  %i.az = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3118.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond3118.i, label %._crit_edge.i, label %.lr.ph120.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.o
  %.sroa.07.0116.i = phi i64 [ %i.cn, %bb.o ], [ 0, %bb.k ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0116.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !9641, !noalias !9646
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %storemerge105108.i
  %.val.i.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !9641, !noalias !9646
  %i.bc = icmp eq <16 x i8> %.val3.i.i, %i.ap
  %i.bd = icmp eq <16 x i8> %.val.i.i, %i.aq
  %narrow.i.i = select <16 x i1> %i.bc, <16 x i1> %i.bd, <16 x i1> zeroinitializer
  %i.be = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !9641, !noalias !9646
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge105108.i
  %.val.i.1.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !9641, !noalias !9646
  %i.bh = icmp eq <16 x i8> %.val3.i.1.i, %i.ap
  %i.bi = icmp eq <16 x i8> %.val.i.1.i, %i.aq
  %narrow.i.1.i = select <16 x i1> %i.bh, <16 x i1> %i.bi, <16 x i1> zeroinitializer
  %i.bj = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !9641, !noalias !9646
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %storemerge105108.i
  %.val.i.2.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !9641, !noalias !9646
end_hunk_5
begin_hunk_6_@_ZN6anyhow5error23object_reallocate_boxed17ha35bdd26fd28fa3eE:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #37 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #33
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #37
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @300, 1
  ret { ptr, ptr } %i.l

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hae3299c15e0a96a8E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !22, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !10561
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #37 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h1a1db7cc6a52081cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #33
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #37
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @306, 1
  ret { ptr, ptr } %i.l

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hf8ec051120733532E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10566
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #37, !noalias !10566 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.e, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10567
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #33
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #37
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @296, 1
  ret { ptr, ptr } %i.j

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.d, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17haef158ae05b406a1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hf06c570bea854592E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hf06c570bea854592E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h7d0350c537b83fcdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h0a4574b8913afce7E"(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @323, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10570
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #37, !noalias !10570 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3e241dca07f2f937E.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h3ca323e9d870a32cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3e241dca07f2f937E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h304efce7a54c597aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @327, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10573
  %i.d = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #37, !noalias !10573 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h14a8f531068c5e7aE.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr116drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$std..env..VarError$GT$$GT$$GT$17h4e608e31ab53a513E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h14a8f531068c5e7aE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45072b869991b5aeE"(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @324, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10576
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #37, !noalias !10576 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h85541af8d2524d36E.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr77drop_in_place$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$17ha3c209ade4555d49E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h85541af8d2524d36E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45c5a1d7a44c14e2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @328, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10579
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef 8) #37, !noalias !10579 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2786fe9662faca92E.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr133drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$$GT$17h318b4a8ea42c2e91E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2786fe9662faca92E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h57bdd95ddb9bccd0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @326, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10582
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #37, !noalias !10582 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h290d74aa4b4f8c79E.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr119drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$std..io..error..Error$GT$$GT$$GT$17h5871ded6b807bbcbE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h290d74aa4b4f8c79E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h7d0350c537b83fcdE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @325, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10585
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #37, !noalias !10585 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6e3f53c876c5415cE.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17ha296594843084e8aE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6e3f53c876c5415cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hb0c7329a645b5af6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @329, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @82, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 35, ptr %i.d, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10588
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #37, !noalias !10588 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c3a52a94f676519E.exit", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #38
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17hab4a4d46eea049d8E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17hab4a4d46eea049d8E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c3a52a94f676519E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h2814309fb154e187E"(ptr noundef nonnull %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h1642eacf0b55e741E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h1642eacf0b55e741E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h0a4574b8913afce7E"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hb89519a85d0c63efE"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h2fc6ed2dbd8a6360E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h2fc6ed2dbd8a6360E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45072b869991b5aeE"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h1a1db7cc6a52081cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h33f1da5d77a99d8eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @330, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @332, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @331)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @334, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @333)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h8d14a8ebb5d23288E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @330, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @332, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @335)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @334, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @333)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h93d03302f7301e3eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @330, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @332, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @335)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @334, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @336)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17h4c7709f5ec43c41bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @300, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17ha074806d62869b47E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @338, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17hb4d7da8e92981582E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @300, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h4961521e8c015633E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10592)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10592, !noalias !10593, !nonnull !16, !align !19, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10592, !noalias !10593, !noundef !16
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10592
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17ha2ff28e4d7deff14E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10597)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10597, !noalias !10598, !nonnull !16, !align !19, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10597, !noalias !10598, !noundef !16
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10597
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17hd6a98aa2db5d940cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10602)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !10602, !noalias !10603, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !10602, !noalias !10603, !noundef !16
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10602
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E"(ptr nofree readonly captures(none) %.0.val, i64 %.24.val, ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.24.val, 0
  br i1 %i.a, label %_ZN10serde_core3ser10Serializer11collect_map17hddd61c8dc88b6f10E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val13.i.i.i.i = load <16 x i8>, ptr %.0.val, align 16, !noalias !10617
  %i.b = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1)
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge20.i.i.i.i.i.i
  %i.e = add i64 %i.i, -1                         ; 2 uses
  %i.f = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.g = and i16 %i.f, %.lcssa.i.i.i.i.i.i
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_ZN10serde_core3ser10Serializer11collect_map17hddd61c8dc88b6f10E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i64 [ %.24.val, %.lr.ph ], [ %i.e, %bb.b ]
  %.lcssa1215.i.i.i10 = phi ptr [ %.0.val, %.lr.ph ], [ %.lcssa1214.i.i.i, %bb.b ] ; 2 uses
  %i.j = phi i16 [ %i.c, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %.lcssa19.i.i.i9 = phi ptr [ %i.d, %.lr.ph ], [ %.lcssa18.i.i.i, %bb.b ] ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa19.i.i.i9, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa1215.i.i.i10, %bb.c ]
  %.val911.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !10618
  %i.m = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1536 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.lcssa18.i.i.i = phi ptr [ %.lcssa19.i.i.i9, %bb.c ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa1214.i.i.i = phi ptr [ %.lcssa1215.i.i.i10, %bb.c ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [96 x i8], ptr %.lcssa1214.i.i.i, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -96
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -72
  %i.v = tail call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h4ef2acf6d15ff0efE(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr nonnull readonly align 8 dereferenceable(24) %i.t, ptr nonnull readonly align 8 dereferenceable(72) %i.u), !noalias !10619 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not8.i.i.i, label %bb.b, label %_ZN10serde_core3ser10Serializer11collect_map17hddd61c8dc88b6f10E.exit

_ZN10serde_core3ser10Serializer11collect_map17hddd61c8dc88b6f10E.exit: ; preds = %bb.b, %._crit_edge20.i.i.i.i.i.i, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.v, %._crit_edge20.i.i.i.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6utoipa7openapi1_88_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..RefOr$LT$T$GT$$GT$9serialize17h93bb23eeb64f546eE"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(752) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !49, !noundef !16 ; 4 uses
  %.not = icmp eq i64 %i.a, 7
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_6
