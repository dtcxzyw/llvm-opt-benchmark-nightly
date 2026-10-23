Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterInfoEmitter?download=true
inline.NumInlined: 8854
inline.NumDeleted: 3653
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN12_GLOBAL__N_119RegisterInfoEmitter13runTargetDescERN4llvm11raw_ostreamES3_NS1_9StringRefE:bb.a
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit870

_ZN4llvm11raw_ostreamlsEPKc.exit870:              ; preds = %bb.fw, %bb.fx
  %i.aqw = phi ptr [ %.pre2744.a, %bb.fw ], [ %i.aqv, %bb.fx ] ; 2 uses
  %.0.i.i869 = phi ptr [ %i.aqs, %bb.fw ], [ %.0.i866, %bb.fx ] ; 4 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0.i.i869, i64 24
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !182
  %i.aqz = ptrtoint ptr %i.aqy to i64
  %i.ara = ptrtoint ptr %i.aqw to i64
  %i.arb = sub i64 %i.aqz, %i.ara
  %i.arc = icmp ult i64 %i.arb, 27
  br i1 %i.arc, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit870
  %i.ard = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i869, ptr noundef nonnull @.str.285, i64 noundef 27) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit873

bb.fz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit870
  %i.are = getelementptr inbounds nuw i8, ptr %.0.i.i869, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aqw, ptr noundef nonnull align 1 dereferenceable(27) @.str.285, i64 27, i1 false)
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !183
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 27
  store ptr %i.arg, ptr %i.are, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit873

_ZN4llvm11raw_ostreamlsEPKc.exit873:              ; preds = %bb.fy, %bb.fz
  %.0.i.i872 = phi ptr [ %i.ard, %bb.fy ], [ %.0.i.i869, %bb.fz ]
  %i.arh = load ptr, ptr %i.apk, align 8, !tbaa !63
  %i.ari = load i64, ptr %i.apm, align 8, !tbaa !61
  %i.arj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i872, ptr noundef %i.arh, i64 noundef %i.ari) #22 ; 4 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 24
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !182
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 32 ; 3 uses
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !183 ; 2 uses
  %i.aro = ptrtoint ptr %i.arl to i64
  %i.arp = ptrtoint ptr %i.arn to i64
  %i.arq = sub i64 %i.aro, %i.arp
  %i.arr = icmp ult i64 %i.arq, 53
  br i1 %i.arr, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit873
  %i.ars = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.arj, ptr noundef nonnull @.str.286, i64 noundef 53) #22 ; 2 uses
  %.phi.trans.insert2745.a = getelementptr inbounds nuw i8, ptr %i.ars, i64 32
  %.pre2746.a = load ptr, ptr %.phi.trans.insert2745.a, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit876

bb.gb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.arn, ptr noundef nonnull align 1 dereferenceable(53) @.str.286, i64 53, i1 false)
  %i.art = load ptr, ptr %i.arm, align 8, !tbaa !183
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 53 ; 2 uses
  store ptr %i.aru, ptr %i.arm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit876

_ZN4llvm11raw_ostreamlsEPKc.exit876:              ; preds = %bb.ga, %bb.gb
  %i.arv = phi ptr [ %.pre2746.a, %bb.ga ], [ %i.aru, %bb.gb ] ; 2 uses
  %.0.i.i875 = phi ptr [ %i.ars, %bb.ga ], [ %i.arj, %bb.gb ] ; 3 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.0.i.i875, i64 24
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !182
  %i.ary = ptrtoint ptr %i.arx to i64
  %i.arz = ptrtoint ptr %i.arv to i64
  %i.asa = sub i64 %i.ary, %i.arz
  %i.asb = icmp ult i64 %i.asa, 39
  br i1 %i.asb, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit876
  %i.asc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i875, ptr noundef nonnull @.str.287, i64 noundef 39) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit879

bb.gd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit876
  %i.asd = getelementptr inbounds nuw i8, ptr %.0.i.i875, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.arv, ptr noundef nonnull align 1 dereferenceable(39) @.str.287, i64 39, i1 false)
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !183
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 39
  store ptr %i.asf, ptr %i.asd, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit879

