Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cap_ffmpeg?download=true
inline.NumInlined: 1704
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN16CvCapture_FFMPEG4openEPKciRKN2cv3PtrINS2_13IStreamReaderEEERKNS2_22VideoCaptureParametersE:bb.a

bb.my:                                            ; preds = %bb.mv
  %i.atx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

.loopexit1185:                                    ; preds = %bb.mw
  %lpad.loopexit1187 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp1186:                           ; preds = %bb.tx, %bb.ty, %bb.tz
  %lpad.loopexit.split-lp1188 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.mz:                                            ; preds = %bb.sd, %bb.sc, %bb.sb, %.thread1132
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.na:                                            ; preds = %bb.mx
  %i.atz = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.nc unwind label %bb.nb     ; 3 uses

bb.nb:                                            ; preds = %bb.na
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.nc:                                            ; preds = %bb.na
  %.not448 = icmp eq ptr %i.atz, null             ; 2 uses
  br i1 %.not448, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !102
  %i.aud = icmp slt i32 %i.auc, 5
  br i1 %i.aud, label %bb.nr, label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %35)
          to label %bb.nf unwind label %bb.nm

bb.nf:                                            ; preds = %bb.ne
  %i.aue = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqp, ptr noundef nonnull @.str.27, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit908 unwind label %bb.nn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit908: ; preds = %bb.nf
  %i.auf = load ptr, ptr %i.aqq, align 8, !tbaa !113
  %i.aug = load i64, ptr %i.aqr, align 8, !tbaa !107
  %i.auh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqp, ptr noundef %i.auf, i64 noundef %i.aug)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit910 unwind label %bb.nn

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit910: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit908
  %i.aui = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.auh, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit912 unwind label %bb.nn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit912: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit910
  br i1 %.not448, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit912
  %i.auj = load ptr, ptr %i.atz, align 8, !tbaa !103
  br label %bb.nh

bb.nh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit912, %bb.ng
  %i.auk = phi ptr [ %i.auj, %bb.ng ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit912 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  store ptr %i.aqs, ptr %36, align 8, !tbaa !105, !alias.scope !378
  store i64 0, ptr %i.aqt, align 8, !tbaa !107, !alias.scope !378
  store i8 0, ptr %i.aqs, align 8, !tbaa !73, !alias.scope !378
  %i.aul = load ptr, ptr %i.aqu, align 8, !tbaa !111, !noalias !378 ; 3 uses
  %.not.i.not.i.i913 = icmp eq ptr %i.aul, null
  %i.aum = load ptr, ptr %i.aqv, align 8, !noalias !378 ; 2 uses
  %i.aun = icmp ugt ptr %i.aul, %i.aum
  %.08.i.i.i914 = select i1 %i.aun, ptr %i.aul, ptr %i.aum ; 2 uses
  %.not5.i.i915 = icmp eq ptr %.08.i.i.i914, null
  %.not.i.i916 = select i1 %.not.i.not.i.i913, i1 true, i1 %.not5.i.i915
  br i1 %.not.i.i916, label %bb.nk, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.auo = load ptr, ptr %i.aqw, align 8, !tbaa !112, !noalias !378 ; 2 uses
  %i.aup = ptrtoint ptr %.08.i.i.i914 to i64
  %i.auq = ptrtoint ptr %i.auo to i64
  %i.aur = sub i64 %i.aup, %i.auq
  %i.aus = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef %i.auo, i64 noundef %i.aur)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit922 unwind label %bb.nj ; 0 uses

bb.nj:                                            ; preds = %bb.nk, %bb.ni
  %i.aut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.auu = load ptr, ptr %36, align 8, !tbaa !113, !alias.scope !378 ; 2 uses
  %i.auv = icmp eq ptr %i.auu, %i.aqs
  br i1 %i.auv, label %.body920, label %.body920.sink.split

bb.nk:                                            ; preds = %bb.nh
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.aqx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit922 unwind label %bb.nj

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit922: ; preds = %bb.nk, %bb.ni
  %i.auw = load ptr, ptr %36, align 8, !tbaa !113
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 5, ptr noundef %i.auk, ptr noundef nonnull @.str.1, i32 noundef 1397, ptr noundef nonnull @__func__._ZN16CvCapture_FFMPEG4openEPKciRKN2cv3PtrINS2_13IStreamReaderEEERKNS2_22VideoCaptureParametersE, ptr noundef %i.auw)
          to label %bb.nl unwind label %bb.no

bb.nl:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit922
  %i.aux = load ptr, ptr %36, align 8, !tbaa !113 ; 2 uses
  %i.auy = icmp eq ptr %i.aux, %i.aqs
  br i1 %i.auy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923: ; preds = %bb.nl
  %i.auz = load i64, ptr %i.aqs, align 8, !tbaa !73
  %i.ava = add i64 %i.auz, 1
  call void @_ZdlPvm(ptr noundef %i.aux, i64 noundef %i.ava) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925: ; preds = %bb.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  store ptr %i.aqy, ptr %35, align 8, !tbaa !72
  %i.avb = load i64, ptr %i.ara, align 8
  %i.avc = getelementptr inbounds i8, ptr %35, i64 %i.avb
  store ptr %i.aqz, ptr %i.avc, align 8, !tbaa !72
  store ptr %i.arb, ptr %i.aqp, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.arc, align 8, !tbaa !72
  %i.avd = load ptr, ptr %i.aqx, align 8, !tbaa !113 ; 2 uses
  %i.ave = icmp eq ptr %i.avd, %i.ard
  br i1 %i.ave, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i926

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i926: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925
  %i.avf = load i64, ptr %i.ard, align 8, !tbaa !73
  %i.avg = add i64 %i.avf, 1
  call void @_ZdlPvm(ptr noundef %i.avd, i64 noundef %i.avg) #37
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit928

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit928: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i926
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.arc, align 8, !tbaa !72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.are) #35
  store ptr %i.arf, ptr %35, align 8, !tbaa !72
  %i.avh = load i64, ptr %i.arh, align 8
  %i.avi = getelementptr inbounds i8, ptr %35, i64 %i.avh
  store ptr %i.arg, ptr %i.avi, align 8, !tbaa !72
  store i64 0, ptr %i.ari, align 8, !tbaa !115
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.arj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  br label %bb.nr

