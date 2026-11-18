Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/backup_engine?download=true
inline.NumInlined: 7838
inline.NumDeleted: 2946
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_116BackupEngineImpl10BackupMeta12LoadFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS8_mSt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_mEEEPNS_11RateLimiterEPNS_6LoggerEPSt13unordered_setIS8_SD_SF_SaIS8_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858, %bb.jm
  %.pn267.pn.pn = phi { ptr, i32 } [ %i.aqz, %bb.jm ], [ %.pn267.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858 ], [ %.pn267.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ] ; 2 uses
  %i.arp = load ptr, ptr %73, align 8, !tbaa !90  ; 2 uses
  %i.arq = icmp eq ptr %i.arp, %i.ov
  br i1 %i.arq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860
  %i.arr = load i64, ptr %i.ov, align 8, !tbaa !91
  %i.ars = add i64 %i.arr, 1
  call void @_ZdlPvm(ptr noundef %i.arp, i64 noundef %i.ars) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861, %bb.jl
  %.pn267.pn.pn.pn = phi { ptr, i32 } [ %i.aqy, %bb.jl ], [ %.pn267.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861 ], [ %.pn267.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ] ; 2 uses
  %i.art = load ptr, ptr %76, align 8, !tbaa !90  ; 2 uses
  %i.aru = icmp eq ptr %i.art, %i.ow
  br i1 %i.aru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863
  %i.arv = load i64, ptr %i.ow, align 8, !tbaa !91
  %i.arw = add i64 %i.arv, 1
  call void @_ZdlPvm(ptr noundef %i.art, i64 noundef %i.arw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864, %bb.jk
  %.pn267.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aqx, %bb.jk ], [ %.pn267.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864 ], [ %.pn267.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #36
  %i.arx = load ptr, ptr %74, align 8, !tbaa !90  ; 2 uses
  %i.ary = icmp eq ptr %i.arx, %i.ox
  br i1 %i.ary, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866
  %i.arz = load i64, ptr %i.ox, align 8, !tbaa !91
  %i.asa = add i64 %i.arz, 1
  call void @_ZdlPvm(ptr noundef %i.arx, i64 noundef %i.asa) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867, %bb.jj
  %.pn267.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aqw, %bb.jj ], [ %.pn267.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867 ], [ %.pn267.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866 ] ; 2 uses
  %i.asb = load ptr, ptr %75, align 8, !tbaa !90  ; 2 uses
  %i.asc = icmp eq ptr %i.asb, %i.oy
  br i1 %i.asc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i870

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i870: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869
  %i.asd = load i64, ptr %i.oy, align 8, !tbaa !91
  %i.ase = add i64 %i.asd, 1
  call void @_ZdlPvm(ptr noundef %i.asb, i64 noundef %i.ase) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i870, %bb.ji
  %.pn267.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aqv, %bb.ji ], [ %.pn267.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i870 ], [ %.pn267.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #36
  br label %.body874

bb.jq:                                            ; preds = %bb.iz
  %i.asf = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #37
          to label %.noexc873 unwind label %bb.jx ; 8 uses

.noexc873:                                        ; preds = %bb.jq
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 8
  store i32 1, ptr %i.asg, align 8, !tbaa !220, !noalias !2017
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asf, i64 12
  store i32 1, ptr %i.ash, align 4, !tbaa !221, !noalias !2017
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.asf, align 8, !tbaa !133, !noalias !2017
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asf, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !2017
  store ptr %i.oj, ptr %11, align 8, !tbaa !86, !noalias !2017
  store i64 0, ptr %i.ok, align 8, !tbaa !92, !noalias !2017
  store i8 0, ptr %i.oj, align 8, !tbaa !91, !noalias !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !2017
  store ptr %i.ol, ptr %12, align 8, !tbaa !86, !noalias !2017
  store i64 0, ptr %i.om, align 8, !tbaa !92, !noalias !2017
  store i8 0, ptr %i.ol, align 8, !tbaa !91, !noalias !2017
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSA_SA_SA_NS_11TemperatureE(ptr noundef nonnull align 8 dereferenceable(145) %i.asi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pk, i64 noundef %i.apm, ptr noundef nonnull readonly align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef zeroext %.0.lcssa2188)
          to label %bb.jr unwind label %bb.js, !noalias !2017

bb.jr:                                            ; preds = %.noexc873
  %i.asj = load ptr, ptr %12, align 8, !tbaa !90, !noalias !2017 ; 2 uses
  %i.ask = icmp eq ptr %i.asj, %i.ol
  br i1 %i.ask, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jr
  %i.asl = load i64, ptr %i.ol, align 8, !tbaa !91, !noalias !2017
  %i.asm = add i64 %i.asl, 1
  call void @_ZdlPvm(ptr noundef %i.asj, i64 noundef %i.asm) #38, !noalias !2017
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !2017
  %i.asn = load ptr, ptr %11, align 8, !tbaa !90, !noalias !2017 ; 2 uses
  %i.aso = icmp eq ptr %i.asn, %i.oj
  br i1 %i.aso, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.asp = load i64, ptr %i.oj, align 8, !tbaa !91, !noalias !2017
  %i.asq = add i64 %i.asp, 1
  call void @_ZdlPvm(ptr noundef %i.asn, i64 noundef %i.asq) #38, !noalias !2017
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23.i.i.i.i.i.i

bb.js:                                            ; preds = %.noexc873
  %i.asr = landingpad { ptr, i32 }
          cleanup
  %i.ass = load ptr, ptr %12, align 8, !tbaa !90, !noalias !2017 ; 2 uses
  %i.ast = icmp eq ptr %i.ass, %i.ol
  br i1 %i.ast, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i.i.i.i: ; preds = %bb.js
  %i.asu = load i64, ptr %i.ol, align 8, !tbaa !91, !noalias !2017
  %i.asv = add i64 %i.asu, 1
  call void @_ZdlPvm(ptr noundef %i.ass, i64 noundef %i.asv) #38, !noalias !2017
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i.i.i.i: ; preds = %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !2017
  %i.asw = load ptr, ptr %11, align 8, !tbaa !90, !noalias !2017 ; 2 uses
  %i.asx = icmp eq ptr %i.asw, %i.oj
  br i1 %i.asx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i.i.i.i
  %i.asy = load i64, ptr %i.oj, align 8, !tbaa !91, !noalias !2017
  %i.asz = add i64 %i.asy, 1
  call void @_ZdlPvm(ptr noundef %i.asw, i64 noundef %i.asz) #38, !noalias !2017
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !2017
  call void @_ZdlPvm(ptr noundef nonnull %i.asf, i64 noundef 168) #38, !noalias !2017
  br label %.body874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !2017
  %i.ata = load ptr, ptr %i.on, align 8, !tbaa !296 ; 7 uses
  %i.atb = load ptr, ptr %i.oo, align 8, !tbaa !297
  %.not.i876 = icmp eq ptr %i.ata, %i.atb
  br i1 %.not.i876, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23.i.i.i.i.i.i
  store ptr %i.asi, ptr %i.ata, align 8, !tbaa !331
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  store ptr %i.asf, ptr %i.atc, align 8, !tbaa !217
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  store ptr %i.atd, ptr %i.on, align 8, !tbaa !296
  br label %_ZNSt12__shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ju:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23.i.i.i.i.i.i
  %.val.i.i = load ptr, ptr %44, align 8, !tbaa !295 ; 13 uses
  %i.ate = ptrtoint ptr %i.ata to i64             ; 2 uses
  %i.atf = ptrtoint ptr %.val.i.i to i64          ; 2 uses
  %i.atg = sub i64 %i.ate, %i.atf                 ; 4 uses
  %i.ath = icmp eq i64 %i.atg, 9223372036854775792
  br i1 %i.ath, label %bb.jv, label %_ZNKSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.jv:                                            ; preds = %bb.ju
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #35
          to label %.noexc878 unwind label %.loopexit.split-lp1213.loopexit.split-lp

.noexc878:                                        ; preds = %bb.jv
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ju
  %i.ati = ashr exact i64 %i.atg, 4               ; 3 uses
  %i.atj = icmp eq ptr %i.ata, %.val.i.i          ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.atj, i64 1, i64 %i.ati
  %i.atk = add nsw i64 %.sroa.speculated.i.i.i, %i.ati ; 2 uses
  %i.atl = icmp ult i64 %i.atk, %i.ati
  %i.atm = call i64 @llvm.umin.i64(i64 %i.atk, i64 576460752303423487)
  %i.atn = select i1 %i.atl, i64 576460752303423487, i64 %i.atm ; 3 uses
  %.not.i.i.i877 = icmp ne i64 %i.atn, 0
  call void @llvm.assume(i1 %.not.i.i.i877)
  %i.ato = shl nuw nsw i64 %i.atn, 4
  %i.atp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ato) #37
          to label %.noexc879 unwind label %.loopexit.split-lp1213.loopexit.split-lp ; 13 uses