_ZN4llvm11raw_ostreamlsEPKc.exit879:              ; preds = %bb.gc, %bb.gd
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.02194.02461, i64 112 ; 5 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.02194.02461, i64 120 ; 3 uses
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !1422
  %i.asj = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.ask = ptrtoint ptr %i.asi to i64
  %i.asl = ptrtoint ptr %i.asj to i64
  %i.asm = sub i64 %i.ask, %i.asl
  %i.asn = sdiv exact i64 %i.asm, 144
  %i.aso = trunc i64 %i.asn to i32                ; 2 uses
  %.not2451 = icmp eq i32 %i.aso, 1
  br i1 %.not2451, label %._crit_edge2454, label %.lr.ph2453

._crit_edge2454:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit896, %_ZN4llvm11raw_ostreamlsEPKc.exit879
  %i.asp = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.asq = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.asr = ptrtoint ptr %i.asp to i64
  %i.ass = ptrtoint ptr %i.asq to i64
  %i.ast = sub i64 %i.asr, %i.ass
  %i.asu = icmp ult i64 %i.ast, 40
  br i1 %i.asu, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %._crit_edge2454
  %i.asv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.291, i64 noundef 40) #22 ; 2 uses
  %.phi.trans.insert2747.a = getelementptr inbounds nuw i8, ptr %i.asv, i64 32
  %.pre2748.a = load ptr, ptr %.phi.trans.insert2747.a, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit882

bb.gf:                                            ; preds = %._crit_edge2454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.asq, ptr noundef nonnull align 1 dereferenceable(40) @.str.291, i64 40, i1 false)
  %i.asw = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 40 ; 2 uses
  store ptr %i.asx, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit882

_ZN4llvm11raw_ostreamlsEPKc.exit882:              ; preds = %bb.ge, %bb.gf
  %i.asy = phi ptr [ %.pre2748.a, %bb.ge ], [ %i.asx, %bb.gf ] ; 2 uses
  %.0.i.i881 = phi ptr [ %i.asv, %bb.ge ], [ %1, %bb.gf ] ; 3 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0.i.i881, i64 24
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !182
  %i.atb = ptrtoint ptr %i.ata to i64
  %i.atc = ptrtoint ptr %i.asy to i64
  %i.atd = sub i64 %i.atb, %i.atc
  %i.ate = icmp ult i64 %i.atd, 20
  br i1 %i.ate, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit882
  %i.atf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i881, ptr noundef nonnull @.str.292, i64 noundef 20) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit885

bb.gh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit882
  %i.atg = getelementptr inbounds nuw i8, ptr %.0.i.i881, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.asy, ptr noundef nonnull align 1 dereferenceable(20) @.str.292, i64 20, i1 false)
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !183
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 20
  store ptr %i.ati, ptr %i.atg, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit885

_ZN4llvm11raw_ostreamlsEPKc.exit885:              ; preds = %bb.gg, %bb.gh
  %i.atj = load ptr, ptr %i.ash, align 8, !tbaa !1422
  %i.atk = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.atl = ptrtoint ptr %i.atj to i64
  %i.atm = ptrtoint ptr %i.atk to i64
  %i.atn = sub i64 %i.atl, %i.atm
  %i.ato = sdiv exact i64 %i.atn, 144
  %i.atp = trunc i64 %i.ato to i32                ; 2 uses
  %.not5582455 = icmp eq i32 %i.atp, 1
  br i1 %.not5582455, label %._crit_edge2458, label %.lr.ph2457