bb.nm:                                            ; preds = %bb.ne
  %i.avj = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.nn:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit910, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit908, %bb.nf
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.no:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit922
  %i.avl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avm = load ptr, ptr %36, align 8, !tbaa !113 ; 2 uses
  %i.avn = icmp eq ptr %i.avm, %i.aqs
  br i1 %i.avn, label %.body920, label %.body920.sink.split

.body920.sink.split:                              ; preds = %bb.no, %bb.nj
  %.sink2245 = phi ptr [ %i.auu, %bb.nj ], [ %i.avm, %bb.no ]
  %.pn449.ph = phi { ptr, i32 } [ %i.aut, %bb.nj ], [ %i.avl, %bb.no ]
  %i.avo = load i64, ptr %i.aqs, align 8, !tbaa !73
  %i.avp = add i64 %i.avo, 1
  call void @_ZdlPvm(ptr noundef %.sink2245, i64 noundef %i.avp) #37
  br label %.body920

.body920:                                         ; preds = %.body920.sink.split, %bb.no, %bb.nj
  %.pn449 = phi { ptr, i32 } [ %i.aut, %bb.nj ], [ %i.avl, %bb.no ], [ %.pn449.ph, %.body920.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  br label %bb.np

bb.np:                                            ; preds = %.body920, %bb.nn
  %.pn449.pn = phi { ptr, i32 } [ %.pn449, %.body920 ], [ %i.avk, %bb.nn ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %35) #35
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %bb.nm
  %.pn449.pn.pn = phi { ptr, i32 } [ %.pn449.pn, %bb.np ], [ %i.avj, %bb.nm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  br label %.loopexit.split-lp

bb.nr:                                            ; preds = %bb.nd, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit928
  %i.avq = load ptr, ptr %i.ark, align 8, !tbaa !113 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr null, ptr %i.a, align 8, !tbaa !161
  %i.avr = invoke ptr @av_codec_iterate(ptr noundef nonnull %i.a)
          to label %.noexc933 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc933:                                        ; preds = %bb.nr
  %.not78.i.a = icmp eq ptr %i.avr, null
  br i1 %.not78.i.a, label %.thread1128, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.noexc933
  %i.avs = icmp eq i32 %i.atw, 2                  ; 2 uses
  %spec.store.select.i = select i1 %i.avs, i32 117, i32 -1
  br i1 %i.avs, label %.lr.ph79.split.i, label %.lr.ph79.split.us.i

.lr.ph79.split.us.i:                              ; preds = %.lr.ph79.i, %.noexc939
  %i.avt = phi ptr [ %i.awk, %.noexc939 ], [ %i.avr, %.lr.ph79.i ] ; 8 uses
  %i.avu = invoke noundef i32 @av_codec_is_decoder(ptr noundef nonnull %i.avt)
          to label %.noexc934 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !4

.noexc934:                                        ; preds = %.lr.ph79.split.us.i
  %.not53.us.i = icmp eq i32 %i.avu, 0
  br i1 %.not53.us.i, label %.backedge.us.i, label %bb.ns

bb.ns:                                            ; preds = %.noexc934
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avt, i64 20
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !168
  %.not54.us.i = icmp eq i32 %i.avw, %i.anl
  br i1 %.not54.us.i, label %bb.nt, label %.backedge.us.i

bb.nt:                                            ; preds = %bb.ns
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avt, i64 24
  %i.avy = load i32, ptr %i.avx, align 8, !tbaa !169
  %i.avz = and i32 %i.avy, 512
  %.not55.us.i = icmp eq i32 %i.avz, 0
  br i1 %.not55.us.i, label %.thread.us.i, label %.backedge.us.i

.thread.us.i:                                     ; preds = %bb.nt
  %i.awa = invoke i32 @av_codec_is_encoder(ptr noundef nonnull %i.avt)
          to label %.noexc935 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc935:                                        ; preds = %.thread.us.i
  %i.awb = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.avt, i32 noundef 0)
          to label %.noexc936 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc936:                                        ; preds = %.noexc935
  %.not5875.us.i = icmp eq ptr %i.awb, null
  br i1 %.not5875.us.i, label %.backedge.us.i, label %.lr.ph77.us.i, !llvm.loop !5

bb.nu:                                            ; preds = %.lr.ph77.us.i, %.noexc938
  %i.awc = phi ptr [ %i.awb, %.lr.ph77.us.i ], [ %i.awj, %.noexc938 ] ; 2 uses
  %.076.us.i = phi i32 [ 0, %.lr.ph77.us.i ], [ %i.awi, %.noexc938 ]
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !172
  %i.awf = icmp eq i32 %i.awe, %i.atw
  br i1 %i.awf, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.awg = load i32, ptr %i.awc, align 4, !tbaa !173
  %i.awh = invoke fastcc noundef zeroext i1 @_ZL14hw_check_codecP7AVCodec14AVHWDeviceTypePKc(ptr noundef %i.avt, i32 noundef range(i32 1, 0) %i.atw, ptr noundef readonly %i.avq)
          to label %.noexc937 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc937:                                        ; preds = %bb.nv
  br i1 %i.awh, label %.loopexit1171, label %bb.nw

bb.nw:                                            ; preds = %.noexc937, %bb.nu
  %i.awi = add nuw nsw i32 %.076.us.i, 1          ; 2 uses
  %i.awj = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.avt, i32 noundef %i.awi)
          to label %.noexc938 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc938:                                        ; preds = %bb.nw
  %.not58.us.i = icmp eq ptr %i.awj, null
  br i1 %.not58.us.i, label %..loopexit_crit_edge.us.i, label %bb.nu, !llvm.loop !6

.backedge.us.i:                                   ; preds = %..loopexit_crit_edge.us.i, %.noexc936, %bb.nt, %bb.ns, %.noexc934
  %i.awk = invoke ptr @av_codec_iterate(ptr noundef nonnull %i.a)
          to label %.noexc939 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc939:                                        ; preds = %.backedge.us.i
  %.not.us.i = icmp eq ptr %i.awk, null
  br i1 %.not.us.i, label %.thread1128, label %.lr.ph79.split.us.i, !llvm.loop !5

