Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.09?download=true
inline.NumInlined: 7580
inline.NumDeleted: 2927
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler35___pymethod_get_file_info_selector__:bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  %i.bn = load i64, ptr %i.x, align 8, !range !21, !noalias !11492, !noundef !22
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0146.0.copyload.i = load ptr, ptr %i.bp, align 8, !noalias !11492 ; 2 uses
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.5147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.15.16.copyload50 = load ptr, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !11491
  %.sroa.19.16..sroa.5147.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.19.16.copyload57 = load i64, ptr %.sroa.19.16..sroa.5147.0..sroa_idx.i.sroa_idx, align 8, !noalias !11491
  %.sroa.21.16..sroa.5147.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.16..sroa.5147.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11492
  %i.bq = ptrtoint ptr %.sroa.0146.0.copyload.i to i64
  br label %bb.cl

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11492
  store ptr %.sroa.0146.0.copyload.i, ptr %i.y, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11492
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 8)
          to label %bb.v unwind label %bb.u, !noalias !11492

bb.t:                                             ; preds = %.body.i, %bb.u
  %.pn252.i = phi { ptr, i32 } [ %i.br, %bb.u ], [ %.pn250.i, %.body.i ]
  %.val259.i = load ptr, ptr %i.y, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val259.i) #41, !noalias !11492
  br label %bb.o

bb.u:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  %i.bs = load i64, ptr %i.v, align 8, !range !21, !noalias !11492, !noundef !22
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0152.0.copyload.i = load ptr, ptr %i.bu, align 8, !noalias !11492 ; 2 uses
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.15.16.copyload = load ptr, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !11491
  %.sroa.19.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.19.16.copyload = load i64, ptr %.sroa.19.16..sroa.5153.0..sroa_idx.i.sroa_idx, align 8, !noalias !11491
  %.sroa.21.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.16..sroa.5153.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11492
  %i.bv = ptrtoint ptr %.sroa.0152.0.copyload.i to i64
  br label %bb.ci

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11492
  store ptr %.sroa.0152.0.copyload.i, ptr %i.w, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11492
  store ptr %i.y, ptr %i.u, align 8, !noalias !11492
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.a, ptr %i.bw, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11492
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !11491, !nonnull !22, !noundef !22 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !11491, !noundef !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11494
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.ca)
          to label %.noexc.i unwind label %bb.ab, !noalias !11492

.noexc.i:                                         ; preds = %bb.x
  %i.cb = load i64, ptr %i.f, align 8, !range !49, !noalias !11494, !noundef !22
  %.not.i.i = icmp eq i64 %i.cb, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.ca)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.z, !noalias !11492

.thread.i.i:                                      ; preds = %.noexc.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !11495
  br label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.y
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !11492

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.f) #38
          to label %.body.i unwind label %bb.aa, !noalias !11496

bb.aa:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11496
  unreachable

.body.i:                                          ; preds = %bb.bw, %bb.br, %.body298.i, %bb.ab, %bb.z
  %.pn250.i = phi { ptr, i32 } [ %.pn248.i, %.body298.i ], [ %i.cd, %bb.z ], [ %i.fo, %bb.br ], [ %i.cf, %bb.ab ], [ %i.fs, %bb.bw ]
  %.val262.i = load ptr, ptr %i.w, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val262.i) #41, !noalias !11492
  br label %bb.t

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11492
  %i.cg = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc265.i unwind label %.thread33.i, !noalias !11492

.noexc265.i:                                      ; preds = %bb.ac
  store i32 %i.cg, ptr %i.e, align 4, !noalias !11492
  %i.ch = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !11497
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %.noexc265.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %.thread33.i, !noalias !11492

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.ad, %.noexc265.i
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !11492, !noundef !22 ; 2 uses
  store i32 %i.cj, ptr %i.d, align 4, !noalias !11492
  %i.ck = load i32, ptr %i.e, align 4, !noalias !11492, !noundef !22
  %.not.i264.i = icmp eq i32 %i.ck, %i.cj
  br i1 %.not.i264.i, label %bb.ae, label %bb.ag, !prof !23

bb.ae:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.cl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !11492
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ah, label %bb.af, !prof !23

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.ah unwind label %.thread33.i, !noalias !11492

