Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_py.yara_x_py.f3424c54d396006c-cgu.10?download=true
inline.NumInlined: 744
inline.NumDeleted: 512
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_5Rules14serialize_intoNtCskSRqRFwaW70_9yara_x_py8PyWriterEB1d_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  store i32 6, ptr %i.x, align 1
  %i.y = add nuw i64 %i.p, 4
  store i64 %i.y, ptr %i.e, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.not21 = icmp eq ptr %i.u, null
  br i1 %.not21, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser21encode_into_std_writeRNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules5RulesNtNtB8_6config13ConfigurationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtCskSRqRFwaW70_9yara_x_py8PyWriterEEB3r_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.m unwind label %bb.d

bb.l:                                             ; preds = %bb.j
  store i32 4, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.428.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %.not22 = icmp eq i64 %i.z, -1
  br i1 %.not22, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.l, %bb.p, %bb.n
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtCskSRqRFwaW70_9yara_x_py8PyWriterEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.p:                                             ; preds = %bb.m
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 2, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.416.0.copyload, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.r:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_5Rules16deserialize_fromNtCskSRqRFwaW70_9yara_x_py8PyReaderEB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([720 x i8]) align 8 captures(none) dereferenceable(720) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.4.i = alloca [36 x i8], align 4          ; 4 uses
  %.sroa.68.i = alloca [32 x i8], align 8         ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [728 x i8], align 8               ; 7 uses
  %i.g = alloca [720 x i8], align 8               ; 19 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = invoke { i64, ptr } @_RNvYNtCskSRqRFwaW70_9yara_x_py8PyReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_endB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.b unwind label %bb.bp      ; 2 uses

.body.thread14:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit.i, %.loopexit.thread.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.bk, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.o, align 8, !alias.scope !74, !noalias !73, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val88.i = load i64, ptr %i.p, align 8, !alias.scope !74, !noalias !73, !noundef !5 ; 2 uses
  %i.q = icmp ult i64 %.val88.i, 12
  br i1 %i.q, label %bb.f, label %bb.g

bb.d:                                             ; preds = %.body.i, %bb.e
  %.pn86.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %.body.thread unwind label %bb.be, !noalias !73

bb.e:                                             ; preds = %bb.bb, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.g, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.s, align 8, !alias.scope !73, !noalias !74
  store i64 -1, ptr %0, align 8, !alias.scope !73, !noalias !74
  br label %bb.bg

