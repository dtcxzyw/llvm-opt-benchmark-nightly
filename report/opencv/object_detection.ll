inline.NumInlined: 2870
inline.NumDeleted: 1012
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@main:._crit_edge.i.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %71, i64 96 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.aho = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.ahp = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.ahr = getelementptr inbounds nuw i8, ptr %74, i64 104 ; 3 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %74, i64 112
  %i.aht = getelementptr inbounds nuw i8, ptr %74, i64 96 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 8 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 6 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 5 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 6 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.aia = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 6 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 5 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.aid = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.aif = getelementptr inbounds nuw i8, ptr %90, i64 20
  %i.aig = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.aih = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.aii = getelementptr inbounds nuw i8, ptr %76, i64 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.et
  %i.aij = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 100)
          to label %bb.eu unwind label %.loopexit

bb.eu:                                            ; preds = %.backedge
  %i.aik = icmp slt i32 %i.aij, 0
  br i1 %i.aik, label %bb.ev, label %bb.gy

bb.ev:                                            ; preds = %bb.eu
  %i.ail = load ptr, ptr %i.agz, align 8, !tbaa !316
  %i.aim = load ptr, ptr %i.aha, align 8, !tbaa !316
  %i.ain = icmp eq ptr %i.ail, %i.aim
  br i1 %i.ain, label %.backedge.backedge, label %bb.fb

bb.ew:                                            ; preds = %bb.ek
  %i.aio = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.ex:                                            ; preds = %bb.el
  %i.aip = landingpad { ptr, i32 }
          cleanup
  br label %.body948

bb.ey:                                            ; preds = %bb.eo
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.ez:                                            ; preds = %bb.ep
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.fa:                                            ; preds = %bb.eq
  %i.ais = landingpad { ptr, i32 }
          cleanup
  br label %.body959

.loopexit:                                        ; preds = %.backedge
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

.loopexit.split-lp:                               ; preds = %bb.gy, %bb.gz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.fb:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #26
  %i.ait = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ahb) #26, !noalias !317 ; 2 uses
  %.not.i.i.i961 = icmp eq i32 %i.ait, 0
  br i1 %.not.i.i.i961, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ait) #28
          to label %.noexc962 unwind label %bb.gh

.noexc962:                                        ; preds = %bb.fc
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.fb
  %i.aiu = load ptr, ptr %i.aha, align 8, !tbaa !316, !noalias !320
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %i.aiu)
          to label %bb.fe unwind label %bb.fd

bb.fd:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  %i.aiw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ahb) #26 ; 0 uses
  br label %.body963

bb.fe:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @_ZNSt5dequeISt6vectorIN2cv3MatESaIS2_EESaIS4_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(160) %74) #26
  %i.aix = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ahb) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #26
  invoke void @_ZN8QueueFPSIN2cv3MatEE3getEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %77, ptr noundef nonnull align 8 dereferenceable(160) %73)
          to label %bb.ff unwind label %bb.gi

bb.ff:                                            ; preds = %bb.fe
  %i.aiy = load ptr, ptr %68, align 8, !tbaa !323 ; 2 uses
  %i.aiz = load ptr, ptr %i.ahc, align 8, !tbaa !325
  %.not.i.i965 = icmp eq ptr %i.aiz, %i.aiy
  br i1 %.not.i.i965, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ff
  store ptr %i.aiy, ptr %i.ahc, align 8, !tbaa !325
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.ff, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.aja = load ptr, ptr %69, align 8, !tbaa !326 ; 2 uses
  %i.ajb = load ptr, ptr %i.ahd, align 8, !tbaa !329
  %.not.i.i966 = icmp eq ptr %i.ajb, %i.aja
  br i1 %.not.i.i966, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.aja, ptr %i.ahd, align 8, !tbaa !329
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.ajc = load ptr, ptr %70, align 8, !tbaa !330 ; 2 uses
  %i.ajd = load ptr, ptr %i.ahe, align 8, !tbaa !333
  %.not.i.i967 = icmp eq ptr %i.ajd, %i.ajc
  br i1 %.not.i.i967, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  store ptr %i.ajc, ptr %i.ahe, align 8, !tbaa !333
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  store ptr %i.ahf, ptr %78, align 8, !tbaa !15
  %i.aje = load ptr, ptr %26, align 8, !tbaa !17  ; 2 uses
  %i.ajf = load i64, ptr %i.jy, align 8, !tbaa !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ajf, ptr %i.b, align 8, !tbaa !21
  %i.ajg = icmp ugt i64 %i.ajf, 15
  br i1 %i.ajg, label %.noexc.i969, label %._crit_edge.i.i968

.noexc.i969:                                      ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  %i.ajh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc970 unwind label %bb.gj ; 2 uses

.noexc970:                                        ; preds = %.noexc.i969
  store ptr %i.ajh, ptr %78, align 8, !tbaa !17
  %i.aji = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.aji, ptr %i.ahf, align 8, !tbaa !16
  br label %._crit_edge.i.i968

._crit_edge.i.i968:                               ; preds = %.noexc970, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  %i.ajj = phi ptr [ %i.ajh, %.noexc970 ], [ %i.ahf, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit ] ; 2 uses
  switch i64 %i.ajf, label %bb.fh [
    i64 1, label %bb.fg
    i64 0, label %bb.fi
  ]

bb.fg:                                            ; preds = %._crit_edge.i.i968
  %i.ajk = load i8, ptr %i.aje, align 1, !tbaa !16
  store i8 %i.ajk, ptr %i.ajj, align 1, !tbaa !16
  br label %bb.fi

bb.fh:                                            ; preds = %._crit_edge.i.i968
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajj, ptr align 1 %i.aje, i64 %i.ajf, i1 false)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %._crit_edge.i.i968
  %i.ajl = load i64, ptr %i.b, align 8, !tbaa !21 ; 2 uses
  store i64 %i.ajl, ptr %i.ahg, align 8, !tbaa !9
  %i.ajm = load ptr, ptr %78, align 8, !tbaa !17
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajl
  store i8 0, ptr %i.ajn, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke fastcc void @_ZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %77, ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef align 8 %78)
          to label %bb.fj unwind label %bb.gk

