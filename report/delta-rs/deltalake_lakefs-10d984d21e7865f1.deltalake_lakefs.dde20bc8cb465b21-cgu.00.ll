Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.00?download=true
inline.NumInlined: 1367
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvXs1_NtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB7_14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0B9_:bb.a
bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.uz = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.uz, i64 24, i1 false)
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.va, ptr noundef nonnull align 8 dereferenceable(24) %i.vb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0503)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0496)
  %i.vc = load ptr, ptr %i.um, align 8, !nonnull !15, !align !19, !noundef !15
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 0, ptr %i.ux, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 0, ptr %i.uy, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ve, i64 16, i1 false)
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient15get_transaction(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vd, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.dl)
          to label %bb.ja unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do) #32
          to label %bb.jq unwind label %bb.au

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  %i.vh = load i64, ptr %i.dm, align 8, !range !33, !alias.scope !2021, !noundef !15
  %.not.i185 = icmp eq i64 %i.vh, -9223372036854775781
  br i1 %.not.i185, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit.thread, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.ja
  %i.vi = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.vi, i64 24, i1 false), !alias.scope !2022
  store i64 -9223372036854775781, ptr %i.vg, align 8, !alias.scope !2020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.jc

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.vg, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 72, i1 false), !alias.scope !2022
  %.pr = load i64, ptr %i.vg, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %.not37 = icmp eq i64 %.pr, -9223372036854775781
  br i1 %.not37, label %bb.jc, label %bb.jd

bb.jb:                                            ; preds = %bb.jc
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn) #32
          to label %bb.jn unwind label %bb.au

bb.jc:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i64 24, i1 false)
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.vn = load i64, ptr %i.vm, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  store ptr %i.va, ptr %i.dj, align 8
  %.sroa.5518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5518.0..sroa_idx, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.vm, ptr %i.vo, align 8
  %.sroa.5520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5520.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dk, ptr noundef nonnull @67, ptr noundef nonnull %i.dj)
          to label %.thread718 unwind label %bb.jb

.thread718:                                       ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.sroa.0496.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0496, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0496.72..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0496, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false), !alias.scope !2026
  %.sroa.0496.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0496, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0496.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !alias.scope !2027
  %.sroa.0496.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0496, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0496.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !alias.scope !2028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0503, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0496, i64 96, i1 false), !alias.scope !2029
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0496)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.tv, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0503, i64 96, i1 false)
  %.sroa.10504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.vd, ptr %.sroa.10504.0..sroa_idx, align 8
  %.sroa.11505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i64 %i.vn, ptr %.sroa.11505.0..sroa_idx, align 8
  %.sroa.13507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 640
  store i8 0, ptr %.sroa.13507.0..sroa_idx, align 8
  %.sroa.14508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 641
  store i8 0, ptr %.sroa.14508.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9523)
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6297.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 641
  br label %bb.ka

bb.jd:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtNtB7_3ops9try_trait3Try6branchCsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.2510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.2510.0.copyload = load i64, ptr %.sroa.2510.0..sroa_idx, align 8
  %.sroa.3511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3511.0..sroa_idx, i64 16, i1 false)
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.4512.0.copyload = load ptr, ptr %.sroa.4512.0..sroa_idx, align 8
  %.sroa.5513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.5513.0.copyload = load ptr, ptr %.sroa.5513.0..sroa_idx, align 8
  %.sroa.6514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.vr = load <2 x ptr>, ptr %.sroa.6514.0..sroa_idx, align 8
  %.sroa.8516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.8516.0.copyload = load i64, ptr %.sroa.8516.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.vs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.jo unwind label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.jd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.jg

bb.jg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i202 unwind label %bb.jh

bb.jh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.vv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.body203 unwind label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i202: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 unwind label %bb.jj

.body203:                                         ; preds = %bb.jj, %bb.jh, %bb.jo
  %.pn68 = phi { ptr, i32 } [ %i.vv, %bb.jh ], [ %.pn66.ph, %bb.jo ], [ %i.vx, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0496)
  br label %bb.jp

bb.jj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i202
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %.body203

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0496)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.rm, %bb.rl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206
  %.sroa.10.sroa.11.2 = phi i64 [ %.sroa.10.sroa.11.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ], [ %.sroa.10.sroa.11.5728, %bb.rm ], [ %.sroa.10.sroa.11.5728, %bb.rl ], [ %.sroa.8516.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 ]
  %.sroa.10.sroa.8.2 = phi ptr [ %.sroa.10.sroa.8.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ], [ %.sroa.10.sroa.8.5731, %bb.rm ], [ %.sroa.10.sroa.8.5731, %bb.rl ], [ %.sroa.5513.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 ]
  %.sroa.10.sroa.7.2 = phi ptr [ %.sroa.10.sroa.7.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ], [ %.sroa.10.sroa.7.5732, %bb.rm ], [ %.sroa.10.sroa.7.5732, %bb.rl ], [ %.sroa.4512.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 ]
  %.sroa.9.2 = phi i64 [ %.sroa.9.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ], [ %.sroa.9.5733, %bb.rm ], [ %.sroa.9.5733, %bb.rl ], [ %.sroa.2510.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 ]
  %.sroa.0317.2 = phi i64 [ %i.akb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ], [ %.sroa.0317.5734, %bb.rm ], [ %.sroa.0317.5734, %bb.rl ], [ %.pr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 ]
  %i.vy = phi <2 x ptr> [ %i.ajw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ], [ %8, %bb.rm ], [ %8, %bb.rl ], [ %i.vr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit206 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0503)
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.vz, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i208 unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.wb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %.body209 unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.wc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i208: ; preds = %bb.jk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 unwind label %bb.qi

