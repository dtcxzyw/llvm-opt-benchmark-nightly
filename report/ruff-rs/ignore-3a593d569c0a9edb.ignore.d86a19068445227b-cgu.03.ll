Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ignore-3a593d569c0a9edb.ignore.d86a19068445227b-cgu.03?download=true
inline.NumInlined: 387
inline.NumDeleted: 198
begin_hunk_0_@_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker3run:bb.a
bb.ij:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit.i.i
  %i.vp = atomicrmw sub ptr %i.vn, i64 1 release, align 8, !noalias !1037
  %i.vq = icmp eq i64 %i.vp, 1
  br i1 %i.vq, label %bb.ik, label %_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit

bb.ik:                                            ; preds = %bb.ij
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit unwind label %.loopexit

bb.il:                                            ; preds = %bb.ii
  %i.vr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.im:                                            ; preds = %bb.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsizY4S0OBG5z_6ignore4walk13ReadDirResultNtB11_5ErrorEEB11_.exit.i, %bb.aj, %bb.w, %.thread301.i
  %.sroa.0.6.i = phi i8 [ %.sroa.0.3.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsizY4S0OBG5z_6ignore4walk13ReadDirResultNtB11_5ErrorEEB11_.exit.i ], [ 0, %.thread301.i ], [ 2, %bb.aj ], [ 0, %bb.w ], [ 2, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore4walk8DirEntryEBF_(ptr noalias noundef align 8 dereferenceable(112) %i.ci)
          to label %bb.ie unwind label %bb.io

bb.in:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsizY4S0OBG5z_6ignore4walk13ReadDirResultNtB11_5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(56) %i.bq) #22
          to label %.body.thread176.i unwind label %bb.hq

.thread299.i:                                     ; preds = %bb.w, %.thread293.i, %.thread301.i
  %i.vs = load ptr, ptr %i.cr, align 8, !alias.scope !877, !noalias !878, !nonnull !3, !noundef !3
  %i.vt = load ptr, ptr %i.cs, align 8, !alias.scope !877, !noalias !878, !nonnull !3, !align !9, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bt, ptr noundef nonnull align 16 dereferenceable(112) %i.ci, i64 112, i1 false), !noalias !877
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !invariant.load !3, !nonnull !3
  %i.vw = invoke noundef i8 %i.vv(ptr noundef nonnull %i.vs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.bt)
          to label %bb.ip unwind label %bb.u

bb.io:                                            ; preds = %bb.im
  %i.vx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir6IgnoreEBF_(ptr noalias noundef align 8 dereferenceable(16) %i.cn) #22
          to label %.body unwind label %bb.hq

bb.ip:                                            ; preds = %.thread299.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !898
  br label %bb.ie

