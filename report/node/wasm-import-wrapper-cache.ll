inline.NumInlined: 1260
inline.NumDeleted: 691
begin_hunk_0_@_ZN2v88internal4wasm22WasmImportWrapperCache14CompileWrapperEPNS0_7IsolateERKNS2_8CacheKeyEPKNS1_12CanonicalSigESt10shared_ptrINS1_23WasmImportWrapperHandleEE:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.di, i64 12, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dk = load ptr, ptr %i.b, align 8
  store ptr null, ptr %i.b, align 8
  store ptr %i.dk, ptr %i.dj, align 8
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  store i64 %i.dm, ptr %12, align 8
  store i64 0, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %13 = load ptr, ptr %i.do, align 8
  store ptr null, ptr %i.do, align 8
  store ptr %13, ptr %i.dn, align 8
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8
  store i64 %i.dq, ptr %14, align 8
  store i64 0, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %15 = load ptr, ptr %i.ds, align 8
  store ptr null, ptr %i.ds, align 8
  store ptr %15, ptr %i.dr, align 8
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  store i64 %i.du, ptr %16, align 8
  store i64 0, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %17 = load ptr, ptr %i.dw, align 8
  store ptr null, ptr %i.dw, align 8
  store ptr %17, ptr %i.dv, align 8
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.dz = load <2 x i64>, ptr %i.dx, align 8
  store i64 0, ptr %i.dx, align 8
  store <2 x i64> %i.dz, ptr %18, align 8
  store ptr null, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm22WasmImportWrapperCache28CompileWasmJsFastCallWrapperEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKNS1_12CanonicalSigE:_ZN2v84base11OwnedVectorIhEC2IhQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS5_EES4_IT_S6_IS9_EEEEEONS1_IS9_EE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.k, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %10 = load ptr, ptr %i.m, align 8
  store ptr null, ptr %i.m, align 8
  store ptr %10, ptr %i.l, align 8
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %11, align 8
  store i64 0, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %12 = load ptr, ptr %i.q, align 8
  store ptr null, ptr %i.q, align 8
  store ptr %12, ptr %i.p, align 8
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %13, align 8
  store i64 0, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %14 = load ptr, ptr %i.u, align 8
  store ptr null, ptr %i.u, align 8
  store ptr %14, ptr %i.t, align 8
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %15, align 8
  store i64 0, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %16 = load ptr, ptr %i.y, align 8
  store ptr null, ptr %i.y, align 8
  store ptr %16, ptr %i.x, align 8
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.ab = load <2 x i64>, ptr %i.z, align 8
  store i64 0, ptr %i.z, align 8
  store <2 x i64> %i.ab, ptr %17, align 8
  store ptr null, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
end_hunk_1
