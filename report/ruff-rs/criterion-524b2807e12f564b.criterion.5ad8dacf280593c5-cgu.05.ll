Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.05?download=true
inline.NumInlined: 398
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs5_NtCs7NzLGBMhIGf_9criterion6reportNtB5_9CliReportNtB5_6Report20measurement_complete:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i528: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit532 unwind label %bb.fq

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit532: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i534 unwind label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit532
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body535 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i534: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit532
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit538 unwind label %bb.fn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit538: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i540 unwind label %bb.fz

bb.fz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit538
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %.thread680 unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i540: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit538
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit547 unwind label %bb.bl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit547: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.fl

bb.gb:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store ptr %i.cg, ptr %i.cf, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4160.0..sroa_idx, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.dv, ptr %i.qt, align 8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4164.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @81, ptr noundef nonnull %i.cf)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.qu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.cg) #25
          to label %.thread680 unwind label %bb.cy

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i549 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %.thread680 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i549: ; preds = %bb.gd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit556 unwind label %bb.bl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit556: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i558 unwind label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit556
  %i.qx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %.thread650.thread unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i558: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit556
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit562 unwind label %bb.gi

bb.gi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i558
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.thread650.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit562: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i564 unwind label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit562
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.thread631 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i564: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit562
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit568 unwind label %bb.bh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit568: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit571 unwind label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit568
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %common.resume unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit571: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit568
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.gn

.thread680:                                       ; preds = %.body535, %bb.ed, %.body493, %.body514, %bb.gc, %bb.ge, %bb.fz, %bb.fj, %bb.eu, %bb.ef, %bb.bl
  %.pn243647 = phi { ptr, i32 } [ %i.qv, %bb.ge ], [ %lpad.thr_comm.split-lp, %bb.bl ], [ %i.qr, %bb.fz ], [ %i.ol, %bb.ef ], [ %i.pf, %bb.eu ], [ %i.px, %bb.fj ], [ %.pn233, %.body535 ], [ %i.ok, %bb.ed ], [ %.pn237, %.body493 ], [ %.pn241, %.body514 ], [ %i.qu, %bb.gc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.dv) #25
          to label %.thread650.thread unwind label %bb.cy

.thread650.thread:                                ; preds = %bb.dx, %bb.df, %bb.cv, %bb.cd, %bb.gi, %bb.gg, %bb.dy, %bb.dh, %bb.cw, %bb.cp, %bb.cf, %bb.dr, %.thread680, %.thread706.thread
  %.sroa.07.6715 = phi i1 [ %.sroa.07.3.ph.ph, %.thread706.thread ], [ true, %bb.gi ], [ true, %bb.dy ], [ true, %bb.dh ], [ true, %bb.cw ], [ true, %bb.cp ], [ true, %bb.cf ], [ true, %bb.dr ], [ true, %.thread680 ], [ true, %bb.gg ], [ true, %bb.dx ], [ false, %bb.df ], [ true, %bb.cv ], [ false, %bb.cd ]
  %.pn245714 = phi { ptr, i32 } [ %lpad.thr_comm725, %.thread706.thread ], [ %i.qz, %bb.gi ], [ %i.oi, %bb.dy ], [ %i.nc, %bb.dh ], [ %i.mj, %bb.cw ], [ %i.lv, %bb.cp ], [ %i.ld, %bb.cf ], [ %i.nu, %bb.dr ], [ %.pn243647, %.thread680 ], [ %i.qx, %bb.gg ], [ %i.oh, %bb.dx ], [ %i.nb, %bb.df ], [ %i.mi, %bb.cv ], [ %i.lc, %bb.cd ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.dw) #25
          to label %.thread650 unwind label %bb.cy

.thread631:                                       ; preds = %.thread650.thread730, %bb.cn, %bb.dp, %bb.gj, %bb.bh, %.thread650
  %.pn247634 = phi { ptr, i32 } [ %.pn245714, %.thread650 ], [ %i.jj, %bb.bh ], [ %i.ra, %bb.gj ], [ %i.lu, %bb.cn ], [ %i.nt, %bb.dp ], [ %lpad.thr_comm.split-lp726, %.thread650.thread730 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.dx) #25
          to label %common.resume unwind label %bb.cy