bb.jn:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do) #32
          to label %bb.jo unwind label %bb.au

bb.jo:                                            ; preds = %bb.jn, %bb.je, %bb.jg
  %.pn66.ph = phi { ptr, i32 } [ %i.vk, %bb.jn ], [ %i.vu, %bb.jg ], [ %i.vs, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp) #32
          to label %.body203 unwind label %bb.au

bb.jp:                                            ; preds = %.body253, %bb.sf, %bb.se, %bb.rn, %.body283, %bb.jr, %.body203
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68, %.body203 ], [ %i.ald, %bb.rn ], [ %.pn58, %bb.sf ], [ %.pn58, %bb.se ], [ %.pn58, %.body283 ], [ %i.vf, %bb.jr ], [ %eh.lpad-body254, %.body253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0503)
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.wd, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.we) #32
          to label %.body209 unwind label %bb.au

bb.jq:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp) #32
          to label %bb.jr unwind label %bb.au

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0496)
  br label %bb.jp

.body178:                                         ; preds = %bb.ci, %.body.i.i175, %.thread.i.i170, %bb.ig, %.body163, %bb.si, %.body183
  %.pn74.pn = phi { ptr, i32 } [ %eh.lpad-body184, %.body183 ], [ %.pn72, %bb.si ], [ %i.jj, %bb.ci ], [ %eh.lpad-body164, %.body163 ], [ %i.ub, %bb.ig ], [ %i.uf, %.thread.i.i170 ], [ %i.uj, %.body.i.i175 ]
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wf) #32
          to label %.body215 unwind label %bb.au

bb.js:                                            ; preds = %bb.in
  store i64 %.sroa.0473.0.copyload474, ptr %i.uh, align 16, !noalias !2012
  %.sroa.5480.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5480.0..sroa_idx482, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5480, i64 88, i1 false), !noalias !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2013
  %.sroa.10449.sroa.0.0.copyload = load i64, ptr %i.bb, align 8, !noalias !2030
  %.sroa.10449.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10449.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2011
  br label %bb.jt

bb.jt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212, %bb.js
  %.sroa.10.sroa.11.3 = phi i64 [ %.sroa.10.sroa.11.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 ], [ undef, %bb.js ]
  %.sroa.10.sroa.8.3 = phi ptr [ %.sroa.10.sroa.8.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 ], [ @24, %bb.js ]
  %.sroa.10.sroa.7.3 = phi ptr [ %.sroa.10.sroa.7.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 ], [ %i.uh, %bb.js ]
  %.sroa.9.3 = phi i64 [ %.sroa.9.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 ], [ %.sroa.10449.sroa.0.0.copyload, %bb.js ]
  %.sroa.0317.3 = phi i64 [ %.sroa.0317.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 ], [ -9223372036854775782, %bb.js ]
  %i.wg = phi <2 x ptr> [ %i.vy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212 ], [ undef, %bb.js ]
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i214 unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.wi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wh)
          to label %.body215 unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.wj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i214: ; preds = %bb.jt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit218 unwind label %bb.ql

bb.jw:                                            ; preds = %bb.nb, %bb.na
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %.body253

.body253:                                         ; preds = %.body188.i, %bb.jw
  %i.wl = phi ptr [ %i.wm, %bb.jw ], [ %i.afd, %.body188.i ]
  %eh.lpad-body254 = phi { ptr, i32 } [ %i.wk, %bb.jw ], [ %.pn97.i, %.body188.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9523)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient5merge0EBP_(ptr noundef nonnull align 8 %i.wl) #32
          to label %bb.jp unwind label %bb.au

bb.jx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0503)
  %.phi.trans.insert692 = getelementptr inbounds nuw i8, ptr %1, i64 641
  %.pre693 = load i8, ptr %.phi.trans.insert692, align 1, !range !30, !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9523)
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6297.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 641 ; 3 uses
  switch i8 %.pre693, label %default.unreachable717 [
    i8 0, label %bb.ka
    i8 1, label %bb.na
    i8 2, label %bb.nb
    i8 3, label %bb.nd
    i8 4, label %bb.jy
  ]

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2031
  br label %bb.ol

bb.jz:                                            ; preds = %bb.ka
  %i.wo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2031
  br label %.body165.i

