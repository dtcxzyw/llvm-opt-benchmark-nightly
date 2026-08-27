Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.3?download=true
inline.NumInlined: 164
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform:bb.a
  store i64 %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx104, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx106, align 8
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecAhj4_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter11ChunksExacthENCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0EE9from_iterB38_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj4_E6resizeCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 256, i32 noundef 0)
          to label %bb.dm unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.az = icmp samesign ult i16 %4, 5
  br i1 %i.az, label %bb.ca, label %bb.aq

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.au, ptr %i.aq, align 1, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !373
  store i8 1, ptr %i.ap, align 1, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !373
  store i8 1, ptr %i.ao, align 1, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !373
  store i64 8, ptr %i.an, align 8, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !373
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i16 0, ptr %i.ba, align 8, !noalias !373
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 50
  store i16 256, ptr %i.bb, align 2, !noalias !373
  store ptr %i.an, ptr %i.al, align 8, !noalias !373
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !373
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ao, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !373
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.aq, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !373
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !373
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %6, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !373
  call void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecAhj20_EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBW_E0EE9from_iterB2M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.al), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !373
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !373, !noundef !26
  %.not90.i = icmp eq i64 %i.bd, 256
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !373, !nonnull !26 ; 2 uses
  br i1 %.not90.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj20_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, label %bb.h, !prof !206

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
          to label %.noexc39.i unwind label %bb.l

.noexc39.i:                                       ; preds = %bb.h
  unreachable

.body46.i:                                        ; preds = %bb.z, %bb.r, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.cp, %bb.r ], [ %i.bi, %bb.l ], [ %lpad.phi.i, %bb.z ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body46.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.i unwind label %bb.k

bb.j:                                             ; preds = %.body46.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.ap

bb.k:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.l:                                             ; preds = %bb.s, %bb.q, %bb.p, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj20_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.g
  %i.bj = lshr i16 %2, 3
  %i.bk = and i16 %2, 7
  %.not.i = icmp ne i16 %i.bk, 0
  %i.bl = zext i1 %.not.i to i16
  %.sroa.05.0.i = add nuw nsw i16 %i.bj, %i.bl
  %i.bm = zext nneg i16 %.sroa.05.0.i to i64      ; 5 uses
  %i.bn = icmp eq i16 %2, 0
  %i.bo = icmp eq i16 %3, 0
  %or.cond.i = or i1 %i.bn, %i.bo
  br i1 %or.cond.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj20_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_Kj20_EB4_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.dl, %bb.dq, %bb.cd, %bb.ch, %bb.cp, %bb.at, %bb.ax, %bb.bf, %bb.j, %bb.n, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.oa, %bb.dq ], [ %.pn.i, %bb.j ], [ %.pn.i14, %bb.at ], [ %.pn.i51, %bb.cd ], [ %i.cw, %bb.v ], [ %i.bp, %bb.n ], [ %i.hb, %bb.bf ], [ %i.fu, %bb.ax ], [ %i.li, %bb.cp ], [ %i.kb, %bb.ch ], [ %lpad.phi, %bb.dl ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj20_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.br = zext i16 %2 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 5 uses
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.bm, i64 1)
  %i.bu = shl nuw nsw i64 %i.bt, 5                ; 4 uses
  %i.bv = sub nsw i64 %i.bs, %i.bu                ; 4 uses
  %i.bw = shl nuw nsw i64 %i.bm, 2                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !373
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !381
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef range(i64 0, 32769) %i.bm, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i unwind label %bb.l

.noexc43.i:                                       ; preds = %bb.p
  %i.bx = load i64, ptr %i.af, align 8, !range !382, !noalias !381, !noundef !26
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !383, !noalias !381, !noundef !26 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %i.by, label %bb.q, label %.lr.ph139.i, !prof !4

bb.q:                                             ; preds = %.noexc43.i
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !381
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cc) #15
          to label %.noexc44.i unwind label %bb.l

.noexc44.i:                                       ; preds = %bb.q
  unreachable

.lr.ph139.i:                                      ; preds = %.noexc43.i
  %i.cd = load ptr, ptr %i.cb, align 8, !noalias !381, !nonnull !26, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !381
  store i64 %i.ca, ptr %i.ak, align 8, !alias.scope !378, !noalias !373
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store ptr %i.cd, ptr %i.ce, align 8, !alias.scope !378, !noalias !373
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  store i64 %i.bm, ptr %i.cf, align 8, !alias.scope !378, !noalias !373
  %i.cg = zext i16 %3 to i64                      ; 2 uses
  %.sroa.4.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.6.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.7.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.not.i.i = icmp samesign ugt i64 %i.bu, %i.bs
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.778.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.cn = add nsw i64 %i.bm, -1                   ; 3 uses
  %i.co = icmp ult i64 %i.bv, 33
  br label %bb.u

._crit_edge.i:                                    ; preds = %bb.al
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body46.i unwind label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i unwind label %bb.l

bb.t:                                             ; preds = %bb.r
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.u:                                             ; preds = %bb.al, %.lr.ph139.i
  %.sroa.09.0138.i = phi i64 [ 0, %.lr.ph139.i ], [ %i.cr, %bb.al ] ; 2 uses
  %i.cr = add nuw nsw i64 %.sroa.09.0138.i, 1     ; 2 uses
  %i.cs = xor i64 %.sroa.09.0138.i, -1
  %i.ct = add nsw i64 %i.cs, %i.cg                ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.bw                ; 4 uses
  %i.cv = icmp ugt i64 %i.cu, %1
  br i1 %i.cv, label %.invoke.i, label %bb.x, !prof !4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !373
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_Kj20_EB4_.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.cy = sub nuw nsw i64 %1, %i.cu               ; 2 uses
  %.not33.i = icmp samesign ugt i64 %i.bw, %i.cy
  br i1 %.not33.i, label %.invoke.i, label %bb.ab, !prof !77

