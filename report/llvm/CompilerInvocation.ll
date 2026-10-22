Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompilerInvocation?download=true
inline.NumInlined: 19714
inline.NumDeleted: 4740
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang22CompilerInvocationBase19GenerateCodeGenArgsERKNS_14CodeGenOptionsEN4llvm12function_refIFvRKNS4_5TwineEEEERKNS4_6TripleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_11LangOptionsE:bb.a
  %i.apu = getelementptr inbounds nuw i8, ptr %307, i64 8
  store i64 %.sroa.0.0.i.i.i.i3482, ptr %i.apu, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %307) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %307) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3487"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3487": ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3479", %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3483"
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.apw = load i64, ptr %i.apv, align 8
  %i.apx = and i64 %i.apw, 4294967295             ; 2 uses
  %.not2506 = icmp eq i64 %i.apx, 4294967295
  br i1 %.not2506, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3487"
  %i.apy = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !383
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !384 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 17411 ; 2 uses
  %.not.i.i.i.i3488 = icmp eq ptr %i.aqb, null
  br i1 %.not.i.i.i.i3488, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3496, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aqd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqc) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3496

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3496: ; preds = %bb.hd, %bb.he
  %.sroa.0.0.i.i.i.i3490 = phi i64 [ %i.aqd, %bb.he ], [ 0, %bb.hd ]
  %i.aqe = inttoptr i64 %i.apx to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %306) #26
  store ptr %i.aqc, ptr %306, align 8, !alias.scope !1484
  %.sroa.23.0..sroa_idx.i.i.i.i.i3494 = getelementptr inbounds nuw i8, ptr %306, i64 8
  store i64 %.sroa.0.0.i.i.i.i3490, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i3494, align 8, !tbaa !92, !alias.scope !1484
  %i.aqf = getelementptr inbounds nuw i8, ptr %306, i64 16
  store ptr %i.aqe, ptr %i.aqf, align 8, !alias.scope !1484
  %i.aqg = getelementptr inbounds nuw i8, ptr %306, i64 32
  store i8 5, ptr %i.aqg, align 8, !tbaa !387, !alias.scope !1484
  %i.aqh = getelementptr inbounds nuw i8, ptr %306, i64 33
  store i8 9, ptr %i.aqh, align 1, !tbaa !388, !alias.scope !1484
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %306) #26, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #26
  br label %bb.hf

bb.hf:                                            ; preds = %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3496, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3487"
  %i.aqi = load i64, ptr %i.an, align 8
  %i.aqj = and i64 %i.aqi, 4
  %.not2507 = icmp eq i64 %i.aqj, 0
  br i1 %.not2507, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #26
  %i.aqk = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !383
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !384 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 17825 ; 2 uses
  %.not.i.i.i.i3497 = icmp eq ptr %i.aqn, null
  br i1 %.not.i.i.i.i3497, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3500", label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aqp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqo) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3500"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3500": ; preds = %bb.hg, %bb.hh
  %.sroa.0.0.i.i.i.i3499 = phi i64 [ %i.aqp, %bb.hh ], [ 0, %bb.hg ]
  %i.aqq = getelementptr inbounds nuw i8, ptr %305, i64 32
  store i8 5, ptr %i.aqq, align 8, !tbaa !387
  %i.aqr = getelementptr inbounds nuw i8, ptr %305, i64 33
  store i8 1, ptr %i.aqr, align 1, !tbaa !388
  store ptr %i.aqo, ptr %305, align 8, !tbaa !92
  %i.aqs = getelementptr inbounds nuw i8, ptr %305, i64 8
  store i64 %.sroa.0.0.i.i.i.i3499, ptr %i.aqs, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %305) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #26
  br label %bb.hi

bb.hi:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3500", %bb.hf
  %i.aqt = load i64, ptr %0, align 8              ; 2 uses
  %i.aqu = and i64 %i.aqt, 1125899906842624
  %.not2508 = icmp eq i64 %i.aqu, 0
  br i1 %.not2508, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #26
  %i.aqv = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !383
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !384 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 17557 ; 2 uses
  %.not.i.i.i.i3501 = icmp eq ptr %i.aqy, null
  br i1 %.not.i.i.i.i3501, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3504, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ara = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqz) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3504

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3504: ; preds = %bb.hj, %bb.hk
  %.sroa.0.0.i.i.i.i3503 = phi i64 [ %i.ara, %bb.hk ], [ 0, %bb.hj ]
  %i.arb = getelementptr inbounds nuw i8, ptr %304, i64 32
  store i8 5, ptr %i.arb, align 8, !tbaa !387
  %i.arc = getelementptr inbounds nuw i8, ptr %304, i64 33
  store i8 1, ptr %i.arc, align 1, !tbaa !388
  store ptr %i.aqz, ptr %304, align 8, !tbaa !92
  %i.ard = getelementptr inbounds nuw i8, ptr %304, i64 8
  store i64 %.sroa.0.0.i.i.i.i3503, ptr %i.ard, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %304) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #26
  %.pre7186.a = load i64, ptr %0, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3504, %bb.hi
  %i.are = phi i64 [ %.pre7186.a, %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3504 ], [ %i.aqt, %bb.hi ] ; 2 uses
  %i.arf = and i64 %i.are, 2251799813685248
  %.not2509 = icmp eq i64 %i.arf, 0
  br i1 %.not2509, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %303) #26
  %i.arg = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !383
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !384 ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 17519 ; 2 uses
  %.not.i.i.i.i3505 = icmp eq ptr %i.arj, null
  br i1 %.not.i.i.i.i3505, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3508, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.arl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ark) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3508

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3508: ; preds = %bb.hm, %bb.hn
  %.sroa.0.0.i.i.i.i3507 = phi i64 [ %i.arl, %bb.hn ], [ 0, %bb.hm ]
  %i.arm = getelementptr inbounds nuw i8, ptr %303, i64 32
  store i8 5, ptr %i.arm, align 8, !tbaa !387
  %i.arn = getelementptr inbounds nuw i8, ptr %303, i64 33
  store i8 1, ptr %i.arn, align 1, !tbaa !388
  store ptr %i.ark, ptr %303, align 8, !tbaa !92
  %i.aro = getelementptr inbounds nuw i8, ptr %303, i64 8
  store i64 %.sroa.0.0.i.i.i.i3507, ptr %i.aro, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %303) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %303) #26
  %.pre7187.a = load i64, ptr %0, align 8
  br label %bb.ho

bb.ho:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3508, %bb.hl
  %i.arp = phi i64 [ %.pre7187.a, %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3508 ], [ %i.are, %bb.hl ] ; 2 uses
  %i.arq = and i64 %i.arp, 4503599627370496
  %.not2510 = icmp eq i64 %i.arq, 0
  br i1 %.not2510, label %bb.hr, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #26
  %i.arr = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !383
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !384 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 17486 ; 2 uses
  %.not.i.i.i.i3509 = icmp eq ptr %i.aru, null
  br i1 %.not.i.i.i.i3509, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3512, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.arw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.arv) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3512

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3512: ; preds = %bb.hp, %bb.hq
  %.sroa.0.0.i.i.i.i3511 = phi i64 [ %i.arw, %bb.hq ], [ 0, %bb.hp ]
  %i.arx = getelementptr inbounds nuw i8, ptr %302, i64 32
  store i8 5, ptr %i.arx, align 8, !tbaa !387
  %i.ary = getelementptr inbounds nuw i8, ptr %302, i64 33
  store i8 1, ptr %i.ary, align 1, !tbaa !388
  store ptr %i.arv, ptr %302, align 8, !tbaa !92
  %i.arz = getelementptr inbounds nuw i8, ptr %302, i64 8
  store i64 %.sroa.0.0.i.i.i.i3511, ptr %i.arz, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %302) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #26
  %.pre7188.a = load i64, ptr %0, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3512, %bb.ho
  %i.asa = phi i64 [ %.pre7188.a, %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3512 ], [ %i.arp, %bb.ho ] ; 2 uses
  %i.asb = and i64 %i.asa, 36028797018963968
  %.not2511 = icmp eq i64 %i.asb, 0
  br i1 %.not2511, label %bb.ht, label %.lr.ph.i.i5507.preheader

