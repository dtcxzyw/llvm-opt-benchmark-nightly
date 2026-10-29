Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.09?download=true
inline.NumInlined: 422
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client23connect_with_early_data:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !17543
  store ptr %i.ew, ptr %i.ed, align 8, !dbg !17543
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8, !dbg !17543
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4136.0..sroa_idx, align 8, !dbg !17543
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ed, i64 16, !dbg !17543
  store ptr %i.eh, ptr %i.ng, align 8, !dbg !17543
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24, !dbg !17543
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4140.0..sroa_idx, align 8, !dbg !17543
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ed, i64 32, !dbg !17543
  store ptr %i.ei, ptr %i.nh, align 8, !dbg !17543
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 40, !dbg !17543
  store ptr @_RNvXse_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4144.0..sroa_idx, align 8, !dbg !17543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !dbg !14845
  store ptr @8, ptr %i.ec, align 8, !dbg !14845
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !14845
  store i64 24, ptr %i.ni, align 8, !dbg !14845
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ec, i64 16, !dbg !14845
  store ptr @8, ptr %i.nj, align 8, !dbg !14845
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ec, i64 24, !dbg !14845
  store i64 24, ptr %i.nk, align 8, !dbg !14845
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ec, i64 32, !dbg !14845
  store ptr @51, ptr %i.nl, align 8, !dbg !14845
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull @32, ptr noundef nonnull %i.ed, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ec)
          to label %bb.dw unwind label %bb.ct, !dbg !14845

bb.dv:                                            ; preds = %bb.dt, %bb.dw
    #dbg_value(i8 0, !14040, !DIExpression(), !15863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !17544
    #dbg_value(ptr %i.ef, !15864, !DIExpression(), !15882)
    #dbg_value(ptr %i.ey, !15879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15882)
    #dbg_value(i64 1350, !15879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15882)
  store i16 2, ptr %i.aq, align 4, !dbg !17545
  invoke void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection12send_on_pathCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ea, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.ef, ptr noalias nofree noundef nonnull %i.ey, i64 noundef 1350, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.aq)
          to label %bb.dx unwind label %bb.ct, !dbg !17546

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !dbg !14845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !14845
  br label %bb.dv, !dbg !14845

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !15883), !dbg !17547
  call void @llvm.experimental.noalias.scope.decl(metadata !15884), !dbg !17547
    #dbg_declare(ptr %i.ea, !15885, !DIExpression(), !13057)
    #dbg_value(ptr @52, !15890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13058)
    #dbg_value(i64 19, !15890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13058)
    #dbg_declare(ptr %i.l, !15892, !DIExpression(), !13059)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ea, i64 80, !dbg !17548
  %i.nn = load i32, ptr %i.nm, align 16, !dbg !17548, !range !7205, !alias.scope !15884, !noundef !1750
  %i.no = icmp eq i32 %i.nn, -1, !dbg !17548
  br i1 %i.no, label %bb.dy, label %bb.dz, !dbg !17549, !prof !6467

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !17550, !noalias !15894
  %i.np = load <2 x i64>, ptr %i.ea, align 16, !dbg !17550, !alias.scope !15884
  store <2 x i64> %i.np, ptr %i.l, align 16, !dbg !17550, !noalias !15894
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 19, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #23
          to label %.noexc841 unwind label %bb.ct, !dbg !17551

.noexc841:                                        ; preds = %bb.dy
  unreachable, !dbg !17551

bb.dz:                                            ; preds = %bb.dx
  %.sroa.0983.0.copyload = load i64, ptr %i.ea, align 16, !dbg !17552, !alias.scope !15894 ; 3 uses
  %.sroa.4984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !17552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !dbg !17553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.eb, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4984.0..sroa_idx, i64 80, i1 false), !dbg !17552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !17554
    #dbg_value(i64 %.sroa.0983.0.copyload, !14041, !DIExpression(), !15895)
    #dbg_value(i64 %.sroa.0983.0.copyload, !14925, !DIExpression(), !15896)
    #dbg_value(i64 %.sroa.0983.0.copyload, !14933, !DIExpression(), !15897)
    #dbg_value(i64 %.sroa.0983.0.copyload, !14938, !DIExpression(), !15898)
    #dbg_value(i64 %.sroa.0983.0.copyload, !14897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14915)
    #dbg_value(i64 %.sroa.0983.0.copyload, !14909, !DIExpression(), !14915)
    #dbg_value(i64 %.sroa.0983.0.copyload, !14945, !DIExpression(), !14948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !dbg !17555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !dbg !17556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dy, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !dbg !17556
    #dbg_declare(ptr %i.dy, !15899, !DIExpression(), !13062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17557, !noalias !15904
  invoke void @_RNvMs0_NtNtCsjfnSKV9Rz3v_3h3i6client18connection_summaryNtB5_9StreamMap3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.dy)
          to label %.noexc843 unwind label %bb.ct, !dbg !17557

.noexc843:                                        ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17558, !noalias !15904
  call void @llvm.experimental.noalias.scope.decl(metadata !15905), !dbg !17558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17559, !noalias !15906
  %i.nq = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @85)
          to label %.noexc.i842 unwind label %bb.ec, !dbg !17560, !noalias !15904 ; 2 uses

