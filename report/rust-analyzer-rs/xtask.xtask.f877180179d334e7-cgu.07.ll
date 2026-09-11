Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.07?download=true
inline.NumInlined: 683
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCslkzCjlEuW1f_5xtask7publish15check_file_nameNtNtCsbSS6DM8SDEO_5alloc6string6StringEB4_:bb.a
  br i1 %i.lw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i119, label %bb.as

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i119: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i118
  %i.lx = icmp ne ptr %i.lo, %i.o
  tail call void @llvm.assume(i1 %i.lx)
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.7.ph, i64 4
  %i.lz = load i8, ptr %i.lo, align 1, !noalias !276, !noundef !5
  %i.ma = shl nuw nsw i32 %i.ld, 18
  %i.mb = and i32 %i.ma, 1835008
  %i.mc = shl nuw nsw i32 %i.lt, 6
  %i.md = and i8 %i.lz, 63
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = or disjoint i32 %i.mc, %i.me
  %i.mg = or disjoint i32 %i.mf, %i.mb
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i115, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i119, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i118
  %.sroa.0.8.ph = phi ptr [ %i.lf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i115 ], [ %i.lo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i118 ], [ %i.ly, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i119 ], [ %i.kz, %bb.ar ] ; 5 uses
  %.sroa.4.0.i116.ph = phi i32 [ %i.lk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i115 ], [ %i.lv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i118 ], [ %i.mg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i119 ], [ %i.lm, %bb.ar ] ; 2 uses
  %i.mh = icmp samesign ult i32 %.sroa.4.0.i116.ph, 1114112
  tail call void @llvm.assume(i1 %i.mh)
  %i.mi = add nsw i32 %.sroa.4.0.i116.ph, -48
  %or.cond6 = icmp ult i32 %i.mi, 10
  br i1 %or.cond6, label %bb.at, label %bb.j, !prof !268

bb.at:                                            ; preds = %bb.as
  %i.mj = icmp eq ptr %.sroa.0.8.ph, %i.o
  br i1 %i.mj, label %.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mk = load i8, ptr %.sroa.0.8.ph, align 1, !noalias !277, !noundef !5 ; 5 uses
  %i.ml = icmp sgt i8 %i.mk, -1
  br i1 %i.ml, label %bb.av, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i121

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i121: ; preds = %bb.au
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 1 ; 2 uses
  %i.mn = and i8 %i.mk, 31
  %i.mo = zext nneg i8 %i.mn to i32               ; 3 uses
  %i.mp = icmp ne ptr %i.mm, %i.o
  tail call void @llvm.assume(i1 %i.mp)
  %i.mq = load i8, ptr %i.mm, align 1, !noalias !277, !noundef !5
  %i.mr = shl nuw nsw i32 %i.mo, 6
  %i.ms = and i8 %i.mq, 63
  %i.mt = zext nneg i8 %i.ms to i32               ; 2 uses
  %i.mu = or disjoint i32 %i.mr, %i.mt
  %i.mv = icmp samesign ugt i8 %i.mk, -33
  br i1 %i.mv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i124, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mw = zext nneg i8 %i.mk to i32
  br label %bb.aw

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i124: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i121
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 2 ; 2 uses
  %i.my = icmp ne ptr %i.mx, %i.o
  tail call void @llvm.assume(i1 %i.my)
  %i.mz = load i8, ptr %i.mx, align 1, !noalias !277, !noundef !5
  %i.na = shl nuw nsw i32 %i.mt, 6
  %i.nb = and i8 %i.mz, 63
  %i.nc = zext nneg i8 %i.nb to i32
  %i.nd = or disjoint i32 %i.na, %i.nc            ; 2 uses
  %i.ne = shl nuw nsw i32 %i.mo, 12
  %i.nf = or disjoint i32 %i.nd, %i.ne
  %i.ng = icmp samesign ugt i8 %i.mk, -17
  br i1 %i.ng, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i125, label %bb.aw

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i125: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i124
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 3 ; 2 uses
  %i.ni = icmp ne ptr %i.nh, %i.o
  tail call void @llvm.assume(i1 %i.ni)
  %i.nj = load i8, ptr %i.nh, align 1, !noalias !277, !noundef !5
  %i.nk = shl nuw nsw i32 %i.mo, 18
  %i.nl = and i32 %i.nk, 1835008
  %i.nm = shl nuw nsw i32 %i.nd, 6
  %i.nn = and i8 %i.nj, 63
  %i.no = zext nneg i8 %i.nn to i32
  %i.np = or disjoint i32 %i.nm, %i.no
  %i.nq = or disjoint i32 %i.np, %i.nl
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i121, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i125, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i124
  %.sroa.4.0.i122.ph = phi i32 [ %i.nf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i124 ], [ %i.nq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i125 ], [ %i.mu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i121 ], [ %i.mw, %bb.av ] ; 2 uses
  %i.nr = icmp samesign ult i32 %.sroa.4.0.i122.ph, 1114112
  tail call void @llvm.assume(i1 %i.nr)
  %i.ns = add nsw i32 %.sroa.4.0.i122.ph, -48
  %or.cond7 = icmp ult i32 %i.ns, 10
  br i1 %or.cond7, label %bb.ax, label %bb.j, !prof !268