.lr.ph77.us.i:                                    ; preds = %.noexc936
  br label %bb.nu, !llvm.loop !5

..loopexit_crit_edge.us.i:                        ; preds = %.noexc938
  br label %.backedge.us.i, !llvm.loop !5

..loopexit_crit_edge.i:                           ; preds = %.noexc946
  br label %.backedge.i, !llvm.loop !5

.lr.ph79.split.i:                                 ; preds = %.lr.ph79.i, %.noexc941
  %i.awl = phi ptr [ %i.awn, %.noexc941 ], [ %i.avr, %.lr.ph79.i ] ; 11 uses
  %i.awm = invoke noundef i32 @av_codec_is_decoder(ptr noundef nonnull %i.awl)
          to label %.noexc940 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !4

.noexc940:                                        ; preds = %.lr.ph79.split.i
  %.not53.i = icmp eq i32 %i.awm, 0
  br i1 %.not53.i, label %.backedge.i, label %bb.nx

.backedge.i:                                      ; preds = %.noexc944, %bb.ny, %bb.nx, %.noexc940, %..loopexit_crit_edge.i
  %i.awn = invoke ptr @av_codec_iterate(ptr noundef nonnull %i.a)
          to label %.noexc941 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc941:                                        ; preds = %.backedge.i
  %.not.i932 = icmp eq ptr %i.awn, null
  br i1 %.not.i932, label %.thread1128, label %.lr.ph79.split.i, !llvm.loop !5

bb.nx:                                            ; preds = %.noexc940
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awl, i64 20
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !168
  %.not54.i = icmp eq i32 %i.awp, %i.anl
  br i1 %.not54.i, label %bb.ny, label %.backedge.i

bb.ny:                                            ; preds = %bb.nx
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awl, i64 24
  %i.awr = load i32, ptr %i.awq, align 8, !tbaa !169
  %i.aws = and i32 %i.awr, 512
  %.not55.i = icmp eq i32 %i.aws, 0
  br i1 %.not55.i, label %bb.nz, label %.backedge.i

bb.nz:                                            ; preds = %bb.ny
  %i.awt = invoke i32 @av_codec_is_encoder(ptr noundef nonnull %i.awl)
          to label %.noexc942 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc942:                                        ; preds = %bb.nz
  %.not81.i = icmp eq i32 %i.awt, 0
  br i1 %.not81.i, label %.thread.i, label %bb.oa

bb.oa:                                            ; preds = %.noexc942
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awl, i64 40 ; 2 uses
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !174 ; 3 uses
  %.not56.i = icmp eq ptr %i.awv, null
  br i1 %.not56.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.oa
  %53 = load i32, ptr %i.awv, align 4, !tbaa !175 ; 2 uses
  %.not5773.i = icmp eq i32 %53, -1
  br i1 %.not5773.i, label %.thread.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.preheader.i, %bb.oc
  %i.aww = phi ptr [ %i.awy, %bb.oc ], [ %i.awv, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.oc ], [ 0, %.preheader.i ]
  %54 = phi i32 [ %57, %bb.oc ], [ %53, %.preheader.i ]
  %55 = icmp eq i32 %54, %spec.store.select.i
  br i1 %55, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %.lr.ph.i.a
  %i.awx = invoke fastcc noundef zeroext i1 @_ZL14hw_check_codecP7AVCodec14AVHWDeviceTypePKc(ptr noundef %i.awl, i32 noundef 2, ptr noundef readonly %i.avq)
          to label %.noexc943 unwind label %.loopexit.split-lp.loopexit

.noexc943:                                        ; preds = %bb.ob
  br i1 %i.awx, label %.loopexit1171, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc943
  %.pre.i.a = load ptr, ptr %i.awu, align 8, !tbaa !174
  br label %bb.oc

bb.oc:                                            ; preds = %._crit_edge.i, %.lr.ph.i.a
  %i.awy = phi ptr [ %.pre.i.a, %._crit_edge.i ], [ %i.aww, %.lr.ph.i.a ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %56 = getelementptr inbounds nuw [4 x i8], ptr %i.awy, i64 %indvars.iv.next.i
  %57 = load i32, ptr %56, align 4, !tbaa !175    ; 2 uses
  %.not57.i = icmp eq i32 %57, -1
  br i1 %.not57.i, label %.thread.i, label %.lr.ph.i.a, !llvm.loop !7

.thread.i:                                        ; preds = %bb.oc, %.preheader.i, %bb.oa, %.noexc942
  %i.awz = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.awl, i32 noundef 0)
          to label %.noexc944 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc944:                                        ; preds = %.thread.i
  %.not5875.i = icmp eq ptr %i.awz, null
  br i1 %.not5875.i, label %.backedge.i, label %.lr.ph77.i, !llvm.loop !5

.lr.ph77.i:                                       ; preds = %.noexc944
  br label %bb.od, !llvm.loop !5

bb.od:                                            ; preds = %.noexc946, %.lr.ph77.i
  %i.axa = phi ptr [ %i.awz, %.lr.ph77.i ], [ %i.axh, %.noexc946 ] ; 2 uses
  %.076.i = phi i32 [ 0, %.lr.ph77.i ], [ %i.axg, %.noexc946 ]
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !172
  %i.axd = icmp eq i32 %i.axc, 2
  br i1 %i.axd, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.axe = load i32, ptr %i.axa, align 4, !tbaa !173
  %i.axf = invoke fastcc noundef zeroext i1 @_ZL14hw_check_codecP7AVCodec14AVHWDeviceTypePKc(ptr noundef %i.awl, i32 noundef 2, ptr noundef readonly %i.avq)
          to label %.noexc945 unwind label %.loopexit

.noexc945:                                        ; preds = %bb.oe
  br i1 %i.axf, label %.loopexit1171, label %bb.of

bb.of:                                            ; preds = %.noexc945, %bb.od
  %i.axg = add nuw nsw i32 %.076.i, 1             ; 2 uses
  %i.axh = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.awl, i32 noundef %i.axg)
          to label %.noexc946 unwind label %.loopexit ; 2 uses