.noexc.i842:                                      ; preds = %.noexc843
  %i.nr = extractvalue { i64, i64 } %i.nq, 0, !dbg !17560
  %i.ns = extractvalue { i64, i64 } %i.nq, 1, !dbg !17560
  %i.nt = getelementptr inbounds nuw i8, ptr %i.i, i64 64, !dbg !17561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nt, ptr noundef nonnull align 8 dereferenceable(32) @87, i64 32, i1 false), !dbg !17561, !noalias !15906
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96, !dbg !17561
  store i64 %i.nr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !dbg !17561, !noalias !15906
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104, !dbg !17561
  store i64 %i.ns, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !dbg !17561, !noalias !15906
  store i64 -1, ptr %i.i, align 8, !dbg !17561, !noalias !15906
  %i.nu = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @85)
          to label %bb.ed unwind label %bb.ea, !dbg !17562, !noalias !15906 ; 2 uses

bb.ea:                                            ; preds = %.noexc.i842
  %i.nv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #18
          to label %.body.i unwind label %bb.eb, !dbg !17563, !noalias !15906

bb.eb:                                            ; preds = %bb.ea
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17564, !noalias !15906
  unreachable, !dbg !17564

bb.ec:                                            ; preds = %.noexc843
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !17565

.body.i:                                          ; preds = %bb.ec, %bb.ea
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.nx, %bb.ec ], [ %i.nv, %bb.ea ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.k) #18
          to label %.body832 unwind label %bb.eg, !dbg !17565, !noalias !15904

bb.ed:                                            ; preds = %.noexc.i842
  %i.ny = extractvalue { i64, i64 } %i.nu, 0, !dbg !17566
  %i.nz = extractvalue { i64, i64 } %i.nu, 1, !dbg !17566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false), !dbg !17564, !noalias !15904
  %i.oa = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !17564 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oa, ptr noundef nonnull align 8 dereferenceable(32) @87, i64 32, i1 false), !dbg !17564, !noalias !15904
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 144, !dbg !17564
  store i64 %i.ny, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !dbg !17564, !alias.scope !15905, !noalias !15904
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 152, !dbg !17564
  store i64 %i.nz, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !dbg !17564, !alias.scope !15905, !noalias !15904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17563, !noalias !15906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.dz, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !17567, !noalias !15929
  %i.ob = getelementptr inbounds nuw i8, ptr %i.dz, i64 112, !dbg !17567 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ob, ptr noundef nonnull align 8 dereferenceable(48) %i.oa, i64 48, i1 false), !dbg !17567, !noalias !15929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17565, !noalias !15904
    #dbg_value(ptr %i.j, !6105, !DIExpression(), !13083)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.j, i64 64, !dbg !17568
    #dbg_value(ptr %i.oc, !6110, !DIExpression(), !13085)
    #dbg_value(ptr %i.oc, !6117, !DIExpression(), !13087)
    #dbg_value(ptr %i.oc, !6124, !DIExpression(), !13089)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.oc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_.exit.i unwind label %bb.ee, !dbg !17569, !noalias !15904

bb.ee:                                            ; preds = %bb.ed
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary18CloseTriggerFramesEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.j) #18
          to label %.body832 unwind label %bb.ef, !dbg !17568, !noalias !15904

bb.ef:                                            ; preds = %bb.ee
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17568, !noalias !15904
  unreachable, !dbg !17568

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_.exit.i: ; preds = %bb.ed
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary18CloseTriggerFramesEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.j)
          to label %bb.eh unwind label %bb.ct, !dbg !17568

bb.eg:                                            ; preds = %.body.i
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17570, !noalias !15904
  unreachable, !dbg !17570

bb.eh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17571, !noalias !15904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !17572
    #dbg_value(ptr %i.ef, !15930, !DIExpression(), !15936)
  %i.og = getelementptr inbounds nuw i8, ptr %i.ef, i64 14128, !dbg !17573 ; 2 uses
  %i.oh = invoke noundef zeroext i1 @_RNvMs_NtNtCs3f36owOmepS_6quiche3tls9boringsslNtB6_9Handshake16is_in_early_data(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.og)
          to label %bb.ej unwind label %.body854.thread1079.loopexit.split-lp, !dbg !17574

bb.ei:                                            ; preds = %.body746
  br i1 %.sroa.0101.2, label %.body854.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_.exit, !dbg !17575

.body854.thread1079.loopexit:                     ; preds = %bb.et, %bb.fo
  %lpad.loopexit1125 = landingpad { ptr, i32 }
          cleanup
  br label %.body854.thread

.body854.thread1079.loopexit.split-lp:            ; preds = %bb.eh, %bb.er, %._crit_edge, %bb.fa, %bb.fx, %bb.jo, %bb.fd
  %.sroa.096.18.ph.ph = phi i8 [ %.sroa.096.19, %bb.jo ], [ %.sroa.096.19, %bb.fx ], [ %.sroa.096.19, %bb.fa ], [ %.sroa.096.19, %bb.fd ], [ %.sroa.096.19, %._crit_edge ], [ 0, %bb.er ], [ 1, %bb.eh ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body854.thread

.body854:                                         ; preds = %bb.ky
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_.exit, !dbg !17575

bb.ej:                                            ; preds = %bb.eh
  %i.oi = load i64, ptr %2, align 8, !range !2857
  %.not700 = icmp ne i64 %i.oi, -1
  %or.cond738.not = select i1 %i.oh, i1 %.not700, i1 false, !dbg !17576 ; 2 uses
  br i1 %or.cond738.not, label %bb.el, label %bb.ek, !dbg !17576

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit, %bb.ej
  %.sroa.096.19 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit ], [ 1, %bb.ej ], !dbg !17263 ; 19 uses
  %i.oj = icmp ult i64 %.sroa.0983.0.copyload, 1351
    #dbg_value(ptr %i.ey, !14924, !DIExpression(), !15896)
    #dbg_value(ptr %i.ey, !14932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15897)
    #dbg_value(ptr %i.ey, !14939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15898)
    #dbg_value(ptr %i.ey, !14908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14915)
    #dbg_value(i64 1350, !14932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15897)
    #dbg_value(i64 1350, !14939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15898)
    #dbg_value(i64 1350, !14908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14915)
  br i1 %i.oj, label %.lr.ph, label %._crit_edge, !dbg !17577, !prof !15937