bb.fj:                                            ; preds = %bb.fi
  %i.ajo = load ptr, ptr %78, align 8, !tbaa !17  ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.ahf
  br i1 %i.ajp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971: ; preds = %bb.fj
  %i.ajq = load i64, ptr %i.ahf, align 8, !tbaa !16
  %i.ajr = add i64 %i.ajq, 1
  call void @_ZdlPvm(ptr noundef %i.ajo, i64 noundef %i.ajr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971
  invoke fastcc void @_ZL8drawPredRSt6vectorIiSaIiEERS_IfSaIfEERS_IN2cv5Rect_IiEESaIS8_EERNS6_3MatERNS6_8FontFaceEiiii(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(208) %77, ptr noundef nonnull align 8 dereferenceable(16) %66)
          to label %bb.fk unwind label %bb.gj

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973
  %i.ajs = load i32, ptr %i.ahh, align 8, !tbaa !234
  %i.ajt = load i32, ptr %i.ahi, align 4, !tbaa !234
  %i.aju = call i32 @llvm.smax.i32(i32 %i.ajs, i32 %i.ajt) ; 2 uses
  %i.ajv = mul nsw i32 %i.aju, 5                  ; 2 uses
  %i.ajw = sdiv i32 %i.ajv, 256                   ; 7 uses
  %i.ajx = mul nsw i32 %i.aju, 25
  %i.ajy = sdiv i32 %i.ajx, 128                   ; 3 uses
  %i.ajz = load i32, ptr %i.agm, align 8, !tbaa !301
  %i.aka = icmp ugt i32 %i.ajz, 1
  br i1 %i.aka, label %bb.fl, label %bb.gt

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #26
  %i.akb = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %.noexc975 unwind label %bb.gl

.noexc975:                                        ; preds = %bb.fl
  %i.akc = load i64, ptr %i.ahj, align 8, !tbaa !334 ; 2 uses
  %i.akd = icmp eq i64 %i.akc, 0
  br i1 %i.akd, label %._ZN2cv9TickMeter4stopEv.exit_crit_edge.i, label %bb.fm

._ZN2cv9TickMeter4stopEv.exit_crit_edge.i:        ; preds = %.noexc975
  %.pre.i974 = load i64, ptr %i.ahl, align 8, !tbaa !335
  br label %_ZN2cv9TickMeter4stopEv.exit.i

bb.fm:                                            ; preds = %.noexc975
  %i.ake = load i64, ptr %i.afy, align 8, !tbaa !336
  %i.akf = add nsw i64 %i.ake, 1
  store i64 %i.akf, ptr %i.afy, align 8, !tbaa !336
  %i.akg = sub nsw i64 %i.akb, %i.akc             ; 2 uses
  store i64 %i.akg, ptr %i.ahk, align 8, !tbaa !337
  %i.akh = load i64, ptr %i.ahl, align 8, !tbaa !335
  %i.aki = add nsw i64 %i.akh, %i.akg             ; 2 uses
  store i64 %i.aki, ptr %i.ahl, align 8, !tbaa !335
  store i64 0, ptr %i.ahj, align 8, !tbaa !334
  br label %_ZN2cv9TickMeter4stopEv.exit.i

_ZN2cv9TickMeter4stopEv.exit.i:                   ; preds = %bb.fm, %._ZN2cv9TickMeter4stopEv.exit_crit_edge.i
  %i.akj = phi i64 [ %.pre.i974, %._ZN2cv9TickMeter4stopEv.exit_crit_edge.i ], [ %i.aki, %bb.fm ]
  %i.akk = load i32, ptr %i.afx, align 8, !tbaa !276
  %i.akl = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %.noexc976 unwind label %bb.gl

.noexc976:                                        ; preds = %_ZN2cv9TickMeter4stopEv.exit.i
  %i.akm = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.fn unwind label %bb.gl

bb.fn:                                            ; preds = %.noexc976
  %i.akn = uitofp i32 %i.akk to double
  %i.ako = sitofp i64 %i.akj to double
  %i.akp = fdiv double %i.ako, %i.akl
  %i.akq = fdiv double %i.akn, %i.akp
  store i64 %i.akm, ptr %i.ahj, align 8, !tbaa !334
  %i.akr = fptrunc double %i.akq to float
  %i.aks = fpext float %i.akr to double
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull @.str.91, double noundef %i.aks)
          to label %bb.fo unwind label %bb.gl

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #26
  store i64 0, ptr %i.ahn, align 8
  store i32 50397184, ptr %80, align 8, !tbaa !338
  store ptr %77, ptr %i.ahm, align 8, !tbaa !341
  %i.akt = mul nsw i32 %i.ajw, 10
  %i.aku = mul nsw i32 %i.ajw, 3                  ; 2 uses
  %i.akv = sdiv i32 %i.ajv, 1024
  %i.akw = add nsw i32 %i.aku, %i.akv
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #26
  store <2 x double> splat (double 2.550000e+02), ptr %81, align 16, !tbaa !229, !alias.scope !342
  store <2 x double> splat (double 2.550000e+02), ptr %i.aho, align 16, !tbaa !229, !alias.scope !342
  %.sroa.21171.0.insert.ext = zext i32 %i.akw to i64
  %.sroa.21171.0.insert.shift = shl nuw i64 %.sroa.21171.0.insert.ext, 32
  %.sroa.01170.0.insert.ext = zext i32 %i.akt to i64
  %.sroa.01170.0.insert.insert = or disjoint i64 %.sroa.21171.0.insert.shift, %.sroa.01170.0.insert.ext
  invoke void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %80, i64 0, i64 %.sroa.01170.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.fp unwind label %bb.gm

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #26
  store i64 0, ptr %i.ahq, align 8
  store i32 50397184, ptr %82, align 8, !tbaa !338
  store ptr %77, ptr %i.ahp, align 8, !tbaa !341
  %.sroa.21169.0.insert.ext = zext i32 %i.ajw to i64
  %.sroa.21169.0.insert.shift = shl nuw i64 %.sroa.21169.0.insert.ext, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %83, i8 0, i64 32, i1 false)
  %i.akx = invoke i64 @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEENS_7Scalar_IdEERNS_8FontFaceEiiNS_12PutTextFlagsENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(24) %82, ptr noundef nonnull align 8 dereferenceable(32) %79, i64 %.sroa.21169.0.insert.shift, ptr noundef nonnull align 8 dead_on_return %83, ptr noundef nonnull align 8 dereferenceable(16) %66, i32 noundef %i.ajw, i32 noundef %i.ajy, i32 noundef 0, i64 0)
          to label %bb.fq unwind label %bb.gn     ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #26
  %i.aky = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %.noexc982 unwind label %bb.go

.noexc982:                                        ; preds = %bb.fq
  %i.akz = load i64, ptr %i.ahr, align 8, !tbaa !334 ; 2 uses
  %i.ala = icmp eq i64 %i.akz, 0
  br i1 %i.ala, label %._ZN2cv9TickMeter4stopEv.exit_crit_edge.i979, label %bb.fr

._ZN2cv9TickMeter4stopEv.exit_crit_edge.i979:     ; preds = %.noexc982
  %.pre.i981 = load i64, ptr %i.aht, align 8, !tbaa !335
  br label %_ZN2cv9TickMeter4stopEv.exit.i978

