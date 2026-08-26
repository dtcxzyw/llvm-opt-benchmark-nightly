Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/server_acceptor.server_acceptor.b28df2b4becf09d8-cgu.01?download=true
inline.NumInlined: 822
inline.NumDeleted: 333
begin_hunk_0_@_RNvMCsfkrmtM4W2FM_15server_acceptorNtB2_7TestPki3crl:bb.a
  %i.du = lshr i64 %i.dt, 15
  %i.dv = lshr i64 %i.dt, 47
  %i.dw = trunc nuw nsw i64 %i.dv to i32          ; 3 uses
  %i.dx = trunc i64 %i.du to i32
  %i.dy = icmp ugt i32 %i.dx, 42920275
  %i.dz = and i32 %i.dw, 3
  %i.ea = icmp eq i32 %i.dz, 0
  %.sroa.0.0.i.i.i20.i = or i1 %i.dy, %i.ea       ; 2 uses
  %i.eb = lshr i32 %i.dw, 2
  %i.ec = add nuw nsw i32 %i.dr, %i.dw
  %i.ed = sub nuw nsw i32 %i.ec, %i.eb
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ee, 3010298776       ; 2 uses
  %i.eg = lshr i64 %i.ef, 8
  %i.eh = lshr i64 %i.ef, 40
  %i.ei = trunc nuw nsw i64 %i.eh to i32          ; 2 uses
  %i.ej = and i64 %i.eg, 4294967295
  %i.ek = mul nuw nsw i64 %i.ej, 1461
  %i.el = lshr i64 %i.ek, 34
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = zext i1 %.sroa.0.0.i.i.i20.i to i32
  %i.eo = add nuw nsw i32 %i.em, %i.en
  %i.ep = and i32 %i.ei, 3
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = and i1 %.sroa.0.0.i.i.i20.i, %i.eq
  %i.es = shl nuw i32 %i.ei, 10
  %i.et = add nsw i32 %i.es, 1858256896
  %i.eu = select i1 %i.er, i32 512, i32 0
  %i.ev = or disjoint i32 %i.eu, %i.et
  %i.ew = or i32 %i.ev, %i.eo                     ; 2 uses
  %i.ex = icmp ne i32 %i.ew, 0
  call void @llvm.assume(i1 %i.ex)
  br label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i

_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i: ; preds = %bb.s, %bb.p
  %.sroa.0.0.i21.i = phi i32 [ %i.dc, %bb.p ], [ %i.ew, %bb.s ] ; 4 uses
  %i.ey = and i32 %.sroa.0.0.i21.i, 1023
  switch i32 %i.ey, label %bb.t [
    i32 365, label %bb.u
    i32 878, label %bb.u
  ], !prof !1217

bb.t:                                             ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i
  %i.ez = add i32 %.sroa.0.0.i21.i, 1             ; 2 uses
  %i.fa = icmp ne i32 %i.ez, 0
  call void @llvm.assume(i1 %i.fa)
  br label %bb.w

bb.u:                                             ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i, %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i
  %i.fb = icmp eq i32 %.sroa.0.0.i21.i, 10239341
  br i1 %i.fb, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = ashr i32 %.sroa.0.0.i21.i, 10           ; 3 uses
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp slt i32 %i.fc, -1
  %i.ff = xor i32 %i.fc, -1
  %.sroa.05.0.i.i = select i1 %i.fe, i32 %i.ff, i32 %i.fd
  %i.fg = mul i32 %.sroa.05.0.i.i, 33555415
  %i.fh = and i32 %i.fg, 100695055
  %i.fi = icmp samesign ult i32 %i.fh, 31745
  %i.fj = shl i32 %i.fd, 10
  %i.fk = select i1 %i.fi, i32 512, i32 0
  %i.fl = or disjoint i32 %i.fk, %i.fj
  %i.fm = or disjoint i32 %i.fl, 1
  br label %bb.w

