Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bssl_shim?download=true
inline.NumInlined: 1154
inline.NumDeleted: 660
begin_hunk_0_@_ZL10DoExchangePSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEPS_I6ssl_stS3_EPK10TestConfigbbP14SettingsWriter:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.kf = invoke noundef ptr @_Z13GetTestConfigPK6ssl_st(ptr noundef %i.ke)
          to label %.noexc339 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc339:                                        ; preds = %bb.ca
  store ptr %i.kf, ptr %i.d, align 8, !tbaa !171
  %i.kg = invoke noundef ptr @_Z12GetTestStatePK6ssl_st(ptr noundef %i.ke)
          to label %.noexc340 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc340:                                        ; preds = %.noexc339
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !157 ; 2 uses
  %.not49.i = icmp eq ptr %i.ki, null
  br i1 %.not49.i, label %.preheader.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc340
  %i.kj = invoke noundef i32 @_ZN17MockQuicTransport19ReadApplicationDataEPhm(ptr noundef nonnull align 8 dereferenceable(96) %i.ki, ptr noundef nonnull %i.kd, i64 noundef range(i64 1, 2147483648) %spec.select)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %.noexc340, %.noexc343
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.kl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %"_ZNSt8functionIFivEEC2IZL6DoReadP6ssl_stPhmE3$_0vEEOT_.exit.i" unwind label %bb.cc ; 5 uses

bb.cc:                                            ; preds = %.preheader.i
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %i.jn, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i335 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i335, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ko = invoke noundef zeroext i1 %i.kn(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347 unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #26
  unreachable

"_ZNSt8functionIFivEEC2IZL6DoReadP6ssl_stPhmE3$_0vEEOT_.exit.i": ; preds = %.preheader.i
  store ptr %i.d, ptr %i.kl, align 16, !tbaa !173
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !168
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !174
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !176
  store ptr %i.kl, ptr %6, align 8, !tbaa !146
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFivEZL6DoReadP6ssl_stPhmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFivEZL6DoReadP6ssl_stPhmE3$_0E9_M_invokeERKSt9_Any_data">, ptr %i.jn, align 8, !tbaa !146
  %i.kr = invoke noundef i32 @_Z20CheckIdempotentErrorPKcP6ssl_stSt8functionIFivEE(ptr noundef nonnull @.str.53, ptr noundef %i.kk, ptr noundef nonnull align 8 %6)
          to label %bb.cf unwind label %bb.ck     ; 9 uses

bb.cf:                                            ; preds = %"_ZNSt8functionIFivEEC2IZL6DoReadP6ssl_stPhmE3$_0vEEOT_.exit.i"
  %i.ks = load ptr, ptr %i.jn, align 8, !tbaa !153 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kt = invoke noundef zeroext i1 %i.ks(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.ch ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.cg, %bb.cf
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1480
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !285, !range !98, !noundef !99
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.la = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.lb = invoke i32 @SSL_export_keying_material(ptr noundef %i.la, ptr noundef nonnull %i.e, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, i32 noundef 0)
          to label %.noexc342 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc342:                                        ; preds = %bb.ci
  %.not.not.i = icmp eq i32 %i.lb, 0
  br i1 %.not.not.i, label %bb.cj, label %.critedge.i338

bb.cj:                                            ; preds = %.noexc342
  %i.lc = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.27, i64 33, i64 1, ptr %i.lc) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.cx

bb.ck:                                            ; preds = %"_ZNSt8functionIFivEEC2IZL6DoReadP6ssl_stPhmE3$_0vEEOT_.exit.i"
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = load ptr, ptr %i.jn, align 8, !tbaa !153 ; 2 uses
  %.not.i33.i = icmp eq ptr %i.le, null
  br i1 %.not.i33.i, label %_ZNSt14_Function_baseD2Ev.exit34.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lf = invoke noundef zeroext i1 %i.le(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit34.i unwind label %bb.cm ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #26
  unreachable

.critedge.i338:                                   ; preds = %.noexc342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge.i338, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.li = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.lj = invoke noundef zeroext i1 @_Z10RetryAsyncP6ssl_sti(ptr noundef %i.li, i32 noundef %i.kr)
          to label %.noexc343 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.cn
  br i1 %i.lj, label %.preheader.i, label %bb.co, !llvm.loop !258

bb.co:                                            ; preds = %.noexc343
  %i.lk = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 1449
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !177, !range !98, !noundef !99
  %i.ln = trunc nuw i8 %i.lm to i1
  %i.lo = icmp sgt i32 %i.kr, 0
  %or.cond.i336 = and i1 %i.lo, %i.ln
  br i1 %or.cond.i336, label %bb.cp, label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.lp = zext nneg i32 %i.kr to i64              ; 4 uses
  %i.lq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lp) #28
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc344:                                        ; preds = %bb.cp
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lq, i8 0, i64 %i.lp, i1 false), !noalias !286
  %i.lr = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.ls = invoke i32 @SSL_peek(ptr noundef %i.lr, ptr noundef nonnull %i.lq, i32 noundef %i.kr)
          to label %bb.cq unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i

