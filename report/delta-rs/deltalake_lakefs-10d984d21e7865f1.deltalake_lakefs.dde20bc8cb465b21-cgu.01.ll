Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.01?download=true
inline.NumInlined: 1127
inline.NumDeleted: 348
begin_hunk_0_@_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit227.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1466
  br label %bb.qp

bb.se:                                            ; preds = %bb.sf, %bb.qp
  store i8 0, ptr %i.all, align 1, !noalias !1466
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.aot)
          to label %bb.sh unwind label %bb.qs, !noalias !1467

bb.sf:                                            ; preds = %bb.qp
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.aou)
          to label %bb.se unwind label %bb.sg, !noalias !1467

bb.sg:                                            ; preds = %bb.qi, %bb.qg, %bb.sf
  %i.aov = phi ptr [ %i.aku, %bb.qi ], [ %i.aku, %bb.qg ], [ %i.alj, %bb.sf ]
  %i.aow = phi ptr [ %i.akv, %bb.qi ], [ %i.akv, %bb.qg ], [ %i.alk, %bb.sf ]
  %i.aox = landingpad { ptr, i32 }
          cleanup
  br label %bb.rj

bb.sh:                                            ; preds = %bb.se
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aoy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i229.i unwind label %bb.si, !noalias !1467

bb.si:                                            ; preds = %bb.sh
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aoy)
          to label %.body166.i unwind label %bb.sj, !noalias !1467

bb.sj:                                            ; preds = %bb.si
  %i.apa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1467
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i229.i: ; preds = %bb.sh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aoy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i unwind label %bb.qw, !noalias !1467

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i229.i
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i unwind label %bb.sk, !noalias !1467

bb.sk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i
  %i.apc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %.body171.i unwind label %bb.sl, !noalias !1467

bb.sl:                                            ; preds = %bb.sk
  %i.apd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1467
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit239.i unwind label %bb.qz, !noalias !1467

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit239.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ape)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i241.i unwind label %bb.sm, !noalias !1467

bb.sm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit239.i
  %i.apf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ape)
          to label %.body177.i unwind label %bb.sn, !noalias !1467

bb.sn:                                            ; preds = %bb.sm
  %i.apg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1467
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i241.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit239.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ape)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit245.i unwind label %bb.rc, !noalias !1467

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit245.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i241.i
  %i.aph = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i247.i unwind label %bb.so, !noalias !1467

bb.so:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit245.i
  %i.api = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %.body183.i unwind label %bb.sp, !noalias !1467

bb.sp:                                            ; preds = %bb.so
  %i.apj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1467
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i247.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit245.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i unwind label %bb.rf, !noalias !1467

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i247.i
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i253.invoke.i unwind label %bb.sq, !noalias !1467

bb.sq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i
  %i.apl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apk)
          to label %.body189.i unwind label %bb.sr, !noalias !1467

bb.sr:                                            ; preds = %bb.sq
  %i.apm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1467
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i253.invoke.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i
  %i.apn = phi ptr [ %i.alj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i ], [ %i.aku, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i ] ; 2 uses
  %i.apo = phi ptr [ %i.alk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i ], [ %i.akv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i ] ; 2 uses
  %i.app = phi ptr [ %i.apk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit251.i ], [ %i.anf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.app)
          to label %bb.sx unwind label %bb.ri, !noalias !1467

bb.ss:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit219.i
  %i.apq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1466
  br label %bb.st

