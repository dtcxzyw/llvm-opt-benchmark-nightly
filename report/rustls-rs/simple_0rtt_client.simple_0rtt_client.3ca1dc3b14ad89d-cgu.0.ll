Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.0?download=true
inline.NumInlined: 359
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCskaDheoimX9_18simple_0rtt_client4main:bb.a
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [168 x i8], align 8               ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 4 uses
  %i.k = alloca [344 x i8], align 8               ; 19 uses
  %i.l = alloca [104 x i8], align 8               ; 6 uses
  %i.m = alloca [104 x i8], align 8               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  tail call void @_RNvNtCs5LCf9NGiMis_10env_logger6logger4init()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvNtCsaKJjC64KgbL_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvXsc_NtCsaKJjC64KgbL_3std3envNtB5_4ArgsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.c unwind label %bb.b

.body44:                                          ; preds = %bb.bs, %bb.bt, %bb.n, %bb.m, %bb.e, %bb.f, %bb.b, %bb.cg, %.body52
  %.pn29 = phi { ptr, i32 } [ %i.fq, %bb.cg ], [ %i.z, %bb.e ], [ %.pn.pn.pn, %.body52 ], [ %i.ah, %bb.n ], [ %i.w, %bb.b ], [ %i.z, %bb.f ], [ %i.ah, %bb.m ], [ %i.eg, %bb.bt ], [ %i.eg, %bb.bs ]
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env4ArgsECskaDheoimX9_18simple_0rtt_client.exit unwind label %bb.bw

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client.exit, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.c:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.u, align 8, !range !41, !alias.scope !1180, !noundef !5
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.u, align 8, !range !42, !alias.scope !1183, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.aa, label %.body44, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1190, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1191
  br label %.body44

bb.g:                                             ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.u, align 8, !range !42, !alias.scope !1183, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1190, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1194
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.h, %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXsc_NtCsaKJjC64KgbL_3std3envNtB5_4ArgsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1197
  %i.ae = call noundef dereferenceable_or_null(6) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 6, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1197 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #30
          to label %bb.cf unwind label %bb.cg

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) @19, i64 6, i1 false)
  store i64 6, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 6, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ag = load i64, ptr %i.s, align 8, !range !41, !noundef !5
  %.not = icmp eq i64 %i.ag, -1
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.r, align 8, !range !42, !alias.scope !1200, !noundef !5 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ai, label %.body44, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1207, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1208
  br label %.body44

bb.o:                                             ; preds = %bb.l
  %.val.i.i = load i64, ptr %i.r, align 8, !range !42, !alias.scope !1200, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %.val.i.i, 0
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1207, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1211
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client.exit

bb.q:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.p, %bb.o, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXsc_NtCsaKJjC64KgbL_3std3envNtB5_4ArgsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.s unwind label %bb.r