.lr.ph.i.i5507.preheader:                         ; preds = %bb.hr
  %i.asc = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !383
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !384 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 51016 ; 2 uses
  %.not.i.i.i.i5514 = icmp eq ptr %i.asf, null
  br i1 %.not.i.i.i.i5514, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5524, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i.i5507.preheader
  %i.ash = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.asg) #26
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5524

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5524: ; preds = %bb.hs, %.lr.ph.i.i5507.preheader
  %.sroa.0.0.i.i.i.i5516 = phi i64 [ %i.ash, %bb.hs ], [ 0, %.lr.ph.i.i5507.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.asg, ptr %22, align 8, !alias.scope !1485
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i5521 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.0.0.i.i.i.i5516, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i5521, align 8, !tbaa !92, !alias.scope !1485
  %i.asi = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @.str.22, ptr %i.asi, align 8, !alias.scope !1485
  %i.asj = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 5, ptr %i.asj, align 8, !tbaa !387, !alias.scope !1485
  %i.ask = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 3, ptr %i.ask, align 1, !tbaa !388, !alias.scope !1485
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %22) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %.pre7189.a = load i64, ptr %0, align 8
  br label %bb.ht

bb.ht:                                            ; preds = %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5524, %bb.hr
  %i.asl = phi i64 [ %.pre7189.a, %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5524 ], [ %i.asa, %bb.hr ]
  %i.asm = and i64 %i.asl, 72057594037927936
  %.not2512 = icmp eq i64 %i.asm, 0
  br i1 %.not2512, label %bb.hw, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #26
  %i.asn = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !383
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !384 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 51443 ; 2 uses
  %.not.i.i.i.i3513 = icmp eq ptr %i.asq, null
  br i1 %.not.i.i.i.i3513, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3516, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ass = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.asr) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3516

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3516: ; preds = %bb.hu, %bb.hv
  %.sroa.0.0.i.i.i.i3515 = phi i64 [ %i.ass, %bb.hv ], [ 0, %bb.hu ]
  %i.ast = getelementptr inbounds nuw i8, ptr %301, i64 32
  store i8 5, ptr %i.ast, align 8, !tbaa !387
  %i.asu = getelementptr inbounds nuw i8, ptr %301, i64 33
  store i8 1, ptr %i.asu, align 1, !tbaa !388
  store ptr %i.asr, ptr %301, align 8, !tbaa !92
  %i.asv = getelementptr inbounds nuw i8, ptr %301, i64 8
  store i64 %.sroa.0.0.i.i.i.i3515, ptr %i.asv, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %301) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #26
  br label %bb.hw

bb.hw:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3516, %bb.ht
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.asx = load i64, ptr %i.asw, align 8
  %i.asy = lshr i64 %i.asx, 32                    ; 2 uses
  %.not2513 = icmp eq i64 %i.asy, 200
  br i1 %.not2513, label %bb.hz, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.asz = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 8
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !383
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !384 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 45027 ; 2 uses
  %.not.i.i.i.i3517 = icmp eq ptr %i.atc, null
  br i1 %.not.i.i.i.i3517, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3525, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ate = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.atd) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3525

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3525: ; preds = %bb.hx, %bb.hy
  %.sroa.0.0.i.i.i.i3519 = phi i64 [ %i.ate, %bb.hy ], [ 0, %bb.hx ]
  %i.atf = inttoptr i64 %i.asy to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #26
  store ptr %i.atd, ptr %300, align 8, !alias.scope !1486
  %.sroa.23.0..sroa_idx.i.i.i.i.i3523 = getelementptr inbounds nuw i8, ptr %300, i64 8
  store i64 %.sroa.0.0.i.i.i.i3519, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i3523, align 8, !tbaa !92, !alias.scope !1486
  %i.atg = getelementptr inbounds nuw i8, ptr %300, i64 16
  store ptr %i.atf, ptr %i.atg, align 8, !alias.scope !1486
  %i.ath = getelementptr inbounds nuw i8, ptr %300, i64 32
  store i8 5, ptr %i.ath, align 8, !tbaa !387, !alias.scope !1486
  %i.ati = getelementptr inbounds nuw i8, ptr %300, i64 33
  store i8 9, ptr %i.ati, align 1, !tbaa !388, !alias.scope !1486
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %300) #26, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #26
  br label %bb.hz

bb.hz:                                            ; preds = %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3525, %bb.hw
  %i.atj = load i64, ptr %0, align 8
  %.not2514 = icmp sgt i64 %i.atj, -1
  br i1 %.not2514, label %bb.ic, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %299) #26
  %i.atk = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !383
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !384 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 45007 ; 2 uses
  %.not.i.i.i.i3526 = icmp eq ptr %i.atn, null
  br i1 %.not.i.i.i.i3526, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3529", label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.atp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ato) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3529"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3529": ; preds = %bb.ia, %bb.ib
  %.sroa.0.0.i.i.i.i3528 = phi i64 [ %i.atp, %bb.ib ], [ 0, %bb.ia ]
  %i.atq = getelementptr inbounds nuw i8, ptr %299, i64 32
  store i8 5, ptr %i.atq, align 8, !tbaa !387
  %i.atr = getelementptr inbounds nuw i8, ptr %299, i64 33
  store i8 1, ptr %i.atr, align 1, !tbaa !388
  store ptr %i.ato, ptr %299, align 8, !tbaa !92
  %i.ats = getelementptr inbounds nuw i8, ptr %299, i64 8
  store i64 %.sroa.0.0.i.i.i.i3528, ptr %i.ats, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %299) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %299) #26
  br label %bb.ic

bb.ic:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3529", %bb.hz
  %i.att = load i64, ptr %i.asw, align 8
  %i.atu = and i64 %i.att, 1
  %or.cond7012 = icmp eq i64 %i.atu, 0
  br i1 %or.cond7012, label %bb.id, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3533"

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %298) #26
  %i.atv = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !383
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !384 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 33544 ; 2 uses
  %.not.i.i.i.i3530 = icmp eq ptr %i.aty, null
  br i1 %.not.i.i.i.i3530, label %_ZL16lookupStrInTablej.exit.i3531, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aua = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.atz) #26
  br label %_ZL16lookupStrInTablej.exit.i3531

