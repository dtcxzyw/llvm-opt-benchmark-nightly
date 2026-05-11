inline.NumInlined: 638
inline.NumDeleted: 246
begin_hunk_0_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.cn:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !881
  %.sroa.0.0.copyload34.pre.i.i = load i64, ptr %i.k, align 8, !noalias !888
  br label %bb.df

bb.co:                                            ; preds = %bb.cc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29
          to label %.noexc.i.i unwind label %bb.de, !noalias !889

.noexc.i.i:                                       ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.cc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29
          to label %.noexc15.i.i unwind label %bb.de, !noalias !889

.noexc15.i.i:                                     ; preds = %bb.cp
  unreachable
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs.exit11.i.i.i unwind label %bb.db, !noalias !887

bb.cs:                                            ; preds = %bb.cq
  %i.ir = load i64, ptr %i.l, align 8, !range !890, !noalias !881, !noundef !11 ; 7 uses
  %i.is = icmp eq i64 %i.ir, -9223372036854775788
  br i1 %i.is, label %.thread.i.i, label %bb.ct

end_hunk_1
begin_hunk_2_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i, i64 24, i1 false), !noalias !881
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.iw = load i64, ptr %i.iv, align 8, !range !53, !alias.scope !897, !noalias !881, !noundef !11
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 4 uses
  %i.iy = icmp eq i64 %i.iw, 0
  br i1 %i.iy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.iz = load ptr, ptr %i.ix, align 8, !alias.scope !904, !noalias !881, !nonnull !11, !noundef !11
  %i.ja = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !noalias !905
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %.invoke19.i.i.i, label %bb.df

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.jc = load ptr, ptr %i.ix, align 8, !alias.scope !912, !noalias !881, !nonnull !11, !noundef !11
  %i.jd = atomicrmw sub ptr %i.jc, i64 1 release, align 8, !noalias !913
  %i.je = icmp eq i64 %i.jd, 1
  br i1 %i.je, label %.invoke.i.i.i, label %bb.df

bb.cy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i, i64 24, i1 false), !noalias !881
  store i64 -9223372036854775799, ptr %i.k, align 8, !alias.scope !914, !noalias !917
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.jg = load i64, ptr %i.jf, align 8, !range !53, !alias.scope !925, !noalias !881, !noundef !11
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 4 uses
  %i.ji = icmp eq i64 %i.jg, 0
  br i1 %i.ji, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.jj = load ptr, ptr %i.jh, align 8, !alias.scope !932, !noalias !881, !nonnull !11, !noundef !11
  %i.jk = atomicrmw sub ptr %i.jj, i64 1 release, align 8, !noalias !933
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %.invoke19.i.i.i, label %bb.df

.invoke19.i.i.i:                                  ; preds = %bb.cz, %bb.cw
  %.sroa.0.0.copyload3463.i.i = phi i64 [ %i.ir, %bb.cw ], [ -9223372036854775799, %bb.cz ]
  %i.jm = phi ptr [ %i.ix, %bb.cw ], [ %i.jh, %bb.cz ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jm) #28
          to label %bb.df unwind label %bb.cg, !noalias !887

bb.da:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.jn = load ptr, ptr %i.jh, align 8, !alias.scope !940, !noalias !881, !nonnull !11, !noundef !11
  %i.jo = atomicrmw sub ptr %i.jn, i64 1 release, align 8, !noalias !941
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %.invoke.i.i.i, label %bb.df

.invoke.i.i.i:                                    ; preds = %bb.da, %bb.cx
  %.sroa.0.0.copyload3462.i.i = phi i64 [ %i.ir, %bb.cx ], [ -9223372036854775799, %bb.da ]
  %i.jq = phi ptr [ %i.ix, %bb.cx ], [ %i.jh, %bb.da ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jq) #28