_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke: ; preds = %bb.u, %bb.m, %bb.q, %bb.r, %bb.f, %bb.j, %bb.k
  %i.fn = phi ptr [ @118, %bb.m ], [ @118, %bb.f ], [ @118, %bb.k ], [ @118, %bb.j ], [ @118, %bb.r ], [ @118, %bb.q ], [ @119, %bb.u ]
  %i.fo = phi i64 [ 32, %bb.m ], [ 32, %bb.f ], [ 32, %bb.k ], [ 32, %bb.j ], [ 32, %bb.r ], [ 32, %bb.q ], [ 31, %bb.u ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #24
          to label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.cont unwind label %bb.ag

_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.cont: ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke
  unreachable

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.l, %bb.i
  %.sroa.02.0.i = phi i32 [ %i.cp, %bb.l ], [ %i.av, %bb.i ], [ %i.fm, %bb.v ], [ %i.ez, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(3) %.sroa.520.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsf_Cs3GsnHLZgB3f_5rcgenNtB5_12SerialNumberINtNtCsj6eKBz9Db1c_4core7convert4FromyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 1234)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %bb.w
  %.sroa.4.0.insert.ext.i.i.i = zext nneg i8 %spec.select.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i8 %.sroa.016.1.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i8 %.sroa.09.1.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = and i64 %.sroa.018.0.copyload, 1073741823
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.fr, align 8
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %.sroa.02.0.i, ptr %.sroa.4.0..sroa_idx15, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.5.0..sroa_idx16, ptr noundef nonnull align 4 dereferenceable(3) %.sroa.5, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 -1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 -9223372036854775808, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs1_NtCs3GsnHLZgB3f_5rcgen3crlNtB6_31CertificateRevocationListParams9signed_byNtNtB8_8key_pair7KeyPairECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.fu, %bb.y ], [ %i.fw, %bb.ab ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen3crl31CertificateRevocationListParamsECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(136) %i.d) #19
          to label %.thread unwind label %bb.af

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.fv = load i64, ptr %i.b, align 8, !range !889, !alias.scope !1218, !noalias !1221, !noundef !29
  %.not.i = icmp eq i64 %i.fv, -1
  br i1 %.not.i, label %bb.ae, label %bb.aa, !prof !841

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1221
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23
          to label %bb.ac unwind label %bb.ab, !noalias !1223

bb.ab:                                            ; preds = %bb.aa
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen5error5ErrorECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #19
          to label %.body unwind label %bb.ad, !noalias !1223

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !1223
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fy, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen3crl31CertificateRevocationListParamsECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(136) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.af:                                            ; preds = %bb.ah, %bb.ag, %.body
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ag:                                            ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3GsnHLZgB3f_5rcgen3crl17RevokedCertParamsEECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %.thread unwind label %bb.af

.thread:                                          ; preds = %.body, %bb.ag, %bb.ah
  %.pn.pn24 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ga, %bb.ah ], [ %lpad.thr_comm, %bb.ag ]
  resume { ptr, i32 } %.pn.pn24

bb.ah:                                            ; preds = %bb.a
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3GsnHLZgB3f_5rcgen12SerialNumberEECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #19
          to label %.thread unwind label %bb.af
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RNvMs_CsfkrmtM4W2FM_15server_acceptorNtB4_10CrlUpdater3run(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit50, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.ak, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit50 ] ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !noundef !29
  %i.x = load i32, ptr %i.p, align 8, !range !1224, !noundef !29
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions5sleep(i64 noundef %i.w, i32 noundef %i.x)
          to label %bb.i unwind label %.loopexit