bb.ka:                                            ; preds = %.thread718, %bb.jx
  %i.wp = phi ptr [ %i.vq, %.thread718 ], [ %i.wn, %bb.jx ] ; 8 uses
  %i.wq = phi ptr [ %i.vp, %.thread718 ], [ %i.wm, %bb.jx ] ; 9 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 643
  store i8 0, ptr %i.wr, align 1, !noalias !2031
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !2031, !nonnull !15, !align !19, !noundef !15 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wu, ptr noundef nonnull align 8 dereferenceable(24) %i.wq, i64 24, i1 false), !noalias !2031
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wv, ptr noundef nonnull align 8 dereferenceable(24) %i.ww, i64 24, i1 false), !noalias !2031
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wx, ptr noundef nonnull align 8 dereferenceable(24) %i.wy, i64 24, i1 false), !noalias !2031
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.xb = load i64, ptr %i.xa, align 8, !noalias !2031, !noundef !15
  store i64 %i.xb, ptr %i.wz, align 8, !noalias !2031
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, ptr noundef nonnull align 8 dereferenceable(24) %i.xd, i64 24, i1 false), !noalias !2031
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 642 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.xg = load i8, ptr %i.xf, align 8, !range !31, !noalias !2031, !noundef !15
  store i8 %i.xg, ptr %i.xe, align 2, !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2031
  store ptr %i.wt, ptr %i.au, align 8, !noalias !2031
  %.sroa.5.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx.i233, align 8, !noalias !2031
  %i.xh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.wu, ptr %i.xh, align 8, !noalias !2031
  %.sroa.5258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5258.0..sroa_idx.i, align 8, !noalias !2031
  %i.xi = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.wx, ptr %i.xi, align 8, !noalias !2031
  %.sroa.5260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5260.0..sroa_idx.i, align 8, !noalias !2031
  %i.xj = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %i.wv, ptr %i.xj, align 8, !noalias !2031
  %.sroa.5262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5262.0..sroa_idx.i, align 8, !noalias !2031
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull @36, ptr noundef nonnull %i.au)
          to label %bb.kb unwind label %bb.jz, !noalias !2032

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i236: ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2031
  br label %bb.mz

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2031
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.av, i64 24, i1 false), !alias.scope !2033, !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2031
end_hunk_0
begin_hunk_1_@_RNCNvXs1_NtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB7_14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0B9_:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit226.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2031
  br label %bb.np

bb.pe:                                            ; preds = %bb.pf, %bb.np
  store i8 0, ptr %i.adf, align 1, !noalias !2031
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.agn)
          to label %bb.ph unwind label %bb.ns, !noalias !2032

bb.pf:                                            ; preds = %bb.np
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.ago)
          to label %bb.pe unwind label %bb.pg, !noalias !2032

bb.pg:                                            ; preds = %bb.ni, %bb.ng, %bb.pf
  %i.agp = phi ptr [ %i.aco, %bb.ni ], [ %i.aco, %bb.ng ], [ %i.add, %bb.pf ]
  %i.agq = phi ptr [ %i.acp, %bb.ni ], [ %i.acp, %bb.ng ], [ %i.ade, %bb.pf ]
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.ph:                                            ; preds = %bb.pe
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ags)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i228.i unwind label %bb.pi, !noalias !2032

bb.pi:                                            ; preds = %bb.ph
  %i.agt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ags)
          to label %.body165.i unwind label %bb.pj, !noalias !2032

bb.pj:                                            ; preds = %bb.pi
  %i.agu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2032
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i228.i: ; preds = %bb.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ags)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit232.i unwind label %bb.nw, !noalias !2032

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit232.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i228.i
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i unwind label %bb.pk, !noalias !2032

bb.pk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit232.i
  %i.agw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agv)
          to label %.body170.i unwind label %bb.pl, !noalias !2032

bb.pl:                                            ; preds = %bb.pk
  %i.agx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2032
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit232.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit238.i unwind label %bb.nz, !noalias !2032

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit238.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i unwind label %bb.pm, !noalias !2032

bb.pm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit238.i
  %i.agz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agy)
          to label %.body176.i unwind label %bb.pn, !noalias !2032

bb.pn:                                            ; preds = %bb.pm
  %i.aha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2032
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit238.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit244.i unwind label %bb.oc, !noalias !2032

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit244.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i unwind label %bb.po, !noalias !2032

bb.po:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit244.i
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahb)
          to label %.body182.i unwind label %bb.pp, !noalias !2032

bb.pp:                                            ; preds = %bb.po
  %i.ahd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2032
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit244.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i unwind label %bb.of, !noalias !2032

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahe)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i252.invoke.i unwind label %bb.pq, !noalias !2032

bb.pq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahe)
          to label %.body188.i unwind label %bb.pr, !noalias !2032

bb.pr:                                            ; preds = %bb.pq
  %i.ahg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2032
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i252.invoke.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i
  %i.ahh = phi ptr [ %i.add, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i ], [ %i.aco, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i ] ; 2 uses
  %i.ahi = phi ptr [ %i.ade, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i ], [ %i.acp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i ] ; 3 uses
  %i.ahj = phi ptr [ %i.ahe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i ], [ %i.aez, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahj)
          to label %bb.px unwind label %bb.oi, !noalias !2032

