Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExtractClosed?download=true
inline.NumInlined: 1743
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@l_Lean_Compiler_LCNF_ExtractClosed_visitCode:bb.a
  %i.aod = add nuw i32 %.val.i.i2845, 1
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !13
  br label %lean_inc_ref.exit2847.thread

bb.aav:                                           ; preds = %bb.aat
  %.not.i.i2846 = icmp eq i32 %.val.i.i2845, 0
  br i1 %.not.i.i2846, label %lean_inc_ref.exit2847.thread, label %lean_inc_ref.exit2847

lean_inc_ref.exit2847.thread:                     ; preds = %bb.aau, %bb.aav
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !10
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !10
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aob, i64 24
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !10
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aob, i64 32
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !10
  br label %bb.aaw

lean_inc_ref.exit2847:                            ; preds = %bb.aav
  %i.aom = atomicrmw add ptr %i.aob, i32 -1 monotonic, align 4 ; 0 uses
  %.val2434.pre = load i32, ptr %i.aob, align 4, !tbaa !13
  %i.aon = icmp eq i32 %.val2434.pre, 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !10 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !10 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aob, i64 24
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !10 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aob, i64 32
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !10 ; 2 uses
  br i1 %i.aon, label %lean_dec.exit2095, label %bb.aaw

bb.aaw:                                           ; preds = %lean_inc_ref.exit2847.thread, %lean_inc_ref.exit2847
  %i.aow = phi ptr [ %i.aol, %lean_inc_ref.exit2847.thread ], [ %i.aov, %lean_inc_ref.exit2847 ] ; 7 uses
  %i.aox = phi ptr [ %i.aoj, %lean_inc_ref.exit2847.thread ], [ %i.aot, %lean_inc_ref.exit2847 ] ; 7 uses
  %i.aoy = phi ptr [ %i.aoh, %lean_inc_ref.exit2847.thread ], [ %i.aor, %lean_inc_ref.exit2847 ] ; 7 uses
  %i.aoz = phi ptr [ %i.aof, %lean_inc_ref.exit2847.thread ], [ %i.aop, %lean_inc_ref.exit2847 ] ; 7 uses
  %i.apa = ptrtoint ptr %i.aow to i64
  %i.apb = and i64 %i.apa, 1
  %.not.i1971 = icmp eq i64 %i.apb, 0
  br i1 %.not.i1971, label %bb.aax, label %lean_inc.exit1972

bb.aax:                                           ; preds = %bb.aaw
  %.val.i.i2848 = load i32, ptr %i.aow, align 4, !tbaa !13 ; 3 uses
  %i.apc = icmp sgt i32 %.val.i.i2848, 0
  br i1 %i.apc, label %bb.aay, label %bb.aaz, !prof !14

bb.aay:                                           ; preds = %bb.aax
  %i.apd = add nuw i32 %.val.i.i2848, 1
  store i32 %i.apd, ptr %i.aow, align 4, !tbaa !13
  br label %lean_inc.exit1972

bb.aaz:                                           ; preds = %bb.aax
  %.not.i.i2849 = icmp eq i32 %.val.i.i2848, 0
  br i1 %.not.i.i2849, label %lean_inc.exit1972, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %i.ape = atomicrmw add ptr %i.aow, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1972

lean_inc.exit1972:                                ; preds = %bb.aba, %bb.aaz, %bb.aay, %bb.aaw
  %i.apf = ptrtoint ptr %i.aox to i64
  %i.apg = and i64 %i.apf, 1
  %.not.i1969 = icmp eq i64 %i.apg, 0
  br i1 %.not.i1969, label %bb.abb, label %lean_inc.exit1970

bb.abb:                                           ; preds = %lean_inc.exit1972
  %.val.i.i2851 = load i32, ptr %i.aox, align 4, !tbaa !13 ; 3 uses
  %i.aph = icmp sgt i32 %.val.i.i2851, 0
  br i1 %i.aph, label %bb.abc, label %bb.abd, !prof !14