.body52:                                          ; preds = %bb.bm, %bb.bl, %bb.bi, %bb.ba, %.critedge38, %.critedge39, %bb.ad, %bb.af, %bb.ag, %bb.r, %.critedge39.thread89
  %.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body5592, %.critedge39.thread89 ], [ %lpad.thr_comm.split-lp, %.critedge39 ], [ %i.ak, %bb.r ], [ %i.cm, %bb.af ], [ %i.cm, %bb.ag ], [ %i.ck, %bb.ad ], [ %i.cy, %bb.ba ], [ %i.dt, %bb.bm ], [ %i.dt, %bb.bl ], [ %i.dr, %bb.bi ], [ %.pn100, %.critedge38 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #28
          to label %.body44 unwind label %bb.bw

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client.exit
  %i.al = load i64, ptr %i.q, align 8, !range !41, !noundef !5
  %.not24 = icmp eq i64 %i.al, -1
  br i1 %.not24, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1214, !nonnull !5, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1214, !noundef !5 ; 2 uses
  switch i64 %i.ap, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.aq = load i8, ptr %i.an, align 1, !alias.scope !1217, !noalias !1214, !noundef !5 ; 2 uses
  switch i8 %i.aq, label %bb.v [
    i8 43, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i
    i8 45, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.t
  %.pr.i.i = load i8, ptr %i.an, align 1, !alias.scope !1217, !noalias !1214
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split.i.i, %bb.u
  %i.ar = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.aq, %bb.u ]
  %cond.i.i = icmp eq i8 %i.ar, 43                ; 2 uses
  %i.as = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.ap, %i.as      ; 6 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.idx.i.i ; 5 uses
  %i.at = icmp samesign ult i64 %.sroa.15.0.i.i, 5
  br i1 %i.at, label %.preheader.i.i, label %.preheader58.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.v
  %.not5466.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5466.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.preheader58.i.i:                                 ; preds = %bb.y
  %.not53.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not53.i.i, label %.loopexit.i.i, label %.preheader58.i.i.preheader

.loopexit.i.i:                                    ; preds = %.preheader58.i.i, %bb.z, %bb.aa, %bb.ab, %bb.ac, %.preheader.i.i
  %.sroa.043.1.i.i = phi i16 [ %i.cj, %bb.ac ], [ 0, %.preheader.i.i ], [ %i.bl, %bb.z ], [ %i.bt, %bb.aa ], [ %i.cb, %bb.ab ], [ %i.bf, %.preheader58.i.i ]
  %i.au = zext i16 %.sroa.043.1.i.i to i32
  %i.av = shl nuw i32 %i.au, 16
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.i

.preheader58.i.i.preheader:                       ; preds = %bb.v, %.preheader58.i.i
  %.sroa.0.1.i.i145 = phi ptr [ %i.aw, %.preheader58.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.15.1.i.i144 = phi i64 [ %i.ax, %.preheader58.i.i ], [ %.sroa.15.0.i.i, %bb.v ]
  %.sroa.043.0.i.i143 = phi i16 [ %i.bf, %.preheader58.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i145, i64 1
  %i.ax = add nsw i64 %.sroa.15.1.i.i144, -1      ; 2 uses
  %0 = mul nuw i16 %.sroa.043.0.i.i143, 10        ; 2 uses
  %1 = icmp ugt i16 %.sroa.043.0.i.i143, 6553
  %i.ay = load i8, ptr %.sroa.0.1.i.i145, align 1, !alias.scope !1217, !noalias !1214, !noundef !5 ; 2 uses
  br i1 %1, label %bb.x, label %bb.w, !prof !1102

bb.w:                                             ; preds = %.preheader58.i.i.preheader
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.y, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i

bb.x:                                             ; preds = %.preheader58.i.i.preheader
  %i.bc = add i8 %i.ay, -48
  %i.bd = icmp ult i8 %i.bc, 10
  %spec.select.i.i = select i1 %i.bd, i32 513, i32 257
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.i

bb.y:                                             ; preds = %bb.w
  %i.be = trunc nuw nsw i32 %i.ba to i16
  %i.bf = add i16 %0, %i.be                       ; 3 uses
  %i.bg = icmp ult i16 %i.bf, %0
  br i1 %i.bg, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i, label %.preheader58.i.i, !prof !1102

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bh = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !1217, !noalias !1214, !noundef !5
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.z, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.bl = trunc nuw nsw i32 %i.bj to i16          ; 2 uses
  %.not54.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not54.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.z
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1217, !noalias !1214, !noundef !5
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -48                  ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 10
  br i1 %i.bq, label %bb.aa, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i

bb.aa:                                            ; preds = %.lr.ph.i.i.1
  %i.br = mul nuw nsw i16 %i.bl, 10
  %i.bs = trunc nuw nsw i32 %i.bp to i16
  %i.bt = add nuw nsw i16 %i.br, %i.bs            ; 2 uses
  %.not54.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not54.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !1217, !noalias !1214, !noundef !5
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -48                  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 10
  br i1 %i.by, label %bb.ab, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i

bb.ab:                                            ; preds = %.lr.ph.i.i.2
  %i.bz = mul nuw i16 %i.bt, 10
  %i.ca = trunc nuw nsw i32 %i.bx to i16
  %i.cb = add nuw nsw i16 %i.bz, %i.ca            ; 2 uses
  %.not54.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not54.i.i.2, label %.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !1217, !noalias !1214, !noundef !5
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48                  ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 10
  br i1 %i.cg, label %bb.ac, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i

bb.ac:                                            ; preds = %.lr.ph.i.i.3
  %i.ch = mul i16 %i.cb, 10
  %i.ci = trunc nuw nsw i32 %i.cf to i16
  %i.cj = add i16 %i.ch, %i.ci
  br label %.loopexit.i.i

bb.ad:                                            ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %.body52 unwind label %bb.aj

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.x, %.loopexit.i.i
  %.sroa.8.0.insert.insert.i.i = phi i32 [ %spec.select.i.i, %bb.x ], [ %i.av, %.loopexit.i.i ] ; 3 uses
  %i.cl = trunc i32 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.cl, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i, label %bb.ae, !prof !1220

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i: ; preds = %bb.y, %bb.w, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.i, %bb.u, %bb.u, %bb.t
  %.sroa.8.0.insert.insert.i6.i = phi i32 [ %.sroa.8.0.insert.insert.i.i, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.i ], [ 257, %bb.u ], [ 257, %.lr.ph.i.i ], [ 257, %bb.u ], [ 1, %bb.t ], [ 257, %.lr.ph.i.i.3 ], [ 257, %.lr.ph.i.i.2 ], [ 257, %.lr.ph.i.i.1 ], [ 257, %bb.w ], [ 513, %bb.y ]
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.sroa.8.0.insert.insert.i6.i, 8
  %.sroa.4.0.extract.trunc.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1214
  store i8 %.sroa.4.0.extract.trunc.i.i, ptr %i.b, align 1, !noalias !1214
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
          to label %.noexc.i unwind label %bb.ad, !noalias !1214

.noexc.i:                                         ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i
  unreachable

bb.ae:                                            ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i48 = load i64, ptr %i.e, align 8, !range !42, !alias.scope !1221, !noundef !5 ; 2 uses
  %i.cn = icmp eq i64 %.val2.i.i.i48, 0
  br i1 %i.cn, label %.body52, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val3.i.i.i49 = load ptr, ptr %i.am, align 8, !alias.scope !1228, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i49, i64 noundef %.val2.i.i.i48, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1229
  br label %.body52

bb.ah:                                            ; preds = %bb.ae
  %.val.i.i.i50 = load i64, ptr %i.e, align 8, !range !42, !alias.scope !1221, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val.i.i.i50, 0
  br i1 %i.co, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i.i51 = load ptr, ptr %i.am, align 8, !alias.scope !1228, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i51, i64 noundef %.val.i.i.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1232
  br label %bb.al

bb.aj:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ak:                                            ; preds = %bb.s, %bb.al
  %.sroa.0.0 = phi i16 [ %.sroa.5.0.extract.trunc.i.i, %bb.al ], [ 443, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvXsc_NtCsaKJjC64KgbL_3std3envNtB5_4ArgsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.am unwind label %.critedge39.thread94

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.8.0.insert.insert.i.i, 16
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ak

.critedge39.thread94:                             ; preds = %bb.aw, %bb.au, %bb.ak, %bb.an, %bb.ao
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.critedge39.thread89

.critedge39:                                      ; preds = %bb.ax, %bb.ay
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.am:                                            ; preds = %bb.ak
  %i.cq = load i64, ptr %i.o, align 8, !range !41, !noundef !5
  %.not25 = icmp eq i64 %i.cq, -1
  br i1 %.not25, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvYNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtNtB5_3pem9PemObject13pem_file_iterNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ap unwind label %.critedge39.thread94

bb.ao:                                            ; preds = %bb.am
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterBG_EEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull @265, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @265, i64 8712))
          to label %bb.aw unwind label %.critedge39.thread94

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.cr = load i64, ptr %i.l, align 8, !range !41, !alias.scope !1235, !noalias !1238, !noundef !5
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.aq, label %bb.au, !prof !1102

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1240
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ct, i64 32, i1 false), !noalias !1238
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #30
          to label %bb.as unwind label %bb.ar, !noalias !1240

bb.ar:                                            ; preds = %bb.aq
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types3pem5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %.critedge39.thread89 unwind label %bb.at, !noalias !1240

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !1240
  unreachable

bb.au:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.l, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cw = invoke { i64, i64 } @_RINvMNtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB3_13RootCertStore25add_parsable_certificatesINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtCseO5Jl7W60Eg_16rustls_pki_types3pem8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB2l_14CertificateDerENCNvCskaDheoimX9_18simple_0rtt_client4mains_0EEB4Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.m)
          to label %bb.av unwind label %.critedge39.thread94 ; 0 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ao, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