bb.ag:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11492
  store ptr %i.e, ptr %i.c, align 8, !noalias !11492
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !11492
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cn, align 8, !noalias !11492
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !11492
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc268.i unwind label %.thread33.i, !noalias !11492

.noexc268.i:                                      ; preds = %bb.ag
  unreachable

.body298.i:                                       ; preds = %bb.ck, %bb.cj, %.thread19.thread.i, %.thread19.i, %bb.by, %bb.bm, %.thread33.i, %.body272.i
  %.pn248.i = phi { ptr, i32 } [ %i.ek, %.thread19.i ], [ %.pn246.i, %bb.cj ], [ %.pn246.i, %bb.ck ], [ %.pn246.i, %.body272.i ], [ %.pn2439.i, %.thread19.thread.i ], [ %i.fg, %bb.bm ], [ %i.fu, %bb.by ], [ %lpad.thr_comm.i, %.thread33.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.t) #38
          to label %.body.i unwind label %bb.cb, !noalias !11492

bb.ah:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11492
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val32) ]
  %i.co = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !11492
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.val, ptr %i.cq, align 8, !alias.scope !11498, !noalias !11492
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.val32, ptr %i.cr, align 8, !alias.scope !11498, !noalias !11492
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.t, ptr %i.cs, align 8, !alias.scope !11498, !noalias !11492
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  store i8 %i.bj, ptr %i.ct, align 1, !alias.scope !11498, !noalias !11492
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 0, ptr %i.cu, align 8, !alias.scope !11498, !noalias !11492
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0EB19_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.r, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311)
          to label %bb.ak unwind label %.thread33.i, !noalias !11492

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11492
  %i.cv = load i64, ptr %i.r, align 8, !range !109, !noalias !11492, !noundef !22 ; 4 uses
  %.not.i = icmp eq i64 %i.cv, -9223372036854775790
  br i1 %.not.i, label %bb.al, label %5

5:                                                ; preds = %bb.ak
  %6 = icmp ne i64 %i.cv, -9223372036854775800
  call void @llvm.assume(i1 %6)
  %7 = icmp eq i64 %i.cv, -9223372036854775801
  br i1 %7, label %bb.an, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.055.0.copyload.i = load i64, ptr %i.cw, align 8, !noalias !11492
  %.sroa.256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.256.0.copyload.i = load ptr, ptr %.sroa.256.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cx = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.457.sroa.2.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.457.sroa.2.0.copyload.i = load ptr, ptr %.sroa.457.sroa.2.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.457.sroa.3.0.copyload.i = load i64, ptr %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %bb.al
  %i.cy = phi i64 [ %.pre.i, %.thread.i ], [ -9223372036854775790, %bb.al ] ; 3 uses
  %.sroa.929.sroa.11.sroa.10.0.i = phi i64 [ 0, %.thread.i ], [ %.sroa.457.sroa.3.0.copyload.i, %bb.al ]
  %.sroa.929.sroa.11.sroa.9.0.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %.sroa.457.sroa.2.0.copyload.i, %bb.al ]
  %.sroa.929.sroa.9.0.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %.sroa.256.0.copyload.i, %bb.al ] ; 3 uses
  %.sroa.929.sroa.0.0.i = phi i64 [ 0, %.thread.i ], [ %.sroa.055.0.copyload.i, %bb.al ] ; 3 uses
  %i.cz = phi <2 x i64> [ zeroinitializer, %.thread.i ], [ %i.cx, %bb.al ] ; 2 uses
  store i64 %.sroa.929.sroa.0.0.i, ptr %i.s, align 8, !noalias !11492
  %.sroa.4193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.929.sroa.9.0.i, ptr %.sroa.4193.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.5194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx195.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 5 uses
  store <2 x i64> %i.cz, ptr %.sroa.5194.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.7196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %.sroa.929.sroa.11.sroa.9.0.i, ptr %.sroa.7196.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.8197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i64 %.sroa.929.sroa.11.sroa.10.0.i, ptr %.sroa.8197.0..sroa_idx.i, align 8, !noalias !11492
  %.not244.i = icmp eq i64 %i.cy, -9223372036854775790
  %i.da = extractelement <2 x i64> %i.cz, i64 0   ; 2 uses
  br i1 %.not244.i, label %bb.az, label %bb.ba