bb.cq:                                            ; preds = %.noexc344
  %.not.i337 = icmp eq i32 %i.ls, %i.kr
  br i1 %.not.i337, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.lt = load ptr, ptr %i.b, align 8, !tbaa !95
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.lq, ptr %i.lt, i64 %i.lp)
  %.not25.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not25.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.lu = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite30.i = call i64 @fwrite(ptr nonnull @.str.54, i64 41, i64 1, ptr %i.lu) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %bb.ct, %.noexc344
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #29
  br label %_ZNSt14_Function_baseD2Ev.exit34.i

bb.ct:                                            ; preds = %bb.cr
  %i.lw = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.lx = invoke i32 @SSL_read(ptr noundef %i.lw, ptr noundef nonnull %i.lq, i32 noundef %i.kr)
          to label %bb.cu unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i

bb.cu:                                            ; preds = %bb.ct
  %.not27.i = icmp eq i32 %i.lx, %i.kr
  br i1 %.not27.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ly = load ptr, ptr %i.b, align 8, !tbaa !95
  %bcmp50.i = call i32 @bcmp(ptr nonnull %i.lq, ptr %i.ly, i64 %i.lp)
  %.not28.i = icmp eq i32 %bcmp50.i, 0
  br i1 %.not28.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.lz = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite29.i = call i64 @fwrite(ptr nonnull @.str.55, i64 37, i64 1, ptr %i.lz) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38.i: ; preds = %bb.cv
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #29
  br label %bb.cx

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41.i: ; preds = %bb.cw, %bb.cs
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #29
  br label %bb.cx

_ZNSt14_Function_baseD2Ev.exit34.i:               ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i, %bb.cl, %bb.ck
  %.pn.i = phi { ptr, i32 } [ %i.lv, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i ], [ %i.ld, %bb.ck ], [ %i.ld, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347

bb.cx:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38.i, %bb.co, %bb.cj, %bb.cb
  %.5.i = phi i32 [ %i.kr, %bb.co ], [ -1, %bb.cj ], [ -1, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit41.i ], [ %i.kr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit38.i ], [ %i.kj, %bb.cb ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ma = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.mb = invoke i32 @SSL_get_error(ptr noundef %i.ma, i32 noundef %.5.i)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cy:                                            ; preds = %bb.cx
  %i.mc = icmp eq i32 %i.mb, 6
  %.not223 = icmp eq i32 %.5.i, 0                 ; 2 uses
  br i1 %i.mc, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.md = icmp eq i32 %i.mb, 5
  %or.cond13 = select i1 %.not223, i1 %i.md, i1 false
  br i1 %or.cond13, label %.sink.split, label %bb.dc

bb.da:                                            ; preds = %bb.cy
  br i1 %.not223, label %.sink.split, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.me = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite224 = call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr %i.me) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cn, %bb.ci, %bb.cp, %bb.cb, %.noexc339, %bb.ca, %._crit_edge, %bb.ds, %bb.dp, %bb.dl, %bb.cx
  %lpad.loopexit.split-lp609 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.cc, %bb.cd, %_ZNSt14_Function_baseD2Ev.exit34.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.km, %bb.cc ], [ %.pn.i, %_ZNSt14_Function_baseD2Ev.exit34.i ], [ %i.km, %bb.cd ], [ %lpad.loopexit.split-lp609, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #29
  br label %_ZNSt14_Function_baseD2Ev.exit261

bb.dc:                                            ; preds = %bb.cz
  %.not212 = icmp eq i32 %i.mb, 0
  br i1 %.not212, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mf = icmp sgt i32 %.5.i, 0
  br i1 %i.mf, label %bb.de, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

bb.de:                                            ; preds = %bb.dd
  %i.mg = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite222 = call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr %i.mg) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