.noexc946:                                        ; preds = %bb.of
  %.not58.i = icmp eq ptr %i.axh, null
  br i1 %.not58.i, label %..loopexit_crit_edge.i, label %bb.od, !llvm.loop !6

.thread1128:                                      ; preds = %.noexc939, %.noexc941, %.noexc933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %.thread1132

.loopexit1171:                                    ; preds = %.noexc937, %.noexc943, %.noexc945
  %.11 = phi i32 [ 117, %.noexc943 ], [ %i.axe, %.noexc945 ], [ %i.awg, %.noexc937 ]
  %i.axi = phi ptr [ %i.awl, %.noexc943 ], [ %i.awl, %.noexc945 ], [ %i.avt, %.noexc937 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.axj = invoke ptr @avcodec_alloc_context3(ptr noundef nonnull %i.axi)
          to label %bb.og unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.og:                                            ; preds = %.loopexit1171
  store ptr %i.axj, ptr %i.arl, align 8, !tbaa !87
  %.not455 = icmp eq ptr %i.axj, null
  br i1 %.not455, label %bb.oh, label %bb.om

.loopexit:                                        ; preds = %bb.oe, %bb.of
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ob
  %lpad.loopexit1172 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.nv, %bb.nw
  %lpad.loopexit1176 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.thread.i, %bb.nz, %.backedge.i, %.lr.ph79.split.i
  %lpad.loopexit1179 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph79.split.us.i, %.thread.us.i, %.noexc935, %.backedge.us.i
  %lpad.loopexit1182 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.oq, %.loopexit1171, %bb.on, %bb.nr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %bb.oi unwind label %bb.ok

bb.oi:                                            ; preds = %bb.oh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @__func__._ZN16CvCapture_FFMPEG4openEPKciRKN2cv3PtrINS2_13IStreamReaderEEERKNS2_22VideoCaptureParametersE, ptr noundef nonnull @.str.1, i32 noundef 1405) #36
          to label %bb.oj unwind label %bb.ol

bb.oj:                                            ; preds = %bb.oi
  unreachable

bb.ok:                                            ; preds = %bb.oh
  %i.axk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949