end_hunk_2
begin_hunk_3_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.ju = phi ptr [ %i.hf, %bb.cn ], [ %i.im, %bb.cw ], [ %i.im, %bb.cx ], [ %i.im, %bb.cz ], [ %i.im, %.invoke19.i.i.i ], [ %i.im, %bb.da ], [ %i.im, %.invoke.i.i.i ] ; 2 uses
  %i.jv = phi ptr [ %i.hg, %bb.cn ], [ %i.in, %bb.cw ], [ %i.in, %bb.cx ], [ %i.in, %bb.cz ], [ %i.in, %.invoke19.i.i.i ], [ %i.in, %bb.da ], [ %i.in, %.invoke.i.i.i ]
  %i.jw = phi ptr [ %i.hh, %bb.cn ], [ %i.io, %bb.cw ], [ %i.io, %bb.cx ], [ %i.io, %bb.cz ], [ %i.io, %.invoke19.i.i.i ], [ %i.io, %bb.da ], [ %i.io, %.invoke.i.i.i ]
  %.sroa.0.0.copyload34.i.i = phi i64 [ %.sroa.0.0.copyload34.pre.i.i, %bb.cn ], [ %i.ir, %bb.cw ], [ %i.ir, %bb.cx ], [ -9223372036854775799, %bb.cz ], [ %.sroa.0.0.copyload3463.i.i, %.invoke19.i.i.i ], [ -9223372036854775799, %bb.da ], [ %.sroa.0.0.copyload3462.i.i, %.invoke.i.i.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 769
  store i8 0, ptr %i.jx, align 1, !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !881
  %.sroa.835.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i, align 8, !noalias !888
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.835.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i, i64 24, i1 false), !noalias !888
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i, i64 32, i1 false), !noalias !888
  store i8 1, ptr %i.jv, align 8, !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
end_hunk_3
begin_hunk_4_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.7.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.jw)
          to label %bb.dj unwind label %bb.di, !noalias !889

bb.di:                                            ; preds = %bb.dh
  %i.ka = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.kd = phi ptr [ %.sroa.6.2.i.i.i, %bb.gc ], [ %.sroa.835.sroa.0.0.copyload.i.i, %bb.dh ] ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.ke)
          to label %bb.gf unwind label %bb.ge, !noalias !889

.body.i.i:                                        ; preds = %bb.de, %bb.dc
  %i.kf = phi ptr [ %i.hk, %bb.dc ], [ %.phi.trans.insert.i, %bb.de ]
end_hunk_5
begin_hunk_6_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.7.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.kh) #26
          to label %bb.dl unwind label %bb.dk, !noalias !889

bb.dk:                                            ; preds = %bb.gh, %.body21.i.i, %bb.ge, %bb.dl, %.body.i.i
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !889
  unreachable

bb.dl:                                            ; preds = %.body21.i.i, %bb.gd, %.body.i.i, %bb.di
end_hunk_6
begin_hunk_7_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.pn10.pn.i.i = phi { ptr, i32 } [ %.pn8.i.i, %.body21.i.i ], [ %i.un, %bb.gd ], [ %i.ka, %bb.di ], [ %.pn2.i.i, %.body.i.i ]
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.kl) #26
          to label %bb.gh unwind label %bb.dk, !noalias !889

bb.dm:                                            ; preds = %bb.by
  %.phi.trans.insert61.i.i = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 5 uses
end_hunk_7
begin_hunk_8_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.dp:                                            ; preds = %bb.dm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc19.i.i unwind label %bb.ga, !noalias !889

.noexc19.i.i:                                     ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc20.i.i unwind label %bb.ga, !noalias !889

.noexc20.i.i:                                     ; preds = %bb.dq
  unreachable
end_hunk_8
begin_hunk_9_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.li = load i64, ptr %i.i, align 8, !range !890, !noalias !942, !noundef !11 ; 3 uses
  %i.lj = icmp eq i64 %i.li, -9223372036854775788
  br i1 %i.lj, label %bb.du, label %bb.dv

end_hunk_9
begin_hunk_10_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.ey, !noalias !946, !inline_history !431

