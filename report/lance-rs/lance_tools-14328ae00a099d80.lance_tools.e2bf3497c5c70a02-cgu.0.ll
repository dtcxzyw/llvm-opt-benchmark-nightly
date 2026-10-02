Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB7_10FileReader20optimistic_tail_read0CsjsY2yM364a4_11lance_tools:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !8727, !noalias !8726, !noundef !24 ; 4 uses
  %.not.i.i41 = icmp ugt i64 %i.dl, %i.du
  br i1 %.not.i.i41, label %bb.ap, label %bb.as, !prof !29

bb.ap:                                            ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8728
  store i64 %i.du, ptr %i.b, align 8, !noalias !8728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8728
  store ptr %i.c, ptr %i.a, align 8, !noalias !8728
  %.sroa.42.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i42, align 8, !noalias !8728
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dv, align 8, !noalias !8728
  %.sroa.46.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i43, align 8, !noalias !8728
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @424, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #40
          to label %.noexc.i unwind label %bb.ar, !noalias !8726

.noexc.i:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %_RINvXsn_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB6_8BytesMutINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendRhE6extendRNtNtB8_5bytes5BytesECsjsY2yM364a4_11lance_tools.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0105.0.copyload) ]
  br label %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !8729)
  call void @llvm.experimental.noalias.scope.decl(metadata !8730)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !8731, !noalias !8726, !noundef !24
  %i.dz = load ptr, ptr %i.d, align 8, !alias.scope !8731, !noalias !8726, !nonnull !24, !align !41, !noundef !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !8732, !nonnull !24, !noundef !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !8731, !noalias !8726, !noundef !24
  invoke void %i.eb(ptr noundef %i.dy, ptr noundef %i.ed, i64 noundef %i.du)
          to label %.body34.thread132 unwind label %bb.at, !noalias !8726, !inline_history !1

bb.as:                                            ; preds = %.noexc44
  %i.ee = sub nuw i64 %i.du, %i.dl
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !8727, !noalias !8726, !noundef !24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8726
  %.sroa.094.0.copyload95 = load ptr, ptr %i.d, align 8, !noalias !8733
  %.sroa.8102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.8102.0.copyload104 = load ptr, ptr %.sroa.8102.0..sroa_idx103, align 8, !noalias !8733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8726
  br label %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit

bb.at:                                            ; preds = %bb.ar
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !8726
  unreachable

bb.au:                                            ; preds = %bb.ao
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body34.thread132

_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit: ; preds = %bb.as, %bb.aq
  %.sroa.8102.0 = phi ptr [ %.sroa.9110.0.copyload, %bb.aq ], [ %.sroa.8102.0.copyload104, %bb.as ]
  %.sroa.799.0 = phi i64 [ %.sroa.6107.0.copyload, %bb.aq ], [ %i.ee, %bb.as ]
  %.sroa.696.0 = phi ptr [ %.sroa.0105.0.copyload, %bb.aq ], [ %i.eh, %bb.as ]
  %.sroa.094.0 = phi ptr [ @_RNvNtCs4XDKJNDGLq7_5bytes9bytes_mut13SHARED_VTABLE, %bb.aq ], [ %.sroa.094.0.copyload95, %bb.as ]
  %i.ek = ptrtoint ptr %.sroa.094.0 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.av

bb.av:                                            ; preds = %bb.p, %bb.ay, %bb.o, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit
  %.sroa.0111.0 = phi i8 [ -1, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit ], [ %i.bi, %bb.ay ], [ -1, %bb.o ], [ 0, %bb.p ]
  %.sroa.7113.0 = phi i64 [ %i.ek, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit ], [ %i.em, %bb.ay ], [ %.sroa.7113.8.copyload, %bb.o ], [ %i.bc, %bb.p ]
  %.sroa.11114.0 = phi ptr [ %.sroa.696.0, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit ], [ %.sroa.3.sroa.4.0.copyload, %bb.ay ], [ %.sroa.11114.8.copyload, %bb.o ], [ @143, %bb.p ]
  %.sroa.14115.0 = phi i64 [ %.sroa.799.0, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit ], [ %.sroa.3.sroa.6.0.copyload, %bb.ay ], [ %i.z, %bb.o ], [ ptrtoint (ptr @145 to i64), %bb.p ]
  %.sroa.17.0 = phi ptr [ %.sroa.8102.0, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit ], [ %.sroa.3.sroa.8.0.copyload, %bb.ay ], [ %.sroa.17.8.copyload, %bb.o ], [ undef, %bb.p ]
  store i8 %.sroa.0111.0, ptr %0, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5112.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5112, i64 7, i1 false)
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7113.0, ptr %.sroa.7113.0..sroa_idx, align 8
  %.sroa.11114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11114.0, ptr %.sroa.11114.0..sroa_idx, align 8
  %.sroa.14115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14115.0, ptr %.sroa.14115.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, i64 16, i1 false)
  br label %common.ret

.body34.thread132:                                ; preds = %bb.au, %bb.ar, %bb.aw
  %.pn8.pn.ph = phi { ptr, i32 } [ %i.dw, %bb.ar ], [ %i.ej, %bb.au ], [ %.pn8.ph, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjsY2yM364a4_11lance_tools.exit

bb.aw:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.am, %bb.ai, %bb.al
  %.pn8.ph = phi { ptr, i32 } [ %i.cv, %bb.al ], [ %i.cy, %bb.am ], [ %i.cm, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs0_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body34.thread132 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.ae, %bb.aw, %bb.t
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10try_future5MapOkNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1H_13FileScheduler14submit_request0NCNvB1D_13submit_single0EECsjsY2yM364a4_11lance_tools.exit28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5112, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.579, i64 16, i1 false)
  %i.em = ptrtoint ptr %.sroa.3.sroa.2.0.copyload to i64
  br label %bb.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCsftBYP88YJaE_11lance_tools4metaNtB6_21LanceToolFileMetadata4open0CsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 14 uses
  %i.l = alloca [56 x i8], align 8                ; 17 uses
  %i.m = alloca [56 x i8], align 8                ; 14 uses
  %i.n = alloca [32 x i8], align 8                ; 14 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 23 uses
  %.sroa.339.i.i.i = alloca [39 x i8], align 1    ; 8 uses
  %.sroa.540.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.q = alloca [56 x i8], align 8                ; 8 uses
  %i.r = alloca [128 x i8], align 8               ; 5 uses
  %.sroa.5.i.i.i = alloca [56 x i8], align 8      ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.61.i.i = alloca [40 x i8], align 8       ; 6 uses
  %.sroa.63.i.i = alloca [24 x i8], align 8       ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 14 uses
  %i.u = alloca [56 x i8], align 8                ; 16 uses
  %i.v = alloca [24 x i8], align 16               ; 9 uses
  %i.w = alloca [56 x i8], align 8                ; 17 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [32 x i8], align 8                ; 12 uses
  %i.z = alloca [80 x i8], align 8                ; 21 uses
  %i.aa = alloca [32 x i8], align 8               ; 10 uses
  %i.ab = alloca [56 x i8], align 8               ; 14 uses
  %i.ac = alloca [32 x i8], align 8               ; 14 uses
  %i.ad = alloca [56 x i8], align 8               ; 14 uses
  %i.ae = alloca [56 x i8], align 8               ; 17 uses
  %i.af = alloca [160 x i8], align 8              ; 21 uses
  %i.ag = alloca [168 x i8], align 8              ; 20 uses
  %.sroa.2260.i = alloca [40 x i8], align 8       ; 6 uses
  %.sroa.2462.i = alloca [24 x i8], align 8       ; 6 uses
  %.sroa.23.i = alloca [40 x i8], align 8         ; 7 uses
  %.sroa.25.i = alloca [24 x i8], align 8         ; 7 uses
  %i.ah = alloca [56 x i8], align 8               ; 12 uses
  %i.ai = alloca [56 x i8], align 8               ; 12 uses
  %i.aj = alloca [1160 x i8], align 8             ; 5 uses
  %i.ak = alloca [1120 x i8], align 16            ; 14 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [64 x i8], align 8               ; 12 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [56 x i8], align 8               ; 12 uses
  %i.ar = alloca [56 x i8], align 8               ; 12 uses
  %i.as = alloca [1160 x i8], align 8             ; 5 uses
  %i.at = alloca [1120 x i8], align 16            ; 14 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [8 x i8], align 8                ; 5 uses
  %i.ax = alloca [64 x i8], align 8               ; 12 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [56 x i8], align 8               ; 12 uses
  %i.ba = alloca [56 x i8], align 8               ; 12 uses
  %i.bb = alloca [120 x i8], align 8              ; 5 uses
  %i.bc = alloca [80 x i8], align 16              ; 14 uses
  %i.bd = alloca [8 x i8], align 8                ; 5 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [64 x i8], align 8               ; 12 uses
  %i.bh = alloca [32 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [112 x i8], align 8              ; 16 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [112 x i8], align 8              ; 14 uses
  %i.bo = alloca [32 x i8], align 8               ; 9 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [16 x i8], align 8               ; 6 uses
  %i.br = alloca [72 x i8], align 8               ; 12 uses
  %i.bs = alloca [176 x i8], align 8              ; 14 uses
  %.sroa.531.i.i.i.i = alloca [112 x i8], align 8 ; 7 uses
  %i.bt = alloca [192 x i8], align 8              ; 16 uses
  %i.bu = alloca [192 x i8], align 8              ; 24 uses
  %i.bv = alloca [56 x i8], align 8               ; 14 uses
  %.sroa.19 = alloca [96 x i8], align 8           ; 2 uses
  %.sroa.3190.sroa.15 = alloca [96 x i8], align 8 ; 2 uses
  %.sroa.8186.sroa.12 = alloca [96 x i8], align 8 ; 8 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %i.bx = alloca [56 x i8], align 8               ; 13 uses
  %i.by = alloca [8 x i8], align 8                ; 11 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !range !60, !noundef !24
  switch i8 %i.ca, label %default.unreachable347 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 4, label %bb.v
    i8 5, label %bb.lg
  ]

default.unreachable347:                           ; preds = %bb.no, %bb.lp, %bb.lk, %bb.lg, %bb.ii, %bb.ge, %bb.dx, %bb.bw, %bb.ak, %bb.ag, %bb.z, %bb.v, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !24, !align !41, !noundef !24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %i.cd, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1514
  store i8 0, ptr %.sroa.1080.0..sroa_idx, align 2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #40
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #40
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.cf) #41
          to label %bb.t unwind label %bb.q

