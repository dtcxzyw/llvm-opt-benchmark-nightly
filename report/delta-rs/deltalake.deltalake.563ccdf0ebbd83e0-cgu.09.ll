Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.09?download=true
inline.NumInlined: 7580
inline.NumDeleted: 2927
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler24___pymethod_delete_file__:bb.a
  %i.bv = load ptr, ptr %i.m, align 8, !alias.scope !10827, !noundef !12
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ap:                                            ; preds = %bb.j, %bb.g
  %i.bx = load ptr, ptr %i.m, align 8, !alias.scope !10828, !noundef !12
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.ar:                                            ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler26___pymethod_get_file_info__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [96 x i8], align 16               ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [64 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [64 x i8], align 8                ; 11 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [96 x i8], align 8                ; 13 uses
  %i.w = alloca [96 x i8], align 8                ; 10 uses
  %i.x = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.616.i = alloca [48 x i8], align 8        ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 16 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.8293.i = alloca [16 x i8], align 8       ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 17 uses
  %i.ad = alloca [64 x i8], align 8               ; 10 uses
  %i.ae = alloca [8 x i8], align 8                ; 8 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 9 uses
  %.sroa.10.sroa.7 = alloca [16 x i8], align 8    ; 3 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.56 = alloca [56 x i8], align 8           ; 7 uses
  %i.ak = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.38 = alloca [16 x i8], align 8           ; 12 uses
  %i.al = alloca [8 x i8], align 8                ; 11 uses
  %i.am = alloca [64 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr null, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @349, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.an, i64 noundef 1)
  %i.ap = load i64, ptr %i.am, align 8, !range !11, !noundef !12
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 1, ptr %0, align 8
  br label %bb.dx

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr null, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao, ptr noalias noundef align 8 dereferenceable(8) %i.al)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.ds, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %bb.h, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body289.i, %bb.do, %bb.dq, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.ja, %bb.do ], [ %.pn216298.i, %bb.dq ], [ %.pn213.i, %.body289.i ]
  %i.au = load ptr, ptr %i.al, align 8, !alias.scope !10872, !noundef !12
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.ea

bb.f:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.ak, align 8, !range !11, !noundef !12
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.011.0.copyload = load ptr, ptr %i.ay, align 8 ; 3 uses
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.512.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.011.0.copyload, ptr %i.az, align 8
  store i64 1, ptr %0, align 8
  br label %bb.dy

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB1a_6string6StringEKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 5)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.aj, align 8, !range !11, !noundef !12
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.bc, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.dy

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.experimental.noalias.scope.decl(metadata !10873)
  call void @llvm.experimental.noalias.scope.decl(metadata !10874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10875
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 10)
          to label %bb.l unwind label %.thread.i, !noalias !10875

.body289.i:                                       ; preds = %bb.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %bb.r
  %.sroa.097.4.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.097.5.i, %bb.r ], [ false, %bb.di ]
  %.pn213.i = phi { ptr, i32 } [ %.pn211.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.br, %bb.r ], [ %i.iw, %bb.di ] ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0107.0.copyload.i) #41, !noalias !10876
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10876
  br i1 %.sroa.097.4.i, label %bb.dq, label %.body

.thread.i:                                        ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %i.af, align 8, !range !11, !noalias !10875, !noundef !12
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0101.0.copyload.i = load ptr, ptr %i.bh, align 8, !noalias !10875 ; 7 uses
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.27.16.copyload39 = load ptr, ptr %.sroa.5102.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %5 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5102.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5102.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bi = load <2 x i32>, ptr %.sroa.39.16..sroa.5102.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10875
  %6 = insertelement <4 x ptr> poison, ptr %.sroa.0101.0.copyload.i, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %.sroa.27.16.copyload39, i64 1
  %8 = shufflevector <2 x ptr> %5, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.dn

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10875
  store ptr %.sroa.0101.0.copyload.i, ptr %i.ag, align 8, !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10875
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 8)
          to label %bb.o unwind label %.thread299.i, !noalias !10876

.thread299.i:                                     ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10876
  br label %bb.dq

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.ad, align 8, !range !11, !noalias !10875, !noundef !12
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0107.0.copyload.i = load ptr, ptr %i.bm, align 8, !noalias !10875 ; 5 uses
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.5108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.27.16.copyload38 = load ptr, ptr %.sroa.5108.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %10 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5108.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5108.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bn = load <2 x i32>, ptr %.sroa.39.16..sroa.5108.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10876
  %11 = insertelement <4 x ptr> poison, ptr %.sroa.0107.0.copyload.i, i64 0
  %12 = insertelement <4 x ptr> %11, ptr %.sroa.27.16.copyload38, i64 1
  %13 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x ptr> %12, <4 x ptr> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.dn

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10875
  store ptr %.sroa.0107.0.copyload.i, ptr %i.ae, align 8, !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10875
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !10874, !noalias !10878, !noundef !12 ; 5 uses
  %i.bq = icmp ult i64 %i.bp, 384307168202282326
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10875
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.bp, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.s unwind label %bb.r, !noalias !10876

bb.r:                                             ; preds = %bb.dj, %bb.t, %bb.q
  %.sroa.097.5.i = phi i1 [ true, %bb.t ], [ false, %bb.dj ], [ true, %bb.q ]
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i

bb.s:                                             ; preds = %bb.q
  %i.bs = load i64, ptr %i.f, align 8, !range !11, !noalias !10875, !noundef !12
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !14, !noalias !10875, !noundef !12 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !10875
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bx) #37
          to label %bb.dm unwind label %bb.r, !noalias !10876