bb.an:                                            ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11492
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !noalias !11492
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !11492, !nonnull !22, !noundef !22 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !noalias !11492, !nonnull !22, !align !32, !noundef !22 ; 6 uses
  br i1 %i.bd, label %bb.ap, label %bb.av

bb.ao:                                            ; preds = %5
  %.sroa.282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.282.0.copyload.i = load i64, ptr %.sroa.282.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.383.0.copyload.i = load ptr, ptr %.sroa.383.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.484.0.copyload.i = load i64, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.585.0.copyload.i = load i64, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.686.0.copyload.i = load ptr, ptr %.sroa.686.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.787.0.copyload.i = load i64, ptr %.sroa.787.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.888.0..sroa_idx.i, i64 16, i1 false), !noalias !11492
  %i.dg = inttoptr i64 %.sroa.585.0.copyload.i to ptr
  br label %bb.cd

bb.ap:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.df, align 8, !invariant.load !22, !noalias !11492 ; 2 uses
  %.not.i269.i = icmp eq ptr %i.dh, null
  br i1 %.not.i269.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void %i.dh(ptr noundef nonnull %i.dd)
          to label %bb.ar unwind label %bb.at, !noalias !11492

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !range !29, !invariant.load !22, !noalias !11492 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !range !37, !invariant.load !22, !noalias !11492
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dj, i64 noundef range(i64 1, 536870913) %i.dm) #41, !noalias !11492
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !29, !invariant.load !22, !noalias !11492 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.body270.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !range !37, !invariant.load !22, !noalias !11492
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dp, i64 noundef range(i64 1, 536870913) %i.ds) #41, !noalias !11492
  br label %.body270.i

bb.av:                                            ; preds = %bb.an
  %.sroa.078.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !11492
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.479.0.copyload.i = load ptr, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.580.0.copyload.i = load i64, ptr %.sroa.580.0..sroa_idx.i, align 8, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11492
  br label %bb.cd

.body270.i:                                       ; preds = %bb.au, %bb.at
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #38
          to label %.body272.i unwind label %bb.cb, !noalias !11492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.as, %bb.ar
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.aw, !noalias !11492

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body272.i unwind label %bb.ax, !noalias !11492

bb.ax:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread.i unwind label %bb.ay, !noalias !11492

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11492
  %.pre.i = load i64, ptr %i.r, align 8, !range !109, !noalias !11492
  br label %bb.am

.body272.i:                                       ; preds = %bb.ay, %bb.aw, %.body270.i
  %.sroa.0139.0.i = phi i1 [ true, %.body270.i ], [ %i.dy, %bb.ay ], [ true, %bb.aw ]
  %.pn246.i = phi { ptr, i32 } [ %i.dn, %.body270.i ], [ %i.dx, %bb.ay ], [ %i.dt, %bb.aw ] ; 3 uses
  %i.dv = load i64, ptr %i.r, align 8, !range !109, !noalias !11492, !noundef !22 ; 3 uses
  %i.dw = icmp ne i64 %i.dv, -9223372036854775790
  %or.cond5.i = select i1 %i.dw, i1 %.sroa.0139.0.i, i1 false
  br i1 %or.cond5.i, label %bb.cj, label %.body298.i