bb.f:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  invoke fastcc void @_RNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0CsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bx, ptr noundef nonnull align 8 %i.cf, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.cg = load i8, ptr %i.bx, align 8, !range !44, !noundef !24 ; 3 uses
  %i.ch = icmp eq i8 %i.cg, -2
  br i1 %i.ch, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.rt, %bb.rl, %bb.la, %bb.h
  %.sink = phi i8 [ 1, %bb.rt ], [ 5, %bb.rl ], [ 4, %bb.la ], [ 3, %bb.h ]
  store i8 %.sink, ptr %i.bz, align 1
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %.sroa.3.sroa.0.0.copyload = load i56, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8 ; 6 uses
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.683.sroa.0.0.copyload = load ptr, ptr %.sroa.683.0..sroa_idx, align 8 ; 2 uses
  %.sroa.683.sroa.3.0..sroa.683.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.683.sroa.3.0.copyload = load i64, ptr %.sroa.683.sroa.3.0..sroa.683.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.683.sroa.5.0..sroa.683.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.683.sroa.5.0.copyload = load i64, ptr %.sroa.683.sroa.5.0..sroa.683.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.sroa.884.sroa.0.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.884.sroa.2.0..sroa.884.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.884.sroa.2.0.copyload = load ptr, ptr %.sroa.884.sroa.2.0..sroa.884.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.cf)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp eq i8 %i.cg, -1
  br i1 %.not.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.482.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sroa.482.0.copyload, ptr %i.by, align 8
  store ptr %.sroa.683.sroa.0.0.copyload, ptr %1, align 8
  %.sroa.2.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.683.sroa.3.0.copyload, ptr %.sroa.2.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.683.sroa.5.0.copyload, ptr %.sroa.2.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i8 0, ptr %i.cj, align 8
  store ptr %.sroa.482.0.copyload, ptr %i.bw, align 8
  %i.ck = invoke { i64, i8 } @_RNvMsh_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB5_15SchedulerConfig3new(i64 noundef 2147483648)
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit

bb.n:                                             ; preds = %bb.l
  %i.cm = extractvalue { i64, i8 } %i.ck, 0
  %i.cn = extractvalue { i64, i8 } %i.ck, 1
  %i.co = invoke noundef nonnull ptr @_RNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB5_13ScanScheduler3new(ptr noundef nonnull %.sroa.482.0.copyload, i64 noundef %i.cm, i8 noundef %i.cn)
          to label %.thread unwind label %bb.m