_ZL16lookupStrInTablej.exit.i3531:                ; preds = %bb.ie, %bb.id
  %.sroa.0.0.i.i.i.i3532 = phi i64 [ %i.aua, %bb.ie ], [ 0, %bb.id ]
  %i.aub = getelementptr inbounds nuw i8, ptr %298, i64 32
  store i8 5, ptr %i.aub, align 8, !tbaa !387
  %i.auc = getelementptr inbounds nuw i8, ptr %298, i64 33
  store i8 1, ptr %i.auc, align 1, !tbaa !388
  store ptr %i.atz, ptr %298, align 8, !tbaa !92
  %i.aud = getelementptr inbounds nuw i8, ptr %298, i64 8
  store i64 %.sroa.0.0.i.i.i.i3532, ptr %i.aud, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %298) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3533"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3533": ; preds = %_ZL16lookupStrInTablej.exit.i3531, %bb.ic
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.auf = load i64, ptr %i.aue, align 8          ; 2 uses
  %i.aug = and i64 %i.auf, 4294967295             ; 2 uses
  %.not2516 = icmp eq i64 %i.aug, 1
  br i1 %.not2516, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3533"
  %i.auh = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 8
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !383
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !384 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 44961 ; 2 uses
  %.not.i.i.i.i3534 = icmp eq ptr %i.auk, null
  br i1 %.not.i.i.i.i3534, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3542, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.aum = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aul) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3542

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3542: ; preds = %bb.if, %bb.ig
  %.sroa.0.0.i.i.i.i3536 = phi i64 [ %i.aum, %bb.ig ], [ 0, %bb.if ]
  %i.aun = inttoptr i64 %i.aug to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %297) #26
  store ptr %i.aul, ptr %297, align 8, !alias.scope !1487
  %.sroa.23.0..sroa_idx.i.i.i.i.i3540 = getelementptr inbounds nuw i8, ptr %297, i64 8
  store i64 %.sroa.0.0.i.i.i.i3536, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i3540, align 8, !tbaa !92, !alias.scope !1487
  %i.auo = getelementptr inbounds nuw i8, ptr %297, i64 16
  store ptr %i.aun, ptr %i.auo, align 8, !alias.scope !1487
  %i.aup = getelementptr inbounds nuw i8, ptr %297, i64 32
  store i8 5, ptr %i.aup, align 8, !tbaa !387, !alias.scope !1487
  %i.auq = getelementptr inbounds nuw i8, ptr %297, i64 33
  store i8 9, ptr %i.auq, align 1, !tbaa !388, !alias.scope !1487
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %297) #26, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #26
  %.pre7190.a = load i64, ptr %i.aue, align 8
  br label %bb.ih

bb.ih:                                            ; preds = %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3542, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3533"
  %i.aur = phi i64 [ %.pre7190.a, %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3542 ], [ %i.auf, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3533" ]
  %i.aus = lshr i64 %i.aur, 32                    ; 2 uses
  %.not2517 = icmp eq i64 %i.aus, 0
  br i1 %.not2517, label %bb.ik, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aut = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !383
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !384 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 45162 ; 2 uses
  %.not.i.i.i.i3543 = icmp eq ptr %i.auw, null
  br i1 %.not.i.i.i.i3543, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3551, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.auy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aux) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3551

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3551: ; preds = %bb.ii, %bb.ij
  %.sroa.0.0.i.i.i.i3545 = phi i64 [ %i.auy, %bb.ij ], [ 0, %bb.ii ]
  %i.auz = inttoptr i64 %i.aus to ptr
end_hunk_0
begin_hunk_1_@_ZN5clang22CompilerInvocationBase19GenerateCodeGenArgsERKNS_14CodeGenOptionsEN4llvm12function_refIFvRKNS4_5TwineEEEERKNS4_6TripleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_11LangOptionsE:bb.a
  br i1 %.not.i.i.i.i4090, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4093", label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.cip = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cio) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4093"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4093": ; preds = %bb.re, %bb.rf
  %.sroa.0.0.i.i.i.i4092 = phi i64 [ %i.cip, %bb.rf ], [ 0, %bb.re ]
  %i.ciq = getelementptr inbounds nuw i8, ptr %224, i64 32
  store i8 5, ptr %i.ciq, align 8, !tbaa !387
  %i.cir = getelementptr inbounds nuw i8, ptr %224, i64 33
  store i8 1, ptr %i.cir, align 1, !tbaa !388
  store ptr %i.cio, ptr %224, align 8, !tbaa !92
  %i.cis = getelementptr inbounds nuw i8, ptr %224, i64 8
  store i64 %.sroa.0.0.i.i.i.i4092, ptr %i.cis, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %224) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #26
  br label %bb.rg

bb.rg:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4093", %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4089"
  %i.cit = load i32, ptr %i.su, align 8
  %i.ciu = lshr i32 %i.cit, 22
  %i.civ = and i32 %i.ciu, 3                      ; 2 uses
  %.not2599 = icmp eq i32 %i.civ, 0
  br i1 %.not2599, label %bb.ri, label %.lr.ph.i.i5633

.lr.ph.i.i5633:                                   ; preds = %bb.rg, %.lr.ph.i.i5633
  %indvars.iv.i15.i5634 = phi i64 [ %indvars.iv.next.i.i5635, %.lr.ph.i.i5633 ], [ 0, %bb.rg ]
  %indvars.iv.next.i.i5635 = add nuw nsw i64 %indvars.iv.i15.i5634, 1 ; 3 uses
  %.not.i.i5636 = icmp ne i64 %indvars.iv.next.i.i5635, 4
  call void @llvm.assume(i1 %.not.i.i5636)
  %i.ciw = getelementptr inbounds nuw [16 x i8], ptr @_ZL22gsrc_hash_EQValueTable, i64 %indvars.iv.next.i.i5635 ; 2 uses
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ciw, i64 8
  %i.ciy = load i32, ptr %i.cix, align 8, !tbaa !392, !noalias !1507
  %i.ciz = icmp eq i32 %i.civ, %i.ciy
  br i1 %i.ciz, label %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i5637, label %.lr.ph.i.i5633

_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i5637: ; preds = %.lr.ph.i.i5633
  %.sroa.0.0.copyload.i5639 = load ptr, ptr %i.ciw, align 8, !tbaa !282 ; 2 uses
  %i.cja = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 8
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !383
  %i.cjd = load ptr, ptr %i.cjc, align 8, !tbaa !384 ; 2 uses
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjd, i64 46557 ; 2 uses
  %.not.i.i.i.i5640 = icmp eq ptr %i.cjd, null
  br i1 %.not.i.i.i.i5640, label %_ZL16lookupStrInTablej.exit.i5641, label %bb.rh

bb.rh:                                            ; preds = %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i5637
  %i.cjf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cje) #26
  br label %_ZL16lookupStrInTablej.exit.i5641

_ZL16lookupStrInTablej.exit.i5641:                ; preds = %bb.rh, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i5637
  %.sroa.0.0.i.i.i.i5642 = phi i64 [ %i.cjf, %bb.rh ], [ 0, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i5637 ]
  %i.cjg = load i8, ptr %.sroa.0.0.copyload.i5639, align 1, !tbaa !92
  %.not.i.i.i5643 = icmp eq i8 %i.cjg, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  br i1 %.not.i.i.i5643, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5650, label %_ZN4llvm5TwineC2EPKc.exit.i.thread.i5644

_ZN4llvm5TwineC2EPKc.exit.i.thread.i5644:         ; preds = %_ZL16lookupStrInTablej.exit.i5641
  %i.cjh = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.sroa.0.0.copyload.i5639, ptr %i.cjh, align 8, !alias.scope !1508
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5650

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5650: ; preds = %_ZL16lookupStrInTablej.exit.i5641, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i5644
  %.sink7147.a = phi i8 [ 3, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i5644 ], [ 1, %_ZL16lookupStrInTablej.exit.i5641 ]
  store ptr %i.cje, ptr %15, align 8
  %i.cji = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.0.0.i.i.i.i5642, ptr %i.cji, align 8, !tbaa !92
  %i.cjj = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 5, ptr %i.cjj, align 8, !tbaa !393
  %i.cjk = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 %.sink7147.a, ptr %i.cjk, align 1, !tbaa !393
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %15) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ri