.lr.ph2453:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit879, %_ZN4llvm11raw_ostreamlsEPKc.exit896
  %indvars.iv2674 = phi i64 [ %indvars.iv.next2675, %_ZN4llvm11raw_ostreamlsEPKc.exit896 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit879 ] ; 3 uses
  %i.atq = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.atr = getelementptr inbounds nuw [144 x i8], ptr %i.atq, i64 %indvars.iv2674 ; 2 uses
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !50 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.atr, i64 8
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !307 ; 3 uses
  %i.atv = icmp eq i32 %i.atu, 0
  br i1 %i.atv, label %_ZN4llvm11raw_ostreamlsEPKc.exit896, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph2453
  %i.atw = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.atx = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = ptrtoint ptr %i.atx to i64
  %i.aua = sub i64 %i.aty, %i.atz
  %i.aub = icmp ult i64 %i.aua, 33
  br i1 %i.aub, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.auc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.288, i64 noundef 33) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit890

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.atx, ptr noundef nonnull align 1 dereferenceable(33) @.str.288, i64 33, i1 false)
  %i.aud = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 33
  store ptr %i.aue, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit890

_ZN4llvm11raw_ostreamlsEPKc.exit890:              ; preds = %bb.gj, %bb.gk
  %.0.i.i889 = phi ptr [ %i.auc, %bb.gj ], [ %1, %bb.gk ]
  %i.auf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i889, i64 noundef %indvars.iv2674) #22 ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 24
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !182
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auf, i64 32 ; 3 uses
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !183 ; 2 uses
  %i.auk = ptrtoint ptr %i.auh to i64
  %i.aul = ptrtoint ptr %i.auj to i64
  %i.aum = sub i64 %i.auk, %i.aul
  %i.aun = icmp ult i64 %i.aum, 6
  br i1 %i.aun, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit890
  %i.auo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.auf, ptr noundef nonnull @.str.289, i64 noundef 6) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit893

bb.gm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.auj, ptr noundef nonnull align 1 dereferenceable(6) @.str.289, i64 6, i1 false)
  %i.aup = load ptr, ptr %i.aui, align 8, !tbaa !183
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 6
  store ptr %i.auq, ptr %i.aui, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit893

_ZN4llvm11raw_ostreamlsEPKc.exit893:              ; preds = %bb.gl, %bb.gm
  %i.aur = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.aus = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.aut = icmp eq ptr %i.aur, %i.aus
  br i1 %i.aut, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit893
  store i8 32, ptr %i.aus, align 1
  %i.auu = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 1
  store ptr %i.auv, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel

bb.go:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit893
  %i.auw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.89, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel

_ZN4llvm11raw_ostreamlsEPKc.exit900.peel:         ; preds = %bb.go, %bb.gn
  %.0.i.i899.peel = phi ptr [ %i.auw, %bb.go ], [ %1, %bb.gn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.aux = load ptr, ptr %i.ats, align 8, !tbaa !265
  call void @_ZN4llvm16getQualifiedNameB5cxx11EPKNS_6RecordE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef %i.aux) #22
  %i.auy = load ptr, ptr %35, align 8, !tbaa !63
  %i.auz = load i64, ptr %i.aei, align 8, !tbaa !61
  %i.ava = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i899.peel, ptr noundef %i.auy, i64 noundef %i.auz) #22 ; 0 uses
  %i.avb = load ptr, ptr %35, align 8, !tbaa !63  ; 2 uses
  %i.avc = icmp eq ptr %i.avb, %i.aej
  br i1 %i.avc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel
  %i.avd = load i64, ptr %i.aej, align 8, !tbaa !62
  %i.ave = add i64 %i.avd, 1
  call void @_ZdlPvm(ptr noundef %i.avb, i64 noundef %i.ave) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %exitcond2671.peel = icmp eq i32 %i.atu, 1
  br i1 %exitcond2671.peel, label %.loopexit2673, label %.peel.next

.loopexit2673:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.avf = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.avg = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.avh = ptrtoint ptr %i.avf to i64
  %i.avi = ptrtoint ptr %i.avg to i64
  %i.avj = sub i64 %i.avh, %i.avi
  %i.avk = icmp ult i64 %i.avj, 4
  br i1 %i.avk, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %.loopexit2673
  %i.avl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.290, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit896