bb.df:                                            ; preds = %bb.dc
  %i.mh = icmp slt i32 %.5.i, 1
  br i1 %i.mh, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite221 = call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr %i.mi) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

bb.dh:                                            ; preds = %bb.df
  %i.mj = load i8, ptr %i.jo, align 8, !tbaa !138, !range !98, !noundef !99
  %i.mk = trunc nuw i8 %i.mj to i1
  %or.cond18.reass.reass.reass = or i1 %i.mk, %invariant.op
  br i1 %or.cond18.reass.reass.reass, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ml = load i8, ptr %i.jp, align 2, !tbaa !158, !range !98, !noundef !99
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.mn = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite214 = call i64 @fwrite(ptr nonnull @.str.38, i64 52, i64 1, ptr %i.mn) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

bb.dk:                                            ; preds = %bb.di, %bb.dh
  %i.mo = load i8, ptr %i.jq, align 1, !tbaa !178, !range !98, !noundef !99
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mq = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.mr = invoke i32 @SSL_early_data_accepted(ptr noundef %i.mq)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  %.not215 = icmp eq i32 %i.mr, 0
  br i1 %.not215, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ms = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite216 = call i64 @fwrite(ptr nonnull @.str.39, i64 43, i64 1, ptr %i.ms) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

bb.do:                                            ; preds = %bb.dm, %bb.dk
  br i1 %.2, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.mt = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.mu = invoke fastcc noundef i32 @_ZL8WriteAllP6ssl_stPKvm(ptr noundef %i.mt, ptr noundef nonnull @_ZZL10DoExchangePSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEPS_I6ssl_stS3_EPK10TestConfigbbP14SettingsWriterE13kInitialWrite, i64 noundef 5)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dq:                                            ; preds = %bb.dp
  %i.mv = icmp slt i32 %i.mu, 0
  br i1 %i.mv, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.mw = load i8, ptr %i.jr, align 1, !tbaa !287, !range !98, !noundef !99
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.ds, label %iter.check

bb.ds:                                            ; preds = %bb.dr
  %i.my = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.mz = invoke i32 @SSL_key_update(ptr noundef %i.my, i32 noundef 0)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  %.not217 = icmp eq i32 %i.mz, 0
  br i1 %.not217, label %bb.du, label %iter.check

bb.du:                                            ; preds = %bb.dt
  %i.na = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite218 = call i64 @fwrite(ptr nonnull @.str.36, i64 23, i64 1, ptr %i.na) #27 ; 0 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread

iter.check:                                       ; preds = %bb.dr, %bb.dt
  %wide.trip.count = zext nneg i32 %.5.i to i64   ; 7 uses
  %min.iters.check = icmp ult i32 %.5.i, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check599 = icmp ult i32 %.5.i, 32
  br i1 %min.iters.check599, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nb = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kd, i64 %index ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.nc, align 1, !tbaa !77
  %wide.load600 = load <16 x i8>, ptr %i.nd, align 1, !tbaa !77
  %i.ne = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.nf = xor <16 x i8> %wide.load600, splat (i8 -1)
  store <16 x i8> %i.ne, ptr %i.nc, align 1, !tbaa !77
  store <16 x i8> %i.nf, ptr %i.nd, align 1, !tbaa !77
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !290

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec601 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index602 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next604, %vec.epilog.vector.body ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.kd, i64 %index602 ; 2 uses
  %wide.load603 = load <4 x i8>, ptr %i.nh, align 1, !tbaa !77
  %i.ni = xor <4 x i8> %wide.load603, splat (i8 -1)
  store <4 x i8> %i.ni, ptr %i.nh, align 1, !tbaa !77
  %index.next604 = add nuw i64 %index602, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next604, %n.vec601
  br i1 %i.nj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !262

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n605 = icmp eq i64 %n.vec601, %wide.trip.count
  br i1 %cmp.n605, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec601, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.nk = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.nl = invoke fastcc noundef i32 @_ZL8WriteAllP6ssl_stPKvm(ptr noundef %i.nk, ptr noundef nonnull %i.kd, i64 noundef %wide.trip.count)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kd, i64 %indvars.iv ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !77
  %i.no = xor i8 %i.nn, -1
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !263

bb.dv:                                            ; preds = %._crit_edge
  %i.np = icmp slt i32 %i.nl, 0
  br i1 %i.np, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread: ; preds = %bb.dq, %bb.dv, %bb.db, %bb.dj, %bb.de, %bb.dg, %bb.dd, %bb.du, %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #29
  br label %.critedge257

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350: ; preds = %bb.dv
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #29
  br label %bb.bx

.sink.split:                                      ; preds = %bb.cz, %bb.bl, %bb.da
  %.sink = phi ptr [ %i.hs, %bb.bl ], [ %i.kd, %bb.da ], [ %i.kd, %bb.cz ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #29
  br label %bb.dw

bb.dw:                                            ; preds = %.sink.split, %.thread
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 8, !tbaa !138, !range !98, !noundef !99
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 577
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !79, !range !98, !noundef !99
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nw = load i8, ptr %i.m, align 4, !tbaa !264, !range !98, !noundef !99
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ny = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.nz = call fastcc noundef zeroext i16 @_ZL18GetProtocolVersionPK6ssl_st(ptr noundef %i.ny)
  %i.oa = icmp ult i16 %i.nz, 772
  br i1 %i.oa, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.ob = getelementptr inbounds nuw i8, ptr %.1165, i64 100
  %i.oc = load i8, ptr %i.ob, align 4, !tbaa !169, !range !98, !noundef !99
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.oe = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite228 = call i64 @fwrite(ptr nonnull @.str.40, i64 48, i64 1, ptr %i.oe) #27 ; 0 uses
  br label %.critedge257

bb.ec:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw
  %i.of = load ptr, ptr %i.f, align 8, !tbaa !137 ; 2 uses
  %i.og = call i32 @SSL_version(ptr noundef %i.of)
  %i.oh = call i32 @SSL_is_dtls(ptr noundef %i.of)
  %.not.i354 = icmp eq i32 %i.oh, 0
  %i.oi = trunc i32 %i.og to i16                  ; 2 uses
  %i.oj = sub i16 512, %i.oi
  %.0.i355 = select i1 %.not.i354, i16 %i.oi, i16 %i.oj
  %i.ok = icmp ugt i16 %.0.i355, 771
  br i1 %i.ok, label %bb.ed, label %.critedge256

bb.ed:                                            ; preds = %bb.ec
  %i.ol = load i8, ptr %i.nq, align 8, !tbaa !138, !range !98, !noundef !99
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %.critedge256, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 1291
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !179, !range !98, !noundef !99
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 1329
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !281, !range !98, !noundef !99
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ot = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.ou = call fastcc noundef zeroext i1 @_ZL6IsPAKEPK6ssl_st(ptr noundef %i.ot)
  %i.ov = xor i1 %i.ou, true
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %i.ow = phi i1 [ false, %bb.ef ], [ false, %bb.ee ], [ %i.ov, %bb.eg ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.1165, i64 100
  %i.oy = load i8, ptr %i.ox, align 4, !tbaa !169, !range !98, !noundef !99 ; 2 uses
  %i.oz = zext i1 %i.ow to i8
  %.not229 = icmp eq i8 %i.oy, %i.oz
  br i1 %.not229, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pa = trunc nuw i8 %i.oy to i1
  %i.pb = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.pc = select i1 %i.pa, ptr @.str.42, ptr @.str.43
  %i.pd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pb, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.pc) #25 ; 0 uses
  br label %.critedge257

bb.ej:                                            ; preds = %bb.eh
  br i1 %i.ow, label %bb.ek, label %.critedge256

bb.ek:                                            ; preds = %bb.ej
  %i.pe = getelementptr inbounds nuw i8, ptr %.1165, i64 104 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !105
  %i.pg = call i32 @SSL_SESSION_early_data_capable(ptr noundef %i.pf)
  %i.ph = icmp ne i32 %i.pg, 0                    ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 1292
  %i.pj = load i8, ptr %i.pi, align 4, !tbaa !291, !range !98, !noundef !99
  %i.pk = zext i1 %i.ph to i8
  %.not230 = icmp eq i8 %i.pj, %i.pk
  br i1 %.not230, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.pl = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.pm = select i1 %i.ph, ptr @.str.42, ptr @.str.43
  %i.pn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pl, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.pm) #25 ; 0 uses
  br label %.critedge257