.lr.ph:                                           ; preds = %bb.ek
  %i.ok = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 2 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.om = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.op = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %bb.et, !dbg !17577

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !dbg !14565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !14565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !dbg !17578
    #dbg_value(ptr %i.dx, !15939, !DIExpression(), !15948)
    #dbg_value(ptr %i.dx, !15949, !DIExpression(), !15954)
    #dbg_value(ptr %i.dx, !15955, !DIExpression(), !15962)
  %i.or = getelementptr inbounds nuw i8, ptr %i.dx, i64 8, !dbg !17579
  %i.os = load ptr, ptr %i.or, align 8, !dbg !17579, !nonnull !1750, !noundef !1750 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.dx, i64 16, !dbg !17580
  %i.ou = load i64, ptr %i.ot, align 8, !dbg !17580, !noundef !1750
    #dbg_value(i64 %i.ou, !15981, !DIExpression(), !15997)
    #dbg_value(i64 %i.ou, !16000, !DIExpression(), !16006)
    #dbg_value(ptr %i.os, !15998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16007)
    #dbg_value(ptr %i.os, !15985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16008)
    #dbg_value(i64 %i.ou, !15998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16007)
    #dbg_value(i64 %i.ou, !15985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16008)
    #dbg_value(ptr %i.os, !15986, !DIExpression(), !16009)
    #dbg_value(ptr %i.os, !16003, !DIExpression(), !16006)
  %i.ov = getelementptr inbounds nuw [208 x i8], ptr %i.os, i64 %i.ou, !dbg !17581
    #dbg_value(ptr %i.ov, !15987, !DIExpression(), !16010)
  store ptr %i.os, ptr %i.dw, align 8, !dbg !17582
  %i.ow = getelementptr inbounds nuw i8, ptr %i.dw, i64 8, !dbg !17582
  store ptr %i.ov, ptr %i.ow, align 8, !dbg !17582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !dbg !17583
  %i.ox = getelementptr inbounds nuw i8, ptr %i.dv, i64 8, !dbg !17584
  store i32 -1, ptr %i.ox, align 8, !dbg !17584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !dbg !17585
  %i.oy = getelementptr inbounds nuw i8, ptr %i.du, i64 8, !dbg !17586
  store i32 -1, ptr %i.oy, align 8, !dbg !17586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !dbg !17587
  %i.oz = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @85)
          to label %bb.eo unwind label %bb.em, !dbg !17588 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit: ; preds = %bb.en, %bb.em
  %.pn701 = phi { ptr, i32 } [ %i.pa, %bb.em ], [ %i.pb, %bb.en ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dx) #18
          to label %.body854.thread unwind label %bb.do, !dbg !17589

bb.em:                                            ; preds = %bb.ep, %bb.el
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit

bb.en:                                            ; preds = %bb.eo
  %i.pb = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dt, !16017, !DIExpression(), !13118)
    #dbg_value(ptr %i.dt, !16024, !DIExpression(), !13121)
    #dbg_value(ptr %i.dt, !16031, !DIExpression(), !13124)
    #dbg_value(ptr %i.dt, !16038, !DIExpression(), !13127)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit unwind label %bb.do, !dbg !17590

bb.eo:                                            ; preds = %bb.el
  %i.pc = extractvalue { i64, i64 } %i.oz, 0, !dbg !17588
  %i.pd = extractvalue { i64, i64 } %i.oz, 1, !dbg !17588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) @87, i64 32, i1 false), !dbg !17591
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 32, !dbg !17591
  store i64 %i.pc, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !17591, !alias.scope !16044
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 40, !dbg !17591
  store i64 %i.pd, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !17591, !alias.scope !16044
  %i.pe = getelementptr inbounds nuw i8, ptr %i.dt, i64 56, !dbg !17591
  store i8 2, ptr %i.pe, align 8, !dbg !17591, !alias.scope !16044
  invoke fastcc void @_RNvNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client29check_duration_and_do_actions(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dv, ptr noalias nofree noundef align 8 dereferenceable(16) %i.du, ptr noalias nofree noundef align 8 dereferenceable(16) %i.dw, ptr noalias nofree noundef align 16 dereferenceable(15552) %i.ef, ptr noalias nofree noundef align 8 dereferenceable(64) %i.dt, ptr noalias nofree noundef align 8 dereferenceable(48) %i.ob)
          to label %bb.ep unwind label %bb.en, !dbg !17592

bb.ep:                                            ; preds = %bb.eo
    #dbg_value(ptr %i.dt, !16017, !DIExpression(), !13131)
    #dbg_value(ptr %i.dt, !16024, !DIExpression(), !13133)
    #dbg_value(ptr %i.dt, !16031, !DIExpression(), !13135)
    #dbg_value(ptr %i.dt, !16038, !DIExpression(), !13137)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit852 unwind label %bb.em, !dbg !17593

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit852: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !dbg !17594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !dbg !17595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !dbg !17596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !17597
    #dbg_value(ptr %i.dx, !3696, !DIExpression(), !13139)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.er unwind label %bb.eq, !dbg !17598