.invoke.i:                                        ; preds = %bb.am, %bb.ae, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i, %bb.x, %bb.u
  %i.cz = phi i64 [ 0, %bb.am ], [ %i.cu, %bb.u ], [ 0, %bb.ae ], [ %i.du, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ], [ 0, %bb.x ]
  %i.da = phi i64 [ %i.bv, %bb.am ], [ %1, %bb.u ], [ %i.bs, %bb.ae ], [ %1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ], [ %i.bw, %bb.x ]
  %i.db = phi i64 [ 32, %bb.am ], [ %1, %bb.u ], [ %i.dw, %bb.ae ], [ %1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ], [ %i.cy, %bb.x ]
  %i.dc = phi ptr [ @5, %bb.am ], [ @11, %bb.u ], [ @7, %bb.ae ], [ @8, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ], [ @10, %bb.x ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.da, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #15
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph137.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i
  %lpad.loopexit92.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.an, %bb.ah, %bb.ab
  %lpad.loopexit95.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke252.i, %bb.ak, %bb.ag, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit92.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit95.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body.i unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body46.i unwind label %bb.ap

bb.aa:                                            ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.bw
  %i.dh = load ptr, ptr %i.ce, align 8, !noalias !373, !nonnull !26, !noundef !26 ; 2 uses
  %i.di = load i64, ptr %i.cf, align 8, !noalias !373, !noundef !26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !384
  store ptr %i.df, ptr %i.ae, align 8, !noalias !388
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx64.i, align 8, !noalias !388
  store ptr %i.dg, ptr %.sroa.5.0..sroa_idx65.i, align 8, !noalias !388
  store i64 0, ptr %.sroa.6.0..sroa_idx66.i, align 8, !noalias !388
  store i64 4, ptr %.sroa.7.0..sroa_idx67.i, align 8, !noalias !388
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ae, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dj)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i64 72, i1 false), !noalias !373
  %i.dk = load i64, ptr %i.ch, align 8, !alias.scope !389, !noalias !392, !noundef !26 ; 2 uses
  %i.dl = load i64, ptr %i.ci, align 8, !alias.scope !389, !noalias !392, !noundef !26
  %i.dm = icmp ult i64 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ao
  %i.dn = phi i64 [ %i.fd, %bb.ao ], [ %i.dk, %bb.ac ] ; 3 uses
  %i.do = add nuw i64 %i.dn, 1
  store i64 %i.do, ptr %i.ch, align 8, !alias.scope !389, !noalias !392
  %i.dp = invoke { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ai, i64 noundef %i.dn)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %.lr.ph.i
  %i.dq = extractvalue { ptr, i64 } %i.dp, 0      ; 2 uses
  %.val.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !389, !noalias !392, !nonnull !26, !noundef !26
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dn
  %.not34.i = icmp eq ptr %i.dq, null
  br i1 %.not34.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i
  %i.ds = extractvalue { ptr, i64 } %i.dp, 1      ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, 1
  br i1 %i.dt, label %bb.ao, label %.invoke252.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i: ; preds = %bb.ao, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !373
  %i.du = mul nsw i64 %i.ct, %i.bs                ; 4 uses
  %i.dv = icmp ugt i64 %i.du, %1
  br i1 %i.dv, label %.invoke.i, label %bb.ae, !prof !4

bb.ae:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i
  %i.dw = sub nuw nsw i64 %1, %i.du               ; 2 uses
  %.not35.i = icmp samesign ugt i64 %i.bs, %i.dw
  br i1 %.not35.i, label %.invoke.i, label %bb.af, !prof !77

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i, label %bb.ag, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc57.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %i.du ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.bu ; 2 uses
  %i.dz = load ptr, ptr %i.ce, align 8, !noalias !373, !nonnull !26, !noundef !26 ; 2 uses
  %i.ea = load i64, ptr %i.cf, align 8, !noalias !373, !noundef !26
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !394
  store ptr %i.dy, ptr %i.ad, align 8, !noalias !398
  store i64 0, ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !398
  store ptr %i.dx, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !398
  store i64 %i.bu, ptr %.sroa.677.0..sroa_idx.i, align 8, !noalias !398
  store i64 32, ptr %.sroa.778.0..sroa_idx.i, align 8, !noalias !398
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ad, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.eb)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !noalias !373
  %i.ec = load i64, ptr %i.ck, align 8, !alias.scope !399, !noalias !402, !noundef !26 ; 2 uses
  %i.ed = load i64, ptr %i.cl, align 8, !alias.scope !399, !noalias !402, !noundef !26
  %i.ee = icmp ult i64 %i.ec, %i.ed
  br i1 %i.ee, label %.lr.ph137.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i

.lr.ph137.i:                                      ; preds = %bb.ai, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.ef = phi i64 [ %i.ey, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i ], [ %i.ec, %bb.ai ] ; 3 uses
  %i.eg = add nuw i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ck, align 8, !alias.scope !399, !noalias !402
  %i.eh = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ag, i64 noundef %i.ef)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i unwind label %.loopexit.i ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %.lr.ph137.i
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0      ; 2 uses
  %.not36.i = icmp eq ptr %i.ei, null
  br i1 %.not36.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1
  %.not91.i = icmp eq i64 %i.ej, 32
  br i1 %.not91.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, label %bb.ak, !prof !206

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.ak
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !373
  %i.ek = load i64, ptr %i.cf, align 8, !noalias !373, !noundef !26 ; 2 uses
  %i.el = icmp ult i64 %i.cn, %i.ek
  br i1 %i.el, label %bb.am, label %.invoke252.i

bb.al:                                            ; preds = %bb.an
  %exitcond.not.i = icmp eq i64 %i.cr, %i.cg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.u

.invoke252.i:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i, %bb.ad
  %i.em = phi i64 [ 1, %bb.ad ], [ %i.cn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ]
  %i.en = phi i64 [ %i.ds, %bb.ad ], [ %i.ek, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ]
  %i.eo = phi ptr [ @9, %bb.ad ], [ @3, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.em, i64 noundef %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eo) #15
          to label %.cont253.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont253.i:                                       ; preds = %.invoke252.i
  unreachable