bb.gn:                                            ; preds = %bb.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit571
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 720
  %.sroa.016.0.copyload.i.i = load double, ptr %i.rf, align 8, !alias.scope !541, !noalias !542
  %.sroa.4.0..sroa_idx.i.i572 = getelementptr inbounds nuw i8, ptr %3, i64 728
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i572, align 8, !alias.scope !541, !noalias !542
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 736
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !541, !noalias !542
  %.sroa.6.0..sroa_idx.i.i573 = getelementptr inbounds nuw i8, ptr %3, i64 744
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i573, align 8, !alias.scope !541, !noalias !542
  %i.rg = load ptr, ptr %i.re, align 8, !alias.scope !541, !noalias !542, !nonnull !19, !align !34, !noundef !19 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 712
  %i.ri = load i64, ptr %i.rh, align 8, !alias.scope !541, !noalias !542, !noundef !19 ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.ri, 3
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 %.idx.i.i
  %i.rk = icmp eq i64 %i.ri, 0
  br i1 %i.rk, label %_RNvMNtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate8outliers5tukeyINtB2_13LabeledSampledE5countBa_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.gn, %bb.gu
  %.sroa.0.048.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.gu ], [ 0, %bb.gn ] ; 5 uses
  %.sroa.02.047.i.i = phi i64 [ %.sroa.02.1.i.i, %bb.gu ], [ 0, %bb.gn ] ; 5 uses
  %.sroa.06.045.i.i = phi i64 [ %.sroa.06.1.i.i, %bb.gu ], [ 0, %bb.gn ] ; 5 uses
  %.sroa.08.044.i.i = phi i64 [ %.sroa.08.1.i.i, %bb.gu ], [ 0, %bb.gn ] ; 5 uses
  %.sroa.0.01743.i.i = phi ptr [ %i.rl, %bb.gu ], [ %i.rg, %bb.gn ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.01743.i.i, i64 8 ; 2 uses
  %.val.i.i.i = load double, ptr %.sroa.0.01743.i.i, align 8, !noalias !544, !noundef !19 ; 4 uses
  %i.rm = fcmp olt double %.val.i.i.i, %.sroa.016.0.copyload.i.i
  br i1 %i.rm, label %bb.gt, label %bb.go

bb.go:                                            ; preds = %.lr.ph.i.i
  %i.rn = fcmp ogt double %.val.i.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.rn, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ro = fcmp olt double %.val.i.i.i, %.sroa.4.0.copyload.i.i
  br i1 %i.ro, label %bb.gs, label %6

6:                                                ; preds = %bb.gp
  %7 = fcmp ogt double %.val.i.i.i, %.sroa.5.0.copyload.i.i
  br i1 %7, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %6
  %i.rp = add i64 %.sroa.06.045.i.i, 1
  br label %bb.gu

bb.gr:                                            ; preds = %bb.go
  %i.rq = add i64 %.sroa.08.044.i.i, 1
  br label %bb.gu

bb.gs:                                            ; preds = %bb.gp
  %i.rr = add i64 %.sroa.02.047.i.i, 1
  br label %bb.gu

bb.gt:                                            ; preds = %.lr.ph.i.i
  %i.rs = add i64 %.sroa.0.048.i.i, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gq, %6
  %.sroa.08.1.i.i = phi i64 [ %.sroa.08.044.i.i, %bb.gq ], [ %i.rq, %bb.gr ], [ %.sroa.08.044.i.i, %bb.gs ], [ %.sroa.08.044.i.i, %bb.gt ], [ %.sroa.08.044.i.i, %6 ] ; 2 uses
  %.sroa.06.1.i.i = phi i64 [ %i.rp, %bb.gq ], [ %.sroa.06.045.i.i, %bb.gr ], [ %.sroa.06.045.i.i, %bb.gs ], [ %.sroa.06.045.i.i, %bb.gt ], [ %.sroa.06.045.i.i, %6 ] ; 2 uses
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.047.i.i, %bb.gq ], [ %.sroa.02.047.i.i, %bb.gr ], [ %i.rr, %bb.gs ], [ %.sroa.02.047.i.i, %bb.gt ], [ %.sroa.02.047.i.i, %6 ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.048.i.i, %bb.gq ], [ %.sroa.0.048.i.i, %bb.gr ], [ %.sroa.0.048.i.i, %bb.gs ], [ %i.rs, %bb.gt ], [ %.sroa.0.048.i.i, %6 ] ; 2 uses
  %i.rt = icmp eq ptr %i.rl, %i.rj
  br i1 %i.rt, label %_RNvMNtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate8outliers5tukeyINtB2_13LabeledSampledE5countBa_.exit.i, label %.lr.ph.i.i

_RNvMNtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate8outliers5tukeyINtB2_13LabeledSampledE5countBa_.exit.i: ; preds = %bb.gu, %bb.gn
  %.sroa.08.0.lcssa.i.i = phi i64 [ 0, %bb.gn ], [ %.sroa.08.1.i.i, %bb.gu ] ; 4 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.gn ], [ %.sroa.06.1.i.i, %bb.gu ] ; 4 uses
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %bb.gn ], [ %.sroa.02.1.i.i, %bb.gu ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.gn ], [ %.sroa.0.1.i.i, %bb.gu ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !535
  %i.ru = add i64 %.sroa.06.0.lcssa.i.i, %.sroa.08.0.lcssa.i.i
  %i.rv = add i64 %i.ru, %.sroa.02.0.lcssa.i.i
  %i.rw = add i64 %i.rv, %.sroa.0.0.lcssa.i.i     ; 3 uses
  store i64 %i.rw, ptr %i.aa, align 8, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !535
  store i64 %i.ri, ptr %i.z, align 8, !noalias !535
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %_RNvMs4_NtCs7NzLGBMhIGf_9criterion6reportNtB5_9CliReport8outliers.exit, label %.split.i

.split.i:                                         ; preds = %_RNvMNtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate8outliers5tukeyINtB2_13LabeledSampledE5countBa_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !535
  %i.ry = uitofp i64 %i.rw to double
  %i.rz = fmul nnan double %i.ry, 1.000000e+02
  %i.sa = uitofp i64 %i.ri to double
  %i.sb = fdiv double %i.rz, %i.sa
  store double %i.sb, ptr %i.w, align 8, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !535
  store ptr %i.aa, ptr %i.v, align 8, !noalias !535
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !535
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.z, ptr %i.sc, align 8, !noalias !535
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !535
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.sd, align 8, !noalias !535
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !535
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @35, ptr noundef nonnull %i.v), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !535
  %i.se = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !noalias !535, !nonnull !19, !noundef !19 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.sh = load i64, ptr %i.sg, align 8, !noalias !535, !noundef !19 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !553
  store ptr %i.sf, ptr %i.t, align 8, !noalias !555
  %i.si = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.sh, ptr %i.si, align 8, !noalias !555
  br i1 %i.gb, label %.split.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !555
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %i.sh, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.ha, !noalias !535

.noexc.i:                                         ; preds = %bb.gv
  %i.sj = load i64, ptr %i.q, align 8, !range !40, !noalias !555, !noundef !19
  %i.sk = trunc nuw i64 %i.sj to i1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !range !41, !noalias !555, !noundef !19 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.sk, label %bb.gw, label %bb.gx, !prof !42