bb.eq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit852
  %i.pf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dx, !3701, !DIExpression(), !13141)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.body854.thread unwind label %bb.es, !dbg !17599

bb.er:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit852
    #dbg_value(ptr %i.dx, !3701, !DIExpression(), !13143)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit unwind label %.body854.thread1079.loopexit.split-lp, !dbg !17600

bb.es:                                            ; preds = %bb.eq
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17598
  unreachable, !dbg !17598

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit: ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !17589
  br label %bb.ek, !dbg !17601

bb.et:                                            ; preds = %bb.fw, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !dbg !17602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.ok, i64 32, i1 false), !dbg !17602
  %i.ph = invoke { i64, ptr } @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket7send_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ey, i64 noundef %.sroa.0983.0.copyload, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.ds)
          to label %bb.eu unwind label %.body854.thread1079.loopexit, !dbg !17603 ; 2 uses

._crit_edge:                                      ; preds = %bb.ek
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0983.0.copyload, i64 noundef 1350, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #24
          to label %bb.gi unwind label %.body854.thread1079.loopexit.split-lp, !dbg !17604

bb.eu:                                            ; preds = %bb.et
  %i.pi = extractvalue { i64, ptr } %i.ph, 0, !dbg !17605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !dbg !17606
  %i.pj = trunc nuw i64 %i.pi to i1, !dbg !17607
  br i1 %i.pj, label %bb.ev, label %bb.fa, !dbg !17607

bb.ev:                                            ; preds = %bb.eu
  %i.pk = extractvalue { i64, ptr } %i.ph, 1, !dbg !17605 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !dbg !14570
  store ptr %i.pk, ptr %i.dr, align 8, !dbg !14570
    #dbg_value(ptr poison, !16045, !DIExpression(), !13150)
    #dbg_value(ptr poison, !16057, !DIExpression(), !13159)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pk) ]
    #dbg_value(ptr %i.pk, !16079, !DIExpression(), !13168)
    #dbg_declare(ptr poison, !16084, !DIExpression(), !13169)
    #dbg_value(i64 1, !16093, !DIExpression(), !13172)
    #dbg_value(i64 1, !16096, !DIExpression(), !13175)
    #dbg_value(i64 -1, !16099, !DIExpression(), !13178)
    #dbg_value(ptr %i.pk, !16102, !DIExpression(), !13181)
    #dbg_value(ptr %i.pk, !16094, !DIExpression(), !13172)
  %i.pl = ptrtoint ptr %i.pk to i64, !dbg !17608  ; 3 uses
    #dbg_value(i64 %i.pl, !16085, !DIExpression(), !13182)
  %i.pm = and i64 %i.pl, 3, !dbg !17609
  switch i64 %i.pm, label %default.unreachable [
    i64 2, label %bb.ew
    i64 3, label %bb.ex
    i64 0, label %bb.ey
    i64 1, label %bb.ez
  ], !dbg !17610, !prof !5878

bb.ew:                                            ; preds = %bb.ev
    #dbg_value(i64 %i.pl, !16050, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13183)
    #dbg_value(i64 %i.pl, !16105, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13188)
  %i.pn = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc858 unwind label %.loopexit.split-lp1128.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17611

.noexc858:                                        ; preds = %bb.ew
  %i.po = lshr i64 %i.pl, 32, !dbg !17612
    #dbg_value(i64 %i.po, !16105, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13188)
    #dbg_value(i64 %i.po, !16050, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13183)
  %i.pp = trunc nuw i64 %i.po to i32, !dbg !17612
    #dbg_value(i32 %i.pp, !16050, !DIExpression(), !13183)
    #dbg_value(i32 %i.pp, !16105, !DIExpression(), !13188)
    #dbg_value(ptr %i.pn, !16110, !DIExpression(), !13189)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 8, !dbg !17613
  %i.pr = load ptr, ptr %i.pq, align 8, !dbg !17613, !nonnull !1750, !noundef !1750
  %i.ps = invoke noundef i8 %i.pr(i32 noundef %i.pp)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %.loopexit.split-lp1128.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17613, !inline_history !13190

bb.ex:                                            ; preds = %bb.ev
  %i.pt = lshr i64 %i.pl, 32, !dbg !17614
    #dbg_value(i64 %i.pt, !16087, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13191)
    #dbg_value(i64 %i.pt, !5881, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13193)
  %i.pu = icmp ult ptr %i.pk, inttoptr (i64 188978561024 to ptr), !dbg !17615
  %switch.idx.cast.i.i.i = trunc i64 %i.pt to i8  ; 2 uses
    #dbg_value(i8 poison, !16124, !DIExpression(), !13198)
    #dbg_value(ptr poison, !16132, !DIExpression(), !13199)
  %i.pv = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !17616
  call void @llvm.assume(i1 %i.pu), !dbg !17617
  call void @llvm.assume(i1 %i.pv), !dbg !17617
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !17618