bb.fr:                                            ; preds = %.noexc982
  %i.alb = load i64, ptr %i.agn, align 8, !tbaa !336
  %i.alc = add nsw i64 %i.alb, 1
  store i64 %i.alc, ptr %i.agn, align 8, !tbaa !336
  %i.ald = sub nsw i64 %i.aky, %i.akz             ; 2 uses
  store i64 %i.ald, ptr %i.ahs, align 8, !tbaa !337
  %i.ale = load i64, ptr %i.aht, align 8, !tbaa !335
  %i.alf = add nsw i64 %i.ale, %i.ald             ; 2 uses
  store i64 %i.alf, ptr %i.aht, align 8, !tbaa !335
  store i64 0, ptr %i.ahr, align 8, !tbaa !334
  br label %_ZN2cv9TickMeter4stopEv.exit.i978

_ZN2cv9TickMeter4stopEv.exit.i978:                ; preds = %bb.fr, %._ZN2cv9TickMeter4stopEv.exit_crit_edge.i979
  %i.alg = phi i64 [ %.pre.i981, %._ZN2cv9TickMeter4stopEv.exit_crit_edge.i979 ], [ %i.alf, %bb.fr ]
  %i.alh = load i32, ptr %i.agm, align 8, !tbaa !301
  %i.ali = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %.noexc983 unwind label %bb.go

.noexc983:                                        ; preds = %_ZN2cv9TickMeter4stopEv.exit.i978
  %i.alj = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.fs unwind label %bb.go

bb.fs:                                            ; preds = %.noexc983
  %i.alk = uitofp i32 %i.alh to double
  %i.all = sitofp i64 %i.alg to double
  %i.alm = fdiv double %i.all, %i.ali
  %i.aln = fdiv double %i.alk, %i.alm
  store i64 %i.alj, ptr %i.ahr, align 8, !tbaa !334
  %i.alo = fptrunc double %i.aln to float
  %i.alp = fpext float %i.alo to double
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %84, ptr noundef nonnull @.str.92, double noundef %i.alp)
          to label %bb.ft unwind label %bb.go

bb.ft:                                            ; preds = %bb.fs
  %i.alq = load ptr, ptr %79, align 8, !tbaa !17  ; 6 uses
  %i.alr = icmp eq ptr %i.alq, %i.ahu
  %i.als = load ptr, ptr %84, align 8, !tbaa !17  ; 5 uses
  %i.alt = icmp eq ptr %i.als, %i.ahv             ; 2 uses
  br i1 %i.alr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i990, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i985

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i990: ; preds = %bb.ft
  br i1 %i.alt, label %bb.fu, label %.thread.i991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i985: ; preds = %bb.ft
  br i1 %i.alt, label %bb.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i986

bb.fu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i985, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i990
  %i.alu = load i64, ptr %i.ahw, align 8, !tbaa !9 ; 3 uses
  %i.alv = icmp ult i64 %i.alu, 16
  call void @llvm.assume(i1 %i.alv)
  switch i64 %i.alu, label %bb.fw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i988
    i64 1, label %bb.fv
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.alw = load i8, ptr %i.als, align 1, !tbaa !16
  store i8 %i.alw, ptr %i.alq, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i988

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alq, ptr align 1 %i.als, i64 %i.alu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i988

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i988: ; preds = %bb.fw, %bb.fv, %bb.fu
  %i.alx = load i64, ptr %i.ahw, align 8, !tbaa !9 ; 2 uses
  store i64 %i.alx, ptr %i.ahx, align 8, !tbaa !9
  %i.aly = load ptr, ptr %79, align 8, !tbaa !17
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.alx
  store i8 0, ptr %i.alz, align 1, !tbaa !16
  %.pre.i989 = load ptr, ptr %84, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit992

.thread.i991:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i990
  store ptr %i.als, ptr %79, align 8, !tbaa !17
  %i.ama = load <2 x i64>, ptr %i.ahw, align 8, !tbaa !16
  store <2 x i64> %i.ama, ptr %i.ahx, align 8, !tbaa !16
  br label %bb.fy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i986: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i985
  %i.amb = load i64, ptr %i.ahu, align 8, !tbaa !16
  store ptr %i.als, ptr %79, align 8, !tbaa !17
  %i.amc = load <2 x i64>, ptr %i.ahw, align 8, !tbaa !16
  store <2 x i64> %i.amc, ptr %i.ahx, align 8, !tbaa !16
  %.not.i987 = icmp eq ptr %i.alq, null
  br i1 %.not.i987, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i986
  store ptr %i.alq, ptr %84, align 8, !tbaa !17
  store i64 %i.amb, ptr %i.ahv, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit992

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i986, %.thread.i991
  store ptr %i.ahv, ptr %84, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit992

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit992: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i988, %bb.fx, %bb.fy
  %i.amd = phi ptr [ %.pre.i989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i988 ], [ %i.alq, %bb.fx ], [ %i.ahv, %bb.fy ]
  store i64 0, ptr %i.ahw, align 8, !tbaa !9
  store i8 0, ptr %i.amd, align 1, !tbaa !16
  %i.ame = load ptr, ptr %84, align 8, !tbaa !17  ; 2 uses
  %i.amf = icmp eq ptr %i.ame, %i.ahv
  br i1 %i.amf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i994, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit992
  %i.amg = load i64, ptr %i.ahv, align 8, !tbaa !16
  %i.amh = add i64 %i.amg, 1
  call void @_ZdlPvm(ptr noundef %i.ame, i64 noundef %i.amh) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i994: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit992, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #26
  store i64 0, ptr %i.ahz, align 8
  store i32 50397184, ptr %85, align 8, !tbaa !338
  store ptr %77, ptr %i.ahy, align 8, !tbaa !341
  %i.ami = shl nsw i32 %i.ajw, 1
  %.sroa.21165.0.insert.ext = zext i32 %i.ami to i64
  %.sroa.21165.0.insert.shift = shl nuw i64 %.sroa.21165.0.insert.ext, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %86, i8 0, i64 32, i1 false)
  %i.amj = invoke i64 @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEENS_7Scalar_IdEERNS_8FontFaceEiiNS_12PutTextFlagsENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(32) %79, i64 %.sroa.21165.0.insert.shift, ptr noundef nonnull align 8 dead_on_return %86, ptr noundef nonnull align 8 dereferenceable(16) %66, i32 noundef %i.ajw, i32 noundef %i.ajy, i32 noundef 0, i64 0)
          to label %bb.fz unwind label %bb.gp     ; 0 uses

bb.fz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i994
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #26
  %i.amk = load i32, ptr %i.afx, align 8, !tbaa !276
  %i.aml = load i32, ptr %i.agm, align 8, !tbaa !301
  %i.amm = sub i32 %i.amk, %i.aml
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr noundef nonnull @.str.93, i32 noundef %i.amm)
          to label %bb.ga unwind label %bb.gq