.noexc879:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 %i.atg ; 2 uses
  store ptr %i.asi, ptr %i.atq, align 8, !tbaa !331
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  store ptr %i.asf, ptr %i.atr, align 8, !tbaa !217
  br i1 %i.atj, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc879
  %i.ats = add i64 %i.ate, -16
  %i.att = sub i64 %i.ats, %i.atf                 ; 3 uses
  %i.atu = lshr i64 %i.att, 4
  %i.atv = add nuw nsw i64 %i.atu, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.att, 112
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader2732, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.atw = and i64 %i.att, -16                    ; 2 uses
  %i.atx = or disjoint i64 %i.atw, 8              ; 2 uses
  %i.aty = getelementptr i8, ptr %i.atp, i64 %i.atx
  %i.atz = getelementptr i8, ptr %.val.i.i, i64 %i.atx
  %91 = getelementptr i8, ptr %.val.i.i, i64 8
  %92 = add i64 %i.atw, 16                        ; 2 uses
  %93 = getelementptr i8, ptr %.val.i.i, i64 %92
  %i.aua = getelementptr i8, ptr %i.atp, i64 8
  %94 = getelementptr i8, ptr %i.atp, i64 %92
  %bound0 = icmp ult ptr %i.atp, %i.atz
  %bound1 = icmp ult ptr %.val.i.i, %i.aty
  %found.conflict = and i1 %bound0, %bound1
  %bound02684 = icmp ult ptr %91, %94
  %bound12685 = icmp ult ptr %i.aua, %93
  %found.conflict2686 = and i1 %bound02684, %bound12685
  %conflict.rdx = or i1 %found.conflict, %found.conflict2686
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader2732, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.atv, 2305843009213693948    ; 3 uses
  %i.aub = shl i64 %n.vec, 4                      ; 2 uses
  %i.auc = getelementptr i8, ptr %i.atp, i64 %i.aub ; 2 uses
  %i.aud = getelementptr i8, ptr %.val.i.i, i64 %i.aub
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aue = shl i64 %index, 4                      ; 3 uses
  %i.auf = or disjoint i64 %i.aue, 32             ; 2 uses
  %next.gep = getelementptr i8, ptr %i.atp, i64 %i.aue
  %next.gep2687 = getelementptr i8, ptr %i.atp, i64 %i.auf
  %next.gep2688 = getelementptr i8, ptr %.val.i.i, i64 %i.aue ; 2 uses
  %next.gep2689 = getelementptr i8, ptr %.val.i.i, i64 %i.auf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  %wide.vec = load <4 x ptr>, ptr %next.gep2688, align 8, !tbaa !280, !alias.scope !2019
  %wide.vec2691 = load <4 x ptr>, ptr %next.gep2689, align 8, !tbaa !280, !alias.scope !2019
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !280, !alias.scope !2018
  store <4 x ptr> %wide.vec2691, ptr %next.gep2687, align 8, !tbaa !280, !alias.scope !2018
  store <4 x ptr> splat (ptr null), ptr %next.gep2688, align 8, !tbaa !280, !alias.scope !2019
  store <4 x ptr> splat (ptr null), ptr %next.gep2689, align 8, !tbaa !280, !alias.scope !2019
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aug = icmp eq i64 %index.next, %n.vec
  br i1 %i.aug, label %middle.block, label %vector.body, !llvm.loop !1946

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.atv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i, label %.lr.ph.i.i.i.i.i.preheader2732