bb.u:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bw, align 8, !noalias !10875, !nonnull !12, !noundef !12
  %i.bz = icmp samesign ule i64 %i.bp, %i.bv
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10875
  store i64 %i.bv, ptr %i.ac, align 8, !noalias !10875
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store ptr %i.by, ptr %i.ca, align 8, !noalias !10875
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 7 uses
  store i64 0, ptr %i.cb, align 8, !noalias !10875
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !10874, !noalias !10878, !nonnull !12, !noundef !12 ; 4 uses
  %i.ce = load i64, ptr %i.ai, align 8, !range !19, !alias.scope !10874, !noalias !10878, !noundef !12
  %.idx.i = mul nuw nsw i64 %i.bp, 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10875
  store ptr %i.cd, ptr %i.ab, align 8, !noalias !10875
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %i.cd, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !10875
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.ce, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10875
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  store ptr %i.cf, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293.i)
  %i.cg = icmp eq i64 %i.bp, 0
  br i1 %i.cg, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %bb.u
  %.sroa.8293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

.body271.i:                                       ; preds = %bb.dg, %bb.cz, %.body.i, %.loopexit.split-lp335.i, %.loopexit334.i
  %.pn209.i = phi { ptr, i32 } [ %.pn207.i, %.body.i ], [ %i.ii, %bb.cz ], [ %i.iu, %bb.dg ], [ %lpad.loopexit336.i, %.loopexit334.i ], [ %lpad.loopexit.split-lp337.i, %.loopexit.split-lp335.i ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bj, !noalias !10876

.loopexit334.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit336.i = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i

.loopexit.split-lp335.i:                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i
  %lpad.loopexit.split-lp337.i = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %i.dc = phi ptr [ %i.cd, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %i.il, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10879)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.dd, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !10879, !noalias !10880
  %.sroa.0291.0.copyload292.i = load i64, ptr %i.dc, align 8, !noalias !10881 ; 2 uses
  %.sroa.8293.0..sroa_idx294.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.0..sroa_idx294.i, i64 16, i1 false), !noalias !10881
  %.not.i = icmp eq i64 %.sroa.0291.0.copyload292.i, -9223372036854775808
  br i1 %.not.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10875
  store i64 %.sroa.0291.0.copyload292.i, ptr %i.aa, align 8, !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.i, i64 16, i1 false), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10875
  %i.de = load ptr, ptr %.sroa.8293.0..sroa_idx.i, align 8, !noalias !10875, !nonnull !12, !noundef !12 ; 2 uses
  %i.df = load i64, ptr %i.ch, align 8, !noalias !10875, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10882
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !10876

.noexc.i:                                         ; preds = %bb.v
  %i.dg = load i64, ptr %i.c, align 8, !range !39, !noalias !10882, !noundef !12
  %.not.i.i = icmp eq i64 %i.dg, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.x, !noalias !10876

.thread.i.i:                                      ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !10883
  br label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.w
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.aa unwind label %.loopexit.i, !noalias !10876

bb.x:                                             ; preds = %bb.w
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.c) #38
          to label %.body.i unwind label %bb.y, !noalias !10884

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10884
  unreachable

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.ds unwind label %bb.z, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.z, %.body271.i
  %.pn211.i = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %.pn209.i, %.body271.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #38
          to label %.body289.i unwind label %bb.bj, !noalias !10876

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i

.body.i:                                          ; preds = %bb.dd, %bb.cx, %bb.ab, %.loopexit.split-lp.i, %.loopexit.i, %bb.x
  %.pn207.i = phi { ptr, i32 } [ %.pn205.i, %bb.ab ], [ %i.dh, %bb.x ], [ %i.ig, %bb.cx ], [ %i.ir, %bb.dd ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #38
          to label %.body271.i unwind label %bb.bj, !noalias !10876

.loopexit.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.v
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10875
  invoke void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMsg_NtB2d_10filesystemNtB33_22DeltaFileSystemHandler13get_file_infos_0EB2d_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %.sroa.011.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.ac unwind label %.loopexit304.i, !noalias !10876

bb.ab:                                            ; preds = %bb.ah, %.loopexit.split-lp305.i, %.loopexit304.i
  %.pn205.i = phi { ptr, i32 } [ %.pn203.i, %bb.ah ], [ %lpad.loopexit306.i, %.loopexit304.i ], [ %lpad.loopexit.split-lp307.i, %.loopexit.split-lp305.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.z) #38
          to label %.body.i unwind label %bb.bj, !noalias !10876

.loopexit304.i:                                   ; preds = %bb.cb, %bb.aa
  %lpad.loopexit306.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp305.i:                          ; preds = %bb.ch, %bb.ad
  %lpad.loopexit.split-lp307.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ac:                                            ; preds = %bb.aa
  %i.dk = load i64, ptr %i.x, align 16, !range !101, !noalias !10875, !noundef !12 ; 2 uses
  %.not193.i = icmp eq i64 %i.dk, -9223372036854775707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cj, i64 48, i1 false), !noalias !10875
  br i1 %.not193.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.6116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6116.0..sroa_idx.i, i64 40, i1 false), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10875
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.220.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.i, i64 48, i1 false), !noalias !10875
  store i64 %i.dk, ptr %i.e, align 16, !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10875
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.e)
          to label %bb.df unwind label %.loopexit.split-lp305.i, !noalias !10876

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.i, i64 48, i1 false), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  %i.dl = load i64, ptr %i.ck, align 8, !noalias !10875, !noundef !12 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 96076792050570582
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i64 %i.dl, 0
  br i1 %i.dn, label %bb.af, label %bb.cj

bb.af:                                            ; preds = %bb.ae
  %i.do = load i64, ptr %i.cl, align 8, !noalias !10875, !noundef !12 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 384307168202282326
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp eq i64 %i.do, 0
  br i1 %i.dq, label %bb.ag, label %bb.cj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10875
  invoke void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1v_5ErrorENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2u_22DeltaFileSystemHandler13get_file_infos0_0EB2w_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %.sroa.011.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.ai unwind label %.loopexit309.i, !noalias !10876

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit260.i, %bb.ci, %bb.bf, %.loopexit.split-lp310.i, %.loopexit309.i
  %.pn203.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit260.i ], [ %.pn201.i, %bb.ci ], [ %.pn201.i, %bb.bf ], [ %lpad.loopexit311.i, %.loopexit309.i ], [ %lpad.loopexit.split-lp312.i, %.loopexit.split-lp310.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ListResultECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.y) #38
          to label %bb.ab unwind label %bb.bj, !noalias !10876

