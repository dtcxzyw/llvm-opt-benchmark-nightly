Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3UpdateContact:bb.a

.lr.ph469.us.preheader:                           ; preds = %.lr.ph434.split.split.us.us
  %.sroa.012.0.copyload.us.us = load <2 x float>, ptr %i.mz, align 4
  %.sroa.213.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %.sroa.213.0.copyload.us.us = load float, ptr %.sroa.213.0..sroa_idx.us.us, align 4
  %i.np = fsub <2 x float> %.sroa.012.0.copyload.us.us, %i.ll
  %i.nq = fsub float %.sroa.213.0.copyload.us.us, %i.ln
  store <2 x float> %i.np, ptr %i.mz, align 4
  store float %i.nq, ptr %.sroa.213.0..sroa_idx.us.us, align 4, !tbaa !131
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mz, i64 12 ; 2 uses
  %.sroa.03.0.copyload.us.us = load <2 x float>, ptr %i.nr, align 4
  %.sroa.24.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.mz, i64 20 ; 2 uses
  %.sroa.24.0.copyload.us.us = load float, ptr %.sroa.24.0..sroa_idx.us.us, align 4
  %i.ns = fsub <2 x float> %.sroa.03.0.copyload.us.us, %i.mp
  %i.nt = fsub float %.sroa.24.0.copyload.us.us, %i.mr
  store <2 x float> %i.ns, ptr %i.nr, align 4
  store float %i.nt, ptr %.sroa.24.0..sroa_idx.us.us, align 4, !tbaa !131
  %.not660 = icmp eq i32 %i.nn, 1
  br i1 %.not660, label %.split438.us476, label %.lr.ph469.us.1

.lr.ph469.us.1:                                   ; preds = %.lr.ph469.us.preheader
  %.not181.us.us.1 = icmp ugt ptr %i.mz, inttoptr (i64 -57 to ptr)
  br i1 %.not181.us.us.1, label %.split442.us, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %.lr.ph469.us.1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mz, i64 56 ; 2 uses
  %.sroa.012.0.copyload.us.us.1 = load <2 x float>, ptr %i.nu, align 4
  %.sroa.213.0..sroa_idx.us.us.1 = getelementptr inbounds nuw i8, ptr %i.mz, i64 64 ; 2 uses
  %.sroa.213.0.copyload.us.us.1 = load float, ptr %.sroa.213.0..sroa_idx.us.us.1, align 4
  %i.nv = fsub <2 x float> %.sroa.012.0.copyload.us.us.1, %i.ll
  %i.nw = fsub float %.sroa.213.0.copyload.us.us.1, %i.ln
  store <2 x float> %i.nv, ptr %i.nu, align 4
  store float %i.nw, ptr %.sroa.213.0..sroa_idx.us.us.1, align 4, !tbaa !131
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mz, i64 68 ; 2 uses
  %.sroa.03.0.copyload.us.us.1 = load <2 x float>, ptr %i.nx, align 4
  %.sroa.24.0..sroa_idx.us.us.1 = getelementptr inbounds nuw i8, ptr %i.mz, i64 76 ; 2 uses
  %.sroa.24.0.copyload.us.us.1 = load float, ptr %.sroa.24.0..sroa_idx.us.us.1, align 4
  %i.ny = fsub <2 x float> %.sroa.03.0.copyload.us.us.1, %i.mp
  %i.nz = fsub float %.sroa.24.0.copyload.us.us.1, %i.mr
  store <2 x float> %i.ny, ptr %i.nx, align 4
  store float %i.nz, ptr %.sroa.24.0..sroa_idx.us.us.1, align 4, !tbaa !131
  %i.oa = icmp samesign ugt i32 %i.nn, 2
  br i1 %i.oa, label %.lr.ph469.us.2, label %.split438.us476

.lr.ph469.us.2:                                   ; preds = %bb.aw
  %.not181.us.us.2 = icmp ugt ptr %i.mz, inttoptr (i64 -113 to ptr)
  br i1 %.not181.us.us.2, label %.split442.us, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %.lr.ph469.us.2
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mz, i64 112 ; 2 uses
  %.sroa.012.0.copyload.us.us.2 = load <2 x float>, ptr %i.ob, align 4
  %.sroa.213.0..sroa_idx.us.us.2 = getelementptr inbounds nuw i8, ptr %i.mz, i64 120 ; 2 uses
  %.sroa.213.0.copyload.us.us.2 = load float, ptr %.sroa.213.0..sroa_idx.us.us.2, align 4
  %i.oc = fsub <2 x float> %.sroa.012.0.copyload.us.us.2, %i.ll
  %i.od = fsub float %.sroa.213.0.copyload.us.us.2, %i.ln
  store <2 x float> %i.oc, ptr %i.ob, align 4
  store float %i.od, ptr %.sroa.213.0..sroa_idx.us.us.2, align 4, !tbaa !131
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mz, i64 124 ; 2 uses
  %.sroa.03.0.copyload.us.us.2 = load <2 x float>, ptr %i.oe, align 4
  %.sroa.24.0..sroa_idx.us.us.2 = getelementptr inbounds nuw i8, ptr %i.mz, i64 132 ; 2 uses
  %.sroa.24.0.copyload.us.us.2 = load float, ptr %.sroa.24.0..sroa_idx.us.us.2, align 4
  %i.of = fsub <2 x float> %.sroa.03.0.copyload.us.us.2, %i.mp
  %i.og = fsub float %.sroa.24.0.copyload.us.us.2, %i.mr
  store <2 x float> %i.of, ptr %i.oe, align 4
  store float %i.og, ptr %.sroa.24.0..sroa_idx.us.us.2, align 4, !tbaa !131
  %.not661 = icmp eq i32 %i.nn, 3
  br i1 %.not661, label %.split438.us476, label %.lr.ph469.us.3

.lr.ph469.us.3:                                   ; preds = %bb.ax
  %.not181.us.us.3 = icmp ugt ptr %i.mz, inttoptr (i64 -169 to ptr)
  br i1 %.not181.us.us.3, label %.split442.us, label %bb.ay, !prof !10, !nosanitize !9

bb.ay:                                            ; preds = %.lr.ph469.us.3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mz, i64 168 ; 2 uses
  %.sroa.012.0.copyload.us.us.3 = load <2 x float>, ptr %i.oh, align 4
  %.sroa.213.0..sroa_idx.us.us.3 = getelementptr inbounds nuw i8, ptr %i.mz, i64 176 ; 2 uses
  %.sroa.213.0.copyload.us.us.3 = load float, ptr %.sroa.213.0..sroa_idx.us.us.3, align 4
  %i.oi = fsub <2 x float> %.sroa.012.0.copyload.us.us.3, %i.ll
  %i.oj = fsub float %.sroa.213.0.copyload.us.us.3, %i.ln
  store <2 x float> %i.oi, ptr %i.oh, align 4
  store float %i.oj, ptr %.sroa.213.0..sroa_idx.us.us.3, align 4, !tbaa !131
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mz, i64 180 ; 2 uses
  %.sroa.03.0.copyload.us.us.3 = load <2 x float>, ptr %i.ok, align 4
  %.sroa.24.0..sroa_idx.us.us.3 = getelementptr inbounds nuw i8, ptr %i.mz, i64 188 ; 2 uses
  %.sroa.24.0.copyload.us.us.3 = load float, ptr %.sroa.24.0..sroa_idx.us.us.3, align 4
  %i.ol = fsub <2 x float> %.sroa.03.0.copyload.us.us.3, %i.mp
  %i.om = fsub float %.sroa.24.0.copyload.us.us.3, %i.mr
  store <2 x float> %i.ol, ptr %i.ok, align 4
  store float %i.om, ptr %.sroa.24.0..sroa_idx.us.us.3, align 4, !tbaa !131
  %i.on = icmp samesign ugt i32 %i.nn, 4
  br i1 %i.on, label %.lr.ph469.us.4, label %.split438.us476

.lr.ph469.us.4:                                   ; preds = %bb.ay
  %.not181.us.us.4 = icmp ugt ptr %i.mz, inttoptr (i64 -225 to ptr)
  br i1 %.not181.us.us.4, label %.split442.us, label %bb.az, !prof !10, !nosanitize !9

bb.az:                                            ; preds = %.lr.ph469.us.4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mz, i64 224 ; 2 uses
  %.sroa.012.0.copyload.us.us.4 = load <2 x float>, ptr %i.oo, align 4
  %.sroa.213.0..sroa_idx.us.us.4 = getelementptr inbounds nuw i8, ptr %i.mz, i64 232 ; 2 uses
  %.sroa.213.0.copyload.us.us.4 = load float, ptr %.sroa.213.0..sroa_idx.us.us.4, align 4
  %i.op = fsub <2 x float> %.sroa.012.0.copyload.us.us.4, %i.ll
  %i.oq = fsub float %.sroa.213.0.copyload.us.us.4, %i.ln
  store <2 x float> %i.op, ptr %i.oo, align 4
  store float %i.oq, ptr %.sroa.213.0..sroa_idx.us.us.4, align 4, !tbaa !131
  %i.or = getelementptr inbounds nuw i8, ptr %i.mz, i64 236 ; 2 uses
  %.sroa.03.0.copyload.us.us.4 = load <2 x float>, ptr %i.or, align 4
  %.sroa.24.0..sroa_idx.us.us.4 = getelementptr inbounds nuw i8, ptr %i.mz, i64 244 ; 2 uses
  %.sroa.24.0.copyload.us.us.4 = load float, ptr %.sroa.24.0..sroa_idx.us.us.4, align 4
  %i.os = fsub <2 x float> %.sroa.03.0.copyload.us.us.4, %i.mp
  %i.ot = fsub float %.sroa.24.0.copyload.us.us.4, %i.mr
  store <2 x float> %i.os, ptr %i.or, align 4
  store float %i.ot, ptr %.sroa.24.0..sroa_idx.us.us.4, align 4, !tbaa !131
  %.not662 = icmp eq i32 %i.nn, 5
  br i1 %.not662, label %.split438.us476, label %.split440.us

.split438.us476:                                  ; preds = %.lr.ph434.split.split.us.us, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.lr.ph469.us.preheader
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617763, 1 ; 2 uses
  %i.ou = load i32, ptr %i.mu, align 8, !tbaa !87
  %i.ov = sext i32 %i.ou to i64
  %i.ow = icmp slt i64 %indvars.iv.next618, %i.ov
  br i1 %i.ow, label %.lr.ph, label %.split478.us

._crit_edge473:                                   ; preds = %._crit_edge624
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %.pre-phi626) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split480.us:                                     ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @127, i64 %i.nb, i64 %i.nc) #8, !nosanitize !9
  unreachable, !nosanitize !9

.preheader._crit_edge:                            ; preds = %.preheader.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @128, i64 %i.ni) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split440.us:                                     ; preds = %bb.az
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @129, i64 5) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split442.us:                                     ; preds = %.lr.ph469.us.4, %.lr.ph469.us.3, %.lr.ph469.us.2, %.lr.ph469.us.1
  %.sink738 = phi i64 [ 168, %.lr.ph469.us.3 ], [ 112, %.lr.ph469.us.2 ], [ 56, %.lr.ph469.us.1 ], [ 224, %.lr.ph469.us.4 ]
  %i.ox = add i64 %.sink738, %i.ni, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @130, i64 %i.ni, i64 %i.ox) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split478.us:                                     ; preds = %.split438.us476, %.lr.ph472
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !113
  %i.pa = or i32 %i.oz, 65536
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !113
  br label %bb.bc

._crit_edge623:                                   ; preds = %bb.av, %.split298, %.split
  %.pre-phi634 = phi i1 [ true, %.split ], [ true, %.split298 ], [ %i.kj, %bb.av ]
  %.pre-phi632 = phi i64 [ %i.i, %.split ], [ %i.kb, %.split298 ], [ %.pre625, %bb.av ]
  %i.pb = icmp ne ptr %2, null, !nosanitize !9
  %i.pc = and i1 %i.pb, %.pre-phi634, !nosanitize !9
  br i1 %i.pc, label %bb.bb, label %bb.ba, !prof !11, !nosanitize !9

bb.ba:                                            ; preds = %._crit_edge623
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @131, i64 %.pre-phi632) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %._crit_edge623
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !113
  %i.pf = and i32 %i.pe, -65537
  store i32 %i.pf, ptr %i.pd, align 4, !tbaa !113
  br label %bb.bc