bb.ay:                                            ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.0139.1.i = phi i8 [ %.sroa.0139.2.i, %bb.cd ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = trunc nuw i8 %.sroa.0139.1.i to i1
  br label %.body272.i

bb.az:                                            ; preds = %._crit_edge.i, %bb.ba, %bb.am
  %i.dz = phi i64 [ %.pre47.i, %._crit_edge.i ], [ %i.da, %bb.ba ], [ %i.da, %bb.am ] ; 2 uses
  %i.ea = phi i64 [ %.pre46.i, %._crit_edge.i ], [ %.sroa.929.sroa.0.0.i, %bb.ba ], [ %.sroa.929.sroa.0.0.i, %bb.am ]
  %i.eb = phi ptr [ %.pre45.i, %._crit_edge.i ], [ %.sroa.929.sroa.9.0.i, %bb.ba ], [ %.sroa.929.sroa.9.0.i, %bb.am ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11492
  store i64 0, ptr %i.o, align 8, !noalias !11492
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ec, align 8, !noalias !11492
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.ed, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11492
  %i.ee = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.eb, ptr %i.m, align 8, !noalias !11492
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.eb, ptr %.sroa.4108.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ea, ptr %.sroa.5109.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ef, ptr %.sroa.6110.0..sroa_idx.i, align 8, !noalias !11492
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.u, ptr %i.eg, align 8, !noalias !11492
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.w, ptr %i.eh, align 8, !noalias !11492
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler22get_file_info_selectors_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4m_5types3any5PyAnyEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4m_3err5PyErrENCINvXso_B5o_IB5m_INtB1b_3VecB4h_EB68_EINtNtNtB4_6traits7collect12FromIteratorIB5m_B4h_B68_EE9from_iterBQ_E0B6J_EB2L_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m)
          to label %bb.bd unwind label %bb.bc, !noalias !11492

bb.ba:                                            ; preds = %bb.am
  %i.ei = icmp ne i64 %i.cy, -9223372036854775800
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp eq i64 %i.cy, -9223372036854775801
  br i1 %i.ej, label %bb.az, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r)
          to label %._crit_edge.i unwind label %bb.cc, !noalias !11492

._crit_edge.i:                                    ; preds = %bb.bb
  %.pre45.i = load ptr, ptr %.sroa.4193.0..sroa_idx.i, align 8, !noalias !11492
  %.pre46.i = load i64, ptr %i.s, align 8, !range !29, !noalias !11492
  %.pre47.i = load i64, ptr %.sroa.5194.0..sroa_idx.i, align 8, !noalias !11492
  br label %bb.az

.thread33.i:                                      ; preds = %bb.ch, %bb.bz, %bb.bn, %bb.aj, %bb.ag, %bb.af, %bb.ad, %bb.ac
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body298.i

bb.bc:                                            ; preds = %bb.bp, %bb.bj, %bb.bi, %bb.az
  %.sroa.0142.2.i = phi i1 [ false, %bb.bp ], [ false, %bb.bj ], [ true, %bb.bi ], [ true, %bb.az ]
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.o) #38
          to label %.thread19.i unwind label %bb.cb, !noalias !11492

bb.bd:                                            ; preds = %bb.az
  %i.el = load i64, ptr %i.n, align 8, !range !21, !noalias !11492, !noundef !22
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0219.0.copyload.i = load i64, ptr %i.en, align 8, !noalias !11492 ; 3 uses
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5220.0.copyload.i = load ptr, ptr %.sroa.5220.0..sroa_idx.i, align 8, !noalias !11492 ; 4 uses
  %.sroa.6221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6221.0.copyload.i = load i64, ptr %.sroa.6221.0..sroa_idx.i, align 8, !noalias !11492 ; 3 uses
  br i1 %i.em, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %.sroa.7222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7222.0..sroa_idx.i, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bg unwind label %bb.bf, !noalias !11492

bb.bf:                                            ; preds = %bb.be
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread19.thread.i unwind label %bb.bh, !noalias !11492

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread33.thread.i, !noalias !11492

.thread33.thread.i:                               ; preds = %bb.bg
  %lpad.thr_comm44.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread19.thread.i

bb.bh:                                            ; preds = %bb.bf
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