.loopexit309.i:                                   ; preds = %bb.cj, %bb.bz, %bb.ag
  %lpad.loopexit311.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp310.i:                          ; preds = %bb.cd
  %lpad.loopexit.split-lp312.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ai:                                            ; preds = %bb.ag
  %i.dr = load i64, ptr %i.w, align 8, !range !14, !noalias !10875, !noundef !12
  %.not448.not.i.not.not.not.not.not = icmp ne i64 %i.dr, -9223372036854775808 ; 2 uses
  br i1 %.not448.not.i.not.not.not.not.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load i64, ptr %i.cz, align 8, !range !49, !noalias !10875, !noundef !12 ; 2 uses
  %i.dt = icmp ne i64 %i.ds, -9223372036854775800
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp eq i64 %i.ds, -9223372036854775801
  br i1 %i.du, label %bb.bm, label %bb.cf

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10875
  %i.dv = load i64, ptr %i.cq, align 8, !noalias !10875, !noundef !12
  %i.dw = load i32, ptr %i.cr, align 8, !range !89, !alias.scope !10885, !noalias !10875, !noundef !12 ; 2 uses
  %i.dx = ashr i32 %i.dw, 13                      ; 3 uses
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  %i.dz = icmp slt i32 %i.dx, 1
  br i1 %i.dz, label %bb.al, label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ea = sub nsw i32 1, %i.dx
  %i.eb = udiv i32 %i.ea, 400
  %i.ec = add nuw nsw i32 %i.eb, 1                ; 2 uses
  %i.ed = mul nuw nsw i32 %i.ec, 400
  %i.ee = add nsw i32 %i.ed, %i.dy
  %.neg.i.i.i = mul nsw i32 %i.ec, -146097
  br label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i

_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i: ; preds = %bb.al, %bb.ak
  %.sroa.05.0.i.i.i = phi i32 [ %.neg.i.i.i, %bb.al ], [ 0, %bb.ak ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.ee, %bb.al ], [ %i.dy, %bb.ak ] ; 2 uses
  %i.ef = sdiv i32 %.sroa.0.0.i.i.i, 100          ; 2 uses
  %i.eg = mul nsw i32 %.sroa.0.0.i.i.i, 1461
  %i.eh = ashr i32 %i.eg, 2
  %i.ei = ashr i32 %i.ef, 2
  %i.ej = lshr i32 %i.dw, 4
  %i.ek = and i32 %i.ej, 511
  %i.el = load i32, ptr %i.cs, align 4, !alias.scope !10885, !noalias !10875, !noundef !12
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i32 %i.ek, -719163
  %i.eo = add nsw i32 %i.en, %.sroa.05.0.i.i.i
  %i.ep = sub nsw i32 %i.eo, %i.ef
  %i.eq = add nsw i32 %i.ep, %i.eh
  %narrow.i.i = add nsw i32 %i.eq, %i.ei
  %i.er = sext i32 %narrow.i.i to i64
  %i.es = mul nsw i64 %i.er, 86400
  %i.et = add nsw i64 %i.es, %i.em                ; 3 uses
  %.lobit.i.i = lshr i64 %i.et, 63
  %.sroa.01.0.i.i = add nsw i64 %.lobit.i.i, %i.et
  %i.eu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.01.0.i.i, i64 1000000000) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ev, label %bb.an, label %bb.am, !prof !15

bb.am:                                            ; preds = %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i
  %i.ew = icmp slt i64 %i.et, 0
  %i.ex = load i32, ptr %i.ct, align 8, !alias.scope !10885, !noalias !10875, !noundef !12
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = add nsw i64 %i.ey, -1000000000
  %.sroa.04.0.i.i = select i1 %i.ew, i64 %i.ez, i64 %i.ey
  %i.fa = extractvalue { i64, i1 } %i.eu, 0
  %i.fb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fa, i64 %.sroa.04.0.i.i) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  %i.fd = extractvalue { i64, i1 } %i.fb, 0
  %not..i.i = xor i1 %i.fc, true
  br label %bb.an

.body240.i:                                       ; preds = %bb.at, %.loopexit.split-lp320.i, %.loopexit319.i
  %.pn197.i = phi { ptr, i32 } [ %.pn195.i, %bb.at ], [ %lpad.loopexit321.i, %.loopexit319.i ], [ %lpad.loopexit.split-lp322.i, %.loopexit.split-lp320.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.v) #38
          to label %bb.bf unwind label %bb.bj, !noalias !10876

.loopexit319.i:                                   ; preds = %bb.be, %bb.ar
  %lpad.loopexit321.i = landingpad { ptr, i32 }
          cleanup
  br label %.body240.i

.loopexit.split-lp320.i:                          ; preds = %bb.bi, %bb.ao
  %lpad.loopexit.split-lp322.i = landingpad { ptr, i32 }
          cleanup
  br label %.body240.i

bb.an:                                            ; preds = %bb.am, %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.fd, %bb.am ], [ undef, %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i ]
  %.sroa.0.1.i.i = phi i1 [ %not..i.i, %bb.am ], [ false, %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10876
  %i.fe = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3025) 16, i64 noundef range(i64 8, 17) 8) #41, !noalias !10876 ; 5 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ao, label %bb.ap, !prof !15

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #37
          to label %.noexc239.i unwind label %.loopexit.split-lp320.i, !noalias !10876