.lr.ph.i.i.i.i.i.preheader2732:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.atp, %vector.memcheck ], [ %i.atp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.auc, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.val.i.i, %vector.memcheck ], [ %.val.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aud, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader2732, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.auk, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader2732 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.auj, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader2732 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  %i.auh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.aui = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !280, !alias.scope !2019
  store ptr null, ptr %i.auh, align 8, !tbaa !217, !alias.scope !2019
  store <2 x ptr> %i.aui, ptr %.03.i.i.i.i.i, align 8, !tbaa !280, !alias.scope !2018
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !331, !alias.scope !2019
  %i.auj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.auj, %i.ata
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1947

_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc879
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.atp, %.noexc879 ], [ %i.auc, %middle.block ], [ %i.auk, %.lr.ph.i.i.i.i.i ]
  %i.aul = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i27.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.atg) #38
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.jw, %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i
  store ptr %i.atp, ptr %44, align 8, !tbaa !295
  store ptr %i.aul, ptr %i.on, align 8, !tbaa !296
  %i.aum = getelementptr inbounds nuw [16 x i8], ptr %i.atp, i64 %i.atn
  store ptr %i.aum, ptr %i.oo, align 8, !tbaa !297
  br label %_ZNSt12__shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.jt, %_ZNSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.aun = load ptr, ptr %67, align 8, !tbaa !90  ; 2 uses
  %i.auo = icmp eq ptr %i.aun, %i.oh
  br i1 %i.auo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882: ; preds = %_ZNSt12__shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aup = load i64, ptr %i.oh, align 8, !tbaa !91
  %i.auq = add i64 %i.aup, 1
  call void @_ZdlPvm(ptr noundef %i.aun, i64 noundef %i.auq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884: ; preds = %_ZNSt12__shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #36
  br label %_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt0

bb.jx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %bb.jq
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %.body874

.loopexit.split-lp1213.loopexit.split-lp:         ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.jv
  %lpad.loopexit.split-lp2743 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.asf) #36
  br label %.body874