.body47.thread:                                   ; preds = %.loopexit, %.loopexit.split-lp, %bb.bi, %bb.bd, %.body47, %bb.m, %bb.o
  %.pn8.pn = phi { ptr, i32 } [ %i.cr, %bb.bd ], [ %.pn6, %bb.o ], [ %i.ao, %bb.m ], [ %.pn854, %bb.bi ], [ %i.ap, %.body47 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %.body47.thread
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i.i: ; preds = %.body47.thread
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.ab = load ptr, ptr %i.s, align 8, !alias.scope !1231, !nonnull !29, !noundef !29
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1234
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %.body19

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtCsfkrmtM4W2FM_15server_acceptor7TestPkiE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #21
          to label %.body19 unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !1241, !nonnull !29, !noundef !29
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !1242
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsfkrmtM4W2FM_15server_acceptor10CrlUpdaterEBD_.exit

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtCsfkrmtM4W2FM_15server_acceptor7TestPkiE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsfkrmtM4W2FM_15server_acceptor10CrlUpdaterEBD_.exit unwind label %bb.bf

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body47.thread

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body47.thread

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br i1 %.sroa.0.0, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.ai = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 3, 505) 24, i64 noundef range(i64 1, 9) 8) #22 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !839

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.n
  %storemerge79 = phi ptr [ %i.ai, %bb.n ], [ inttoptr (i64 8 to ptr), %bb.i ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.i ] ; 2 uses
  store i64 %storemerge, ptr %i.n, align 8
  store ptr %storemerge79, ptr %i.q, align 8
  store i64 %storemerge, ptr %i.r, align 8
  %i.ak = xor i1 %.sroa.0.0, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.p unwind label %.body47.thread57

.body47.thread57:                                 ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.j
  %i.am = load ptr, ptr %i.s, align 8, !nonnull !29, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 24, i64 noundef 8) #22
  br label %.body47.thread

bb.n:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i
  br i1 %.sroa.03.3, label %bb.bg, label %.body47.thread

.body47:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i46
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body47.thread

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aq = invoke noundef zeroext i1 @_RINvMsr_NtCsaKJjC64KgbL_3std4pathNtB6_7PathBuf13set_extensionReECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3)
          to label %bb.t unwind label %bb.s       ; 0 uses

.body:                                            ; preds = %bb.s, %bb.ab, %.body11
  %.pn6 = phi { ptr, i32 } [ %.pn, %.body11 ], [ %i.at, %bb.s ], [ %i.ay, %bb.ab ] ; 2 uses
  %.sroa.03.3 = phi i1 [ false, %.body11 ], [ true, %bb.s ], [ true, %bb.ab ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i unwind label %bb.q

bb.q:                                             ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body19 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i: ; preds = %.body
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.o unwind label %bb.bf

bb.s:                                             ; preds = %bb.t, %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMs2_NtCsaKJjC64KgbL_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.au = load i32, ptr %i.k, align 8, !range !836, !alias.scope !1243, !noalias !1246, !noundef !29
  %i.av = trunc nuw i32 %i.au to i1
  br i1 %i.av, label %bb.v, label %bb.ac, !prof !839

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1248
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1243, !noalias !1246, !nonnull !29, !noundef !29
  store ptr %i.ax, ptr %i.f, align 8, !noalias !1248
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #23
          to label %bb.z unwind label %bb.w, !noalias !1243

bb.w:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1249, !noalias !1243, !nonnull !29, !noundef !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1252
  %i.az = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.ab
    i64 3, label %bb.x
    i64 0, label %bb.ab
    i64 1, label %bb.y
  ], !prof !571

default.unreachable:                              ; preds = %bb.aw, %bb.al, %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bb = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.az, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb), !noalias !1243
  call void @llvm.assume(i1 %i.bd), !noalias !1243
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.be = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ], !noalias !1243
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !1253, !noalias !1252
  store i8 3, ptr %i.c, align 8, !alias.scope !1253, !noalias !1252
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !1243
  unreachable

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1252
  br label %.body

bb.ac:                                            ; preds = %bb.u
  %i.bh = load i32, ptr %i.t, align 4, !range !735, !alias.scope !1243, !noalias !1246, !noundef !29
  store i32 %i.bh, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bi = load ptr, ptr %i.s, align 8, !nonnull !29, !noundef !29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.bk = load i64, ptr %i.o, align 8, !noundef !29
  invoke fastcc void @_RNvMCsfkrmtM4W2FM_15server_acceptorNtB2_7TestPki3crl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.bj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, i64 noundef %i.bk)
          to label %bb.ae unwind label %bb.ad