bb.ps:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit218.i
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2031
  br label %bb.pt

bb.pt:                                            ; preds = %bb.pv, %bb.pu, %bb.ps
  %.pn76.pn.i = phi { ptr, i32 } [ %eh.lpad-body216.i, %bb.pu ], [ %i.ahk, %bb.ps ], [ %.pn74.i, %bb.pv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2031
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #32
          to label %.body223.i unwind label %bb.mx, !noalias !2032

bb.pu:                                            ; preds = %bb.pa, %bb.oy
  %eh.lpad-body216.i = phi { ptr, i32 } [ %i.agi, %bb.pa ], [ %i.agg, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2031
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #32
          to label %bb.pt unwind label %bb.mx, !noalias !2032

bb.pv:                                            ; preds = %bb.ox, %bb.os
  %.pn74.i = phi { ptr, i32 } [ %i.agf, %bb.ox ], [ %i.afs, %bb.os ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2031
  br label %bb.pt

bb.pw:                                            ; preds = %bb.nq
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.ahl) #32
          to label %bb.oj unwind label %bb.mx, !noalias !2032

.thread655:                                       ; preds = %bb.nf, %bb.on
  %i.ahm = phi ptr [ %i.aco, %bb.nf ], [ %i.afj, %bb.on ]
  %.sink.i224.ph = phi i8 [ 3, %bb.nf ], [ 4, %bb.on ]
  store i8 %.sink.i224.ph, ptr %i.ahm, align 1, !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6297.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.py

bb.px:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i252.invoke.i
  %.sroa.0521.0.copyload522 = load i64, ptr %i.k, align 8, !noalias !2073 ; 2 uses
  %.sroa.9523.0..sroa_idx524 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9523, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9523.0..sroa_idx524, i64 64, i1 false), !noalias !2073
  store i8 1, ptr %i.ahh, align 1, !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6297.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ahn = icmp eq i64 %.sroa.0521.0.copyload522, -9223372036854775780
  br i1 %i.ahn, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %.thread655, %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9523)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0503)
  br label %common.ret

bb.pz:                                            ; preds = %bb.px
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9523, i64 64, i1 false)
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  store i8 1, ptr %i.aho, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store i64 %.sroa.0521.0.copyload522, ptr %i.ahp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9523)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient5merge0EBP_(ptr noundef nonnull align 8 %i.ahi)
          to label %bb.qa unwind label %bb.rn

bb.qa:                                            ; preds = %bb.pz
  %3 = load i64, ptr %i.ahp, align 8, !range !33, !noundef !15 ; 4 uses
  %.not48 = icmp eq i64 %3, -9223372036854775781
  br i1 %.not48, label %6, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.ahq = icmp ne i64 %3, -9223372036854775788
  call void @llvm.assume(i1 %i.ahq)
  %4 = icmp eq i64 %3, -9223372036854775790
  br i1 %4, label %bb.qc, label %.thread719

bb.qc:                                            ; preds = %bb.qb
  %i.ahr = load i64, ptr %.sroa.4526.0..sroa_idx, align 8, !noundef !15 ; 2 uses
  store i64 %i.ahr, ptr %i.ahi, align 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ahs, i64 noundef %i.ahr)
          to label %bb.qd unwind label %bb.rh

bb.qd:                                            ; preds = %bb.qc
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ahu = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahs)
          to label %bb.qf unwind label %bb.qe     ; 2 uses

bb.qe:                                            ; preds = %bb.qd
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %.body276

bb.qf:                                            ; preds = %bb.qd
  %i.ahw = extractvalue { ptr, ptr } %i.ahu, 0
  %i.ahx = extractvalue { ptr, ptr } %i.ahu, 1
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.ahw, ptr %i.ahy, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.ahx, ptr %i.ahz, align 8
  br label %bb.qv

.body276:                                         ; preds = %bb.qu, %bb.rc, %bb.rd, %bb.qe
  %.pn56 = phi { ptr, i32 } [ %i.ahv, %bb.qe ], [ %i.ajy, %bb.qu ], [ %i.akl, %bb.rc ], [ %i.akl, %bb.rd ]
  %i.aia = getelementptr inbounds nuw i8, ptr %1, i64 376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.aia) #32
          to label %.body283 unwind label %bb.au

.body283:                                         ; preds = %bb.rj, %bb.rf, %bb.rh, %.body276
  %.pn58 = phi { ptr, i32 } [ %i.aky, %bb.rj ], [ %.pn56, %.body276 ], [ %i.aks, %bb.rf ], [ %i.aku, %bb.rh ] ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.aic = load i64, ptr %i.aib, align 8, !range !33, !noundef !15
  %.not62 = icmp eq i64 %i.aic, -9223372036854775781
  br i1 %.not62, label %bb.jp, label %bb.se