bb.am:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i
  br i1 %i.co, label %bb.an, label %.invoke.i, !prof !404

bb.an:                                            ; preds = %bb.am
  %i.ep = load ptr, ptr %i.ce, align 8, !noalias !373, !nonnull !26, !noundef !26
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.cn
  %i.er = load i8, ptr %i.eq, align 1, !noundef !26
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.es
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.dy, i64 noundef %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj20_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.aj
  %.val.i60.i = load ptr, ptr %i.cm, align 8, !alias.scope !399, !noalias !402, !nonnull !26, !noundef !26
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i60.i, i64 %i.ef
  %i.ev = load i8, ptr %i.eu, align 1, !noundef !26
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.ew
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ei, ptr noundef nonnull align 1 dereferenceable(32) %i.ex, i64 32, i1 false)
  %i.ey = load i64, ptr %i.ck, align 8, !alias.scope !399, !noalias !402, !noundef !26 ; 2 uses
  %i.ez = load i64, ptr %i.cl, align 8, !alias.scope !399, !noalias !402, !noundef !26
  %i.fa = icmp ult i64 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph137.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i

bb.ao:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !noundef !26
  store i8 %i.fc, ptr %i.dr, align 1
  %i.fd = load i64, ptr %i.ch, align 8, !alias.scope !389, !noalias !392, !noundef !26 ; 2 uses
  %i.fe = load i64, ptr %i.ci, align 8, !alias.scope !389, !noalias !392, !noundef !26
  %i.ff = icmp ult i64 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i

bb.ap:                                            ; preds = %bb.z, %bb.j
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %bb.y, %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_Kj20_EB4_.exit: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.dk

bb.aq:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 %i.au, ptr %i.ac, align 1, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !405
  store i8 4, ptr %i.ab, align 1, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !405
  store i8 15, ptr %i.aa, align 1, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !405
  store i64 2, ptr %i.z, align 8, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !405
  %i.fh = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i16 0, ptr %i.fh, align 8, !noalias !405
  %i.fi = getelementptr inbounds nuw i8, ptr %i.x, i64 50
  store i16 256, ptr %i.fi, align 2, !noalias !405
  store ptr %i.z, ptr %i.x, align 8, !noalias !405
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i9, align 8, !noalias !405
  %.sroa.5.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i10, align 8, !noalias !405
  %.sroa.6.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx.i11, align 8, !noalias !405
  %.sroa.7.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %5, ptr %.sroa.7.0..sroa_idx.i12, align 8, !noalias !405
  %.sroa.8.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %6, ptr %.sroa.8.0..sroa_idx.i13, align 8, !noalias !405
  call void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecAhj8_EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh1_KBW_E0EE9from_iterB2L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.x), !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !405
  %i.fj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !405, !noundef !26
  %.not92.i = icmp eq i64 %i.fk, 256
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !405, !nonnull !26 ; 2 uses
  br i1 %.not92.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj8_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, label %bb.ar, !prof !206

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
          to label %.noexc41.i unwind label %bb.av

.noexc41.i:                                       ; preds = %bb.ar
  unreachable

.body48.i:                                        ; preds = %bb.bj, %bb.bb, %bb.av
  %.pn.i14 = phi { ptr, i32 } [ %i.gu, %bb.bb ], [ %i.fp, %bb.av ], [ %lpad.phi.i24, %bb.bj ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %.body48.i
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i15 unwind label %bb.au

bb.at:                                            ; preds = %.body48.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.bz

bb.au:                                            ; preds = %bb.as
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.av:                                            ; preds = %bb.bc, %bb.ba, %bb.az, %bb.ar
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj8_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.aq
  %i.fq = lshr i16 %2, 1
  %.sroa.05.0.i18 = sub nuw i16 %2, %i.fq
  %i.fr = zext i16 %.sroa.05.0.i18 to i64         ; 5 uses
  %i.fs = icmp eq i16 %2, 0
  %i.ft = icmp eq i16 %3, 0
  %or.cond.i19 = or i1 %i.fs, %i.ft
  br i1 %or.cond.i19, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj8_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh1_Kj8_EB4_.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.az:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj8_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.fw = zext i16 %2 to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2                ; 5 uses
  %i.fy = call i64 @llvm.usub.sat.i64(i64 %i.fr, i64 1)
  %i.fz = shl nuw nsw i64 %i.fy, 3                ; 4 uses
  %i.ga = sub nsw i64 %i.fx, %i.fz                ; 4 uses
  %i.gb = shl nuw nsw i64 %i.fr, 2                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !405
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !413
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef range(i64 0, 32769) %i.fr, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i unwind label %bb.av

.noexc45.i:                                       ; preds = %bb.az
  %i.gc = load i64, ptr %i.r, align 8, !range !382, !noalias !413, !noundef !26
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !range !383, !noalias !413, !noundef !26 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.gd, label %bb.ba, label %.lr.ph140.i, !prof !4

bb.ba:                                            ; preds = %.noexc45.i
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !413
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.gf, i64 %i.gh) #15
          to label %.noexc46.i unwind label %bb.av

.noexc46.i:                                       ; preds = %bb.ba
  unreachable

.lr.ph140.i:                                      ; preds = %.noexc45.i
  %i.gi = load ptr, ptr %i.gg, align 8, !noalias !413, !nonnull !26, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !413
  store i64 %i.gf, ptr %i.w, align 8, !alias.scope !410, !noalias !405
  %i.gj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  store ptr %i.gi, ptr %i.gj, align 8, !alias.scope !410, !noalias !405
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  store i64 %i.fr, ptr %i.gk, align 8, !alias.scope !410, !noalias !405
  %i.gl = zext i16 %3 to i64                      ; 2 uses
  %.sroa.4.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.7.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.not.i.i20 = icmp samesign ugt i64 %i.fz, %i.fx
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gs = add nsw i64 %i.fr, -1                   ; 3 uses
  %i.gt = icmp ult i64 %i.ga, 9
  br label %bb.be

