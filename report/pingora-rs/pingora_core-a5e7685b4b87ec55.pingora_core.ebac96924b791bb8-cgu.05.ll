Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.05?download=true
inline.NumInlined: 1150
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB10_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEB14_:bb.a

bb.am:                                            ; preds = %bb.al
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

.body29:                                          ; preds = %bb.at
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread

bb.an:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ch = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.ci = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ck = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  store ptr %i.ck, ptr %i.e, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cc, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @9, ptr %i.cm, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1671
  %i.cn = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !1671 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ap, label %bb.at, !prof !10

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
          to label %.noexc40 unwind label %bb.aq

.noexc40:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #32
          to label %.body29.thread unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.as:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cr = invoke { i64, ptr } @_RNvMs0_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cn)
          to label %bb.au unwind label %.body29   ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.cs = extractvalue { i64, ptr } %i.cr, 0
  %i.ct = extractvalue { i64, ptr } %i.cr, 1      ; 2 uses
  %i.cu = trunc nuw i64 %i.cs to i1
  br i1 %i.cu, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cv, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %i.cw = load ptr, ptr %i.h, align 8, !alias.scope !1674, !nonnull !8, !noundef !8
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !1674
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.ae

bb.ax:                                            ; preds = %bb.au
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.db = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  store ptr %i.da, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core.exit44

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core.exit44: ; preds = %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.dc = load ptr, ptr %i.j, align 8, !alias.scope !1679, !nonnull !8, !noundef !8
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !1679
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core.exit44

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core.exit44 unwind label %bb.t

.body29.thread:                                   ; preds = %bb.aq, %bb.al, %.body29, %bb.ba
  %eh.lpad-body3057 = phi { ptr, i32 } [ %i.cg, %.body29 ], [ %i.di, %bb.ba ], [ %i.ce, %bb.al ], [ %i.cp, %bb.aq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.df = load ptr, ptr %i.h, align 8, !alias.scope !1682, !nonnull !8, !noundef !8
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !1682
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.az, label %.thread

bb.az:                                            ; preds = %.body29.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #34
          to label %.thread unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ai
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB1E_14OffloadRuntime10init_pools0INtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_0EB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.g) #32
          to label %.body29.thread unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %bb.az, %bb.y, %bb.bi, %.body34.thread, %bb.bc, %bb.ba
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bc:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #32
          to label %.thread unwind label %bb.bb

bb.bd:                                            ; preds = %.body34.thread, %.body34
  %.pn2768 = phi { ptr, i32 } [ %.pn2769, %.body34.thread ], [ %.pn27, %.body34 ]
  %.sroa.018.066 = phi i1 [ %.sroa.018.067, %.body34.thread ], [ %.sroa.018.0, %.body34 ]
  %.sroa.017.064 = phi i8 [ %.sroa.017.065, %.body34.thread ], [ %.sroa.017.0, %.body34 ]
  %i.dk = trunc nuw i8 %.sroa.017.064 to i1
  br i1 %i.dk, label %bb.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit

.body34.thread:                                   ; preds = %bb.n, %bb.o, %bb.f, %.body34
  %.pn2769 = phi { ptr, i32 } [ %.pn27, %.body34 ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ], [ %i.u, %bb.f ]
  %.sroa.018.067 = phi i1 [ %.sroa.018.0, %.body34 ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.065 = phi i8 [ %.sroa.017.0, %.body34 ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtBG_14OffloadRuntime10init_pools0EBK_(ptr noalias nofree noundef align 8 dereferenceable(88) %6) #32
          to label %bb.bd unwind label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.bf, %bb.be, %bb.bg, %bb.bd
  br i1 %.sroa.018.066, label %bb.bi, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.dl = load ptr, ptr %i.k, align 8, !alias.scope !1683, !noundef !8 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dn = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !1684
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs2awuzAz5vY4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.bb

bb.bh:                                            ; preds = %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit
  resume { ptr, i32 } %.pn2768

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #32
          to label %bb.bh unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB3v_6Server3runs0_0ETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB31_EEB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = mul i64 %i.c, 104                        ; 7 uses
  %i.h = udiv i64 %i.g, 48                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB14_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB2W_6Server3runs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropTINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB2r_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB5b_E0INtNtBc_6result6ResultB4A_zEEB2Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB1g_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB38_6Server3runs0_0EEB3a_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB9_6string6StringEE32forget_allocation_drop_remainingCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtBI_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB2r_EEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 48                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 48
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #35
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #35 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread, !prof !1685

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #36
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB1g_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB38_6Server3runs0_0EEB3a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !1688, !noundef !8 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1688
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1688
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1688
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noalias !1688, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !28, !noalias !1688, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1688
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #36
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1688, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1688
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1688
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1688
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB8_10SerializerpENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_strNtB3_16InferScalarStyleNtNtB13_2de7Visitor9visit_strNtNtBa_5error5ErrorECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskItKYAOUBlG_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %. = select i1 %i.a, i8 2, i8 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %., ptr %i.b, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtCskCJvoiymbRN_5ahash13fallback_hash7AHasherECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
.split:
  switch i64 %1, label %.lr.ph.preheader.split.split [
    i64 0, label %._crit_edge
    i64 1, label %._crit_edge.loopexit.peel.begin.thread
    i64 2, label %.lr.ph.peel
  ]

.lr.ph.preheader.split.split:                     ; preds = %.split
  %i.a = add i64 %1, -3
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.split, %bb.s
  %i.b = phi i64 [ 0, %.split ], [ %.sroa.0.1, %bb.s ] ; 4 uses
  %i.c = phi i64 [ 0, %.split ], [ %.sroa.012.2, %bb.s ] ; 3 uses
  %i.d = phi i64 [ 0, %.split ], [ %i.au, %bb.s ] ; 6 uses
  %i.e = add nuw i64 %i.d, 1                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !noundef !8
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.a, label %._crit_edge.loopexit.peel.begin

bb.a:                                             ; preds = %.lr.ph.peel
  %i.i = icmp ugt i64 %i.d, %i.b
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw i64 %i.d, %i.b                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.l = add i64 %i.j, %i.c                       ; 2 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 62)
  tail call fastcc void @_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.3.peel51 = phi i64 [ %i.m, %bb.b ], [ %i.c, %bb.a ]
  %i.n = sub nuw i64 %1, %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.p = icmp eq i64 %i.n, 1
  %i.q = load i8, ptr %i.o, align 1, !noundef !8
  %i.r = icmp eq i8 %i.q, 46                      ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.t = load i8, ptr %i.s, align 1, !noundef !8
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.024.0.peel52 = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ]
  %i.v = add i64 %.sroa.024.0.peel52, %i.e
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph.peel, %bb.h
  %.sroa.012.2.peel = phi i64 [ %.sroa.012.3.peel51, %bb.h ], [ %i.c, %.lr.ph.peel ] ; 3 uses
  %.sroa.0.1.peel = phi i64 [ %i.v, %bb.h ], [ %i.b, %.lr.ph.peel ] ; 4 uses
  %i.w = add nuw i64 %i.d, 2                      ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.y = load i8, ptr %i.x, align 1, !noundef !8
  %i.z = icmp eq i8 %i.y, 47
  br i1 %i.z, label %bb.i, label %._crit_edge

._crit_edge.loopexit.peel.begin.thread:           ; preds = %.split
  %i.aa = load i8, ptr %0, align 1, !noundef !8
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %.thread48, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %.not = icmp ult i64 %i.d, %.sroa.0.1.peel
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sub nuw i64 %i.e, %.sroa.0.1.peel       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.peel
  %i.ae = add i64 %i.ac, %.sroa.012.2.peel        ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 62)
  tail call fastcc void @_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ac) #37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.012.3.peel = phi i64 [ %i.af, %bb.j ], [ %.sroa.012.2.peel, %bb.i ] ; 6 uses
  %i.ag = sub nuw i64 %1, %i.w
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 3 uses
  %i.ai = icmp eq i64 %i.ag, 1
  br i1 %i.ai, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not27.peel = icmp eq i64 %1, %i.w
  br i1 %.not27.peel, label %.thread48, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i8, ptr %i.ah, align 1, !noundef !8
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.n, label %.thread48

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
end_hunk_0