bb.ri:                                            ; preds = %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5650, %bb.rg
  %i.cjl = load i64, ptr %i.gc, align 8           ; 2 uses
  %i.cjm = and i64 %i.cjl, 4194304
  %.not2600 = icmp eq i64 %i.cjm, 0
  br i1 %.not2600, label %bb.rl, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #26
  %i.cjn = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 8
  %i.cjp = load ptr, ptr %i.cjo, align 8, !tbaa !383
  %i.cjq = load ptr, ptr %i.cjp, align 8, !tbaa !384 ; 2 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 45570 ; 2 uses
  %.not.i.i.i.i4094 = icmp eq ptr %i.cjq, null
  br i1 %.not.i.i.i.i4094, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4097, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.cjs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cjr) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4097

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4097: ; preds = %bb.rj, %bb.rk
  %.sroa.0.0.i.i.i.i4096 = phi i64 [ %i.cjs, %bb.rk ], [ 0, %bb.rj ]
  %i.cjt = getelementptr inbounds nuw i8, ptr %223, i64 32
  store i8 5, ptr %i.cjt, align 8, !tbaa !387
  %i.cju = getelementptr inbounds nuw i8, ptr %223, i64 33
  store i8 1, ptr %i.cju, align 1, !tbaa !388
  store ptr %i.cjr, ptr %223, align 8, !tbaa !92
  %i.cjv = getelementptr inbounds nuw i8, ptr %223, i64 8
  store i64 %.sroa.0.0.i.i.i.i4096, ptr %i.cjv, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %223) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #26
  %.pre7214.a = load i64, ptr %i.gc, align 8
  br label %bb.rl

bb.rl:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4097, %bb.ri
  %i.cjw = phi i64 [ %.pre7214.a, %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4097 ], [ %i.cjl, %bb.ri ] ; 2 uses
  %i.cjx = and i64 %i.cjw, 2097152
  %.not2601.not = icmp eq i64 %i.cjx, 0
  br i1 %.not2601.not, label %bb.rm, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4109"

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #26
  %i.cjy = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 8
  %i.cka = load ptr, ptr %i.cjz, align 8, !tbaa !383
  %i.ckb = load ptr, ptr %i.cka, align 8, !tbaa !384 ; 2 uses
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 46182 ; 2 uses
  %.not.i.i.i.i4098 = icmp eq ptr %i.ckb, null
  br i1 %.not.i.i.i.i4098, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4101", label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.ckd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ckc) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4101"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4101": ; preds = %bb.rm, %bb.rn
  %.sroa.0.0.i.i.i.i4100 = phi i64 [ %i.ckd, %bb.rn ], [ 0, %bb.rm ]
  %i.cke = getelementptr inbounds nuw i8, ptr %222, i64 32
  store i8 5, ptr %i.cke, align 8, !tbaa !387
  %i.ckf = getelementptr inbounds nuw i8, ptr %222, i64 33
  store i8 1, ptr %i.ckf, align 1, !tbaa !388
  store ptr %i.ckc, ptr %222, align 8, !tbaa !92
  %i.ckg = getelementptr inbounds nuw i8, ptr %222, i64 8
  store i64 %.sroa.0.0.i.i.i.i4100, ptr %i.ckg, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %222) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #26
  %.pre7215.a = load i64, ptr %i.gc, align 8
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4109"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4109": ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4101", %bb.rl
  %i.ckh = phi i64 [ %.pre7215.a, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4101" ], [ %i.cjw, %bb.rl ] ; 2 uses
  %i.cki = and i64 %i.ckh, 1
  %or.cond7016.not = icmp eq i64 %i.cki, 0
  br i1 %or.cond7016.not, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4113", label %bb.ro

bb.ro:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4109"
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #26
  %i.ckj = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckj, i64 8
  %i.ckl = load ptr, ptr %i.ckk, align 8, !tbaa !383
  %i.ckm = load ptr, ptr %i.ckl, align 8, !tbaa !384 ; 2 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckm, i64 45744 ; 2 uses
  %.not.i.i.i.i4110 = icmp eq ptr %i.ckm, null
  br i1 %.not.i.i.i.i4110, label %_ZL16lookupStrInTablej.exit.i4111, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.cko = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ckn) #26
  br label %_ZL16lookupStrInTablej.exit.i4111

_ZL16lookupStrInTablej.exit.i4111:                ; preds = %bb.rp, %bb.ro
  %.sroa.0.0.i.i.i.i4112 = phi i64 [ %i.cko, %bb.rp ], [ 0, %bb.ro ]
  %i.ckp = getelementptr inbounds nuw i8, ptr %221, i64 32
  store i8 5, ptr %i.ckp, align 8, !tbaa !387
  %i.ckq = getelementptr inbounds nuw i8, ptr %221, i64 33
  store i8 1, ptr %i.ckq, align 1, !tbaa !388
  store ptr %i.ckn, ptr %221, align 8, !tbaa !92
  %i.ckr = getelementptr inbounds nuw i8, ptr %221, i64 8
  store i64 %.sroa.0.0.i.i.i.i4112, ptr %i.ckr, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %221) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #26
  %.pre7216.a = load i64, ptr %i.gc, align 8
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4113"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4113": ; preds = %_ZL16lookupStrInTablej.exit.i4111, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4109"
  %i.cks = phi i64 [ %.pre7216.a, %_ZL16lookupStrInTablej.exit.i4111 ], [ %i.ckh, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4109" ]
  %i.ckt = and i64 %i.cks, 17179869184
  %.not2605 = icmp eq i64 %i.ckt, 0
  br i1 %.not2605, label %bb.rr, label %.lr.ph.i.i5651.preheader

.lr.ph.i.i5651.preheader:                         ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4113"
  %i.cku = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cku, i64 8
  %i.ckw = load ptr, ptr %i.ckv, align 8, !tbaa !383
  %i.ckx = load ptr, ptr %i.ckw, align 8, !tbaa !384 ; 2 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ckx, i64 47781 ; 2 uses
  %.not.i.i.i.i5658 = icmp eq ptr %i.ckx, null
  br i1 %.not.i.i.i.i5658, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5668, label %bb.rq

bb.rq:                                            ; preds = %.lr.ph.i.i5651.preheader
  %i.ckz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cky) #26
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5668

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5668: ; preds = %bb.rq, %.lr.ph.i.i5651.preheader
  %.sroa.0.0.i.i.i.i5660 = phi i64 [ %i.ckz, %bb.rq ], [ 0, %.lr.ph.i.i5651.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.cky, ptr %14, align 8, !alias.scope !1509
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i5665 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.0.0.i.i.i.i5660, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i5665, align 8, !tbaa !92, !alias.scope !1509
  %i.cla = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.250, ptr %i.cla, align 8, !alias.scope !1509
  %i.clb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 5, ptr %i.clb, align 8, !tbaa !387, !alias.scope !1509
  %i.clc = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 3, ptr %i.clc, align 1, !tbaa !388, !alias.scope !1509
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %14) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.rr