bb.ei:                                            ; preds = %bb.eg
  %i.nh = load i64, ptr %i.h, align 8, !range !890, !noalias !942, !noundef !11 ; 4 uses
  %i.ni = icmp eq i64 %i.nh, -9223372036854775788
  br i1 %i.ni, label %bb.ej, label %bb.ek

end_hunk_10
begin_hunk_11_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %bb.ev

bb.fb:                                            ; preds = %bb.ez
  %i.qe = load i64, ptr %i.g, align 8, !range !890, !noalias !942, !noundef !11 ; 4 uses
  %i.qf = icmp eq i64 %i.qe, -9223372036854775788
  br i1 %i.qf, label %bb.fc, label %bb.fd

end_hunk_11
begin_hunk_12_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5104.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.um)
          to label %bb.dj unwind label %bb.gd, !noalias !889

bb.gd:                                            ; preds = %bb.gc
  %i.un = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
          cleanup
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.up)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.dk, !noalias !889

bb.gf:                                            ; preds = %bb.dj
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.uq)
          to label %bb.gj unwind label %bb.gg, !noalias !889

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.gh, %bb.gg, %bb.ge
  %i.ur = phi ptr [ %i.kb, %bb.gg ], [ %i.kb, %bb.ge ], [ %i.kj, %bb.gh ]
end_hunk_13
begin_hunk_14_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.uw = phi ptr [ %i.ss, %.body.i.i.i ], [ %i.km, %bb.ga ]
  %.pn8.i.i = phi { ptr, i32 } [ %.pn32.i.i.i, %.body.i.i.i ], [ %i.ug, %bb.ga ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.uw) #26
          to label %bb.dl unwind label %bb.dk, !noalias !889

bb.gh:                                            ; preds = %bb.dl
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ux)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.dk, !noalias !889

bb.gi:                                            ; preds = %bb.gb, %bb.dg
  %i.uy = phi ptr [ %i.jz, %bb.dg ], [ %i.uh, %bb.gb ]
end_hunk_14
begin_hunk_15_@llvm.experimental.noalias.scope.decl
!885 = !{!882, !884, !878, !850}
!886 = !{i8 0, i8 2}
!887 = !{!882, !878, !850}
!888 = !{!884, !878, !880, !850, !853}
!889 = !{!878, !850}
!890 = !{i64 0, i64 -9223372036854775787}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!893 = distinct !{!893, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!896 = distinct !{!896, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!897 = !{!895, !892}
!898 = !{!899}
!899 = distinct !{!899, !900, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!900 = distinct !{!900, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!901 = !{!902}
!902 = distinct !{!902, !903, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!903 = distinct !{!903, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!904 = !{!902, !899, !895, !892}
!905 = !{!902, !899, !895, !892, !882, !878, !850}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!908 = distinct !{!908, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!911 = distinct !{!911, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!912 = !{!910, !907, !895, !892}
!913 = !{!910, !907, !895, !892, !882, !878, !850}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!916 = distinct !{!916, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs"}
!917 = !{!918, !882, !884, !878, !880, !850, !853}
!918 = distinct !{!918, !916, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs: argument 1"}
!919 = !{!920}
!920 = distinct !{!920, !921, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!921 = distinct !{!921, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!922 = !{!923}
!923 = distinct !{!923, !924, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!924 = distinct !{!924, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!925 = !{!923, !920}
!926 = !{!927}
!927 = distinct !{!927, !928, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!928 = distinct !{!928, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!931 = distinct !{!931, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!932 = !{!930, !927, !923, !920}
!933 = !{!930, !927, !923, !920, !882, !878, !850}
!934 = !{!935}
!935 = distinct !{!935, !936, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!936 = distinct !{!936, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!939 = distinct !{!939, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!940 = !{!938, !935, !923, !920}
!941 = !{!938, !935, !923, !920, !882, !878, !850}
!942 = !{!943, !945, !878, !880, !850, !853}
!943 = distinct !{!943, !944, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Csj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!944 = distinct !{!944, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Csj34PGqTgg0L_16deltalake_lakefs"}
end_hunk_15