bb.ga:                                            ; preds = %bb.fz
  %i.amn = load ptr, ptr %79, align 8, !tbaa !17  ; 6 uses
  %i.amo = icmp eq ptr %i.amn, %i.ahu
  %i.amp = load ptr, ptr %87, align 8, !tbaa !17  ; 5 uses
  %i.amq = icmp eq ptr %i.amp, %i.aia             ; 2 uses
  br i1 %i.amo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1001, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i996

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1001: ; preds = %bb.ga
  br i1 %i.amq, label %bb.gb, label %.thread.i1002

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i996: ; preds = %bb.ga
  br i1 %i.amq, label %bb.gb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i997

bb.gb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i996, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1001
  %i.amr = load i64, ptr %i.aib, align 8, !tbaa !9 ; 3 uses
  %i.ams = icmp ult i64 %i.amr, 16
  call void @llvm.assume(i1 %i.ams)
  switch i64 %i.amr, label %bb.gd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i999
    i64 1, label %bb.gc
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.amt = load i8, ptr %i.amp, align 1, !tbaa !16
  store i8 %i.amt, ptr %i.amn, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i999

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amn, ptr align 1 %i.amp, i64 %i.amr, i1 false)
end_hunk_0
begin_hunk_1_@main:._crit_edge.i.i
          to label %bb.ht unwind label %.loopexit1233 ; 0 uses

bb.ht:                                            ; preds = %bb.hs
  %i.apr = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %93)
          to label %bb.hu unwind label %.loopexit1233

bb.hu:                                            ; preds = %bb.ht
  br i1 %i.apr, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.aps = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %.loopexit1238 unwind label %.loopexit.split-lp1234 ; 0 uses

.loopexit1233:                                    ; preds = %bb.hq, %bb.hs, %bb.ht, %bb.hw
  %lpad.loopexit1235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

.loopexit.split-lp1234:                           ; preds = %bb.hv
  %lpad.loopexit.split-lp1236 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.hw:                                            ; preds = %bb.hu
  %i.apt = load i32, ptr @inpWidth, align 4, !tbaa !234
  %i.apu = load i32, ptr @inpHeight, align 4, !tbaa !234
  %.sroa.21157.0.insert.ext = zext i32 %i.apu to i64
  %.sroa.21157.0.insert.shift = shl nuw i64 %.sroa.21157.0.insert.ext, 32
  %.sroa.01156.0.insert.ext = zext i32 %i.apt to i64
  %.sroa.01156.0.insert.insert = or disjoint i64 %.sroa.21157.0.insert.shift, %.sroa.01156.0.insert.ext
  invoke fastcc void @_ZL10preprocessRKN2cv3MatERNS_3dnn14dnn5_v202606053NetENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %93, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 %.sroa.01156.0.insert.insert)
          to label %bb.hx unwind label %.loopexit1233

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %95, i8 0, i64 24, i1 false)
  %i.apv = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.hy unwind label %bb.in     ; 2 uses

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #26
  store i64 0, ptr %i.aov, align 8
  store i32 33882112, ptr %96, align 8, !tbaa !338
  store ptr %95, ptr %i.aou, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #26
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net28getUnconnectedOutLayersNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %97, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.hz unwind label %bb.io

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net7forwardERKNS_12_OutputArrayERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(24) %97)
          to label %bb.ia unwind label %bb.ip

bb.ia:                                            ; preds = %bb.hz
  %i.apw = load ptr, ptr %97, align 8, !tbaa !215 ; 3 uses
  %i.apx = load ptr, ptr %i.aow, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i1031 = icmp eq ptr %i.apw, %i.apx
  br i1 %.not4.i.i.i1031, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1032

.lr.ph.i.i.i1032:                                 ; preds = %bb.ia, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i1033 = phi ptr [ %i.aqd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.apw, %bb.ia ] ; 3 uses
  %i.apy = load ptr, ptr %.05.i.i.i1033, align 8, !tbaa !17 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.05.i.i.i1033, i64 16 ; 2 uses
  %i.aqa = icmp eq ptr %i.apy, %i.apz
  br i1 %i.aqa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1032
  %i.aqb = load i64, ptr %i.apz, align 8, !tbaa !16
  %i.aqc = add i64 %i.aqb, 1
  call void @_ZdlPvm(ptr noundef %i.apy, i64 noundef %i.aqc) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i1032, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aqd = getelementptr inbounds nuw i8, ptr %.05.i.i.i1033, i64 32 ; 2 uses
  %.not.i.i.i1034 = icmp eq ptr %i.aqd, %i.apx
  br i1 %.not.i.i.i1034, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1032, !llvm.loop !216

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i1035 = load ptr, ptr %97, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ia
  %i.aqe = phi ptr [ %.pr.i1035, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.apw, %bb.ia ] ; 3 uses
  %.not.i.i1.i1036 = icmp eq ptr %i.aqe, null
  br i1 %.not.i.i1.i1036, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aqf = load ptr, ptr %i.aox, align 8, !tbaa !214
  %i.aqg = ptrtoint ptr %i.aqf to i64
  %i.aqh = ptrtoint ptr %i.aqe to i64
  %i.aqi = sub i64 %i.aqg, %i.aqh
  call void @_ZdlPvm(ptr noundef nonnull %i.aqe, i64 noundef %i.aqi) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #26
  %i.aqj = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %.noexc1037 unwind label %bb.in