.body874:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872, %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i.i.i.i, %.loopexit.split-lp1213.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827
  %.pn276.pn = phi { ptr, i32 } [ %.pn276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827 ], [ %i.asr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i.i.i.i ], [ %.pn267.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872 ], [ %lpad.loopexit.split-lp2743, %.loopexit.split-lp1213.loopexit.split-lp ], [ %i.aur, %bb.jx ] ; 2 uses
  %i.aus = load ptr, ptr %67, align 8, !tbaa !90  ; 2 uses
  %i.aut = icmp eq ptr %i.aus, %i.oh
  br i1 %i.aut, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885: ; preds = %.body874
  %i.auu = load i64, ptr %i.oh, align 8, !tbaa !91
  %i.auv = add i64 %i.auu, 1
  call void @_ZdlPvm(ptr noundef %i.aus, i64 noundef %i.auv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887: ; preds = %.body874, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824
  %.pn276.pn.pn = phi { ptr, i32 } [ %.pn262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824 ], [ %.pn276.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885 ], [ %.pn276.pn, %.body874 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #36
  br label %bb.ke

_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt0: ; preds = %bb.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884
  %i.auw = load ptr, ptr %55, align 8, !tbaa !90  ; 2 uses
  %i.aux = icmp eq ptr %i.auw, %i.nh
  br i1 %i.aux, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888.jt0

_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743, %_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821
  %i.auy = load ptr, ptr %55, align 8, !tbaa !90  ; 2 uses
  %i.auz = icmp eq ptr %i.auy, %i.nh
  br i1 %i.auz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888.jt0: ; preds = %_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt0
  %i.ava = load i64, ptr %i.nh, align 8, !tbaa !91
  %i.avb = add i64 %i.ava, 1
  call void @_ZdlPvm(ptr noundef %i.auw, i64 noundef %i.avb) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888.jt1: ; preds = %_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt1
  %i.avc = load i64, ptr %i.nh, align 8, !tbaa !91
  %i.avd = add i64 %i.avc, 1
  call void @_ZdlPvm(ptr noundef %i.auy, i64 noundef %i.avd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890.jt1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890.jt1: ; preds = %_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %bb.jz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0: ; preds = %_ZNSt8optionalImEaSIyEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.thread1131.jt0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  %i.ave = load ptr, ptr %45, align 8, !tbaa !225 ; 5 uses
  %i.avf = load ptr, ptr %i.mk, align 8, !tbaa !226 ; 2 uses
  %.not4.i.i.i.jt0 = icmp eq ptr %i.ave, %i.avf
  br i1 %.not4.i.i.i.jt0, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.jt0, label %.lr.ph.i.i.i.preheader

bb.jy:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit483
  %i.avg = load ptr, ptr %45, align 8, !tbaa !225 ; 5 uses
  %i.avh = load ptr, ptr %i.mk, align 8, !tbaa !226 ; 2 uses
  %.not4.i.i.i.jt5 = icmp eq ptr %i.avg, %i.avh
  br i1 %.not4.i.i.i.jt5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.jt5, label %.lr.ph.i.i.i.preheader

bb.jz:                                            ; preds = %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890.jt1, %bb.cv
  %i.avi = load ptr, ptr %45, align 8, !tbaa !225 ; 5 uses
  %i.avj = load ptr, ptr %i.mk, align 8, !tbaa !226 ; 2 uses
  %.not4.i.i.i.jt1 = icmp eq ptr %i.avi, %i.avj
  br i1 %.not4.i.i.i.jt1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.jt1, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0, %bb.jy, %bb.jz
  %i.avk = phi ptr [ %i.avj, %bb.jz ], [ %i.avh, %bb.jy ], [ %i.avf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0 ]
  %i.avl = phi ptr [ %i.avi, %bb.jz ], [ %i.avg, %bb.jy ], [ %i.ave, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0 ]
  %.121892180 = phi i32 [ 1, %bb.jz ], [ 5, %bb.jy ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0 ]
  %.12042179 = phi i1 [ %.0203.ph, %bb.jz ], [ true, %bb.jy ], [ %.0203.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0 ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.avr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.avl, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.avm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.avo = icmp eq ptr %i.avm, %i.avn
  br i1 %i.avo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.avp = load i64, ptr %i.avn, align 8, !tbaa !91
  %i.avq = add i64 %i.avp, 1
  call void @_ZdlPvm(ptr noundef %i.avm, i64 noundef %i.avq) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.avr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i891 = icmp eq ptr %i.avr, %i.avk
  br i1 %.not.i.i.i891, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %45, align 8, !tbaa !225 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ka

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.jt0: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i889.jt0
  %.not.i.i1.i.jt0 = icmp eq ptr %i.ave, null
  br i1 %.not.i.i1.i.jt0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.jt0, label %bb.kb

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.jt5: ; preds = %bb.jy
  %.not.i.i1.i.jt5 = icmp eq ptr %i.avg, null
  br i1 %.not.i.i1.i.jt5, label %.thread2189, label %bb.kc

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.jt1: ; preds = %bb.jz
  %.not.i.i1.i.jt1 = icmp eq ptr %i.avi, null
end_hunk_0