bb.rr:                                            ; preds = %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit5668, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4113"
  %i.cld = load i64, ptr %i.apv, align 8          ; 2 uses
  %i.cle = lshr i64 %i.cld, 33
  %i.clf = and i64 %i.cld, 2190433320960
  %.not2606 = icmp eq i64 %i.clf, 0
  br i1 %.not2606, label %bb.ru, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.clg = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.clh = getelementptr inbounds nuw i8, ptr %i.clg, i64 8
  %i.cli = load ptr, ptr %i.clh, align 8, !tbaa !383
  %i.clj = load ptr, ptr %i.cli, align 8, !tbaa !384 ; 2 uses
  %i.clk = getelementptr inbounds nuw i8, ptr %i.clj, i64 58626 ; 2 uses
  %.not.i.i.i.i4114 = icmp eq ptr %i.clj, null
  br i1 %.not.i.i.i.i4114, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4122, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.cll = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.clk) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4122

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4122: ; preds = %bb.rs, %bb.rt
  %.sroa.0.0.i.i.i.i4116 = phi i64 [ %i.cll, %bb.rt ], [ 0, %bb.rs ]
  %.sroa.06453.0.insert.ext = and i64 %i.cle, 255
  %i.clm = inttoptr i64 %.sroa.06453.0.insert.ext to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #26
  store ptr %i.clk, ptr %220, align 8, !alias.scope !1510
  %.sroa.23.0..sroa_idx.i.i.i.i.i4120 = getelementptr inbounds nuw i8, ptr %220, i64 8
  store i64 %.sroa.0.0.i.i.i.i4116, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i4120, align 8, !tbaa !92, !alias.scope !1510
  %i.cln = getelementptr inbounds nuw i8, ptr %220, i64 16
  store ptr %i.clm, ptr %i.cln, align 8, !alias.scope !1510
  %i.clo = getelementptr inbounds nuw i8, ptr %220, i64 32
  store i8 5, ptr %i.clo, align 8, !tbaa !387, !alias.scope !1510
  %i.clp = getelementptr inbounds nuw i8, ptr %220, i64 33
  store i8 9, ptr %i.clp, align 1, !tbaa !388, !alias.scope !1510
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %220) #26, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #26
  br label %bb.ru

bb.ru:                                            ; preds = %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4122, %bb.rr
  %i.clq = load i64, ptr %i.rj, align 8           ; 2 uses
  %i.clr = and i64 %i.clq, 18014398509481984
  %.not2607 = icmp eq i64 %i.clr, 0
  br i1 %.not2607, label %bb.rx, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #26
  %i.cls = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cls, i64 8
  %i.clu = load ptr, ptr %i.clt, align 8, !tbaa !383
  %i.clv = load ptr, ptr %i.clu, align 8, !tbaa !384 ; 2 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %i.clv, i64 55037 ; 2 uses
  %.not.i.i.i.i4123 = icmp eq ptr %i.clv, null
  br i1 %.not.i.i.i.i4123, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4126", label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.clx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.clw) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4126"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4126": ; preds = %bb.rv, %bb.rw
  %.sroa.0.0.i.i.i.i4125 = phi i64 [ %i.clx, %bb.rw ], [ 0, %bb.rv ]
  %i.cly = getelementptr inbounds nuw i8, ptr %219, i64 32
  store i8 5, ptr %i.cly, align 8, !tbaa !387
  %i.clz = getelementptr inbounds nuw i8, ptr %219, i64 33
  store i8 1, ptr %i.clz, align 1, !tbaa !388
  store ptr %i.clw, ptr %219, align 8, !tbaa !92
  %i.cma = getelementptr inbounds nuw i8, ptr %219, i64 8
  store i64 %.sroa.0.0.i.i.i.i4125, ptr %i.cma, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %219) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #26
  %.pre7217.a = load i64, ptr %i.rj, align 8
  br label %bb.rx

bb.rx:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4126", %bb.ru
  %i.cmb = phi i64 [ %.pre7217.a, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit4126" ], [ %i.clq, %bb.ru ]
  %i.cmc = and i64 %i.cmb, 140737488355328
  %.not2608 = icmp eq i64 %i.cmc, 0
  br i1 %.not2608, label %bb.sa, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #26
  %i.cmd = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 8
  %i.cmf = load ptr, ptr %i.cme, align 8, !tbaa !383
  %i.cmg = load ptr, ptr %i.cmf, align 8, !tbaa !384 ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmg, i64 57930 ; 2 uses
  %.not.i.i.i.i4127 = icmp eq ptr %i.cmg, null
  br i1 %.not.i.i.i.i4127, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4130, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.cmi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cmh) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4130

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4130: ; preds = %bb.ry, %bb.rz
  %.sroa.0.0.i.i.i.i4129 = phi i64 [ %i.cmi, %bb.rz ], [ 0, %bb.ry ]
  %i.cmj = getelementptr inbounds nuw i8, ptr %218, i64 32
  store i8 5, ptr %i.cmj, align 8, !tbaa !387
  %i.cmk = getelementptr inbounds nuw i8, ptr %218, i64 33
  store i8 1, ptr %i.cmk, align 1, !tbaa !388
  store ptr %i.cmh, ptr %218, align 8, !tbaa !92
  %i.cml = getelementptr inbounds nuw i8, ptr %218, i64 8
  store i64 %.sroa.0.0.i.i.i.i4129, ptr %i.cml, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %218) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #26
  br label %bb.sa

bb.sa:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4130, %bb.rx
  %i.cmm = load i64, ptr %i.hy, align 8
  %i.cmn = and i64 %i.cmm, 140737488355328
  %.not2609 = icmp eq i64 %i.cmn, 0
  br i1 %.not2609, label %bb.sd, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #26
  %i.cmo = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cmo, i64 8
  %i.cmq = load ptr, ptr %i.cmp, align 8, !tbaa !383
  %i.cmr = load ptr, ptr %i.cmq, align 8, !tbaa !384 ; 2 uses
  %i.cms = getelementptr inbounds nuw i8, ptr %i.cmr, i64 58412 ; 2 uses
  %.not.i.i.i.i4131 = icmp eq ptr %i.cmr, null
  br i1 %.not.i.i.i.i4131, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4134, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.cmt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cms) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4134

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4134: ; preds = %bb.sb, %bb.sc
  %.sroa.0.0.i.i.i.i4133 = phi i64 [ %i.cmt, %bb.sc ], [ 0, %bb.sb ]
  %i.cmu = getelementptr inbounds nuw i8, ptr %217, i64 32
  store i8 5, ptr %i.cmu, align 8, !tbaa !387
  %i.cmv = getelementptr inbounds nuw i8, ptr %217, i64 33
  store i8 1, ptr %i.cmv, align 1, !tbaa !388
  store ptr %i.cms, ptr %217, align 8, !tbaa !92
  %i.cmw = getelementptr inbounds nuw i8, ptr %217, i64 8
  store i64 %.sroa.0.0.i.i.i.i4133, ptr %i.cmw, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %217) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #26
  br label %bb.sd