.noexc239.i:                                      ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  store ptr @296, ptr %i.fe, align 8, !noalias !10886
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 35, ptr %i.fg, align 8, !noalias !10876
  br i1 %.sroa.0.1.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, i8 0, i64 16, i1 false), !alias.scope !10873, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10875
  %i.fh = insertelement <2 x ptr> <ptr poison, ptr @297>, ptr %i.fe, i64 0
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit249.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit249.i: ; preds = %bb.bi, %bb.aq
  %.sroa.37.6 = phi ptr [ %.sroa.37.7, %bb.bi ], [ null, %bb.aq ]
  %.sroa.13.6 = phi i64 [ %.sroa.13.7, %bb.bi ], [ 1, %bb.aq ]
  %i.fi = phi <2 x i32> [ %i.gf, %bb.bi ], [ <i32 3, i32 undef>, %bb.aq ]
  %i.fj = phi <2 x ptr> [ %i.gg, %bb.bi ], [ %i.fh, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10875
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.v)
          to label %bb.bk unwind label %.loopexit.split-lp325.i, !noalias !10876

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fe, i64 noundef range(i64 1, 0) 16, i64 noundef range(i64 1, 536870913) 8) #41, !noalias !10887
  store ptr @295, ptr %i.t, align 8, !noalias !10875
  store i64 4, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !10875
  store i64 %i.dv, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !10875
  store ptr @298, ptr %i.cu, align 8, !noalias !10875
  store i64 8, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !10875
  store i64 %.sroa.4.1.i.i, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !10875
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapRexEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_xEE9from_iterAB29_j2_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.t)
          to label %bb.as unwind label %.loopexit319.i, !noalias !10876

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10875
  %i.fk = load ptr, ptr %i.cv, align 8, !noalias !10875, !nonnull !12, !noundef !12
  %i.fl = load i64, ptr %i.cw, align 8, !noalias !10875, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10875
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 4)
          to label %bb.av unwind label %bb.au, !noalias !10876

bb.at:                                            ; preds = %.body244.i, %bb.au
  %.pn195.i = phi { ptr, i32 } [ %i.fm, %bb.au ], [ %eh.lpad-body245.i, %.body244.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body240.i unwind label %bb.bj, !noalias !10876

bb.au:                                            ; preds = %bb.as
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  %i.fn = load i64, ptr %i.q, align 8, !range !11, !noalias !10875, !noundef !12
  %i.fo = trunc nuw i64 %i.fn to i1
  %.sroa.0152.0.copyload.i = load ptr, ptr %i.cx, align 8, !noalias !10875 ; 5 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.27.16.copyload37 = load ptr, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %15 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5153.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5153.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.fp = load <2 x i32>, ptr %.sroa.39.16..sroa.5153.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10875
  br label %bb.bi

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10875
  store ptr %.sroa.0152.0.copyload.i, ptr %i.r, align 8, !noalias !10875
  invoke fastcc void @_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler13get_file_info0B9_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.s, ptr nonnull %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
          to label %bb.az unwind label %bb.ay, !noalias !10876

bb.ay:                                            ; preds = %bb.ax
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body244.i

.body244.i:                                       ; preds = %bb.bd, %bb.ay
  %eh.lpad-body245.i = phi { ptr, i32 } [ %i.fq, %bb.ay ], [ %i.fx, %bb.bd ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0152.0.copyload.i) #41, !noalias !10876
  br label %bb.at

bb.az:                                            ; preds = %bb.ax
  %i.fr = load i64, ptr %i.s, align 8, !range !11, !noalias !10875, !noundef !12
  %i.fs = trunc nuw i64 %i.fr to i1
  %.sroa.0158.0.copyload.i = load ptr, ptr %i.cy, align 8, !noalias !10875 ; 3 uses
  br i1 %i.fs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.sroa.5159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.27.16.copyload36 = load ptr, ptr %.sroa.5159.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5159.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %16 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5159.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5159.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5159.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5159.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ft = load <2 x i32>, ptr %.sroa.39.16..sroa.5159.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0152.0.copyload.i) #41, !noalias !10876
  br label %bb.bi

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10875
  %i.fu = load i64, ptr %i.cb, align 8, !alias.scope !10888, !noalias !10875, !noundef !12 ; 3 uses
  %i.fv = load i64, ptr %i.ac, align 8, !range !19, !alias.scope !10888, !noalias !10875, !noundef !12
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.be unwind label %bb.bd, !noalias !10876

bb.bd:                                            ; preds = %bb.bc
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0158.0.copyload.i) #41, !noalias !10876
  br label %.body244.i

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.fy = load ptr, ptr %i.ca, align 8, !alias.scope !10888, !noalias !10875, !nonnull !12, !noundef !12
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fu
  store ptr %.sroa.0158.0.copyload.i, ptr %i.fz, align 8, !noalias !10876
  %i.ga = add i64 %i.fu, 1
  store i64 %i.ga, ptr %i.cb, align 8, !alias.scope !10888, !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0152.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10875
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit247.i unwind label %.loopexit319.i, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit247.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10875
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.v)
          to label %bb.bg unwind label %.loopexit324.i, !noalias !10876

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i, %.loopexit.split-lp325.i, %.loopexit324.i, %.body240.i
  %.sroa.096.0.i = phi i1 [ true, %.body240.i ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i ], [ true, %.loopexit324.i ], [ %.not448.not.i.not.not.not.not.not, %.loopexit.split-lp325.i ]
  %.pn201.i = phi { ptr, i32 } [ %.pn197.i, %.body240.i ], [ %.pn199.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i ], [ %lpad.loopexit326.i, %.loopexit324.i ], [ %lpad.loopexit.split-lp327.i, %.loopexit.split-lp325.i ] ; 2 uses
  %i.gb = load i64, ptr %i.w, align 8, !range !14, !noalias !10875, !noundef !12
  %i.gc = icmp eq i64 %i.gb, -9223372036854775808
  %or.cond.i = and i1 %.sroa.096.0.i, %i.gc
  br i1 %or.cond.i, label %bb.ci, label %bb.ah

.loopexit324.i:                                   ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit247.i
  %lpad.loopexit326.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp325.i:                          ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit249.i
  %lpad.loopexit.split-lp327.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit247.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10875
  br label %bb.bh

bb.bh:                                            ; preds = %bb.by, %bb.bg
  %i.gd = load i64, ptr %i.w, align 8, !range !14, !noalias !10875, !noundef !12
  %i.ge = icmp eq i64 %i.gd, -9223372036854775808
  br i1 %i.ge, label %bb.bz, label %bb.ca

