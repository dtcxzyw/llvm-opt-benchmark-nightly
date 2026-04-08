inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag) ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.speculated.i
  %i.aj = sub i64 %i.ag, %.sroa.speculated.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pre = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i361 = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ax) ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.speculated.i361
  %i.ba = sub i64 %i.ax, %.sroa.speculated.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK4llvh9StringRef10startswithES0_.exit204.thread

end_hunk_1
begin_hunk_2_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i366 = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cm) ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.speculated.i366 ; 32 uses
  %i.cp = sub i64 %i.cm, %.sroa.speculated.i366
  %i.cq = icmp eq i64 %i.cp, 5
  br i1 %i.cq, label %_ZNK4llvh9StringRef6equalsES0_.exit357, label %_ZN4llvh9StringRefC2EPKc.exit75

end_hunk_2
begin_hunk_3_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i371 = call i64 @llvm.umin.i64(i64 %i.js, i64 %i.jt) ; 2 uses
  %i.ju = load ptr, ptr %7, align 8, !tbaa !35
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.sroa.speculated.i371 ; 10 uses
  %i.jw = sub i64 %i.jt, %.sroa.speculated.i371
  switch i64 %i.jw, label %_ZNK4llvh9StringRef6equalsES0_.exit294.thread [
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit309
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit306
end_hunk_3
begin_hunk_4_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i376 = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mn) ; 2 uses
  %i.mo = load ptr, ptr %8, align 8, !tbaa !35
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.sroa.speculated.i376 ; 16 uses
  %i.mq = sub i64 %i.mn, %.sroa.speculated.i376
  %i.mr = icmp eq i64 %i.mq, 5
  br i1 %i.mr, label %_ZNK4llvh9StringRef6equalsES0_.exit291, label %_ZN4llvh9StringRefC2EPKc.exit

end_hunk_4
begin_hunk_5_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i381 = call i64 @llvm.umin.i64(i64 %i.qv, i64 %i.qw) ; 2 uses
  %i.qx = load ptr, ptr %9, align 8, !tbaa !35
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %.sroa.speculated.i381
  %i.qz = sub i64 %i.qw, %.sroa.speculated.i381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ra = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.qy, i64 %i.qz, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #21
  %i.rb = load i64, ptr %i.b, align 8             ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %.sroa.speculated.i389 = call i64 @llvm.umin.i64(i64 %i.rq, i64 %i.rr) ; 2 uses
  %i.rs = load ptr, ptr %10, align 8, !tbaa !35
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.sroa.speculated.i389
  %i.ru = sub i64 %i.rr, %.sroa.speculated.i389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.rv = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.rt, i64 %i.ru, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21
  %i.rw = load i64, ptr %i.a, align 8             ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4llvh3sys6detail22getHostCPUNameForS390xENS_9StringRefE:bb.a
  %.sroa.speculated92 = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.speculated92
  %i.ab = sub i64 %i.y, %.sroa.speculated92
  store ptr %i.aa, ptr %5, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
end_hunk_7
begin_hunk_8_@_ZN4llvh3sys6detail22getHostCPUNameForS390xENS_9StringRefE:bb.a
  %.sroa.speculated80 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bd) ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.speculated80
  %i.bk = sub i64 %i.bh, %.sroa.speculated80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bl = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.bj, i64 %i.bk, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br i1 %i.bl, label %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, label %bb.f
end_hunk_8
begin_hunk_9_@_ZL27computeHostNumPhysicalCoresv:bb.a
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cm) ; 2 uses
  %i.cn = load ptr, ptr %.020111, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.speculated.i.i
  %i.cp = sub i64 %i.cm, %.sroa.speculated.i.i    ; 2 uses
  store ptr %i.co, ptr %2, align 8
  store i64 %i.cp, ptr %i.bx, align 8
  %i.cq = call noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.233, i64 6, i64 noundef -1) #21
end_hunk_9
begin_hunk_10_@_ZL27computeHostNumPhysicalCoresv:bb.a
  %i.ds = add nuw i64 %i.dn, 1
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.ds) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = sub i64 %i.dp, %i.dt
  store ptr %i.dr, ptr %9, align 8, !tbaa !41, !alias.scope !91
  store i64 %i.dq, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !tbaa !19, !alias.scope !91
  store ptr %i.du, ptr %i.by, align 8, !tbaa !41, !alias.scope !91
end_hunk_10
begin_hunk_11_@_ZL27computeHostNumPhysicalCoresv:bb.a
  %.sroa.speculated.i.i37 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dx) ; 2 uses
  %i.dy = load ptr, ptr %9, align 8, !tbaa !35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.speculated.i.i37
  %i.ea = sub i64 %i.dx, %.sroa.speculated.i.i37  ; 2 uses
  store ptr %i.dz, ptr %1, align 8
  store i64 %i.ea, ptr %i.bz, align 8
  %i.eb = call noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.233, i64 6, i64 noundef -1) #21
end_hunk_11
begin_hunk_12_@_ZL27computeHostNumPhysicalCoresv:bb.a
  %.sroa.speculated.i.i43 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.eh) ; 2 uses
  %i.ei = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.speculated.i.i43
  %i.ek = sub i64 %i.eh, %.sroa.speculated.i.i43  ; 2 uses
  store ptr %i.ej, ptr %0, align 8
  store i64 %i.ek, ptr %i.ca, align 8
  %i.el = call noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.233, i64 6, i64 noundef -1) #21
end_hunk_12