bb.gq:                                            ; preds = %.loopexit2673
  store i32 171670816, ptr %i.avg, align 1
  %i.avm = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 4
  store ptr %i.avn, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit896

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv2668 = phi i64 [ %indvars.iv.next2669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.avo = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.avp = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.avq = ptrtoint ptr %i.avo to i64
  %i.avr = ptrtoint ptr %i.avp to i64
  %i.avs = sub i64 %i.avq, %i.avr
  %i.avt = icmp ult i64 %i.avs, 2
  br i1 %i.avt, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %.peel.next
  %i.avu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.74, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900

bb.gs:                                            ; preds = %.peel.next
  store i16 8236, ptr %i.avp, align 1
  %i.avv = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 2
  store ptr %i.avw, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900

_ZN4llvm11raw_ostreamlsEPKc.exit900:              ; preds = %bb.gr, %bb.gs
  %.0.i.i899 = phi ptr [ %i.avu, %bb.gr ], [ %1, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %i.ats, i64 %indvars.iv2668
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !265
  call void @_ZN4llvm16getQualifiedNameB5cxx11EPKNS_6RecordE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef %i.avy) #22
  %i.avz = load ptr, ptr %35, align 8, !tbaa !63
  %i.awa = load i64, ptr %i.aei, align 8, !tbaa !61
  %i.awb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i899, ptr noundef %i.avz, i64 noundef %i.awa) #22 ; 0 uses
  %i.awc = load ptr, ptr %35, align 8, !tbaa !63  ; 2 uses
  %i.awd = icmp eq ptr %i.awc, %i.aej
  br i1 %i.awd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900
  %i.awe = load i64, ptr %i.aej, align 8, !tbaa !62
  %i.awf = add i64 %i.awe, 1
  call void @_ZdlPvm(ptr noundef %i.awc, i64 noundef %i.awf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %indvars.iv.next2669 = add nuw nsw i64 %indvars.iv2668, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2669 to i32
  %exitcond2671 = icmp eq i32 %i.atu, %lftr.wideiv
  br i1 %exitcond2671, label %.loopexit2673, label %.peel.next, !llvm.loop !1205

_ZN4llvm11raw_ostreamlsEPKc.exit896:              ; preds = %bb.gq, %bb.gp, %.lr.ph2453
  %indvars.iv.next2675 = add nuw nsw i64 %indvars.iv2674, 1 ; 2 uses
  %lftr.wideiv2677 = trunc i64 %indvars.iv.next2675 to i32
  %exitcond2678 = icmp eq i32 %lftr.wideiv2677, %i.aso
  br i1 %exitcond2678, label %._crit_edge2454, label %.lr.ph2453, !llvm.loop !1206

._crit_edge2458:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit914, %_ZN4llvm11raw_ostreamlsEPKc.exit885
  %i.awg = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.awh = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.awi = ptrtoint ptr %i.awg to i64
  %i.awj = ptrtoint ptr %i.awh to i64
  %i.awk = sub i64 %i.awi, %i.awj
  %i.awl = icmp ult i64 %i.awk, 33
  br i1 %i.awl, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %._crit_edge2458
  %i.awm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.295, i64 noundef 33) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit903

bb.gu:                                            ; preds = %._crit_edge2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.awh, ptr noundef nonnull align 1 dereferenceable(33) @.str.295, i64 33, i1 false)
  %i.awn = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 33
  store ptr %i.awo, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit903

_ZN4llvm11raw_ostreamlsEPKc.exit903:              ; preds = %bb.gt, %bb.gu
  %.0.i.i902 = phi ptr [ %i.awm, %bb.gt ], [ %1, %bb.gu ]
  %i.awp = load ptr, ptr %i.apk, align 8, !tbaa !63
  %i.awq = load i64, ptr %i.apm, align 8, !tbaa !61
  %i.awr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i902, ptr noundef %i.awp, i64 noundef %i.awq) #22 ; 4 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 24
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !182
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awr, i64 32 ; 3 uses
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !183 ; 2 uses
  %i.aww = ptrtoint ptr %i.awt to i64
  %i.awx = ptrtoint ptr %i.awv to i64
  %i.awy = sub i64 %i.aww, %i.awx
  %i.awz = icmp ult i64 %i.awy, 43
  br i1 %i.awz, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit903
  %i.axa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.awr, ptr noundef nonnull @.str.296, i64 noundef 43) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit906