bb.abc:                                           ; preds = %bb.abb
  %i.api = add nuw i32 %.val.i.i2851, 1
  store i32 %i.api, ptr %i.aox, align 4, !tbaa !13
  br label %lean_inc.exit1970

bb.abd:                                           ; preds = %bb.abb
  %.not.i.i2852 = icmp eq i32 %.val.i.i2851, 0
  br i1 %.not.i.i2852, label %lean_inc.exit1970, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.apj = atomicrmw add ptr %i.aox, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1970

lean_inc.exit1970:                                ; preds = %bb.abe, %bb.abd, %bb.abc, %lean_inc.exit1972
  %i.apk = ptrtoint ptr %i.aoy to i64
  %i.apl = and i64 %i.apk, 1
  %.not.i1967 = icmp eq i64 %i.apl, 0
  br i1 %.not.i1967, label %bb.abf, label %lean_inc.exit1968

bb.abf:                                           ; preds = %lean_inc.exit1970
  %.val.i.i2854 = load i32, ptr %i.aoy, align 4, !tbaa !13 ; 3 uses
  %i.apm = icmp sgt i32 %.val.i.i2854, 0
  br i1 %i.apm, label %bb.abg, label %bb.abh, !prof !14

bb.abg:                                           ; preds = %bb.abf
  %i.apn = add nuw i32 %.val.i.i2854, 1
  store i32 %i.apn, ptr %i.aoy, align 4, !tbaa !13
  br label %lean_inc.exit1968

bb.abh:                                           ; preds = %bb.abf
  %.not.i.i2855 = icmp eq i32 %.val.i.i2854, 0
  br i1 %.not.i.i2855, label %lean_inc.exit1968, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.apo = atomicrmw add ptr %i.aoy, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1968

lean_inc.exit1968:                                ; preds = %bb.abi, %bb.abh, %bb.abg, %lean_inc.exit1970
  %i.app = ptrtoint ptr %i.aoz to i64
  %i.apq = and i64 %i.app, 1
  %.not.i1965 = icmp eq i64 %i.apq, 0
  br i1 %.not.i1965, label %bb.abj, label %lean_inc.exit1966

bb.abj:                                           ; preds = %lean_inc.exit1968
  %.val.i.i2857 = load i32, ptr %i.aoz, align 4, !tbaa !13 ; 3 uses
  %i.apr = icmp sgt i32 %.val.i.i2857, 0
  br i1 %i.apr, label %bb.abk, label %bb.abl, !prof !14

bb.abk:                                           ; preds = %bb.abj
  %i.aps = add nuw i32 %.val.i.i2857, 1
  store i32 %i.aps, ptr %i.aoz, align 4, !tbaa !13
  br label %lean_inc.exit1966

bb.abl:                                           ; preds = %bb.abj
  %.not.i.i2858 = icmp eq i32 %.val.i.i2857, 0
  br i1 %.not.i.i2858, label %lean_inc.exit1966, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.apt = atomicrmw add ptr %i.aoz, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1966

lean_inc.exit1966:                                ; preds = %lean_inc.exit1968, %bb.abk, %bb.abl, %bb.abm
  %i.apu = load i32, ptr %i.aob, align 4, !tbaa !13 ; 3 uses
  %i.apv = icmp sgt i32 %i.apu, 1
  br i1 %i.apv, label %bb.abn, label %bb.abo, !prof !14

bb.abn:                                           ; preds = %lean_inc.exit1966
  %i.apw = add nsw i32 %i.apu, -1
  store i32 %i.apw, ptr %i.aob, align 4, !tbaa !13
  br label %lean_dec.exit2095

bb.abo:                                           ; preds = %lean_inc.exit1966
  %.not.i2315 = icmp eq i32 %i.apu, 0
  br i1 %.not.i2315, label %lean_dec.exit2095, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aob) #7
  br label %lean_dec.exit2095