.thread:                                          ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 0, ptr %i.cq, align 8
  store ptr %i.cp, ptr %i.cf, align 8
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %1, ptr %.sroa.8102.0..sroa_idx, align 8
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.cq, ptr %.sroa.9103.0..sroa_idx, align 8
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store i8 0, ptr %.sroa.11105.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1472
  br label %.thread.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.o, %bb.p, %bb.m
  %i.ct = phi { ptr, i32 } [ %i.cl, %bb.m ], [ %i.cu, %bb.p ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsjsY2yM364a4_11lance_tools.exit25

bb.o:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = atomicrmw sub ptr %.sroa.482.0.copyload, i64 1 release, align 8, !noalias !9078
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.rx, %bb.lf, %bb.le, %bb.u, %bb.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsb_NtCsaSXGKSfiU2E_10lance_file6readerNtBJ_10FileReader17read_all_metadata0ECsjsY2yM364a4_11lance_tools.exit, %bb.e
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsjsY2yM364a4_11lance_tools.exit25: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler9open_file0ECsjsY2yM364a4_11lance_tools.exit, %bb.le, %bb.rr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit
  %.pn10 = phi { ptr, i32 } [ %i.bdu, %bb.rr ], [ %i.ct, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit ], [ %.pn7.pn, %bb.le ], [ %.pn7.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler9open_file0ECsjsY2yM364a4_11lance_tools.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9079)
  call void @llvm.experimental.noalias.scope.decl(metadata !9080)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !9081 ; 2 uses
  %i.cy = icmp eq i64 %.val.i.i, 0
  br i1 %i.cy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsjsY2yM364a4_11lance_tools.exit25
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !9081, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !9081
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit

bb.s:                                             ; preds = %bb.k
  %.sroa.5198.0.insert.ext = zext nneg i8 %i.cg to i64
  %.sroa.5198.1.insert.ext = zext i56 %.sroa.3.sroa.0.0.copyload to i64
  %.sroa.5198.1.insert.shift = shl nuw i64 %.sroa.5198.1.insert.ext, 8
  %.sroa.5198.1.insert.insert = or disjoint i64 %.sroa.5198.1.insert.shift, %.sroa.5198.0.insert.ext
  %i.da = inttoptr i64 %.sroa.5198.1.insert.insert to ptr
  %i.db = ptrtoint ptr %.sroa.482.0.copyload to i64
  br label %bb.rt

bb.t:                                             ; preds = %bb.e, %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit68
  %.pn14.pn = phi { ptr, i32 } [ %.pn10, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit68 ], [ %i.ce, %bb.e ], [ %i.ci, %bb.j ]
  store i8 2, ptr %i.bz, align 1
  resume { ptr, i32 } %.pn14.pn

.body:                                            ; preds = %bb.w, %bb.x
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.df, align 8
  %cond.i = icmp eq i8 %.pr, 3
  br i1 %cond.i, label %bb.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler9open_file0ECsjsY2yM364a4_11lance_tools.exit
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtCsftBYP88YJaE_11lance_tools4metaNtB6_21LanceToolFileMetadata4open0CsjsY2yM364a4_11lance_tools:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !40, !noalias !9082
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 15 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1472 ; 23 uses
  switch i8 %.pre, label %default.unreachable347 [
    i8 0, label %.thread.i
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.z
  ]

.thread.i:                                        ; preds = %.thread, %bb.v
  %i.dg = phi ptr [ %i.cs, %.thread ], [ %i.df, %bb.v ]
  %i.dh = phi ptr [ %i.cr, %.thread ], [ %i.de, %bb.v ] ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !9082, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !9082, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !9082, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.di, ptr %i.dn, align 8, !noalias !9082
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.dk, ptr %.sroa.75.0..sroa_idx.i, align 8, !noalias !9082
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.dm, ptr %.sroa.86.0..sroa_idx.i, align 8, !noalias !9082
  %.sroa.97.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %.sroa.97.0..sroa_idx.i, align 8, !noalias !9082
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !9082
  %i.do = insertelement <2 x ptr> poison, ptr %i.di, i64 0
  %i.dp = insertelement <2 x ptr> %i.do, ptr %i.dk, i64 1
  br label %bb.aa

.body.thread:                                     ; preds = %.body.i, %bb.ky
  %i.dq = phi ptr [ %i.ajb, %bb.ky ], [ %i.ds, %.body.i ]
  %.pn.i = phi { ptr, i32 } [ %i.ajg, %bb.ky ], [ %eh.lpad-body.i, %.body.i ]
  store i8 2, ptr %i.dq, align 8, !noalias !9082
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler9open_file0ECsjsY2yM364a4_11lance_tools.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #40
          to label %.noexc18 unwind label %.body

.noexc18:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #40
          to label %.noexc19 unwind label %.body

.noexc19:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.ae, %bb.ad
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body46.i.i, %bb.y
  %i.ds = phi ptr [ %i.df, %bb.y ], [ %i.eo, %.body46.i.i ]
  %i.dt = phi ptr [ %i.du, %bb.y ], [ %i.eq, %.body46.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dr, %bb.y ], [ %.pn24.pn.pn.i.i, %.body46.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler23open_file_with_priority0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dt) #41
          to label %.body.thread unwind label %bb.kz, !noalias !9083

bb.z:                                             ; preds = %bb.v
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 21 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !59, !noalias !9084
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 22 uses
  switch i8 %.pre.i, label %default.unreachable347 [
    i8 0, label %._crit_edge
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.ag
    i8 4, label %bb.bw
  ]

._crit_edge:                                      ; preds = %bb.z
  %i.dv = load <2 x ptr>, ptr %i.du, align 8, !noalias !9084
  %.phi.trans.insert281 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre282 = load i64, ptr %.phi.trans.insert281, align 8, !noalias !9084
  %.phi.trans.insert283 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre284 = load ptr, ptr %.phi.trans.insert283, align 8, !noalias !9084
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %.thread.i
  %i.dw = phi ptr [ %i.dg, %.thread.i ], [ %i.df, %._crit_edge ] ; 3 uses
  %i.dx = phi ptr [ %i.dh, %.thread.i ], [ %i.de, %._crit_edge ] ; 2 uses
  %i.dy = phi ptr [ %i.dm, %.thread.i ], [ %.pre284, %._crit_edge ] ; 2 uses
  %i.dz = phi i64 [ 0, %.thread.i ], [ %.pre282, %._crit_edge ]
  %i.ea = phi ptr [ %.sroa.11.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 3 uses
  %i.eb = phi ptr [ %i.dn, %.thread.i ], [ %i.du, %._crit_edge ] ; 3 uses
  %i.ec = phi <2 x ptr> [ %i.dp, %.thread.i ], [ %i.dv, %._crit_edge ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 120
  store <2 x ptr> %i.ec, ptr %i.ed, align 8, !noalias !9084
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.dz, ptr %i.ef, align 8, !noalias !9084
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.dy, ptr %i.eg, align 8, !noalias !9084
  %i.eh = invoke noundef i64 @_RNvMs5_NtCsjjbR6Jfsbqw_8lance_io5utilsNtB5_14CachedFileSize3get(ptr noundef nonnull align 8 %i.dy)
          to label %bb.ac unwind label %bb.ab, !noalias !9085 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i, label %.thread322.i.i, label %.thread323.i.i

.thread322.i.i:                                   ; preds = %bb.ac
  %i.ej = load ptr, ptr %i.ed, align 8, !noalias !9084, !nonnull !24, !align !41, !noundef !24
  %.val30.i.i = load ptr, ptr %i.ej, align 8, !noalias !9085, !nonnull !24, !noundef !24
  %i.ek = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 32
  %.val34.i.i = load ptr, ptr %i.ek, align 8, !noalias !9085, !nonnull !24, !noundef !24
  %i.el = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.ee, align 8, !noalias !9084, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  store ptr %i.el, ptr %i.en, align 8, !noalias !9084
  %.sroa.8.0..sroa_idx83.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.em, ptr %.sroa.8.0..sroa_idx83.i.i, align 8, !noalias !9084
  %.sroa.1085.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i8 0, ptr %.sroa.1085.0..sroa_idx.i.i, align 8, !noalias !9084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !9084
  br label %.thread.i.i.i

.body46.i.i:                                      ; preds = %bb.ks, %.body57.i.i, %bb.bs, %.body.i.i, %bb.ab
  %i.eo = phi ptr [ %i.es, %.body.i.i ], [ %i.dw, %bb.ab ], [ %i.gs, %bb.bs ], [ %i.jo, %.body57.i.i ], [ %i.ahj, %bb.ks ]
  %i.ep = phi ptr [ %i.et, %.body.i.i ], [ %i.ea, %bb.ab ], [ %i.gu, %bb.bs ], [ %i.jp, %.body57.i.i ], [ %i.ahl, %bb.ks ]
  %i.eq = phi ptr [ %i.eu, %.body.i.i ], [ %i.eb, %bb.ab ], [ %i.gv, %bb.bs ], [ %i.jq, %.body57.i.i ], [ %i.ahm, %bb.ks ]
  %.pn24.pn.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ei, %bb.ab ], [ %i.iz, %bb.bs ], [ %eh.lpad-body58.i.i, %.body57.i.i ], [ %i.aip, %bb.ks ]
  store i8 2, ptr %i.ep, align 8, !noalias !9084
  br label %.body.i

bb.ad:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #40
          to label %.noexc.i unwind label %bb.y, !noalias !9083

.noexc.i:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #40
          to label %.noexc2.i unwind label %bb.y, !noalias !9083

.noexc2.i:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ai, %bb.ah
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body10.i.i.i, %bb.af
  %i.es = phi ptr [ %i.df, %bb.af ], [ %i.fh, %.body10.i.i.i ]
  %i.et = phi ptr [ %.phi.trans.insert.i, %bb.af ], [ %i.fi, %.body10.i.i.i ]
  %i.eu = phi ptr [ %i.du, %bb.af ], [ %i.fj, %.body10.i.i.i ]
  %i.ev = phi ptr [ %i.ew, %bb.af ], [ %i.fl, %.body10.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.er, %bb.af ], [ %.pn2.i.i.i, %.body10.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4size0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.ev) #41
          to label %.body46.i.i unwind label %bb.bu, !noalias !9085

bb.ag:                                            ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !40, !noalias !9086
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !9084
  switch i8 %.pre.i.i, label %default.unreachable347 [
    i8 0, label %..thread.i.i_crit_edge.i
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.ak
  ]

..thread.i.i_crit_edge.i:                         ; preds = %bb.ag
  %.pre12.i = load ptr, ptr %i.ew, align 8, !noalias !9086
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre14.i = load ptr, ptr %.phi.trans.insert13.i, align 8, !noalias !9086
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %..thread.i.i_crit_edge.i, %.thread322.i.i
  %i.ex = phi ptr [ %i.dw, %.thread322.i.i ], [ %i.df, %..thread.i.i_crit_edge.i ]
  %i.ey = phi ptr [ %i.dx, %.thread322.i.i ], [ %i.de, %..thread.i.i_crit_edge.i ]
  %i.ez = phi ptr [ %i.ea, %.thread322.i.i ], [ %.phi.trans.insert.i, %..thread.i.i_crit_edge.i ]
  %i.fa = phi ptr [ %i.eb, %.thread322.i.i ], [ %i.du, %..thread.i.i_crit_edge.i ]
  %i.fb = phi ptr [ %i.em, %.thread322.i.i ], [ %.pre14.i, %..thread.i.i_crit_edge.i ] ; 2 uses
  %i.fc = phi ptr [ %i.el, %.thread322.i.i ], [ %.pre12.i, %..thread.i.i_crit_edge.i ]
  %i.fd = phi ptr [ %.sroa.1085.0..sroa_idx.i.i, %.thread322.i.i ], [ %.phi.trans.insert.i.i, %..thread.i.i_crit_edge.i ]
  %i.fe = phi ptr [ %i.en, %.thread322.i.i ], [ %i.ew, %..thread.i.i_crit_edge.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 48 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  store ptr %i.ff, ptr %i.fg, align 8, !noalias !9086
  %.sroa.828.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.fb, ptr %.sroa.828.0..sroa_idx.i.i.i, align 8, !noalias !9086
  %.sroa.1030.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store i8 0, ptr %.sroa.1030.0..sroa_idx.i.i.i, align 8, !noalias !9086
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i.i.i.i)
  %3 = insertelement <2 x ptr> poison, ptr %i.ff, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.fb, i64 1
  br label %bb.am

.body10.i.i.i:                                    ; preds = %bb.bm, %.body.i.i.i
  %i.fh = phi ptr [ %i.gs, %bb.bm ], [ %i.fn, %.body.i.i.i ]
  %i.fi = phi ptr [ %i.gu, %bb.bm ], [ %i.fo, %.body.i.i.i ]
  %i.fj = phi ptr [ %i.gv, %bb.bm ], [ %i.fp, %.body.i.i.i ]
  %i.fk = phi ptr [ %i.gw, %bb.bm ], [ %i.fq, %.body.i.i.i ]
  %i.fl = phi ptr [ %i.gx, %bb.bm ], [ %i.fr, %.body.i.i.i ]
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.iu, %bb.bm ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  store i8 2, ptr %i.fk, align 8, !noalias !9086
  br label %.body.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #40
          to label %.noexc.i.i unwind label %bb.af, !noalias !9085

.noexc.i.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #40
          to label %.noexc40.i.i unwind label %bb.af, !noalias !9085

.noexc40.i.i:                                     ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.as, %bb.ar
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.aj
  %i.fn = phi ptr [ %i.df, %bb.aj ], [ %i.gk, %.body.i.i.i.i ]
  %i.fo = phi ptr [ %.phi.trans.insert.i, %bb.aj ], [ %i.gl, %.body.i.i.i.i ]
  %i.fp = phi ptr [ %i.du, %bb.aj ], [ %i.gm, %.body.i.i.i.i ]
  %i.fq = phi ptr [ %.phi.trans.insert.i.i, %bb.aj ], [ %i.gn, %.body.i.i.i.i ]
  %i.fr = phi ptr [ %i.ew, %bb.aj ], [ %i.go, %.body.i.i.i.i ]
  %i.fs = phi ptr [ %i.ft, %bb.aj ], [ %i.gq, %.body.i.i.i.i ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.aj ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt4head0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.fs) #41
          to label %.body10.i.i.i unwind label %bb.bo, !noalias !9087

bb.ak:                                            ; preds = %bb.ag
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !40, !noalias !9088
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i.i.i.i)
  switch i8 %.pre.i.i.i, label %default.unreachable347 [
    i8 0, label %._crit_edge257.i.i
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.al
  ]

._crit_edge257.i.i:                               ; preds = %bb.ak
  %5 = load <2 x ptr>, ptr %i.ft, align 8, !noalias !9088
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !9088
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val6.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !9088
  %.phi.trans.insert45.i.i.i.i = getelementptr i8, ptr %1, i64 192
  %.val7.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert45.i.i.i.i, align 8, !noalias !9088
  br label %bb.au

bb.am:                                            ; preds = %._crit_edge257.i.i, %.thread.i.i.i
  %i.fu = phi ptr [ %i.ex, %.thread.i.i.i ], [ %i.df, %._crit_edge257.i.i ] ; 2 uses
  %i.fv = phi ptr [ %i.ey, %.thread.i.i.i ], [ %i.de, %._crit_edge257.i.i ]
  %i.fw = phi ptr [ %i.ez, %.thread.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge257.i.i ] ; 2 uses
  %i.fx = phi ptr [ %i.fa, %.thread.i.i.i ], [ %i.du, %._crit_edge257.i.i ] ; 2 uses
  %i.fy = phi ptr [ %i.fd, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge257.i.i ] ; 2 uses
  %i.fz = phi ptr [ %i.fe, %.thread.i.i.i ], [ %i.ew, %._crit_edge257.i.i ] ; 2 uses
  %i.ga = phi ptr [ %.sroa.1030.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge257.i.i ] ; 2 uses
  %i.gb = phi ptr [ %i.fg, %.thread.i.i.i ], [ %i.ft, %._crit_edge257.i.i ] ; 2 uses
  %6 = phi <2 x ptr> [ %4, %.thread.i.i.i ], [ %5, %._crit_edge257.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !9088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !9089
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store i64 -1, ptr %i.bs, align 8, !noalias !9090
  %.sroa.920.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 -1, ptr %.sroa.920.0..sroa_idx.i.i.i.i, align 8, !noalias !9090
  %.sroa.1122.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store i64 -1, ptr %.sroa.1122.0..sroa_idx.i.i.i.i, align 8, !noalias !9090
  %.sroa.1323.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store i64 -1, ptr %.sroa.1323.0..sroa_idx.i.i.i.i, align 8, !noalias !9090
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store ptr null, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !9090
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  store i32 0, ptr %.sroa.16.0..sroa_idx.i.i.i.i, align 8, !noalias !9090
  %.sroa.18.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 116
  store i32 0, ptr %.sroa.18.0..sroa_idx.i.i.i.i, align 4, !noalias !9090
  %.sroa.20.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  store i8 1, ptr %.sroa.20.0..sroa_idx.i.i.i.i, align 8, !noalias !9090
  store <2 x ptr> %6, ptr %i.gc, align 8, !noalias !9089
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  store i8 0, ptr %i.gd, align 8, !noalias !9089
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9091
  %i.ge = tail call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 176, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9091 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.an, label %bb.aq, !prof !36

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 176) #40
          to label %.noexc.i.i.i.i.i unwind label %bb.ao, !noalias !9092

.noexc.i.i.i.i.i:                                 ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_8get_opts0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 dereferenceable(176) %i.bs) #41
          to label %.body.i.i.i.i unwind label %bb.ap, !noalias !9092

