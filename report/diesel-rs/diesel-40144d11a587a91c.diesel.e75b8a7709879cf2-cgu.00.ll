Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.00?download=true
inline.NumInlined: 201
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult3new:bb.a
  %i.bt = load i32, ptr %i.ad, align 1
  %i.bu = xor i32 %i.bt, 808792882
  %i.bv = getelementptr i8, ptr %i.ad, i64 4
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = xor i32 %i.bx, 50
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = load i32, ptr %i.ad, align 1
  %i.ce = xor i32 %i.cd, 825570098
  %i.cf = getelementptr i8, ptr %i.ad, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = xor i32 %i.ch, 52
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load i32, ptr %i.ad, align 1
  %i.co = xor i32 %i.cn, 808465202
  %i.cp = getelementptr i8, ptr %i.ad, i64 4
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = xor i32 %i.cr, 49
  %i.ct = or i32 %i.co, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i32, ptr %i.ad, align 1
  %i.cy = xor i32 %i.cx, 810562354
  %i.cz = getelementptr i8, ptr %i.ad, i64 4
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32
  %i.dc = xor i32 %i.db, 49
  %i.dd = or i32 %i.cy, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load i32, ptr %i.ad, align 1
  %i.di = xor i32 %i.dh, 808466480
  %i.dj = getelementptr i8, ptr %i.ad, i64 4
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = xor i32 %i.dl, 48
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.dr = load i32, ptr %i.ad, align 1
  %i.ds = xor i32 %i.dr, 808466480
  %i.dt = getelementptr i8, ptr %i.ad, i64 4
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i32
  %i.dw = xor i32 %i.dv, 54
  %i.dx = or i32 %i.ds, %i.dw
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = load i32, ptr %i.ad, align 1
  %i.ec = xor i32 %i.eb, 808466480
  %i.ed = getelementptr i8, ptr %i.ad, i64 4
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %i.ef, 49
  %i.eh = or i32 %i.ec, %i.eg
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ae, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = load i32, ptr %i.ad, align 1
  %i.em = xor i32 %i.el, 808466480
  %i.en = getelementptr i8, ptr %i.ad, i64 4
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = xor i32 %i.ep, 52
  %i.er = or i32 %i.em, %i.eq
  %i.es = icmp ne i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ae, label %bb.ai

bb.ai:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.ah, %bb.ae
  %.sroa.015.0 = phi i8 [ 8, %bb.u ], [ 0, %bb.v ], [ 1, %bb.w ], [ 3, %bb.x ], [ 4, %bb.y ], [ 5, %bb.z ], [ 6, %bb.aa ], [ 9, %bb.ab ], [ 7, %bb.ae ], [ 8, %bb.ah ], [ 10, %bb.ac ]
  %i.ev = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ev, ptr %i.b, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.ew = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 8, i64 noundef range(i64 1, 9) 8) #23 ; 4 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.aj, label %bb.am, !prof !10

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc67 unwind label %bb.ak

.noexc67:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResultNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.thread unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.am:                                            ; preds = %bb.ai
  store ptr %i.ev, ptr %i.ew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fa = invoke noundef i32 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection10get_status(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result18PgErrorInformationEEB1i_(ptr %i.ew) #20
          to label %.thread unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.fc = icmp eq i32 %i.fa, 1
  %spec.select = select i1 %i.fc, i8 7, i8 %.sroa.015.0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.fd, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ew, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @21, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %spec.select, ptr %.sroa.623.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.ap:                                            ; preds = %.thread78, %bb.an
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread:                                          ; preds = %.thread78, %bb.an, %bb.ak
  %.pn73 = phi { ptr, i32 } [ %i.ey, %bb.ak ], [ %i.fb, %bb.an ], [ %eh.lpad-body77, %.thread78 ]
  resume { ptr, i32 } %.pn73

.thread78:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %bb.j
  %eh.lpad-body77 = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.ab, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResultNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.thread unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 2147483648) i64 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult8num_rows(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !noundef !8 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store i8 3, ptr %i.a, align 1, !noalias !115
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 83, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !noalias !120
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs0_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_29ValidTransactionManagerStatus24change_transaction_depth(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !121, !noundef !8
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !range !122, !noundef !8 ; 2 uses
  br i1 %2, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.h, %bb.i, %bb.g, %bb.d
  %.sink = phi i64 [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.d ], [ -1, %bb.i ], [ -9223372036854775800, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.uadd.sat.i32(i32 %i.c, i32 1)
  store i32 %i.e, ptr %1, align 4
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  store i32 %i.d, ptr %1, align 4
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  store i8 2, ptr %i.a, align 1
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection4copyNtB5_12CopyToBuffer10data_slice(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = xor i64 %i.e, -1
  %i.j = add i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.3.0 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.k, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUse11bind_result(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !123, !noundef !8
  %i.b = icmp eq i64 %i.a, -2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !30
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr %1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !124, !noalias !127, !nonnull !8, !noundef !8
  %i.g = tail call noundef zeroext i1 @mysql_stmt_bind_result(ptr noundef nonnull %i.f, ptr noundef %2) #23, !noalias !129 ; 0 uses
  tail call void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB4_9Statement18did_an_error_occur(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUse11result_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !123, !noundef !8
  %i.b = icmp eq i64 %i.a, -2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !30
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr %1
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = tail call noundef i64 @mysql_stmt_num_rows(ptr noundef nonnull %i.f) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUse12fetch_column(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(112) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %3, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !123, !noundef !8
  %i.c = icmp eq i64 %i.b, -2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !30
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr %1   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.h = trunc nuw i64 %3 to i32
  %i.i = tail call noundef i32 @mysql_stmt_fetch_column(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i32 noundef %i.h, i64 noundef %4) #23 ; 0 uses
  tail call void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB4_9Statement18did_an_error_occur(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.j = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #23 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #21
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i8 2, ptr %i.j, align 1
  %i.l = ptrtoint ptr %i.j to i64
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @29, ptr %.sroa.634.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs2_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUse13affected_rows(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !123, !noundef !8
  %i.b = icmp eq i64 %i.a, -2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !30
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr %1
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = tail call noundef i64 @mysql_stmt_affected_rows(ptr noundef nonnull %i.f) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUse20populate_row_buffers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %1, align 8, !range !123, !noundef !8
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !align !30, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.j = tail call noundef i32 @mysql_stmt_fetch(ptr noundef nonnull %i.i) #23 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %i.n = tail call noundef i32 @mysql_stmt_fetch(ptr noundef nonnull %i.m) #23 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.n, label %bb.h [
    i32 100, label %bb.e
    i32 101, label %bb.f
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_11OutputBinds24populate_dynamic_buffers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.q = load i64, ptr %i.b, align 8, !range !130, !noundef !8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.j, %bb.d
  tail call void @_RNvMs0_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_11OutputBinds21update_buffer_lengths(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.r, align 8
  store i64 -1, ptr %0, align 8
end_hunk_0