bb.g:                                             ; preds = %bb.c
  %i.t = load i64, ptr %.val.i, align 1
  %i.u = icmp ne i64 %i.t, 96951392682329
  %i.v = zext i1 %i.u to i32
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskSRqRFwaW70_9yara_x_py.exit.i, label %bb.f

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.sroa.049.0.copyload.i = load i32, ptr %i.w, align 1, !noalias !75 ; 2 uses
  %i.x = icmp eq i32 %.sroa.049.0.copyload.i, 6
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskSRqRFwaW70_9yara_x_py.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.y, align 8, !alias.scope !73, !noalias !74
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %.sroa.45.0..sroa_idx.i, align 4, !alias.scope !73, !noalias !74
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.049.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !73, !noalias !74
  store i64 -1, ptr %0, align 8, !alias.scope !73, !noalias !74
  br label %bb.bg

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !75
  %i.z = add i64 %.val88.i, -12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  invoke void @_RINvNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed24borrow_decode_from_sliceNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules5RulesNtNtB8_6config13ConfigurationECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([728 x i8]) align 8 captures(none) dereferenceable(728) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.z)
          to label %bb.j unwind label %bb.e, !noalias !75

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.f, align 8, !range !8, !noalias !75, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !75
  br i1 %i.ac, label %bb.bf, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(680) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(680) %.sroa.552.0..sroa_idx.i, i64 680, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68.i, i64 32, i1 false), !noalias !75
  store i64 %i.ab, ptr %i.g, align 8, !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75
  store i8 0, ptr %i.e, align 1, !noalias !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 713 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !9, !noalias !75, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 696 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !75, !noundef !5
  %.not84.i = icmp eq ptr %i.ai, null
  br i1 %.not84.i, label %bb.an, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75
  store ptr %i.ae, ptr %i.c, align 8, !noalias !75
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.aj, align 8, !noalias !75
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !75
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @1, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskSRqRFwaW70_9yara_x_py.exit.i unwind label %bb.ao, !noalias !75

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6native6ModuleEECskSRqRFwaW70_9yara_x_py.exit.i, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !75, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 328 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !75, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %i.an, 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ap = add nsw i64 %i.an, -65
  %or.cond.i.i = icmp ult i64 %i.ap, -64
  br i1 %or.cond.i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 528 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !78, !noalias !75, !noundef !5 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !79
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs7gfv9tzbXmh_6yara_x5teddy9SearcherTEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit.i.i unwind label %bb.am, !noalias !75

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80
  store i64 0, ptr %i.b, align 8, !noalias !80
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !80
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !80
  %2 = icmp eq i64 %i.an, 0
  br i1 %2, label %.thread.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.ae
  %i.av = icmp eq ptr %i.aw, %i.ao
  br i1 %i.av, label %.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.sroa.025.0.i.i24 = phi ptr [ %i.aw, %bb.s ], [ %i.al, %bb.r ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i.i24, i64 48 ; 2 uses
  %i.ax = invoke { ptr, i64 } @_RNvXNtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2_4AtomINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.025.0.i.i24)
          to label %bb.u unwind label %bb.t, !noalias !80 ; 2 uses

bb.t:                                             ; preds = %bb.ae, %.lr.ph
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph
  %i.az = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.af, label %bb.ae

.thread.i.i:                                      ; preds = %bb.s, %bb.u, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  invoke void @_RNvMNtCs7gfv9tzbXmh_6yara_x5teddyNtB2_7Builder5build(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.y unwind label %bb.x, !noalias !80

bb.w:                                             ; preds = %bb.ai, %bb.ab, %bb.x, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.bq, %bb.ai ], [ %i.ay, %bb.t ], [ %i.bi, %bb.ab ], [ %i.bc, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %.body.i unwind label %bb.al, !noalias !75

bb.x:                                             ; preds = %.thread.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %.thread.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 528 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !82, !noalias !75, !noundef !5 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit20.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !83
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit20.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs7gfv9tzbXmh_6yara_x5teddy9SearcherTEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit20.i.i unwind label %bb.ab, !noalias !75

bb.ab:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !75
  br label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit20.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit.i.i unwind label %bb.ac, !noalias !75

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit20.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.ad, !noalias !75

bb.ad:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !75
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit20.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc92.i unwind label %bb.ao, !noalias !75

.noexc92.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80
  br label %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCINvMs2_B6_NtB6_5Rules11deserializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0EECskSRqRFwaW70_9yara_x_py.exit.i

bb.ae:                                            ; preds = %bb.v
  invoke void @_RNvMNtCs7gfv9tzbXmh_6yara_x5teddyNtB2_7Builder3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.ba)
          to label %bb.s unwind label %bb.t, !noalias !80

bb.af:                                            ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 528 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !85, !noalias !75, !noundef !5 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit22.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !86
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit22.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs7gfv9tzbXmh_6yara_x5teddy9SearcherTEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit22.i.i unwind label %bb.ai, !noalias !75

bb.ai:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bl, align 8, !alias.scope !76, !noalias !75
  br label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit22.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  store ptr null, ptr %i.bl, align 8, !alias.scope !76, !noalias !75
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit24.i.i unwind label %bb.aj, !noalias !75

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit22.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.ak, !noalias !75

bb.ak:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !75
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit24.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit22.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc93.i unwind label %bb.ao, !noalias !75