end_hunk_0
begin_hunk_1_@_RNvNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client23connect_with_early_data:bb.a
  %i.abq = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !17983
  store i32 %i.abp, ptr %i.abq, align 8, !dbg !17983
    #dbg_value(ptr %i.ci, !14114, !DIExpression(), !17130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !17986
  store ptr %i.ci, ptr %i.ch, align 8, !dbg !17986
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8, !dbg !17986
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.4218.0..sroa_idx, align 8, !dbg !17986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !15167
  store ptr @8, ptr %i.cg, align 8, !dbg !15167
  %i.abr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !15167
  store i64 24, ptr %i.abr, align 8, !dbg !15167
  %i.abs = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !15167
  store ptr @8, ptr %i.abs, align 8, !dbg !15167
  %i.abt = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !15167
  store i64 24, ptr %i.abt, align 8, !dbg !15167
  %i.abu = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !15167
  store ptr @71, ptr %i.abu, align 8, !dbg !15167
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull @40, ptr noundef nonnull %i.ch, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cg)
          to label %bb.ks unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15167

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !15167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !15167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !15167
  br label %bb.kq, !dbg !15167

bb.kt:                                            ; preds = %bb.kx, %bb.ku
  %.pn717 = phi { ptr, i32 } [ %i.aca, %bb.kx ], [ %i.abv, %bb.ku ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ba) #18
          to label %.body746 unwind label %bb.do, !dbg !17987

bb.ku:                                            ; preds = %bb.kv, %bb.io
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.kv:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr noundef nonnull align 8 dereferenceable(224) %i.ay, i64 224, i1 false), !dbg !17844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !17988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !17989
    #dbg_value(ptr %i.ef, !15165, !DIExpression(), !17131)
    #dbg_value(ptr %i.ef, !16713, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !17133)
    #dbg_value(ptr %i.ef, !16720, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !17136)
    #dbg_value(ptr %i.ef, !16729, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !17139)
    #dbg_value(ptr %i.ef, !16740, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !17142)
    #dbg_value(ptr %i.ef, !16746, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !17145)
  %i.abw = load ptr, ptr %i.sz, align 8, !dbg !17990, !nonnull !1750, !noundef !1750 ; 2 uses
  %i.abx = load i64, ptr %i.ta, align 16, !dbg !17991, !noundef !1750
    #dbg_value(i64 %i.abx, !16785, !DIExpression(), !17155)
    #dbg_value(i64 %i.abx, !16798, !DIExpression(), !17158)
    #dbg_value(ptr %i.abw, !16796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17159)
    #dbg_value(ptr %i.abw, !16776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17160)
    #dbg_value(i64 %i.abx, !16796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17159)
    #dbg_value(i64 %i.abx, !16776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17160)
    #dbg_value(ptr %i.abw, !16786, !DIExpression(), !17161)
    #dbg_value(ptr %i.abw, !16801, !DIExpression(), !17158)
  %i.aby = getelementptr inbounds nuw [2792 x i8], ptr %i.abw, i64 %i.abx, !dbg !17992
  %i.abz = load i64, ptr %i.tb, align 8, !dbg !17993, !noundef !1750
    #dbg_value(ptr %i.abw, !15154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17162)
    #dbg_value(ptr %i.aby, !15154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17162)
    #dbg_value(i64 0, !15154, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17162)
    #dbg_value(i64 %i.abz, !15154, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17162)
  store ptr %i.abw, ptr %i.aw, align 8, !dbg !17994
  %.sroa.0284.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !17994
  store ptr %i.aby, ptr %.sroa.0284.sroa.4.0..sroa_idx, align 8, !dbg !17994
  %.sroa.0284.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !17994
  store i64 0, ptr %.sroa.0284.sroa.5.0..sroa_idx, align 8, !dbg !17994
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !17994
  store i64 %i.abz, ptr %.sroa.4285.0..sroa_idx, align 8, !dbg !17994
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCs9Srk37lQfcB_4slab4IterNtB13_4PathENCNvMs1_B15_NtB15_10Connection10path_stats0EE9from_iterCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aw)
          to label %bb.kw unwind label %bb.ku, !dbg !17995

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !17996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !17997
  invoke void @_RINvMs4_NtNtCsjfnSKV9Rz3v_3h3i6client18connection_summaryNtB6_22ConnectionCloseDetails3newNtNtCs3f36owOmepS_6quiche7buffers17DefaultBufFactoryEBa_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.av, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(15552) %i.ef)
          to label %bb.ky unwind label %bb.kx, !dbg !17997

bb.kx:                                            ; preds = %bb.kw
  %i.aca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #18
          to label %bb.kt unwind label %bb.do, !dbg !17987

bb.ky:                                            ; preds = %bb.kw
  %i.acb = getelementptr inbounds nuw i8, ptr %i.bb, i64 24, !dbg !17842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.acb, ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i64 112, i1 false), !dbg !17842
  %i.acc = getelementptr inbounds nuw i8, ptr %i.bb, i64 248, !dbg !17842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.acc, ptr noundef nonnull align 8 dereferenceable(224) %i.az, i64 224, i1 false), !dbg !17842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !dbg !17842
  %i.acd = getelementptr inbounds nuw i8, ptr %i.bb, i64 136, !dbg !17842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.acd, ptr noundef nonnull align 8 dereferenceable(112) %i.av, i64 112, i1 false), !dbg !17842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !17987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !17987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !17987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !17987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(472) %i.bb, i64 472, i1 false), !dbg !17998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !17999
    #dbg_value(ptr %i.dg, !16017, !DIExpression(), !13717)
    #dbg_value(ptr %i.dg, !16024, !DIExpression(), !13719)
    #dbg_value(ptr %i.dg, !16031, !DIExpression(), !13721)
    #dbg_value(ptr %i.dg, !16038, !DIExpression(), !13723)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit924 unwind label %.body854, !dbg !18000

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit924: ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !18001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !18002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !18003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !18004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !18005
    #dbg_value(ptr %i.ob, !16179, !DIExpression(), !13725)
    #dbg_value(ptr %i.ob, !16186, !DIExpression(), !13727)
    #dbg_value(ptr %i.ob, !16193, !DIExpression(), !13729)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCsjfnSKV9Rz3v_3h3i12frame_parser11FrameParserEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ob)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCsjfnSKV9Rz3v_3h3i12frame_parser11FrameParserEEB1A_.exit unwind label %bb.ct, !dbg !18006

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCsjfnSKV9Rz3v_3h3i12frame_parser11FrameParserEEB1A_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !dbg !17575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !18007
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche10ConnectionECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 16 dereferenceable(15552) %i.ef)
          to label %bb.kz unwind label %bb.bl, !dbg !17475

