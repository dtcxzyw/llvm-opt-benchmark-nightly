begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513loadDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #16
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #16
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513loadDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.ae ], [ %i.bn, %bb.af ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.ag, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #16
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_513loadDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #16
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #16
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak

end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_513loadDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.ak ], [ %i.ce, %bb.al ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.am, label %_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev.exit, !prof !66

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #16
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 32 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !67
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.o, ptr %i.a, align 8, !tbaa !68
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8, !tbaa !27
  %i.r = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.r, ptr %i.g, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.k
end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !65
  store i8 %i.t, ptr %i.s, align 1, !tbaa !65
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
end_hunk_10
begin_hunk_11_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !tbaa !54
  %i.v = load ptr, ptr %4, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 288
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55Image13insertChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(13) %i.x)
end_hunk_11
begin_hunk_12_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !65
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_12
begin_hunk_13_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.049.0) #17
  br label %bb.e, !llvm.loop !69

bb.p:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
end_hunk_13
begin_hunk_14_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.q
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
end_hunk_14
begin_hunk_15_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.az = add nuw nsw i32 %.026, 1
  br label %.preheader54, !llvm.loop !70

.preheader57:                                     ; preds = %bb.y, %bb.ah
  %.025 = phi i32 [ %i.bf, %bb.ah ], [ 0, %bb.y ] ; 3 uses
end_hunk_15
begin_hunk_16_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.bf = add nuw nsw i32 %.025, 1
  br label %.preheader57, !llvm.loop !71

bb.ai:                                            ; preds = %bb.aj, %.preheader56
  %i.bg = landingpad { ptr, i32 }
end_hunk_16
begin_hunk_17_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.bh = add nuw nsw i32 %.0, 1
  br label %.preheader56, !llvm.loop !72

.loopexit55:                                      ; preds = %bb.ae, %bb.aa, %bb.y, %bb.z
  %i.bi = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
end_hunk_17
begin_hunk_18_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.as

end_hunk_18
begin_hunk_19_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i = phi i32 [ %i.br, %bb.as ], [ %i.cb, %bb.at ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.au, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16
end_hunk_19
begin_hunk_20_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #16
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #16
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

end_hunk_20
begin_hunk_21_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.ay ], [ %i.cs, %bb.az ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.ba, label %_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev.exit, !prof !66

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #16
end_hunk_21
begin_hunk_22_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.cy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.043.0) #17
  br label %.preheader, !llvm.loop !73

bb.be:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb, %bb.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.af, %bb.ai, %bb.ab, %bb.h
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.af ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.ay, %bb.ab ], [ %i.bg, %bb.ai ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.m, %bb.j ], [ %i.cu, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_22
begin_hunk_23_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 32 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !67
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.o, ptr %i.a, align 8, !tbaa !68
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

end_hunk_23
begin_hunk_24_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8, !tbaa !27
  %i.r = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.r, ptr %i.g, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.k
end_hunk_24
begin_hunk_25_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !65
  store i8 %i.t, ptr %i.s, align 1, !tbaa !65
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
end_hunk_25
begin_hunk_26_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !tbaa !54
  %i.v = load ptr, ptr %4, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 288
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55Image13insertChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(13) %i.x)
end_hunk_26
begin_hunk_27_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !65
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_27
begin_hunk_28_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.059.0) #17
  br label %bb.e, !llvm.loop !74

bb.p:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
end_hunk_28
begin_hunk_29_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.q
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
end_hunk_29
begin_hunk_30_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.bl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.053.0) #17
  br label %.preheader66, !llvm.loop !75

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.bm = landingpad { ptr, i32 }
end_hunk_30
begin_hunk_31_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #16
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #16
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i, label %bb.av, label %bb.au

end_hunk_31
begin_hunk_32_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i = phi i32 [ %i.ci, %bb.au ], [ %i.cs, %bb.av ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.aw, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #16
end_hunk_32
begin_hunk_33_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #16
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #16
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i, label %bb.bb, label %bb.ba

end_hunk_33
begin_hunk_34_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.cz, %bb.ba ], [ %i.dj, %bb.bb ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.bc, label %_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev.exit, !prof !66

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #16
end_hunk_34
begin_hunk_35_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE:bb.a

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.dv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.043.0) #17
  br label %.preheader, !llvm.loop !76

_ZN27OpenImageIO_v3_1_Imf__3_3_518SampleCountChannel4EditD2Ev.exit42: ; preds = %.loopexit, %.loopexit.split-lp, %bb.bh, %bb.be, %bb.bf, %bb.ac, %bb.ad, %bb.ah, %bb.bd, %bb.ab
  %.pn29.pn = phi { ptr, i32 } [ %i.bc, %bb.ab ], [ %i.dn, %bb.bf ], [ %i.dl, %bb.bd ], [ %i.bd, %bb.ac ], [ %i.bm, %bb.ah ], [ %i.be, %bb.ad ], [ %i.dm, %bb.be ], [ %i.dq, %bb.bh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_35
begin_hunk_36_@_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

end_hunk_36
begin_hunk_37_@_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
end_hunk_37
begin_hunk_38_@_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

end_hunk_38
begin_hunk_39_@_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
end_hunk_39
begin_hunk_40_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19saveLevelERNS_19DeepTiledOutputFileERKNS_9DeepImageEii:bb.a
bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.x = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.019.0) #17
  br label %.preheader, !llvm.loop !77

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
end_hunk_40
begin_hunk_41_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19loadLevelERNS_18DeepTiledInputFileERNS_9DeepImageEii:bb.a
bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.x = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.0) #17
  br label %.preheader, !llvm.loop !78

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
end_hunk_41
begin_hunk_42_@_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

end_hunk_42
begin_hunk_43_@_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
end_hunk_43
begin_hunk_44_@_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

end_hunk_44
begin_hunk_45_@_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
end_hunk_45
begin_hunk_46_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_46
begin_hunk_47_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_47
begin_hunk_48_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_48
begin_hunk_49_@_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_ImfDeepImageIO.cpp() #15 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 8), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 29), align 1, !tbaa !65
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, ptr nonnull @__dso_handle) #16 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 26), align 2, !tbaa !65
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, ptr nonnull @__dso_handle) #16 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 28), align 4, !tbaa !65
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, ptr nonnull @__dso_handle) #16 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !67
  store i64 7308332244138288484, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 24), align 8, !tbaa !65
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}
end_hunk_49
begin_hunk_50_@_GLOBAL__sub_I_ImfDeepImageIO.cpp:bb.a
!62 = !{!63, !4, i64 8}
!63 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!64 = !{!63, !4, i64 12}
!65 = !{!5, !5, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!29, !30, i64 0}
!68 = !{!31, !31, i64 0}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = !{!42, !44, i64 24}
!80 = !{!42, !44, i64 16}
!81 = distinct !{!81, !15}
end_hunk_50