lean_dec.exit2095:                                ; preds = %bb.abn, %bb.abo, %bb.abp, %lean_inc_ref.exit2847
  %i.apx = phi ptr [ %i.aov, %lean_inc_ref.exit2847 ], [ %i.aow, %bb.abp ], [ %i.aow, %bb.abo ], [ %i.aow, %bb.abn ] ; 11 uses
  %i.apy = phi ptr [ %i.aot, %lean_inc_ref.exit2847 ], [ %i.aox, %bb.abp ], [ %i.aox, %bb.abo ], [ %i.aox, %bb.abn ] ; 9 uses
  %i.apz = phi ptr [ %i.aor, %lean_inc_ref.exit2847 ], [ %i.aoy, %bb.abp ], [ %i.aoy, %bb.abo ], [ %i.aoy, %bb.abn ] ; 7 uses
  %i.aqa = phi ptr [ %i.aop, %lean_inc_ref.exit2847 ], [ %i.aoz, %bb.abp ], [ %i.aoz, %bb.abo ], [ %i.aoz, %bb.abn ] ; 9 uses
  %.val24343625 = phi i1 [ true, %lean_inc_ref.exit2847 ], [ false, %bb.abp ], [ false, %bb.abo ], [ false, %bb.abn ]
  %.01673 = phi ptr [ %i.aob, %lean_inc_ref.exit2847 ], [ inttoptr (i64 1 to ptr), %bb.abp ], [ inttoptr (i64 1 to ptr), %bb.abo ], [ inttoptr (i64 1 to ptr), %bb.abn ] ; 5 uses
  %.val.i.i2860 = load i32, ptr %i.apx, align 4, !tbaa !13 ; 3 uses
  %i.aqb = icmp sgt i32 %.val.i.i2860, 0
  br i1 %i.aqb, label %bb.abq, label %bb.abr, !prof !14

bb.abq:                                           ; preds = %lean_dec.exit2095
  %i.aqc = add nuw i32 %.val.i.i2860, 1
  store i32 %i.aqc, ptr %i.apx, align 4, !tbaa !13
  br label %lean_inc_ref.exit2862

bb.abr:                                           ; preds = %lean_dec.exit2095
  %.not.i.i2861 = icmp eq i32 %.val.i.i2860, 0
  br i1 %.not.i.i2861, label %lean_inc_ref.exit2862, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  %i.aqd = atomicrmw add ptr %i.apx, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2862