end_hunk_0
begin_hunk_1_@_RNvCskaDheoimX9_18simple_0rtt_client4main:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ek) #28
          to label %bb.bx unwind label %bb.bw

bb.bx:                                            ; preds = %.thread105
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !1291, !nonnull !5, !noundef !5
  %i.en = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !1291
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.el) #29
          to label %.critedge unwind label %bb.bw

.critedge:                                        ; preds = %bb.by, %bb.bx
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !1298, !nonnull !5, !noundef !5
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !1298
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.bz, label %.critedge31

bb.bz:                                            ; preds = %.critedge
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep) #29
          to label %.critedge31 unwind label %bb.bw

.critedge31:                                      ; preds = %bb.bz, %.critedge
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !1305, !nonnull !5, !noundef !5
  %i.ev = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !1305
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ca, label %.critedge32

bb.ca:                                            ; preds = %.critedge31
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.et) #29
          to label %.critedge32 unwind label %bb.bw

.critedge32:                                      ; preds = %bb.ca, %.critedge31
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !1312, !nonnull !5, !noundef !5
  %i.ez = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !1312
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.cb, label %.critedge33

bb.cb:                                            ; preds = %.critedge32
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ex) #29
          to label %.critedge33 unwind label %bb.bw

.critedge33:                                      ; preds = %bb.cb, %.critedge32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1319, !nonnull !5, !noundef !5
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !1319
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.cc, label %.critedge34