.thread719:                                       ; preds = %bb.qb
  store i8 0, ptr %i.aho, align 8
  %.sroa.2544.sroa.0.0.copyload = load i64, ptr %.sroa.4526.0..sroa_idx, align 8
  %.sroa.2544.sroa.2.0..sroa.2544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2544.sroa.2.0..sroa.2544.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.2544.sroa.3.0..sroa.2544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.2544.sroa.3.0.copyload = load ptr, ptr %.sroa.2544.sroa.3.0..sroa.2544.0..sroa_idx.sroa_idx, align 8
  %.sroa.2544.sroa.4.0..sroa.2544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.2544.sroa.4.0.copyload = load ptr, ptr %.sroa.2544.sroa.4.0..sroa.2544.0..sroa_idx.sroa_idx, align 8
  %.sroa.2544.sroa.5.0..sroa.2544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %5 = load <2 x ptr>, ptr %.sroa.2544.sroa.5.0..sroa.2544.0..sroa_idx.sroa_idx, align 8
  %.sroa.2544.sroa.7.0..sroa.2544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.2544.sroa.7.0.copyload = load i64, ptr %.sroa.2544.sroa.7.0..sroa.2544.0..sroa_idx.sroa_idx, align 8
  br label %bb.rl

6:                                                ; preds = %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0503)
  store i8 0, ptr %i.aho, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %7)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258 unwind label %bb.qg

bb.qg:                                            ; preds = %6
  %i.aid = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %7)
          to label %.body209 unwind label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.aie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258: ; preds = %6
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %7)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit262 unwind label %bb.qi

.body209:                                         ; preds = %bb.jl, %bb.qg, %bb.qi, %bb.jp
  %.pn72 = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.jp ], [ %i.wb, %bb.jl ], [ %i.aii, %bb.qi ], [ %i.aid, %bb.qg ]
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 356 ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 4, !range !31, !noundef !15
  %i.aih = trunc nuw i8 %i.aig to i1
  br i1 %i.aih, label %bb.sh, label %bb.sg

bb.qi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i208
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %.body209

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit262: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i8 0, ptr %i.aij, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 0, ptr %i.aik, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264 unwind label %bb.qj

bb.qj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit262
  %i.aim = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %.body215 unwind label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.ain = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit262
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268 unwind label %bb.ql

.body215:                                         ; preds = %bb.ju, %bb.qj, %bb.ql, %.body178
  %.pn77 = phi { ptr, i32 } [ %.pn74.pn, %.body178 ], [ %i.wi, %bb.ju ], [ %i.air, %bb.ql ], [ %i.aim, %bb.qj ]
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 358 ; 2 uses
  %i.aip = load i8, ptr %i.aio, align 2, !range !31, !noundef !15
  %i.aiq = trunc nuw i8 %i.aip to i1
  br i1 %i.aiq, label %bb.sl, label %bb.sk

bb.ql:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i214
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %.body215

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 358
  store i8 0, ptr %i.ais, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 359
  store i8 0, ptr %i.ait, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i8 0, ptr %i.aiu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  %i.aiw = load ptr, ptr %i.aiv, align 8, !alias.scope !2076, !nonnull !15, !noundef !15
  %i.aix = atomicrmw add ptr %i.aiw, i64 -1 release, align 8, !noalias !2076
  %i.aiy = icmp eq i64 %i.aix, 1
  br i1 %i.aiy, label %bb.qm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit270

bb.qm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aiv) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit270 unwind label %bb.qo

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ax, %bb.ay, %bb.qo
  %.pn85 = phi { ptr, i32 } [ %i.ajd, %bb.qo ], [ %.pn81.pn.pn, %bb.ay ], [ %.pn81.pn.pn, %bb.ax ] ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %i.aja = load ptr, ptr %i.aiz, align 8, !alias.scope !2079, !nonnull !15, !noundef !15
  %i.ajb = atomicrmw add ptr %i.aja, i64 -1 release, align 8, !noalias !2079
  %i.ajc = icmp eq i64 %i.ajb, 1
  br i1 %i.ajc, label %bb.qn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit272

bb.qn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aiz) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit272 unwind label %bb.au

bb.qo:                                            ; preds = %bb.qm, %bb.cp
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit270: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit268, %bb.qm
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  %i.ajf = load ptr, ptr %i.aje, align 8, !alias.scope !2082, !nonnull !15, !noundef !15
  %i.ajg = atomicrmw add ptr %i.ajf, i64 -1 release, align 8, !noalias !2082
  %i.ajh = icmp eq i64 %i.ajg, 1
  br i1 %i.ajh, label %bb.qp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit274

bb.qp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit270
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aje) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit274 unwind label %bb.qq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit272: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.qn, %bb.qq
  %.pn87 = phi { ptr, i32 } [ %i.ajl, %bb.qq ], [ %.pn85, %bb.qn ], [ %.pn85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit ] ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 353
  %i.ajj = load i8, ptr %i.aji, align 1, !range !31, !noundef !15
  %i.ajk = trunc nuw i8 %i.ajj to i1
  br i1 %i.ajk, label %bb.sp, label %.body297