.noexc1037:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aqk = icmp eq i64 %i.apv, 0
  %i.aql = sub nsw i64 %i.aqj, %i.apv
  %spec.select1228 = select i1 %i.aqk, i64 0, i64 %i.aql
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net16printPerfProfileEv(ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.ic unwind label %bb.in

bb.ic:                                            ; preds = %.noexc1037
  %i.aqm = load ptr, ptr %68, align 8, !tbaa !323 ; 2 uses
  %i.aqn = load ptr, ptr %i.aoy, align 8, !tbaa !325
  %.not.i.i1038 = icmp eq ptr %i.aqn, %i.aqm
  br i1 %.not.i.i1038, label %_ZNSt6vectorIiSaIiEE5clearEv.exit1040, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i1039

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i1039:    ; preds = %bb.ic
  store ptr %i.aqm, ptr %i.aoy, align 8, !tbaa !325
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit1040

_ZNSt6vectorIiSaIiEE5clearEv.exit1040:            ; preds = %bb.ic, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i1039
  %i.aqo = load ptr, ptr %69, align 8, !tbaa !326 ; 2 uses
  %i.aqp = load ptr, ptr %i.aoz, align 8, !tbaa !329
  %.not.i.i1041 = icmp eq ptr %i.aqp, %i.aqo
  br i1 %.not.i.i1041, label %_ZNSt6vectorIfSaIfEE5clearEv.exit1043, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i1042

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i1042:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit1040
  store ptr %i.aqo, ptr %i.aoz, align 8, !tbaa !329
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit1043

_ZNSt6vectorIfSaIfEE5clearEv.exit1043:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit1040, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i1042
  %i.aqq = load ptr, ptr %70, align 8, !tbaa !330 ; 2 uses
  %i.aqr = load ptr, ptr %i.apa, align 8, !tbaa !333
  %.not.i.i1044 = icmp eq ptr %i.aqr, %i.aqq
  br i1 %.not.i.i1044, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit1046, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i1045

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i1045: ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit1043
  store ptr %i.aqq, ptr %i.apa, align 8, !tbaa !333
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit1046

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit1046: ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit1043, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i1045
  store ptr %i.apb, ptr %98, align 8, !tbaa !15
  %i.aqs = load ptr, ptr %26, align 8, !tbaa !17  ; 2 uses
  %i.aqt = load i64, ptr %i.jy, align 8, !tbaa !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.aqt, ptr %i.a, align 8, !tbaa !21
  %i.aqu = icmp ugt i64 %i.aqt, 15
  br i1 %i.aqu, label %.noexc.i1048, label %._crit_edge.i.i1047

.noexc.i1048:                                     ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit1046
  %i.aqv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %98, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1049 unwind label %bb.in ; 2 uses

.noexc1049:                                       ; preds = %.noexc.i1048
  store ptr %i.aqv, ptr %98, align 8, !tbaa !17
  %i.aqw = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.aqw, ptr %i.apb, align 8, !tbaa !16
  br label %._crit_edge.i.i1047

._crit_edge.i.i1047:                              ; preds = %.noexc1049, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit1046
  %i.aqx = phi ptr [ %i.aqv, %.noexc1049 ], [ %i.apb, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit1046 ] ; 2 uses
  switch i64 %i.aqt, label %bb.ie [
    i64 1, label %bb.id
    i64 0, label %bb.if
  ]

bb.id:                                            ; preds = %._crit_edge.i.i1047
  %i.aqy = load i8, ptr %i.aqs, align 1, !tbaa !16
  store i8 %i.aqy, ptr %i.aqx, align 1, !tbaa !16
  br label %bb.if

bb.ie:                                            ; preds = %._crit_edge.i.i1047
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqx, ptr align 1 %i.aqs, i64 %i.aqt, i1 false)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %._crit_edge.i.i1047
  %i.aqz = load i64, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  store i64 %i.aqz, ptr %i.apc, align 8, !tbaa !9
  %i.ara = load ptr, ptr %98, align 8, !tbaa !17
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqz
  store i8 0, ptr %i.arb, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke fastcc void @_ZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %93, ptr noundef nonnull align 8 dereferenceable(24) %95, ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef align 8 %98)
          to label %bb.ig unwind label %bb.ir