._crit_edge.i32:                                  ; preds = %bb.bv
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i32
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body48.i unwind label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i32
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i33 unwind label %bb.av

bb.bd:                                            ; preds = %bb.bb
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.be:                                            ; preds = %bb.bv, %.lr.ph140.i
  %.sroa.011.0139.i = phi i64 [ 0, %.lr.ph140.i ], [ %i.gw, %bb.bv ] ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.011.0139.i, 1    ; 2 uses
  %i.gx = xor i64 %.sroa.011.0139.i, -1
  %i.gy = add nsw i64 %i.gx, %i.gl                ; 2 uses
  %i.gz = mul nsw i64 %i.gy, %i.gb                ; 4 uses
  %i.ha = icmp ugt i64 %i.gz, %1
  br i1 %i.ha, label %.invoke.i29, label %bb.bh, !prof !4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i33: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !405
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh1_Kj8_EB4_.exit unwind label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i33
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.hd = sub nuw nsw i64 %1, %i.gz               ; 2 uses
  %.not35.i21 = icmp samesign ugt i64 %i.gb, %i.hd
  br i1 %.not35.i21, label %.invoke.i29, label %bb.bl, !prof !77

.invoke.i29:                                      ; preds = %bb.bw, %bb.bo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25, %bb.bh, %bb.be
  %i.he = phi i64 [ 0, %bb.bw ], [ %i.gz, %bb.be ], [ 0, %bb.bo ], [ %i.hz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25 ], [ 0, %bb.bh ]
  %i.hf = phi i64 [ %i.ga, %bb.bw ], [ %1, %bb.be ], [ %i.fx, %bb.bo ], [ %1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25 ], [ %i.gb, %bb.bh ]
  %i.hg = phi i64 [ 8, %bb.bw ], [ %1, %bb.be ], [ %i.ib, %bb.bo ], [ %1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25 ], [ %i.hd, %bb.bh ]
  %i.hh = phi ptr [ @5, %bb.bw ], [ @11, %bb.be ], [ @7, %bb.bo ], [ @8, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25 ], [ @10, %bb.bh ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.he, i64 noundef %i.hf, i64 noundef %i.hg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hh) #15
          to label %.cont.i30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27

.cont.i30:                                        ; preds = %.invoke.i29
  unreachable

.loopexit.i34:                                    ; preds = %.lr.ph138.i
  %lpad.loopexit.i35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i23

.loopexit.split-lp.loopexit.i40:                  ; preds = %.lr.ph.i39
  %lpad.loopexit93.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i23

.loopexit.split-lp.loopexit.split-lp.loopexit.i22: ; preds = %bb.bx, %bb.br, %bb.bl
  %lpad.loopexit96.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i23

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27: ; preds = %.invoke253.i, %bb.bu, %bb.bq, %.invoke.i29
  %lpad.loopexit.split-lp.i28 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i23

.loopexit.split-lp.i23:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27, %.loopexit.split-lp.loopexit.split-lp.loopexit.i22, %.loopexit.split-lp.loopexit.i40, %.loopexit.i34
  %lpad.phi.i24 = phi { ptr, i32 } [ %lpad.loopexit.i35, %.loopexit.i34 ], [ %lpad.loopexit93.i, %.loopexit.split-lp.loopexit.i40 ], [ %lpad.loopexit96.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i22 ], [ %lpad.loopexit.split-lp.i28, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27 ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp.i23
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i15 unwind label %bb.bk

bb.bj:                                            ; preds = %.loopexit.split-lp.i23
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body48.i unwind label %bb.bz

bb.bk:                                            ; preds = %bb.bi
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bl:                                            ; preds = %bb.bh
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gz ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.gb
  %i.hm = load ptr, ptr %i.gj, align 8, !noalias !405, !nonnull !26, !noundef !26 ; 2 uses
  %i.hn = load i64, ptr %i.gk, align 8, !noalias !405, !noundef !26
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !414
  store ptr %i.hk, ptr %i.q, align 8, !noalias !418
  store i64 %i.gb, ptr %.sroa.4.0..sroa_idx66.i, align 8, !noalias !418
  store ptr %i.hl, ptr %.sroa.5.0..sroa_idx67.i, align 8, !noalias !418
  store i64 0, ptr %.sroa.6.0..sroa_idx68.i, align 8, !noalias !418
  store i64 4, ptr %.sroa.7.0..sroa_idx69.i, align 8, !noalias !418
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.q, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.ho)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i22

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false), !noalias !405
  %i.hp = load i64, ptr %i.gm, align 8, !alias.scope !419, !noalias !422, !noundef !26 ; 2 uses
  %i.hq = load i64, ptr %i.gn, align 8, !alias.scope !419, !noalias !422, !noundef !26
  %i.hr = icmp ult i64 %i.hp, %i.hq
  br i1 %i.hr, label %.lr.ph.i39, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25

.lr.ph.i39:                                       ; preds = %bb.bm, %bb.by
  %i.hs = phi i64 [ %i.ji, %bb.by ], [ %i.hp, %bb.bm ] ; 3 uses
  %i.ht = add nuw i64 %i.hs, 1
  store i64 %i.ht, ptr %i.gm, align 8, !alias.scope !419, !noalias !422
  %i.hu = invoke { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u, i64 noundef %i.hs)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i41 unwind label %.loopexit.split-lp.loopexit.i40 ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i41: ; preds = %.lr.ph.i39
  %i.hv = extractvalue { ptr, i64 } %i.hu, 0      ; 2 uses
  %.val.i.i42 = load ptr, ptr %i.go, align 8, !alias.scope !419, !noalias !422, !nonnull !26, !noundef !26
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i.i42, i64 %i.hs
  %.not36.i43 = icmp eq ptr %i.hv, null
  br i1 %.not36.i43, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25, label %bb.bn

bb.bn:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i41
  %i.hx = extractvalue { ptr, i64 } %i.hu, 1      ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, 1
  br i1 %i.hy, label %bb.by, label %.invoke253.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25: ; preds = %bb.by, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i41, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !405
  %i.hz = mul nsw i64 %i.gy, %i.fx                ; 4 uses
  %i.ia = icmp ugt i64 %i.hz, %1
  br i1 %i.ia, label %.invoke.i29, label %bb.bo, !prof !4