bb.qq:                                            ; preds = %bb.ro, %bb.qp
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit272

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit274: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit270, %bb.qp
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 353
  store i8 0, ptr %i.ajm, align 1
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ajo = load ptr, ptr %i.ajn, align 8, !noundef !15
  %.not50 = icmp eq ptr %i.ajo, null
  br i1 %.not50, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %bb.qs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit274
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 0, ptr %i.ajp, align 2
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit312

bb.qs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit274
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.ajn)
          to label %bb.qr unwind label %bb.qt

.body301:                                         ; preds = %bb.ss, %bb.rv, %bb.qt, %bb.sr, %bb.sq
  %.pn96 = phi { ptr, i32 } [ %.pn91.pn, %bb.sr ], [ %i.aly, %bb.rv ], [ %.pn91.pn, %bb.sq ], [ %i.aju, %bb.qt ], [ %.pn91.pn, %bb.ss ] ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 0, ptr %i.ajq, align 2
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 355
  %i.ajs = load i8, ptr %i.ajr, align 1, !range !31, !noundef !15
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %bb.st, label %.body308

bb.qt:                                            ; preds = %bb.rx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.qs
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %.body301

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit312: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307, %bb.sc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.qr
  %.sroa.10.sroa.11.4 = phi i64 [ undef, %bb.qr ], [ %.sroa.10.sroa.11.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.10.sroa.11.0, %bb.sc ], [ %.sroa.10.sroa.11.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 ]
  %.sroa.10.sroa.8.4 = phi ptr [ undef, %bb.qr ], [ %.sroa.10.sroa.8.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.10.sroa.8.0, %bb.sc ], [ %.sroa.10.sroa.8.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 ]
  %.sroa.10.sroa.7.4 = phi ptr [ undef, %bb.qr ], [ %.sroa.10.sroa.7.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.10.sroa.7.0, %bb.sc ], [ %.sroa.10.sroa.7.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 ]
  %.sroa.9.4 = phi i64 [ undef, %bb.qr ], [ %.sroa.9.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.9.0, %bb.sc ], [ %.sroa.9.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 ]
  %.sroa.0317.4 = phi i64 [ -9223372036854775781, %bb.qr ], [ %.sroa.0317.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.0317.0, %bb.sc ], [ %.sroa.0317.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 ]
  %i.ajv = phi <2 x ptr> [ undef, %bb.qr ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.hl, %bb.sc ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 ]
  store i64 %.sroa.0317.4, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.4, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0, i64 16, i1 false)
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.sroa.7.4, ptr %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.sroa.8.4, ptr %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x ptr> %i.ajv, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.10.sroa.11.4, ptr %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286
  %.sroa.10.sroa.11.6.a = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286 ], [ %.sroa.3534.sroa.7.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288 ] ; 2 uses
  %.sroa.10.sroa.8.6.a = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286 ], [ %.sroa.3534.sroa.4.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288 ] ; 2 uses
  %.sroa.10.sroa.7.6.a = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286 ], [ %.sroa.3534.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288 ] ; 2 uses
  %.sroa.9.6.a = phi i64 [ %i.akw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286 ], [ %.sroa.3534.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288 ] ; 2 uses
  %i.ajw = phi <2 x ptr> [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286 ], [ %i.akd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288 ] ; 2 uses
  %.phi.trans.insert694.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.pre695 = load i64, ptr %.phi.trans.insert694.a, align 8, !range !33
  %i.ajx = icmp eq i64 %.pre695, -9223372036854775781
  br i1 %i.ajx, label %bb.jk, label %bb.rl

bb.qu:                                            ; preds = %bb.qv
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %.val107 = load ptr, ptr %i.aka, align 8
  %i.ajz = getelementptr i8, ptr %1, i64 408
  %.val108 = load ptr, ptr %i.ajz, align 8, !nonnull !15, !align !19, !noundef !15
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val107, ptr nonnull %.val108) #32
          to label %.body276 unwind label %bb.au

bb.qv:                                            ; preds = %bb.d, %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  %i.aka = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.di, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aka, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.qw unwind label %bb.qu

bb.qw:                                            ; preds = %bb.qv
  %i.akb = load i64, ptr %i.di, align 8, !range !40, !noundef !15 ; 4 uses
  %i.akc = icmp eq i64 %i.akb, -9223372036854775789
  br i1 %i.akc, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0503)
  br label %common.ret