lean_inc_ref.exit2862:                            ; preds = %bb.abq, %bb.abr, %bb.abs
  %i.aqe = tail call ptr @l___private_Init_Data_Array_BasicAux_0__mapMonoMImp_go___at___00Lean_Compiler_LCNF_ExtractClosed_visitCode_spec__1(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.apx, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 14 uses
  %i.aqf = ptrtoint ptr %i.aqe to i64             ; 2 uses
  %i.aqg = and i64 %i.aqf, 1
  %.not.i2863 = icmp eq i64 %i.aqg, 0             ; 3 uses
  br i1 %.not.i2863, label %bb.abu, label %bb.abt

bb.abt:                                           ; preds = %lean_inc_ref.exit2862
  %i.aqh = lshr i64 %i.aqf, 1
  %i.aqi = trunc i64 %i.aqh to i32
  br label %lean_obj_tag.exit2866

bb.abu:                                           ; preds = %lean_inc_ref.exit2862
  %i.aqj = getelementptr i8, ptr %i.aqe, i64 4
  %.val.i2865 = load i32, ptr %i.aqj, align 4
  %i.aqk = lshr i32 %.val.i2865, 24
  br label %lean_obj_tag.exit2866

lean_obj_tag.exit2866:                            ; preds = %bb.abt, %bb.abu
  %.0.i2864 = phi i32 [ %i.aqi, %bb.abt ], [ %i.aqk, %bb.abu ]
  %i.aql = icmp eq i32 %.0.i2864, 0
  br i1 %i.aql, label %bb.abv, label %bb.ads

bb.abv:                                           ; preds = %lean_obj_tag.exit2866
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !10 ; 9 uses
  %.val2433 = load i32, ptr %i.aqe, align 8, !tbaa !13
  %i.aqo = icmp eq i32 %.val2433, 1               ; 3 uses
  br i1 %i.aqo, label %lean_dec.exit2093, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.aqp = ptrtoint ptr %i.aqn to i64
  %i.aqq = and i64 %i.aqp, 1
  %.not.i1963 = icmp eq i64 %i.aqq, 0
  br i1 %.not.i1963, label %bb.abx, label %lean_inc.exit1964

bb.abx:                                           ; preds = %bb.abw
  %.val.i.i2867 = load i32, ptr %i.aqn, align 4, !tbaa !13 ; 3 uses
  %i.aqr = icmp sgt i32 %.val.i.i2867, 0
  br i1 %i.aqr, label %bb.aby, label %bb.abz, !prof !14

bb.aby:                                           ; preds = %bb.abx
  %i.aqs = add nuw i32 %.val.i.i2867, 1
  store i32 %i.aqs, ptr %i.aqn, align 4, !tbaa !13
  br label %lean_inc.exit1964

bb.abz:                                           ; preds = %bb.abx
  %.not.i.i2868 = icmp eq i32 %.val.i.i2867, 0
  br i1 %.not.i.i2868, label %lean_inc.exit1964, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  %i.aqt = atomicrmw add ptr %i.aqn, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1964

lean_inc.exit1964:                                ; preds = %bb.aca, %bb.abz, %bb.aby, %bb.abw
  br i1 %.not.i2863, label %bb.acb, label %lean_dec.exit2093

bb.acb:                                           ; preds = %lean_inc.exit1964
  %i.aqu = load i32, ptr %i.aqe, align 8, !tbaa !13 ; 3 uses
  %i.aqv = icmp sgt i32 %i.aqu, 1
  br i1 %i.aqv, label %bb.acc, label %bb.acd, !prof !14

bb.acc:                                           ; preds = %bb.acb
  %i.aqw = add nsw i32 %i.aqu, -1
  store i32 %i.aqw, ptr %i.aqe, align 8, !tbaa !13
  br label %lean_dec.exit2093

bb.acd:                                           ; preds = %bb.acb
  %.not.i2317 = icmp eq i32 %i.aqu, 0
  br i1 %.not.i2317, label %lean_dec.exit2093, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqe) #7
  br label %lean_dec.exit2093

lean_dec.exit2093:                                ; preds = %lean_inc.exit1964, %bb.acc, %bb.acd, %bb.ace, %bb.abv
  %.01671 = phi ptr [ %i.aqe, %bb.abv ], [ inttoptr (i64 1 to ptr), %bb.ace ], [ inttoptr (i64 1 to ptr), %bb.acd ], [ inttoptr (i64 1 to ptr), %bb.acc ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1964 ] ; 4 uses
  %i.aqx = load i32, ptr %i.apx, align 4, !tbaa !13 ; 3 uses
  %i.aqy = icmp sgt i32 %i.aqx, 1
  br i1 %i.aqy, label %bb.acf, label %bb.acg, !prof !14

bb.acf:                                           ; preds = %lean_dec.exit2093
  %i.aqz = add nsw i32 %i.aqx, -1
  store i32 %i.aqz, ptr %i.apx, align 4, !tbaa !13
  br label %lean_dec_ref.exit2412

bb.acg:                                           ; preds = %lean_dec.exit2093
  %.not.i2411 = icmp eq i32 %i.aqx, 0
  br i1 %.not.i2411, label %lean_dec_ref.exit2412, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apx) #7
  br label %lean_dec_ref.exit2412

lean_dec_ref.exit2412:                            ; preds = %bb.acf, %bb.acg, %bb.ach
  %.not = icmp eq ptr %i.apx, %i.aqn
  br i1 %.not, label %bb.acz, label %bb.aci