bb.bo:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25
  %i.ib = sub nuw nsw i64 %1, %i.hz               ; 2 uses
  %.not37.i = icmp samesign ugt i64 %i.fx, %i.ib
  br i1 %.not37.i, label %.invoke.i29, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not.i.i20, label %bb.bq, label %bb.br, !prof !4

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27

.noexc59.i:                                       ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %i.hz ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.fz ; 2 uses
  %i.ie = load ptr, ptr %i.gj, align 8, !noalias !405, !nonnull !26, !noundef !26 ; 2 uses
  %i.if = load i64, ptr %i.gk, align 8, !noalias !405, !noundef !26
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !424
  store ptr %i.id, ptr %i.p, align 8, !noalias !428
  store i64 0, ptr %.sroa.477.0..sroa_idx.i, align 8, !noalias !428
  store ptr %i.ic, ptr %.sroa.578.0..sroa_idx.i, align 8, !noalias !428
  store i64 %i.fz, ptr %.sroa.679.0..sroa_idx.i, align 8, !noalias !428
  store i64 8, ptr %.sroa.780.0..sroa_idx.i, align 8, !noalias !428
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.p, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.ig)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i22

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !noalias !405
  %i.ih = load i64, ptr %i.gp, align 8, !alias.scope !429, !noalias !432, !noundef !26 ; 2 uses
  %i.ii = load i64, ptr %i.gq, align 8, !alias.scope !429, !noalias !432, !noundef !26
  %i.ij = icmp ult i64 %i.ih, %i.ii
  br i1 %i.ij, label %.lr.ph138.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26

.lr.ph138.i:                                      ; preds = %bb.bs, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.ik = phi i64 [ %i.jd, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i ], [ %i.ih, %bb.bs ] ; 3 uses
  %i.il = add nuw i64 %i.ik, 1
  store i64 %i.il, ptr %i.gp, align 8, !alias.scope !429, !noalias !432
  %i.im = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s, i64 noundef %i.ik)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i36 unwind label %.loopexit.i34 ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i36: ; preds = %.lr.ph138.i
  %i.in = extractvalue { ptr, i64 } %i.im, 0      ; 2 uses
  %.not38.i = icmp eq ptr %i.in, null
  br i1 %.not38.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26, label %bb.bt

bb.bt:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i36
  %i.io = extractvalue { ptr, i64 } %i.im, 1
  %.not.i37 = icmp eq i64 %i.io, 8
  br i1 %.not.i37, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, label %bb.bu, !prof !206

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
          to label %.noexc.i38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27

.noexc.i38:                                       ; preds = %bb.bu
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i36, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !405
  %i.ip = load i64, ptr %i.gk, align 8, !noalias !405, !noundef !26 ; 2 uses
  %i.iq = icmp ult i64 %i.gs, %i.ip
  br i1 %i.iq, label %bb.bw, label %.invoke253.i

bb.bv:                                            ; preds = %bb.bx
  %exitcond.not.i31 = icmp eq i64 %i.gw, %i.gl
  br i1 %exitcond.not.i31, label %._crit_edge.i32, label %bb.be

.invoke253.i:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26, %bb.bn
  %i.ir = phi i64 [ 1, %bb.bn ], [ %i.gs, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26 ]
  %i.is = phi i64 [ %i.hx, %bb.bn ], [ %i.ip, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26 ]
  %i.it = phi ptr [ @9, %bb.bn ], [ @3, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26 ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.it) #15
          to label %.cont254.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i27

.cont254.i:                                       ; preds = %.invoke253.i
  unreachable

bb.bw:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26
  br i1 %i.gt, label %bb.bx, label %.invoke.i29, !prof !404

bb.bx:                                            ; preds = %bb.bw
  %i.iu = load ptr, ptr %i.gj, align 8, !noalias !405, !nonnull !26, !noundef !26
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.gs
  %i.iw = load i8, ptr %i.iv, align 1, !noundef !26
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ix
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.id, i64 noundef %i.ga, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iy, i64 noundef %i.ga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i22

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.bt
  %.val.i62.i = load ptr, ptr %i.gr, align 8, !alias.scope !429, !noalias !432, !nonnull !26, !noundef !26
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i62.i, i64 %i.ik
  %i.ja = load i8, ptr %i.iz, align 1, !noundef !26
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.jb
  %.sroa.09.0.copyload.i = load i64, ptr %i.jc, align 1
  store i64 %.sroa.09.0.copyload.i, ptr %i.in, align 1
  %i.jd = load i64, ptr %i.gp, align 8, !alias.scope !429, !noalias !432, !noundef !26 ; 2 uses
  %i.je = load i64, ptr %i.gq, align 8, !alias.scope !429, !noalias !432, !noundef !26
  %i.jf = icmp ult i64 %i.jd, %i.je
  br i1 %i.jf, label %.lr.ph138.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i26

bb.by:                                            ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !noundef !26
  store i8 %i.jh, ptr %i.hw, align 1
  %i.ji = load i64, ptr %i.gm, align 8, !alias.scope !419, !noalias !422, !noundef !26 ; 2 uses
  %i.jj = load i64, ptr %i.gn, align 8, !alias.scope !419, !noalias !422, !noundef !26
  %i.jk = icmp ult i64 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph.i39, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i25

bb.bz:                                            ; preds = %bb.bj, %bb.at
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i15

.body.i15:                                        ; preds = %bb.bz, %bb.bi, %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh1_Kj8_EB4_.exit: ; preds = %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i33
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.dk

