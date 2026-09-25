Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.08?download=true
inline.NumInlined: 1401
inline.NumDeleted: 547
begin_hunk_0_@_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.sroa.861.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 2, ptr %.sroa.861.0..sroa_idx.i.i.i, align 8, !noalias !3912
  %.sroa.962.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ox, ptr %.sroa.962.0..sroa_idx.i.i.i, align 8, !noalias !3912
  invoke fastcc void @_RNCNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBd_14ProviderConfig11try_profile0000Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.fi unwind label %bb.fh, !noalias !3916

bb.fh:                                            ; preds = %bb.fg
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3912
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3912
  br label %bb.ff

bb.fj:                                            ; preds = %bb.fh, %bb.fd, %bb.fa, %bb.ex, %bb.es, %bb.eq
  %.pn18.pn.pn.i.i.i = phi { ptr, i32 } [ %i.pc, %bb.fh ], [ %i.od, %bb.ex ], [ %i.nu, %bb.eq ], [ %i.ov, %bb.fd ], [ %i.on, %bb.fa ], [ %i.nw, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3912
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB16_5error22EnvConfigFileLoadErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(168) %i.ag) #19
          to label %.body50.thread.i.i unwind label %bb.fk, !noalias !3916

bb.fk:                                            ; preds = %.body.i45.i.i, %bb.fj
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !3916
  unreachable

.body50.thread.i.i:                               ; preds = %.body.i45.i.i, %bb.fj, %bb.el, %bb.ar
  %i.pe = phi ptr [ %i.lc, %bb.fj ], [ %i.lc, %bb.el ], [ %i.pi, %.body.i45.i.i ], [ %i.dv, %bb.ar ]
  %i.pf = phi ptr [ %i.ld, %bb.fj ], [ %i.ld, %bb.el ], [ %i.pj, %.body.i45.i.i ], [ %i.dw, %bb.ar ]
  %i.pg = phi ptr [ %i.le, %bb.fj ], [ %i.le, %bb.el ], [ %i.pk, %.body.i45.i.i ], [ %i.dx, %bb.ar ]
  %i.ph = phi ptr [ %i.lf, %bb.fj ], [ %i.lf, %bb.el ], [ %i.pl, %.body.i45.i.i ], [ %i.dy, %bb.ar ]
  %.pn18.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn18.pn.pn.i.i.i, %bb.fj ], [ %i.nn, %bb.el ], [ %.pn7.i.i.i, %.body.i45.i.i ], [ %i.ed, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3912
  store i8 2, ptr %i.ph, align 8, !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i

.body.i45.i.i:                                    ; preds = %bb.ej, %.body22.i.i.i.i
  %i.pi = phi ptr [ %i.ms, %.body22.i.i.i.i ], [ %i.an, %bb.ej ]
  %i.pj = phi ptr [ %i.mt, %.body22.i.i.i.i ], [ %.phi.trans.insert.i, %bb.ej ]
  %i.pk = phi ptr [ %i.mu, %.body22.i.i.i.i ], [ %i.ax, %bb.ej ]
  %i.pl = phi ptr [ %i.mv, %.body22.i.i.i.i ], [ %.phi.trans.insert91.i.i, %bb.ej ]
  %i.pm = phi ptr [ %i.mx, %.body22.i.i.i.i ], [ %i.eh, %bb.ej ]
  %.pn7.i.i.i = phi { ptr, i32 } [ %.pn13.i.i.i.i, %.body22.i.i.i.i ], [ %i.nk, %bb.ej ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config7profile6parser4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.pm) #19
          to label %.body50.thread.i.i unwind label %bb.fk, !noalias !3916

.body50.i.i:                                      ; preds = %bb.at, %bb.as
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i = load i8, ptr %.phi.trans.insert91.i.i, align 8, !noalias !3907
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872.i.i)
  %cond.i54.i.i = icmp eq i8 %.pr.i.i, 3
  br i1 %cond.i54.i.i, label %bb.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i