bb.bi:                                            ; preds = %bb.ba, %bb.aw
  %.sroa.37.7 = phi ptr [ %.sroa.27.16.copyload37, %bb.aw ], [ %.sroa.27.16.copyload36, %bb.ba ]
  %.sroa.13.7.in = phi ptr [ %.sroa.0152.0.copyload.i, %bb.aw ], [ %.sroa.0158.0.copyload.i, %bb.ba ]
  %i.gf = phi <2 x i32> [ %i.fp, %bb.aw ], [ %i.ft, %bb.ba ]
  %i.gg = phi <2 x ptr> [ %15, %bb.aw ], [ %16, %bb.ba ]
  %.sroa.13.7 = ptrtoint ptr %.sroa.13.7.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10875
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit249.i unwind label %.loopexit.split-lp320.i, !noalias !10876

bb.bj:                                            ; preds = %bb.dq, %.body263.i, %bb.ci, %.body254.i, %bb.at, %.body240.i, %bb.ah, %bb.ab, %.body.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %.body271.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10873
  unreachable

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit249.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10875
  br label %bb.bl

bb.bl:                                            ; preds = %bb.cc, %bb.bk
  %.sroa.37.5 = phi ptr [ %.sroa.37.6, %bb.bk ], [ %.sroa.37.4, %bb.cc ] ; 2 uses
  %.sroa.13.5 = phi i64 [ %.sroa.13.6, %bb.bk ], [ %.sroa.13.4, %bb.cc ] ; 2 uses
  %i.gi = phi <2 x i32> [ %i.fi, %bb.bk ], [ %i.hf, %bb.cc ] ; 2 uses
  %i.gj = phi <2 x ptr> [ %i.fj, %bb.bk ], [ %i.hg, %bb.cc ] ; 2 uses
  %i.gk = load i64, ptr %i.w, align 8, !range !14, !noalias !10875, !noundef !12
  %i.gl = icmp eq i64 %i.gk, -9223372036854775808
  br i1 %i.gl, label %bb.cd, label %bb.ce

bb.bm:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10875
  %i.gm = load ptr, ptr %i.cm, align 8, !noalias !10875, !nonnull !12, !noundef !12
  %i.gn = load i64, ptr %i.cn, align 8, !noalias !10875, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10875
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 8)
          to label %bb.bn unwind label %.loopexit324.i, !noalias !10876

bb.bn:                                            ; preds = %bb.bm
  %i.go = load i64, ptr %i.n, align 8, !range !11, !noalias !10875, !noundef !12
  %i.gp = trunc nuw i64 %i.go to i1
  %.sroa.0164.0.copyload.i = load ptr, ptr %i.da, align 8, !noalias !10875 ; 5 uses
  br i1 %i.gp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.27.16.copyload35 = load ptr, ptr %.sroa.5165.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5165.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %17 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5165.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5165.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5165.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5165.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.gq = load <2 x i32>, ptr %.sroa.39.16..sroa.5165.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10875
  br label %bb.cc

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10875
  store ptr %.sroa.0164.0.copyload.i, ptr %i.o, align 8, !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10875
  %i.gr = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.bq unwind label %.loopexit329.i, !noalias !10876 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i: ; preds = %.body254.i, %.loopexit.split-lp330.i, %.loopexit329.i
  %.pn199.i = phi { ptr, i32 } [ %eh.lpad-body255.i, %.body254.i ], [ %lpad.loopexit331.i, %.loopexit329.i ], [ %lpad.loopexit.split-lp332.i, %.loopexit.split-lp330.i ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0164.0.copyload.i) #41, !noalias !10876
  br label %bb.bf

.loopexit329.i:                                   ; preds = %bb.bx, %bb.bp
  %lpad.loopexit331.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i

.loopexit.split-lp330.i:                          ; preds = %bb.bt
  %lpad.loopexit.split-lp332.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i

bb.bq:                                            ; preds = %bb.bp
  %i.gs = extractvalue { i64, i64 } %i.gr, 0
  %i.gt = extractvalue { i64, i64 } %i.gr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false), !noalias !10875
  store i64 %i.gs, ptr %.sroa.4167.0..sroa_idx.i, align 8, !noalias !10875
  store i64 %i.gt, ptr %.sroa.5168.0..sroa_idx.i, align 8, !noalias !10875
  invoke fastcc void @_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler13get_file_info0B9_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.p, ptr nonnull %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gm, i64 noundef %i.gn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
          to label %bb.bs unwind label %bb.br, !noalias !10876

bb.br:                                            ; preds = %bb.bq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body254.i

.body254.i:                                       ; preds = %bb.bw, %bb.br
  %eh.lpad-body255.i = phi { ptr, i32 } [ %i.gu, %bb.br ], [ %i.hb, %bb.bw ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit251.i unwind label %bb.bj, !noalias !10876

bb.bs:                                            ; preds = %bb.bq
  %i.gv = load i64, ptr %i.p, align 8, !range !11, !noalias !10875, !noundef !12
  %i.gw = trunc nuw i64 %i.gv to i1
  %.sroa.0173.0.copyload.i = load ptr, ptr %i.db, align 8, !noalias !10875 ; 3 uses
  br i1 %i.gw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.27.16.copyload34 = load ptr, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5174.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %18 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5174.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5174.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5174.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5174.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.gx = load <2 x i32>, ptr %.sroa.39.16..sroa.5174.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10875
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i unwind label %.loopexit.split-lp330.i, !noalias !10876

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10875
  %i.gy = load i64, ptr %i.cb, align 8, !alias.scope !10889, !noalias !10875, !noundef !12 ; 3 uses
  %i.gz = load i64, ptr %i.ac, align 8, !range !19, !alias.scope !10889, !noalias !10875, !noundef !12
  %i.ha = icmp eq i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.bx unwind label %bb.bw, !noalias !10876

bb.bw:                                            ; preds = %bb.bv
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0173.0.copyload.i) #41, !noalias !10876
  br label %.body254.i

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.hc = load ptr, ptr %i.ca, align 8, !alias.scope !10889, !noalias !10875, !nonnull !12, !noundef !12
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gy
  store ptr %.sroa.0173.0.copyload.i, ptr %i.hd, align 8, !noalias !10876
  %i.he = add i64 %i.gy, 1
  store i64 %i.he, ptr %i.cb, align 8, !alias.scope !10889, !noalias !10875
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %bb.by unwind label %.loopexit329.i, !noalias !10876

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0164.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10875
  br label %bb.bh