bb.ca:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %i.au, ptr %i.o, align 1, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !434
  store i8 2, ptr %i.n, align 1, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !434
  store i8 3, ptr %i.m, align 1, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !434
  store i64 4, ptr %i.l, align 8, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !434
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i16 0, ptr %i.jm, align 8, !noalias !434
  %i.jn = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  store i16 256, ptr %i.jn, align 2, !noalias !434
  store ptr %i.l, ptr %i.j, align 8, !noalias !434
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i44, align 8, !noalias !434
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i45, align 8, !noalias !434
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx.i46, align 8, !noalias !434
  %.sroa.7.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %5, ptr %.sroa.7.0..sroa_idx.i47, align 8, !noalias !434
  %.sroa.8.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %6, ptr %.sroa.8.0..sroa_idx.i48, align 8, !noalias !434
  call void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecAhj10_EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBW_E0EE9from_iterB2M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.j), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !434
  %i.jo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !434, !noundef !26
  %.not90.i49 = icmp eq i64 %i.jp, 256
  %i.jq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !434, !nonnull !26 ; 2 uses
  br i1 %.not90.i49, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj10_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, label %bb.cb, !prof !206

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
          to label %.noexc39.i55 unwind label %bb.cf

.noexc39.i55:                                     ; preds = %bb.cb
  unreachable

.body46.i50:                                      ; preds = %bb.ct, %bb.cl, %bb.cf
  %.pn.i51 = phi { ptr, i32 } [ %i.lb, %bb.cl ], [ %i.ju, %bb.cf ], [ %lpad.phi.i75, %bb.ct ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %.body46.i50
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i52 unwind label %bb.ce

bb.cd:                                            ; preds = %.body46.i50
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.dj

bb.ce:                                            ; preds = %bb.cc
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cf:                                            ; preds = %bb.cm, %bb.ck, %bb.cj, %bb.cb
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i50

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj10_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ca
  %i.jv = lshr i16 %2, 2
  %i.jw = and i16 %2, 3
  %.not.i56 = icmp ne i16 %i.jw, 0
  %i.jx = zext i1 %.not.i56 to i16
  %.sroa.05.0.i57 = add nuw nsw i16 %i.jv, %i.jx
  %i.jy = zext nneg i16 %.sroa.05.0.i57 to i64    ; 5 uses
  %i.jz = icmp eq i16 %2, 0
  %i.ka = icmp eq i16 %3, 0
  %or.cond.i58 = or i1 %i.jz, %i.ka
  br i1 %or.cond.i58, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj10_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_Kj10_EB4_.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cj:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultRAAhj10_j100_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.kd = zext i16 %2 to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2                ; 5 uses
  %i.kf = call i64 @llvm.usub.sat.i64(i64 %i.jy, i64 1)
  %i.kg = shl nuw nsw i64 %i.kf, 4                ; 4 uses
  %i.kh = sub nsw i64 %i.ke, %i.kg                ; 4 uses
  %i.ki = shl nuw nsw i64 %i.jy, 2                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !434
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !442
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 32769) %i.jy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i59 unwind label %bb.cf

.noexc43.i59:                                     ; preds = %bb.cj
  %i.kj = load i64, ptr %i.d, align 8, !range !382, !noalias !442, !noundef !26
  %i.kk = trunc nuw i64 %i.kj to i1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !range !383, !noalias !442, !noundef !26 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.kk, label %bb.ck, label %.lr.ph139.i60, !prof !4

bb.ck:                                            ; preds = %.noexc43.i59
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !442
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.km, i64 %i.ko) #15
          to label %.noexc44.i103 unwind label %bb.cf

.noexc44.i103:                                    ; preds = %bb.ck
  unreachable

.lr.ph139.i60:                                    ; preds = %.noexc43.i59
  %i.kp = load ptr, ptr %i.kn, align 8, !noalias !442, !nonnull !26, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !442
  store i64 %i.km, ptr %i.i, align 8, !alias.scope !439, !noalias !434
  %i.kq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %i.kp, ptr %i.kq, align 8, !alias.scope !439, !noalias !434
  %i.kr = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 %i.jy, ptr %i.kr, align 8, !alias.scope !439, !noalias !434
  %i.ks = zext i16 %3 to i64                      ; 2 uses
  %.sroa.4.0..sroa_idx64.i61 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx65.i62 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx66.i63 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx67.i64 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.not.i.i65 = icmp samesign ugt i64 %i.kg, %i.ke
  %.sroa.475.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.576.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.677.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.778.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.kz = add nsw i64 %i.jy, -1                   ; 3 uses
  %i.la = icmp ult i64 %i.kh, 17
  br label %bb.co

._crit_edge.i86:                                  ; preds = %bb.df
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.i86
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body46.i50 unwind label %bb.cn

bb.cm:                                            ; preds = %._crit_edge.i86
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i87 unwind label %bb.cf

bb.cn:                                            ; preds = %bb.cl
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.co:                                            ; preds = %bb.df, %.lr.ph139.i60
  %.sroa.09.0138.i70 = phi i64 [ 0, %.lr.ph139.i60 ], [ %i.ld, %bb.df ] ; 2 uses
  %i.ld = add nuw nsw i64 %.sroa.09.0138.i70, 1   ; 2 uses
  %i.le = xor i64 %.sroa.09.0138.i70, -1
  %i.lf = add nsw i64 %i.le, %i.ks                ; 2 uses
  %i.lg = mul nsw i64 %i.lf, %i.ki                ; 4 uses
  %i.lh = icmp ugt i64 %i.lg, %1
  br i1 %i.lh, label %.invoke.i83, label %bb.cr, !prof !4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i87: ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !434
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_Kj10_EB4_.exit unwind label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i87
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cr:                                            ; preds = %bb.co
  %i.lk = sub nuw nsw i64 %1, %i.lg               ; 2 uses
  %.not33.i71 = icmp samesign ugt i64 %i.ki, %i.lk
  br i1 %.not33.i71, label %.invoke.i83, label %bb.cv, !prof !77