bb.kz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCsjfnSKV9Rz3v_3h3i12frame_parser11FrameParserEEB1A_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !17475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !18008
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei)
          to label %bb.la unwind label %bb.bg, !dbg !18009

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !dbg !18009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !dbg !18010
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche6ConfigECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 16 dereferenceable(624) %i.ek)
          to label %bb.lb unwind label %bb.aa, !dbg !17365

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !dbg !17365
    #dbg_value(ptr poison, !15397, !DIExpression(), !13731)
  br i1 %.not1093, label %bb.ld, label %bb.lc, !dbg !18011

bb.lc:                                            ; preds = %bb.lb
    #dbg_value(ptr poison, !5770, !DIExpression(), !13733)
    #dbg_value(ptr poison, !5776, !DIExpression(), !13735)
    #dbg_value(ptr poison, !5783, !DIExpression(), !13737)
    #dbg_value(ptr poison, !5790, !DIExpression(), !13739)
    #dbg_value(ptr poison, !5797, !DIExpression(), !13741)
  %i.ace = call noundef i32 @close(i32 noundef %i.gn) #20, !dbg !18012, !noalias !17165 ; 0 uses
  br label %bb.ld, !dbg !18011

bb.ld:                                            ; preds = %bb.lb, %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !dbg !18013
  %.val765 = load i32, ptr %i.er, align 4, !dbg !17279, !range !5774, !noundef !1750
    #dbg_value(ptr poison, !15357, !DIExpression(), !13745)
    #dbg_value(ptr poison, !15363, !DIExpression(), !13747)
    #dbg_value(ptr poison, !15370, !DIExpression(), !13749)
    #dbg_value(ptr poison, !15375, !DIExpression(), !13751)
    #dbg_value(ptr poison, !15382, !DIExpression(), !13753)
    #dbg_value(ptr poison, !5783, !DIExpression(), !13755)
    #dbg_value(ptr poison, !5790, !DIExpression(), !13757)
    #dbg_value(ptr poison, !5797, !DIExpression(), !13759)
  %i.acf = call noundef i32 @close(i32 noundef %.val765) #20, !dbg !18014 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !dbg !17279
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3EyXvii9LsX_3mio5event6events6EventsECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.es)
          to label %bb.le unwind label %bb.j, !dbg !18015

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !dbg !18015
  %.val762 = load i32, ptr %i.eu, align 4, !dbg !17243, !range !5774, !noundef !1750
    #dbg_value(ptr poison, !15298, !DIExpression(), !13761)
    #dbg_value(ptr poison, !15305, !DIExpression(), !13763)
    #dbg_value(ptr poison, !15312, !DIExpression(), !13765)
    #dbg_value(ptr poison, !5790, !DIExpression(), !13767)
    #dbg_value(ptr poison, !5797, !DIExpression(), !13769)
  %i.acg = call noundef i32 @close(i32 noundef %.val762) #20, !dbg !18016 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !dbg !17243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !dbg !18017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !dbg !18017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !dbg !18018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !dbg !17245
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %3)
          to label %bb.lg unwind label %bb.lf, !dbg !17245

.body964:                                         ; preds = %bb.nn, %bb.nh, %bb.lf
  %.sroa.096.20 = phi i8 [ %.sroa.096.23, %bb.nh ], [ %.sroa.096.21, %bb.lf ], [ %.sroa.096.24, %bb.nn ], !dbg !17238
  %.pn726.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afh, %bb.nh ], [ %i.ack, %bb.lf ], [ %.pn726.pn.pn.pn.pn.pn.pn.pn, %bb.nn ] ; 2 uses
  %i.ach = load i64, ptr %2, align 8, !dbg !17245, !range !2857, !noundef !1750
  %i.aci = icmp ne i64 %i.ach, -1, !dbg !17245
  %i.acj = trunc nuw i8 %.sroa.096.20 to i1, !dbg !17245
  %or.cond10 = select i1 %i.aci, i1 %i.acj, i1 false, !dbg !17245
  br i1 %or.cond10, label %bb.nu, label %.body974, !dbg !17245

bb.lf:                                            ; preds = %bb.ni, %bb.le
  %.sroa.096.21 = phi i8 [ %.sroa.096.23, %bb.ni ], [ %.sroa.096.19, %bb.le ], !dbg !17263
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %.body964

bb.lg:                                            ; preds = %bb.le
  %i.acl = load i64, ptr %2, align 8, !dbg !17245, !range !2857, !noundef !1750
  %5 = icmp eq i64 %i.acl, -1, !dbg !17245
  %or.cond4.not = or i1 %or.cond738.not, %5, !dbg !17245
  br i1 %or.cond4.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit976, label %bb.lh, !dbg !17245