bb.sd:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit4134, %bb.sa
  %i.cmx = load i64, ptr %i.ed, align 8
  %i.cmy = lshr i64 %i.cmx, 32                    ; 2 uses
  %.not2610 = icmp eq i64 %i.cmy, 0
  br i1 %.not2610, label %bb.sg, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cmz = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 8
  %i.cnb = load ptr, ptr %i.cna, align 8, !tbaa !383
  %i.cnc = load ptr, ptr %i.cnb, align 8, !tbaa !384 ; 2 uses
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 58169 ; 2 uses
  %.not.i.i.i.i4135 = icmp eq ptr %i.cnc, null
  br i1 %.not.i.i.i.i4135, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4143, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.cne = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cnd) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4143

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4143: ; preds = %bb.se, %bb.sf
  %.sroa.0.0.i.i.i.i4137 = phi i64 [ %i.cne, %bb.sf ], [ 0, %bb.se ]
  %i.cnf = inttoptr i64 %i.cmy to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #26
  store ptr %i.cnd, ptr %216, align 8, !alias.scope !1511
  %.sroa.23.0..sroa_idx.i.i.i.i.i4141 = getelementptr inbounds nuw i8, ptr %216, i64 8
  store i64 %.sroa.0.0.i.i.i.i4137, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i4141, align 8, !tbaa !92, !alias.scope !1511
  %i.cng = getelementptr inbounds nuw i8, ptr %216, i64 16
  store ptr %i.cnf, ptr %i.cng, align 8, !alias.scope !1511
  %i.cnh = getelementptr inbounds nuw i8, ptr %216, i64 32
  store i8 5, ptr %i.cnh, align 8, !tbaa !387, !alias.scope !1511
  %i.cni = getelementptr inbounds nuw i8, ptr %216, i64 33
  store i8 9, ptr %i.cni, align 1, !tbaa !388, !alias.scope !1511
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %216) #26, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #26
  br label %bb.sg

bb.sg:                                            ; preds = %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4143, %bb.sd
  %i.cnj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cnk = load i64, ptr %i.cnj, align 8
  %i.cnl = and i64 %i.cnk, 4294967295             ; 2 uses
  %.not2611 = icmp eq i64 %i.cnl, 4096
  br i1 %.not2611, label %bb.sj, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.cnm = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.cnm, i64 8
  %i.cno = load ptr, ptr %i.cnn, align 8, !tbaa !383
  %i.cnp = load ptr, ptr %i.cno, align 8, !tbaa !384 ; 2 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 58206 ; 2 uses
  %.not.i.i.i.i4144 = icmp eq ptr %i.cnp, null
  br i1 %.not.i.i.i.i4144, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4152, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.cnr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cnq) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4152

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit4152: ; preds = %bb.sh, %bb.si
  %.sroa.0.0.i.i.i.i4146 = phi i64 [ %i.cnr, %bb.si ], [ 0, %bb.sh ]
end_hunk_1
begin_hunk_2_@_ZN5clang22CompilerInvocationBase16GenerateLangArgsERKNS_11LangOptionsEN4llvm12function_refIFvRKNS4_5TwineEEEERKNS4_6TripleENS_9InputKindE:bb.a
  %i.atx = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 8
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !383
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !384 ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 15951 ; 2 uses
  %.not.i.i.i.i4811 = icmp eq ptr %i.aua, null
  br i1 %.not.i.i.i.i4811, label %_ZL16lookupStrInTablej.exit.i4812, label %bb.ih

bb.ih:                                            ; preds = %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4808
  %i.auc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aub) #26
  br label %_ZL16lookupStrInTablej.exit.i4812

_ZL16lookupStrInTablej.exit.i4812:                ; preds = %bb.ih, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4808
  %.sroa.0.0.i.i.i.i4813 = phi i64 [ %i.auc, %bb.ih ], [ 0, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4808 ]
  %i.aud = load i8, ptr %.sroa.0.0.copyload.i4810, align 1, !tbaa !92
  %.not.i.i.i4814 = icmp eq i8 %i.aud, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  br i1 %.not.i.i.i4814, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4821, label %_ZN4llvm5TwineC2EPKc.exit.i.thread.i4815

_ZN4llvm5TwineC2EPKc.exit.i.thread.i4815:         ; preds = %_ZL16lookupStrInTablej.exit.i4812
  %i.aue = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %.sroa.0.0.copyload.i4810, ptr %i.aue, align 8, !alias.scope !2199
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4821

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4821: ; preds = %_ZL16lookupStrInTablej.exit.i4812, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i4815
  %.sink6416.a = phi i8 [ 3, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i4815 ], [ 1, %_ZL16lookupStrInTablej.exit.i4812 ]
  store ptr %i.aub, ptr %28, align 8
  %i.auf = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %.sroa.0.0.i.i.i.i4813, ptr %i.auf, align 8, !tbaa !92
  %i.aug = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i8 5, ptr %i.aug, align 8, !tbaa !393
  %i.auh = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 %.sink6416.a, ptr %i.auh, align 1, !tbaa !393
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %28) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ig, %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4821
  %i.aui = load i64, ptr %i.rf, align 8           ; 3 uses
  %i.auj = lshr i64 %i.aui, 42
  %i.auk = trunc nuw nsw i64 %i.auj to i32
  %i.aul = and i32 %i.auk, 1                      ; 2 uses
  %i.aum = load i64, ptr %i.ir, align 8           ; 2 uses
  %i.aun = and i64 %i.aum, 36028797018963968
  %.not2361 = icmp eq i64 %i.aun, 0
  br i1 %.not2361, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.auo = load i64, ptr %i.kv, align 8
  %i.aup = lshr i64 %i.auo, 40
  %i.auq = trunc nuw nsw i64 %i.aup to i32
  %i.aur = and i32 %i.auq, 1
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ii, %bb.ij
  %i.aus = phi i32 [ %i.aur, %bb.ij ], [ 1, %bb.ii ]
  %.not2362 = icmp ne i32 %i.aul, %i.aus
  %i.aut = and i64 %i.aui, 4398046511104
  %i.auu = icmp ne i64 %i.aut, 0
  %or.cond6238 = select i1 %.not2362, i1 %i.auu, i1 false
  br i1 %or.cond6238, label %bb.il, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3287"

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %260) #26
  %i.auv = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !383
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !384 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 14333 ; 2 uses
  %.not.i.i.i.i3284 = icmp eq ptr %i.auy, null
  br i1 %.not.i.i.i.i3284, label %_ZL16lookupStrInTablej.exit.i3285, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ava = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.auz) #26
  br label %_ZL16lookupStrInTablej.exit.i3285

_ZL16lookupStrInTablej.exit.i3285:                ; preds = %bb.im, %bb.il
  %.sroa.0.0.i.i.i.i3286 = phi i64 [ %i.ava, %bb.im ], [ 0, %bb.il ]
  %i.avb = getelementptr inbounds nuw i8, ptr %260, i64 32
  store i8 5, ptr %i.avb, align 8, !tbaa !387
  %i.avc = getelementptr inbounds nuw i8, ptr %260, i64 33
  store i8 1, ptr %i.avc, align 1, !tbaa !388
  store ptr %i.auz, ptr %260, align 8, !tbaa !92
  %i.avd = getelementptr inbounds nuw i8, ptr %260, i64 8
  store i64 %.sroa.0.0.i.i.i.i3286, ptr %i.avd, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %260) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %260) #26
  %.pre6469.a = load i64, ptr %i.rf, align 8      ; 2 uses
  %.pre6470.a = load i64, ptr %i.ir, align 8
  %.pre6590 = lshr i64 %.pre6469.a, 42
  %.pre6592 = trunc nuw nsw i64 %.pre6590 to i32
  %.pre6594 = and i32 %.pre6592, 1
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3287"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3287": ; preds = %_ZL16lookupStrInTablej.exit.i3285, %bb.ik
  %.pre-phi6595 = phi i32 [ %.pre6594, %_ZL16lookupStrInTablej.exit.i3285 ], [ %i.aul, %bb.ik ]
  %i.ave = phi i64 [ %.pre6470.a, %_ZL16lookupStrInTablej.exit.i3285 ], [ %i.aum, %bb.ik ]
  %i.avf = phi i64 [ %.pre6469.a, %_ZL16lookupStrInTablej.exit.i3285 ], [ %i.aui, %bb.ik ]
  %i.avg = and i64 %i.ave, 36028797018963968
  %.not2363 = icmp eq i64 %i.avg, 0
  br i1 %.not2363, label %bb.in, label %bb.io