bb.st:                                            ; preds = %bb.sv, %bb.su, %bb.ss
  %.pn76.pn.i = phi { ptr, i32 } [ %eh.lpad-body217.i, %bb.su ], [ %i.apq, %bb.ss ], [ %.pn74.i, %bb.sv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1466
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #22
          to label %.body224.i unwind label %bb.px, !noalias !1467

bb.su:                                            ; preds = %bb.sa, %bb.ry
  %eh.lpad-body217.i = phi { ptr, i32 } [ %i.aoo, %bb.sa ], [ %i.aom, %bb.ry ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1466
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #22
          to label %bb.st unwind label %bb.px, !noalias !1467

bb.sv:                                            ; preds = %bb.rx, %bb.rs
  %.pn74.i = phi { ptr, i32 } [ %i.aol, %bb.rx ], [ %i.any, %bb.rs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1466
  br label %bb.st

bb.sw:                                            ; preds = %bb.qq
  %i.apr = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.apr) #22
          to label %bb.rj unwind label %bb.px, !noalias !1467

.thread530:                                       ; preds = %bb.qf, %bb.rn
  %i.aps = phi ptr [ %i.aku, %bb.qf ], [ %i.anp, %bb.rn ]
  %.sink.i224.ph = phi i8 [ 3, %bb.qf ], [ 4, %bb.rn ]
  store i8 %.sink.i224.ph, ptr %i.aps, align 1, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6298.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.sy

bb.sx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i253.invoke.i
  %.sroa.0446.0.copyload447 = load i64, ptr %i.p, align 8, !noalias !1508 ; 2 uses
  %.sroa.9448.0..sroa_idx449 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9448, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9448.0..sroa_idx449, i64 64, i1 false), !noalias !1508
  store i8 1, ptr %i.apn, align 1, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6298.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.apt = icmp eq i64 %.sroa.0446.0.copyload447, -9223372036854775780
  br i1 %i.apt, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %.thread530, %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9448)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %common.ret

bb.sz:                                            ; preds = %bb.sx
  %.sroa.4451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4451.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9448, i64 64, i1 false)
  store i64 %.sroa.0446.0.copyload447, ptr %i.fi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9448)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient5merge0EBP_(ptr noundef nonnull align 8 %i.apo)
          to label %bb.tb unwind label %bb.ta

bb.ta:                                            ; preds = %bb.uo, %bb.sz
  %i.apu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.tb:                                            ; preds = %bb.sz
  %i.apv = load i64, ptr %i.fi, align 8, !range !46, !noundef !15 ; 2 uses
  switch i64 %i.apv, label %.thread535 [
    i64 -9223372036854775781, label %bb.tc
    i64 -9223372036854775790, label %bb.uc
  ]

bb.tc:                                            ; preds = %bb.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %bb.td

bb.td:                                            ; preds = %bb.tc, %bb.kw, %bb.lg, %bb.kx, %bb.la, %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.apw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !nonnull !15, !align !16, !noundef !15 ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.apz = getelementptr i8, ptr %i.apx, i64 232
  %.val128 = load ptr, ptr %i.apz, align 8, !nonnull !15, !noundef !15
  %i.aqa = getelementptr i8, ptr %i.apx, i64 240
  %.val129 = load i64, ptr %i.aqa, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1509
  store i64 0, ptr %i.f, align 8, !noalias !1509
  %.sroa.42.0..sroa_idx.i.i254 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i254, align 8, !noalias !1509
  %.sroa.53.0..sroa_idx.i.i255 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i255, align 8, !noalias !1509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1509
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1610612768, ptr %i.aqb, align 8, !noalias !1509
  %.sroa.4.0..sroa_idx.i.i256 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i256, align 4, !noalias !1509
  %.sroa.5.0..sroa_idx.i.i257 = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i257, align 2, !noalias !1509
  store ptr %i.f, ptr %i.e, align 8, !noalias !1509
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @186, ptr %i.aqc, align 8, !noalias !1509
  %i.aqd = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val128, i64 noundef %.val129, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i258 unwind label %bb.te, !noalias !1509

bb.te:                                            ; preds = %bb.tf, %bb.td
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #22
          to label %.body260 unwind label %bb.tg, !noalias !1509

_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i258: ; preds = %bb.td
  br i1 %i.aqd, label %bb.tf, label %bb.ti, !prof !40

bb.tf:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i258
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28
          to label %.noexc.i.i259 unwind label %bb.te, !noalias !1509

.noexc.i.i259:                                    ; preds = %bb.tf
  unreachable