bb.bz:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.cz)
          to label %bb.ca unwind label %.loopexit309.i, !noalias !10876

bb.ca:                                            ; preds = %bb.bz, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10875
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cv, %bb.ca
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ListResultECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.y)
          to label %bb.cw unwind label %.loopexit304.i, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0164.0.copyload.i) #41, !noalias !10876
  br label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i, %bb.bo
  %.sroa.37.4 = phi ptr [ %.sroa.27.16.copyload35, %bb.bo ], [ %.sroa.27.16.copyload34, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i ]
  %.sroa.13.4.in = phi ptr [ %.sroa.0164.0.copyload.i, %bb.bo ], [ %.sroa.0173.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i ]
  %i.hf = phi <2 x i32> [ %i.gq, %bb.bo ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i ]
  %i.hg = phi <2 x ptr> [ %17, %bb.bo ], [ %18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit253.i ]
  %.sroa.13.4 = ptrtoint ptr %.sroa.13.4.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10875
  br label %bb.bl

bb.cd:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.cz)
          to label %bb.ce unwind label %.loopexit.split-lp310.i, !noalias !10876

bb.ce:                                            ; preds = %bb.cg, %bb.cd, %bb.bl
  %.sroa.37.3 = phi ptr [ %.sroa.37.5, %bb.cd ], [ %.sroa.37.5, %bb.bl ], [ %.sroa.27.8.copyload28, %bb.cg ]
  %.sroa.13.3 = phi i64 [ %.sroa.13.5, %bb.cd ], [ %.sroa.13.5, %bb.bl ], [ %.sroa.13.8.copyload22, %bb.cg ]
  %i.hh = phi <2 x i32> [ %i.gi, %bb.cd ], [ %i.gi, %bb.bl ], [ %i.hk, %bb.cg ]
  %i.hi = phi <2 x ptr> [ %i.gj, %bb.cd ], [ %i.gj, %bb.bl ], [ %19, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10875
  br label %bb.ch

bb.cf:                                            ; preds = %bb.aj
  %i.hj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hj, ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i64 72, i1 false), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10875
  store i64 -9223372036854775711, ptr %i.k, align 16, !alias.scope !10890, !noalias !10891
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.l, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.k)
          to label %bb.cg unwind label %.loopexit.split-lp325.i, !noalias !10876

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10875
  %.sroa.13.8.copyload22 = load i64, ptr %i.l, align 8, !noalias !10877
  %.sroa.27.8..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.27.8.copyload28 = load ptr, ptr %.sroa.27.8..sroa_idx27, align 8, !noalias !10877
  %.sroa.37.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %19 = load <2 x ptr>, ptr %.sroa.37.8..sroa_idx57, align 8, !noalias !10877
  %.sroa.38.8..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx67, i64 16, i1 false), !noalias !10877
  %.sroa.39.8..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.hk = load <2 x i32>, ptr %.sroa.39.8..sroa_idx70, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10875
  br label %bb.ce

bb.ch:                                            ; preds = %bb.db, %bb.ce
  %.sroa.37.2 = phi ptr [ %.sroa.37.3, %bb.ce ], [ %.sroa.37.1, %bb.db ]
  %.sroa.13.2 = phi i64 [ %.sroa.13.3, %bb.ce ], [ %.sroa.13.1, %bb.db ]
  %i.hl = phi <2 x i32> [ %i.hh, %bb.ce ], [ %i.in, %bb.db ]
  %i.hm = phi <2 x ptr> [ %i.hi, %bb.ce ], [ %i.io, %bb.db ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ListResultECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.y)
          to label %bb.dc unwind label %.loopexit.split-lp305.i, !noalias !10876

bb.ci:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.cz) #38
          to label %bb.ah unwind label %bb.bj, !noalias !10876

bb.cj:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10875
  %i.hn = load ptr, ptr %i.cm, align 8, !noalias !10875, !nonnull !12, !noundef !12
  %i.ho = load i64, ptr %i.cn, align 8, !noalias !10875, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10875
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 9)
          to label %bb.ck unwind label %.loopexit309.i, !noalias !10876

bb.ck:                                            ; preds = %bb.cj
  %i.hp = load i64, ptr %i.h, align 8, !range !11, !noalias !10875, !noundef !12
  %i.hq = trunc nuw i64 %i.hp to i1
  %.sroa.0179.0.copyload.i = load ptr, ptr %i.co, align 8, !noalias !10875 ; 5 uses
  br i1 %i.hq, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %.sroa.5180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.27.16.copyload33 = load ptr, ptr %.sroa.5180.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5180.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %20 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5180.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5180.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5180.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5180.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.hr = load <2 x i32>, ptr %.sroa.39.16..sroa.5180.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10875
  br label %bb.db

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10875
  store ptr %.sroa.0179.0.copyload.i, ptr %i.i, align 8, !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10875
  %i.hs = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.cn unwind label %.loopexit314.i, !noalias !10876 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit260.i: ; preds = %.body263.i, %.loopexit.split-lp315.i, %.loopexit314.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body264.i, %.body263.i ], [ %lpad.loopexit316.i, %.loopexit314.i ], [ %lpad.loopexit.split-lp317.i, %.loopexit.split-lp315.i ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0179.0.copyload.i) #41, !noalias !10876
  br label %bb.ah

.loopexit314.i:                                   ; preds = %bb.cu, %bb.cm
  %lpad.loopexit316.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit260.i

.loopexit.split-lp315.i:                          ; preds = %bb.cq
  %lpad.loopexit.split-lp317.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit260.i