.invoke.i83:                                      ; preds = %bb.dg, %bb.cy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76, %bb.cr, %bb.co
  %i.ll = phi i64 [ 0, %bb.dg ], [ %i.lg, %bb.co ], [ 0, %bb.cy ], [ %i.mg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76 ], [ 0, %bb.cr ]
  %i.lm = phi i64 [ %i.kh, %bb.dg ], [ %1, %bb.co ], [ %i.ke, %bb.cy ], [ %1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76 ], [ %i.ki, %bb.cr ]
  %i.ln = phi i64 [ 16, %bb.dg ], [ %1, %bb.co ], [ %i.mi, %bb.cy ], [ %1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76 ], [ %i.lk, %bb.cr ]
  %i.lo = phi ptr [ @5, %bb.dg ], [ @11, %bb.co ], [ @7, %bb.cy ], [ @8, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76 ], [ @10, %bb.cr ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ll, i64 noundef %i.lm, i64 noundef %i.ln, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo) #15
          to label %.cont.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80

.cont.i84:                                        ; preds = %.invoke.i83
  unreachable

.loopexit.i89:                                    ; preds = %.lr.ph137.i88
  %lpad.loopexit.i90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.loopexit.i98:                  ; preds = %.lr.ph.i97
  %lpad.loopexit92.i99 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.loopexit.split-lp.loopexit.i72: ; preds = %bb.dh, %bb.db, %bb.cv
  %lpad.loopexit95.i73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80: ; preds = %.invoke252.i79, %bb.de, %bb.da, %.invoke.i83
  %lpad.loopexit.split-lp.i81 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.i74:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80, %.loopexit.split-lp.loopexit.split-lp.loopexit.i72, %.loopexit.split-lp.loopexit.i98, %.loopexit.i89
  %lpad.phi.i75 = phi { ptr, i32 } [ %lpad.loopexit.i90, %.loopexit.i89 ], [ %lpad.loopexit92.i99, %.loopexit.split-lp.loopexit.i98 ], [ %lpad.loopexit95.i73, %.loopexit.split-lp.loopexit.split-lp.loopexit.i72 ], [ %lpad.loopexit.split-lp.i81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80 ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp.i74
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i52 unwind label %bb.cu

bb.ct:                                            ; preds = %.loopexit.split-lp.i74
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body46.i50 unwind label %bb.dj

bb.cu:                                            ; preds = %bb.cs
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cv:                                            ; preds = %bb.cr
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lg ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ki
  %i.lt = load ptr, ptr %i.kq, align 8, !noalias !434, !nonnull !26, !noundef !26 ; 2 uses
  %i.lu = load i64, ptr %i.kr, align 8, !noalias !434, !noundef !26
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !443
  store ptr %i.lr, ptr %i.c, align 8, !noalias !447
  store i64 %i.ki, ptr %.sroa.4.0..sroa_idx64.i61, align 8, !noalias !447
  store ptr %i.ls, ptr %.sroa.5.0..sroa_idx65.i62, align 8, !noalias !447
  store i64 0, ptr %.sroa.6.0..sroa_idx66.i63, align 8, !noalias !447
  store i64 4, ptr %.sroa.7.0..sroa_idx67.i64, align 8, !noalias !447
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lv)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i72

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !434
  %i.lw = load i64, ptr %i.kt, align 8, !alias.scope !448, !noalias !451, !noundef !26 ; 2 uses
  %i.lx = load i64, ptr %i.ku, align 8, !alias.scope !448, !noalias !451, !noundef !26
  %i.ly = icmp ult i64 %i.lw, %i.lx
  br i1 %i.ly, label %.lr.ph.i97, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76

.lr.ph.i97:                                       ; preds = %bb.cw, %bb.di
  %i.lz = phi i64 [ %i.np, %bb.di ], [ %i.lw, %bb.cw ] ; 3 uses
  %i.ma = add nuw i64 %i.lz, 1
  store i64 %i.ma, ptr %i.kt, align 8, !alias.scope !448, !noalias !451
  %i.mb = invoke { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.lz)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i100 unwind label %.loopexit.split-lp.loopexit.i98 ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i100: ; preds = %.lr.ph.i97
  %i.mc = extractvalue { ptr, i64 } %i.mb, 0      ; 2 uses
  %.val.i.i101 = load ptr, ptr %i.kv, align 8, !alias.scope !448, !noalias !451, !nonnull !26, !noundef !26
  %i.md = getelementptr inbounds nuw i8, ptr %.val.i.i101, i64 %i.lz
  %.not34.i102 = icmp eq ptr %i.mc, null
  br i1 %.not34.i102, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76, label %bb.cx

bb.cx:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i100
  %i.me = extractvalue { ptr, i64 } %i.mb, 1      ; 2 uses
  %i.mf = icmp ugt i64 %i.me, 1
  br i1 %i.mf, label %bb.di, label %.invoke252.i79

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76: ; preds = %bb.di, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.i100, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !434
  %i.mg = mul nsw i64 %i.lf, %i.ke                ; 4 uses
  %i.mh = icmp ugt i64 %i.mg, %1
  br i1 %i.mh, label %.invoke.i83, label %bb.cy, !prof !4

bb.cy:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76
  %i.mi = sub nuw nsw i64 %1, %i.mg               ; 2 uses
  %.not35.i77 = icmp samesign ugt i64 %i.ke, %i.mi
  br i1 %.not35.i77, label %.invoke.i83, label %bb.cz, !prof !77

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i65, label %bb.da, label %bb.db, !prof !4

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %.noexc57.i96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80

.noexc57.i96:                                     ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 %i.mg ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.kg ; 2 uses
  %i.ml = load ptr, ptr %i.kq, align 8, !noalias !434, !nonnull !26, !noundef !26 ; 2 uses
  %i.mm = load i64, ptr %i.kr, align 8, !noalias !434, !noundef !26
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !453
  store ptr %i.mk, ptr %i.b, align 8, !noalias !457
  store i64 0, ptr %.sroa.475.0..sroa_idx.i66, align 8, !noalias !457
  store ptr %i.mj, ptr %.sroa.576.0..sroa_idx.i67, align 8, !noalias !457
  store i64 %i.kg, ptr %.sroa.677.0..sroa_idx.i68, align 8, !noalias !457
  store i64 16, ptr %.sroa.778.0..sroa_idx.i69, align 8, !noalias !457
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %i.ml, ptr noundef nonnull %i.mn)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i72

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !434
  %i.mo = load i64, ptr %i.kw, align 8, !alias.scope !458, !noalias !461, !noundef !26 ; 2 uses
  %i.mp = load i64, ptr %i.kx, align 8, !alias.scope !458, !noalias !461, !noundef !26
  %i.mq = icmp ult i64 %i.mo, %i.mp
  br i1 %i.mq, label %.lr.ph137.i88, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78