bb.tg:                                            ; preds = %bb.te
  %i.aqf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1509
  unreachable

bb.th:                                            ; preds = %bb.ti
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %.body260

.body260:                                         ; preds = %bb.te, %bb.th
  %eh.lpad-body261 = phi { ptr, i32 } [ %i.aqg, %bb.th ], [ %i.aqe, %bb.te ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %bb.lh

bb.ti:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1509
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient13decompose_url(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.apy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eo)
          to label %bb.tj unwind label %bb.th

bb.tj:                                            ; preds = %bb.ti
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  %i.aqh = getelementptr inbounds nuw i8, ptr %1, i64 194 ; 2 uses
  store i8 1, ptr %i.aqh, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264 unwind label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqi)
          to label %.body265 unwind label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  %i.aqk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264: ; preds = %bb.tj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268 unwind label %bb.tm

bb.tm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264
  %i.aql = landingpad { ptr, i32 }
          cleanup
  br label %.body265

.body265:                                         ; preds = %bb.tk, %bb.tm
  %eh.lpad-body266 = phi { ptr, i32 } [ %i.aql, %bb.tm ], [ %i.aqj, %bb.tk ]
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqm) #22
          to label %.body271 unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.ep, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i270 unwind label %bb.tn

bb.tn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqn)
          to label %.body271 unwind label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.aqp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i270: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit274 unwind label %bb.tp

.body271:                                         ; preds = %bb.tp, %bb.tn, %.body265
  %.pn66 = phi { ptr, i32 } [ %eh.lpad-body266, %.body265 ], [ %i.aqq, %bb.tp ], [ %i.aqo, %bb.tn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %bb.ub

bb.tp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i270
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  br label %.body271

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit274: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0468)
  %i.aqr = load ptr, ptr %i.apw, align 8, !nonnull !15, !align !16, !noundef !15
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  store i8 0, ptr %i.aqh, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.aqt, i64 16, i1 false)
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient15get_transaction(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aqs, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.el)
          to label %bb.tr unwind label %bb.tq

bb.tq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit274
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en) #22
          to label %bb.ua unwind label %bb.s

bb.tr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  %i.aqv = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.aqw = load i64, ptr %i.em, align 8, !range !46, !alias.scope !1511, !noundef !15
  %.not.i275 = icmp eq i64 %i.aqw, -9223372036854775781
  br i1 %.not.i275, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276.thread, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276.thread: ; preds = %bb.tr
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqy, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aqx, i64 24, i1 false), !alias.scope !1512
  store i64 -9223372036854775781, ptr %i.aqv, align 8, !alias.scope !1510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.tt

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276: ; preds = %bb.tr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aqv, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.em, i64 72, i1 false), !alias.scope !1512
  %.pr533 = load i64, ptr %i.aqv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  %.not70.not = icmp eq i64 %.pr533, -9223372036854775781
  br i1 %.not70.not, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.aqv, i64 72, i1 false)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16TransactionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ei, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.tu unwind label %bb.tz

bb.tt:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276.thread, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit276
  %i.aqz = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0468.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0468, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0468.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aqz, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0468, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !alias.scope !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %i.ara = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ara, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0468, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0468)
  %.sroa.8474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.aqs, ptr %.sroa.8474.0..sroa_idx, align 8
  %.sroa.10476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i8 0, ptr %.sroa.10476.0..sroa_idx, align 8
  br label %bb.uq

bb.tu:                                            ; preds = %bb.ts
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i280 unwind label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.arb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %.body281 unwind label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.arc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i280: ; preds = %bb.tu
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit284 unwind label %bb.tx

.body281:                                         ; preds = %bb.tx, %bb.tv, %bb.tz
  %.pn72 = phi { ptr, i32 } [ %i.arf, %bb.tz ], [ %i.ard, %bb.tx ], [ %i.arb, %bb.tv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0468)
  br label %bb.ub

bb.tx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i280
  %i.ard = landingpad { ptr, i32 }
          cleanup
  br label %.body281

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit284: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0468)
  br label %bb.ty