bb.cn:                                            ; preds = %bb.cm
  %i.ht = extractvalue { i64, i64 } %i.hs, 0
  %i.hu = extractvalue { i64, i64 } %i.hs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false), !noalias !10875
  store i64 %i.ht, ptr %.sroa.4182.0..sroa_idx.i, align 8, !noalias !10875
  store i64 %i.hu, ptr %.sroa.5183.0..sroa_idx.i, align 8, !noalias !10875
  invoke fastcc void @_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler13get_file_info0B9_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.j, ptr nonnull %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef %i.ho, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.cp unwind label %bb.co, !noalias !10876

bb.co:                                            ; preds = %bb.cn
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body263.i

.body263.i:                                       ; preds = %bb.ct, %bb.co
  %eh.lpad-body264.i = phi { ptr, i32 } [ %i.hv, %bb.co ], [ %i.ic, %bb.ct ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit260.i unwind label %bb.bj, !noalias !10876

bb.cp:                                            ; preds = %bb.cn
  %i.hw = load i64, ptr %i.j, align 8, !range !11, !noalias !10875, !noundef !12
  %i.hx = trunc nuw i64 %i.hw to i1
  %.sroa.0188.0.copyload.i = load ptr, ptr %i.cp, align 8, !noalias !10875 ; 3 uses
  br i1 %i.hx, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %.sroa.5189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.27.16.copyload = load ptr, ptr %.sroa.5189.0..sroa_idx.i, align 8, !noalias !10877
  %.sroa.37.16..sroa.5189.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %21 = load <2 x ptr>, ptr %.sroa.37.16..sroa.5189.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  %.sroa.38.16..sroa.5189.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.16..sroa.5189.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !10877
  %.sroa.39.16..sroa.5189.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.hy = load <2 x i32>, ptr %.sroa.39.16..sroa.5189.0..sroa_idx.i.sroa_idx, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10875
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i unwind label %.loopexit.split-lp315.i, !noalias !10876

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10875
  %i.hz = load i64, ptr %i.cb, align 8, !alias.scope !10892, !noalias !10875, !noundef !12 ; 3 uses
  %i.ia = load i64, ptr %i.ac, align 8, !range !19, !alias.scope !10892, !noalias !10875, !noundef !12
  %i.ib = icmp eq i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.cu unwind label %bb.ct, !noalias !10876

bb.ct:                                            ; preds = %bb.cs
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0188.0.copyload.i) #41, !noalias !10876
  br label %.body263.i

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  %i.id = load ptr, ptr %i.ca, align 8, !alias.scope !10892, !noalias !10875, !nonnull !12, !noundef !12
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.hz
  store ptr %.sroa.0188.0.copyload.i, ptr %i.ie, align 8, !noalias !10876
  %i.if = add i64 %i.hz, 1
  store i64 %i.if, ptr %i.cb, align 8, !alias.scope !10892, !noalias !10875
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.cv unwind label %.loopexit314.i, !noalias !10876

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0179.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10875
  br label %bb.cb

bb.cw:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10875
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cx, !noalias !10876

bb.cx:                                            ; preds = %bb.cw
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i unwind label %bb.cy, !noalias !10876

bb.cy:                                            ; preds = %bb.cx
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10876
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.cw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.i, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10875
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cz, !noalias !10876

bb.cz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body271.i unwind label %bb.da, !noalias !10876