bb.ap:                                            ; preds = %bb.ao
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !9092
  unreachable

bb.aq:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ge, ptr noundef nonnull align 8 dereferenceable(176) %i.bs, i64 176, i1 false), !noalias !9092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !9089
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.ge, ptr %i.gi, align 8, !noalias !9088
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr @560, ptr %i.gj, align 8, !noalias !9088
  br label %bb.au

.body.i.i.i.i:                                    ; preds = %.body10.i.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.ay, %bb.at, %bb.ao
  %i.gk = phi ptr [ %i.gs, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.fu, %bb.ao ], [ %i.gs, %.body10.i.i.i.i ], [ %i.gs, %bb.at ], [ %i.gs, %bb.ay ]
  %i.gl = phi ptr [ %i.gu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.fw, %bb.ao ], [ %i.gu, %.body10.i.i.i.i ], [ %i.gu, %bb.at ], [ %i.gu, %bb.ay ]
  %i.gm = phi ptr [ %i.gv, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.fx, %bb.ao ], [ %i.gv, %.body10.i.i.i.i ], [ %i.gv, %bb.at ], [ %i.gv, %bb.ay ]
  %i.gn = phi ptr [ %i.gw, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.fy, %bb.ao ], [ %i.gw, %.body10.i.i.i.i ], [ %i.gw, %bb.at ], [ %i.gw, %bb.ay ]
  %i.go = phi ptr [ %i.gx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.fz, %bb.ao ], [ %i.gx, %.body10.i.i.i.i ], [ %i.gx, %bb.at ], [ %i.gx, %bb.ay ]
  %i.gp = phi ptr [ %i.gy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.ga, %bb.ao ], [ %i.gy, %.body10.i.i.i.i ], [ %i.gy, %bb.at ], [ %i.gy, %bb.ay ]
  %i.gq = phi ptr [ %i.gz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.gb, %bb.ao ], [ %i.gz, %.body10.i.i.i.i ], [ %i.gz, %bb.at ], [ %i.gz, %bb.ay ]
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.hm, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.gg, %bb.ao ], [ %i.id, %.body10.i.i.i.i ], [ %i.gr, %bb.at ], [ %i.hm, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !9088
  store i8 2, ptr %i.gp, align 8, !noalias !9088
  br label %.body.i.i.i

bb.ar:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #40
          to label %.noexc.i.i.i unwind label %bb.aj, !noalias !9087

.noexc.i.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #40
          to label %.noexc4.i.i.i unwind label %bb.aj, !noalias !9087

.noexc4.i.i.i:                                    ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.au
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !9088
  %.val4.i.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !9088
  %.val5.i.i.i.i = load ptr, ptr %i.hb, align 8, !noalias !9088, !nonnull !24, !align !41, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools(ptr %.val4.i.i.i.i, ptr nonnull %.val5.i.i.i.i) #41
          to label %.body.i.i.i.i unwind label %bb.bg, !noalias !9093

bb.au:                                            ; preds = %bb.aq, %bb.al
  %i.gs = phi ptr [ %i.df, %bb.al ], [ %i.fu, %bb.aq ] ; 11 uses
  %i.gt = phi ptr [ %i.de, %bb.al ], [ %i.fv, %bb.aq ] ; 3 uses
  %i.gu = phi ptr [ %.phi.trans.insert.i, %bb.al ], [ %i.fw, %bb.aq ] ; 11 uses
  %i.gv = phi ptr [ %i.du, %bb.al ], [ %i.fx, %bb.aq ] ; 9 uses
  %i.gw = phi ptr [ %.phi.trans.insert.i.i, %bb.al ], [ %i.fy, %bb.aq ] ; 7 uses
  %i.gx = phi ptr [ %i.ew, %bb.al ], [ %i.fz, %bb.aq ] ; 5 uses
  %i.gy = phi ptr [ %.phi.trans.insert.i.i.i, %bb.al ], [ %i.ga, %bb.aq ] ; 7 uses
  %i.gz = phi ptr [ %i.ft, %bb.al ], [ %i.gb, %bb.aq ] ; 4 uses
  %.val7.i.i.i.i = phi ptr [ %.val7.pre.i.i.i.i, %bb.al ], [ @560, %bb.aq ]
  %.val6.i.i.i.i = phi ptr [ %.val6.pre.i.i.i.i, %bb.al ], [ %i.ge, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !9088
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.hb = getelementptr i8, ptr %1, i64 192       ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !invariant.load !24, !noalias !9094, !nonnull !24
  invoke void %i.hd(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.bt, ptr noundef nonnull %.val6.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjsY2yM364a4_11lance_tools.exit.i.i.i.i unwind label %bb.at, !noalias !9093, !inline_history !15

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %bb.au
  %i.he = load i64, ptr %i.bt, align 8, !range !69, !noalias !9088, !noundef !24 ; 5 uses
  %i.hf = icmp eq i64 %i.he, -2
  br i1 %i.hf, label %.thread.i.i, label %bb.av

bb.av:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.3.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !9088 ; 4 uses
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.3.i.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 2 uses
  %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.3.i.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 4 uses
  %.sroa.3.i.sroa.10.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.3.i.sroa.10.0.copyload.i.i.i = load ptr, ptr %.sroa.3.i.sroa.10.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 4 uses
  %.sroa.3.i.sroa.12.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.sroa.3.i.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.3.i.sroa.12.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 2 uses
  %.sroa.3.i.sroa.14.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %.sroa.3.i.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.3.i.sroa.14.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 4 uses
  %.sroa.3.i.sroa.16.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %.sroa.3.i.sroa.16.0.copyload.i.i.i = load ptr, ptr %.sroa.3.i.sroa.16.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 4 uses
  %.sroa.3.i.sroa.18.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %.sroa.3.i.sroa.18.0.copyload.i.i.i = load i64, ptr %.sroa.3.i.sroa.18.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 2 uses
  %.sroa.3.i.sroa.20.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %.sroa.3.i.sroa.20.0.copyload.i.i.i = load i64, ptr %.sroa.3.i.sroa.20.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088 ; 5 uses
  %.sroa.531.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.531.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.531.0..sroa_idx.i.i.i.i, i64 112, i1 false), !noalias !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !9088
  %.val.i.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !9088 ; 5 uses
  %.val3.i.i.i.i = load ptr, ptr %i.hb, align 8, !noalias !9088, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.hg = load ptr, ptr %.val3.i.i.i.i, align 8, !invariant.load !24, !noalias !9093 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.hg(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.ax unwind label %bb.ay, !noalias !9093

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hh = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !42, !invariant.load !24, !noalias !9093 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.hk = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !range !43, !invariant.load !24, !noalias !9093
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) %i.hl) #36, !noalias !9093
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !range !42, !invariant.load !24, !noalias !9093 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %.body.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !range !43, !invariant.load !24, !noalias !9093
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) %i.hr) #36, !noalias !9093
  br label %.body.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.ax
  %i.hs = icmp eq i64 %i.he, -1
  br i1 %i.hs, label %bb.bh, label %bb.az

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %.sroa.533.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.533.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.531.i.i.i.i, i64 112, i1 false), !noalias !9088
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.sroa.3.i.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.3.i.sroa.6.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %.sroa.3.i.sroa.8.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %.sroa.3.i.sroa.10.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.12.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 %.sroa.3.i.sroa.12.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.12.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.14.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store i64 %.sroa.3.i.sroa.14.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.14.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.16.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store ptr %.sroa.3.i.sroa.16.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.16.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.18.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store i64 %.sroa.3.i.sroa.18.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.18.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  %.sroa.3.i.sroa.20.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  store i64 %.sroa.3.i.sroa.20.0.copyload.i.i.i, ptr %.sroa.3.i.sroa.20.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !9088
  store i64 %i.he, ptr %i.bu, align 8, !noalias !9088
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  %i.hu = load i64, ptr %i.ht, align 8, !range !23, !alias.scope !9095, !noalias !9088, !noundef !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.hu, -1
  br i1 %.not.i.i.i.i.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %.val5.i.i.i.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !9095, !noalias !9088 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %.val6.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !alias.scope !9095, !noalias !9088, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.hx = load ptr, ptr %.val6.i.i.i.i.i, align 8, !invariant.load !24, !noalias !9096 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  invoke void %i.hx(ptr noundef nonnull %.val5.i.i.i.i.i)
          to label %bb.bc unwind label %bb.bd, !noalias !9096

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hy = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !range !42, !invariant.load !24, !noalias !9096 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.bi, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ib = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !range !43, !invariant.load !24, !noalias !9096
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.hz, i64 noundef range(i64 1, -9223372036854775807) %i.ic) #36, !noalias !9096
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bb
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !range !42, !invariant.load !24, !noalias !9096 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %.body10.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.ih = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !range !43, !invariant.load !24, !noalias !9096
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) %i.ii) #36, !noalias !9096
  br label %.body10.i.i.i.i