bb.em:                                            ; preds = %bb.ek
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 1837
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 1838 ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 2, !tbaa !92, !range !98, !noundef !99
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %bb.en, label %.critedge256

bb.en:                                            ; preds = %bb.em
  %i.ps = load ptr, ptr %i.pe, align 8, !tbaa !105
  %i.pt = call i32 @SSL_SESSION_is_resumable_across_names(ptr noundef %i.ps)
  %i.pu = icmp ne i32 %i.pt, 0                    ; 2 uses
  %i.pv = load i8, ptr %i.pp, align 2, !tbaa !92, !range !98, !noundef !99
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %_ZNKRSt8optionalIbE5valueEv.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNKRSt8optionalIbE5valueEv.exit:                 ; preds = %bb.en
  %i.px = load i8, ptr %i.po, align 1, !tbaa !106, !range !98, !noundef !99
  %i.py = zext i1 %i.pu to i8
  %.not231 = icmp eq i8 %i.px, %i.py
  br i1 %.not231, label %.critedge256, label %bb.ep

bb.ep:                                            ; preds = %_ZNKRSt8optionalIbE5valueEv.exit
  %i.pz = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.qa = select i1 %i.pu, ptr @.str.42, ptr @.str.43
  %i.qb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pz, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.qa) #25 ; 0 uses
  br label %.critedge257

.critedge256:                                     ; preds = %bb.em, %_ZNKRSt8optionalIbE5valueEv.exit, %bb.ec, %bb.ed, %bb.ej
  %i.qc = getelementptr inbounds nuw i8, ptr %.1165, i64 104 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !105
  store ptr null, ptr %i.qc, align 8, !tbaa !105
  %i.qe = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  store ptr %i.qd, ptr %0, align 8, !tbaa !105
  %.not.i.i.i.i356 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i356, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit, label %bb.eq

bb.eq:                                            ; preds = %.critedge256
  invoke void @SSL_SESSION_free(ptr noundef nonnull %i.qe)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #26
  unreachable

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit: ; preds = %.critedge256, %bb.eq
  %i.qh = load ptr, ptr %i.f, align 8, !tbaa !137 ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit
  %i.qi = call i32 @SSL_shutdown(ptr noundef %i.qh) ; 5 uses
  %i.qj = call noundef zeroext i1 @_Z10RetryAsyncP6ssl_sti(ptr noundef %i.qh, i32 noundef %i.qi)
  br i1 %i.qj, label %bb.es, label %_ZL10DoShutdownP6ssl_st.exit, !llvm.loop !1

_ZL10DoShutdownP6ssl_st.exit:                     ; preds = %bb.es
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 1329
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !281, !range !98, !noundef !99
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %_ZL10DoShutdownP6ssl_st.exit
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 1328
end_hunk_0