bb.bi:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11492
  %i.eq = icmp ult i64 %.sroa.6221.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5220.0.copyload.i, i64 %.sroa.6221.0.copyload.i
  %i.es = icmp sgt i64 %.sroa.0219.0.copyload.i, -1
  call void @llvm.assume(i1 %i.es)
  store ptr %.sroa.5220.0.copyload.i, ptr %i.h, align 8, !noalias !11492
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0219.0.copyload.i, ptr %i.et, align 8, !noalias !11492
  %i.eu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5220.0.copyload.i, ptr %i.eu, align 8, !noalias !11492
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.er, ptr %i.ev, align 8, !noalias !11492
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBZ_5types3any5PyAnyEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.bj unwind label %bb.bc, !noalias !11492

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11492
  %i.ew = load ptr, ptr %.sroa.7196.0..sroa_idx.i, align 8, !noalias !11492, !nonnull !22, !noundef !22 ; 3 uses
  %i.ex = load i64, ptr %.sroa.6.0..sroa_idx195.i, align 8, !range !29, !noalias !11492, !noundef !22
  %i.ey = load i64, ptr %.sroa.8197.0..sroa_idx.i, align 8, !noalias !11492, !noundef !22 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 96076792050570582
  call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [96 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.ew, ptr %i.k, align 8, !noalias !11492
  %.sroa.4132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ew, ptr %.sroa.4132.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.5133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.ex, ptr %.sroa.5133.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.6134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.fa, ptr %.sroa.6134.0..sroa_idx.i, align 8, !noalias !11492
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.u, ptr %i.fb, align 8, !noalias !11492
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.w, ptr %i.fc, align 8, !noalias !11492
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler22get_file_info_selectors0_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4n_5types3any5PyAnyEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4n_3err5PyErrENCINvXso_B5p_IB5n_INtB1b_3VecB4i_EB69_EINtNtNtB4_6traits7collect12FromIteratorIB5n_B4i_B69_EE9from_iterBQ_E0B6K_EB2L_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
          to label %bb.bk unwind label %bb.bc, !noalias !11492

bb.bk:                                            ; preds = %bb.bj
  %i.fd = load i64, ptr %i.l, align 8, !range !21, !noalias !11492, !noundef !22
  %i.fe = trunc nuw i64 %i.fd to i1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0234.0.copyload.i = load i64, ptr %i.ff, align 8, !noalias !11492 ; 3 uses
  %.sroa.5235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5235.0.copyload.i = load ptr, ptr %.sroa.5235.0..sroa_idx.i, align 8, !noalias !11492 ; 4 uses
  %.sroa.6236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6236.0.copyload.i = load i64, ptr %.sroa.6236.0..sroa_idx.i, align 8, !noalias !11492 ; 3 uses
  br i1 %i.fe, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %.sroa.7237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7237.0..sroa_idx.i, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bn unwind label %bb.bm, !noalias !11492

bb.bm:                                            ; preds = %bb.bl
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body298.i unwind label %bb.bo, !noalias !11492

bb.bn:                                            ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i unwind label %.thread33.i, !noalias !11492

bb.bo:                                            ; preds = %bb.bm
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

bb.bp:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11492
  %i.fi = icmp ult i64 %.sroa.6236.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5235.0.copyload.i, i64 %.sroa.6236.0.copyload.i
  %i.fk = icmp sgt i64 %.sroa.0234.0.copyload.i, -1
  call void @llvm.assume(i1 %i.fk)
  store ptr %.sroa.5235.0.copyload.i, ptr %i.g, align 8, !noalias !11492
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0234.0.copyload.i, ptr %i.fl, align 8, !noalias !11492
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5235.0.copyload.i, ptr %i.fm, align 8, !noalias !11492
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fj, ptr %i.fn, align 8, !noalias !11492
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBZ_5types3any5PyAnyEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.bq unwind label %bb.bc, !noalias !11492

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11492
  %.sroa.740.8.copyload43 = load i64, ptr %i.o, align 8, !noalias !11491
  %.sroa.15.8.copyload49 = load ptr, ptr %i.ec, align 8, !noalias !11491
  %.sroa.19.8.copyload56 = load i64, ptr %i.ed, align 8, !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.br, !noalias !11492

bb.br:                                            ; preds = %bb.bq
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.bs, !noalias !11492

bb.bs:                                            ; preds = %bb.br
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.bt unwind label %bb.ab, !noalias !11492

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11492
  %.val261.i = load ptr, ptr %i.w, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val261.i) #41, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11492
  %.val258.i = load ptr, ptr %i.y, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val258.i) #41, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i unwind label %bb.bu, !noalias !11493

bb.bu:                                            ; preds = %bb.bt
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.bv, !noalias !11493