bb.gw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.awv, ptr noundef nonnull align 1 dereferenceable(43) @.str.296, i64 43, i1 false)
  %i.axb = load ptr, ptr %i.awu, align 8, !tbaa !183
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 43
  store ptr %i.axc, ptr %i.awu, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit906

_ZN4llvm11raw_ostreamlsEPKc.exit906:              ; preds = %bb.gv, %bb.gw
  %.0.i.i905 = phi ptr [ %i.axa, %bb.gv ], [ %i.awr, %bb.gw ]
  %i.axd = load ptr, ptr %i.ash, align 8, !tbaa !1422
  %i.axe = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.axf = ptrtoint ptr %i.axd to i64
  %i.axg = ptrtoint ptr %i.axe to i64
  %i.axh = sub i64 %i.axf, %i.axg
  %i.axi = sdiv exact i64 %i.axh, 144
  %i.axj = and i64 %i.axi, 4294967295
  %i.axk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i905, i64 noundef %i.axj) #22 ; 3 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 24
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !182
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axk, i64 32 ; 3 uses
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !183 ; 2 uses
  %i.axp = ptrtoint ptr %i.axm to i64
  %i.axq = ptrtoint ptr %i.axo to i64
  %i.axr = sub i64 %i.axp, %i.axq
  %i.axs = icmp ult i64 %i.axr, 29
  br i1 %i.axs, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit906
  %i.axt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.axk, ptr noundef nonnull @.str.297, i64 noundef 29) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit909

bb.gy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.axo, ptr noundef nonnull align 1 dereferenceable(29) @.str.297, i64 29, i1 false)
  %i.axu = load ptr, ptr %i.axn, align 8, !tbaa !183
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 29
  store ptr %i.axv, ptr %i.axn, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit909

.lr.ph2457:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit885, %_ZN4llvm11raw_ostreamlsEPKc.exit914
  %indvars.iv2679 = phi i64 [ %indvars.iv.next2680, %_ZN4llvm11raw_ostreamlsEPKc.exit914 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit885 ] ; 3 uses
  %i.axw = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.axx = getelementptr inbounds nuw [144 x i8], ptr %i.axw, i64 %indvars.iv2679
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 8
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !307
  %i.aya = icmp eq i32 %i.axz, 0
  %i.ayb = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.ayc = load ptr, ptr %i.q, align 8, !tbaa !183 ; 3 uses
  %i.ayd = ptrtoint ptr %i.ayb to i64
  %i.aye = ptrtoint ptr %i.ayc to i64
  %i.ayf = sub i64 %i.ayd, %i.aye                 ; 2 uses
  br i1 %i.aya, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %.lr.ph2457
  %i.ayg = icmp ult i64 %i.ayf, 27
  br i1 %i.ayg, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ayh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.293, i64 noundef 27) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit914

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ayc, ptr noundef nonnull align 1 dereferenceable(27) @.str.293, i64 27, i1 false)
  %i.ayi = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 27
  store ptr %i.ayj, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit914

bb.hc:                                            ; preds = %.lr.ph2457
  %i.ayk = icmp ult i64 %i.ayf, 24
  br i1 %i.ayk, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.ayl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.294, i64 noundef 24) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit917

bb.he:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ayc, ptr noundef nonnull align 1 dereferenceable(24) @.str.294, i64 24, i1 false)
  %i.aym = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 24
  store ptr %i.ayn, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit917

_ZN4llvm11raw_ostreamlsEPKc.exit917:              ; preds = %bb.hd, %bb.he
  %.0.i.i916 = phi ptr [ %i.ayl, %bb.hd ], [ %1, %bb.he ]
  %i.ayo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i916, i64 noundef %indvars.iv2679) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit914