.body11:                                          ; preds = %bb.as, %.body14, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i, %bb.bb, %bb.ad
  %.pn = phi { ptr, i32 } [ %eh.lpad-body15, %.body14 ], [ %i.ch, %bb.bb ], [ %i.bm, %bb.ad ], [ %eh.lpad-body15, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i ], [ %i.ce, %bb.as ]
  %.val17 = load i32, ptr %i.l, align 4, !range !735, !noundef !29
  %i.bl = call noundef i32 @close(i32 noundef %.val17) #22 ; 0 uses
  br label %.body

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i36, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerECsfkrmtM4W2FM_15server_acceptor.exit40, %bb.ac
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body11

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !29
  %i.bo = load i64, ptr %i.v, align 8
  %i.bp = invoke noundef ptr @_RNvYNtNtCsaKJjC64KgbL_3std2fs4FileNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bo)
          to label %bb.aj unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.aq, %bb.af
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bq, %bb.af ], [ %i.bu, %bb.aq ] ; 2 uses
  %i.br = load i64, ptr %i.j, align 8, !range !19, !alias.scope !1256, !noundef !29
  %.not.i.i.i = icmp eq i64 %i.br, -1
  br i1 %.not.i.i.i, label %.body11, label %bb.ag

bb.ag:                                            ; preds = %.body14
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body19 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body11 unwind label %bb.bf

bb.aj:                                            ; preds = %bb.ae
  %.not.i13 = icmp eq ptr %i.bp, null
  br i1 %.not.i13, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit16, label %bb.ak, !prof !841

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1263
  store ptr %i.bp, ptr %i.d, align 8, !noalias !1263
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #23
          to label %bb.ao unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %.val.i30 = load ptr, ptr %i.d, align 8, !alias.scope !1266, !nonnull !29, !noundef !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1266
  %i.bv = ptrtoint ptr %.val.i30 to i64           ; 2 uses
  %i.bw = and i64 %i.bv, 3
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %bb.aq
    i64 3, label %bb.am
    i64 0, label %bb.aq
    i64 1, label %bb.an
  ], !prof !571

bb.am:                                            ; preds = %bb.al
  %i.bx = icmp ult ptr %.val.i30, inttoptr (i64 188978561024 to ptr)
  %i.by = and i64 %i.bv, 1095216660480
  %i.bz = icmp ne i64 %i.by, 1095216660480
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.assume(i1 %i.bz)
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.ca = getelementptr i8, ptr %.val.i30, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8, !alias.scope !1269, !noalias !1266
  store i8 3, ptr %i.b, align 8, !alias.scope !1269, !noalias !1266
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %bb.aq unwind label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.aq:                                            ; preds = %bb.am, %bb.al, %bb.al, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1266
  br label %.body14

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit16: ; preds = %bb.aj
  %i.cd = load i64, ptr %i.j, align 8, !range !19, !alias.scope !1272, !noundef !29
  %.not.i.i.i34 = icmp eq i64 %i.cd, -1
  br i1 %.not.i.i.i34, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerECsfkrmtM4W2FM_15server_acceptor.exit40, label %bb.ar

bb.ar:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit16
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i36 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body11 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i36: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerECsfkrmtM4W2FM_15server_acceptor.exit40 unwind label %bb.ad

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerECsfkrmtM4W2FM_15server_acceptor.exit40: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit16, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cg = invoke noundef ptr @_RINvNtCsaKJjC64KgbL_3std2fs6renameRNtNtB4_4path7PathBufBw_ECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.au unwind label %bb.ad     ; 2 uses

bb.au:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerECsfkrmtM4W2FM_15server_acceptor.exit40
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %bb.bc, label %bb.av, !prof !841

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1279
  store ptr %i.cg, ptr %i.e, align 8, !noalias !1279
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #23
          to label %bb.az unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %.val.i41 = load ptr, ptr %i.e, align 8, !alias.scope !1282, !nonnull !29, !noundef !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1282
  %i.ci = ptrtoint ptr %.val.i41 to i64           ; 2 uses
  %i.cj = and i64 %i.ci, 3
  switch i64 %i.cj, label %default.unreachable [
    i64 2, label %bb.bb
    i64 3, label %bb.ax
    i64 0, label %bb.bb
    i64 1, label %bb.ay
  ], !prof !571