bb.ig:                                            ; preds = %bb.if
  %i.arc = load ptr, ptr %98, align 8, !tbaa !17  ; 2 uses
  %i.ard = icmp eq ptr %i.arc, %i.apb
  br i1 %i.ard, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051: ; preds = %bb.ig
  %i.are = load i64, ptr %i.apb, align 8, !tbaa !16
  %i.arf = add i64 %i.are, 1
  call void @_ZdlPvm(ptr noundef %i.arc, i64 noundef %i.arf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051
  invoke fastcc void @_ZL8drawPredRSt6vectorIiSaIiEERS_IfSaIfEERS_IN2cv5Rect_IiEESaIS8_EERNS6_3MatERNS6_8FontFaceEiiii(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(208) %93, ptr noundef nonnull align 8 dereferenceable(16) %66)
          to label %bb.ih unwind label %bb.in

bb.ih:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053
  %i.arg = load i32, ptr %i.apd, align 8, !tbaa !234
  %i.arh = load i32, ptr %i.ape, align 4, !tbaa !234
  %i.ari = call i32 @llvm.smax.i32(i32 %i.arg, i32 %i.arh) ; 2 uses
  %i.arj = mul nsw i32 %i.ari, 5
  %i.ark = sdiv i32 %i.arj, 256                   ; 2 uses
  %i.arl = mul nsw i32 %i.ari, 25
  %i.arm = sdiv i32 %i.arl, 128
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #26
  %i.arn = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.ii unwind label %bb.is

bb.ii:                                            ; preds = %bb.ih
  %i.aro = sitofp i64 %spec.select1228 to double
  %i.arp = fdiv double %i.aro, %i.arn
  %i.arq = fmul double %i.arp, 1.000000e+03
  %i.arr = fdiv double 1.000000e+03, %i.arq
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %99, ptr noundef nonnull @.str.95, double noundef %i.arr)
          to label %bb.ij unwind label %bb.is

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #26
  store i64 0, ptr %i.apg, align 8
  store i32 50397184, ptr %100, align 8, !tbaa !338
  store ptr %93, ptr %i.apf, align 8, !tbaa !341
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %101, align 16, !tbaa !229
  %.sroa.21152.0.insert.ext = zext i32 %i.ark to i64
  %.sroa.21152.0.insert.shift = shl nuw i64 %.sroa.21152.0.insert.ext, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aph, i8 0, i64 16, i1 false)
  %i.ars = invoke i64 @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEENS_7Scalar_IdEERNS_8FontFaceEiiNS_12PutTextFlagsENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef nonnull align 8 dereferenceable(32) %99, i64 %.sroa.21152.0.insert.shift, ptr noundef nonnull align 8 dead_on_return %101, ptr noundef nonnull align 8 dereferenceable(16) %66, i32 noundef %i.ark, i32 noundef %i.arm, i32 noundef 0, i64 0)
          to label %bb.ik unwind label %bb.it     ; 0 uses

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #26
  store i32 0, ptr %i.api, align 8, !tbaa !345
  store i32 0, ptr %i.apj, align 4, !tbaa !346
  store i32 16842752, ptr %102, align 8, !tbaa !338
  store ptr %93, ptr %i.apk, align 8, !tbaa !341
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZ4mainE8kWinNameB5cxx11, ptr noundef nonnull align 8 dereferenceable(24) %102)
          to label %bb.il unwind label %bb.iu

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #26
  %i.art = load ptr, ptr %99, align 8, !tbaa !17  ; 2 uses
  %i.aru = icmp eq ptr %i.art, %i.apl
  br i1 %i.aru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1056

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1056: ; preds = %bb.il
  %i.arv = load i64, ptr %i.apl, align 8, !tbaa !16
  %i.arw = add i64 %i.arv, 1
  call void @_ZdlPvm(ptr noundef %i.art, i64 noundef %i.arw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058: ; preds = %bb.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1056
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #26
  %i.arx = load ptr, ptr %95, align 8, !tbaa !347 ; 3 uses
  %i.ary = load ptr, ptr %i.apm, align 8, !tbaa !349 ; 2 uses
  %.not4.i.i.i1059 = icmp eq ptr %i.arx, %i.ary
  br i1 %.not4.i.i.i1059, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i1065, label %.lr.ph.i.i.i1060

.lr.ph.i.i.i1060:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058, %.lr.ph.i.i.i1060
  %.05.i.i.i1061 = phi ptr [ %i.arz, %.lr.ph.i.i.i1060 ], [ %i.arx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i1061) #26
  %i.arz = getelementptr inbounds nuw i8, ptr %.05.i.i.i1061, i64 208 ; 2 uses
  %.not.i.i.i1062 = icmp eq ptr %i.arz, %i.ary
  br i1 %.not.i.i.i1062, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1063, label %.lr.ph.i.i.i1060, !llvm.loop !350

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1063: ; preds = %.lr.ph.i.i.i1060
  %.pr.i1064 = load ptr, ptr %95, align 8, !tbaa !347
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i1065

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i1065: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1063, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058
  %i.asa = phi ptr [ %.pr.i1064, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1063 ], [ %i.arx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058 ] ; 3 uses
  %.not.i.i1.i1066 = icmp eq ptr %i.asa, null
  br i1 %.not.i.i1.i1066, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit1067, label %bb.im

bb.im:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i1065
  %i.asb = load ptr, ptr %i.apn, align 8, !tbaa !351
  %i.asc = ptrtoint ptr %i.asb to i64
  %i.asd = ptrtoint ptr %i.asa to i64
  %i.ase = sub i64 %i.asc, %i.asd
  call void @_ZdlPvm(ptr noundef nonnull %i.asa, i64 noundef %i.ase) #27
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit1067

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit1067:      ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i1065, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  br label %bb.hq, !llvm.loop !353

bb.in:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053, %.noexc.i1048, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.hx, %.noexc1037
  %i.asf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070

bb.io:                                            ; preds = %bb.hy
  %i.asg = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ip:                                            ; preds = %bb.hz
  %i.ash = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %97) #26
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.pn323 = phi { ptr, i32 } [ %i.ash, %bb.ip ], [ %i.asg, %bb.io ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070

bb.ir:                                            ; preds = %bb.if
  %i.asi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asj = load ptr, ptr %98, align 8, !tbaa !17  ; 2 uses
  %i.ask = icmp eq ptr %i.asj, %i.apb
  br i1 %i.ask, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068: ; preds = %bb.ir
  %i.asl = load i64, ptr %i.apb, align 8, !tbaa !16
  %i.asm = add i64 %i.asl, 1
  call void @_ZdlPvm(ptr noundef %i.asj, i64 noundef %i.asm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070

bb.is:                                            ; preds = %bb.ih, %bb.ii
  %i.asn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073

bb.it:                                            ; preds = %bb.ij
  %i.aso = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #26
  br label %bb.iv

bb.iu:                                            ; preds = %bb.ik
  %i.asp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #26
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %.pn328.pn = phi { ptr, i32 } [ %i.asp, %bb.iu ], [ %i.aso, %bb.it ] ; 2 uses
  %i.asq = load ptr, ptr %99, align 8, !tbaa !17  ; 2 uses
  %i.asr = icmp eq ptr %i.asq, %i.apl
  br i1 %i.asr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071: ; preds = %bb.iv
  %i.ass = load i64, ptr %i.apl, align 8, !tbaa !16
  %i.ast = add i64 %i.ass, 1
  call void @_ZdlPvm(ptr noundef %i.asq, i64 noundef %i.ast) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073: ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071, %bb.is
  %.pn328.pn.pn = phi { ptr, i32 } [ %i.asn, %bb.is ], [ %.pn328.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071 ], [ %.pn328.pn, %bb.iv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073, %bb.iq, %bb.in
  %.pn328.pn.pn.pn = phi { ptr, i32 } [ %.pn328.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073 ], [ %i.asf, %bb.in ], [ %.pn323, %bb.iq ], [ %i.asi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068 ], [ %i.asi, %bb.ir ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %95) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  br label %bb.iw

.loopexit1238:                                    ; preds = %bb.hr, %bb.hv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  br label %bb.ix

bb.iw:                                            ; preds = %.loopexit1233, %.loopexit.split-lp1234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070
  %.pn334 = phi { ptr, i32 } [ %.pn328.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070 ], [ %lpad.loopexit1235, %.loopexit1233 ], [ %lpad.loopexit.split-lp1236, %.loopexit.split-lp1234 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  br label %bb.jb

bb.ix:                                            ; preds = %.loopexit1238, %_ZNSt6threadD2Ev.exit1020
  %i.asu = load ptr, ptr %70, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i1074 = icmp eq ptr %i.asu, null
  br i1 %.not.i.i.i1074, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.asv = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !354
  %i.asx = ptrtoint ptr %i.asw to i64
  %i.asy = ptrtoint ptr %i.asu to i64
  %i.asz = sub i64 %i.asx, %i.asy
  call void @_ZdlPvm(ptr noundef nonnull %i.asu, i64 noundef %i.asz) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %bb.ix, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  %i.ata = load ptr, ptr %69, align 8, !tbaa !326 ; 3 uses
  %.not.i.i.i1075 = icmp eq ptr %i.ata, null
  br i1 %.not.i.i.i1075, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %i.atb = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !355
  %i.atd = ptrtoint ptr %i.atc to i64
  %i.ate = ptrtoint ptr %i.ata to i64
  %i.atf = sub i64 %i.atd, %i.ate
  call void @_ZdlPvm(ptr noundef nonnull %i.ata, i64 noundef %i.atf) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZL11postprocessRN2cv3MatERKSt6vectorIS0_SaIS0_EERNS_3dnn14dnn5_v202606053NetERS2_IiSaIiEERS2_IfSaIfEERS2_INS_5Rect_IiEESaISI_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.axp = ptrtoint ptr %i.axm to i64
  %i.axq = sub i64 %i.axo, %i.axp
  call void @_ZdlPvm(ptr noundef nonnull %i.axm, i64 noundef %i.axq) #27
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  %.not.i.i.i440 = icmp eq ptr %i.arm, null
  br i1 %.not.i.i.i440, label %_ZNSt6vectorImSaImEED2Ev.exit441, label %.thread587

.thread587:                                       ; preds = %.thread587.loopexit, %.thread587.loopexit.split-lp, %bb.jt
  %.pn195590 = phi { ptr, i32 } [ %.pn193, %bb.jt ], [ %lpad.loopexit597, %.thread587.loopexit ], [ %lpad.loopexit.split-lp598, %.thread587.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.arm, i64 noundef %i.arh) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit441

_ZNSt6vectorImSaImEED2Ev.exit441:                 ; preds = %.loopexit600, %.loopexit.split-lp601, %.thread587, %bb.jt
  %.pn195.pn = phi { ptr, i32 } [ %.pn195590, %.thread587 ], [ %.pn193, %bb.jt ], [ %lpad.loopexit602, %.loopexit600 ], [ %lpad.loopexit.split-lp603, %.loopexit.split-lp601 ]
  %i.axr = load ptr, ptr %69, align 8, !tbaa !326 ; 3 uses
  %.not.i.i.i442 = icmp eq ptr %i.axr, null
  br i1 %.not.i.i.i442, label %_ZNSt6vectorIfSaIfEED2Ev.exit443, label %bb.ju

bb.ju:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit441
  %i.axs = load ptr, ptr %i.aow, align 8, !tbaa !355
  %i.axt = ptrtoint ptr %i.axs to i64
  %i.axu = ptrtoint ptr %i.axr to i64
  %i.axv = sub i64 %i.axt, %i.axu
  call void @_ZdlPvm(ptr noundef nonnull %i.axr, i64 noundef %i.axv) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit443

_ZNSt6vectorIfSaIfEED2Ev.exit443:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit441, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  %i.axw = load ptr, ptr %68, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i444 = icmp eq ptr %i.axw, null
  br i1 %.not.i.i.i444, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit445, label %bb.jv

bb.jv:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit443
  %i.axx = load ptr, ptr %i.aou, align 8, !tbaa !354
  %i.axy = ptrtoint ptr %i.axx to i64
  %i.axz = ptrtoint ptr %i.axw to i64
  %i.aya = sub i64 %i.axy, %i.axz
  call void @_ZdlPvm(ptr noundef nonnull %i.axw, i64 noundef %i.aya) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit445

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit445:  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit443, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26
  br label %bb.ke

bb.jw:                                            ; preds = %._crit_edge781
  %i.ayb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %67)
          to label %bb.jx unwind label %bb.kd     ; 0 uses

bb.jx:                                            ; preds = %bb.jw
  %i.ayc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.jy unwind label %bb.kd     ; 0 uses

bb.jy:                                            ; preds = %bb.jx
  %i.ayd = load ptr, ptr %67, align 8, !tbaa !323 ; 3 uses
  %.not.i.i.i446 = icmp eq ptr %i.ayd, null
  br i1 %.not.i.i.i446, label %_ZNSt6vectorIiSaIiEED2Ev.exit447, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aye = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !356
  %i.ayg = ptrtoint ptr %i.ayf to i64
  %i.ayh = ptrtoint ptr %i.ayd to i64
  %i.ayi = sub i64 %i.ayg, %i.ayh
  call void @_ZdlPvm(ptr noundef nonnull %i.ayd, i64 noundef %i.ayi) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit447

_ZNSt6vectorIiSaIiEED2Ev.exit447:                 ; preds = %bb.jy, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  %i.ayj = load ptr, ptr %66, align 8, !tbaa !326 ; 3 uses
  %.not.i.i.i448 = icmp eq ptr %i.ayj, null
  br i1 %.not.i.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit449, label %bb.ka

bb.ka:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit447
  %i.ayk = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !355
  %i.aym = ptrtoint ptr %i.ayl to i64
  %i.ayn = ptrtoint ptr %i.ayj to i64
  %i.ayo = sub i64 %i.aym, %i.ayn
  call void @_ZdlPvm(ptr noundef nonnull %i.ayj, i64 noundef %i.ayo) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit449

_ZNSt6vectorIfSaIfEED2Ev.exit449:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit447, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  %i.ayp = load ptr, ptr %65, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i450 = icmp eq ptr %i.ayp, null
  br i1 %.not.i.i.i450, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit451, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit449
  %i.ayq = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !354
  %i.ays = ptrtoint ptr %i.ayr to i64
  %i.ayt = ptrtoint ptr %i.ayp to i64
  %i.ayu = sub i64 %i.ays, %i.ayt
  call void @_ZdlPvm(ptr noundef nonnull %i.ayp, i64 noundef %i.ayu) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit451

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit451:  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit449, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  %i.ayv = load ptr, ptr %i.aol, align 8, !tbaa !365
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorImSaImEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef %i.ayv)
          to label %_ZNSt3mapIiSt6vectorImSaImEESt4lessIiESaISt4pairIKiS2_EEED2Ev.exit unwind label %bb.kc

bb.kc:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit451
  %i.ayw = landingpad { ptr, i32 }
          catch ptr null
  %i.ayx = extractvalue { ptr, i32 } %i.ayw, 0
  call void @__clang_call_terminate(ptr %i.ayx) #32
  unreachable

_ZNSt3mapIiSt6vectorImSaImEESt4lessIiESaISt4pairIKiS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit451
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %bb.kj

bb.kd:                                            ; preds = %bb.jx, %bb.jw, %._crit_edge781
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit445
  %.pn195.pn.pn = phi { ptr, i32 } [ %.pn195.pn, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit445 ], [ %i.ayy, %bb.kd ]
  %i.ayz = load ptr, ptr %67, align 8, !tbaa !323 ; 3 uses
  %.not.i.i.i452 = icmp eq ptr %i.ayz, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIiSaIiEED2Ev.exit453, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.aza = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !356
  %i.azc = ptrtoint ptr %i.azb to i64
  %i.azd = ptrtoint ptr %i.ayz to i64
  %i.aze = sub i64 %i.azc, %i.azd
  call void @_ZdlPvm(ptr noundef nonnull %i.ayz, i64 noundef %i.aze) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit453

_ZNSt6vectorIiSaIiEED2Ev.exit453:                 ; preds = %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  %i.azf = load ptr, ptr %66, align 8, !tbaa !326 ; 3 uses
  %.not.i.i.i454 = icmp eq ptr %i.azf, null
  br i1 %.not.i.i.i454, label %_ZNSt6vectorIfSaIfEED2Ev.exit455, label %bb.kg

bb.kg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit453
  %i.azg = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !355
  %i.azi = ptrtoint ptr %i.azh to i64
  %i.azj = ptrtoint ptr %i.azf to i64
  %i.azk = sub i64 %i.azi, %i.azj
  call void @_ZdlPvm(ptr noundef nonnull %i.azf, i64 noundef %i.azk) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit455

_ZNSt6vectorIfSaIfEED2Ev.exit455:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit453, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  %i.azl = load ptr, ptr %65, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i456 = icmp eq ptr %i.azl, null
  br i1 %.not.i.i.i456, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit457, label %bb.kh

bb.kh:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit455
  %i.azm = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !354
  %i.azo = ptrtoint ptr %i.azn to i64
  %i.azp = ptrtoint ptr %i.azl to i64
  %i.azq = sub i64 %i.azo, %i.azp
  call void @_ZdlPvm(ptr noundef nonnull %i.azl, i64 noundef %i.azq) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit457

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit457:  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit455, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.ki

bb.ki:                                            ; preds = %.loopexit605, %.loopexit.split-lp606, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit457
  %.pn199 = phi { ptr, i32 } [ %.pn195.pn.pn, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit457 ], [ %lpad.loopexit607, %.loopexit605 ], [ %lpad.loopexit.split-lp608, %.loopexit.split-lp606 ]
  call void @_ZNSt3mapIiSt6vectorImSaImEESt4lessIiESaISt4pairIKiS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %common.resume

bb.kj:                                            ; preds = %_ZNSt3mapIiSt6vectorImSaImEESt4lessIiESaISt4pairIKiS2_EEED2Ev.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL8drawPredRSt6vectorIiSaIiEERS_IfSaIfEERS_IN2cv5Rect_IiEESaIS8_EERNS6_3MatERNS6_8FontFaceEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 10 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load i32, ptr %i.a, align 8, !tbaa !234
  %i.d = load i32, ptr %i.b, align 4, !tbaa !234
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.d) ; 4 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 2 uses
  %i.g = sdiv i32 %i.f, 512                       ; 2 uses
  %i.h = mul nsw i32 %i.e, 75
  %i.i = sdiv i32 %i.h, 256                       ; 2 uses
  %i.j = sdiv i32 %i.e, 256
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !333
  %i.m = load ptr, ptr %2, align 8, !tbaa !330    ; 2 uses
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.y = sdiv i32 %i.f, 2048                      ; 2 uses
  %i.z = sdiv i32 %i.e, 512                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ah = phi ptr [ %i.m, %.lr.ph ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  %.0139 = phi i64 [ 0, %.lr.ph ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ai = load ptr, ptr %0, align 8, !tbaa !323
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0139
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !234 ; 9 uses
  %i.al = shl i32 %i.ak, 7
  %i.am = and i32 %i.al, 128
  %i.an = shl i32 %i.ak, 3
  %i.ao = and i32 %i.an, 64
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = lshr i32 %i.ak, 1
  %i.ar = and i32 %i.aq, 32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = call i32 @llvm.umin.i32(i32 %i.as, i32 175)
  %.sroa.speculated22.i = add nuw nsw i32 %i.at, 80
  %i.au = shl i32 %i.ak, 6
  %i.av = and i32 %i.au, 128
  %i.aw = shl i32 %i.ak, 2
  %i.ax = and i32 %i.aw, 64
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = lshr i32 %i.ak, 2
  %i.ba = and i32 %i.az, 32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = call i32 @llvm.umin.i32(i32 %i.bb, i32 215)
  %.sroa.speculated17.i = add nuw nsw i32 %i.bc, 40
  %i.bd = shl i32 %i.ak, 5
  %i.be = and i32 %i.bd, 128
  %i.bf = shl i32 %i.ak, 1
  %i.bg = and i32 %i.bf, 64
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = lshr i32 %i.ak, 3
  %i.bj = and i32 %i.bi, 32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = call i32 @llvm.umin.i32(i32 %i.bk, i32 215)
  %.sroa.speculated.i = add nuw nsw i32 %i.bl, 40
  %i.bm = uitofp nneg i32 %.sroa.speculated.i to double
  %i.bn = uitofp nneg i32 %.sroa.speculated17.i to double
  %i.bo = uitofp nneg i32 %.sroa.speculated22.i to double
  store double %i.bm, ptr %5, align 8, !tbaa !229, !alias.scope !481
  store double %i.bn, ptr %i.n, align 8, !tbaa !229, !alias.scope !481
  store double %i.bo, ptr %i.o, align 8, !tbaa !229, !alias.scope !481
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !229, !alias.scope !481
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0139 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !484 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !486 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !487
  %i.bv = add nsw i32 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !488
  %i.by = add nsw i32 %i.bx, %i.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 0, ptr %i.r, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !338
  store ptr %3, ptr %i.q, align 8, !tbaa !341
  %.sroa.2125.0.insert.ext = zext i32 %i.bs to i64
  %.sroa.2125.0.insert.shift = shl nuw i64 %.sroa.2125.0.insert.ext, 32
  %.sroa.0124.0.insert.ext = zext i32 %i.bq to i64 ; 2 uses
  %.sroa.0124.0.insert.insert = or disjoint i64 %.sroa.2125.0.insert.shift, %.sroa.0124.0.insert.ext
  %.sroa.2123.0.insert.ext = zext i32 %i.by to i64
  %.sroa.2123.0.insert.shift = shl nuw i64 %.sroa.2123.0.insert.ext, 32
  %.sroa.0122.0.insert.ext = zext i32 %i.bv to i64
  %.sroa.0122.0.insert.insert = or disjoint i64 %.sroa.2123.0.insert.shift, %.sroa.0122.0.insert.ext
  call void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.0124.0.insert.insert, i64 %.sroa.0122.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.j, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bz = load ptr, ptr %1, align 8, !tbaa !326
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0139
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !224
  %i.cc = fpext float %i.cb to double
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.127, double noundef %i.cc)
  %i.cd = load ptr, ptr @_Z6labelsB5cxx11, align 8, !tbaa !357 ; 3 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z6labelsB5cxx11, i64 8), align 8, !tbaa !357 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cg = load ptr, ptr %0, align 8, !tbaa !323
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.0139 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !234
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = ptrtoint ptr %i.cd to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 5
  %i.cn = trunc i64 %i.cm to i32
  %i.co = icmp slt i32 %i.ci, %i.cn
  br i1 %i.co, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.128, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZL8drawPredRSt6vectorIiSaIiEERS_IfSaIfEERS_IN2cv5Rect_IiEESaIS8_EERNS6_3MatERNS6_8FontFaceEiiii, ptr noundef nonnull @.str.80, i32 noundef 709) #28
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !16
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.g ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cq, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ab

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cw = load i32, ptr %i.ch, align 4, !tbaa !234
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %i.cx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17, !noalias !489
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !9, !noalias !489 ; 3 uses
  store ptr %i.s, ptr %11, align 8, !tbaa !15, !alias.scope !492
  store i64 0, ptr %i.t, align 8, !tbaa !9, !alias.scope !492
  store i8 0, ptr %i.s, align 8, !tbaa !16, !alias.scope !492
  %i.dc = add i64 %i.db, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.dc)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.dd = load i64, ptr %i.t, align 8, !tbaa !9, !alias.scope !492
  %i.de = sub i64 4611686018427387903, %i.dd
  %i.df = icmp ult i64 %i.de, %i.db
  br i1 %i.df, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.dg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.cz, i64 noundef %i.db)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dh = load i64, ptr %i.t, align 8, !tbaa !9, !alias.scope !492
  %i.di = and i64 %i.dh, -2
  %i.dj = icmp eq i64 %i.di, 4611686018427387902
  br i1 %i.dj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
end_hunk_2