bb.bc:                                            ; preds = %.split478.us, %bb.bb
  %.1.in295 = phi i1 [ true, %.split478.us ], [ false, %bb.bb ]
  ret i1 %.1.in295
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_nonnull_arg_abort(ptr) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %4, ptr noundef %5, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%struct.b3Arena) align 8 captures(none) %8) unnamed_addr #6 !func_sanitize !181 {
bb.a:
  %9 = alloca %struct.b3BlockAllocator, align 8   ; 4 uses
  %10 = alloca %struct.b3LocalManifold, align 8   ; 14 uses
  %11 = alloca %struct.b3Transform, align 8       ; 13 uses
  %12 = alloca [4 x %struct.b3ManifoldPoint], align 16 ; 21 uses
  %13 = alloca %struct.b3Arena, align 8           ; 9 uses
  %i.a = alloca [12 x i8], align 1                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %.sroa.0189.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6191.0.copyload = load float, ptr %.sroa.6191.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.sroa.7192.0.copyload = load <2 x float>, ptr %.sroa.7192.0..sroa_idx, align 4 ; 5 uses
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %.sroa.8193.0.copyload = load <2 x float>, ptr %.sroa.8193.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 17 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 11 uses
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  br i1 %i.d, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @171, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !92
  %i.g = icmp ne ptr %5, null, !nosanitize !9
  %i.h = ptrtoint ptr %5 to i64, !nosanitize !9   ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !9
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !9
  %i.k = and i1 %i.g, %i.j, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.d, !prof !11, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @172, i64 %i.h) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = icmp ne ptr %2, null, !nosanitize !9
  %i.o = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.p = and i64 %i.o, 7, !nosanitize !9
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !9
  %i.r = and i1 %i.n, %i.q, !nosanitize !9
  br i1 %i.r, label %bb.g, label %bb.f, !prof !11, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %i.o) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !184  ; 2 uses
  %i.v = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.u, i32 15), !nosanitize !9 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1, !nosanitize !9
  br i1 %i.w, label %bb.h, label %bb.i, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @192, i64 %i.x, i64 15) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.y = extractvalue { i32, i1 } %i.v, 0, !nosanitize !9 ; 2 uses
  %i.z = and i32 %i.y, -16                        ; 3 uses
  %i.aa = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.z, i32 768), !nosanitize !9 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 0, !nosanitize !9 ; 4 uses
  %i.ac = extractvalue { i32, i1 } %i.aa, 1, !nosanitize !9
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.ad = zext nneg i32 %i.z to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @193, i64 %i.ad, i64 768) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !185
  %i.ag = icmp sgt i32 %i.ab, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull align 8 %13, i32 noundef 768) #7
  br label %b3Bump.exit.i

bb.m:                                             ; preds = %bb.k
  store i32 %i.ab, ptr %i.t, align 4, !tbaa !184
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !186 ; 3 uses
  %i.ak = icmp ne ptr %i.aj, null, !nosanitize !9
  %i.al = ptrtoint ptr %i.aj to i64, !nosanitize !9 ; 2 uses
  %i.am = and i64 %i.al, 7, !nosanitize !9
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !9
  %i.ao = and i1 %i.ak, %i.an, !nosanitize !9
  br i1 %i.ao, label %bb.o, label %bb.n, !prof !11, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @195, i64 %i.al) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !190
  %i.ar = icmp sgt i32 %i.ab, %i.aq
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ab, ptr %i.ap, align 8, !tbaa !190
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = load ptr, ptr %13, align 8, !tbaa !191  ; 3 uses
  %i.at = sext i32 %i.z to i64                    ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 3 uses
  %i.av = add i64 %i.au, %i.at, !nosanitize !9    ; 3 uses
  %i.aw = icmp ne ptr %i.as, null, !nosanitize !9
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = xor i1 %i.aw, %i.ax
  %i.az = icmp uge i64 %i.av, %i.au, !nosanitize !9
  %i.ba = icmp slt i32 %i.y, 0
  %i.bb = xor i1 %i.ba, %i.az
  %i.bc = and i1 %i.ay, %i.bb, !nosanitize !9
  br i1 %i.bc, label %bb.s, label %bb.r, !prof !11, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @196, i64 %i.au, i64 %i.av) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  br label %b3Bump.exit.i

b3Bump.exit.i:                                    ; preds = %bb.s, %bb.l
  %.0.i.i = phi ptr [ %i.ah, %bb.l ], [ %i.bd, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 7 uses
  store ptr %.0.i.i, ptr %i.be, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bg = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.4.8.vec.extract60.i.i = extractelement <2 x float> %.sroa.8.0.copyload, i64 0
  %.sroa.0.4.vec.extract8.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7192.0.copyload, i64 0
  %i.bh = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract8.i.i.i
  %shift = shufflevector <2 x float> %.sroa.7192.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %.sroa.7.0.copyload
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = fsub float %i.bh, %i.bi
  %i.bk = shufflevector <2 x float> %.sroa.8193.0.copyload, <2 x float> %.sroa.7192.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.bl = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 2, i32 2, i32 1>
  %i.bm = fmul <4 x float> %i.bk, %i.bl           ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.bp = fsub <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.br = fmul <2 x float> %.sroa.7192.0.copyload, %i.bq
  %i.bs = fadd <2 x float> %i.br, %i.bp
  %i.bt = shufflevector <2 x float> %.sroa.8193.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bt, %.sroa.7.0.copyload
  %i.bv = fsub <2 x float> %i.bs, %i.bu
  %i.bw = fmul <2 x float> %.sroa.8193.0.copyload, %i.bg ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = fadd float %i.bj, %i.bx
  %i.bz = extractelement <2 x float> %i.bw, i64 1
  %i.ca = fsub float %i.by, %i.bz
  %.sroa.231.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cb = shufflevector <2 x float> %.sroa.7192.0.copyload, <2 x float> %.sroa.8193.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cc = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = fmul <4 x float> %i.cb, %i.cc           ; 4 uses
  %shift682 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop683 = fadd <4 x float> %i.cd, %shift682
  %shift685 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop686 = fadd <4 x float> %shift685, %foldExtExtBinop683
  %shift688 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop689 = fadd <4 x float> %shift688, %foldExtExtBinop686
  %i.ce = shufflevector <4 x float> %foldExtExtBinop689, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.231.12.vec.insert.i.i = shufflevector <2 x float> %.sroa.231.8.vec.insert.i.i, <2 x float> %i.ce, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.bv, ptr %i.bf, align 4, !alias.scope !195
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store <2 x float> %.sroa.231.12.vec.insert.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 4, !alias.scope !195
  %i.cf = fsub <2 x float> %.sroa.0189.0.copyload, %.sroa.0.0.copyload ; 4 uses
  %i.cg = fsub float %.sroa.6191.0.copyload, %.sroa.6.0.copyload ; 3 uses
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1 ; 2 uses
  %i.cj = fmul <2 x float> %i.ci, %.sroa.7.0.copyload
  %i.ck = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cl = fmul <2 x float> %i.cf, %i.ck
  %i.cm = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cn = fmul <2 x float> %i.cf, %i.cm
  %i.co = insertelement <2 x float> %i.ch, float %i.cg, i64 0 ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %.sroa.7.0.copyload
  %i.cq = fsub <2 x float> %i.cj, %i.cn
  %i.cr = fsub <2 x float> %i.cl, %i.cp
  %i.cs = fmul <2 x float> %i.co, %i.bq
  %i.ct = fmul <2 x float> %i.ci, %i.bq
  %i.cu = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cv = fsub <2 x float> %i.cr, %i.ct           ; 2 uses
  %i.cw = fmul <2 x float> %i.cm, %i.cu
  %i.cx = fmul <2 x float> %i.ck, %i.cv
  %i.cy = fsub <2 x float> %i.cw, %i.cx
  %foldExtExtBinop691 = fmul <2 x float> %.sroa.7.0.copyload, %i.cv
  %foldExtExtBinop693 = fmul <2 x float> %.sroa.7.0.copyload, %i.cu
  %shift695 = shufflevector <2 x float> %foldExtExtBinop693, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop696 = fsub <2 x float> %foldExtExtBinop691, %shift695
  %i.cz = extractelement <2 x float> %foldExtExtBinop696, i64 0
  %i.da = fmul <2 x float> %i.cy, splat (float 2.000000e+00)
  %i.db = fadd <2 x float> %i.cf, %i.da
  %i.dc = fmul float %i.cz, 2.000000e+00
  %i.dd = fadd float %i.cg, %i.dc
  store <2 x float> %i.db, ptr %11, align 8, !alias.scope !195
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.dd, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !131, !alias.scope !195
  switch i32 %i.f, label %bb.x [
    i32 5, label %bb.t
    i32 0, label %bb.u
  ]

bb.t:                                             ; preds = %b3Bump.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 200
  call void @b3CollideSpheres(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #7
  br label %bb.an

bb.u:                                             ; preds = %b3Bump.exit.i
  %i.dg = icmp eq i32 %i.m, 5
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @b3CollideCapsuleAndSphere(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #7
  br label %bb.an

bb.w:                                             ; preds = %bb.u
  call void @b3CollideCapsules(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #7
  br label %bb.an

bb.x:                                             ; preds = %b3Bump.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !114 ; 3 uses
  switch i32 %i.m, label %bb.aa [
    i32 5, label %bb.y
    i32 0, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  call void @b3CollideHullAndSphere(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.dl, ptr noundef nonnull %i.dk, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.s) #7
  br label %bb.an

bb.z:                                             ; preds = %bb.x
  call void @b3CollideHullAndCapsule(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.dl, ptr noundef nonnull %i.dk, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.s) #7
  br label %bb.an

bb.aa:                                            ; preds = %bb.x
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !114
  call void @b3CollideHulls(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.dl, ptr noundef %i.dm, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.s) #7
  %i.dn = icmp ne ptr %0, null, !nosanitize !9
  %i.do = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.dp = and i64 %i.do, 7, !nosanitize !9
  %i.dq = icmp eq i64 %i.dp, 0, !nosanitize !9
  %i.dr = and i1 %i.dn, %i.dq, !nosanitize !9
  br i1 %i.dr, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @174, i64 %i.do) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !196 ; 3 uses
  %i.du = sext i32 %1 to i64                      ; 2 uses
  %i.dv = getelementptr inbounds [3848 x i8], ptr %i.dt, i64 %i.du ; 3 uses
  %i.dw = mul nsw i64 %i.du, 3848
  %i.dx = ptrtoint ptr %i.dt to i64, !nosanitize !9 ; 4 uses
  %i.dy = add i64 %i.dw, %i.dx, !nosanitize !9    ; 3 uses
  %i.dz = icmp ne ptr %i.dt, null, !nosanitize !9 ; 2 uses
  %i.ea = icmp eq i64 %i.dy, 0                    ; 2 uses
  %i.eb = xor i1 %i.dz, %i.ea
  %i.ec = icmp sgt i32 %1, -1
  %i.ed = icmp ult i64 %i.dy, %i.dx, !nosanitize !9
  %i.ee = xor i1 %i.ec, %i.ed
  %i.ef = and i1 %i.eb, %i.ee, !nosanitize !9
  br i1 %i.ef, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @175, i64 %i.dx, i64 %i.dy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.eg = ptrtoint ptr %i.dv to i64, !nosanitize !9 ; 2 uses
  %i.eh = and i64 %i.eg, 7, !nosanitize !9
  %i.ei = icmp eq i64 %i.eh, 0, !nosanitize !9
  %i.ej = and i1 %i.dz, %i.ei
  br i1 %i.ej, label %bb.ag, label %bb.af, !prof !11, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @177, i64 %i.eg) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 136 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !200 ; 2 uses
  %i.em = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.el, i32 1), !nosanitize !9 ; 2 uses
  %i.en = extractvalue { i32, i1 } %i.em, 1, !nosanitize !9
  br i1 %i.en, label %bb.ah, label %bb.ai, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.eo = zext nneg i32 %i.el to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @178, i64 %i.eo, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.ep = extractvalue { i32, i1 } %i.em, 0, !nosanitize !9
  store i32 %i.ep, ptr %i.ek, align 8, !tbaa !200
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 159
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !114 ; 2 uses
  br i1 %i.ea, label %bb.aj, label %bb.ak, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @179, i64 %i.dx, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 140 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !201 ; 2 uses
  %i.ev = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.eu, i32 %i.es), !nosanitize !9 ; 2 uses
  %i.ew = extractvalue { i32, i1 } %i.ev, 1, !nosanitize !9
  br i1 %i.ew, label %bb.al, label %bb.am, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.ex = zext i32 %i.eu to i64, !nosanitize !9
  %i.ey = zext i8 %i.er to i64
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @180, i64 %i.ex, i64 %i.ey) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.ez = extractvalue { i32, i1 } %i.ev, 0, !nosanitize !9
  store i32 %i.ez, ptr %i.et, align 4, !tbaa !201
  br label %bb.an