bb.cc:                                            ; preds = %.critedge33
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fb) #29
          to label %.critedge34 unwind label %bb.bw

.critedge34:                                      ; preds = %bb.cc, %.critedge33
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !1326, !nonnull !5, !noundef !5
  %i.fh = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !1326
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.cd, label %.critedge35

bb.cd:                                            ; preds = %.critedge34
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ff) #29
          to label %.critedge35 unwind label %bb.bw

.critedge35:                                      ; preds = %bb.cd, %.critedge34
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fj) #28
          to label %.critedge36 unwind label %bb.bw

.critedge36:                                      ; preds = %.critedge35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fk) #28
          to label %.critedge37 unwind label %bb.bw

.critedge37:                                      ; preds = %.critedge36
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !1333, !nonnull !5, !noundef !5
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !1333
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.ce, label %.critedge38

bb.ce:                                            ; preds = %.critedge37
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fl) #29
          to label %.critedge38 unwind label %bb.bw

.critedge38:                                      ; preds = %bb.ce, %.critedge37
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.fp) #28
          to label %.body52 unwind label %bb.bw

.critedge39.thread89:                             ; preds = %bb.ar, %.critedge39.thread94
  %eh.lpad-body5592 = phi { ptr, i32 } [ %lpad.thr_comm, %.critedge39.thread94 ], [ %i.cu, %bb.ar ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #28
          to label %.body52 unwind label %bb.bw

bb.cf:                                            ; preds = %bb.j
  unreachable

bb.cg:                                            ; preds = %bb.j
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #28
          to label %.body44 unwind label %bb.bw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env4ArgsECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %.body44
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !42    ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !1066

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 range(i64 0, -1) %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1334
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1334
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1334
  %i.l = load i64, ptr %i.a, align 8, !range !616, !noalias !1334, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskaDheoimX9_18simple_0rtt_client.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !1067, !noalias !1334, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1334
  br label %bb.f

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1334, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1334
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1334
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1334
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskaDheoimX9_18simple_0rtt_client.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskaDheoimX9_18simple_0rtt_client.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskaDheoimX9_18simple_0rtt_client.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1)
  %4 = mul nuw i64 %3, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !1337
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !1337

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #26
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #26
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1)
  %5 = mul nuw i64 %4, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !1337
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !1337

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #26
  br label %bb.h

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.d
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeE7next_kvCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 890
  %i.g = load i16, ptr %i.f, align 2, !noundef !5
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.022, align 8, !noalias !1338, !noundef !5 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.k = zext i16 %i.p to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.022, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.021, ptr %i.m, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.5.021, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 888
  %i.p = load i16, ptr %i.o, align 8, !noalias !1338 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 890
  %i.r = load i16, ptr %i.q, align 2, !noundef !5
  %i.s = icmp ult i16 %i.p, %i.r
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 11
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.c, i64 904
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.sroa.019.0.in.prol = phi i64 [ %.sroa.019.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.prol = add i64 %.sroa.019.0.in.prol, -1 ; 2 uses
  %.sroa.017.0.prol = load ptr, ptr %.sroa.017.0.in.prol, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 896 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1341

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.prol, %.prol.preheader ]
  %.sroa.017.0.in.unr = phi ptr [ %i.l, %bb.c ], [ %i.m, %.prol.preheader ]
  %.sroa.019.0.in.unr = phi i64 [ %i.b, %bb.c ], [ %.sroa.019.0.prol, %.prol.preheader ]
  %i.n = icmp ult i64 %i.b, 8
  br i1 %i.n, label %.unr-lcssa, label %.new

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in = phi ptr [ %i.w, %.new ], [ %.sroa.017.0.in.unr, %.prol.loopexit ]
  %.sroa.019.0.in = phi i64 [ %.sroa.019.0.7, %.new ], [ %.sroa.019.0.in.unr, %.prol.loopexit ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.0.in, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 896
  %.sroa.017.0.1 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.0.1, i64 896
  %.sroa.017.0.2 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.0.2, i64 896
  %.sroa.017.0.3 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.3, i64 896
  %.sroa.017.0.4 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.4, i64 896
  %.sroa.017.0.5 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCskaDheoimX9_18simple_0rtt_client
define hidden { ptr, ptr } @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsaKJjC64KgbL_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskaDheoimX9_18simple_0rtt_client(ptr noundef nonnull) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB2_10ServerName8to_owned(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connectionNtB5_16ClientConnection3new(ptr dead_on_unwind noalias nofree noundef writable sret([1056 x i8]) align 8 captures(address) dereferenceable(1056), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsaKJjC64KgbL_3std3sys3net10connection9each_addrNtNtCs4wP2HXfJTCR_5alloc6string6StringNvNvMs3_NtB2_6socketNtB1E_9TcpStream7connect5innerB1Q_ECskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMNtNtCsaKJjC64KgbL_3std3net3tcpNtB2_9TcpStream11set_nodelay(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connection14WriteEarlyDataNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs1_NtCs7ZUl82OSlxp_6rustls6streamINtB5_6StreamNtNtNtNtB7_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamENtNtNtCsj6eKBz9Db1c_4core2io5write5Write5flushCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB7_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB19_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE13with_capacityCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(1056), ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB1D_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEENtNtB4_8buf_read7BufRead9read_line0ECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5LCf9NGiMis_10env_logger6logger4init() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std3env4args(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCsaKJjC64KgbL_3std3envNtB5_4ArgsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtNtB5_3pem9PemObject13pem_file_iterNtNtCs4wP2HXfJTCR_5alloc6string6StringECskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMNtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB3_13RootCertStore25add_parsable_certificatesINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtCseO5Jl7W60Eg_16rustls_pki_types3pem8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB2l_14CertificateDerENCNvCskaDheoimX9_18simple_0rtt_client4mains_0EEB4Z_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterBG_EEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig7builder(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(address) dereferenceable(168)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtBM_13WantsVerifierE22with_root_certificatesNtNtNtB9_6webpki7anchors13RootCertStoreECskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtB5_15WantsClientCertE19with_no_client_auth(ptr dead_on_unwind noalias nofree noundef writable sret([344 x i8]) align 8 captures(address) dereferenceable(344), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(184)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls12key_log_fileNtB5_10KeyLogFile3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCs7ZUl82OSlxp_6rustls12key_log_fileNtB5_10KeyLogFileNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs7ZUl82OSlxp_6rustls12key_log_fileNtB5_10KeyLogFileNtNtB7_7key_log6KeyLog3log(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRyNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types6alg_idNtB5_19AlgorithmIdentifierNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB4_10ServerNameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB5_13RootCertStoreNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5enums16AlertDescriptionNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRtNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeINtNtNtBa_5slice4iter4IterB14_EECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #23 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCskaDheoimX9_18simple_0rtt_client4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsaKJjC64KgbL_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold }
attributes #29 = { noinline }
attributes #30 = { noreturn }
attributes #31 = { noinline noreturn }
attributes #32 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
end_hunk_2