bb.be:                                            ; preds = %bb.az
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  %.val4.i.i.i.i.i = load i32, ptr %i.ij, align 8, !range !48, !alias.scope !9095, !noalias !9088, !noundef !24
  %i.ik = call noundef i32 @close(i32 noundef %.val4.i.i.i.i.i) #36, !noalias !9096 ; 0 uses
  %i.il = icmp eq i64 %i.hu, 0
  br i1 %i.il, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.im = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %.val1.i.i.i.i.i = load ptr, ptr %i.im, align 8, !alias.scope !9095, !noalias !9088, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !9096
  br label %bb.bi

.body10.i.i.i.i:                                  ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.bd
  %i.in = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store10attributes10AttributesECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(48) %i.in) #41, !noalias !9093
  br label %.body.i.i.i.i

bb.bg:                                            ; preds = %bb.at
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !9093
  unreachable

.thread.i.i:                                      ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !9088
  store i8 3, ptr %i.gy, align 8, !noalias !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531.i.i.i.i)
  store i8 3, ptr %i.gw, align 8, !noalias !9086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !9084
  br label %bb.la

bb.bh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !9088
  store i8 1, ptr %i.gy, align 8, !noalias !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !9097
  store ptr %.sroa.3.i.sroa.0.0.copyload.i.i.i, ptr %i.br, align 8, !noalias !9098
  %.sroa.576.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.sroa.3.i.sroa.6.0.copyload.i.i.i, ptr %.sroa.576.0..sroa_idx.i.i.i, align 8, !noalias !9098
  %.sroa.677.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.3.i.sroa.8.0.copyload.i.i.i, ptr %.sroa.677.0..sroa_idx.i.i.i, align 8, !noalias !9098
  %.sroa.778.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %.sroa.3.i.sroa.10.0.copyload.i.i.i, ptr %.sroa.778.0..sroa_idx.i.i.i, align 8, !noalias !9098
  %.sroa.879.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 %.sroa.3.i.sroa.12.0.copyload.i.i.i, ptr %.sroa.879.0..sroa_idx.i.i.i, align 8, !noalias !9098
  %.sroa.980.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %.sroa.3.i.sroa.14.0.copyload.i.i.i, ptr %.sroa.980.0..sroa_idx.i.i.i, align 8, !noalias !9098
  %.sroa.1081.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store ptr %.sroa.3.i.sroa.16.0.copyload.i.i.i, ptr %.sroa.1081.0..sroa_idx.i.i.i, align 8, !noalias !9098
  %.sroa.1182.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 56
end_hunk_1
begin_hunk_2_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsjsY2yM364a4_11lance_tools:bb.a
  %i.dpu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10709)
  call void @llvm.experimental.noalias.scope.decl(metadata !10710)
  %i.dpv = load ptr, ptr %i.am, align 8, !alias.scope !10711, !noalias !10666, !nonnull !24, !noundef !24
  %i.dpw = atomicrmw sub ptr %i.dpv, i64 1 release, align 8, !noalias !10711
  %i.dpx = icmp eq i64 %i.dpw, 1
  br i1 %i.dpx, label %bb.aiz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit68.i.i

bb.ajc:                                           ; preds = %bb.aja
  store i8 0, ptr %i.des, align 4, !noalias !10666
  call void @llvm.experimental.noalias.scope.decl(metadata !10712)
  call void @llvm.experimental.noalias.scope.decl(metadata !10713)
  %i.dpy = load ptr, ptr %i.am, align 8, !alias.scope !10714, !noalias !10666, !nonnull !24, !noundef !24
  %i.dpz = atomicrmw sub ptr %i.dpy, i64 1 release, align 8, !noalias !10714
  %i.dqa = icmp eq i64 %i.dpz, 1
  br i1 %i.dqa, label %bb.ajd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit70.i.i

bb.ajd:                                           ; preds = %bb.ajc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit70.i.i unwind label %bb.aje

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit68.i.i: ; preds = %bb.aje, %bb.ajb, %bb.aiz
  %.pn33.i.i = phi { ptr, i32 } [ %i.dqb, %bb.aje ], [ %i.dpu, %bb.aiz ], [ %i.dpu, %bb.ajb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10666
  br label %.body.i.i472

bb.aje:                                           ; preds = %bb.ajd
  %i.dqb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit68.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit70.i.i: ; preds = %bb.ajd, %bb.ajc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10666
  call void @llvm.experimental.noalias.scope.decl(metadata !10715)
  call void @llvm.experimental.noalias.scope.decl(metadata !10716)
  %i.dqc = load i32, ptr %i.dem, align 8, !alias.scope !10717, !noalias !10718, !noundef !24 ; 2 uses
  %i.dqd = load i32, ptr %i.den, align 4, !alias.scope !10719, !noalias !10720, !noundef !24
  %i.dqe = icmp ult i32 %i.dqc, %i.dqd
  br i1 %i.dqe, label %bb.agk, label %.loopexit.i.i

bb.ajf:                                           ; preds = %bb.afz, %bb.afx, %bb.afu
  %i.dqf = phi ptr [ %i.dfb, %bb.afz ], [ %i.det, %bb.afx ], [ %i.det, %bb.afu ]
  %i.dqg = phi ptr [ %i.dfc, %bb.afz ], [ %i.deu, %bb.afx ], [ %i.deu, %bb.afu ]
  %i.dqh = phi ptr [ %i.dfd, %bb.afz ], [ %i.dev, %bb.afx ], [ %i.dev, %bb.afu ]
  %i.dqi = phi ptr [ %i.dfe, %bb.afz ], [ %i.dew, %bb.afx ], [ %i.dew, %bb.afu ]
  %.pn22.i.i = phi { ptr, i32 } [ %i.dft, %bb.afz ], [ %i.dfa, %bb.afx ], [ %i.dez, %bb.afu ]
  %i.dqj = getelementptr inbounds nuw i8, ptr %0, i64 487 ; 2 uses
  %i.dqk = load i8, ptr %i.dqj, align 1, !range !25, !noalias !10666, !noundef !24
  %i.dql = trunc nuw i8 %i.dqk to i1
  br i1 %i.dql, label %bb.ajh, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajh, %bb.ajf
  store i8 0, ptr %i.dqj, align 1, !noalias !10666
  br label %.body64.i.i

bb.ajh:                                           ; preds = %bb.ajf
  %i.dqm = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val.i.i475 = load ptr, ptr %i.dqm, align 8, !noalias !10666, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %.val.i.i475) #41
          to label %bb.ajg unwind label %bb.air

bb.aji:                                           ; preds = %bb.age
  %i.dqn = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10721)
  call void @llvm.experimental.noalias.scope.decl(metadata !10722)
  %i.dqo = load ptr, ptr %i.dqn, align 8, !alias.scope !10723, !noalias !10666, !nonnull !24, !noundef !24
  %i.dqp = atomicrmw sub ptr %i.dqo, i64 1 release, align 8, !noalias !10723
  %i.dqq = icmp eq i64 %i.dqp, 1
  br i1 %i.dqq, label %bb.ajj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit72.i.i

bb.ajj:                                           ; preds = %bb.aji
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dqn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit72.i.i unwind label %bb.air

bb.ajk:                                           ; preds = %bb.afs, %bb.afr
  %i.dqr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i473

bb.ajl:                                           ; preds = %bb.ahj, %bb.afv
  %i.dqs = phi ptr [ %i.djw, %bb.ahj ], [ %i.det, %bb.afv ]
  %i.dqt = phi ptr [ %i.djy, %bb.ahj ], [ %i.dev, %bb.afv ]
  %.sink.i.ph.i524 = phi i8 [ 3, %bb.ahj ], [ 4, %bb.afv ]
  store i8 %.sink.i.ph.i524, ptr %i.dqt, align 8, !noalias !10666
  br label %bb.akl