bb.ol:                                            ; preds = %bb.oi
  %i.axl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axm = load ptr, ptr %37, align 8, !tbaa !113 ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.axo = icmp eq ptr %i.axm, %i.axn
  br i1 %i.axo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947: ; preds = %bb.ol
  %i.axp = load i64, ptr %i.axn, align 8, !tbaa !73
  %i.axq = add i64 %i.axp, 1
  call void @_ZdlPvm(ptr noundef %i.axm, i64 noundef %i.axq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949: ; preds = %bb.ol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947, %bb.ok
  %.pn456 = phi { ptr, i32 } [ %i.axk, %bb.ok ], [ %i.axl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947 ], [ %i.axl, %bb.ol ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  br label %.loopexit.split-lp

bb.om:                                            ; preds = %bb.og
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axj, i64 152
  store ptr @avcodec_default_get_format, ptr %i.axr, align 8, !tbaa !379
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axj, i64 864 ; 2 uses
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !185
  %.not458 = icmp eq ptr %i.axt, null
  br i1 %.not458, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  invoke void @av_buffer_unref(ptr noundef nonnull %i.axs)
          to label %bb.oo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oo:                                            ; preds = %bb.on, %bb.om
  %.not459 = icmp eq i32 %.11, -1
  br i1 %.not459, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.axu = load ptr, ptr %i.arl, align 8, !tbaa !87
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 152
  store ptr @_ZL22hw_get_format_callbackP14AVCodecContextPK13AVPixelFormat, ptr %i.axv, align 8, !tbaa !379
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.axw = load i32, ptr %i.arm, align 4, !tbaa !120
  %i.axx = invoke fastcc noundef ptr @_ZL16hw_create_device14AVHWDeviceTypeiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(i32 noundef %i.atw, i32 noundef %i.axw, ptr noundef nonnull align 8 dereferenceable(32) %i.arn)
          to label %bb.or unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.or:                                            ; preds = %bb.oq
  %i.axy = load ptr, ptr %i.arl, align 8, !tbaa !87 ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 864
  store ptr %i.axx, ptr %i.axz, align 8, !tbaa !185
  %.not460 = icmp eq ptr %i.axx, null
  br i1 %.not460, label %bb.os, label %bb.sb

bb.os:                                            ; preds = %bb.or
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axy, i64 152
  store ptr @avcodec_default_get_format, ptr %i.aya, align 8, !tbaa !379
  %i.ayb = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.ou unwind label %bb.ot     ; 3 uses

bb.ot:                                            ; preds = %bb.os
  %i.ayc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ou:                                            ; preds = %bb.os
  %.not461 = icmp eq ptr %i.ayb, null             ; 2 uses
  br i1 %.not461, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayb, i64 8
  %i.aye = load i32, ptr %i.ayd, align 8, !tbaa !102
  %i.ayf = icmp slt i32 %i.aye, 5
  br i1 %i.ayf, label %.thread1132, label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %39)
          to label %bb.ox unwind label %bb.pe

bb.ox:                                            ; preds = %bb.ow
  %i.ayg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aro, ptr noundef nonnull @.str.29, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit951 unwind label %bb.pf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit951: ; preds = %bb.ox
  %i.ayh = load ptr, ptr %i.aqq, align 8, !tbaa !113
  %i.ayi = load i64, ptr %i.aqr, align 8, !tbaa !107
  %i.ayj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aro, ptr noundef %i.ayh, i64 noundef %i.ayi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit953 unwind label %bb.pf

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit953: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit951
  %i.ayk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayj, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955 unwind label %bb.pf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit953
  br i1 %.not461, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955
  %i.ayl = load ptr, ptr %i.ayb, align 8, !tbaa !103
  br label %bb.oz

end_hunk_0
begin_hunk_1_@_ZN20CvVideoWriter_FFMPEG4openEPKcidiiRKN2cv21VideoWriterParametersE:bb.a
  br label %bb.ki

bb.ke:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1169, %bb.jy
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.kf:                                            ; preds = %bb.ka
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176

bb.kg:                                            ; preds = %bb.kb
  %i.afb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afc = load ptr, ptr %28, align 8, !tbaa !113 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.afe = icmp eq ptr %i.afc, %i.afd
  br i1 %i.afe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174: ; preds = %bb.kg
  %i.aff = load i64, ptr %i.afd, align 8, !tbaa !73
  %i.afg = add i64 %i.aff, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.afg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176: ; preds = %bb.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174, %bb.kf
  %.pn805 = phi { ptr, i32 } [ %i.afa, %bb.kf ], [ %i.afb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174 ], [ %i.afb, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.kh

bb.kh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176, %bb.ke
  %.pn805.pn = phi { ptr, i32 } [ %.pn805, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176 ], [ %i.aez, %bb.ke ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %27) #35
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kd
  %.pn805.pn.pn = phi { ptr, i32 } [ %.pn805.pn, %bb.kh ], [ %i.aey, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %bb.qb

bb.kj:                                            ; preds = %bb.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173
  %i.afh = load ptr, ptr %25, align 8, !tbaa !113
  %i.afi = invoke i32 @av_dict_parse_string(ptr noundef nonnull %i.e, ptr noundef %i.afh, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 0)
          to label %bb.kl unwind label %bb.kk     ; 0 uses

bb.kk:                                            ; preds = %bb.kj
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qb

bb.kl:                                            ; preds = %bb.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store ptr null, ptr %i.f, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !231
  %i.afm = load ptr, ptr %i.e, align 8, !tbaa !643
  invoke void @_ZN15HWAccelIteratorC2EN2cv21VideoAccelerationTypeEbP12AVDictionary(ptr noundef nonnull align 8 dereferenceable(520) %29, i32 noundef %i.afl, i1 noundef zeroext true, ptr noundef %i.afm)
          to label %.preheader unwind label %bb.kq

.preheader:                                       ; preds = %bb.kl
  %i.afn = load ptr, ptr %29, align 8, !tbaa !72
  %i.afo = getelementptr i8, ptr %i.afn, i64 -24
  %i.afp = load i64, ptr %i.afo, align 8
  %i.afq = getelementptr inbounds i8, ptr %29, i64 %i.afp
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 32
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !154
  %.not13471497 = icmp eq i32 %i.afs, 0
  br i1 %.not13471497, label %.lr.ph, label %.thread1328

.lr.ph:                                           ; preds = %.preheader
  %i.aft = getelementptr inbounds nuw i8, ptr %29, i64 448
  %i.afu = getelementptr inbounds nuw i8, ptr %29, i64 488
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %29, i64 456
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.afy = fadd double %.sroa.speculated1280, 5.000000e-01
  %i.afz = fptosi double %i.afy to i32            ; 2 uses
  %.sroa.29.0.insert.shift739 = shl nuw i32 %.sroa.29.1, 24
  %.sroa.28.0.insert.ext621 = shl nuw i32 %.sroa.28.1.in, 16
  %.sroa.28.0.insert.shift622 = and i32 %.sroa.28.0.insert.ext621, 16711680
  %.sroa.28.0.insert.insert624 = or disjoint i32 %.sroa.28.0.insert.shift622, %.sroa.29.0.insert.shift739
  %.sroa.27.0.insert.ext504 = shl nuw i32 %.sroa.27.1.in, 8
  %.sroa.27.0.insert.shift505 = and i32 %.sroa.27.0.insert.ext504, 65280
  %.sroa.27.0.insert.insert507 = or disjoint i32 %.sroa.28.0.insert.insert624, %.sroa.27.0.insert.shift505
  %.sroa.0.0.insert.ext388 = and i32 %.sroa.0.1.in, 255
  %.sroa.0.0.insert.insert390 = or disjoint i32 %.sroa.27.0.insert.insert507, %.sroa.0.0.insert.ext388
  %i.aga = sext i32 %i.afz to i64
  %i.agb = sdiv i32 %i.afz, 2
  %i.agc = sext i32 %i.agb to i64
  %i.agd = add nsw i64 %i.agc, %i.aga
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.agd, i64 2147483647)
  %i.age = fadd double %3, 5.000000e-01
  %.05072.i = fptosi double %i.age to i32         ; 2 uses
  %i.agf = sitofp i32 %.05072.i to double
  %i.agg = fsub double %i.agf, %3
  %i.agh = call double @llvm.fabs.f64(double %i.agg)
  %i.agi = fcmp ogt double %i.agh, 1.000000e-03
  %i.agj = fmul double %.sroa.speculated1280, 5.000000e-01
  %i.agk = fptosi double %i.agj to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 9 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ago = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.agp = getelementptr inbounds nuw i8, ptr %32, i64 48
  %i.agq = getelementptr inbounds nuw i8, ptr %32, i64 56
  %i.agr = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 2 uses
  %i.ags = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.agt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.agu = getelementptr i8, ptr %i.ags, i64 -24
  %i.agv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %32, i64 112 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %32, i64 80
  %i.agz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.aha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ahb = getelementptr i8, ptr %i.agz, i64 -24
  %i.ahc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.ahe = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  br label %bb.km

bb.km:                                            ; preds = %.lr.ph, %.thread1317
  %.01971498 = phi ptr [ null, %.lr.ph ], [ %.3, %.thread1317 ]
  %i.ahg = load i8, ptr %i.ax, align 4, !tbaa !235, !range !117, !noundef !118
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.ahh, label %bb.kn, label %bb.md

bb.kn:                                            ; preds = %bb.km
  invoke void @_ZN15HWAccelIterator10parse_nextEv(ptr noundef nonnull align 8 dereferenceable(520) %29)
          to label %bb.ko unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ko:                                            ; preds = %bb.kn
  %i.ahi = load i32, ptr %i.aft, align 8, !tbaa !160 ; 6 uses
  %i.ahj = load ptr, ptr %i.f, align 8, !tbaa !202
  %.not810 = icmp eq ptr %i.ahj, null
  br i1 %.not810, label %bb.ks, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  invoke void @av_buffer_unref(ptr noundef nonnull %i.f)
          to label %bb.ks unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kq:                                            ; preds = %bb.kl
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.kr:                                            ; preds = %bb.pw, %bb.pu, %bb.ps, %bb.pj, %bb.ph, %bb.op, %bb.on
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

.loopexit:                                        ; preds = %bb.lg, %bb.lh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

.loopexit.split-lp.loopexit:                      ; preds = %bb.ld
  %lpad.loopexit1349 = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.kx, %bb.ky
  %lpad.loopexit1353 = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.thread.i, %bb.lb, %.backedge.i, %.lr.ph79.split.i
  %lpad.loopexit1356 = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph79.split.us.i, %.thread.us.i, %.noexc1182, %.backedge.us.i
  %lpad.loopexit1359 = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit1348, %bb.kn, %bb.kp, %bb.lj, %bb.kt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

bb.ks:                                            ; preds = %bb.kp, %bb.ko
  %.not811 = icmp eq i32 %i.ahi, 0
  br i1 %.not811, label %bb.lj, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.ahm = load ptr, ptr %i.afu, align 8, !tbaa !113 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.ahn = invoke ptr @av_codec_iterate(ptr noundef nonnull %i.b)
          to label %.noexc1180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc1180:                                       ; preds = %bb.kt
  %.not78.i.a = icmp eq ptr %i.ahn, null
  br i1 %.not78.i.a, label %.thread1313, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.noexc1180
  %i.aho = icmp eq i32 %i.ahi, 2                  ; 2 uses
  %spec.store.select.i = select i1 %i.aho, i32 117, i32 -1
  br i1 %i.aho, label %.lr.ph79.split.i, label %.lr.ph79.split.us.i

.lr.ph79.split.us.i:                              ; preds = %.lr.ph79.i, %.noexc1186
  %i.ahp = phi ptr [ %i.aig, %.noexc1186 ], [ %i.ahn, %.lr.ph79.i ] ; 8 uses
  %i.ahq = invoke noundef i32 @av_codec_is_encoder(ptr noundef nonnull %i.ahp)
          to label %.noexc1181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !4

.noexc1181:                                       ; preds = %.lr.ph79.split.us.i
  %.not53.us.i = icmp eq i32 %i.ahq, 0
  br i1 %.not53.us.i, label %.backedge.us.i, label %bb.ku

bb.ku:                                            ; preds = %.noexc1181
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 20
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !168
  %.not54.us.i = icmp eq i32 %i.ahs, %.3219
  br i1 %.not54.us.i, label %bb.kv, label %.backedge.us.i

bb.kv:                                            ; preds = %bb.ku
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahp, i64 24
  %i.ahu = load i32, ptr %i.aht, align 8, !tbaa !169
  %i.ahv = and i32 %i.ahu, 512
  %.not55.us.i = icmp eq i32 %i.ahv, 0
  br i1 %.not55.us.i, label %.thread.us.i, label %.backedge.us.i

.thread.us.i:                                     ; preds = %bb.kv
  %i.ahw = invoke i32 @av_codec_is_encoder(ptr noundef nonnull %i.ahp)
          to label %.noexc1182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc1182:                                       ; preds = %.thread.us.i
  %i.ahx = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.ahp, i32 noundef 0)
          to label %.noexc1183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1183:                                       ; preds = %.noexc1182
  %.not5875.us.i = icmp eq ptr %i.ahx, null
  br i1 %.not5875.us.i, label %.backedge.us.i, label %.lr.ph77.us.i, !llvm.loop !5

bb.kw:                                            ; preds = %.lr.ph77.us.i, %.noexc1185
  %i.ahy = phi ptr [ %i.ahx, %.lr.ph77.us.i ], [ %i.aif, %.noexc1185 ] ; 2 uses
  %.076.us.i = phi i32 [ 0, %.lr.ph77.us.i ], [ %i.aie, %.noexc1185 ]
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !172
  %i.aib = icmp eq i32 %i.aia, %i.ahi
  br i1 %i.aib, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.aic = load i32, ptr %i.ahy, align 4, !tbaa !173
  %i.aid = invoke fastcc noundef zeroext i1 @_ZL14hw_check_codecP7AVCodec14AVHWDeviceTypePKc(ptr noundef %i.ahp, i32 noundef range(i32 1, 0) %i.ahi, ptr noundef readonly %i.ahm)
          to label %.noexc1184 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1184:                                       ; preds = %bb.kx
  br i1 %i.aid, label %.loopexit1348, label %bb.ky

bb.ky:                                            ; preds = %.noexc1184, %bb.kw
  %i.aie = add nuw nsw i32 %.076.us.i, 1          ; 2 uses
  %i.aif = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.ahp, i32 noundef %i.aie)
          to label %.noexc1185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1185:                                       ; preds = %bb.ky
  %.not58.us.i = icmp eq ptr %i.aif, null
  br i1 %.not58.us.i, label %..loopexit_crit_edge.us.i, label %bb.kw, !llvm.loop !6