bb.da:                                            ; preds = %bb.cz
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10876
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit334.i, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293.i)
  %i.ik = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !10893, !noalias !10880, !nonnull !12, !noundef !12
  %i.il = load ptr, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !10893, !noalias !10880, !nonnull !12, !noundef !12 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.ik
  br i1 %i.im, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0179.0.copyload.i) #41, !noalias !10876
  br label %bb.db

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i, %bb.cl
  %.sroa.37.1 = phi ptr [ %.sroa.27.16.copyload33, %bb.cl ], [ %.sroa.27.16.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %.sroa.13.1.in = phi ptr [ %.sroa.0179.0.copyload.i, %bb.cl ], [ %.sroa.0188.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %i.in = phi <2 x i32> [ %i.hr, %bb.cl ], [ %i.hy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %i.io = phi <2 x ptr> [ %20, %bb.cl ], [ %21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %.sroa.13.1 = ptrtoint ptr %.sroa.13.1.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10875
  br label %bb.ch

bb.dc:                                            ; preds = %bb.df, %bb.ch
  %.sroa.37.0 = phi ptr [ %.sroa.37.2, %bb.ch ], [ %.sroa.27.8.copyload26, %bb.df ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.2, %bb.ch ], [ %.sroa.13.8.copyload21, %bb.df ]
  %i.ip = phi <2 x i32> [ %i.hl, %bb.ch ], [ %i.it, %bb.df ]
  %i.iq = phi <2 x ptr> [ %i.hm, %bb.ch ], [ %22, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10875
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i unwind label %bb.dd, !noalias !10876

bb.dd:                                            ; preds = %bb.dc
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i unwind label %bb.de, !noalias !10876

bb.de:                                            ; preds = %bb.dd
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10876
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i unwind label %.loopexit.split-lp.i, !noalias !10876

bb.df:                                            ; preds = %bb.ad
  %.sroa.13.8.copyload21 = load i64, ptr %i.d, align 8, !noalias !10877
  %.sroa.27.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.27.8.copyload26 = load ptr, ptr %.sroa.27.8..sroa_idx25, align 8, !noalias !10877
  %.sroa.37.8..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %22 = load <2 x ptr>, ptr %.sroa.37.8..sroa_idx55, align 8, !noalias !10877
  %.sroa.38.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx66, i64 16, i1 false), !noalias !10877
  %.sroa.39.8..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.it = load <2 x i32>, ptr %.sroa.39.8..sroa_idx68, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  br label %bb.dc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10875
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i unwind label %bb.dg, !noalias !10876

bb.dg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body271.i unwind label %bb.dh, !noalias !10876

bb.dh:                                            ; preds = %bb.dg
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10876
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i unwind label %.loopexit.split-lp335.i, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i unwind label %bb.z, !noalias !10876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10875
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dj unwind label %bb.di, !noalias !10876

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body289.i unwind label %bb.dk, !noalias !10876

bb.dj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dl unwind label %bb.r, !noalias !10876

bb.dk:                                            ; preds = %bb.di
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10876
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0107.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10875
  %i.iy = inttoptr i64 %.sroa.13.0 to ptr
  %23 = insertelement <4 x ptr> poison, ptr %i.iy, i64 0
  %24 = insertelement <4 x ptr> %23, ptr %.sroa.37.0, i64 1
  %25 = shufflevector <2 x ptr> %i.iq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %26 = shufflevector <4 x ptr> %24, <4 x ptr> %25, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.dr

bb.dm:                                            ; preds = %bb.t
  unreachable

bb.dn:                                            ; preds = %bb.p, %bb.m
  %i.iz = phi <2 x i32> [ %i.bi, %bb.m ], [ %i.bn, %bb.p ]
  %27 = phi <4 x ptr> [ %9, %bb.m ], [ %14, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10875
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.do, !noalias !10873

bb.do:                                            ; preds = %bb.dn
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body unwind label %bb.dp, !noalias !10873

bb.dp:                                            ; preds = %bb.do
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10873
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.dn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dr unwind label %bb.d

bb.dq:                                            ; preds = %.thread299.i, %.thread.i, %.body289.i
  %.pn216298.i = phi { ptr, i32 } [ %i.be, %.thread.i ], [ %.pn213.i, %.body289.i ], [ %i.bj, %.thread299.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #38
          to label %.body unwind label %bb.bj, !noalias !10873

bb.dr:                                            ; preds = %bb.dl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i
  %i.jc = phi <2 x i32> [ %i.iz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.ip, %bb.dl ]
  %28 = phi <4 x ptr> [ %27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %26, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, i64 16, i1 false)
  br label %bb.dt

bb.ds:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10875
  %.sroa.13.8.copyload24 = load i64, ptr %i.ac, align 8, !noalias !10877
  %.sroa.27.8..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.jd = load <2 x ptr>, ptr %i.ca, align 8, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0107.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10875
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.13.8.copyload24, ptr %i.ah, align 8
  store <2 x ptr> %i.jd, ptr %.sroa.27.8..sroa_idx29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10894
  invoke void @_RINvYINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah)
          to label %.noexc18 unwind label %bb.d

.noexc18:                                         ; preds = %bb.ds
  %i.je = load i64, ptr %i.b, align 8, !range !11, !noalias !10894, !noundef !12
  %i.jf = trunc nuw i64 %i.je to i1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload92 = load ptr, ptr %i.jg, align 8, !noalias !10895 ; 2 uses
  br i1 %i.jf, label %.thread, label %bb.du

.thread:                                          ; preds = %.noexc18
  %.sroa.10.8..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.sroa.0.0.copyload99 = load ptr, ptr %.sroa.10.8..sroa_idx94, align 8, !noalias !10895
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %29 = load <2 x ptr>, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx94.sroa_idx, align 8, !noalias !10895
  %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx94.sroa_idx, i64 16, i1 false)
  %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.jh = load <2 x i32>, ptr %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx94.sroa_idx, align 8, !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10894
  %30 = insertelement <4 x ptr> poison, ptr %.sroa.5.8.copyload92, i64 0
  %31 = insertelement <4 x ptr> %30, ptr %.sroa.10.sroa.0.0.copyload99, i64 1
  %32 = shufflevector <2 x ptr> %29, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x ptr> %31, <4 x ptr> %32, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.dt

bb.dt:                                            ; preds = %.thread, %bb.dr
  %i.ji = phi <2 x i32> [ %i.jc, %bb.dr ], [ %i.jh, %.thread ]
  %34 = phi <4 x ptr> [ %28, %bb.dr ], [ %33, %.thread ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x ptr> %34, ptr %i.jj, align 8
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8107.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.7, i64 16, i1 false)
  %.sroa.9108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i32> %i.ji, ptr %.sroa.9108.0..sroa_idx, align 8
  br label %bb.dv

bb.du:                                            ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10894
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload92, ptr %i.jk, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %storemerge = phi i64 [ 0, %bb.du ], [ 1, %bb.dt ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.jl = load ptr, ptr %i.al, align 8, !alias.scope !10896, !noundef !12
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19: ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  ret void

bb.dy:                                            ; preds = %bb.j, %bb.g
  %i.jn = load ptr, ptr %i.al, align 8, !alias.scope !10897, !noundef !12
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20: ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dx

bb.ea:                                            ; preds = %bb.e
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler26___pymethod_get_type_name__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !10906, !noundef !12
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.k, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.l, align 8
  store i64 1, ptr %0, align 8
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !10907, !noundef !12
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10908
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc14 unwind label %bb.b

.noexc14:                                         ; preds = %bb.f
  %i.o = load i64, ptr %i.a, align 8, !range !11, !noalias !10908, !noundef !12
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !14, !noalias !10908, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %.noexc14
  %i.t = load i64, ptr %i.s, align 8, !noalias !10908
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc15 unwind label %bb.b

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc14
  %i.u = load ptr, ptr %i.s, align 8, !noalias !10908, !nonnull !12, !noundef !12 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 11
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @302, i64 12, i1 false), !noalias !10908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %i.b, align 8
  %.sroa.25.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %.sroa.25.sroa.2.0..sroa_idx, align 8
  %.sroa.25.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 12, ptr %.sroa.25.sroa.3.0..sroa_idx, align 8
  %i.w = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !10909, !noundef !12
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split: ; preds = %bb.i, %bb.e
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler27___pymethod___getnewargs____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.10.sroa.5 = alloca [40 x i8], align 8    ; 3 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.3.sroa.3.sroa.3 = alloca [40 x i8], align 8 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr null, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef align 8 dereferenceable(8) %i.i)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.j, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.y, %bb.g ], [ %i.ad, %bb.j ]
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !10927, !noundef !12
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.c

bb.c:                                             ; preds = %.body
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.r
end_hunk_0