end_hunk_0
begin_hunk_1_@b3UpdateConvexContact:bb.a
  %i.fv = icmp ne ptr %i.fq, null, !nosanitize !9
  %i.fw = icmp eq i64 %i.fu, 0
  %i.fx = xor i1 %i.fv, %i.fw
  %i.fy = icmp uge i64 %i.fu, %i.ft, !nosanitize !9
  %i.fz = and i1 %i.fy, %i.fx, !nosanitize !9
  br i1 %i.fz, label %b3FreeManifolds.exit.i, label %bb.as, !prof !11, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @146, i64 %i.ft, i64 %i.fu) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3FreeManifolds.exit.i:                           ; preds = %bb.ar
  %i.ga = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %i.fr
  call void @b3FreeElement(ptr noundef %i.ga, ptr noundef %i.fg) #7
  %i.gb = load ptr, ptr %i.fn, align 8, !tbaa !128
  call void @b3UnlockMutex(ptr noundef %i.gb) #7
  store ptr null, ptr %i.ff, align 8, !tbaa !88
  store i32 0, ptr %i.fc, align 8, !tbaa !87
  br label %b3ComputeConvexManifold.exit.thread

bb.at:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !87
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %bb.at
  %i.gf = icmp ne ptr %0, null, !nosanitize !9
  %i.gg = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.gh = and i64 %i.gg, 7, !nosanitize !9
  %i.gi = icmp eq i64 %i.gh, 0, !nosanitize !9
  %i.gj = and i1 %i.gf, %i.gi, !nosanitize !9
  br i1 %i.gj, label %bb.aw, label %bb.av, !prof !11, !nosanitize !9

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @197, i64 %i.gg) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %bb.au
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !128
  call void @b3LockMutex(ptr noundef %i.gl) #7
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 4 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !203 ; 2 uses
  %i.gp = icmp slt i32 %i.go, 1
  br i1 %i.gp, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 3844 ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.bd
  %.054.us.i.i = phi i32 [ %i.gr, %bb.bd ], [ %i.go, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.gr = add nsw i32 %.054.us.i.i, 1             ; 2 uses
  %i.gs = mul i32 %i.gr, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %9, i32 noundef %i.gs, i32 noundef 512) #7
  %i.gt = load i32, ptr %i.gn, align 8, !tbaa !203 ; 2 uses
  %i.gu = load i32, ptr %i.gq, align 4, !tbaa !204 ; 6 uses
  %.not37.us.i.i = icmp slt i32 %i.gt, %i.gu
  br i1 %.not37.us.i.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gv = mul i32 %i.gu, 40
  %i.gw = icmp eq i32 %i.gu, 0
  br i1 %i.gw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gx = shl nsw i32 %i.gu, 1
  %i.gy = add i32 %i.gu, 1073741824
  %i.gz = icmp sgt i32 %i.gy, -1
  br i1 %i.gz, label %bb.az, label %.split.us.i.i, !prof !11, !nosanitize !9

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ha = phi i32 [ 8, %bb.ax ], [ %i.gx, %bb.ay ] ; 2 uses
  %i.hb = mul i32 %i.ha, 40
  %i.hc = load ptr, ptr %i.gm, align 8, !tbaa !129
  %i.hd = call ptr @b3GrowAlloc(ptr noundef %i.hc, i32 noundef %i.gv, i32 noundef %i.hb) #7
  store ptr %i.hd, ptr %i.gm, align 8, !tbaa !129
  store i32 %i.ha, ptr %i.gq, align 4, !tbaa !204
  %.pre.i.i = load i32, ptr %i.gn, align 8, !tbaa !203
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.split.us.i.i
  %i.he = phi i32 [ %.pre.i.i, %bb.az ], [ %i.gt, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.hf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.he, i32 1), !nosanitize !9 ; 2 uses
  %i.hg = extractvalue { i32, i1 } %i.hf, 1, !nosanitize !9
  br i1 %i.hg, label %.split56.us.i.i, label %bb.bb, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  %i.hh = load ptr, ptr %i.gm, align 8, !tbaa !129 ; 3 uses
  %i.hi = extractvalue { i32, i1 } %i.hf, 0, !nosanitize !9
  store i32 %i.hi, ptr %i.gn, align 8, !tbaa !203
  %i.hj = sext i32 %i.he to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [40 x i8], ptr %i.hh, i64 %i.hj ; 2 uses
  %i.hl = mul nsw i64 %i.hj, 40
  %i.hm = ptrtoint ptr %i.hh to i64, !nosanitize !9 ; 3 uses
  %i.hn = add i64 %i.hl, %i.hm, !nosanitize !9    ; 3 uses
  %i.ho = icmp ne ptr %i.hh, null, !nosanitize !9 ; 2 uses
  %i.hp = icmp eq i64 %i.hn, 0
  %i.hq = xor i1 %i.ho, %i.hp
  %i.hr = icmp uge i64 %i.hn, %i.hm, !nosanitize !9
  %i.hs = icmp slt i32 %i.he, 0
  %i.ht = xor i1 %i.hs, %i.hr
  %i.hu = and i1 %i.hq, %i.ht, !nosanitize !9
  br i1 %i.hu, label %bb.bc, label %.split59.us.i.i, !prof !11, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  %i.hv = ptrtoint ptr %i.hk to i64, !nosanitize !9 ; 2 uses
  %i.hw = and i64 %i.hv, 7, !nosanitize !9
  %i.hx = icmp eq i64 %i.hw, 0, !nosanitize !9
  %i.hy = and i1 %i.ho, %i.hx
  br i1 %i.hy, label %bb.bd, label %.split63.us.i.i, !prof !11, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !208
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %exitcond.not.i.i = icmp eq i32 %.054.us.i.i, 0
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !180

.split.us.i.i:                                    ; preds = %bb.ay
  %i.hz = zext i32 %i.gu to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @198, i64 2, i64 %i.hz) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split56.us.i.i:                                  ; preds = %bb.ba
  %i.ia = zext nneg i32 %i.he to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @199, i64 %i.ia, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split59.us.i.i:                                  ; preds = %bb.bb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.hm, i64 %i.hn) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split63.us.i.i:                                  ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 %i.hv) #8, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.i.i:                                  ; preds = %bb.bd, %bb.aw
  %i.ib = load ptr, ptr %i.gm, align 8, !tbaa !129
  %i.ic = call ptr @b3AllocateElement(ptr noundef %i.ib) #7 ; 5 uses
  %i.id = load ptr, ptr %i.gk, align 8, !tbaa !128
  call void @b3UnlockMutex(ptr noundef %i.id) #7
  %.not.i.i = icmp eq ptr %i.ic, null, !nosanitize !9
  br i1 %.not.i.i, label %bb.be, label %b3AllocateManifolds.exit.i, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %._crit_edge.i.i
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @203) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AllocateManifolds.exit.i:                       ; preds = %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(268) %i.ic, i8 0, i64 268, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ic, ptr %i.ie, align 8, !tbaa !88
  store i32 1, ptr %i.gc, align 8, !tbaa !87
  %.pre = load i32, ptr %i.fa, align 8, !tbaa !202
  %.pre509 = ptrtoint ptr %i.ic to i64, !nosanitize !9
  br label %bb.bi

bb.bf:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !88 ; 5 uses
  %i.ih = icmp ne ptr %i.ig, null, !nosanitize !9
  %i.ii = ptrtoint ptr %i.ig to i64, !nosanitize !9 ; 3 uses
  %i.ij = and i64 %i.ii, 3, !nosanitize !9
  %i.ik = icmp eq i64 %i.ij, 0, !nosanitize !9
  %i.il = and i1 %i.ih, %i.ik, !nosanitize !9
  br i1 %i.il, label %bb.bh, label %bb.bg, !prof !11, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @181, i64 %i.ii) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 264
  %i.in = load i32, ptr %i.im, align 4, !tbaa !133
  %i.io = freeze i32 %i.in                        ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = mul nsw i64 %i.ip, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %12, ptr nonnull align 4 %i.ig, i64 %i.iq, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %b3AllocateManifolds.exit.i
  %.pre-phi510 = phi i64 [ %i.ii, %bb.bh ], [ %.pre509, %b3AllocateManifolds.exit.i ] ; 24 uses
  %i.ir = phi i32 [ %i.fb, %bb.bh ], [ %.pre, %b3AllocateManifolds.exit.i ] ; 2 uses
  %i.is = phi ptr [ %i.ig, %bb.bh ], [ %i.ic, %b3AllocateManifolds.exit.i ] ; 82 uses
  %.0120.i = phi i32 [ %i.io, %bb.bh ], [ 0, %b3AllocateManifolds.exit.i ] ; 5 uses
  %i.it = and i64 %.pre-phi510, 3, !nosanitize !9
  %i.iu = icmp eq i64 %i.it, 0, !nosanitize !9
  br i1 %i.iu, label %bb.bk, label %bb.bj, !prof !11, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @182, i64 %.pre-phi510) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bk:                                            ; preds = %bb.bi
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 264
  store i32 %i.ir, ptr %i.iv, align 4, !tbaa !133
  %14 = extractelement <2 x float> %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.iw = fmul float %.sroa.0.4.vec.extract8.i.i.i, %14 ; 2 uses
  %i.ix = fmul float %.sroa.0.4.vec.extract8.i.i.i, %.sroa.4.8.vec.extract60.i.i ; 2 uses
  %i.iy = fmul float %.sroa.0.0.vec.extract.i.i.i, %14 ; 2 uses
  %foldExtExtBinop698 = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.8.0.copyload
  %i.iz = extractelement <2 x float> %foldExtExtBinop698, i64 0 ; 2 uses
  %15 = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <3 x i32> <i32 0, i32 3, i32 2>
  %16 = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <3 x i32> <i32 1, i32 2, i32 2>
  %17 = fmul <3 x float> %15, %16                 ; 3 uses
  %i.ja = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.7.0.copyload ; 3 uses
  %18 = fsub float %i.iz, %i.iw
  %i.jb = fmul float %18, 2.000000e+00            ; 6 uses
  %19 = fadd float %i.ix, %i.iy
  %i.jc = fmul float %19, 2.000000e+00            ; 6 uses
  %20 = extractelement <3 x float> %17, i64 0     ; 2 uses
  %21 = extractelement <3 x float> %17, i64 1     ; 2 uses
  %i.jd = fadd float %20, %21
  %i.je = fsub float %20, %21
  %i.jf = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jg = insertelement <2 x float> %i.jf, float %i.je, i64 1
  %i.jh = fmul <2 x float> %i.jg, splat (float 2.000000e+00) ; 6 uses
  %22 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ji = fadd <2 x float> %i.ja, %22
  %i.jj = fmul <2 x float> %i.ji, splat (float 2.000000e+00)
  %i.jk = fsub <2 x float> splat (float 1.000000e+00), %i.jj ; 6 uses
  %i.jl = fsub float %i.ix, %i.iy
  %i.jm = fadd float %i.iz, %i.iw
  %i.jn = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jo = insertelement <2 x float> %i.jn, float %i.jm, i64 1
  %i.jp = fmul <2 x float> %i.jo, splat (float 2.000000e+00) ; 6 uses
  %shift700 = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop701 = fadd <2 x float> %i.ja, %shift700
  %i.jq = extractelement <2 x float> %foldExtExtBinop701, i64 0
  %i.jr = fmul float %i.jq, 2.000000e+00
  %i.js = fsub float 1.000000e+00, %i.jr          ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.is, i64 224
  %.sroa.056.0.copyload.i = load <2 x float>, ptr %10, align 8 ; 4 uses
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.257.0.copyload.i = load float, ptr %.sroa.257.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload.i, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload.i, i64 1
  %i.ju = fmul float %i.jb, %.sroa.0.0.vec.extract.i.i
  %i.jv = fmul float %i.jc, %.sroa.0.4.vec.extract.i.i
  %i.jw = fadd float %i.ju, %i.jv
  %i.jx = fmul <2 x float> %i.jh, %.sroa.056.0.copyload.i
  %i.jy = shufflevector <2 x float> %.sroa.056.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jz = fmul <2 x float> %i.jk, %i.jy
  %i.ka = fadd <2 x float> %i.jx, %i.jz
  %i.kb = insertelement <2 x float> poison, float %.sroa.257.0.copyload.i, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = fmul <2 x float> %i.jp, %i.kc
  %i.ke = fadd <2 x float> %i.kd, %i.ka
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kg = fmul float %i.js, %.sroa.257.0.copyload.i
  %i.kh = fadd float %i.kg, %i.jw
  store <2 x float> %i.kf, ptr %i.jt, align 4
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.is, i64 232
  store float %i.kh, ptr %.sroa.459.0..sroa_idx.i, align 4, !tbaa !131
  %i.ki = icmp sgt i32 %i.ir, 0
  br i1 %i.ki, label %.lr.ph.i, label %b3ComputeConvexManifold.exit

