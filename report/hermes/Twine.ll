begin_hunk_0_@_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE:bb.a
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !7
  call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr %.sroa.01.0.copyload.i.i, i8 noundef zeroext %i.u), !inline_history !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.w = load i8, ptr %i.a, align 1, !tbaa !39
  call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr %.sroa.0.0.copyload.i.i, i8 noundef zeroext %i.w), !inline_history !43
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.x = load ptr, ptr %1, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE:bb.a
  %.sroa.01.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7
  call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr %.sroa.01.0.copyload.i, i8 noundef zeroext %i.e), !inline_history !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !39
  call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr %.sroa.0.0.copyload.i, i8 noundef zeroext %i.h), !inline_history !43
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
end_hunk_1
begin_hunk_2_@_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE:bb.a
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #9
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.p = load i8, ptr %i.d, align 8, !tbaa !7
  call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr %.sroa.01.0.copyload.i.i, i8 noundef zeroext %i.p), !inline_history !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.r = load i8, ptr %i.a, align 1, !tbaa !39
  call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr %.sroa.0.0.copyload.i.i, i8 noundef zeroext %i.r), !inline_history !43
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %.not.i8 = icmp ult i32 %i.t, %i.v
  br i1 %.not.i8, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.g, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_3
begin_hunk_4_@_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.sroa.01.0.copyload.i = load ptr, ptr %.tr32, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7
  tail call void @_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.01.0.copyload.i, i8 noundef zeroext %i.b), !inline_history !43
  %i.c = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %.tr32, i64 17
end_hunk_4
begin_hunk_5_@_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.tr32) #10 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
end_hunk_5
begin_hunk_6_@_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
end_hunk_6
begin_hunk_7_@_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %.not.i29 = icmp ult ptr %i.ao, %i.aq
  br i1 %.not.i29, label %bb.p, label %bb.o

end_hunk_7
begin_hunk_8_@_ZNK4llvh5Twine13printOneChildERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.u:                                             ; preds = %tailrecurse
  %i.bd = load i64, ptr %.tr32, align 8, !tbaa !46
  %i.be = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEy(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.bd) #9 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.v:                                             ; preds = %tailrecurse
  %i.bf = load i64, ptr %.tr32, align 8, !tbaa !46
  %i.bg = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEx(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.bf) #9 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

end_hunk_8
begin_hunk_9_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
end_hunk_9
begin_hunk_10_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
end_hunk_10
begin_hunk_11_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
end_hunk_11
begin_hunk_12_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

_ZN4llvh11raw_ostreamlsEPKc.exit36:               ; preds = %bb.i, %bb.j
  %i.ah = phi ptr [ %.pre155, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
end_hunk_12
begin_hunk_13_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !7
  tail call void @_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.01.0.copyload.i, i8 noundef zeroext %i.ar), !inline_history !48
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.m, label %bb.n
end_hunk_13
begin_hunk_14_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ay, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !39
  tail call void @_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.0.0.copyload.i, i8 noundef zeroext %i.ba), !inline_history !48
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p
end_hunk_14
begin_hunk_15_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.q:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30 ; 2 uses
  %i.bl = ptrtoint ptr %i.bi to i64
end_hunk_15
begin_hunk_16_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit39
  %i.bs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i38, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i38, i64 24 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
end_hunk_16
begin_hunk_17_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
_ZN4llvh11raw_ostreamlsEPKc.exit42:               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit39, %bb.t, %bb.u, %bb.v
  %.0.i.i41 = phi ptr [ %i.cb, %bb.t ], [ %.0.i.i38, %bb.v ], [ %.0.i.i38, %bb.u ], [ %.0.i.i38, %_ZN4llvh11raw_ostreamlsEPKc.exit39 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 24 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30 ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
end_hunk_17
begin_hunk_18_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.y:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !30 ; 2 uses
  %i.cq = ptrtoint ptr %i.cn to i64
end_hunk_18
begin_hunk_19_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.0.i.i49 = phi ptr [ %i.cu, %bb.z ], [ %1, %bb.aa ]
  %i.cx = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i49, ptr noundef %2) #9 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30 ; 2 uses
  %i.dc = icmp eq ptr %i.cz, %i.db
end_hunk_19
begin_hunk_20_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.ad:                                            ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !45
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30 ; 2 uses
  %i.dk = ptrtoint ptr %i.dh to i64
end_hunk_20
begin_hunk_21_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.0.i.i57 = phi ptr [ %i.do, %bb.ae ], [ %1, %bb.af ]
  %i.dr = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i57, ptr noundef %2) #9 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !30 ; 2 uses
  %i.dw = icmp eq ptr %i.dt, %i.dv
end_hunk_21
begin_hunk_22_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.ai:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !30 ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64
end_hunk_22
begin_hunk_23_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.eo = zext i32 %i.en to i64
  %i.ep = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i65, ptr noundef %i.el, i64 noundef %i.eo) #9 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !30 ; 2 uses
  %i.eu = icmp eq ptr %i.er, %i.et
end_hunk_23
begin_hunk_24_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.an:                                            ; preds = %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !30 ; 2 uses
  %i.fc = ptrtoint ptr %i.ez to i64
end_hunk_24
begin_hunk_25_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.0.i.i73 = phi ptr [ %i.fg, %bb.ao ], [ %1, %bb.ap ]
  %i.fj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i73, ptr noundef nonnull align 8 dereferenceable(64) %2) #9 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !45
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30 ; 2 uses
  %i.fo = icmp eq ptr %i.fl, %i.fn
end_hunk_25
begin_hunk_26_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.as:                                            ; preds = %bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !30 ; 2 uses
  %i.fw = ptrtoint ptr %i.ft to i64