.split.i.i.i:                                     ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !555
  store i32 4, ptr %i.s, align 4, !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !555
  store ptr %i.s, ptr %i.r, align 8, !noalias !555
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs7_NtNtCsaOdgiqhR6Dh_4anes9sequences5colorNtB5_18SetForegroundColorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !555
  %i.so = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.t, ptr %i.so, align 8, !noalias !555
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs7NzLGBMhIGf_9criterion, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !555
  %i.sp = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.sp, align 8, !noalias !555
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXs_NtNtCsaOdgiqhR6Dh_4anes9sequences9attributeNtB4_15ResetAttributesNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !555
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @29, ptr noundef nonnull %i.r)
          to label %.noexc38.i unwind label %bb.ha, !noalias !535

.noexc38.i:                                       ; preds = %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !555
  br label %bb.hb

bb.gw:                                            ; preds = %.noexc.i
  %i.sq = load i64, ptr %i.sn, align 8, !noalias !555
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.sm, i64 %i.sq) #27
          to label %.noexc39.i unwind label %bb.ha, !noalias !535

.noexc39.i:                                       ; preds = %bb.gw
  unreachable

bb.gx:                                            ; preds = %.noexc.i
  %i.sr = load ptr, ptr %i.sn, align 8, !noalias !555, !nonnull !19, !noundef !19 ; 2 uses
  %i.ss = icmp ule i64 %i.sh, %i.sm
  call void @llvm.assume(i1 %i.ss)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !555
  %.not.i.i.i = icmp eq i64 %i.sh, 0
  br i1 %.not.i.i.i, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gz, %bb.gx
  store i64 %i.sm, ptr %i.y, align 8, !alias.scope !557, !noalias !558
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.sr, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !alias.scope !557, !noalias !558
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.sh, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !557, !noalias !558
  br label %bb.hb

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sr, ptr nonnull readonly align 1 %i.sf, i64 %i.sh, i1 false), !noalias !559
  br label %bb.gy

.body.i:                                          ; preds = %bb.he, %bb.hc, %bb.ha
  %.pn.i = phi { ptr, i32 } [ %i.su, %bb.hc ], [ %i.st, %bb.ha ], [ %i.sv, %bb.he ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.x) #25
          to label %common.resume unwind label %bb.hm, !noalias !535

bb.ha:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i.i, %bb.gw, %.split.i.i.i, %bb.gv
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.hb:                                            ; preds = %bb.gy, %.noexc38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !535
  store ptr %i.y, ptr %i.u, align 8, !noalias !535
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !535
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @31, ptr noundef nonnull %i.u)
          to label %bb.hd unwind label %bb.hc, !noalias !535

bb.hc:                                            ; preds = %bb.hb
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.y) #25
          to label %.body.i unwind label %bb.hm, !noalias !535

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !535
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i.i unwind label %bb.he, !noalias !535

bb.he:                                            ; preds = %bb.hd
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i unwind label %bb.hf, !noalias !535

bb.hf:                                            ; preds = %bb.he
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !535
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i.i: ; preds = %bb.hd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i unwind label %bb.ha, !noalias !535

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit43.i unwind label %bb.hg, !noalias !535

bb.hg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.hh, !noalias !535

bb.hh:                                            ; preds = %bb.hg
  %i.sy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !535
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit43.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !535
  store i64 %.sroa.0.0.lcssa.i.i, ptr %i.p, align 8, !noalias !560
  store ptr @36, ptr %i.o, align 8, !noalias !560
  %i.sz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 10, ptr %i.sz, align 8, !noalias !560
  %i.ta = icmp eq i64 %.sroa.0.0.lcssa.i.i, 0
  br i1 %i.ta, label %_RNCNvMs4_NtCs7NzLGBMhIGf_9criterion6reportNtB7_9CliReport8outlierss_0B9_.exit.i, label %bb.hi

bb.hi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !560
  %i.tb = uitofp i64 %.sroa.0.0.lcssa.i.i to double
  %i.tc = fmul nnan double %i.tb, 1.000000e+02
  %i.td = load i64, ptr %i.z, align 8, !noalias !535, !noundef !19
  %i.te = uitofp i64 %i.td to double
  %i.tf = fdiv double %i.tc, %i.te
end_hunk_0