.lr.ph.i:                                         ; preds = %bb.bk
  %i.kj = fsub <2 x float> %.sroa.0.0.copyload, %.sroa.0189.0.copyload ; 5 uses
  %i.kk = fsub float %.sroa.6.0.copyload, %.sroa.6191.0.copyload ; 5 uses
  %i.kl = load ptr, ptr %i.be, align 8, !tbaa !194 ; 6 uses
  %i.km = icmp ne ptr %i.kl, null, !nosanitize !9
  %i.kn = ptrtoint ptr %i.kl to i64, !nosanitize !9 ; 2 uses
  %i.ko = and i64 %i.kn, 3, !nosanitize !9
  %i.kp = icmp eq i64 %i.ko, 0, !nosanitize !9
  %i.kq = and i1 %i.km, %i.kp
  br i1 %i.kq, label %bb.cn, label %bb.cm, !prof !11, !nosanitize !9

.preheader.i:                                     ; preds = %bb.dd, %bb.cz, %bb.cv, %bb.cr, %bb.cn
  %.lcssa724.a = phi i32 [ %i.or, %bb.cn ], [ %i.qi, %bb.cr ], [ %i.rz, %bb.cv ], [ %i.tq, %bb.cz ], [ %i.vh, %bb.dd ] ; 11 uses
  %i.kr = icmp sgt i32 %.lcssa724.a, 0
  br i1 %i.kr, label %.lr.ph426.i, label %b3ComputeConvexManifold.exit

.lr.ph426.i:                                      ; preds = %.preheader.i
  %i.ks = icmp sgt i32 %.0120.i, 0
  %i.kt = ptrtoint ptr %12 to i64                 ; 5 uses
  br i1 %i.ks, label %.lr.ph396.us.i, label %.lr.ph426.split.preheader.i

.lr.ph396.us.i:                                   ; preds = %.lr.ph426.i
  %i.ku = add i64 %i.kt, 56                       ; 5 uses
  %i.kv = add i64 %i.kt, 112                      ; 5 uses
  %i.kw = add i64 %i.kt, 168                      ; 5 uses
  %i.kx = add i64 %i.kt, 224
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 10 uses
  %exitcond722.not.i = icmp eq i32 %.0120.i, 1    ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 5 uses
  %.not145.us.us.1.i = icmp ugt ptr %12, inttoptr (i64 -57 to ptr) ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %12, i64 100 ; 10 uses
  %exitcond722.1.not.i = icmp eq i32 %.0120.i, 2  ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 5 uses
  %.not145.us.us.2.i = icmp ugt ptr %12, inttoptr (i64 -113 to ptr) ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %12, i64 156 ; 10 uses
  %exitcond722.2.not.i = icmp eq i32 %.0120.i, 3  ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 5 uses
  %.not145.us.us.3.i = icmp ugt ptr %12, inttoptr (i64 -169 to ptr) ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 212 ; 10 uses
  %exitcond722.3.not.i = icmp eq i32 %.0120.i, 4  ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.is, i64 36
  store float 0.000000e+00, ptr %i.lf, align 4, !tbaa !210
  %i.lg = getelementptr inbounds nuw i8, ptr %i.is, i64 52 ; 2 uses
  store i8 0, ptr %i.lg, align 4, !tbaa !211
  %i.lh = getelementptr inbounds nuw i8, ptr %i.is, i64 44
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !212 ; 4 uses
  %i.lj = load i32, ptr %i.ky, align 4, !tbaa !212
  %.not146.us.us.i = icmp eq i32 %i.li, %i.lj
  br i1 %.not146.us.us.i, label %.split408.us.us.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph396.us.i
  br i1 %exitcond722.not.i, label %._crit_edge.split.us.us.i, label %.lr.ph396.split.us.us.1.i

.lr.ph396.split.us.us.1.i:                        ; preds = %bb.bl
  br i1 %.not145.us.us.1.i, label %.split398.us.i, label %.critedge.us.us.1.i, !prof !10, !nosanitize !9

.critedge.us.us.1.i:                              ; preds = %.lr.ph396.split.us.us.1.i
  %i.lk = load i32, ptr %i.la, align 4, !tbaa !212
  %.not146.us.us.1.i = icmp eq i32 %i.li, %i.lk
  br i1 %.not146.us.us.1.i, label %.split408.us.us.i, label %bb.bm

bb.bm:                                            ; preds = %.critedge.us.us.1.i
  br i1 %exitcond722.1.not.i, label %._crit_edge.split.us.us.i, label %.lr.ph396.split.us.us.2.i

.lr.ph396.split.us.us.2.i:                        ; preds = %bb.bm
  br i1 %.not145.us.us.2.i, label %.split398.us.i, label %.critedge.us.us.2.i, !prof !10, !nosanitize !9

.critedge.us.us.2.i:                              ; preds = %.lr.ph396.split.us.us.2.i
  %i.ll = load i32, ptr %i.lc, align 4, !tbaa !212
  %.not146.us.us.2.i = icmp eq i32 %i.li, %i.ll
  br i1 %.not146.us.us.2.i, label %.split408.us.us.i, label %bb.bn

bb.bn:                                            ; preds = %.critedge.us.us.2.i
  br i1 %exitcond722.2.not.i, label %._crit_edge.split.us.us.i, label %.lr.ph396.split.us.us.3.i

.lr.ph396.split.us.us.3.i:                        ; preds = %bb.bn
  br i1 %.not145.us.us.3.i, label %.split398.us.i, label %.critedge.us.us.3.i, !prof !10, !nosanitize !9

.critedge.us.us.3.i:                              ; preds = %.lr.ph396.split.us.us.3.i
  %i.lm = load i32, ptr %i.le, align 4, !tbaa !212
  %.not146.us.us.3.i = icmp eq i32 %i.li, %i.lm
  br i1 %.not146.us.us.3.i, label %.split408.us.us.i, label %bb.bo

bb.bo:                                            ; preds = %.critedge.us.us.3.i
  br i1 %exitcond722.3.not.i, label %._crit_edge.split.us.us.i, label %.lr.ph396.split.us.us.4.i

.lr.ph396.split.us.us.4.i:                        ; preds = %bb.ci, %bb.cd, %bb.by, %bb.bt, %bb.bo
  %.not145.us.us.4.i = icmp ugt ptr %12, inttoptr (i64 -225 to ptr)
  br i1 %.not145.us.us.4.i, label %.split398.us.i, label %.split402.us.i, !prof !10, !nosanitize !9

._crit_edge.split.us.us.i:                        ; preds = %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %i.ln = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store float 0.000000e+00, ptr %i.ln, align 4, !tbaa !213
  br label %bb.bp