.backedge.us.i:                                   ; preds = %..loopexit_crit_edge.us.i, %.noexc1183, %bb.kv, %bb.ku, %.noexc1181
  %i.aig = invoke ptr @av_codec_iterate(ptr noundef nonnull %i.b)
          to label %.noexc1186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1186:                                       ; preds = %.backedge.us.i
  %.not.us.i = icmp eq ptr %i.aig, null
  br i1 %.not.us.i, label %.thread1313, label %.lr.ph79.split.us.i, !llvm.loop !5

.lr.ph77.us.i:                                    ; preds = %.noexc1183
  br label %bb.kw, !llvm.loop !5

..loopexit_crit_edge.us.i:                        ; preds = %.noexc1185
  br label %.backedge.us.i, !llvm.loop !5

..loopexit_crit_edge.i:                           ; preds = %.noexc1193
  br label %.backedge.i, !llvm.loop !5

.lr.ph79.split.i:                                 ; preds = %.lr.ph79.i, %.noexc1188
  %i.aih = phi ptr [ %i.aij, %.noexc1188 ], [ %i.ahn, %.lr.ph79.i ] ; 11 uses
  %i.aii = invoke noundef i32 @av_codec_is_encoder(ptr noundef nonnull %i.aih)
          to label %.noexc1187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !4

.noexc1187:                                       ; preds = %.lr.ph79.split.i
  %.not53.i = icmp eq i32 %i.aii, 0
  br i1 %.not53.i, label %.backedge.i, label %bb.kz