bb.aci:                                           ; preds = %lean_dec_ref.exit2412
  %.val2432 = load i32, ptr %0, align 8, !tbaa !13 ; 4 uses
  %i.ara = icmp eq i32 %.val2432, 1               ; 2 uses
  br i1 %i.ara, label %bb.acj, label %bb.aco

bb.acj:                                           ; preds = %bb.aci
  %i.arb = load ptr, ptr %i.aoa, align 8, !tbaa !10 ; 4 uses
  %i.arc = ptrtoint ptr %i.arb to i64
  %i.ard = and i64 %i.arc, 1
  %.not.i2090 = icmp eq i64 %i.ard, 0
  br i1 %.not.i2090, label %bb.ack, label %lean_dec.exit2091

bb.ack:                                           ; preds = %bb.acj
  %i.are = load i32, ptr %i.arb, align 4, !tbaa !13 ; 3 uses
  %i.arf = icmp sgt i32 %i.are, 1
  br i1 %i.arf, label %bb.acl, label %bb.acm, !prof !14

bb.acl:                                           ; preds = %bb.ack
  %i.arg = add nsw i32 %i.are, -1
  store i32 %i.arg, ptr %i.arb, align 4, !tbaa !13
  br label %lean_dec.exit2091

bb.acm:                                           ; preds = %bb.ack
  %.not.i2319 = icmp eq i32 %i.are, 0
  br i1 %.not.i2319, label %lean_dec.exit2091, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arb) #7
  br label %lean_dec.exit2091

bb.aco:                                           ; preds = %bb.aci
  br i1 %.not.i2457, label %bb.acp, label %lean_dec.exit2091

bb.acp:                                           ; preds = %bb.aco
  %i.arh = icmp sgt i32 %.val2432, 1
  br i1 %i.arh, label %bb.acq, label %bb.acr, !prof !14

bb.acq:                                           ; preds = %bb.acp
  %i.ari = add nsw i32 %.val2432, -1
  store i32 %i.ari, ptr %0, align 8, !tbaa !13
  br label %lean_dec.exit2091

bb.acr:                                           ; preds = %bb.acp
  %.not.i2321 = icmp eq i32 %.val2432, 0
  br i1 %.not.i2321, label %lean_dec.exit2091, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2091

lean_dec.exit2091:                                ; preds = %bb.aco, %bb.acq, %bb.acr, %bb.acs, %bb.acj, %bb.acl, %bb.acm, %bb.acn
  %.01669 = phi ptr [ %0, %bb.acj ], [ %0, %bb.acn ], [ %0, %bb.acm ], [ %0, %bb.acl ], [ inttoptr (i64 1 to ptr), %bb.acs ], [ inttoptr (i64 1 to ptr), %bb.acr ], [ inttoptr (i64 1 to ptr), %bb.acq ], [ inttoptr (i64 1 to ptr), %bb.aco ]
  br i1 %.val24343625, label %bb.acu, label %bb.act

bb.act:                                           ; preds = %lean_dec.exit2091
  %i.arj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 4 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  store ptr %i.aqa, ptr %i.ark, align 8, !tbaa !10
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  store ptr %i.apz, ptr %i.arl, align 8, !tbaa !10
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 24
  store ptr %i.apy, ptr %i.arm, align 8, !tbaa !10
  br label %bb.acu

bb.acu:                                           ; preds = %lean_dec.exit2091, %bb.act
  %.sink3626.a = phi ptr [ %i.arj, %bb.act ], [ %.01673, %lean_dec.exit2091 ] ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.sink3626.a, i64 32
  store ptr %i.aqn, ptr %i.arn, align 8, !tbaa !10
  br i1 %i.ara, label %bb.acw, label %bb.acv

bb.acv:                                           ; preds = %bb.acu
  %i.aro = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 4, i32 noundef 1, i32 noundef 0)
  br label %bb.acw