.invoke:                                          ; preds = %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n
  %i.nt = phi ptr [ @58, %bb.ap ], [ @57, %bb.al ], [ @56, %bb.ah ], [ @55, %bb.ad ], [ @54, %bb.z ], [ @53, %bb.v ], [ @52, %bb.r ], [ @51, %bb.n ], [ @59, %bb.at ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nt) #30
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ay unwind label %bb.k

bb.ay:                                            ; preds = %bb.ax
  %i.nu = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.nv = trunc nuw i64 %i.nu to i1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !range !16, !noundef !5 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.nv, label %bb.az, label %bb.ba, !prof !7

bb.az:                                            ; preds = %bb.ay
  %i.nz = load i64, ptr %i.ny, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.nx, i64 %i.nz) #30
          to label %bb.m unwind label %bb.k

bb.ba:                                            ; preds = %bb.ay
  %i.oa = load ptr, ptr %i.ny, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ob = icmp ule i64 %i.n, %i.nx
  tail call void @llvm.assume(i1 %i.ob)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  store i64 %i.nx, ptr %0, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oa, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.562.0..sroa_idx, align 8
  %i.oc = load i64, ptr %i.b, align 8, !range !11, !alias.scope !278, !noundef !5
  %i.od = icmp eq i64 %i.oc, -1
  br i1 %i.od, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.ba, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %i.og, %bb.be ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit, %bb.f
  ret void

_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit72: ; preds = %bb.j
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.oi, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.b