.backedge.i:                                      ; preds = %.noexc1191, %bb.la, %bb.kz, %.noexc1187, %..loopexit_crit_edge.i
  %i.aij = invoke ptr @av_codec_iterate(ptr noundef nonnull %i.b)
          to label %.noexc1188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1188:                                       ; preds = %.backedge.i
  %.not.i1177 = icmp eq ptr %i.aij, null
  br i1 %.not.i1177, label %.thread1313, label %.lr.ph79.split.i, !llvm.loop !5

bb.kz:                                            ; preds = %.noexc1187
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 20
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !168
  %.not54.i = icmp eq i32 %i.ail, %.3219
  br i1 %.not54.i, label %bb.la, label %.backedge.i

bb.la:                                            ; preds = %bb.kz
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aih, i64 24
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !169
  %i.aio = and i32 %i.ain, 512
  %.not55.i = icmp eq i32 %i.aio, 0
  br i1 %.not55.i, label %bb.lb, label %.backedge.i

bb.lb:                                            ; preds = %bb.la
  %i.aip = invoke i32 @av_codec_is_encoder(ptr noundef nonnull %i.aih)
          to label %.noexc1189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1189:                                       ; preds = %bb.lb
  %.not81.i = icmp eq i32 %i.aip, 0
  br i1 %.not81.i, label %.thread.i, label %bb.lc

bb.lc:                                            ; preds = %.noexc1189
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aih, i64 40 ; 2 uses
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !174 ; 3 uses
  %.not56.i = icmp eq ptr %i.air, null
  br i1 %.not56.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.lc
  %36 = load i32, ptr %i.air, align 4, !tbaa !175 ; 2 uses
  %.not5773.i = icmp eq i32 %36, -1
  br i1 %.not5773.i, label %.thread.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.preheader.i, %bb.le
  %i.ais = phi ptr [ %i.aiu, %bb.le ], [ %i.air, %.preheader.i ]
  %indvars.iv.i1178 = phi i64 [ %indvars.iv.next.i1179, %bb.le ], [ 0, %.preheader.i ]
  %37 = phi i32 [ %40, %bb.le ], [ %36, %.preheader.i ]
  %38 = icmp eq i32 %37, %spec.store.select.i
  br i1 %38, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %.lr.ph.i.a
  %i.ait = invoke fastcc noundef zeroext i1 @_ZL14hw_check_codecP7AVCodec14AVHWDeviceTypePKc(ptr noundef %i.aih, i32 noundef 2, ptr noundef readonly %i.ahm)
          to label %.noexc1190 unwind label %.loopexit.split-lp.loopexit

.noexc1190:                                       ; preds = %bb.ld
  br i1 %i.ait, label %.loopexit1348, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc1190
  %.pre.i.a = load ptr, ptr %i.aiq, align 8, !tbaa !174
  br label %bb.le

bb.le:                                            ; preds = %._crit_edge.i, %.lr.ph.i.a
  %i.aiu = phi ptr [ %.pre.i.a, %._crit_edge.i ], [ %i.ais, %.lr.ph.i.a ] ; 2 uses
  %indvars.iv.next.i1179 = add nuw nsw i64 %indvars.iv.i1178, 1 ; 2 uses
  %39 = getelementptr inbounds nuw [4 x i8], ptr %i.aiu, i64 %indvars.iv.next.i1179
  %40 = load i32, ptr %39, align 4, !tbaa !175    ; 2 uses
  %.not57.i = icmp eq i32 %40, -1
  br i1 %.not57.i, label %.thread.i, label %.lr.ph.i.a, !llvm.loop !7

.thread.i:                                        ; preds = %bb.le, %.preheader.i, %bb.lc, %.noexc1189
  %i.aiv = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.aih, i32 noundef 0)
          to label %.noexc1191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1191:                                       ; preds = %.thread.i
  %.not5875.i = icmp eq ptr %i.aiv, null
  br i1 %.not5875.i, label %.backedge.i, label %.lr.ph77.i, !llvm.loop !5

.lr.ph77.i:                                       ; preds = %.noexc1191
  br label %bb.lf, !llvm.loop !5

bb.lf:                                            ; preds = %.noexc1193, %.lr.ph77.i
  %i.aiw = phi ptr [ %i.aiv, %.lr.ph77.i ], [ %i.ajd, %.noexc1193 ] ; 2 uses
  %.076.i = phi i32 [ 0, %.lr.ph77.i ], [ %i.ajc, %.noexc1193 ]
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !172
  %i.aiz = icmp eq i32 %i.aiy, 2
  br i1 %i.aiz, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.aja = load i32, ptr %i.aiw, align 4, !tbaa !173
  %i.ajb = invoke fastcc noundef zeroext i1 @_ZL14hw_check_codecP7AVCodec14AVHWDeviceTypePKc(ptr noundef %i.aih, i32 noundef 2, ptr noundef readonly %i.ahm)
          to label %.noexc1192 unwind label %.loopexit

.noexc1192:                                       ; preds = %bb.lg
  br i1 %i.ajb, label %.loopexit1348, label %bb.lh

bb.lh:                                            ; preds = %.noexc1192, %bb.lf
  %i.ajc = add nuw nsw i32 %.076.i, 1             ; 2 uses
  %i.ajd = invoke ptr @avcodec_get_hw_config(ptr noundef nonnull %i.aih, i32 noundef %i.ajc)
          to label %.noexc1193 unwind label %.loopexit ; 2 uses

.noexc1193:                                       ; preds = %bb.lh
  %.not58.i = icmp eq ptr %i.ajd, null
  br i1 %.not58.i, label %..loopexit_crit_edge.i, label %bb.lf, !llvm.loop !6

.thread1313:                                      ; preds = %.noexc1186, %.noexc1188, %.noexc1180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %.thread1317