bb.ty:                                            ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtBP_6kernel11transaction16TransactionErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs.exit293, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit284
  %i.are = getelementptr inbounds nuw i8, ptr %1, i64 194
  store i8 0, ptr %i.are, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %bb.mt

bb.tz:                                            ; preds = %bb.ts
  %i.arf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en) #22
          to label %.body281 unwind label %bb.s

bb.ua:                                            ; preds = %bb.tq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0468)
  br label %bb.ub

bb.ub:                                            ; preds = %.body281, %bb.ua, %bb.up, %bb.uu, %bb.uy, %.body271
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %.pn66, %.body271 ], [ %i.asj, %bb.uy ], [ %.pn72, %.body281 ], [ %i.ase, %bb.uu ], [ %i.asa, %bb.up ], [ %i.aqu, %bb.ua ]
  %i.arg = getelementptr inbounds nuw i8, ptr %1, i64 194 ; 2 uses
  %i.arh = load i8, ptr %i.arg, align 2, !range !27, !noundef !15
  %i.ari = trunc nuw i8 %i.arh to i1
  br i1 %i.ari, label %bb.wf, label %bb.we

bb.uc:                                            ; preds = %bb.tb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1516
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc287 unwind label %bb.ug

.noexc287:                                        ; preds = %bb.uc
  %i.arj = load i64, ptr %i.c, align 8, !range !14, !noalias !1516, !noundef !15
  %i.ark = trunc nuw i64 %i.arj to i1
  %i.arl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.arm = load i64, ptr %i.arl, align 8, !range !21, !noalias !1516, !noundef !15 ; 3 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ark, label %bb.ud, label %bb.uh, !prof !40

bb.ud:                                            ; preds = %.noexc287
  %i.aro = load i64, ptr %i.arn, align 8, !noalias !1516
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.arm, i64 %i.aro) #28
          to label %.noexc288 unwind label %bb.ug

.noexc288:                                        ; preds = %bb.ud
  unreachable

.thread535:                                       ; preds = %bb.tb
  %3 = icmp ne i64 %i.apv, -9223372036854775788
  call void @llvm.assume(i1 %3)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.fi, i64 72, i1 false)
  store i64 -9223372036854775728, ptr %i.ei, align 16
  br label %bb.mn

bb.ue:                                            ; preds = %.body, %bb.ug
  %.pn77 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.arr, %bb.ug ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  %i.arp = load i64, ptr %i.fi, align 8, !range !46, !alias.scope !1517, !noundef !15
  %i.arq = icmp eq i64 %i.arp, -9223372036854775781
  br i1 %i.arq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.fi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.s

bb.ug:                                            ; preds = %bb.ud, %bb.uc
  %i.arr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ue

bb.uh:                                            ; preds = %.noexc287
  %i.ars = load ptr, ptr %i.arn, align 8, !noalias !1516, !nonnull !15, !noundef !15 ; 2 uses
  %i.art = icmp ugt i64 %i.arm, 11
  call void @llvm.assume(i1 %i.art)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ars, ptr noundef nonnull align 1 dereferenceable(12) @13, i64 12, i1 false), !noalias !1518
  store i64 %i.arm, ptr %i.ez, align 8, !alias.scope !1519
  %.sroa.4.0..sroa_idx.i.i285 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ars, ptr %.sroa.4.0..sroa_idx.i.i285, align 8, !alias.scope !1519
  %.sroa.5.0..sroa_idx.i.i286 = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 12, ptr %.sroa.5.0..sroa_idx.i.i286, align 8, !alias.scope !1519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ey, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 12)
          to label %bb.uj unwind label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.aru = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ul, %bb.ui
  %eh.lpad-body = phi { ptr, i32 } [ %i.aru, %bb.ui ], [ %i.arx, %bb.ul ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez) #22
          to label %bb.ue unwind label %bb.s