bb.bh:                                            ; preds = %bb.k, %.body
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureENCNvB2n_8generate0ENtNtB6_6string6StringEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 80                         ; 6 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureENCNvB1N_8generate0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4h_E0INtNtBc_6result6ResultB3G_zEEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureENCNvB1Z_8generate0EEB23_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNtNtBI_6string6StringEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNtNtB6_6string6StringEB17_.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNtNtB6_6string6StringEB17_.exit.thread: ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #29
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNtNtB6_6string6StringEB17_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #29 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureNtNtB6_6string6StringEB17_.exit.thread, !prof !17

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #30
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen12feature_docs7FeatureENCNvB1Z_8generate0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticENCNvB2n_8generate0ENtNtB6_6string6StringEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 80                         ; 6 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticENCNvB1N_8generate0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4p_E0INtNtBc_6result6ResultB3O_zEEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticENCNvB1Z_8generate0EEB23_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNtNtBI_6string6StringEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNtNtB6_6string6StringEB17_.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNtNtB6_6string6StringEB17_.exit.thread: ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #29
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNtNtB6_6string6StringEB17_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #29 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticNtNtB6_6string6StringEB17_.exit.thread, !prof !17

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #30
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen16diagnostics_docs10DiagnosticENCNvB1Z_8generate0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistENCNvB2n_8generate0ENtNtB6_6string6StringEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 80                         ; 6 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistENCNvB1N_8generate0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4l_E0INtNtBc_6result6ResultB3K_zEEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistENCNvB1Z_8generate0EEB23_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNtNtBI_6string6StringEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNtNtB6_6string6StringEB17_.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNtNtB6_6string6StringEB17_.exit.thread: ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #29
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNtNtB6_6string6StringEB17_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #29 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistNtNtB6_6string6StringEB17_.exit.thread, !prof !17

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #30
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistENCNvB1Z_8generate0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs_NtNtCsdRkQxkTxnTp_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextReECslkzCjlEuW1f_5xtask(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !281
  store ptr %1, ptr %i.b, align 8, !noalias !281
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8, !noalias !281
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.d, align 8, !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !281
  store i64 -1, ptr %i.a, align 8, !noalias !281
  %i.e = call fastcc noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorReBw_EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !281
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_10filter_map19filter_map_try_foldNtBY_9ComponentReuINtNtNtBb_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvB1A_3any5checkB3e_NCB40_s_0E0E0B3h_EB44_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !292
  call void @_RNvXsj_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  %i.f = load i8, ptr %i.c, align 8, !range !293, !noalias !292, !noundef !5 ; 2 uses
  %.not11.not.i = icmp eq i8 %i.f, -1
  br i1 %.not11.not.i, label %_RINvYNtNtCscAsMj0W7j8b_3std4path10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBM_8adapters10filter_map19filter_map_try_foldNtB5_9ComponentReuINtNtNtBO_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtBK_8iterator8Iterator3any5checkB3a_NCB3W_s_0E0E0B3d_EB40_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i, %.lr.ph.i
  %i.j = phi i8 [ %i.f, %.lr.ph.i ], [ %i.t, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i ] ; 2 uses
  %i.k = icmp samesign ugt i8 %i.j, 5
  %i.l = zext nneg i8 %i.j to i64
  %i.m = add nsw i64 %i.l, -5
  %i.n = select i1 %i.k, i64 %i.m, i64 0          ; 2 uses
  switch i64 %i.n, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !292
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !292, !nonnull !5, !noundef !5
  br label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i

bb.e:                                             ; preds = %bb.b
  br label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i

bb.f:                                             ; preds = %bb.b
  br label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i

bb.g:                                             ; preds = %bb.b
  %.sroa.76.0.copyload.i = load i64, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !292
  %.sroa.65.0.copyload.i = load ptr, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !292, !nonnull !5, !noundef !5
  br label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i

_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i, %bb.d ], [ %.sroa.76.0.copyload.i, %bb.g ], [ 1, %bb.e ], [ 2, %bb.f ], [ %i.n, %bb.b ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i, %bb.d ], [ %.sroa.65.0.copyload.i, %bb.g ], [ @104, %bb.e ], [ @105, %bb.f ], [ @103, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !294
  call void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i), !noalias !295
  %i.o = load i64, ptr %i.b, align 8, !range !12, !noalias !294, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = load ptr, ptr %i.g, align 8, !noalias !294, !nonnull !5
  %i.r = load i64, ptr %i.h, align 8, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !294
  br i1 %i.p, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.i: ; preds = %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !296
  store ptr %i.q, ptr %i.a, align 8, !noalias !297
  store i64 %i.r, ptr %i.i, align 8, !noalias !297
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.s = call noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  br i1 %i.s, label %_RINvYNtNtCscAsMj0W7j8b_3std4path10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBM_8adapters10filter_map19filter_map_try_foldNtB5_9ComponentReuINtNtNtBO_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtBK_8iterator8Iterator3any5checkB3a_NCB3W_s_0E0E0B3d_EB40_.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.i, %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0B5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !292
  call void @_RNvXsj_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  %i.t = load i8, ptr %i.c, align 8, !range !293, !noalias !292, !noundef !5 ; 2 uses
  %.not.not.i = icmp eq i8 %i.t, -1
  br i1 %.not.not.i, label %_RINvYNtNtCscAsMj0W7j8b_3std4path10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBM_8adapters10filter_map19filter_map_try_foldNtB5_9ComponentReuINtNtNtBO_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtBK_8iterator8Iterator3any5checkB3a_NCB3W_s_0E0E0B3d_EB40_.exit, label %bb.b

_RINvYNtNtCscAsMj0W7j8b_3std4path10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBM_8adapters10filter_map19filter_map_try_foldNtB5_9ComponentReuINtNtNtBO_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtBK_8iterator8Iterator3any5checkB3a_NCB3W_s_0E0E0B3d_EB40_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i, %bb.a
  %.not10.i = phi i1 [ false, %bb.a ], [ true, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.i ], [ false, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path9ComponentReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtCslkzCjlEuW1f_5xtask4tidy14is_exclude_dir0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1P_NCB2B_s_0E0E0B2F_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  ret i1 %.not10.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB26_8for_each4callB1s_NCINvMsk_NtB1w_3vecINtB3m_3VecB1s_E14extend_trustedBP_E0E0ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1t_8for_each4callBQ_NCINvMsk_NtBU_3vecINtB41_3VecBQ_E14extend_trustedINtNtB2l_6cloned6ClonedBF_EE0E0E0ECslkzCjlEuW1f_5xtask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !308
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !309

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !310
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !308
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1t_8for_each4callBQ_NCINvMsk_NtBU_3vecINtB41_3VecBQ_E14extend_trustedINtNtB2l_6cloned6ClonedBF_EE0E0E0ECslkzCjlEuW1f_5xtask.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.04.0.copyload, align 8, !noalias !309
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1t_8for_each4callBQ_NCINvMsk_NtBU_3vecINtB41_3VecBQ_E14extend_trustedINtNtB2l_6cloned6ClonedBF_EE0E0E0ECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !noalias !309
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB26_8for_each4callB1s_NCINvMsk_NtB1w_3vecINtB3n_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainIB44_INtNtBb_6option8IntoIterB1s_EBP_EINtNtNtB9_7sources4once4OnceB1s_EEE0E0ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !316
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
end_hunk_0