.loopexit1348:                                    ; preds = %.noexc1184, %.noexc1190, %.noexc1192
  %.13 = phi i32 [ 117, %.noexc1190 ], [ %i.aja, %.noexc1192 ], [ %i.aic, %.noexc1184 ]
  %i.aje = phi ptr [ %i.aih, %.noexc1190 ], [ %i.aih, %.noexc1192 ], [ %i.ahp, %.noexc1184 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.ajf = load i32, ptr %i.afv, align 4, !tbaa !232
  %i.ajg = invoke fastcc noundef ptr @_ZL16hw_create_device14AVHWDeviceTypeiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(i32 noundef %i.ahi, i32 noundef %i.ajf, ptr noundef nonnull align 8 dereferenceable(32) %i.afw)
          to label %bb.li unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.li:                                            ; preds = %.loopexit1348
  store ptr %i.ajg, ptr %i.f, align 8, !tbaa !202
  %.not820 = icmp eq ptr %i.ajg, null
  br i1 %.not820, label %.thread1317, label %bb.mc, !llvm.loop !616

bb.lj:                                            ; preds = %bb.ks
  %i.ajh = invoke ptr @avcodec_find_encoder(i32 noundef %.3219)
          to label %bb.lk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.lk:                                            ; preds = %bb.lj
  %.not812 = icmp eq ptr %i.ajh, null
  br i1 %.not812, label %bb.ll, label %bb.mc

bb.ll:                                            ; preds = %bb.lk
  %i.aji = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.ln unwind label %bb.lm     ; 3 uses

bb.lm:                                            ; preds = %bb.ll
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  br label %.body1215

bb.ln:                                            ; preds = %bb.ll
  %.not813 = icmp eq ptr %i.aji, null             ; 2 uses
  br i1 %.not813, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !102
  %i.ajm = icmp slt i32 %i.ajl, 2
  br i1 %i.ajm, label %.thread1317, label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.lq unwind label %bb.lw

bb.lq:                                            ; preds = %bb.lp
  %i.ajn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahe, ptr noundef nonnull @.str.95, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1195 unwind label %bb.lx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1195: ; preds = %bb.lq
  %i.ajo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ahe, i32 noundef %.3219)
          to label %bb.lr unwind label %bb.lx     ; 2 uses

bb.lr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1195
  %i.ajp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajo, ptr noundef nonnull @.str.35, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1197 unwind label %bb.lx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1197: ; preds = %bb.lr
  %i.ajq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajo, ptr noundef nonnull @.str.183, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1200 unwind label %bb.lx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1200: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1197
  br i1 %.not813, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1200
  %i.ajr = load ptr, ptr %i.aji, align 8, !tbaa !103
  br label %bb.lt

bb.lt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1200, %bb.ls
  %i.ajs = phi ptr [ %i.ajr, %bb.ls ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1200 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.lu unwind label %bb.ly

bb.lu:                                            ; preds = %bb.lt
  %i.ajt = load ptr, ptr %31, align 8, !tbaa !113
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.ajs, ptr noundef nonnull @.str.1, i32 noundef 3508, ptr noundef nonnull @__func__._ZN16CvCapture_FFMPEG4openEPKciRKN2cv3PtrINS2_13IStreamReaderEEERKNS2_22VideoCaptureParametersE, ptr noundef %i.ajt)
          to label %bb.lv unwind label %bb.lz

bb.lv:                                            ; preds = %bb.lu
  %i.aju = load ptr, ptr %31, align 8, !tbaa !113 ; 2 uses
  %i.ajv = icmp eq ptr %i.aju, %i.ahf
  br i1 %i.ajv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1201: ; preds = %bb.lv
  %i.ajw = load i64, ptr %i.ahf, align 8, !tbaa !73
  %i.ajx = add i64 %i.ajw, 1
  call void @_ZdlPvm(ptr noundef %i.aju, i64 noundef %i.ajx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1203: ; preds = %bb.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1201
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %.thread1317

bb.lw:                                            ; preds = %bb.lp
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.lx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1197, %bb.lr, %bb.lq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1195
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.ly:                                            ; preds = %bb.lt
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206

bb.lz:                                            ; preds = %bb.lu
  %i.akb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akc = load ptr, ptr %31, align 8, !tbaa !113 ; 2 uses
  %i.akd = icmp eq ptr %i.akc, %i.ahf
  br i1 %i.akd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1204: ; preds = %bb.lz
  %i.ake = load i64, ptr %i.ahf, align 8, !tbaa !73
  %i.akf = add i64 %i.ake, 1
  call void @_ZdlPvm(ptr noundef %i.akc, i64 noundef %i.akf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1204, %bb.ly
  %.pn814 = phi { ptr, i32 } [ %i.aka, %bb.ly ], [ %i.akb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1204 ], [ %i.akb, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.ma

bb.ma:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206, %bb.lx
  %.pn814.pn = phi { ptr, i32 } [ %.pn814, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206 ], [ %i.ajz, %bb.lx ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30) #35
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lw
  %.pn814.pn.pn = phi { ptr, i32 } [ %.pn814.pn, %bb.ma ], [ %i.ajy, %bb.lw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %.body1215

bb.mc:                                            ; preds = %bb.lk, %bb.li
  %.01285 = phi i32 [ -1, %bb.lk ], [ %.13, %bb.li ]
  %.1 = phi ptr [ %i.ajh, %bb.lk ], [ %i.aje, %bb.li ]
  br label %bb.md, !llvm.loop !616

bb.md:                                            ; preds = %bb.mc, %bb.km
  %.11286 = phi i32 [ %.01285, %bb.mc ], [ -1, %bb.km ] ; 3 uses
  %.2 = phi ptr [ %.1, %bb.mc ], [ %.01971498, %bb.km ] ; 10 uses
  %.0196 = phi i32 [ %i.ahi, %bb.mc ], [ 0, %bb.km ] ; 2 uses
  invoke void @avcodec_free_context(ptr noundef nonnull %i.afx)
          to label %bb.me unwind label %.loopexit1362

bb.me:                                            ; preds = %bb.md
  %.not822 = icmp eq i32 %.11286, -1              ; 2 uses
  %i.akg = select i1 %.not822, i32 %.0215, i32 %.11286
  %i.akh = load ptr, ptr %i.abw, align 8, !tbaa !241
  %i.aki = load ptr, ptr %i.adr, align 8, !tbaa !242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.akj = invoke ptr @avcodec_alloc_context3(ptr noundef %.2)
          to label %.noexc1213 unwind label %.loopexit1362 ; 19 uses

.noexc1213:                                       ; preds = %bb.me
end_hunk_1