bb.ajm:                                           ; preds = %bb.ahb, %.loopexit.i.i
  store i8 1, ptr %i.dei, align 8, !noalias !10666
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dej)
          to label %._crit_edge172.i unwind label %bb.ajn

._crit_edge172.i:                                 ; preds = %bb.ajm
  %.phi.trans.insert173.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre174.i = load ptr, ptr %.phi.trans.insert173.i, align 8, !noalias !10665
  br label %bb.ajo

bb.ajn:                                           ; preds = %bb.ajm
  %i.dqu = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.ajo:                                           ; preds = %._crit_edge172.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsjsY2yM364a4_11lance_tools.exit.i
  %i.dqv = phi ptr [ %i.deg, %._crit_edge172.i ], [ %i.dbk, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsjsY2yM364a4_11lance_tools.exit.i ] ; 3 uses
  %i.dqw = phi ptr [ %i.deh, %._crit_edge172.i ], [ %i.dbl, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsjsY2yM364a4_11lance_tools.exit.i ] ; 2 uses
  %i.dqx = phi ptr [ %.pre174.i, %._crit_edge172.i ], [ %i.dci, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsjsY2yM364a4_11lance_tools.exit.i ] ; 3 uses
  %i.dqy = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dqz = getelementptr i8, ptr %i.dqx, i64 128
  %.val41.i478 = load i32, ptr %i.dqz, align 8, !range !53, !noundef !24
  %.not130.i = icmp eq i32 %.val41.i478, -1
  br i1 %.not130.i, label %bb.ajp, label %bb.ajr

bb.ajp:                                           ; preds = %bb.ajo
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dqx, i64 552
  %i.drb = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant6is_set(ptr noundef nonnull align 8 %i.dra)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.drc = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.ajp
  br i1 %i.drb, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit._crit_edge.i, label %bb.akm

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit._crit_edge.i: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit.i
  %.pre175.i = load ptr, ptr %i.dqy, align 8, !noalias !10665
  br label %bb.ajr

bb.ajr:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit._crit_edge.i, %bb.ajo
  %i.drd = phi ptr [ %.pre175.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit._crit_edge.i ], [ %i.dqx, %bb.ajo ]
  %i.dre = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.drf = load ptr, ptr %i.dre, align 8, !noalias !10665, !nonnull !24, !align !41, !noundef !24
  %.val38.i479 = load ptr, ptr %i.drf, align 8, !nonnull !24, !align !41, !noundef !24
  %i.drg = getelementptr inbounds nuw i8, ptr %.val38.i479, i64 16
  %i.drh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dri = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.drj = load i32, ptr %i.dri, align 4, !noalias !10665, !noundef !24
  %i.drk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.drl = load i64, ptr %i.drk, align 8, !noalias !10665, !noundef !24
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.drl, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.drd, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.drg, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.drm = load <2 x ptr>, ptr %i.drh, align 8, !noalias !10665
  store <2 x ptr> %i.drm, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.drj, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.1577.0..sroa_idx.i, align 1, !noalias !10665
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 0, ptr %.sroa.1678.0..sroa_idx.i, align 2, !noalias !10665
  br label %bb.ajt

.body.i473:                                       ; preds = %bb.ajk, %.body.i.i472
  %i.drn = phi ptr [ %i.ddt, %.body.i.i472 ], [ %i.dbj, %bb.ajk ]
  %i.dro = phi ptr [ %i.ddu, %.body.i.i472 ], [ %i.dbi, %bb.ajk ]
  %i.drp = phi ptr [ %i.ddw, %.body.i.i472 ], [ %i.dcv, %bb.ajk ]
  %.pn11.i474 = phi { ptr, i32 } [ %.pn33.pn.i.i, %.body.i.i472 ], [ %i.dqr, %bb.ajk ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.drp) #41
          to label %bb.afj unwind label %bb.ajs

bb.ajs:                                           ; preds = %bb.akg, %bb.aka, %bb.aju, %.body.i473
  %i.drq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ajt:                                           ; preds = %bb.ajr, %bb.afh
  %i.drr = phi ptr [ %i.dqv, %bb.ajr ], [ %i.dbj, %bb.afh ] ; 4 uses
  %i.drs = phi ptr [ %i.dqw, %bb.ajr ], [ %i.dbi, %bb.afh ] ; 3 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dru = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.drt, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ajv unwind label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  %i.drv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.drt) #41
          to label %bb.afj unwind label %bb.ajs

bb.ajv:                                           ; preds = %bb.ajt
  br i1 %i.dru, label %bb.akl, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.drt)
          to label %bb.ajy unwind label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  %i.drw = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.ajy:                                           ; preds = %bb.ajw
  %i.drx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2 = load ptr, ptr %i.drx, align 8, !noalias !10665, !nonnull !24, !align !41, !noundef !24
  %i.dry = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.drz = load ptr, ptr %i.dry, align 8, !noalias !10665, !nonnull !24, !align !41, !noundef !24
  %.val37.i469 = load ptr, ptr %i.drz, align 8, !nonnull !24, !align !41, !noundef !24
  %3 = getelementptr inbounds nuw i8, ptr %.val37.i469, i64 16
  %i.dsa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dsb = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dsc = load i32, ptr %i.dsb, align 4, !noalias !10665, !noundef !24
  %i.dsd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dse = load i64, ptr %i.dsd, align 8, !noalias !10665, !noundef !24
  %.sroa.792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dse, ptr %.sroa.792.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.994.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %2, ptr %.sroa.994.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1095.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %3, ptr %.sroa.1095.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %4 = load <2 x ptr>, ptr %i.dsa, align 8, !noalias !10665
  store <2 x ptr> %4, ptr %.sroa.1196.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.1398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dsc, ptr %.sroa.1398.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.15100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15100.0..sroa_idx.i, align 1, !noalias !10665
  %.sroa.16101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 1, ptr %.sroa.16101.0..sroa_idx.i, align 2, !noalias !10665
  br label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy, %bb.afh
  %i.dsf = phi ptr [ %i.drr, %bb.ajy ], [ %i.dbj, %bb.afh ] ; 4 uses
  %i.dsg = phi ptr [ %i.drs, %bb.ajy ], [ %i.dbi, %bb.afh ] ; 3 uses
  %i.dsh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dsi = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dsh, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.akb unwind label %bb.aka

bb.aka:                                           ; preds = %bb.ajz
  %i.dsj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dsh) #41
          to label %bb.afj unwind label %bb.ajs

bb.akb:                                           ; preds = %bb.ajz
  br i1 %i.dsi, label %bb.akl, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dsh)
          to label %bb.ake unwind label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  %i.dsk = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.ake:                                           ; preds = %bb.akc
  %i.dsl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %i.dsl, align 8, !noalias !10665, !nonnull !24, !align !41, !noundef !24
  %i.dsm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dsn = load ptr, ptr %i.dsm, align 8, !noalias !10665, !nonnull !24, !align !41, !noundef !24
  %.val36.i468 = load ptr, ptr %i.dsn, align 8, !nonnull !24, !align !41, !noundef !24
  %6 = getelementptr inbounds nuw i8, ptr %.val36.i468, i64 16
  %i.dso = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dsp = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dsq = load i32, ptr %i.dsp, align 4, !noalias !10665, !noundef !24
  %i.dsr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dss = load i64, ptr %i.dsr, align 8, !noalias !10665, !noundef !24
  %.sroa.7116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dss, ptr %.sroa.7116.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %5, ptr %.sroa.9118.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.10119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %6, ptr %.sroa.10119.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.11120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %7 = load <2 x ptr>, ptr %i.dso, align 8, !noalias !10665
  store <2 x ptr> %7, ptr %.sroa.11120.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.13122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dsq, ptr %.sroa.13122.0..sroa_idx.i, align 8, !noalias !10665
  %.sroa.15124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15124.0..sroa_idx.i, align 1, !noalias !10665
  %.sroa.16125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 2, ptr %.sroa.16125.0..sroa_idx.i, align 2, !noalias !10665
  br label %bb.akf

bb.akf:                                           ; preds = %bb.ake, %bb.afh
  %i.dst = phi ptr [ %i.dsf, %bb.ake ], [ %i.dbj, %bb.afh ] ; 4 uses
  %i.dsu = phi ptr [ %i.dsg, %bb.ake ], [ %i.dbi, %bb.afh ] ; 2 uses
  %i.dsv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dsw = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dsv, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.akh unwind label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.dsx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dsv) #41
          to label %bb.afj unwind label %bb.ajs

bb.akh:                                           ; preds = %bb.akf
  br i1 %i.dsw, label %bb.akl, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dsv)
          to label %bb.akm unwind label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.dsy = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.akk:                                           ; preds = %bb.afm, %bb.afl
  %i.dsz = landingpad { ptr, i32 }
          cleanup
  br label %.body532

bb.akl:                                           ; preds = %bb.akb, %bb.ajv, %bb.ajl, %bb.akh
  %i.dta = phi ptr [ %i.dst, %bb.akh ], [ %i.dqs, %bb.ajl ], [ %i.drr, %bb.ajv ], [ %i.dsf, %bb.akb ]
  %.sink.i466.ph = phi i8 [ 6, %bb.akh ], [ 3, %bb.ajl ], [ 4, %bb.ajv ], [ 5, %bb.akb ]
  store i8 %.sink.i466.ph, ptr %i.dta, align 8, !noalias !10665
  br label %common.ret