bb.bv:                                            ; preds = %bb.bu
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11493
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i: ; preds = %bb.cl, %bb.bt
  %.sroa.19.3 = phi i64 [ %.sroa.19.2, %bb.cl ], [ %.sroa.19.8.copyload56, %bb.bt ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %bb.cl ], [ %.sroa.15.8.copyload49, %bb.bt ] ; 2 uses
  %.sroa.740.3 = phi i64 [ %.sroa.740.2, %bb.cl ], [ %.sroa.740.8.copyload43, %bb.bt ] ; 2 uses
  %.sroa.0.3 = phi i1 [ true, %bb.cl ], [ false, %bb.bt ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.co unwind label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11492
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.cf, %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i
  %.sroa.19.0 = phi i64 [ %.sroa.6221.0.copyload.i, %bb.bz ], [ %.sroa.6236.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ], [ %.sroa.19.8.copyload52, %bb.cf ]
  %.sroa.15.0 = phi ptr [ %.sroa.5220.0.copyload.i, %bb.bz ], [ %.sroa.5235.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ], [ %.sroa.15.8.copyload45, %bb.cf ]
  %.sroa.740.0 = phi i64 [ %.sroa.0219.0.copyload.i, %bb.bz ], [ %.sroa.0234.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ], [ %.sroa.740.8.copyload41, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i unwind label %bb.bw, !noalias !11492

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.bx, !noalias !11492

bb.bx:                                            ; preds = %bb.bw
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i unwind label %bb.ab, !noalias !11492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i)
          to label %bb.bz unwind label %bb.by, !noalias !11492

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i)
          to label %.body298.i unwind label %bb.ca, !noalias !11492

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread33.i, !noalias !11492

bb.ca:                                            ; preds = %bb.by
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

bb.cb:                                            ; preds = %bb.ck, %.thread19.thread.i, %bb.cc, %bb.bc, %.body270.i, %.body298.i, %bb.o
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11493
  unreachable

.thread19.i:                                      ; preds = %bb.bc
  br i1 %.sroa.0142.2.i, label %.thread19.thread.i, label %.body298.i

bb.cc:                                            ; preds = %bb.bb
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.s) #38
          to label %.thread19.thread.i unwind label %bb.cb, !noalias !11492

.thread19.thread.i:                               ; preds = %bb.cc, %.thread19.i, %.thread33.thread.i, %bb.bf
  %.pn2439.i = phi { ptr, i32 } [ %lpad.thr_comm44.i, %.thread33.thread.i ], [ %i.ek, %.thread19.i ], [ %lpad.thr_comm.split-lp.i, %bb.cc ], [ %i.eo, %bb.bf ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i) #38
          to label %.body298.i unwind label %bb.cb, !noalias !11492