bb.uj:                                            ; preds = %bb.uh
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1520
  %i.arv = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 32, 1321) 96, i64 noundef range(i64 8, 17) 16) #25, !noalias !1520 ; 3 uses
  %i.arw = icmp eq ptr %i.arv, null
  br i1 %i.arw, label %bb.uk, label %bb.un, !prof !40

bb.uk:                                            ; preds = %bb.uj
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #28
          to label %.noexc290 unwind label %bb.ul

.noexc290:                                        ; preds = %bb.uk
  unreachable

bb.ul:                                            ; preds = %bb.uk
  %i.arx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.ey) #22
          to label %.body unwind label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.ary = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.un:                                            ; preds = %bb.uj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.arv, ptr noundef nonnull align 16 dereferenceable(96) %i.ey, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  store i64 -9223372036854775728, ptr %i.ei, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 -9223372036854775782, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store ptr %i.arv, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr @15, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %i.arz = load i64, ptr %i.fi, align 8, !range !46, !noundef !15
  %.not540 = icmp eq i64 %i.arz, -9223372036854775781
  br i1 %.not540, label %bb.mn, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.fi)
          to label %bb.mn unwind label %bb.ta

bb.up:                                            ; preds = %bb.uq
  %i.asa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13delete_branch0EBP_(ptr noundef nonnull align 8 %i.asb) #22
          to label %bb.ub unwind label %bb.s

bb.uq:                                            ; preds = %bb.c, %bb.tt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB6_12LakeFSClient13delete_branch0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ek, ptr noundef nonnull align 8 %i.asb, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ur unwind label %bb.up

bb.ur:                                            ; preds = %bb.uq
  %i.asc = load i64, ptr %i.ek, align 8, !range !47, !noundef !15 ; 3 uses
  %i.asd = icmp eq i64 %i.asc, -9223372036854775780
  br i1 %i.asd, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %common.ret

bb.ut:                                            ; preds = %bb.ur
  %.sroa.3479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3479, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3479.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13delete_branch0EBP_(ptr noundef nonnull align 8 %i.asb)
          to label %bb.uv unwind label %bb.uu

bb.uu:                                            ; preds = %bb.uw, %bb.ut
  %i.ase = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

bb.uv:                                            ; preds = %bb.ut
  %.not.i291 = icmp eq i64 %i.asc, -9223372036854775781
  br i1 %.not.i291, label %bb.ux, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %.sroa.2481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2481.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3479, i64 64, i1 false)
  store i64 %i.asc, ptr %i.b, align 8, !noalias !1521
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16TransactionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ei, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtBP_6kernel11transaction16TransactionErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs.exit293 unwind label %bb.uu

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtBP_6kernel11transaction16TransactionErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs.exit293: ; preds = %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ty

bb.ux:                                            ; preds = %bb.uv
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.asg = load ptr, ptr %i.asf, align 8, !nonnull !15, !align !16, !noundef !15
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.asi, i64 16, i1 false)
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient17clear_transaction(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ash, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.ej)
          to label %bb.uz unwind label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.asj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.ub

bb.uz:                                            ; preds = %bb.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  store i64 -9223372036854775711, ptr %i.ei, align 16
  %i.ask = getelementptr inbounds nuw i8, ptr %1, i64 194
  store i8 0, ptr %i.ask, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.asl = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.asl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i295 unwind label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.asm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.asl)
          to label %.body215 unwind label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.asn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i295: ; preds = %bb.uz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.asl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit299 unwind label %bb.vc

.body215:                                         ; preds = %bb.mu, %bb.va, %bb.vc, %bb.lh
  %.pn90 = phi { ptr, i32 } [ %.pn87.pn, %bb.lh ], [ %i.aeo, %bb.mu ], [ %i.asr, %bb.vc ], [ %i.asm, %bb.va ] ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.asp = load i8, ptr %i.aso, align 8, !range !27, !noundef !15
  %i.asq = trunc nuw i8 %i.asp to i1
  br i1 %i.asq, label %bb.wg, label %.body302

bb.vc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i295, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i214
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %.body215

end_hunk_0