bb.in:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3287"
  %i.avh = load i64, ptr %i.kv, align 8
  %i.avi = lshr i64 %i.avh, 40
  %i.avj = trunc nuw nsw i64 %i.avi to i32
  %i.avk = and i32 %i.avj, 1
  br label %bb.io

bb.io:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3287", %bb.in
  %i.avl = phi i32 [ %i.avk, %bb.in ], [ 1, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3287" ]
  %.not2364 = icmp ne i32 %.pre-phi6595, %i.avl
  %i.avm = and i64 %i.avf, 4398046511104
  %i.avn = icmp eq i64 %i.avm, 0
  %or.cond6290 = select i1 %.not2364, i1 %i.avn, i1 false
  br i1 %or.cond6290, label %bb.ip, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3291"

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %259) #26
  %i.avo = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !383
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !384 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 24202 ; 2 uses
  %.not.i.i.i.i3288 = icmp eq ptr %i.avr, null
  br i1 %.not.i.i.i.i3288, label %_ZL16lookupStrInTablej.exit.i3289, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.avt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.avs) #26
  br label %_ZL16lookupStrInTablej.exit.i3289

_ZL16lookupStrInTablej.exit.i3289:                ; preds = %bb.iq, %bb.ip
  %.sroa.0.0.i.i.i.i3290 = phi i64 [ %i.avt, %bb.iq ], [ 0, %bb.ip ]
  %i.avu = getelementptr inbounds nuw i8, ptr %259, i64 32
  store i8 5, ptr %i.avu, align 8, !tbaa !387
  %i.avv = getelementptr inbounds nuw i8, ptr %259, i64 33
  store i8 1, ptr %i.avv, align 1, !tbaa !388
  store ptr %i.avs, ptr %259, align 8, !tbaa !92
  %i.avw = getelementptr inbounds nuw i8, ptr %259, i64 8
  store i64 %.sroa.0.0.i.i.i.i3290, ptr %i.avw, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %259) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3291"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3291": ; preds = %_ZL16lookupStrInTablej.exit.i3289, %bb.io
  %i.avx = load i64, ptr %i.ut, align 8
  %i.avy = and i64 %i.avx, 549755813888
  %.not2365 = icmp eq i64 %i.avy, 0
  br i1 %.not2365, label %bb.it, label %bb.ir

bb.ir:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3291"
  call void @llvm.lifetime.start.p0(ptr nonnull %258) #26
  %i.avz = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !383
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !384 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 18310 ; 2 uses
  %.not.i.i.i.i3292 = icmp eq ptr %i.awc, null
  br i1 %.not.i.i.i.i3292, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3295", label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.awe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.awd) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3295"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3295": ; preds = %bb.ir, %bb.is
  %.sroa.0.0.i.i.i.i3294 = phi i64 [ %i.awe, %bb.is ], [ 0, %bb.ir ]
  %i.awf = getelementptr inbounds nuw i8, ptr %258, i64 32
  store i8 5, ptr %i.awf, align 8, !tbaa !387
  %i.awg = getelementptr inbounds nuw i8, ptr %258, i64 33
  store i8 1, ptr %i.awg, align 1, !tbaa !388
  store ptr %i.awd, ptr %258, align 8, !tbaa !92
  %i.awh = getelementptr inbounds nuw i8, ptr %258, i64 8
  store i64 %.sroa.0.0.i.i.i.i3294, ptr %i.awh, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %258) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %258) #26
  br label %bb.it

bb.it:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3295", %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3291"
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.awj = load i8, ptr %i.awi, align 2
  %i.awk = and i8 %i.awj, 1
  %.not2366 = icmp eq i8 %i.awk, 0
  br i1 %.not2366, label %bb.iv, label %.lr.ph.i.i4823.preheader

.lr.ph.i.i4823.preheader:                         ; preds = %bb.it
  %i.awl = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !383
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !384 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 14165 ; 2 uses
  %.not.i.i.i.i4830 = icmp eq ptr %i.awo, null
  br i1 %.not.i.i.i.i4830, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4840, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph.i.i4823.preheader
  %i.awq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.awp) #26
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4840

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4840: ; preds = %bb.iu, %.lr.ph.i.i4823.preheader
  %.sroa.0.0.i.i.i.i4832 = phi i64 [ %i.awq, %bb.iu ], [ 0, %.lr.ph.i.i4823.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %i.awp, ptr %27, align 8, !alias.scope !2200
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i4837 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %.sroa.0.0.i.i.i.i4832, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i4837, align 8, !tbaa !92, !alias.scope !2200
  %i.awr = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr @.str.197, ptr %i.awr, align 8, !alias.scope !2200
  %i.aws = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 5, ptr %i.aws, align 8, !tbaa !387, !alias.scope !2200
  %i.awt = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 3, ptr %i.awt, align 1, !tbaa !388, !alias.scope !2200
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %27) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.iv

bb.iv:                                            ; preds = %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4840, %bb.it
  %i.awu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.awv = load i64, ptr %i.awu, align 8          ; 2 uses
  %i.aww = and i64 %i.awv, 1
  %or.cond6239.not = icmp eq i64 %i.aww, 0
  br i1 %or.cond6239.not, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3299", label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #26
  %i.awx = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !383
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !384 ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 15038 ; 2 uses
  %.not.i.i.i.i3296 = icmp eq ptr %i.axa, null
  br i1 %.not.i.i.i.i3296, label %_ZL16lookupStrInTablej.exit.i3297, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.axc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.axb) #26
  br label %_ZL16lookupStrInTablej.exit.i3297

_ZL16lookupStrInTablej.exit.i3297:                ; preds = %bb.ix, %bb.iw
  %.sroa.0.0.i.i.i.i3298 = phi i64 [ %i.axc, %bb.ix ], [ 0, %bb.iw ]
  %i.axd = getelementptr inbounds nuw i8, ptr %257, i64 32
  store i8 5, ptr %i.axd, align 8, !tbaa !387
  %i.axe = getelementptr inbounds nuw i8, ptr %257, i64 33
  store i8 1, ptr %i.axe, align 1, !tbaa !388
  store ptr %i.axb, ptr %257, align 8, !tbaa !92
  %i.axf = getelementptr inbounds nuw i8, ptr %257, i64 8
  store i64 %.sroa.0.0.i.i.i.i3298, ptr %i.axf, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %257) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #26
  %.pre6471.a = load i64, ptr %i.awu, align 8
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3299"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3299": ; preds = %_ZL16lookupStrInTablej.exit.i3297, %bb.iv
  %i.axg = phi i64 [ %.pre6471.a, %_ZL16lookupStrInTablej.exit.i3297 ], [ %i.awv, %bb.iv ]
  %i.axh = and i64 %i.axg, 4
  %.not2368 = icmp eq i64 %i.axh, 0
  br i1 %.not2368, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3307", label %bb.iy