bb.acw:                                           ; preds = %bb.acu, %bb.acv
  %.sink3627 = phi ptr [ %i.aro, %bb.acv ], [ %.01669, %bb.acu ] ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %.sink3627, i64 8
  store ptr %.sink3626.a, ptr %i.arp, align 8, !tbaa !10
  br i1 %i.aqo, label %bb.acx, label %bb.acy

bb.acx:                                           ; preds = %bb.acw
  %i.arq = getelementptr inbounds nuw i8, ptr %.01671, i64 8
  store ptr %.sink3627, ptr %i.arq, align 8, !tbaa !10
  br label %lean_dec.exit2077

bb.acy:                                           ; preds = %bb.acw
  %i.arr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  store ptr %.sink3627, ptr %i.ars, align 8, !tbaa !10
  br label %lean_dec.exit2077

bb.acz:                                           ; preds = %lean_dec_ref.exit2412
  %i.art = load i32, ptr %i.aqn, align 4, !tbaa !13 ; 3 uses
  %i.aru = icmp sgt i32 %i.art, 1
  br i1 %i.aru, label %bb.ada, label %bb.adb, !prof !14

bb.ada:                                           ; preds = %bb.acz
  %i.arv = add nsw i32 %i.art, -1
  store i32 %i.arv, ptr %i.aqn, align 4, !tbaa !13
  br label %lean_dec.exit2087

bb.adb:                                           ; preds = %bb.acz
  %.not.i2323 = icmp eq i32 %i.art, 0
  br i1 %.not.i2323, label %lean_dec.exit2087, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqn) #7
  br label %lean_dec.exit2087

lean_dec.exit2087:                                ; preds = %bb.adc, %bb.adb, %bb.ada
  %i.arw = ptrtoint ptr %.01673 to i64
  %i.arx = and i64 %i.arw, 1
  %.not.i2870 = icmp eq i64 %i.arx, 0
  br i1 %.not.i2870, label %bb.add, label %lean_del_object.exit2871

bb.add:                                           ; preds = %lean_dec.exit2087
  tail call void @lean_free_object(ptr noundef nonnull %.01673) #7
  br label %lean_del_object.exit2871

lean_del_object.exit2871:                         ; preds = %lean_dec.exit2087, %bb.add
  %i.ary = ptrtoint ptr %i.apy to i64
  %i.arz = and i64 %i.ary, 1
  %.not.i2084 = icmp eq i64 %i.arz, 0
  br i1 %.not.i2084, label %bb.ade, label %lean_dec.exit2085

bb.ade:                                           ; preds = %lean_del_object.exit2871
  %i.asa = load i32, ptr %i.apy, align 4, !tbaa !13 ; 3 uses
  %i.asb = icmp sgt i32 %i.asa, 1
  br i1 %i.asb, label %bb.adf, label %bb.adg, !prof !14

bb.adf:                                           ; preds = %bb.ade
  %i.asc = add nsw i32 %i.asa, -1
  store i32 %i.asc, ptr %i.apy, align 4, !tbaa !13
  br label %lean_dec.exit2085

bb.adg:                                           ; preds = %bb.ade
  %.not.i2325 = icmp eq i32 %i.asa, 0
  br i1 %.not.i2325, label %lean_dec.exit2085, label %bb.adh

bb.adh:                                           ; preds = %bb.adg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apy) #7
  br label %lean_dec.exit2085

lean_dec.exit2085:                                ; preds = %bb.adh, %bb.adg, %bb.adf, %lean_del_object.exit2871
  %i.asd = load i32, ptr %i.apz, align 4, !tbaa !13 ; 3 uses
  %i.ase = icmp sgt i32 %i.asd, 1
  br i1 %i.ase, label %bb.adi, label %bb.adj, !prof !14

bb.adi:                                           ; preds = %lean_dec.exit2085
  %i.asf = add nsw i32 %i.asd, -1
  store i32 %i.asf, ptr %i.apz, align 4, !tbaa !13
  br label %lean_dec_ref.exit2410