bb.akm:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit.i, %bb.aki
  %i.dtb = phi ptr [ %i.dqv, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsjsY2yM364a4_11lance_tools.exit.i ], [ %i.dst, %bb.aki ]
  store i8 1, ptr %i.dtb, align 8, !noalias !10665
  br label %bb.afg

bb.akn:                                           ; preds = %bb.ako, %bb.ayd, %bb.afg
  %i.dtc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dtd = load ptr, ptr %i.dtc, align 8, !nonnull !24, !align !41, !noundef !24 ; 3 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dtf = load i64, ptr %i.dtd, align 8, !range !28, !noundef !24
  %i.dtg = trunc nuw i64 %i.dtf to i1
  br i1 %i.dtg, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictCsjsY2yM364a4_11lance_tools.exit, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictCsjsY2yM364a4_11lance_tools.exit.thread

bb.ako:                                           ; preds = %bb.afg
  %i.dth = getelementptr inbounds nuw i8, ptr %i.dav, i64 688
  %i.dti = load atomic i8, ptr %i.dth acquire, align 8
  %.not903 = icmp eq i8 %i.dti, 0
  br i1 %.not903, label %.thread1943, label %bb.akn

.thread1943:                                      ; preds = %bb.ako
  %i.dtj = load ptr, ptr %i.dau, align 8, !nonnull !24, !align !41, !noundef !24
  %i.dtk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dtl = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dtm = load i32, ptr %i.dtl, align 4, !noundef !24
  %i.dtn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.7785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.dtj, ptr %.sroa.7785.0..sroa_idx, align 8
  %.sroa.8786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.daw, ptr %.sroa.8786.0..sroa_idx, align 8
  %.sroa.9787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dto = load <2 x ptr>, ptr %i.dtk, align 8
  %i.dtp = getelementptr inbounds nuw i8, <2 x ptr> %i.dto, i64 16
  store <2 x ptr> %i.dtp, ptr %.sroa.9787.0..sroa_idx, align 8
  %.sroa.11789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.dtn, ptr %.sroa.11789.0..sroa_idx, align 8
  %.sroa.12790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %i.dtm, ptr %.sroa.12790.0..sroa_idx, align 8
  %.sroa.14792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 637
  store i8 0, ptr %.sroa.14792.0..sroa_idx, align 1
  %i.dtq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dtr = getelementptr inbounds nuw i8, ptr %0, i64 637
  br label %bb.akq

bb.akp:                                           ; preds = %bb.a
  %.phi.trans.insert1715 = getelementptr inbounds nuw i8, ptr %0, i64 637
  %.pre1716 = load i8, ptr %.phi.trans.insert1715, align 1, !range !40, !noalias !10724
  %i.dts = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10724)
  %i.dtt = getelementptr inbounds nuw i8, ptr %0, i64 637 ; 12 uses
  switch i8 %.pre1716, label %default.unreachable1920 [
    i8 0, label %bb.akq
    i8 1, label %bb.aor
    i8 2, label %bb.aos
    i8 3, label %bb.aot
  ]

bb.akq:                                           ; preds = %.thread1943, %bb.akp
  %i.dtu = phi ptr [ %i.dtr, %.thread1943 ], [ %i.dtt, %bb.akp ] ; 12 uses
  %i.dtv = phi ptr [ %i.dtq, %.thread1943 ], [ %i.dts, %bb.akp ] ; 2 uses
  %i.dtw = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 4 uses
  store i8 0, ptr %i.dtw, align 4, !noalias !10724
  %i.dtx = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dty = load ptr, ptr %i.dtx, align 8, !noalias !10724, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.dua = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dub = load <2 x ptr>, ptr %i.dua, align 8, !noalias !10724
  store <2 x ptr> %i.dub, ptr %i.dtz, align 8, !noalias !10724
  %i.duc = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.dud = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.due = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.duf = load i32, ptr %i.due, align 8, !noalias !10724, !noundef !24 ; 4 uses
  %i.dug = load <2 x ptr>, ptr %i.dud, align 8, !noalias !10724
  store <2 x ptr> %i.dug, ptr %i.duc, align 8, !noalias !10724
  %i.duh = getelementptr inbounds nuw i8, ptr %i.dty, i64 72
  %i.dui = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.duh)
          to label %bb.aks unwind label %bb.akr

.body672.thread:                                  ; preds = %bb.akr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, %bb.alp, %bb.ano, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.alr
  %i.duj = phi ptr [ %i.dtu, %bb.akr ], [ %i.ect, %bb.ano ], [ %i.dtu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %i.dtu, %bb.alp ], [ %i.dtu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.dtu, %bb.alr ]
  %.pn34.i = phi { ptr, i32 } [ %i.duk, %bb.akr ], [ %.pn28.pn.pn.pn.pn.i, %bb.ano ], [ %.pn.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i, %bb.alp ], [ %eh.lpad-body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i ], [ %eh.lpad-body.i.i, %bb.alr ]
  store i8 2, ptr %i.duj, align 1, !noalias !10724
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECsjsY2yM364a4_11lance_tools.exit686

bb.akr:                                           ; preds = %bb.akq
  %i.duk = landingpad { ptr, i32 }
          cleanup
  br label %.body672.thread

bb.aks:                                           ; preds = %bb.akq
  %i.dul = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dum = load ptr, ptr %i.dul, align 8, !noalias !10724, !nonnull !24, !align !41, !noundef !24 ; 6 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dum, i64 144 ; 9 uses
  %i.duo = getelementptr i8, ptr %i.dum, i64 160
  %.val39.i615 = load i64, ptr %i.duo, align 8, !noundef !24
  %i.dup = icmp eq i64 %.val39.i615, 0
  br i1 %i.dup, label %bb.akt, label %bb.anq

bb.akt:                                           ; preds = %bb.aks
  %i.duq = load ptr, ptr %i.dtz, align 8, !noalias !10724, !nonnull !24, !align !41, !noundef !24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10724
  store i64 %i.dui, ptr %i.ae, align 8, !noalias !10724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10724
  %i.dur = getelementptr inbounds nuw i8, ptr %i.duq, i64 8 ; 2 uses
  %i.dus = load i64, ptr %i.dur, align 8, !noundef !24
  store i64 -1, ptr %i.ad, align 8, !noalias !10724
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.duq, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10724
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @323, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10724
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.dus, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !10724
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !10724
  %.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i8 0, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !noalias !10724
  %.sroa.4.0..sroa_idx.i.i635 = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i635, align 8, !noalias !10724
  call void @llvm.experimental.noalias.scope.decl(metadata !10725)
  call void @llvm.experimental.noalias.scope.decl(metadata !10726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10727
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCskTBvlRM5ILY_4moka3cht4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1p_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3f_16CachedReaderDataEENCNvMs0_B2B_INtB2B_11InvalidatorB3d_B42_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE35remove_predicates_registered_before0ENCB4u_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.akv unwind label %bb.aku, !noalias !10728

bb.aku:                                           ; preds = %bb.akt
  %i.dut = landingpad { ptr, i32 }
          cleanup
  br label %bb.alp

bb.akv:                                           ; preds = %bb.akt
  %i.duu = load i64, ptr %i.z, align 8, !range !23, !noalias !10727, !noundef !24 ; 4 uses
  %.not.i.i.i.i636 = icmp eq i64 %i.duu, -1
  br i1 %.not.i.i.i.i636, label %bb.akw, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

bb.akw:                                           ; preds = %bb.akv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10727
  call void @llvm.experimental.noalias.scope.decl(metadata !10729)
  call void @llvm.experimental.noalias.scope.decl(metadata !10730)
  call void @llvm.experimental.noalias.scope.decl(metadata !10731)
  call void @llvm.experimental.noalias.scope.decl(metadata !10732)
  %i.duv = load i64, ptr %i.ad, align 8, !range !23, !alias.scope !10733, !noalias !10734, !noundef !24 ; 3 uses
  %i.duw = icmp eq i64 %i.duv, -1
  br i1 %i.duw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.thread, label %bb.akx

bb.akx:                                           ; preds = %bb.akw
  call void @llvm.experimental.noalias.scope.decl(metadata !10735)
  %i.dux = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dux, align 8, !alias.scope !10736, !noalias !10734, !nonnull !24, !noundef !24 ; 2 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.duy, align 8, !alias.scope !10736, !noalias !10734, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10737)
  %i.duz = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.duz, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.akx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0CsjsY2yM364a4_11lance_tools:bb.a

bb.cv:                                            ; preds = %bb.cu
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  br label %bb.db

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #40
          to label %.noexc84 unwind label %bb.da

.noexc84:                                         ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.ct
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %.sroa.035.1.i.i.i, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.lg = load ptr, ptr %i.lf, align 8, !nonnull !24, !align !41, !noundef !24 ; 3 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 24
  %.val42 = load ptr, ptr %i.lh, align 8, !align !41, !noundef !24
  %.not114 = icmp eq ptr %.val42, null
  br i1 %.not114, label %bb.k, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 0, ptr %i.li, align 1
  %i.lj = load ptr, ptr %i.hb, align 8, !nonnull !24, !noundef !24
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.ll = load i8, ptr %i.lk, align 2, !range !40, !noundef !24
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.lg, ptr %.sroa.7105.0..sroa_idx, align 8
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.lj, ptr %.sroa.8106.0..sroa_idx, align 8
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.le, ptr %.sroa.9107.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 %i.ll, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 370
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 2
  br label %bb.f