end_hunk_26
begin_hunk_27_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.ge = ptrtoint ptr %2 to i64
  %.sroa.0.0.extract.trunc30 = trunc i64 %i.ge to i8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i81, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !45
  %.not.i = icmp ult ptr %i.gd, %i.gg
  br i1 %.not.i, label %bb.aw, label %bb.av

end_hunk_27
begin_hunk_28_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.av, %bb.aw
  %.0.i = phi ptr [ %i.gh, %bb.av ], [ %.0.i.i81, %bb.aw ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !30 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
end_hunk_28
begin_hunk_29_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.az:                                            ; preds = %bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !45
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !30 ; 2 uses
  %i.gw = ptrtoint ptr %i.gt to i64
end_hunk_29
begin_hunk_30_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i89, i64 noundef %i.he) #9 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !45
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 24 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !30 ; 2 uses
  %i.hk = icmp eq ptr %i.hh, %i.hj
end_hunk_30
begin_hunk_31_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.be:                                            ; preds = %bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !45
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !30 ; 2 uses
  %i.hs = ptrtoint ptr %i.hp to i64
end_hunk_31
begin_hunk_32_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.ia = ashr exact i64 %sext, 32
  %i.ib = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i97, i64 noundef %i.ia) #9 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !30 ; 2 uses
  %i.ig = icmp eq ptr %i.id, %i.if
end_hunk_32
begin_hunk_33_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.bj:                                            ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !45
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !30 ; 2 uses
  %i.io = ptrtoint ptr %i.il to i64
end_hunk_33
begin_hunk_34_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.iv = load i64, ptr %2, align 8, !tbaa !19
  %i.iw = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i105, i64 noundef %i.iv) #9 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !45
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !30 ; 2 uses
  %i.jb = icmp eq ptr %i.iy, %i.ja
end_hunk_34
begin_hunk_35_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.bo:                                            ; preds = %bb.a
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !45
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !30 ; 2 uses
  %i.jj = ptrtoint ptr %i.jg to i64
end_hunk_35
begin_hunk_36_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %i.jq = load i64, ptr %2, align 8, !tbaa !19
  %i.jr = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i113, i64 noundef %i.jq) #9 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !45
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 24 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !30 ; 2 uses
  %i.jw = icmp eq ptr %i.jt, %i.jv
end_hunk_36
begin_hunk_37_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.bt:                                            ; preds = %bb.a
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !45
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !30 ; 2 uses
  %i.ke = ptrtoint ptr %i.kb to i64
end_hunk_37
begin_hunk_38_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

_ZN4llvh11raw_ostreamlsEPKc.exit122:              ; preds = %bb.bu, %bb.bv
  %.0.i.i121 = phi ptr [ %i.ki, %bb.bu ], [ %1, %bb.bv ]
  %i.kl = load i64, ptr %2, align 8, !tbaa !46
  %i.km = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEy(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i121, i64 noundef %i.kl) #9 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !45
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 3 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !30 ; 2 uses
  %i.kr = icmp eq ptr %i.ko, %i.kq
end_hunk_38
begin_hunk_39_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.by:                                            ; preds = %bb.a
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !45
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !30 ; 2 uses
  %i.kz = ptrtoint ptr %i.kw to i64
end_hunk_39
begin_hunk_40_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

_ZN4llvh11raw_ostreamlsEPKc.exit130:              ; preds = %bb.bz, %bb.ca
  %.0.i.i129 = phi ptr [ %i.ld, %bb.bz ], [ %1, %bb.ca ]
  %i.lg = load i64, ptr %2, align 8, !tbaa !46
  %i.lh = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEx(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i129, i64 noundef %i.lg) #9 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !45
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 24 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !30 ; 2 uses
  %i.lm = icmp eq ptr %i.lj, %i.ll
end_hunk_40
begin_hunk_41_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a

bb.cd:                                            ; preds = %bb.a
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !45
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !30 ; 2 uses
  %i.lu = ptrtoint ptr %i.lr to i64
end_hunk_41
begin_hunk_42_@_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE:bb.a
  %.0.i.i137 = phi ptr [ %i.ly, %bb.ce ], [ %1, %bb.cf ]
  %i.mb = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i137, ptr noundef %2) #9 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !45
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 24 ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !30 ; 2 uses
  %i.mg = icmp eq ptr %i.md, %i.mf
end_hunk_42
begin_hunk_43_@_ZNK4llvh5Twine9printReprERNS_11raw_ostreamE
define hidden void @_ZNK4llvh5Twine9printReprERNS_11raw_ostreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
end_hunk_43
begin_hunk_44_@_ZNK4llvh5Twine9printReprERNS_11raw_ostreamE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !7
  tail call void @_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.01.0.copyload, i8 noundef zeroext %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e
end_hunk_44
begin_hunk_45_@_ZNK4llvh5Twine9printReprERNS_11raw_ostreamE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.v = load i8, ptr %i.u, align 1, !tbaa !39
  tail call void @_ZNK4llvh5Twine17printOneChildReprERNS_11raw_ostreamENS0_5ChildENS0_8NodeKindE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.0.0.copyload, i8 noundef zeroext %i.v)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.f, label %bb.g
end_hunk_45
begin_hunk_46_@llvm.experimental.noalias.scope.decl
!40 = !{!13, !13, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN4llvh15SmallVectorImplIcEE", !14, i64 0}
!43 = !{ptr @_ZNK4llvh5Twine5printERNS_11raw_ostreamE}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{!24, !13, i64 16}
!46 = !{!47, !47, i64 0}
!47 = !{!"long long", !5, i64 0}
!48 = !{ptr @_ZNK4llvh5Twine9printReprERNS_11raw_ostreamE}
end_hunk_46