bb.qy:                                            ; preds = %bb.qw
  %.sroa.3534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.3534.sroa.0.0.copyload = load i64, ptr %.sroa.3534.0..sroa_idx, align 8
  %.sroa.3534.sroa.2.0..sroa.3534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3534.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3534.sroa.2.0..sroa.3534.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.3534.sroa.3.0..sroa.3534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %.sroa.3534.sroa.3.0.copyload = load ptr, ptr %.sroa.3534.sroa.3.0..sroa.3534.0..sroa_idx.sroa_idx, align 8
  %.sroa.3534.sroa.4.0..sroa.3534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %.sroa.3534.sroa.4.0.copyload = load ptr, ptr %.sroa.3534.sroa.4.0..sroa.3534.0..sroa_idx.sroa_idx, align 8
  %.sroa.3534.sroa.5.0..sroa.3534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.akd = load <2 x ptr>, ptr %.sroa.3534.sroa.5.0..sroa.3534.0..sroa_idx.sroa_idx, align 8
  %.sroa.3534.sroa.7.0..sroa.3534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %.sroa.3534.sroa.7.0.copyload = load i64, ptr %.sroa.3534.sroa.7.0..sroa.3534.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %.val105 = load ptr, ptr %i.aka, align 8        ; 5 uses
  %i.ake = getelementptr i8, ptr %1, i64 408
  %.val106 = load ptr, ptr %i.ake, align 8, !nonnull !15, !align !19, !noundef !15 ; 5 uses
  %i.akf = load ptr, ptr %.val106, align 8, !invariant.load !15 ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.akf, null
  br i1 %.not.i.i275, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val105) ]
  invoke void %i.akf(ptr noundef nonnull %.val105)
          to label %bb.ra unwind label %bb.rc

bb.ra:                                            ; preds = %bb.qz, %bb.qy
  %i.akg = getelementptr inbounds nuw i8, ptr %.val106, i64 8
  %i.akh = load i64, ptr %i.akg, align 8, !range !16, !invariant.load !15 ; 2 uses
  %i.aki = icmp eq i64 %i.akh, 0
  br i1 %i.aki, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.akj = getelementptr inbounds nuw i8, ptr %.val106, i64 16
  %i.akk = load i64, ptr %i.akj, align 8, !range !17, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val105) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val105, i64 noundef range(i64 1, 0) %i.akh, i64 noundef range(i64 1, 536870913) %i.akk) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.rc:                                            ; preds = %bb.qz
  %i.akl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.val106, i64 8
  %i.akn = load i64, ptr %i.akm, align 8, !range !16, !invariant.load !15 ; 2 uses
  %i.ako = icmp eq i64 %i.akn, 0
  br i1 %i.ako, label %.body276, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.akp = getelementptr inbounds nuw i8, ptr %.val106, i64 16
  %i.akq = load i64, ptr %i.akp, align 8, !range !17, !invariant.load !15
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val105, i64 noundef range(i64 1, 0) %i.akn, i64 noundef range(i64 1, 536870913) %i.akq) #31
  br label %.body276

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.rb, %bb.ra
  %.not.i278 = icmp eq i64 %i.akb, -9223372036854775790
  br i1 %.not.i278, label %bb.re, label %bb.ri

bb.re:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.akr = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i282 unwind label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.aks = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akr)
          to label %.body283 unwind label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.akt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i282: ; preds = %bb.re
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286 unwind label %bb.rh

bb.rh:                                            ; preds = %bb.qc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i282
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %.body283

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit286: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i282
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.akw = load i64, ptr %i.akv, align 8, !noundef !15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a

bb.ri:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3534.sroa.2, i64 16, i1 false)
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288 unwind label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.aky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akx)
          to label %.body283 unwind label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.akz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i288: ; preds = %bb.ri
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a unwind label %bb.rh

bb.rl:                                            ; preds = %.thread719, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a
  %.sroa.0317.5734 = phi i64 [ %3, %.thread719 ], [ %i.akb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ] ; 2 uses
  %.sroa.9.5733 = phi i64 [ %.sroa.2544.sroa.0.0.copyload, %.thread719 ], [ %.sroa.9.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ] ; 2 uses
  %.sroa.10.sroa.7.5732 = phi ptr [ %.sroa.2544.sroa.3.0.copyload, %.thread719 ], [ %.sroa.10.sroa.7.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ] ; 2 uses
  %.sroa.10.sroa.8.5731 = phi ptr [ %.sroa.2544.sroa.4.0.copyload, %.thread719 ], [ %.sroa.10.sroa.8.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ] ; 2 uses
  %.sroa.10.sroa.11.5728 = phi i64 [ %.sroa.2544.sroa.7.0.copyload, %.thread719 ], [ %.sroa.10.sroa.11.6.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ] ; 2 uses
  %8 = phi <2 x ptr> [ %5, %.thread719 ], [ %i.ajw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit292.a ] ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.alb = load i8, ptr %i.ala, align 8, !range !31, !noundef !15
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %bb.rm, label %bb.jk

bb.rm:                                            ; preds = %bb.rl
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 200
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.jk unwind label %bb.rn

bb.rn:                                            ; preds = %bb.pz, %bb.rm
  %i.ald = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit212: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i208
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i8 0, ptr %i.ale, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.alf = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 0, ptr %i.alf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.jt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit218: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i214
  %i.alg = getelementptr inbounds nuw i8, ptr %1, i64 358
  store i8 0, ptr %i.alg, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.alh = getelementptr inbounds nuw i8, ptr %1, i64 359
  store i8 0, ptr %i.alh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.co

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit151: ; preds = %bb.co, %bb.cp
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.alj = load ptr, ptr %i.ali, align 8, !alias.scope !2085, !nonnull !15, !noundef !15
  %i.alk = atomicrmw add ptr %i.alj, i64 -1 release, align 8, !noalias !2085
  %i.all = icmp eq i64 %i.alk, 1
  br i1 %i.all, label %bb.ro, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit294