.noexc93.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80
  br label %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCINvMs2_B6_NtB6_5Rules11deserializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0EECskSRqRFwaW70_9yara_x_py.exit.i

bb.al:                                            ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !75
  unreachable

bb.am:                                            ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aq, align 8, !alias.scope !76, !noalias !75
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  store ptr null, ptr %i.aq, align 8, !alias.scope !76, !noalias !75
  br label %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCINvMs2_B6_NtB6_5Rules11deserializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0EECskSRqRFwaW70_9yara_x_py.exit.i

bb.an:                                            ; preds = %bb.l
  %i.bv = invoke noundef nonnull align 8 ptr @_RNvNtCs7gfv9tzbXmh_6yara_x4wasm10get_engine()
          to label %bb.ap unwind label %bb.ao, !noalias !75

.body.i:                                          ; preds = %bb.av, %bb.ao, %bb.am, %bb.aj, %bb.ac, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.ck, %bb.av ], [ %i.bw, %bb.ao ], [ %i.br, %bb.aj ], [ %i.bj, %bb.ac ], [ %i.bu, %bb.am ], [ %.pn.i.i, %bb.w ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules5RulesECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(720) %i.g) #28
          to label %bb.d unwind label %bb.be, !noalias !75

bb.ao:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskSRqRFwaW70_9yara_x_py.exit.i, %bb.ar, %bb.ap, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit24.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderECskSRqRFwaW70_9yara_x_py.exit.i.i, %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ap:                                            ; preds = %bb.an
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !75, !nonnull !5, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !75, !noundef !5
  %i.cb = invoke { i64, ptr } @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6nativeNtB2_6Module11from_binary(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.ca)
          to label %bb.aq unwind label %bb.ao, !noalias !75 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.cc = extractvalue { i64, ptr } %i.cb, 0
  %i.cd = extractvalue { i64, ptr } %i.cb, 1      ; 4 uses
  %i.ce = trunc nuw i64 %i.cc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br i1 %i.ce, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cf = invoke fastcc noundef nonnull ptr @_RINvMs_NtCscK5W4trzgIe_6anyhow4kindNtB5_5Adhoc3newNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorECskSRqRFwaW70_9yara_x_py(ptr noundef nonnull %i.cd)
          to label %_RNCINvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB8_5Rules11deserializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0CskSRqRFwaW70_9yara_x_py.exit.i unwind label %bb.ao, !noalias !75

bb.as:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.cg = load ptr, ptr %i.ah, align 8, !alias.scope !87, !noalias !75, !noundef !5 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6native6ModuleEECskSRqRFwaW70_9yara_x_py.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ci = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !88
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6native6ModuleEECskSRqRFwaW70_9yara_x_py.exit.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6native6ModuleEECskSRqRFwaW70_9yara_x_py.exit.i unwind label %bb.av, !noalias !75

bb.av:                                            ; preds = %bb.au
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %i.ah, align 8, !noalias !75
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6native6ModuleEECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.au, %bb.at, %bb.as
  store ptr %i.cd, ptr %i.ah, align 8, !noalias !75
  br label %bb.n

_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCINvMs2_B6_NtB6_5Rules11deserializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0EECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEECskSRqRFwaW70_9yara_x_py.exit.i.i, %.noexc93.i, %.noexc92.i
  %i.cl = load i64, ptr %i.am, align 8, !noalias !75, !noundef !5 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.cl, 48
  %.not100.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not100.not.i, label %.loopexit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCINvMs2_B6_NtB6_5Rules11deserializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEs_0EECskSRqRFwaW70_9yara_x_py.exit.i
  %i.cm = load ptr, ptr %i.ak, align 8, !noalias !75, !nonnull !5, !noundef !5 ; 6 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  %.val.i.i.i = load i32, ptr %i.cn, align 8, !noalias !89, !noundef !5 ; 3 uses
end_hunk_0