_ZN4llvm11raw_ostreamlsEPKc.exit914:              ; preds = %bb.hb, %bb.ha, %_ZN4llvm11raw_ostreamlsEPKc.exit917
  %indvars.iv.next2680 = add nuw nsw i64 %indvars.iv2679, 1 ; 2 uses
  %lftr.wideiv2682 = trunc i64 %indvars.iv.next2680 to i32
  %exitcond2683 = icmp eq i32 %lftr.wideiv2682, %i.atp
  br i1 %exitcond2683, label %._crit_edge2458, label %.lr.ph2457, !llvm.loop !1207

_ZN4llvm11raw_ostreamlsEPKc.exit909:              ; preds = %bb.gy, %bb.gx, %bb.fn
  %.sroa.02194.0 = load ptr, ptr %.sroa.02194.02461, align 8, !tbaa !190 ; 2 uses
  %.not2305 = icmp eq ptr %.sroa.02194.0, %i.bo
  br i1 %.not2305, label %.loopexit2348, label %bb.fn

.loopexit2348:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit909, %_ZN4llvm11raw_ostreamlsEPKc.exit750, %_ZN4llvm11raw_ostreamlsEPKc.exit724
  %i.ayp = load ptr, ptr %i.bm, align 8, !tbaa !131, !nonnull !48, !align !122 ; 7 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 296 ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 312 ; 8 uses
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !135, !noalias !1423 ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayp, i64 328 ; 8 uses
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !185, !noalias !1423 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayp, i64 336 ; 8 uses
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !184, !noalias !1423 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayp, i64 344 ; 8 uses
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !135, !noalias !1424 ; 3 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayp, i64 352 ; 4 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayp, i64 368 ; 4 uses
  %.not23082463 = icmp eq ptr %i.ays, %i.ayy
  br i1 %.not23082463, label %._crit_edge2470, label %.lr.ph2469

._crit_edge2470.loopexit:                         ; preds = %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit
  %i.azb = trunc i64 %.sroa.speculated to i32
  br label %._crit_edge2470

._crit_edge2470:                                  ; preds = %._crit_edge2470.loopexit, %.loopexit2348
  %.0538.lcssa = phi i32 [ 1, %.loopexit2348 ], [ %i.azb, %._crit_edge2470.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.azc = load ptr, ptr %i.aza, align 8, !tbaa !184 ; 2 uses
  %i.azd = ptrtoint ptr %i.azc to i64
  %i.aze = ptrtoint ptr %i.ayw to i64
  %i.azf = sub i64 %i.azd, %i.aze
  %i.azg = lshr exact i64 %i.azf, 3
  %i.azh = icmp ne ptr %i.azc, null
  %.neg.i.i = sext i1 %i.azh to i64
  %i.azi = load ptr, ptr %i.ayz, align 8, !tbaa !186
  %i.azj = ptrtoint ptr %i.ayy to i64
  %i.azk = ptrtoint ptr %i.azi to i64
  %i.azl = sub i64 %i.azj, %i.azk
  %i.azm = sdiv exact i64 %i.azl, 624
  %i.azn = ptrtoint ptr %i.ayu to i64
  %i.azo = ptrtoint ptr %i.ays to i64
  %i.azp = sub i64 %i.azn, %i.azo
  %i.azq = sdiv exact i64 %i.azp, 624
  %i.azr = add nsw i64 %i.azq, %.neg.i.i
  %i.azs = add nsw i64 %i.azr, %i.azg
  %i.azt = add nsw i64 %i.azs, %i.azm
  %i.azu = trunc i64 %i.azt to i32                ; 2 uses
  %i.azv = add i32 %i.azu, 1
  %i.azw = add i32 %i.azu, 64                     ; 2 uses
  %i.azx = lshr i32 %i.azw, 6                     ; 3 uses
  %i.azy = zext nneg i32 %i.azx to i64            ; 3 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  store ptr %i.azz, ptr %37, align 8, !tbaa !50
  %i.baa = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %37, i64 12
  store i32 6, ptr %i.bab, align 4, !tbaa !343
  %i.bac = icmp ugt i32 %i.azw, 447
end_hunk_0