bb.fl:                                            ; preds = %bb.ff, %bb.em
  %.sroa.070.0.copyload71.i.i = load i64, ptr %i.ag, align 8, !noalias !3960 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.872.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4.0..sroa_idx.i.i.i, i64 160, i1 false), !noalias !3960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3912
  store i8 1, ptr %i.lf, align 8, !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1179.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3907
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947.i.i.i)
  %i.po = icmp eq i64 %.sroa.070.0.copyload71.i.i, -9223372036854775806
  br i1 %i.po, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %.thread81.i.i
  %i.pp = phi ptr [ %i.lc, %bb.fl ], [ %i.he, %.thread81.i.i ]
  %i.pq = phi ptr [ %i.ld, %bb.fl ], [ %i.hf, %.thread81.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872.i.i)
  br label %bb.fw

bb.fn:                                            ; preds = %bb.fl
  store i64 %.sroa.070.0.copyload71.i.i, ptr %i.ah, align 8, !noalias !3907
  %.sroa.872.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.872.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.872.i.i, i64 160, i1 false), !noalias !3907
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872.i.i)
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !noalias !3907, !nonnull !6, !align !12, !noundef !6
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  store i8 0, ptr %i.pt, align 1, !noalias !3907
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.pv = load ptr, ptr %i.pu, align 8, !noalias !3907, !nonnull !6, !align !12, !noundef !6
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.px = load i32, ptr %i.pw, align 8, !noalias !3907, !noundef !6
  %i.py = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtB5_8OnceCellINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB1D_5error22EnvConfigFileLoadErrorEE9set_valueCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ps, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.ah, ptr noundef nonnull align 8 %i.pv, i32 noundef %i.px)
          to label %bb.fp unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i

bb.fp:                                            ; preds = %bb.fn
  store i8 0, ptr %i.pt, align 1, !noalias !3907
  br label %bb.ft

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i: ; preds = %bb.fq, %bb.fo, %.body50.i.i, %.body50.thread.i.i
  %i.qa = phi ptr [ %i.lc, %bb.fo ], [ %i.an, %bb.fq ], [ %i.pe, %.body50.thread.i.i ], [ %i.an, %.body50.i.i ]
  %i.qb = phi ptr [ %i.ld, %bb.fo ], [ %.phi.trans.insert.i, %bb.fq ], [ %i.pf, %.body50.thread.i.i ], [ %.phi.trans.insert.i, %.body50.i.i ]
  %i.qc = phi ptr [ %i.le, %bb.fo ], [ %i.ax, %bb.fq ], [ %i.pg, %.body50.thread.i.i ], [ %i.ax, %.body50.i.i ]
  %.pn27.i.i = phi { ptr, i32 } [ %i.pz, %bb.fo ], [ %i.pn, %bb.fq ], [ %.pn18.pn.pn.pn.pn.i.i.i, %.body50.thread.i.i ], [ %i.pn, %.body50.i.i ]
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !range !10, !noalias !3907, !noundef !6
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.fr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.fq:                                            ; preds = %.body50.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config7profile6parser4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.qg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.fr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i
  store i8 0, ptr %i.qd, align 1, !noalias !3907
  br label %.body.i.i

bb.fr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBS_14ProviderConfig11try_profile000ECs9rVkZwOUgsI_13deltalake_aws.exit56.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 448
  invoke void @_RNvXs1_NtNtCskQDtHcQtBkN_5tokio4sync9semaphoreNtB5_15SemaphorePermitNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.t