bb.ro:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit151
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ali) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit294 unwind label %bb.qq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit294: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit151, %bb.ro
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 353 ; 2 uses
  %i.aln = load i8, ptr %i.alm, align 1, !range !31, !noundef !15
  %i.alo = trunc nuw i8 %i.aln to i1
  br i1 %i.alo, label %bb.rp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit300

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit300: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i296, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit294
  store i8 0, ptr %i.alm, align 1
  br label %bb.ba

bb.rp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit294
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.alp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i296 unwind label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.alq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.alp)
          to label %.body297 unwind label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.alr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i296: ; preds = %bb.rp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.alp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit300 unwind label %bb.rs

.body297:                                         ; preds = %bb.rs, %bb.rq, %bb.sp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit272
  %.pn89 = phi { ptr, i32 } [ %.pn87, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit272 ], [ %.pn87, %bb.sp ], [ %i.alt, %bb.rs ], [ %i.alq, %bb.rq ]
  %i.als = getelementptr inbounds nuw i8, ptr %1, i64 353
  store i8 0, ptr %i.als, align 1
  br label %bb.bb

bb.rs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i296
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %.body297

bb.rt:                                            ; preds = %bb.ba
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 354
  %i.alv = load i8, ptr %i.alu, align 2, !range !31, !noundef !15
  %i.alw = trunc nuw i8 %i.alv to i1
  br i1 %i.alw, label %bb.rx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ru:                                            ; preds = %bb.ba
  %i.alx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.alx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.aly = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.alx)
          to label %.body301 unwind label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.alz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ru
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.alx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.qt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.rx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.rt
  %i.ama = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 0, ptr %i.ama, align 2
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 355
  %i.amc = load i8, ptr %i.amb, align 1, !range !31, !noundef !15
  %i.amd = trunc nuw i8 %i.amc to i1
  br i1 %i.amd, label %bb.ry, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit312

bb.rx:                                            ; preds = %bb.rt
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.ame = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.amf = load ptr, ptr %i.ame, align 8, !noalias !2088, !nonnull !15, !noundef !15
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ami = load ptr, ptr %i.amh, align 8, !alias.scope !2088, !noundef !15
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.amk = load i64, ptr %i.amj, align 8, !alias.scope !2088, !noundef !15
  invoke void %i.amf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.amg, ptr noundef %i.ami, i64 noundef %i.amk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.qt, !inline_history !0

bb.ry:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  %i.aml = load ptr, ptr %1, align 8, !alias.scope !2089, !noundef !15 ; 2 uses
  %i.amm = icmp eq ptr %i.aml, null
  br i1 %i.amm, label %bb.rz, label %bb.sc

bb.rz:                                            ; preds = %bb.ry
  %i.amn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307 unwind label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.amo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amn)
          to label %.body308 unwind label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.amp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307: ; preds = %bb.rz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit312 unwind label %bb.sd

bb.sc:                                            ; preds = %bb.ry
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %i.amq = getelementptr inbounds nuw i8, ptr %i.aml, i64 32
  %i.amr = load ptr, ptr %i.amq, align 8, !noalias !2092, !nonnull !15, !noundef !15
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !alias.scope !2092, !noundef !15
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.amw = load i64, ptr %i.amv, align 8, !alias.scope !2092, !noundef !15
  invoke void %i.amr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ams, ptr noundef %i.amu, i64 noundef %i.amw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsj34PGqTgg0L_16deltalake_lakefs.exit312 unwind label %bb.sd, !inline_history !49

.body308:                                         ; preds = %bb.sd, %bb.sa, %bb.st, %.body301
  %.pn98 = phi { ptr, i32 } [ %.pn96, %.body301 ], [ %.pn96, %bb.st ], [ %i.amx, %bb.sd ], [ %i.amo, %bb.sa ]
  store i8 2, ptr %i.ej, align 1
  resume { ptr, i32 } %.pn98

bb.sd:                                            ; preds = %bb.sc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i307
  %i.amx = landingpad { ptr, i32 }
          cleanup
  br label %.body308

bb.se:                                            ; preds = %.body283
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.amz = load i8, ptr %i.amy, align 8, !range !31, !noundef !15
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %bb.sf, label %bb.jp

bb.sf:                                            ; preds = %bb.se
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aib) #32
          to label %bb.jp unwind label %bb.au

bb.sg:                                            ; preds = %bb.sh, %.body209
  store i8 0, ptr %i.aif, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.anb = getelementptr inbounds nuw i8, ptr %1, i64 357 ; 2 uses
  %i.anc = load i8, ptr %i.anb, align 1, !range !31, !noundef !15
  %i.and = trunc nuw i8 %i.anc to i1
  br i1 %i.and, label %bb.sj, label %bb.si

bb.sh:                                            ; preds = %.body209
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ds) #32
          to label %bb.sg unwind label %bb.au
end_hunk_1