bb.adj:                                           ; preds = %lean_dec.exit2085
  %.not.i2409 = icmp eq i32 %i.asd, 0
  br i1 %.not.i2409, label %lean_dec_ref.exit2410, label %bb.adk

bb.adk:                                           ; preds = %bb.adj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apz) #7
  br label %lean_dec_ref.exit2410

lean_dec_ref.exit2410:                            ; preds = %bb.adi, %bb.adj, %bb.adk
  %i.asg = ptrtoint ptr %i.aqa to i64
  %i.ash = and i64 %i.asg, 1
  %.not.i2082 = icmp eq i64 %i.ash, 0
  br i1 %.not.i2082, label %bb.adl, label %lean_dec.exit2083

bb.adl:                                           ; preds = %lean_dec_ref.exit2410
  %i.asi = load i32, ptr %i.aqa, align 4, !tbaa !13 ; 3 uses
  %i.asj = icmp sgt i32 %i.asi, 1
  br i1 %i.asj, label %bb.adm, label %bb.adn, !prof !14

bb.adm:                                           ; preds = %bb.adl
  %i.ask = add nsw i32 %i.asi, -1
  store i32 %i.ask, ptr %i.aqa, align 4, !tbaa !13
  br label %lean_dec.exit2083

bb.adn:                                           ; preds = %bb.adl
  %.not.i2327 = icmp eq i32 %i.asi, 0
  br i1 %.not.i2327, label %lean_dec.exit2083, label %bb.ado

bb.ado:                                           ; preds = %bb.adn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqa) #7
  br label %lean_dec.exit2083

lean_dec.exit2083:                                ; preds = %bb.ado, %bb.adn, %bb.adm, %lean_dec_ref.exit2410
  br i1 %i.aqo, label %bb.adp, label %bb.adq

bb.adp:                                           ; preds = %lean_dec.exit2083
  %i.asl = getelementptr inbounds nuw i8, ptr %.01671, i64 8
  store ptr %0, ptr %i.asl, align 8, !tbaa !10
  br label %lean_dec.exit2077

bb.adq:                                           ; preds = %lean_dec.exit2083
  tail call void @lean_inc_heartbeat() #7
  %i.asm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.asn = icmp eq ptr %i.asm, null
  br i1 %i.asn, label %bb.adr, label %lean_alloc_ctor.exit2872

bb.adr:                                           ; preds = %bb.adq
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit2872:                         ; preds = %bb.adq
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  store i32 1, ptr %i.asm, align 4, !tbaa !13
  store i32 65552, ptr %i.aso, align 4
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  store ptr %0, ptr %i.asp, align 8, !tbaa !10
  br label %lean_dec.exit2077

bb.ads:                                           ; preds = %lean_obj_tag.exit2866
  %i.asq = ptrtoint ptr %.01673 to i64
  %i.asr = and i64 %i.asq, 1
  %.not.i2873 = icmp eq i64 %i.asr, 0
  br i1 %.not.i2873, label %bb.adt, label %lean_del_object.exit2874

bb.adt:                                           ; preds = %bb.ads
  tail call void @lean_free_object(ptr noundef nonnull %.01673) #7
  br label %lean_del_object.exit2874

lean_del_object.exit2874:                         ; preds = %bb.ads, %bb.adt
  %i.ass = load i32, ptr %i.apx, align 4, !tbaa !13 ; 3 uses
  %i.ast = icmp sgt i32 %i.ass, 1
  br i1 %i.ast, label %bb.adu, label %bb.adv, !prof !14

bb.adu:                                           ; preds = %lean_del_object.exit2874
  %i.asu = add nsw i32 %i.ass, -1
  store i32 %i.asu, ptr %i.apx, align 4, !tbaa !13
  br label %lean_dec_ref.exit2408