.split408.us.us.i:                                ; preds = %.critedge.us.us.3.i, %.critedge.us.us.2.i, %.critedge.us.us.1.i, %.lr.ph396.us.i
  %.lcssa487.i = phi ptr [ %i.ky, %.lr.ph396.us.i ], [ %i.la, %.critedge.us.us.1.i ], [ %i.lc, %.critedge.us.us.2.i ], [ %i.le, %.critedge.us.us.3.i ]
  %.lcssa484.i = phi ptr [ %12, %.lr.ph396.us.i ], [ %i.kz, %.critedge.us.us.1.i ], [ %i.lb, %.critedge.us.us.2.i ], [ %i.ld, %.critedge.us.us.3.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.lcssa484.i, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.lq = load float, ptr %i.lo, align 4, !tbaa !213
  store float %i.lq, ptr %i.lp, align 4, !tbaa !213
  store i8 1, ptr %i.lg, align 4, !tbaa !211
  store i32 -1, ptr %.lcssa487.i, align 4, !tbaa !212
  br label %bb.bp

bb.bp:                                            ; preds = %.split408.us.us.i, %._crit_edge.split.us.us.i
  %exitcond728.not.i = icmp eq i32 %.lcssa724.a, 1
  br i1 %exitcond728.not.i, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.us.i.1

.lr.ph426.split.us.i.1:                           ; preds = %bb.bp
  %i.lr = add nsw i64 %.pre-phi510, 56, !nosanitize !9
  %.not143.us.i.1 = icmp ugt i64 %.pre-phi510, -57
  br i1 %.not143.us.i.1, label %.split431.us.i, label %.lr.ph396.us.i.1, !prof !10, !nosanitize !9

.lr.ph396.us.i.1:                                 ; preds = %.lr.ph426.split.us.i.1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.is, i64 92
  store float 0.000000e+00, ptr %i.ls, align 4, !tbaa !210
  %i.lt = getelementptr inbounds nuw i8, ptr %i.is, i64 108 ; 2 uses
  store i8 0, ptr %i.lt, align 4, !tbaa !211
  %i.lu = getelementptr inbounds nuw i8, ptr %i.is, i64 100
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !212 ; 4 uses
  %i.lw = load i32, ptr %i.ky, align 4, !tbaa !212
  %.not146.us.us.i.1 = icmp eq i32 %i.lv, %i.lw
  br i1 %.not146.us.us.i.1, label %.split408.us.us.i.1, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph396.us.i.1
  br i1 %exitcond722.not.i, label %._crit_edge.split.us.us.i.1, label %.lr.ph396.split.us.us.1.i.1

.lr.ph396.split.us.us.1.i.1:                      ; preds = %bb.bq
  br i1 %.not145.us.us.1.i, label %.split398.us.i, label %.critedge.us.us.1.i.1, !prof !10, !nosanitize !9

.critedge.us.us.1.i.1:                            ; preds = %.lr.ph396.split.us.us.1.i.1
  %i.lx = load i32, ptr %i.la, align 4, !tbaa !212
  %.not146.us.us.1.i.1 = icmp eq i32 %i.lv, %i.lx
  br i1 %.not146.us.us.1.i.1, label %.split408.us.us.i.1, label %bb.br

bb.br:                                            ; preds = %.critedge.us.us.1.i.1
  br i1 %exitcond722.1.not.i, label %._crit_edge.split.us.us.i.1, label %.lr.ph396.split.us.us.2.i.1

.lr.ph396.split.us.us.2.i.1:                      ; preds = %bb.br
  br i1 %.not145.us.us.2.i, label %.split398.us.i, label %.critedge.us.us.2.i.1, !prof !10, !nosanitize !9

.critedge.us.us.2.i.1:                            ; preds = %.lr.ph396.split.us.us.2.i.1
  %i.ly = load i32, ptr %i.lc, align 4, !tbaa !212
  %.not146.us.us.2.i.1 = icmp eq i32 %i.lv, %i.ly
  br i1 %.not146.us.us.2.i.1, label %.split408.us.us.i.1, label %bb.bs

bb.bs:                                            ; preds = %.critedge.us.us.2.i.1
  br i1 %exitcond722.2.not.i, label %._crit_edge.split.us.us.i.1, label %.lr.ph396.split.us.us.3.i.1

.lr.ph396.split.us.us.3.i.1:                      ; preds = %bb.bs
  br i1 %.not145.us.us.3.i, label %.split398.us.i, label %.critedge.us.us.3.i.1, !prof !10, !nosanitize !9

.critedge.us.us.3.i.1:                            ; preds = %.lr.ph396.split.us.us.3.i.1
  %i.lz = load i32, ptr %i.le, align 4, !tbaa !212
  %.not146.us.us.3.i.1 = icmp eq i32 %i.lv, %i.lz
  br i1 %.not146.us.us.3.i.1, label %.split408.us.us.i.1, label %bb.bt

bb.bt:                                            ; preds = %.critedge.us.us.3.i.1
  br i1 %exitcond722.3.not.i, label %._crit_edge.split.us.us.i.1, label %.lr.ph396.split.us.us.4.i

._crit_edge.split.us.us.i.1:                      ; preds = %bb.bq, %bb.br, %bb.bs, %bb.bt
  %i.ma = getelementptr inbounds nuw i8, ptr %i.is, i64 88
  store float 0.000000e+00, ptr %i.ma, align 4, !tbaa !213
  br label %bb.bu

.split408.us.us.i.1:                              ; preds = %.critedge.us.us.3.i.1, %.critedge.us.us.2.i.1, %.critedge.us.us.1.i.1, %.lr.ph396.us.i.1
  %.lcssa487.i.1 = phi ptr [ %i.ky, %.lr.ph396.us.i.1 ], [ %i.la, %.critedge.us.us.1.i.1 ], [ %i.lc, %.critedge.us.us.2.i.1 ], [ %i.le, %.critedge.us.us.3.i.1 ]
  %.lcssa484.i.1 = phi ptr [ %12, %.lr.ph396.us.i.1 ], [ %i.kz, %.critedge.us.us.1.i.1 ], [ %i.lb, %.critedge.us.us.2.i.1 ], [ %i.ld, %.critedge.us.us.3.i.1 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.lcssa484.i.1, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.is, i64 88
  %i.md = load float, ptr %i.mb, align 4, !tbaa !213
  store float %i.md, ptr %i.mc, align 4, !tbaa !213
  store i8 1, ptr %i.lt, align 4, !tbaa !211
  store i32 -1, ptr %.lcssa487.i.1, align 4, !tbaa !212
  br label %bb.bu

bb.bu:                                            ; preds = %.split408.us.us.i.1, %._crit_edge.split.us.us.i.1
  %exitcond728.not.i.1 = icmp eq i32 %.lcssa724.a, 2
  br i1 %exitcond728.not.i.1, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.us.i.2

end_hunk_1
begin_hunk_2_@b3UpdateConvexContact:bb.a
bb.bx:                                            ; preds = %.critedge.us.us.2.i.2
  br i1 %exitcond722.2.not.i, label %._crit_edge.split.us.us.i.2, label %.lr.ph396.split.us.us.3.i.2

.lr.ph396.split.us.us.3.i.2:                      ; preds = %bb.bx
  br i1 %.not145.us.us.3.i, label %.split398.us.i, label %.critedge.us.us.3.i.2, !prof !10, !nosanitize !9

.critedge.us.us.3.i.2:                            ; preds = %.lr.ph396.split.us.us.3.i.2
  %i.mm = load i32, ptr %i.le, align 4, !tbaa !212
  %.not146.us.us.3.i.2 = icmp eq i32 %i.mi, %i.mm
  br i1 %.not146.us.us.3.i.2, label %.split408.us.us.i.2, label %bb.by

bb.by:                                            ; preds = %.critedge.us.us.3.i.2
  br i1 %exitcond722.3.not.i, label %._crit_edge.split.us.us.i.2, label %.lr.ph396.split.us.us.4.i

._crit_edge.split.us.us.i.2:                      ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by
  %i.mn = getelementptr inbounds nuw i8, ptr %i.is, i64 144
  store float 0.000000e+00, ptr %i.mn, align 4, !tbaa !213
  br label %bb.bz

.split408.us.us.i.2:                              ; preds = %.critedge.us.us.3.i.2, %.critedge.us.us.2.i.2, %.critedge.us.us.1.i.2, %.lr.ph396.us.i.2
  %.lcssa487.i.2 = phi ptr [ %i.ky, %.lr.ph396.us.i.2 ], [ %i.la, %.critedge.us.us.1.i.2 ], [ %i.lc, %.critedge.us.us.2.i.2 ], [ %i.le, %.critedge.us.us.3.i.2 ]
  %.lcssa484.i.2 = phi ptr [ %12, %.lr.ph396.us.i.2 ], [ %i.kz, %.critedge.us.us.1.i.2 ], [ %i.lb, %.critedge.us.us.2.i.2 ], [ %i.ld, %.critedge.us.us.3.i.2 ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.lcssa484.i.2, i64 32
  %i.mp = getelementptr inbounds nuw i8, ptr %i.is, i64 144
  %i.mq = load float, ptr %i.mo, align 4, !tbaa !213
  store float %i.mq, ptr %i.mp, align 4, !tbaa !213
  store i8 1, ptr %i.mg, align 4, !tbaa !211
  store i32 -1, ptr %.lcssa487.i.2, align 4, !tbaa !212
  br label %bb.bz

bb.bz:                                            ; preds = %.split408.us.us.i.2, %._crit_edge.split.us.us.i.2
  %exitcond728.not.i.2 = icmp eq i32 %.lcssa724.a, 3
  br i1 %exitcond728.not.i.2, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.us.i.3

.lr.ph426.split.us.i.3:                           ; preds = %bb.bz
  %i.mr = add nsw i64 %.pre-phi510, 168, !nosanitize !9
  %.not143.us.i.3 = icmp ugt i64 %.pre-phi510, -169
  br i1 %.not143.us.i.3, label %.split431.us.i, label %.lr.ph396.us.i.3, !prof !10, !nosanitize !9

.lr.ph396.us.i.3:                                 ; preds = %.lr.ph426.split.us.i.3
  %i.ms = getelementptr inbounds nuw i8, ptr %i.is, i64 204
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !210
  %i.mt = getelementptr inbounds nuw i8, ptr %i.is, i64 220 ; 2 uses
  store i8 0, ptr %i.mt, align 4, !tbaa !211
  %i.mu = getelementptr inbounds nuw i8, ptr %i.is, i64 212
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !212 ; 4 uses
  %i.mw = load i32, ptr %i.ky, align 4, !tbaa !212
  %.not146.us.us.i.3 = icmp eq i32 %i.mv, %i.mw
  br i1 %.not146.us.us.i.3, label %.split408.us.us.i.3, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph396.us.i.3
  br i1 %exitcond722.not.i, label %._crit_edge.split.us.us.i.3, label %.lr.ph396.split.us.us.1.i.3

.lr.ph396.split.us.us.1.i.3:                      ; preds = %bb.ca
  br i1 %.not145.us.us.1.i, label %.split398.us.i, label %.critedge.us.us.1.i.3, !prof !10, !nosanitize !9

.critedge.us.us.1.i.3:                            ; preds = %.lr.ph396.split.us.us.1.i.3
  %i.mx = load i32, ptr %i.la, align 4, !tbaa !212
  %.not146.us.us.1.i.3 = icmp eq i32 %i.mv, %i.mx
  br i1 %.not146.us.us.1.i.3, label %.split408.us.us.i.3, label %bb.cb

bb.cb:                                            ; preds = %.critedge.us.us.1.i.3
  br i1 %exitcond722.1.not.i, label %._crit_edge.split.us.us.i.3, label %.lr.ph396.split.us.us.2.i.3

.lr.ph396.split.us.us.2.i.3:                      ; preds = %bb.cb
  br i1 %.not145.us.us.2.i, label %.split398.us.i, label %.critedge.us.us.2.i.3, !prof !10, !nosanitize !9

.critedge.us.us.2.i.3:                            ; preds = %.lr.ph396.split.us.us.2.i.3
  %i.my = load i32, ptr %i.lc, align 4, !tbaa !212
  %.not146.us.us.2.i.3 = icmp eq i32 %i.mv, %i.my
  br i1 %.not146.us.us.2.i.3, label %.split408.us.us.i.3, label %bb.cc

bb.cc:                                            ; preds = %.critedge.us.us.2.i.3
  br i1 %exitcond722.2.not.i, label %._crit_edge.split.us.us.i.3, label %.lr.ph396.split.us.us.3.i.3

.lr.ph396.split.us.us.3.i.3:                      ; preds = %bb.cc
  br i1 %.not145.us.us.3.i, label %.split398.us.i, label %.critedge.us.us.3.i.3, !prof !10, !nosanitize !9

.critedge.us.us.3.i.3:                            ; preds = %.lr.ph396.split.us.us.3.i.3
  %i.mz = load i32, ptr %i.le, align 4, !tbaa !212
  %.not146.us.us.3.i.3 = icmp eq i32 %i.mv, %i.mz
  br i1 %.not146.us.us.3.i.3, label %.split408.us.us.i.3, label %bb.cd

bb.cd:                                            ; preds = %.critedge.us.us.3.i.3
  br i1 %exitcond722.3.not.i, label %._crit_edge.split.us.us.i.3, label %.lr.ph396.split.us.us.4.i

._crit_edge.split.us.us.i.3:                      ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %i.na = getelementptr inbounds nuw i8, ptr %i.is, i64 200
  store float 0.000000e+00, ptr %i.na, align 4, !tbaa !213
  br label %bb.ce

.split408.us.us.i.3:                              ; preds = %.critedge.us.us.3.i.3, %.critedge.us.us.2.i.3, %.critedge.us.us.1.i.3, %.lr.ph396.us.i.3
  %.lcssa487.i.3 = phi ptr [ %i.ky, %.lr.ph396.us.i.3 ], [ %i.la, %.critedge.us.us.1.i.3 ], [ %i.lc, %.critedge.us.us.2.i.3 ], [ %i.le, %.critedge.us.us.3.i.3 ]
  %.lcssa484.i.3 = phi ptr [ %12, %.lr.ph396.us.i.3 ], [ %i.kz, %.critedge.us.us.1.i.3 ], [ %i.lb, %.critedge.us.us.2.i.3 ], [ %i.ld, %.critedge.us.us.3.i.3 ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.lcssa484.i.3, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.is, i64 200
  %i.nd = load float, ptr %i.nb, align 4, !tbaa !213
  store float %i.nd, ptr %i.nc, align 4, !tbaa !213
  store i8 1, ptr %i.mt, align 4, !tbaa !211
  store i32 -1, ptr %.lcssa487.i.3, align 4, !tbaa !212
  br label %bb.ce

bb.ce:                                            ; preds = %.split408.us.us.i.3, %._crit_edge.split.us.us.i.3
  %exitcond728.not.i.3 = icmp eq i32 %.lcssa724.a, 4
  br i1 %exitcond728.not.i.3, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.us.i.4

.lr.ph426.split.us.i.4:                           ; preds = %bb.ce
  %i.ne = add nsw i64 %.pre-phi510, 224, !nosanitize !9
  %.not143.us.i.4 = icmp ugt i64 %.pre-phi510, -225
  br i1 %.not143.us.i.4, label %.split431.us.i, label %.lr.ph396.us.i.4, !prof !10, !nosanitize !9

.lr.ph396.us.i.4:                                 ; preds = %.lr.ph426.split.us.i.4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.is, i64 260
  store float 0.000000e+00, ptr %i.nf, align 4, !tbaa !210
  %i.ng = getelementptr inbounds nuw i8, ptr %i.is, i64 276 ; 2 uses
  store i8 0, ptr %i.ng, align 4, !tbaa !211
  %i.nh = getelementptr inbounds nuw i8, ptr %i.is, i64 268
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !212 ; 4 uses
  %i.nj = load i32, ptr %i.ky, align 4, !tbaa !212
  %.not146.us.us.i.4 = icmp eq i32 %i.ni, %i.nj
  br i1 %.not146.us.us.i.4, label %.split408.us.us.i.4, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph396.us.i.4
  br i1 %exitcond722.not.i, label %._crit_edge.split.us.us.i.4, label %.lr.ph396.split.us.us.1.i.4

.lr.ph396.split.us.us.1.i.4:                      ; preds = %bb.cf
  br i1 %.not145.us.us.1.i, label %.split398.us.i, label %.critedge.us.us.1.i.4, !prof !10, !nosanitize !9

.critedge.us.us.1.i.4:                            ; preds = %.lr.ph396.split.us.us.1.i.4
  %i.nk = load i32, ptr %i.la, align 4, !tbaa !212
  %.not146.us.us.1.i.4 = icmp eq i32 %i.ni, %i.nk
  br i1 %.not146.us.us.1.i.4, label %.split408.us.us.i.4, label %bb.cg

bb.cg:                                            ; preds = %.critedge.us.us.1.i.4
  br i1 %exitcond722.1.not.i, label %._crit_edge.split.us.us.i.4, label %.lr.ph396.split.us.us.2.i.4

.lr.ph396.split.us.us.2.i.4:                      ; preds = %bb.cg
  br i1 %.not145.us.us.2.i, label %.split398.us.i, label %.critedge.us.us.2.i.4, !prof !10, !nosanitize !9

.critedge.us.us.2.i.4:                            ; preds = %.lr.ph396.split.us.us.2.i.4
  %i.nl = load i32, ptr %i.lc, align 4, !tbaa !212
  %.not146.us.us.2.i.4 = icmp eq i32 %i.ni, %i.nl
  br i1 %.not146.us.us.2.i.4, label %.split408.us.us.i.4, label %bb.ch

bb.ch:                                            ; preds = %.critedge.us.us.2.i.4
  br i1 %exitcond722.2.not.i, label %._crit_edge.split.us.us.i.4, label %.lr.ph396.split.us.us.3.i.4

.lr.ph396.split.us.us.3.i.4:                      ; preds = %bb.ch
  br i1 %.not145.us.us.3.i, label %.split398.us.i, label %.critedge.us.us.3.i.4, !prof !10, !nosanitize !9

.critedge.us.us.3.i.4:                            ; preds = %.lr.ph396.split.us.us.3.i.4
  %i.nm = load i32, ptr %i.le, align 4, !tbaa !212
  %.not146.us.us.3.i.4 = icmp eq i32 %i.ni, %i.nm
  br i1 %.not146.us.us.3.i.4, label %.split408.us.us.i.4, label %bb.ci

bb.ci:                                            ; preds = %.critedge.us.us.3.i.4
  br i1 %exitcond722.3.not.i, label %._crit_edge.split.us.us.i.4, label %.lr.ph396.split.us.us.4.i

._crit_edge.split.us.us.i.4:                      ; preds = %bb.cf, %bb.cg, %bb.ch, %bb.ci
  %i.nn = getelementptr inbounds nuw i8, ptr %i.is, i64 256
  store float 0.000000e+00, ptr %i.nn, align 4, !tbaa !213
  br label %bb.cj

.split408.us.us.i.4:                              ; preds = %.critedge.us.us.3.i.4, %.critedge.us.us.2.i.4, %.critedge.us.us.1.i.4, %.lr.ph396.us.i.4
  %.lcssa487.i.4 = phi ptr [ %i.ky, %.lr.ph396.us.i.4 ], [ %i.la, %.critedge.us.us.1.i.4 ], [ %i.lc, %.critedge.us.us.2.i.4 ], [ %i.le, %.critedge.us.us.3.i.4 ]
  %.lcssa484.i.4 = phi ptr [ %12, %.lr.ph396.us.i.4 ], [ %i.kz, %.critedge.us.us.1.i.4 ], [ %i.lb, %.critedge.us.us.2.i.4 ], [ %i.ld, %.critedge.us.us.3.i.4 ]
  %i.no = getelementptr inbounds nuw i8, ptr %.lcssa484.i.4, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %i.is, i64 256
  %i.nq = load float, ptr %i.no, align 4, !tbaa !213
  store float %i.nq, ptr %i.np, align 4, !tbaa !213
  store i8 1, ptr %i.ng, align 4, !tbaa !211
  store i32 -1, ptr %.lcssa487.i.4, align 4, !tbaa !212
  br label %bb.cj

bb.cj:                                            ; preds = %.split408.us.us.i.4, %._crit_edge.split.us.us.i.4
  %exitcond728.not.i.4 = icmp eq i32 %.lcssa724.a, 5
  br i1 %exitcond728.not.i.4, label %b3ComputeConvexManifold.exit, label %.split428.us.i

bb.ck:                                            ; preds = %bb.de, %bb.da, %bb.cw, %bb.cs, %bb.co
  %.lcssa714 = phi i64 [ %i.vk, %bb.de ], [ %i.ov, %bb.co ], [ %i.qm, %bb.cs ], [ %i.sd, %bb.cw ], [ %i.tu, %bb.da ]
  %.lcssa = phi i64 [ %i.vl, %bb.de ], [ %i.ow, %bb.co ], [ %i.qn, %bb.cs ], [ %i.se, %bb.cw ], [ %i.tv, %bb.da ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @183, i64 %.lcssa714, i64 %.lcssa) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.db, %bb.cx, %bb.ct, %bb.cp
  %.lcssa719 = phi i64 [ %i.uc, %bb.db ], [ %i.pd, %bb.cp ], [ %i.qu, %bb.ct ], [ %i.sl, %bb.cx ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @185, i64 %.pre-phi510, i64 %.lcssa719) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.cm:                                            ; preds = %bb.dc, %bb.cy, %bb.cu, %bb.cq, %.lr.ph.i
  %.lcssa722 = phi i64 [ %i.kn, %.lr.ph.i ], [ %i.pe, %bb.cq ], [ %i.qv, %bb.cu ], [ %i.sm, %bb.cy ], [ %i.ud, %bb.dc ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @187, i64 %.lcssa722) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.cn:                                            ; preds = %.lr.ph.i
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.kl, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.sroa.235.0.copyload.i = load float, ptr %.sroa.235.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i154.i = extractelement <2 x float> %.sroa.034.0.copyload.i, i64 0
  %.sroa.0.4.vec.extract.i155.i = extractelement <2 x float> %.sroa.034.0.copyload.i, i64 1
  %i.nr = fmul float %i.jb, %.sroa.0.0.vec.extract.i154.i
  %i.ns = fmul float %i.jc, %.sroa.0.4.vec.extract.i155.i
  %i.nt = fadd float %i.nr, %i.ns
  %i.nu = fmul <2 x float> %i.jh, %.sroa.034.0.copyload.i
  %i.nv = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nw = fmul <2 x float> %i.jk, %i.nv
  %i.nx = fadd <2 x float> %i.nu, %i.nw
  %i.ny = insertelement <2 x float> poison, float %.sroa.235.0.copyload.i, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oa = fmul <2 x float> %i.jp, %i.nz
  %i.ob = fadd <2 x float> %i.oa, %i.nx
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.od = fmul float %i.js, %.sroa.235.0.copyload.i
  %i.oe = fadd float %i.od, %i.nt                 ; 2 uses
  store <2 x float> %i.oc, ptr %i.is, align 4
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store float %i.oe, ptr %.sroa.437.0..sroa_idx.i, align 4, !tbaa !131
  %i.of = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  %i.og = fadd <2 x float> %i.kj, %i.oc
  %i.oh = fadd float %i.kk, %i.oe
  store <2 x float> %i.og, ptr %i.of, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.is, i64 20
  store float %i.oh, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !131
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %i.oj = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.ok = load float, ptr %i.oi, align 4, !tbaa !216
  store float %i.ok, ptr %i.oj, align 4, !tbaa !217
  %i.ol = getelementptr inbounds nuw i8, ptr %i.is, i64 44
  %i.om = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = call i32 @llvm.bswap.i32(i32 %i.on)
  store i32 %i.oo, ptr %i.ol, align 4, !tbaa !212
  %i.op = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  store i32 -1, ptr %i.op, align 4, !tbaa !218
  %i.oq = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store float 0.000000e+00, ptr %i.oq, align 4, !tbaa !219
  %i.or = load i32, ptr %i.fa, align 8, !tbaa !202 ; 2 uses
  %i.os = icmp sgt i32 %i.or, 1
  br i1 %i.os, label %bb.co, label %.preheader.i

bb.co:                                            ; preds = %bb.cn
  %i.ot = load ptr, ptr %i.be, align 8, !tbaa !194 ; 7 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24 ; 2 uses
  %i.ov = ptrtoint ptr %i.ot to i64, !nosanitize !9 ; 2 uses
  %i.ow = add i64 %i.ov, 24, !nosanitize !9       ; 2 uses
  %i.ox = icmp ne ptr %i.ot, null, !nosanitize !9 ; 2 uses
  %i.oy = icmp ne i64 %i.ow, 0
  %i.oz = icmp ult ptr %i.ot, inttoptr (i64 -24 to ptr)
  %i.pa = and i1 %i.oy, %i.oz
  %i.pb = and i1 %i.pa, %i.ox
  br i1 %i.pb, label %bb.cp, label %bb.ck, !prof !11, !nosanitize !9

bb.cp:                                            ; preds = %bb.co
  %i.pc = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  %i.pd = add i64 %.pre-phi510, 56, !nosanitize !9
  %.not147.i.1 = icmp ugt i64 %.pre-phi510, -57
  br i1 %.not147.i.1, label %bb.cl, label %bb.cq, !prof !10, !nosanitize !9

bb.cq:                                            ; preds = %bb.cp
  %i.pe = ptrtoint ptr %i.ou to i64, !nosanitize !9 ; 2 uses
  %i.pf = and i64 %i.pe, 3, !nosanitize !9
  %i.pg = icmp eq i64 %i.pf, 0, !nosanitize !9
  %i.ph = and i1 %i.ox, %i.pg
  br i1 %i.ph, label %bb.cr, label %bb.cm, !prof !11, !nosanitize !9

bb.cr:                                            ; preds = %bb.cq
  %.sroa.034.0.copyload.i.1 = load <2 x float>, ptr %i.ou, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %.sroa.235.0.copyload.i.1 = load float, ptr %.sroa.235.0..sroa_idx.i.1, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i154.i.1 = extractelement <2 x float> %.sroa.034.0.copyload.i.1, i64 0
  %.sroa.0.4.vec.extract.i155.i.1 = extractelement <2 x float> %.sroa.034.0.copyload.i.1, i64 1
  %i.pi = fmul float %i.jb, %.sroa.0.0.vec.extract.i154.i.1
  %i.pj = fmul float %i.jc, %.sroa.0.4.vec.extract.i155.i.1
  %i.pk = fadd float %i.pi, %i.pj
  %i.pl = fmul <2 x float> %i.jh, %.sroa.034.0.copyload.i.1
  %i.pm = shufflevector <2 x float> %.sroa.034.0.copyload.i.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pn = fmul <2 x float> %i.jk, %i.pm
  %i.po = fadd <2 x float> %i.pl, %i.pn
  %i.pp = insertelement <2 x float> poison, float %.sroa.235.0.copyload.i.1, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = fmul <2 x float> %i.jp, %i.pq
  %i.ps = fadd <2 x float> %i.pr, %i.po
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pu = fmul float %i.js, %.sroa.235.0.copyload.i.1
  %i.pv = fadd float %i.pu, %i.pk                 ; 2 uses
  store <2 x float> %i.pt, ptr %i.pc, align 4
  %.sroa.437.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  store float %i.pv, ptr %.sroa.437.0..sroa_idx.i.1, align 4, !tbaa !131
  %i.pw = getelementptr inbounds nuw i8, ptr %i.is, i64 68
  %i.px = fadd <2 x float> %i.kj, %i.pt
  %i.py = fadd float %i.kk, %i.pv
  store <2 x float> %i.px, ptr %i.pw, align 4
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.is, i64 76
  store float %i.py, ptr %.sroa.4.0..sroa_idx.i.1, align 4, !tbaa !131
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ot, i64 36
  %i.qa = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  %i.qb = load float, ptr %i.pz, align 4, !tbaa !216
  store float %i.qb, ptr %i.qa, align 4, !tbaa !217
  %i.qc = getelementptr inbounds nuw i8, ptr %i.is, i64 100
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = call i32 @llvm.bswap.i32(i32 %i.qe)
  store i32 %i.qf, ptr %i.qc, align 4, !tbaa !212
  %i.qg = getelementptr inbounds nuw i8, ptr %i.is, i64 104
  store i32 -1, ptr %i.qg, align 4, !tbaa !218
  %i.qh = getelementptr inbounds nuw i8, ptr %i.is, i64 96
  store float 0.000000e+00, ptr %i.qh, align 4, !tbaa !219
  %i.qi = load i32, ptr %i.fa, align 8, !tbaa !202 ; 2 uses
  %i.qj = icmp sgt i32 %i.qi, 2
  br i1 %i.qj, label %bb.cs, label %.preheader.i

bb.cs:                                            ; preds = %bb.cr
  %i.qk = load ptr, ptr %i.be, align 8, !tbaa !194 ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 48 ; 2 uses
  %i.qm = ptrtoint ptr %i.qk to i64, !nosanitize !9 ; 2 uses
  %i.qn = add i64 %i.qm, 48, !nosanitize !9       ; 2 uses
  %i.qo = icmp ne ptr %i.qk, null, !nosanitize !9 ; 2 uses
  %i.qp = icmp ne i64 %i.qn, 0
  %i.qq = icmp ult ptr %i.qk, inttoptr (i64 -48 to ptr)
  %i.qr = and i1 %i.qp, %i.qq
  %i.qs = and i1 %i.qr, %i.qo
  br i1 %i.qs, label %bb.ct, label %bb.ck, !prof !11, !nosanitize !9

bb.ct:                                            ; preds = %bb.cs
  %i.qt = getelementptr inbounds nuw i8, ptr %i.is, i64 112
  %i.qu = add i64 %.pre-phi510, 112, !nosanitize !9
  %.not147.i.2 = icmp ugt i64 %.pre-phi510, -113
  br i1 %.not147.i.2, label %bb.cl, label %bb.cu, !prof !10, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  %i.qv = ptrtoint ptr %i.ql to i64, !nosanitize !9 ; 2 uses
  %i.qw = and i64 %i.qv, 3, !nosanitize !9
  %i.qx = icmp eq i64 %i.qw, 0, !nosanitize !9
  %i.qy = and i1 %i.qo, %i.qx
  br i1 %i.qy, label %bb.cv, label %bb.cm, !prof !11, !nosanitize !9

bb.cv:                                            ; preds = %bb.cu
  %.sroa.034.0.copyload.i.2 = load <2 x float>, ptr %i.ql, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  %.sroa.235.0.copyload.i.2 = load float, ptr %.sroa.235.0..sroa_idx.i.2, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i154.i.2 = extractelement <2 x float> %.sroa.034.0.copyload.i.2, i64 0
  %.sroa.0.4.vec.extract.i155.i.2 = extractelement <2 x float> %.sroa.034.0.copyload.i.2, i64 1
  %i.qz = fmul float %i.jb, %.sroa.0.0.vec.extract.i154.i.2
  %i.ra = fmul float %i.jc, %.sroa.0.4.vec.extract.i155.i.2
  %i.rb = fadd float %i.qz, %i.ra
  %i.rc = fmul <2 x float> %i.jh, %.sroa.034.0.copyload.i.2
  %i.rd = shufflevector <2 x float> %.sroa.034.0.copyload.i.2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.re = fmul <2 x float> %i.jk, %i.rd
  %i.rf = fadd <2 x float> %i.rc, %i.re
  %i.rg = insertelement <2 x float> poison, float %.sroa.235.0.copyload.i.2, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = fmul <2 x float> %i.jp, %i.rh
  %i.rj = fadd <2 x float> %i.ri, %i.rf
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.rl = fmul float %i.js, %.sroa.235.0.copyload.i.2
  %i.rm = fadd float %i.rl, %i.rb                 ; 2 uses
  store <2 x float> %i.rk, ptr %i.qt, align 4
  %.sroa.437.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.is, i64 120
  store float %i.rm, ptr %.sroa.437.0..sroa_idx.i.2, align 4, !tbaa !131
  %i.rn = getelementptr inbounds nuw i8, ptr %i.is, i64 124
  %i.ro = fadd <2 x float> %i.kj, %i.rk
  %i.rp = fadd float %i.kk, %i.rm
  store <2 x float> %i.ro, ptr %i.rn, align 4
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.is, i64 132
  store float %i.rp, ptr %.sroa.4.0..sroa_idx.i.2, align 4, !tbaa !131
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 60
  %i.rr = getelementptr inbounds nuw i8, ptr %i.is, i64 136
  %i.rs = load float, ptr %i.rq, align 4, !tbaa !216
  store float %i.rs, ptr %i.rr, align 4, !tbaa !217
  %i.rt = getelementptr inbounds nuw i8, ptr %i.is, i64 156
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.rv = load i32, ptr %i.ru, align 4
  %i.rw = call i32 @llvm.bswap.i32(i32 %i.rv)
  store i32 %i.rw, ptr %i.rt, align 4, !tbaa !212
  %i.rx = getelementptr inbounds nuw i8, ptr %i.is, i64 160
  store i32 -1, ptr %i.rx, align 4, !tbaa !218
  %i.ry = getelementptr inbounds nuw i8, ptr %i.is, i64 152
  store float 0.000000e+00, ptr %i.ry, align 4, !tbaa !219
  %i.rz = load i32, ptr %i.fa, align 8, !tbaa !202 ; 2 uses
  %i.sa = icmp sgt i32 %i.rz, 3
  br i1 %i.sa, label %bb.cw, label %.preheader.i

bb.cw:                                            ; preds = %bb.cv
  %i.sb = load ptr, ptr %i.be, align 8, !tbaa !194 ; 7 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 72 ; 2 uses
  %i.sd = ptrtoint ptr %i.sb to i64, !nosanitize !9 ; 2 uses
  %i.se = add i64 %i.sd, 72, !nosanitize !9       ; 2 uses
  %i.sf = icmp ne ptr %i.sb, null, !nosanitize !9 ; 2 uses
  %i.sg = icmp ne i64 %i.se, 0
  %i.sh = icmp ult ptr %i.sb, inttoptr (i64 -72 to ptr)
  %i.si = and i1 %i.sg, %i.sh
  %i.sj = and i1 %i.si, %i.sf
  br i1 %i.sj, label %bb.cx, label %bb.ck, !prof !11, !nosanitize !9

bb.cx:                                            ; preds = %bb.cw
  %i.sk = getelementptr inbounds nuw i8, ptr %i.is, i64 168
  %i.sl = add i64 %.pre-phi510, 168, !nosanitize !9
  %.not147.i.3 = icmp ugt i64 %.pre-phi510, -169
  br i1 %.not147.i.3, label %bb.cl, label %bb.cy, !prof !10, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  %i.sm = ptrtoint ptr %i.sc to i64, !nosanitize !9 ; 2 uses
  %i.sn = and i64 %i.sm, 3, !nosanitize !9
  %i.so = icmp eq i64 %i.sn, 0, !nosanitize !9
  %i.sp = and i1 %i.sf, %i.so
  br i1 %i.sp, label %bb.cz, label %bb.cm, !prof !11, !nosanitize !9

bb.cz:                                            ; preds = %bb.cy
  %.sroa.034.0.copyload.i.3 = load <2 x float>, ptr %i.sc, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.sb, i64 80
  %.sroa.235.0.copyload.i.3 = load float, ptr %.sroa.235.0..sroa_idx.i.3, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i154.i.3 = extractelement <2 x float> %.sroa.034.0.copyload.i.3, i64 0
  %.sroa.0.4.vec.extract.i155.i.3 = extractelement <2 x float> %.sroa.034.0.copyload.i.3, i64 1
  %i.sq = fmul float %i.jb, %.sroa.0.0.vec.extract.i154.i.3
  %i.sr = fmul float %i.jc, %.sroa.0.4.vec.extract.i155.i.3
  %i.ss = fadd float %i.sq, %i.sr
  %i.st = fmul <2 x float> %i.jh, %.sroa.034.0.copyload.i.3
  %i.su = shufflevector <2 x float> %.sroa.034.0.copyload.i.3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sv = fmul <2 x float> %i.jk, %i.su
  %i.sw = fadd <2 x float> %i.st, %i.sv
  %i.sx = insertelement <2 x float> poison, float %.sroa.235.0.copyload.i.3, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = fmul <2 x float> %i.jp, %i.sy
  %i.ta = fadd <2 x float> %i.sz, %i.sw
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tc = fmul float %i.js, %.sroa.235.0.copyload.i.3
  %i.td = fadd float %i.tc, %i.ss                 ; 2 uses
  store <2 x float> %i.tb, ptr %i.sk, align 4
  %.sroa.437.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.is, i64 176
  store float %i.td, ptr %.sroa.437.0..sroa_idx.i.3, align 4, !tbaa !131
  %i.te = getelementptr inbounds nuw i8, ptr %i.is, i64 180
  %i.tf = fadd <2 x float> %i.kj, %i.tb
  %i.tg = fadd float %i.kk, %i.td
  store <2 x float> %i.tf, ptr %i.te, align 4
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.is, i64 188
  store float %i.tg, ptr %.sroa.4.0..sroa_idx.i.3, align 4, !tbaa !131
  %i.th = getelementptr inbounds nuw i8, ptr %i.sb, i64 84
  %i.ti = getelementptr inbounds nuw i8, ptr %i.is, i64 192
  %i.tj = load float, ptr %i.th, align 4, !tbaa !216
  store float %i.tj, ptr %i.ti, align 4, !tbaa !217
  %i.tk = getelementptr inbounds nuw i8, ptr %i.is, i64 212
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sb, i64 88
  %i.tm = load i32, ptr %i.tl, align 4
  %i.tn = call i32 @llvm.bswap.i32(i32 %i.tm)
  store i32 %i.tn, ptr %i.tk, align 4, !tbaa !212
  %i.to = getelementptr inbounds nuw i8, ptr %i.is, i64 216
  store i32 -1, ptr %i.to, align 4, !tbaa !218
  %i.tp = getelementptr inbounds nuw i8, ptr %i.is, i64 208
  store float 0.000000e+00, ptr %i.tp, align 4, !tbaa !219
  %i.tq = load i32, ptr %i.fa, align 8, !tbaa !202 ; 2 uses
  %i.tr = icmp sgt i32 %i.tq, 4
  br i1 %i.tr, label %bb.da, label %.preheader.i

bb.da:                                            ; preds = %bb.cz
  %i.ts = load ptr, ptr %i.be, align 8, !tbaa !194 ; 7 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 96 ; 2 uses
  %i.tu = ptrtoint ptr %i.ts to i64, !nosanitize !9 ; 2 uses
  %i.tv = add i64 %i.tu, 96, !nosanitize !9       ; 2 uses
  %i.tw = icmp ne ptr %i.ts, null, !nosanitize !9 ; 2 uses
  %i.tx = icmp ne i64 %i.tv, 0
  %i.ty = icmp ult ptr %i.ts, inttoptr (i64 -96 to ptr)
  %i.tz = and i1 %i.tx, %i.ty
  %i.ua = and i1 %i.tz, %i.tw
  br i1 %i.ua, label %bb.db, label %bb.ck, !prof !11, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  %i.ub = getelementptr inbounds nuw i8, ptr %i.is, i64 224
  %i.uc = add i64 %.pre-phi510, 224, !nosanitize !9
  %.not147.i.4 = icmp ugt i64 %.pre-phi510, -225
  br i1 %.not147.i.4, label %bb.cl, label %bb.dc, !prof !10, !nosanitize !9

bb.dc:                                            ; preds = %bb.db
  %i.ud = ptrtoint ptr %i.tt to i64, !nosanitize !9 ; 2 uses
  %i.ue = and i64 %i.ud, 3, !nosanitize !9
  %i.uf = icmp eq i64 %i.ue, 0, !nosanitize !9
  %i.ug = and i1 %i.tw, %i.uf
  br i1 %i.ug, label %bb.dd, label %bb.cm, !prof !11, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  %.sroa.034.0.copyload.i.4 = load <2 x float>, ptr %i.tt, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.ts, i64 104
  %.sroa.235.0.copyload.i.4 = load float, ptr %.sroa.235.0..sroa_idx.i.4, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i154.i.4 = extractelement <2 x float> %.sroa.034.0.copyload.i.4, i64 0
  %.sroa.0.4.vec.extract.i155.i.4 = extractelement <2 x float> %.sroa.034.0.copyload.i.4, i64 1
  %i.uh = fmul float %i.jb, %.sroa.0.0.vec.extract.i154.i.4
  %i.ui = fmul float %i.jc, %.sroa.0.4.vec.extract.i155.i.4
  %i.uj = fadd float %i.uh, %i.ui
  %i.uk = fmul <2 x float> %i.jh, %.sroa.034.0.copyload.i.4
  %i.ul = shufflevector <2 x float> %.sroa.034.0.copyload.i.4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.um = fmul <2 x float> %i.jk, %i.ul
  %i.un = fadd <2 x float> %i.uk, %i.um
  %i.uo = insertelement <2 x float> poison, float %.sroa.235.0.copyload.i.4, i64 0
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = fmul <2 x float> %i.jp, %i.up
  %i.ur = fadd <2 x float> %i.uq, %i.un
  %i.us = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ut = fmul float %i.js, %.sroa.235.0.copyload.i.4
  %i.uu = fadd float %i.ut, %i.uj                 ; 2 uses
  store <2 x float> %i.us, ptr %i.ub, align 4
  %.sroa.437.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.is, i64 232
  store float %i.uu, ptr %.sroa.437.0..sroa_idx.i.4, align 4, !tbaa !131
  %i.uv = getelementptr inbounds nuw i8, ptr %i.is, i64 236
  %i.uw = fadd <2 x float> %i.kj, %i.us
  %i.ux = fadd float %i.kk, %i.uu
  store <2 x float> %i.uw, ptr %i.uv, align 4
  %.sroa.4.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.is, i64 244
  store float %i.ux, ptr %.sroa.4.0..sroa_idx.i.4, align 4, !tbaa !131
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ts, i64 108
  %i.uz = getelementptr inbounds nuw i8, ptr %i.is, i64 248
  %i.va = load float, ptr %i.uy, align 4, !tbaa !216
  store float %i.va, ptr %i.uz, align 4, !tbaa !217
  %i.vb = getelementptr inbounds nuw i8, ptr %i.is, i64 268
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ts, i64 112
  %i.vd = load i32, ptr %i.vc, align 4
  %i.ve = call i32 @llvm.bswap.i32(i32 %i.vd)
  store i32 %i.ve, ptr %i.vb, align 4, !tbaa !212
  %i.vf = getelementptr inbounds nuw i8, ptr %i.is, i64 272
  store i32 -1, ptr %i.vf, align 4, !tbaa !218
  %i.vg = getelementptr inbounds nuw i8, ptr %i.is, i64 264
  store float 0.000000e+00, ptr %i.vg, align 4, !tbaa !219
  %i.vh = load i32, ptr %i.fa, align 8, !tbaa !202 ; 2 uses
  %i.vi = icmp sgt i32 %i.vh, 5
  br i1 %i.vi, label %bb.de, label %.preheader.i

bb.de:                                            ; preds = %bb.dd
  %i.vj = load ptr, ptr %i.be, align 8, !tbaa !194 ; 3 uses
  %i.vk = ptrtoint ptr %i.vj to i64, !nosanitize !9 ; 2 uses
  %i.vl = add i64 %i.vk, 120, !nosanitize !9      ; 2 uses
  %i.vm = icmp ne ptr %i.vj, null, !nosanitize !9
  %i.vn = icmp ne i64 %i.vl, 0
  %i.vo = and i1 %i.vm, %i.vn
  %i.vp = icmp ult ptr %i.vj, inttoptr (i64 -120 to ptr)
  %i.vq = and i1 %i.vp, %i.vo, !nosanitize !9
  br i1 %i.vq, label %bb.df, label %bb.ck, !prof !11, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @184, i64 5) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split428.us.i:                                   ; preds = %bb.cj, %bb.dj
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @188, i64 5) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split431.us.i:                                   ; preds = %.lr.ph426.split.us.i.1, %.lr.ph426.split.us.i.2, %.lr.ph426.split.us.i.3, %.lr.ph426.split.us.i.4, %.lr.ph426.split.4.i, %.lr.ph426.split.3.i, %.lr.ph426.split.2.i, %.lr.ph426.split.1.i
  %.us-phi432.i = phi i64 [ %i.wb, %.lr.ph426.split.3.i ], [ %i.we, %.lr.ph426.split.4.i ], [ %i.vv, %.lr.ph426.split.1.i ], [ %i.vy, %.lr.ph426.split.2.i ], [ %i.ne, %.lr.ph426.split.us.i.4 ], [ %i.lr, %.lr.ph426.split.us.i.1 ], [ %i.me, %.lr.ph426.split.us.i.2 ], [ %i.mr, %.lr.ph426.split.us.i.3 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @189, i64 %.pre-phi510, i64 %.us-phi432.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph426.split.preheader.i:                      ; preds = %.lr.ph426.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.is, i64 52
  store i8 0, ptr %i.vr, align 4, !tbaa !211
  %i.vs = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store <2 x float> zeroinitializer, ptr %i.vs, align 4, !tbaa !131
  %exitcond716.not.i = icmp eq i32 %.lcssa724.a, 1
  br i1 %exitcond716.not.i, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.1.i

.split398.us.i:                                   ; preds = %.lr.ph396.split.us.us.3.i, %.lr.ph396.split.us.us.2.i, %.lr.ph396.split.us.us.1.i, %.lr.ph396.split.us.us.1.i.1, %.lr.ph396.split.us.us.2.i.1, %.lr.ph396.split.us.us.3.i.1, %.lr.ph396.split.us.us.1.i.2, %.lr.ph396.split.us.us.2.i.2, %.lr.ph396.split.us.us.3.i.2, %.lr.ph396.split.us.us.1.i.3, %.lr.ph396.split.us.us.2.i.3, %.lr.ph396.split.us.us.3.i.3, %.lr.ph396.split.us.us.1.i.4, %.lr.ph396.split.us.us.2.i.4, %.lr.ph396.split.us.us.3.i.4, %.lr.ph396.split.us.us.4.i
  %.lcssa476.ph.ph.i = phi i64 [ %i.kx, %.lr.ph396.split.us.us.4.i ], [ %i.kw, %.lr.ph396.split.us.us.3.i ], [ %i.kv, %.lr.ph396.split.us.us.2.i ], [ %i.ku, %.lr.ph396.split.us.us.1.i ], [ %i.ku, %.lr.ph396.split.us.us.1.i.1 ], [ %i.kv, %.lr.ph396.split.us.us.2.i.1 ], [ %i.kw, %.lr.ph396.split.us.us.3.i.1 ], [ %i.ku, %.lr.ph396.split.us.us.1.i.2 ], [ %i.kv, %.lr.ph396.split.us.us.2.i.2 ], [ %i.kw, %.lr.ph396.split.us.us.3.i.2 ], [ %i.ku, %.lr.ph396.split.us.us.1.i.3 ], [ %i.kv, %.lr.ph396.split.us.us.2.i.3 ], [ %i.kw, %.lr.ph396.split.us.us.3.i.3 ], [ %i.ku, %.lr.ph396.split.us.us.1.i.4 ], [ %i.kv, %.lr.ph396.split.us.us.2.i.4 ], [ %i.kw, %.lr.ph396.split.us.us.3.i.4 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @190, i64 %i.kt, i64 %.lcssa476.ph.ph.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split402.us.i:                                   ; preds = %.lr.ph396.split.us.us.4.i
  %i.vt = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.vu = ptrtoint ptr %i.vt to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @191, i64 %i.vu) #8, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph426.split.1.i:                              ; preds = %.lr.ph426.split.preheader.i
  %i.vv = add i64 %.pre-phi510, 56, !nosanitize !9
  %.not143.1.i = icmp ugt ptr %i.is, inttoptr (i64 -57 to ptr)
  br i1 %.not143.1.i, label %.split431.us.i, label %bb.dg, !prof !10, !nosanitize !9

bb.dg:                                            ; preds = %.lr.ph426.split.1.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.is, i64 108
  store i8 0, ptr %i.vw, align 4, !tbaa !211
  %i.vx = getelementptr inbounds nuw i8, ptr %i.is, i64 88
  store <2 x float> zeroinitializer, ptr %i.vx, align 4, !tbaa !131
  %exitcond716.1.not.i = icmp eq i32 %.lcssa724.a, 2
  br i1 %exitcond716.1.not.i, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.2.i

.lr.ph426.split.2.i:                              ; preds = %bb.dg
  %i.vy = add i64 %.pre-phi510, 112, !nosanitize !9
  %.not143.2.i = icmp ugt ptr %i.is, inttoptr (i64 -113 to ptr)
  br i1 %.not143.2.i, label %.split431.us.i, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %.lr.ph426.split.2.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.is, i64 164
  store i8 0, ptr %i.vz, align 4, !tbaa !211
  %i.wa = getelementptr inbounds nuw i8, ptr %i.is, i64 144
  store <2 x float> zeroinitializer, ptr %i.wa, align 4, !tbaa !131
  %exitcond716.2.not.i = icmp eq i32 %.lcssa724.a, 3
  br i1 %exitcond716.2.not.i, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.3.i

.lr.ph426.split.3.i:                              ; preds = %bb.dh
  %i.wb = add i64 %.pre-phi510, 168, !nosanitize !9
  %.not143.3.i = icmp ugt ptr %i.is, inttoptr (i64 -169 to ptr)
  br i1 %.not143.3.i, label %.split431.us.i, label %bb.di, !prof !10, !nosanitize !9

bb.di:                                            ; preds = %.lr.ph426.split.3.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.is, i64 220
  store i8 0, ptr %i.wc, align 4, !tbaa !211
  %i.wd = getelementptr inbounds nuw i8, ptr %i.is, i64 200
  store <2 x float> zeroinitializer, ptr %i.wd, align 4, !tbaa !131
  %exitcond716.3.not.i = icmp eq i32 %.lcssa724.a, 4
  br i1 %exitcond716.3.not.i, label %b3ComputeConvexManifold.exit, label %.lr.ph426.split.4.i

.lr.ph426.split.4.i:                              ; preds = %bb.di
  %i.we = add i64 %.pre-phi510, 224, !nosanitize !9
  %.not143.4.i = icmp ugt ptr %i.is, inttoptr (i64 -225 to ptr)
  br i1 %.not143.4.i, label %.split431.us.i, label %bb.dj, !prof !10, !nosanitize !9

bb.dj:                                            ; preds = %.lr.ph426.split.4.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.is, i64 276
  store i8 0, ptr %i.wf, align 4, !tbaa !211
  %i.wg = getelementptr inbounds nuw i8, ptr %i.is, i64 256
  store <2 x float> zeroinitializer, ptr %i.wg, align 4, !tbaa !131
  %exitcond716.4.not.i = icmp eq i32 %.lcssa724.a, 5
  br i1 %exitcond716.4.not.i, label %b3ComputeConvexManifold.exit, label %.split428.us.i

b3ComputeConvexManifold.exit.thread:              ; preds = %bb.ao, %b3FreeManifolds.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.fq

b3ComputeConvexManifold.exit:                     ; preds = %bb.bp, %bb.bu, %bb.bz, %bb.ce, %bb.cj, %bb.bk, %.preheader.i, %.lr.ph426.split.preheader.i, %bb.dg, %bb.dh, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %7, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %b3ComputeConvexManifold.exit
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !88 ; 19 uses
  %i.wj = icmp ne ptr %i.wi, null, !nosanitize !9
  %i.wk = ptrtoint ptr %i.wi to i64, !nosanitize !9 ; 7 uses
  %i.wl = and i64 %i.wk, 3, !nosanitize !9
  %i.wm = icmp eq i64 %i.wl, 0, !nosanitize !9
  %i.wn = and i1 %i.wj, %i.wm, !nosanitize !9
  br i1 %i.wn, label %bb.dm, label %bb.dl, !prof !11, !nosanitize !9

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @153, i64 %i.wk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dm:                                            ; preds = %bb.dk
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 224 ; 4 uses
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.wo, align 4
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wi, i64 232 ; 2 uses
  %.sroa.277.0.copyload = load float, ptr %.sroa.277.0..sroa_idx, align 4
  %i.wp = fneg <2 x float> %.sroa.076.0.copyload
  %i.wq = fneg float %.sroa.277.0.copyload
  store <2 x float> %i.wp, ptr %i.wo, align 4
  store float %i.wq, ptr %.sroa.277.0..sroa_idx, align 4, !tbaa !131
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 264
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !133 ; 6 uses
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %bb.dp, label %.loopexit

bb.dn:                                            ; preds = %bb.dt
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @154, i64 5) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.do:                                            ; preds = %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1
  %.lcssa352 = phi i64 [ %i.xe, %.lr.ph.4 ], [ %i.wv, %.lr.ph.1 ], [ %i.wy, %.lr.ph.2 ], [ %i.xb, %.lr.ph.3 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @155, i64 %i.wk, i64 %.lcssa352) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.wi, i64 12, i1 false)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.wi, ptr noundef nonnull align 4 dereferenceable(12) %i.wu, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.wu, ptr noundef nonnull align 1 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond506.not = icmp eq i32 %i.ws, 1
  br i1 %exitcond506.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.dp
  %i.wv = add i64 %i.wk, 56, !nosanitize !9
  %.not161.1 = icmp ugt ptr %i.wi, inttoptr (i64 -57 to ptr)
  br i1 %.not161.1, label %bb.do, label %bb.dq, !prof !10, !nosanitize !9

bb.dq:                                            ; preds = %.lr.ph.1
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 56 ; 2 uses
end_hunk_2