bb.lh:                                            ; preds = %bb.lg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit976 unwind label %bb.li, !dbg !17245

.body974:                                         ; preds = %bb.nw, %bb.nr, %bb.li, %.body964
  %.pn726.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afp, %bb.nr ], [ %.pn726.pn.pn.pn.pn.pn.pn.pn.pn, %.body964 ], [ %i.acm, %bb.li ], [ %.pn726.pn.pn.pn.pn.pn.pn.pn.pn, %bb.nw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfnSKV9Rz3v_3h3i6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %1) #18
          to label %bb.ny unwind label %bb.do, !dbg !17245

bb.li:                                            ; preds = %bb.ns, %bb.lh
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %.body974

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit976: ; preds = %bb.lg, %bb.lh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit966, %bb.ns
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfnSKV9Rz3v_3h3i6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %1), !dbg !17245
  ret void, !dbg !18019

bb.lj:                                            ; preds = %.lr.ph1181
    #dbg_value(ptr %i.er, !14083, !DIExpression(), !17166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !18020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !18021
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er)
          to label %bb.ll unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18022

bb.lk:                                            ; preds = %.lr.ph1181
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #24
          to label %bb.gi unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18023

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.experimental.noalias.scope.decl(metadata !17167), !dbg !18024
  call void @llvm.experimental.noalias.scope.decl(metadata !17168), !dbg !18024
    #dbg_declare(ptr %i.da, !16214, !DIExpression(), !13774)
    #dbg_declare(ptr %i.am, !16219, !DIExpression(), !13775)
  %i.acn = load i16, ptr %i.da, align 8, !dbg !18025, !range !15520, !alias.scope !17168, !noundef !1750
  %i.aco = icmp eq i16 %i.acn, 2, !dbg !18025
  br i1 %i.aco, label %bb.lm, label %bb.lq, !dbg !18026, !prof !6467

bb.lm:                                            ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !18027, !noalias !17169
  %i.acp = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !18027
  %i.acq = load ptr, ptr %i.acp, align 8, !dbg !18027, !alias.scope !17168, !nonnull !1750, !noundef !1750
  store ptr %i.acq, ptr %i.am, align 8, !dbg !18027, !noalias !17169
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #24
          to label %bb.lo unwind label %bb.ln, !dbg !18028, !noalias !17170

bb.ln:                                            ; preds = %bb.lm
  %i.acr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #18
          to label %.body746 unwind label %bb.lp, !dbg !18029, !noalias !17170

bb.lo:                                            ; preds = %bb.lm
  unreachable

bb.lp:                                            ; preds = %bb.ln
  %i.acs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !18030, !noalias !17170
  unreachable, !dbg !18030

bb.lq:                                            ; preds = %bb.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.da, i64 32, i1 false), !dbg !18031, !alias.scope !17170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !18032
  br label %bb.lr, !dbg !18033

bb.lr:                                            ; preds = %.backedge, %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !dbg !18034
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket9recv_from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cz, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er, ptr noalias nofree noundef nonnull %i.ez, i64 noundef 65535)
          to label %bb.ls unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18035

bb.ls:                                            ; preds = %bb.lr
  %i.act = load i16, ptr %i.se, align 8, !dbg !18034, !range !15520, !noundef !1750
  %i.acu = icmp eq i16 %i.act, 2, !dbg !18034
  br i1 %i.acu, label %bb.lt, label %bb.ly, !dbg !18036

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !18037
  %i.acv = load ptr, ptr %i.cz, align 8, !dbg !18037, !nonnull !1750, !noundef !1750 ; 5 uses
  store ptr %i.acv, ptr %i.cy, align 8, !dbg !18037
    #dbg_value(ptr poison, !16045, !DIExpression(), !13778)
    #dbg_value(ptr poison, !16057, !DIExpression(), !13780)
    #dbg_value(ptr %i.acv, !16079, !DIExpression(), !13782)
    #dbg_declare(ptr poison, !16084, !DIExpression(), !13783)
    #dbg_value(i64 1, !16093, !DIExpression(), !13785)
    #dbg_value(i64 1, !16096, !DIExpression(), !13787)
    #dbg_value(i64 -1, !16099, !DIExpression(), !13789)
    #dbg_value(ptr %i.acv, !16102, !DIExpression(), !13791)
    #dbg_value(ptr %i.acv, !16094, !DIExpression(), !13785)
  %i.acw = ptrtoint ptr %i.acv to i64, !dbg !18038 ; 3 uses
    #dbg_value(i64 %i.acw, !16085, !DIExpression(), !13792)
  %i.acx = and i64 %i.acw, 3, !dbg !18039
  switch i64 %i.acx, label %default.unreachable [
    i64 2, label %bb.lu
    i64 3, label %bb.lv
    i64 0, label %bb.lw
    i64 1, label %bb.lx
  ], !dbg !18040, !prof !5878

bb.lu:                                            ; preds = %bb.lt
    #dbg_value(i64 %i.acw, !16050, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13793)
    #dbg_value(i64 %i.acw, !16105, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13795)
  %i.acy = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc930 unwind label %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18041