bb.cd:                                            ; preds = %bb.av, %bb.ao
  %.sroa.0139.2.i = phi i8 [ 1, %bb.av ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.929.sroa.11.sroa.10.2.i = phi i64 [ 0, %bb.av ], [ %.sroa.787.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.11.sroa.9.2.i = phi ptr [ %i.df, %bb.av ], [ %.sroa.686.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.11.sroa.0.2.i = phi ptr [ %i.dd, %bb.av ], [ %i.dg, %bb.ao ]
  %.sroa.929.sroa.10.2.i = phi i64 [ %.sroa.580.0.copyload.i, %bb.av ], [ %.sroa.484.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.9.2.i = phi ptr [ %.sroa.479.0.copyload.i, %bb.av ], [ %.sroa.383.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.0.2.i = phi i64 [ %.sroa.078.0.copyload.i, %bb.av ], [ %.sroa.282.0.copyload.i, %bb.ao ]
  %i.fx = ptrtoint ptr %.sroa.929.sroa.9.2.i to i64
  %i.fy = ptrtoint ptr %.sroa.929.sroa.11.sroa.9.2.i to i64
  %i.fz = inttoptr i64 %.sroa.929.sroa.0.2.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11492
  store i64 -9223372036854775711, ptr %i.j, align 16, !noalias !11492
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.cv, ptr %.sroa.290.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.290.sroa.2.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.fz, ptr %.sroa.290.sroa.2.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11492
  %.sroa.290.sroa.3.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.fx, ptr %.sroa.290.sroa.3.0..sroa.290.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  %.sroa.290.sroa.4.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.929.sroa.10.2.i, ptr %.sroa.290.sroa.4.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11492
  %.sroa.290.sroa.5.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %.sroa.929.sroa.11.sroa.0.2.i, ptr %.sroa.290.sroa.5.0..sroa.290.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  %.sroa.290.sroa.6.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.fy, ptr %.sroa.290.sroa.6.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11492
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.sroa.929.sroa.11.sroa.10.2.i, ptr %.sroa.391.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.391.sroa.2.0..sroa.391.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.391.sroa.2.0..sroa.391.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11492
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.j)
          to label %bb.ce unwind label %bb.ay, !noalias !11492

bb.ce:                                            ; preds = %bb.cd
  %.sroa.740.8.copyload41 = load i64, ptr %i.i, align 8, !noalias !11491
  %.sroa.15.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.15.8.copyload45 = load ptr, ptr %.sroa.15.8..sroa_idx44, align 8, !noalias !11491
  %.sroa.19.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.19.8.copyload52 = load i64, ptr %.sroa.19.8..sroa_idx51, align 8, !noalias !11491
  %.sroa.21.8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.8..sroa_idx58, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11492
  %i.ga = load i64, ptr %i.r, align 8, !range !109, !noalias !11492, !noundef !22 ; 3 uses
  %i.gb = icmp ne i64 %i.ga, -9223372036854775790
  %i.gc = trunc nuw i8 %.sroa.0139.2.i to i1
  %or.cond3.i = and i1 %i.gb, %i.gc
  br i1 %or.cond3.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.cg, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11492
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.gd = icmp ne i64 %i.ga, -9223372036854775800
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp eq i64 %i.ga, -9223372036854775801
  br i1 %i.ge, label %bb.cf, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r)
          to label %bb.cf unwind label %.thread33.i, !noalias !11492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11492
  %.val260.i = load ptr, ptr %i.w, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val260.i) #41, !noalias !11492
  br label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i, %bb.w
  %.sroa.19.1 = phi i64 [ %.sroa.19.16.copyload, %bb.w ], [ %.sroa.19.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.16.copyload, %bb.w ], [ %.sroa.15.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  %.sroa.740.1 = phi i64 [ %i.bv, %bb.w ], [ %.sroa.740.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11492
  %.val257.i = load ptr, ptr %i.y, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val257.i) #41, !noalias !11492
  br label %bb.cl

bb.cj:                                            ; preds = %.body272.i
  %i.gf = icmp ne i64 %i.dv, -9223372036854775800
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp eq i64 %i.dv, -9223372036854775801
  br i1 %i.gg, label %.body298.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r) #38
          to label %.body298.i unwind label %bb.cb, !noalias !11492

bb.cl:                                            ; preds = %bb.ci, %bb.r
  %.sroa.19.2 = phi i64 [ %.sroa.19.16.copyload57, %bb.r ], [ %.sroa.19.1, %bb.ci ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.16.copyload50, %bb.r ], [ %.sroa.15.1, %bb.ci ]
  %.sroa.740.2 = phi i64 [ %i.bq, %bb.r ], [ %.sroa.740.1, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i unwind label %bb.cm, !noalias !11493

bb.cm:                                            ; preds = %bb.cl
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.cn, !noalias !11493

bb.cn:                                            ; preds = %bb.cm
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11493
  unreachable

bb.co:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br i1 %.sroa.0.3, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, i64 32, i1 false)
  %i.gj = inttoptr i64 %.sroa.740.3 to ptr
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  store i64 %.sroa.740.3, ptr %i.z, align 8
  %.sroa.15.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.15.3, ptr %.sroa.15.8..sroa_idx46, align 8
  %.sroa.19.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.19.3, ptr %.sroa.19.8..sroa_idx53, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11499
  invoke void @_RINvYINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc34 unwind label %.body

.noexc34:                                         ; preds = %bb.cq
  %i.gk = load i64, ptr %i.b, align 8, !range !21, !noalias !11499, !noundef !22
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload61 = load ptr, ptr %i.gm, align 8, !noalias !11500 ; 2 uses
  br i1 %i.gl, label %.thread, label %bb.cs

end_hunk_0