.lr.ph137.i88:                                    ; preds = %bb.dc, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.mr = phi i64 [ %i.nk, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i ], [ %i.mo, %bb.dc ] ; 3 uses
  %i.ms = add nuw i64 %i.mr, 1
  store i64 %i.ms, ptr %i.kw, align 8, !alias.scope !458, !noalias !461
  %i.mt = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.mr)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i91 unwind label %.loopexit.i89 ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i91: ; preds = %.lr.ph137.i88
  %i.mu = extractvalue { ptr, i64 } %i.mt, 0      ; 2 uses
  %.not36.i92 = icmp eq ptr %i.mu, null
  br i1 %.not36.i92, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78, label %bb.dd

bb.dd:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i91
  %i.mv = extractvalue { ptr, i64 } %i.mt, 1
  %.not91.i93 = icmp eq i64 %i.mv, 16
  br i1 %.not91.i93, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, label %bb.de, !prof !206

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
          to label %.noexc.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80

.noexc.i94:                                       ; preds = %bb.de
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i91, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !434
  %i.mw = load i64, ptr %i.kr, align 8, !noalias !434, !noundef !26 ; 2 uses
  %i.mx = icmp ult i64 %i.kz, %i.mw
  br i1 %i.mx, label %bb.dg, label %.invoke252.i79

bb.df:                                            ; preds = %bb.dh
  %exitcond.not.i85 = icmp eq i64 %i.ld, %i.ks
  br i1 %exitcond.not.i85, label %._crit_edge.i86, label %bb.co

.invoke252.i79:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78, %bb.cx
  %i.my = phi i64 [ 1, %bb.cx ], [ %i.kz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78 ]
  %i.mz = phi i64 [ %i.me, %bb.cx ], [ %i.mw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78 ]
  %i.na = phi ptr [ @9, %bb.cx ], [ @3, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78 ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.my, i64 noundef %i.mz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.na) #15
          to label %.cont253.i82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i80

.cont253.i82:                                     ; preds = %.invoke252.i79
  unreachable

bb.dg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78
  br i1 %i.la, label %bb.dh, label %.invoke.i83, !prof !404

bb.dh:                                            ; preds = %bb.dg
  %i.nb = load ptr, ptr %i.kq, align 8, !noalias !434, !nonnull !26, !noundef !26
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.kz
  %i.nd = load i8, ptr %i.nc, align 1, !noundef !26
  %i.ne = zext i8 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.ne
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.mk, i64 noundef %i.kh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nf, i64 noundef %i.kh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i72

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultQAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.dd
  %.val.i60.i95 = load ptr, ptr %i.ky, align 8, !alias.scope !458, !noalias !461, !nonnull !26, !noundef !26
  %i.ng = getelementptr inbounds nuw i8, ptr %.val.i60.i95, i64 %i.mr
  %i.nh = load i8, ptr %i.ng, align 1, !noundef !26
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.ni
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mu, ptr noundef nonnull align 1 dereferenceable(16) %i.nj, i64 16, i1 false)
  %i.nk = load i64, ptr %i.kw, align 8, !alias.scope !458, !noalias !461, !noundef !26 ; 2 uses
  %i.nl = load i64, ptr %i.kx, align 8, !alias.scope !458, !noalias !461, !noundef !26
  %i.nm = icmp ult i64 %i.nk, %i.nl
  br i1 %i.nm, label %.lr.ph137.i88, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i78

bb.di:                                            ; preds = %bb.cx
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !noundef !26
  store i8 %i.no, ptr %i.md, align 1
  %i.np = load i64, ptr %i.kt, align 8, !alias.scope !448, !noalias !451, !noundef !26 ; 2 uses
  %i.nq = load i64, ptr %i.ku, align 8, !alias.scope !448, !noalias !451, !noundef !26
  %i.nr = icmp ult i64 %i.np, %i.nq
  br i1 %i.nr, label %.lr.ph.i97, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1w_E4nextCsksn9slvsHfS_10image_webp.exit.thread.i76

bb.dj:                                            ; preds = %bb.ct, %bb.cd
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i52

.body.i52:                                        ; preds = %bb.dj, %bb.cs, %bb.cc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_Kj10_EB4_.exit: ; preds = %bb.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsksn9slvsHfS_10image_webp.exit.i87
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_Kj20_EB4_.exit, %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_Kj10_EB4_.exit, %_RINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh1_Kj8_EB4_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp.exit
  ret void

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp:                               ; preds = %bb.e, %bb.dn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #16
          to label %common.resume unwind label %bb.ds

bb.dm:                                            ; preds = %bb.e
  %i.nt = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.nu = load i64, ptr %i.nt, align 8, !noundef !26
  %.not111 = icmp eq i64 %i.nu, 256
  %i.nv = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !nonnull !26
  br i1 %.not111, label %bb.do, label %bb.dn, !prof !206

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.nx = and i64 %1, 9223372036854775804         ; 2 uses
  %.not8231 = icmp eq i64 %i.nx, 0
  br i1 %.not8231, label %._crit_edge, label %.lr.ph

bb.dp:                                            ; preds = %.lr.ph
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.3.0233, i64 4
  %i.nz = add nsw i64 %.sroa.5.0232, -4           ; 2 uses
  %.not8 = icmp eq i64 %i.nz, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.dp, %bb.do
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp.exit unwind label %bb.dq

bb.dq:                                            ; preds = %._crit_edge
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp.exit: ; preds = %._crit_edge
end_hunk_0