.noexc930:                                        ; preds = %bb.lu
  %i.acz = lshr i64 %i.acw, 32, !dbg !18042
    #dbg_value(i64 %i.acz, !16105, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13795)
    #dbg_value(i64 %i.acz, !16050, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13793)
  %i.ada = trunc nuw i64 %i.acz to i32, !dbg !18042
    #dbg_value(i32 %i.ada, !16050, !DIExpression(), !13793)
    #dbg_value(i32 %i.ada, !16105, !DIExpression(), !13795)
    #dbg_value(ptr %i.acy, !16110, !DIExpression(), !13796)
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 8, !dbg !18043
  %i.adc = load ptr, ptr %i.adb, align 8, !dbg !18043, !nonnull !1750, !noundef !1750
  %i.add = invoke noundef i8 %i.adc(i32 noundef %i.ada)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932 unwind label %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18043, !inline_history !13190

bb.lv:                                            ; preds = %bb.lt
  %i.ade = lshr i64 %i.acw, 32, !dbg !18044
    #dbg_value(i64 %i.ade, !16087, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13797)
    #dbg_value(i64 %i.ade, !5881, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13799)
  %i.adf = icmp ult ptr %i.acv, inttoptr (i64 188978561024 to ptr), !dbg !18045
  %switch.idx.cast.i.i.i928 = trunc i64 %i.ade to i8 ; 2 uses
    #dbg_value(i8 poison, !16124, !DIExpression(), !13801)
    #dbg_value(ptr poison, !16132, !DIExpression(), !13802)
  %i.adg = icmp ne i8 %switch.idx.cast.i.i.i928, -1, !dbg !18046
  call void @llvm.assume(i1 %i.adf), !dbg !18047
  call void @llvm.assume(i1 %i.adg), !dbg !18047
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932, !dbg !18048

bb.lw:                                            ; preds = %bb.lt
    #dbg_value(ptr %i.acv, !16054, !DIExpression(), !13803)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acv, i64 16, !dbg !18049
  %i.adi = load i8, ptr %i.adh, align 8, !dbg !18049, !range !16135, !noundef !1750
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932, !dbg !18050

bb.lx:                                            ; preds = %bb.lt
    #dbg_value(ptr %i.acv, !16097, !DIExpression(), !13787)
    #dbg_value(ptr %i.acv, !16100, !DIExpression(), !13789)
    #dbg_value(ptr %i.acv, !16052, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !13804)
  %i.adj = getelementptr i8, ptr %i.acv, i64 31, !dbg !18051
  %i.adk = load i8, ptr %i.adj, align 8, !dbg !18051, !range !16135, !noundef !1750
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932, !dbg !18052

bb.ly:                                            ; preds = %bb.ls
  %i.adl = load i64, ptr %i.cz, align 8, !dbg !18053, !noundef !1750 ; 3 uses
    #dbg_value(i64 %i.adl, !14085, !DIExpression(), !17171)
    #dbg_value(i64 %i.adl, !15082, !DIExpression(), !17172)
    #dbg_value(i64 %i.adl, !15088, !DIExpression(), !17173)
    #dbg_value(i64 %i.adl, !15092, !DIExpression(), !17174)
    #dbg_value(i64 %i.adl, !15064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15076)
    #dbg_value(i64 %i.adl, !15068, !DIExpression(), !15076)
    #dbg_value(i64 %i.adl, !14945, !DIExpression(), !15096)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !18054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.se, i64 32, i1 false), !dbg !18053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !18055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.sf, ptr noundef nonnull align 4 dereferenceable(32) %i.db, i64 32, i1 false), !dbg !18056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !18057
    #dbg_value(ptr %i.ez, !15081, !DIExpression(), !17172)
    #dbg_value(ptr %i.ez, !15087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17173)
    #dbg_value(ptr %i.ez, !15093, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17174)
    #dbg_value(ptr %i.ez, !15067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15076)
    #dbg_value(i64 65535, !15087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17173)
    #dbg_value(i64 65535, !15093, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17174)
    #dbg_value(i64 65535, !15067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15076)
  %i.adm = icmp ult i64 %i.adl, 65536
  br i1 %i.adm, label %bb.lz, label %bb.ma, !dbg !18058, !prof !17018

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection4recvCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cu, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.ef, ptr noalias nofree noundef nonnull %i.ez, i64 noundef %i.adl, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(64) %i.cv)
          to label %bb.mb unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18059

bb.ma:                                            ; preds = %bb.ly
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.adl, i64 noundef 65535, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24
          to label %bb.gi unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18060

bb.mb:                                            ; preds = %bb.lz
  %i.adn = load i64, ptr %i.cu, align 8, !dbg !18057, !range !16635, !noundef !1750 ; 2 uses
  %.not719 = icmp eq i64 %i.adn, -1, !dbg !18057
  br i1 %.not719, label %.backedge, label %bb.mc, !dbg !18061

.backedge:                                        ; preds = %bb.mb, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !18062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !18063
  br label %bb.lr, !dbg !18034

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !18064
  %i.ado = load i64, ptr %i.sg, align 8, !dbg !18064
  store i64 %i.adn, ptr %i.ct, align 8, !dbg !18064
  store i64 %i.ado, ptr %i.sh, align 8, !dbg !18064
    #dbg_value(i64 4, !14098, !DIExpression(), !17175)
    #dbg_value(ptr poison, !14842, !DIExpression(), !17176)
    #dbg_value(ptr poison, !14842, !DIExpression(), !17177)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !14885, !DIExpression(), !15114)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6285, !DIExpression(), !13806)
    #dbg_value(i8 0, !6288, !DIExpression(), !13806)
  %i.adp = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !18065 ; 2 uses
end_hunk_1