.body.i.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.body34.i.i, %bb.r, %bb.o, %bb.n
  %i.qi = phi ptr [ %i.bh, %bb.n ], [ %i.an, %bb.o ], [ %i.bh, %bb.r ], [ %i.dr, %.body34.i.i ], [ %i.qa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.qj = phi ptr [ %i.bi, %bb.n ], [ %.phi.trans.insert.i, %bb.o ], [ %i.bi, %bb.r ], [ %i.ds, %.body34.i.i ], [ %i.qb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.qk = phi ptr [ %i.bj, %bb.n ], [ %i.ax, %bb.o ], [ %i.bj, %bb.r ], [ %i.dt, %.body34.i.i ], [ %i.qc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.pn31.i.i = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bo, %bb.o ], [ %i.bs, %bb.r ], [ %.pn19.i.i, %.body34.i.i ], [ %.pn27.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync9semaphore15SemaphorePermitECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ql, align 8, !noalias !3907
  store i8 2, ptr %i.qj, align 2, !noalias !3907
  br label %.body.i

bb.fs:                                            ; preds = %bb.i, %bb.h
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ft:                                            ; preds = %bb.fp, %bb.am, %bb.s
  %i.qn = phi ptr [ %i.ch, %bb.am ], [ %i.lc, %bb.fp ], [ %i.bh, %bb.s ] ; 2 uses
  %i.qo = phi ptr [ %i.ci, %bb.am ], [ %i.ld, %bb.fp ], [ %i.bi, %bb.s ]
  %i.qp = phi ptr [ %i.cj, %bb.am ], [ %i.le, %bb.fp ], [ %i.bj, %bb.s ]
  %.sroa.09.1.i.i = phi ptr [ %i.dh, %bb.am ], [ %i.py, %bb.fp ], [ %i.bt, %bb.s ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.qq, align 8, !noalias !3907
  store i8 1, ptr %i.qo, align 2, !noalias !3907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3906
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.qp)
          to label %bb.fx unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.i:                                          ; preds = %bb.fs, %.body.i.i
  %i.qs = phi ptr [ %i.qi, %.body.i.i ], [ %i.an, %bb.fs ]
  %i.qt = phi ptr [ %i.qk, %.body.i.i ], [ %i.ax, %bb.fs ]
  %.pn7.i = phi { ptr, i32 } [ %.pn31.i.i, %.body.i.i ], [ %i.qm, %bb.fs ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.qt) #19
          to label %.body.thread unwind label %bb.fv

bb.fv:                                            ; preds = %.body.i
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

.body:                                            ; preds = %bb.f, %bb.e
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.an, align 8
  %cond.i12 = icmp eq i8 %.pr, 3
  br i1 %cond.i12, label %bb.fy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig11try_profile0ECs9rVkZwOUgsI_13deltalake_aws.exit14

common.ret:                                       ; preds = %bb.fx, %bb.fw
  %common.ret.op = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.fw ], [ %i.ra, %bb.fx ]
  ret { i64, ptr } %common.ret.op

bb.fw:                                            ; preds = %bb.fm, %bb.al, %bb.p
  %i.qw = phi ptr [ %i.bh, %bb.p ], [ %i.ch, %bb.al ], [ %i.pp, %bb.fm ]
  %i.qx = phi ptr [ %i.bi, %bb.p ], [ %i.ci, %bb.al ], [ %i.pq, %bb.fm ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.p ], [ 4, %bb.al ], [ 5, %bb.fm ]
  store i8 %.sink.i.ph.i, ptr %i.qx, align 2, !noalias !3907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3906
  store i8 3, ptr %i.qw, align 8, !noalias !3906
  store i8 3, ptr %i.ai, align 8
  br label %common.ret

bb.fx:                                            ; preds = %bb.ft
  %i.qy = load i64, ptr %.sroa.09.1.i.i, align 8, !range !16, !alias.scope !3961, !noundef !6
  %i.qz = icmp eq i64 %i.qy, -9223372036854775807
  store i8 1, ptr %i.qn, align 8, !noalias !3906
  %spec.select.i = select i1 %i.qz, ptr null, ptr %.sroa.09.1.i.i
  store i8 1, ptr %i.ai, align 8
  %i.ra = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %spec.select.i, 1
  br label %common.ret

bb.fy:                                            ; preds = %.body
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.rb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig11try_profile0ECs9rVkZwOUgsI_13deltalake_aws.exit14 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.rc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB7_7Builder5build0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [152 x i8], align 8               ; 5 uses
  %i.c = alloca [400 x i8], align 8               ; 5 uses
  %i.d = alloca [152 x i8], align 8               ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [240 x i8], align 8               ; 5 uses
  %i.k = alloca [240 x i8], align 8               ; 5 uses
  %i.l = alloca [400 x i8], align 8               ; 7 uses
  %i.m = alloca [368 x i8], align 8               ; 5 uses
  %i.n = alloca [368 x i8], align 8               ; 5 uses
  %i.o = alloca [152 x i8], align 8               ; 8 uses
  %i.p = alloca [312 x i8], align 8               ; 5 uses
  %i.q = alloca [312 x i8], align 8               ; 5 uses
  %i.r = alloca [152 x i8], align 8               ; 8 uses
  %i.s = alloca [288 x i8], align 8               ; 5 uses
  %i.t = alloca [288 x i8], align 8               ; 5 uses
  %i.u = alloca [96 x i8], align 8                ; 8 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [192 x i8], align 8               ; 8 uses
  %i.x = alloca [192 x i8], align 8               ; 13 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [536 x i8], align 8               ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3904 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !17, !noundef !6
  switch i8 %i.ae, label %default.unreachable133 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

default.unreachable133:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3905 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.af, i8 1, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1952) %i.ag, ptr noundef nonnull align 8 dereferenceable(1952) %1, i64 1952, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3888
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  br label %bb.ac

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3896
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3936 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !nonnull !6, !align !12, !noundef !6
  store ptr %i.ai, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3944
  store ptr %i.al, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvXs3_NtNtCsaB04DkjCm5a_10aws_config4meta6regionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_13ProvideRegionEL_EB1l_6region(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 0, ptr %i.af, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.z, ptr noundef nonnull align 8 dereferenceable(536) %i.an, i64 536, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3912 ; 2 uses
  invoke void @_RNvMs_NtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtB4_7Builder5build(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(536) %i.z)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3936
  store ptr %i.ao, ptr %i.aq, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4048
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ac

.body53:                                          ; preds = %bb.al, %bb.aj, %bb.ad
  %.pn10 = phi { ptr, i32 } [ %i.cf, %bb.aj ], [ %i.bx, %bb.ad ], [ %i.ch, %bb.al ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3912
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region18DefaultRegionChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #19
          to label %.body unwind label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 3912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.n

bb.k:                                             ; preds = %bb.o, %bb.s, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %i.ax, %bb.o ], [ %i.as, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3936
  %.val49 = load ptr, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %1, i64 3944
  %.val50 = load ptr, ptr %i.av, align 8, !nonnull !6, !align !12, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val49, ptr nonnull %.val50) #19
          to label %.body unwind label %bb.ab

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #21
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #21
  unreachable

bb.n:                                             ; preds = %bb.c, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 3912 ; 3 uses
  invoke void @_RNvXs_NtNtNtCsaB04DkjCm5a_10aws_config4meta6region6futureNtB4_13ProvideRegionNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #19
          to label %bb.k unwind label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.aa, align 8, !range !11, !noundef !6
  %i.az = icmp eq i64 %i.ay, -9223372036854775806
  br i1 %i.az, label %bb.q, label %bb.r

common.ret:                                       ; preds = %bb.bu, %bb.af, %bb.q
  %.sink = phi i8 [ 1, %bb.bu ], [ 4, %bb.af ], [ 3, %bb.q ]
  store i8 %.sink, ptr %i.ad, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.aw)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.t:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 3936
  %.val = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bc = getelementptr i8, ptr %1, i64 3944
  %.val48 = load ptr, ptr %i.bc, align 8, !nonnull !6, !align !12, !noundef !6 ; 5 uses
  %i.bd = load ptr, ptr %.val48, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
end_hunk_0