bb.da:                                            ; preds = %bb.cx
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.db:                                            ; preds = %bb.cu, %bb.cv, %bb.cw
  %.sroa.0.0.i81 = phi ptr [ %i.lc, %bb.cw ], [ %i.lb, %bb.cv ], [ %i.ky, %bb.cu ]
  %.sroa.4.0.i82 = getelementptr inbounds nuw i8, ptr %i.ky, i64 144
  %i.ln = load ptr, ptr %i.gx, align 8, !nonnull !24, !align !41, !noundef !24
  %.val44 = load ptr, ptr %i.hb, align 8, !nonnull !24, !noundef !24
  %i.lo = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.lp = load i64, ptr %i.gz, align 8, !noundef !24
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lr = load ptr, ptr %i.lq, align 8, !nonnull !24, !noundef !24
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lt = load i64, ptr %i.ls, align 8, !noundef !24
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.ln, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lo, i64 noundef %i.lp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lr, i64 noundef %i.lt, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i81, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i82)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.dd:                                            ; preds = %bb.db
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 245
  store i8 0, ptr %i.lv, align 1
  br label %bb.s

.body78:                                          ; preds = %bb.cs, %.thread.i.i.i, %bb.dc, %bb.dn, %bb.da
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.dn ], [ %i.lu, %bb.dc ], [ %.pn.i.i.i, %.thread.i.i.i ], [ %i.lm, %bb.da ], [ %i.kw, %bb.cs ]
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val36 = load ptr, ptr %i.lw, align 8, !align !41, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val36) #41
          to label %.body74 unwind label %bb.cr

bb.de:                                            ; preds = %bb.av
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.df:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.sroa.0.0.i63 = phi ptr [ %i.ff, %bb.au ], [ %i.fe, %bb.at ], [ %i.fc, %bb.as ]
  %.sroa.4.0.i64 = getelementptr inbounds nuw i8, ptr %i.fc, i64 144
  %i.ly = load ptr, ptr %i.bf, align 8, !nonnull !24, !align !41, !noundef !24
  %i.lz = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.ma = load ptr, ptr %i.bg, align 8, !nonnull !24, !noundef !24
  %i.mb = load i64, ptr %i.bh, align 8, !noundef !24
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.ly, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lz, i64 noundef %.sroa.04.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mb, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i63, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i64)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dh:                                            ; preds = %bb.df
  store i8 0, ptr %i.bi, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  %i.md = load ptr, ptr %i.e, align 8, !alias.scope !11117, !nonnull !24, !noundef !24
  %i.me = atomicrmw sub ptr %i.md, i64 1 release, align 8, !noalias !11117
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit87

bb.di:                                            ; preds = %bb.dh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit87 unwind label %bb.dj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit89: ; preds = %bb.dk, %bb.dl, %bb.dj
  %.pn33 = phi { ptr, i32 } [ %i.mg, %bb.dj ], [ %.pn31, %bb.dl ], [ %.pn31, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body

bb.dj:                                            ; preds = %bb.di
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit89

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit87: ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !11118)
  call void @llvm.experimental.noalias.scope.decl(metadata !11119)
  %i.mh = load i32, ptr %i.az, align 8, !alias.scope !11120, !noalias !11119, !noundef !24 ; 2 uses
  %i.mi = load i32, ptr %i.ba, align 4, !alias.scope !11121, !noalias !11118, !noundef !24
  %i.mj = icmp ult i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.ab, label %.loopexit

bb.dk:                                            ; preds = %bb.dg, %bb.de
  %.pn31 = phi { ptr, i32 } [ %i.mc, %bb.dg ], [ %i.lx, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11122)
  call void @llvm.experimental.noalias.scope.decl(metadata !11123)
  %i.mk = load ptr, ptr %i.e, align 8, !alias.scope !11124, !nonnull !24, !noundef !24
  %i.ml = atomicrmw sub ptr %i.mk, i64 1 release, align 8, !noalias !11124
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit89

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit89 unwind label %bb.cr

bb.dm:                                            ; preds = %bb.j, %bb.g, %bb.q, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %i.by, %bb.o ], [ %i.bm, %bb.j ], [ %i.bl, %bb.g ]
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 8, !range !25, !noundef !24
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  store i8 0, ptr %i.mn, align 8
  br label %.body78

bb.do:                                            ; preds = %bb.dm
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val = load ptr, ptr %i.mq, align 8, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %.val) #41
          to label %bb.dn unwind label %bb.cr

bb.dp:                                            ; preds = %bb.v
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  call void @llvm.experimental.noalias.scope.decl(metadata !11126)
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !11127, !nonnull !24, !noundef !24
  %i.mt = atomicrmw sub ptr %i.ms, i64 1 release, align 8, !noalias !11127
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %bb.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit91

bb.dq:                                            ; preds = %bb.dp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit91 unwind label %bb.cr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvMse_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13notify_upsert0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !40, !noundef !24
  switch i8 %i.b, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24
  %2 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i8 0, ptr %i.c, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %4 = load ptr, ptr %3, align 8, !nonnull !24, !noundef !24
  store i8 0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !noundef !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.k = load i8, ptr %i.j, align 2, !range !40, !noundef !24
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %.sroa.1021.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.k, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.h, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.q, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11147)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11148, !nonnull !24, !noundef !24
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !11148
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #40
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #40
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.p = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0) #41
          to label %bb.c unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %i.p, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.l, %bb.m
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 1
  ret i1 %i.p

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11150)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !11151, !nonnull !24, !noundef !24
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !11151
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %common.ret unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.r, %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit, %bb.n
  %.pn9 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %.pn7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit ], [ %.pn7, %bb.s ], [ %.pn7, %bb.r ]
  store i8 2, ptr %i.a, align 1
  resume { ptr, i32 } %.pn9

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

bb.o:                                             ; preds = %bb.s, %bb.q, %bb.d, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.z = load i8, ptr %i.y, align 1, !range !25, !noundef !24
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.p, %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i8, ptr %i.ab, align 8, !range !25, !noundef !24
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11153)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !11154, !nonnull !24, !noundef !24
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !11154
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.o

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11157)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !11158, !nonnull !24, !noundef !24
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !11158
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0CsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.4.i.sroa.0.i.i = alloca [7 x i8], align 1 ; 8 uses
  %.sroa.4.i.sroa.7.i.i = alloca [16 x i8], align 1 ; 8 uses
  %.sroa.580.i.i.i = alloca [24 x i8], align 8    ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 12 uses
  %.sroa.8.i.sroa.9.i.i = alloca [16 x i8], align 1 ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.011.i.i.i.i.i = alloca [208 x i8], align 8 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [104 x i8], align 8               ; 14 uses
  %.sroa.0.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.5.i.i.i.i = alloca [80 x i8], align 8    ; 4 uses
  %.sroa.8326.i.i.i = alloca [7 x i8], align 1    ; 10 uses
  %.sroa.26.i.i.i = alloca [16 x i8], align 8     ; 10 uses
  %i.l = alloca [208 x i8], align 8               ; 12 uses
  %.sroa.3.i.i.i = alloca [7 x i8], align 1       ; 7 uses
  %.sroa.6282.sroa.4.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 13 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [56 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %i.t = alloca [144 x i8], align 8               ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 8 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [56 x i8], align 8                ; 43 uses
  %i.y = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8346.i.i = alloca [31 x i8], align 1     ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 13 uses
  %.sroa.3313.i.i = alloca [7 x i8], align 1      ; 6 uses
  %.sroa.7315.i.i = alloca [40 x i8], align 8     ; 7 uses
  %.sroa.8309.sroa.0.i.i = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.8309.sroa.7.i.i = alloca [16 x i8], align 1 ; 7 uses
  %.sroa.9310.i.i = alloca [24 x i8], align 8     ; 7 uses
  %i.aa = alloca [88 x i8], align 8               ; 10 uses
  %.sroa.3.i.i = alloca [7 x i8], align 1         ; 6 uses
  %.sroa.12280.i.i = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.8269.i.i = alloca [7 x i8], align 1      ; 8 uses
  %.sroa.13.i.i = alloca [16 x i8], align 8       ; 8 uses
  %i.ab = alloca [88 x i8], align 8               ; 10 uses
  %i.ac = alloca [8 x i8], align 8                ; 13 uses
  %i.ad = alloca [88 x i8], align 8               ; 8 uses
  %.sroa.8241.i.i = alloca [56 x i8], align 8     ; 7 uses
  %i.ae = alloca [72 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 16              ; 10 uses
  %i.ag = alloca [16 x i8], align 16              ; 10 uses
  %i.ah = alloca [128 x i8], align 8              ; 22 uses
  %i.ai = alloca [8 x i8], align 8                ; 9 uses
  %i.aj = alloca [56 x i8], align 8               ; 14 uses
  %i.ak = alloca [16 x i8], align 8               ; 11 uses
  %i.al = alloca [144 x i8], align 8              ; 6 uses
  %i.am = alloca [72 x i8], align 8               ; 12 uses
  %i.an = alloca [160 x i8], align 8              ; 7 uses
  %i.ao = alloca [72 x i8], align 8               ; 4 uses
  %i.ap = alloca [104 x i8], align 8              ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 10 uses
  %i.ar = alloca [128 x i8], align 8              ; 9 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 4               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 10 uses
end_hunk_3