bb.iy:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3299"
  call void @llvm.lifetime.start.p0(ptr nonnull %256) #26
  %i.axi = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !383
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !384 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 13749 ; 2 uses
  %.not.i.i.i.i3300 = icmp eq ptr %i.axl, null
  br i1 %.not.i.i.i.i3300, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3303", label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.axn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.axm) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3303"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3303": ; preds = %bb.iy, %bb.iz
  %.sroa.0.0.i.i.i.i3302 = phi i64 [ %i.axn, %bb.iz ], [ 0, %bb.iy ]
  %i.axo = getelementptr inbounds nuw i8, ptr %256, i64 32
  store i8 5, ptr %i.axo, align 8, !tbaa !387
  %i.axp = getelementptr inbounds nuw i8, ptr %256, i64 33
  store i8 1, ptr %i.axp, align 1, !tbaa !388
  store ptr %i.axm, ptr %256, align 8, !tbaa !92
  %i.axq = getelementptr inbounds nuw i8, ptr %256, i64 8
  store i64 %.sroa.0.0.i.i.i.i3302, ptr %i.axq, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %256) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3307"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3307": ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3299", %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3303"
  %i.axr = load i16, ptr %i.td, align 8
  %i.axs = lshr i16 %i.axr, 8
  %i.axt = and i16 %i.axs, 3                      ; 2 uses
  %.not2370 = icmp eq i16 %i.axt, 0
  br i1 %.not2370, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3307"
  %i.axu = zext nneg i16 %i.axt to i32
  br label %.lr.ph.i.i4842

.lr.ph.i.i4842:                                   ; preds = %bb.ja, %.lr.ph.i.i4842
  %indvars.iv.i15.i4843 = phi i64 [ %indvars.iv.next.i.i4844, %.lr.ph.i.i4842 ], [ 0, %bb.ja ]
  %indvars.iv.next.i.i4844 = add nuw nsw i64 %indvars.iv.i15.i4843, 1 ; 3 uses
  %.not.i.i4845 = icmp ne i64 %indvars.iv.next.i.i4844, 3
  call void @llvm.assume(i1 %.not.i.i4845)
  %i.axv = getelementptr inbounds nuw [16 x i8], ptr @_ZL35cxx_static_destructors_EQValueTable, i64 %indvars.iv.next.i.i4844 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.axx = load i32, ptr %i.axw, align 8, !tbaa !392, !noalias !2201
  %i.axy = icmp eq i32 %i.axx, %i.axu
  br i1 %i.axy, label %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4846, label %.lr.ph.i.i4842

_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4846: ; preds = %.lr.ph.i.i4842
  %.sroa.0.0.copyload.i4848 = load ptr, ptr %i.axv, align 8, !tbaa !282 ; 2 uses
  %i.axz = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !383
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !384 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 8546 ; 2 uses
  %.not.i.i.i.i4849 = icmp eq ptr %i.ayc, null
  br i1 %.not.i.i.i.i4849, label %_ZL16lookupStrInTablej.exit.i4850, label %bb.jb

bb.jb:                                            ; preds = %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4846
  %i.aye = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ayd) #26
  br label %_ZL16lookupStrInTablej.exit.i4850

_ZL16lookupStrInTablej.exit.i4850:                ; preds = %bb.jb, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4846
  %.sroa.0.0.i.i.i.i4851 = phi i64 [ %i.aye, %bb.jb ], [ 0, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i4846 ]
  %i.ayf = load i8, ptr %.sroa.0.0.copyload.i4848, align 1, !tbaa !92
  %.not.i.i.i4852 = icmp eq i8 %i.ayf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  br i1 %.not.i.i.i4852, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4859, label %_ZN4llvm5TwineC2EPKc.exit.i.thread.i4853

_ZN4llvm5TwineC2EPKc.exit.i.thread.i4853:         ; preds = %_ZL16lookupStrInTablej.exit.i4850
  %i.ayg = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %.sroa.0.0.copyload.i4848, ptr %i.ayg, align 8, !alias.scope !2202
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4859

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4859: ; preds = %_ZL16lookupStrInTablej.exit.i4850, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i4853
  %.sink6418.a = phi i8 [ 3, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i4853 ], [ 1, %_ZL16lookupStrInTablej.exit.i4850 ]
  store ptr %i.ayd, ptr %26, align 8
  %i.ayh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %.sroa.0.0.i.i.i.i4851, ptr %i.ayh, align 8, !tbaa !92
  %i.ayi = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 5, ptr %i.ayi, align 8, !tbaa !393
  %i.ayj = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 %.sink6418.a, ptr %i.ayj, align 1, !tbaa !393
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %26) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.jc

bb.jc:                                            ; preds = %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit4859, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3307"
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 1073
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !554, !range !451, !noundef !463
  %i.aym = trunc nuw i8 %i.ayl to i1
  br i1 %i.aym, label %bb.jd, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3311"

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %255) #26
  %i.ayn = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !383
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !384 ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8020 ; 2 uses
  %.not.i.i.i.i3308 = icmp eq ptr %i.ayq, null
  br i1 %.not.i.i.i.i3308, label %_ZL16lookupStrInTablej.exit.i3309, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ays = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ayr) #26
  br label %_ZL16lookupStrInTablej.exit.i3309

_ZL16lookupStrInTablej.exit.i3309:                ; preds = %bb.je, %bb.jd
  %.sroa.0.0.i.i.i.i3310 = phi i64 [ %i.ays, %bb.je ], [ 0, %bb.jd ]
  %i.ayt = getelementptr inbounds nuw i8, ptr %255, i64 32
  store i8 5, ptr %i.ayt, align 8, !tbaa !387
  %i.ayu = getelementptr inbounds nuw i8, ptr %255, i64 33
  store i8 1, ptr %i.ayu, align 1, !tbaa !388
  store ptr %i.ayr, ptr %255, align 8, !tbaa !92
  %i.ayv = getelementptr inbounds nuw i8, ptr %255, i64 8
  store i64 %.sroa.0.0.i.i.i.i3310, ptr %i.ayv, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %255) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %255) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3311"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3311": ; preds = %_ZL16lookupStrInTablej.exit.i3309, %bb.jc
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 1074
  %i.ayx = load i8, ptr %i.ayw, align 2, !tbaa !555, !range !451, !noundef !463
  %i.ayy = trunc nuw i8 %i.ayx to i1
  br i1 %i.ayy, label %bb.jf, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3315"

bb.jf:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3311"
  call void @llvm.lifetime.start.p0(ptr nonnull %254) #26
  %i.ayz = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !383
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !384 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 7961 ; 2 uses
  %.not.i.i.i.i3312 = icmp eq ptr %i.azc, null
  br i1 %.not.i.i.i.i3312, label %_ZL16lookupStrInTablej.exit.i3313, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aze = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.azd) #26
  br label %_ZL16lookupStrInTablej.exit.i3313

_ZL16lookupStrInTablej.exit.i3313:                ; preds = %bb.jg, %bb.jf
  %.sroa.0.0.i.i.i.i3314 = phi i64 [ %i.aze, %bb.jg ], [ 0, %bb.jf ]
  %i.azf = getelementptr inbounds nuw i8, ptr %254, i64 32
  store i8 5, ptr %i.azf, align 8, !tbaa !387
  %i.azg = getelementptr inbounds nuw i8, ptr %254, i64 33
  store i8 1, ptr %i.azg, align 1, !tbaa !388
  store ptr %i.azd, ptr %254, align 8, !tbaa !92
  %i.azh = getelementptr inbounds nuw i8, ptr %254, i64 8
  store i64 %.sroa.0.0.i.i.i.i3314, ptr %i.azh, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %254) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3315"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3315": ; preds = %_ZL16lookupStrInTablej.exit.i3313, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3311"
end_hunk_2