bb.adv:                                           ; preds = %lean_del_object.exit2874
  %.not.i2407 = icmp eq i32 %i.ass, 0
  br i1 %.not.i2407, label %lean_dec_ref.exit2408, label %bb.adw

bb.adw:                                           ; preds = %bb.adv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apx) #7
  br label %lean_dec_ref.exit2408

lean_dec_ref.exit2408:                            ; preds = %bb.adu, %bb.adv, %bb.adw
  %i.asv = ptrtoint ptr %i.apy to i64
  %i.asw = and i64 %i.asv, 1
  %.not.i2080 = icmp eq i64 %i.asw, 0
  br i1 %.not.i2080, label %bb.adx, label %lean_dec.exit2081

bb.adx:                                           ; preds = %lean_dec_ref.exit2408
  %i.asx = load i32, ptr %i.apy, align 4, !tbaa !13 ; 3 uses
  %i.asy = icmp sgt i32 %i.asx, 1
  br i1 %i.asy, label %bb.ady, label %bb.adz, !prof !14

bb.ady:                                           ; preds = %bb.adx
  %i.asz = add nsw i32 %i.asx, -1
  store i32 %i.asz, ptr %i.apy, align 4, !tbaa !13
  br label %lean_dec.exit2081

bb.adz:                                           ; preds = %bb.adx
  %.not.i2329 = icmp eq i32 %i.asx, 0
  br i1 %.not.i2329, label %lean_dec.exit2081, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apy) #7
  br label %lean_dec.exit2081

lean_dec.exit2081:                                ; preds = %bb.aea, %bb.adz, %bb.ady, %lean_dec_ref.exit2408
  %i.ata = load i32, ptr %i.apz, align 4, !tbaa !13 ; 3 uses
  %i.atb = icmp sgt i32 %i.ata, 1
  br i1 %i.atb, label %bb.aeb, label %bb.aec, !prof !14

bb.aeb:                                           ; preds = %lean_dec.exit2081
  %i.atc = add nsw i32 %i.ata, -1
  store i32 %i.atc, ptr %i.apz, align 4, !tbaa !13
  br label %lean_dec_ref.exit2406

bb.aec:                                           ; preds = %lean_dec.exit2081
  %.not.i2405 = icmp eq i32 %i.ata, 0
  br i1 %.not.i2405, label %lean_dec_ref.exit2406, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apz) #7
  br label %lean_dec_ref.exit2406

lean_dec_ref.exit2406:                            ; preds = %bb.aeb, %bb.aec, %bb.aed
  %i.atd = ptrtoint ptr %i.aqa to i64
  %i.ate = and i64 %i.atd, 1
  %.not.i2078 = icmp eq i64 %i.ate, 0
  br i1 %.not.i2078, label %bb.aee, label %lean_dec.exit2079

bb.aee:                                           ; preds = %lean_dec_ref.exit2406
  %i.atf = load i32, ptr %i.aqa, align 4, !tbaa !13 ; 3 uses
  %i.atg = icmp sgt i32 %i.atf, 1
  br i1 %i.atg, label %bb.aef, label %bb.aeg, !prof !14

bb.aef:                                           ; preds = %bb.aee
  %i.ath = add nsw i32 %i.atf, -1
  store i32 %i.ath, ptr %i.aqa, align 4, !tbaa !13
  br label %lean_dec.exit2079

bb.aeg:                                           ; preds = %bb.aee
  %.not.i2331 = icmp eq i32 %i.atf, 0
  br i1 %.not.i2331, label %lean_dec.exit2079, label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqa) #7
  br label %lean_dec.exit2079

lean_dec.exit2079:                                ; preds = %bb.aeh, %bb.aeg, %bb.aef, %lean_dec_ref.exit2406
  %.val.i2875 = load i32, ptr %0, align 8, !tbaa !13 ; 4 uses
  %i.ati = icmp eq i32 %.val.i2875, 1
  br i1 %i.ati, label %.preheader.i2877, label %bb.aem

end_hunk_0