.body.thread176.i:                                ; preds = %.body.thread.i, %bb.in, %bb.da, %.body.i
  %.pn53173.i = phi { ptr, i32 } [ %.pn53174.i, %.body.thread.i ], [ %.pn53.i, %.body.i ], [ %lpad.thr_comm.split-lp.i, %bb.da ], [ %lpad.thr_comm.split-lp.i, %bb.in ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore3dir6IgnoreEBF_(ptr noalias noundef align 8 dereferenceable(16) %i.cn) #22
          to label %.body unwind label %bb.hq

.body.thread.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECsizY4S0OBG5z_6ignore.exit.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.ag, %.body.i.i, %.body.i
  %.pn53174.i = phi { ptr, i32 } [ %.pn53.i, %.body.i ], [ %.pn17.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECsizY4S0OBG5z_6ignore.exit.i.i ], [ %eh.lpad-body.i65.i, %bb.bc ], [ %i.kd, %bb.ba ], [ %eh.lpad-body.i.i, %bb.ag ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i65.i, %bb.bb ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore4walk8DirEntryEBF_(ptr noalias noundef align 8 dereferenceable(112) %i.ci) #22
          to label %.body.thread176.i unwind label %bb.hq

_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit: ; preds = %bb.ij, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit.i.i, %bb.ik
  %i.vy = icmp eq i8 %.sroa.0.5.i, 2
  br i1 %i.vy, label %bb.iq, label %_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit.thread

bb.iq:                                            ; preds = %_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit
  %i.vz = load ptr, ptr %i.cd, align 8, !nonnull !3, !noundef !3
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  store atomic i8 1, ptr %i.wa seq_cst, align 1
  br label %_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit.thread

_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit.i, %bb.hl, %bb.hm, %bb.iq, %_RNvMsg_NtCsizY4S0OBG5z_6ignore4walkNtB5_6Worker7run_one.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.b

bb.ir:                                            ; preds = %.body
  %i.wb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.is:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsizY4S0OBG5z_6ignore4walk11path_equals(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, i64 %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %1, align 8, !range !10, !noundef !3
  %i.f = icmp ne i64 %i.e, 0
  %.sroa.410.0.in = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.410.0 = load i64, ptr %.sroa.410.0.in, align 8
  %.not = icmp eq i64 %.sroa.410.0, %.8.val
  %or.cond = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond, label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMs4_NtCs5o9EGYvxRCY_9same_file4unixNtB6_6Handle9from_pathRNtNtCs2AWtUsOyxgP_3std4path4PathECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.m = load i8, ptr %i.l, align 4, !range !14, !noundef !3 ; 2 uses
  %i.n = icmp eq i8 %i.m, 2
  %i.o = load ptr, ptr %i.d, align 8              ; 3 uses
  br i1 %i.n, label %_RNCNvNtCsizY4S0OBG5z_6ignore4walk11path_equalss_0B5_.exit, label %bb.c

_RNCNvNtCsizY4S0OBG5z_6ignore4walk11path_equalss_0B5_.exit: ; preds = %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1046
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.p, align 8, !noalias !1046
  store i64 5, ptr %i.a, align 8, !noalias !1046
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1045, !noalias !1047, !noundef !3
  call void @_RNvMs_CsizY4S0OBG5z_6ignoreNtB4_5Error10with_depth(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, i64 noundef %i.r), !noalias !1046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1046
  call void @_RINvMs_CsizY4S0OBG5z_6ignoreNtB5_5Error9with_pathRNtNtCs2AWtUsOyxgP_3std4path4PathEB5_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1046
  br label %bb.h

bb.c:                                             ; preds = %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.415.0..sroa_idx, i64 12, i1 false)
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.621.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.617.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.o, ptr %i.c, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.m, ptr %.sroa.520.0..sroa_idx, align 4
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = icmp eq i64 %.0.val, %i.s
  %i.u = load i64, ptr %.sroa.419.0..sroa_idx, align 8
  %i.v = icmp eq i64 %i.u, %.8.val
  %narrow = select i1 %i.t, i1 %i.v, i1 false
  %.sroa.022.0 = zext i1 %narrow to i8
  invoke void @_RNvXNtCs5o9EGYvxRCY_9same_file4unixNtB2_6HandleNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i = load i32, ptr %i.x, align 8, !alias.scope !1048, !noundef !3 ; 2 uses
  %i.y = icmp eq i32 %.val1.i.i, -1
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std2fs4FileEECsizY4S0OBG5z_6ignore.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call noundef i32 @close(i32 noundef %.val1.i.i) #20 ; 0 uses
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std2fs4FileEECsizY4S0OBG5z_6ignore.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i = load i32, ptr %i.aa, align 8, !alias.scope !1048, !noundef !3 ; 2 uses
  %i.ab = icmp eq i32 %.val.i.i, -1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5o9EGYvxRCY_9same_file6HandleECsizY4S0OBG5z_6ignore.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef i32 @close(i32 noundef %.val.i.i) #20 ; 0 uses
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5o9EGYvxRCY_9same_file6HandleECsizY4S0OBG5z_6ignore.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std2fs4FileEECsizY4S0OBG5z_6ignore.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5o9EGYvxRCY_9same_file6HandleECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.022.0, ptr %i.ad, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNCNvNtCsizY4S0OBG5z_6ignore4walk11path_equalss_0B5_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs5o9EGYvxRCY_9same_file6HandleECsizY4S0OBG5z_6ignore.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsizY4S0OBG5z_6ignore4walk14walkdir_is_dir(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !noundef !3
  %i.d = trunc i32 %i.c to i16
  %trunc = and i16 %i.d, -4096
  switch i16 %trunc, label %bb.d [
    i16 16384, label %bb.b
    i16 -24576, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.g, %bb.d
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ %.sroa.53.010, %bb.g ], [ true, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  call void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
  %i.k = load i64, ptr %i.a, align 8, !range !10, !noundef !3
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.55.0.copyload = load i32, ptr %.sroa.55.0..sroa_idx, align 8
  %i.m = and i32 %.sroa.55.0.copyload, 61440
  %i.n = icmp eq i32 %i.m, 16384
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsizY4S0OBG5z_6ignore(ptr nonnull %.val1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit
  %.sroa.53.010 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsizY4S0OBG5z_6ignore4walk17should_skip_entry(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs_NtCsizY4S0OBG5z_6ignore3dirNtB4_6Ignore17matched_dir_entry(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noundef !3
  switch i64 %i.h, label %default.unreachable22 [
    i64 1, label %bb.b
    i64 0, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable22:                            ; preds = %bb.h, %bb.c, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.j = icmp ult i64 %i.i, 6
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %i.i, 3
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = load i64, ptr %1, align 8, !range !10, !alias.scope !1057, !noundef !3
  switch i64 %i.l, label %default.unreachable22 [
    i64 0, label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1057, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1057, !noundef !3
  br label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1057, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1057, !noundef !3
  br label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit

_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.4.0.i.i = phi i64 [ %i.t, %bb.e ], [ %i.p, %bb.d ], [ 7, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.r, %bb.e ], [ %i.n, %bb.d ], [ @5, %bb.c ]
  store ptr %.sroa.0.0.i.i, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4.0.i.i, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.v, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs9_CsizY4S0OBG5z_6ignoreINtB5_5MatchNtNtB5_3dir11IgnoreMatchENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB5_, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @13, ptr %i.d, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 12, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @13, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 12, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @15, ptr %i.z, align 8
  call void @_RINvNtCsdxG2AMukdbL_3log13___private_api3loguNtB2_12GlobalLoggerECsizY4S0OBG5z_6ignore(ptr noundef nonnull @14, ptr noundef nonnull %i.e, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit21, %bb.g, %bb.a, %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit ], [ true, %bb.b ], [ false, %bb.g ], [ false, %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.a
  %i.aa = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 6
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ac, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = load i64, ptr %1, align 8, !range !10, !alias.scope !1058, !noundef !3
  switch i64 %i.ad, label %default.unreachable22 [
    i64 0, label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit21
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1058, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1058, !noundef !3
  br label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit21

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1058, !nonnull !3, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1058, !noundef !3
  br label %_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit21

_RNvMNtCsizY4S0OBG5z_6ignore4walkNtB2_8DirEntry4path.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.0.i.i18 = phi i64 [ %i.al, %bb.j ], [ %i.ah, %bb.i ], [ 7, %bb.h ]
  %.sroa.0.0.i.i19 = phi ptr [ %i.aj, %bb.j ], [ %i.af, %bb.i ], [ @5, %bb.h ]
  store ptr %.sroa.0.0.i.i19, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.4.0.i.i18, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.an, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs9_CsizY4S0OBG5z_6ignoreINtB5_5MatchNtNtB5_3dir11IgnoreMatchENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB5_, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @13, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 12, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @13, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 12, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @17, ptr %i.ar, align 8
  call void @_RINvNtCsdxG2AMukdbL_3log13___private_api3loguNtB2_12GlobalLoggerECsizY4S0OBG5z_6ignore(ptr noundef nonnull @16, ptr noundef nonnull %i.b, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsizY4S0OBG5z_6ignore4walkNtB5_11DirEntryRawNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsizY4S0OBG5z_6ignore4walkNtB5_11WalkBuilderNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 11)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 9, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 12, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 12, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 16, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, ptr noundef nonnull @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 7, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 4, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 6, ptr noundef nonnull @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 29, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  %i.w = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.w
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