bb.ax:                                            ; preds = %bb.aw
  %i.ck = icmp ult ptr %.val.i41, inttoptr (i64 188978561024 to ptr)
  %i.cl = and i64 %i.ci, 1095216660480
  %i.cm = icmp ne i64 %i.cl, 1095216660480
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 %i.cm)
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.cn = getelementptr i8, ptr %.val.i41, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !alias.scope !1285, !noalias !1282
  store i8 3, ptr %i.a, align 8, !alias.scope !1285, !noalias !1282
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %bb.bb unwind label %bb.ba

bb.az:                                            ; preds = %bb.av
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bb:                                            ; preds = %bb.ax, %bb.aw, %bb.aw, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1282
  br label %.body11

bb.bc:                                            ; preds = %bb.au
  %.val = load i32, ptr %i.l, align 4, !range !735, !noundef !29
  %i.cq = call noundef i32 @close(i32 noundef %.val) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i46 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body47.thread unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i46: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit50 unwind label %.body47

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit50: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.b

bb.bf:                                            ; preds = %bb.bi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsfkrmtM4W2FM_15server_acceptor.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfkrmtM4W2FM_15server_acceptor.exit.i, %bb.g
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body19

.body19:                                          ; preds = %bb.bh, %bb.q, %bb.bf, %bb.ah, %.body.i, %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bg:                                            ; preds = %.body47.thread57, %bb.o
  %.pn854 = phi { ptr, i32 } [ %i.al, %.body47.thread57 ], [ %.pn6, %bb.o ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3GsnHLZgB3f_5rcgen12SerialNumberENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs3GsnHLZgB3f_5rcgen12SerialNumberENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body19 unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs3GsnHLZgB3f_5rcgen12SerialNumberENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body47.thread unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bh
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsfkrmtM4W2FM_15server_acceptor10CrlUpdaterEBD_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfkrmtM4W2FM_15server_acceptor.exit.i, %bb.g
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write17is_write_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5flush(ptr noalias nofree readnone align 4 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs7ZUl82OSlxp_6rustls6webpkiNtB5_20VerifierBuilderErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !564, !noundef !29
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 13)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_CsfkrmtM4W2FM_15server_acceptorNtB5_4ArgsNtNtCsdsZTLzXv0lo_12clap_builder6derive14CommandFactory7command(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i227.i = alloca [16 x i8], align 8     ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i215.i = alloca [16 x i8], align 8     ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [640 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i194.i = alloca [16 x i8], align 8     ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i182.i = alloca [16 x i8], align 8     ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [640 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i161.i = alloca [16 x i8], align 8     ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i149.i = alloca [16 x i8], align 8     ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [640 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i128.i = alloca [16 x i8], align 8     ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i116.i = alloca [16 x i8], align 8     ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [640 x i8], align 8               ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i95.i = alloca [16 x i8], align 8      ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i83.i = alloca [16 x i8], align 8      ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [640 x i8], align 8               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i62.i = alloca [16 x i8], align 8      ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i50.i = alloca [16 x i8], align 8      ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [640 x i8], align 8               ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i32.i = alloca [16 x i8], align 8      ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [640 x i8], align 8              ; 4 uses
  %i.ac = alloca [96 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [96 x i8], align 8               ; 14 uses
  %i.ah = alloca [712 x i8], align 8              ; 4 uses
  %i.ai = alloca [712 x i8], align 8              ; 4 uses
  %i.aj = alloca [640 x i8], align 8              ; 8 uses
  %i.ak = alloca [640 x i8], align 8              ; 7 uses
  %i.al = alloca [640 x i8], align 8              ; 4 uses
  %i.am = alloca [640 x i8], align 8              ; 4 uses
  %i.an = alloca [640 x i8], align 8              ; 7 uses
  %i.ao = alloca [640 x i8], align 8              ; 6 uses
  %i.ap = alloca [640 x i8], align 8              ; 5 uses
  %i.aq = alloca [640 x i8], align 8              ; 8 uses
  %i.ar = alloca [712 x i8], align 8              ; 5 uses
  %i.as = alloca [712 x i8], align 8              ; 4 uses
  %i.at = alloca [640 x i8], align 8              ; 8 uses
  %i.au = alloca [640 x i8], align 8              ; 7 uses
  %i.av = alloca [640 x i8], align 8              ; 4 uses
  %i.aw = alloca [640 x i8], align 8              ; 4 uses
  %i.ax = alloca [640 x i8], align 8              ; 7 uses
  %i.ay = alloca [640 x i8], align 8              ; 6 uses
  %i.az = alloca [640 x i8], align 8              ; 5 uses
  %i.ba = alloca [640 x i8], align 8              ; 8 uses
  %i.bb = alloca [712 x i8], align 8              ; 5 uses
  %i.bc = alloca [640 x i8], align 8              ; 8 uses
  %i.bd = alloca [640 x i8], align 8              ; 7 uses
  %i.be = alloca [640 x i8], align 8              ; 4 uses
  %i.bf = alloca [640 x i8], align 8              ; 4 uses
  %i.bg = alloca [640 x i8], align 8              ; 7 uses
  %i.bh = alloca [640 x i8], align 8              ; 6 uses
  %i.bi = alloca [640 x i8], align 8              ; 5 uses
  %i.bj = alloca [640 x i8], align 8              ; 8 uses
  %i.bk = alloca [712 x i8], align 8              ; 5 uses
  %i.bl = alloca [640 x i8], align 8              ; 8 uses
  %i.bm = alloca [640 x i8], align 8              ; 7 uses
  %i.bn = alloca [640 x i8], align 8              ; 4 uses
  %i.bo = alloca [640 x i8], align 8              ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [640 x i8], align 8              ; 7 uses
  %i.br = alloca [640 x i8], align 8              ; 6 uses
  %i.bs = alloca [640 x i8], align 8              ; 5 uses
  %i.bt = alloca [640 x i8], align 8              ; 8 uses
  %i.bu = alloca [712 x i8], align 8              ; 5 uses
  %i.bv = alloca [640 x i8], align 8              ; 8 uses
  %i.bw = alloca [640 x i8], align 8              ; 7 uses
  %i.bx = alloca [640 x i8], align 8              ; 4 uses
  %i.by = alloca [640 x i8], align 8              ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 4 uses
  %i.ca = alloca [640 x i8], align 8              ; 7 uses
  %i.cb = alloca [640 x i8], align 8              ; 6 uses
  %i.cc = alloca [640 x i8], align 8              ; 5 uses
  %i.cd = alloca [640 x i8], align 8              ; 5 uses
  %i.ce = alloca [640 x i8], align 8              ; 8 uses
  %i.cf = alloca [712 x i8], align 8              ; 5 uses
  %i.cg = alloca [640 x i8], align 8              ; 8 uses
  %i.ch = alloca [640 x i8], align 8              ; 7 uses
  %i.ci = alloca [640 x i8], align 8              ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [640 x i8], align 8              ; 7 uses
  %i.cl = alloca [640 x i8], align 8              ; 6 uses
  %i.cm = alloca [640 x i8], align 8              ; 5 uses
  %i.cn = alloca [640 x i8], align 8              ; 8 uses
  %i.co = alloca [712 x i8], align 8              ; 5 uses
  %i.cp = alloca [640 x i8], align 8              ; 8 uses
  %i.cq = alloca [640 x i8], align 8              ; 7 uses
  %i.cr = alloca [640 x i8], align 8              ; 4 uses
  %i.cs = alloca [640 x i8], align 8              ; 4 uses
  %i.ct = alloca [32 x i8], align 8               ; 4 uses
  %i.cu = alloca [640 x i8], align 8              ; 7 uses
  %i.cv = alloca [640 x i8], align 8              ; 6 uses
  %i.cw = alloca [640 x i8], align 8              ; 5 uses
  %i.cx = alloca [640 x i8], align 8              ; 5 uses
  %i.cy = alloca [640 x i8], align 8              ; 8 uses
  %i.cz = alloca [712 x i8], align 8              ; 5 uses
  %i.da = alloca [112 x i8], align 8              ; 17 uses
  %i.db = alloca [96 x i8], align 8               ; 5 uses
  %i.dc = alloca [96 x i8], align 8               ; 5 uses
  %i.dd = alloca [712 x i8], align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !1288
  call void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command3newReECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15)
end_hunk_0
