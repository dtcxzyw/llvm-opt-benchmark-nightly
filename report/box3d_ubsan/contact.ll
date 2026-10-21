Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3DestroyContact:bb.a
  unreachable, !nosanitize !9

bb.de:                                            ; preds = %bb.dc
  %i.og = getelementptr inbounds nuw i8, ptr %i.np, i64 48 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !124 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.np, i64 56 ; 3 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !79 ; 2 uses
  %i.ok = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.oj, i32 -1) ; 2 uses
  %i.ol = extractvalue { i32, i1 } %i.ok, 0, !nosanitize !9 ; 6 uses
  %i.om = extractvalue { i32, i1 } %i.ok, 1, !nosanitize !9
  br i1 %i.om, label %bb.df, label %bb.dg, !prof !10, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  %i.on = zext i32 %i.oj to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @148, i64 %i.on, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dg:                                            ; preds = %bb.de
  store i32 %i.ol, ptr %i.oi, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.ob, %i.ol
  br i1 %.not.i, label %bb.ea, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oo = add i32 %i.ob, 536870912
  %i.op = icmp ult i32 %i.oo, 1073741824
  br i1 %i.op, label %bb.dj, label %bb.di, !prof !11, !nosanitize !9

bb.di:                                            ; preds = %bb.dh
  %i.oq = zext i32 %i.ob to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @149, i64 %i.oq, i64 4) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dj:                                            ; preds = %bb.dh
  %i.or = shl nsw i32 %i.ob, 2
  %i.os = sext i32 %i.or to i64                   ; 2 uses
  %i.ot = getelementptr inbounds i8, ptr %i.oh, i64 %i.os
  %i.ou = ptrtoint ptr %i.oh to i64, !nosanitize !9 ; 6 uses
  %i.ov = add i64 %i.ou, %i.os, !nosanitize !9    ; 3 uses
  %i.ow = icmp ne ptr %i.oh, null                 ; 3 uses
  %i.ox = icmp eq i64 %i.ov, 0
  %i.oy = xor i1 %i.ow, %i.ox
  %i.oz = icmp uge i64 %i.ov, %i.ou, !nosanitize !9
  %i.pa = icmp slt i32 %i.ob, 0                   ; 2 uses
  %i.pb = xor i1 %i.pa, %i.oz
  %i.pc = and i1 %i.oy, %i.pb, !nosanitize !9
  br i1 %i.pc, label %bb.dl, label %bb.dk, !prof !11, !nosanitize !9

bb.dk:                                            ; preds = %bb.dj
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @150, i64 %i.ou, i64 %i.ov) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %bb.dj
  %i.pd = add i32 %i.ol, 536870912
  %i.pe = icmp ult i32 %i.pd, 1073741824
  br i1 %i.pe, label %bb.dn, label %bb.dm, !prof !11, !nosanitize !9

bb.dm:                                            ; preds = %bb.dl
  %i.pf = zext i32 %i.ol to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @151, i64 %i.pf, i64 4) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dn:                                            ; preds = %bb.dl
  %i.pg = shl nsw i32 %i.ol, 2
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = getelementptr inbounds i8, ptr %i.oh, i64 %i.ph
  %i.pj = add i64 %i.ph, %i.ou, !nosanitize !9    ; 3 uses
  %i.pk = icmp eq i64 %i.pj, 0
  %i.pl = xor i1 %i.ow, %i.pk
  %i.pm = icmp uge i64 %i.pj, %i.ou, !nosanitize !9
  %i.pn = icmp slt i32 %i.ol, 0
  %i.po = xor i1 %i.pn, %i.pm
  %i.pp = and i1 %i.pl, %i.po, !nosanitize !9
  br i1 %i.pp, label %bb.dp, label %bb.do, !prof !11, !nosanitize !9

bb.do:                                            ; preds = %bb.dn
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @152, i64 %i.ou, i64 %i.pj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dp:                                            ; preds = %bb.dn
  br i1 %i.ow, label %b3RemoveHelper.exit, label %bb.dq, !prof !11, !nosanitize !9

bb.dq:                                            ; preds = %bb.dp
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @153) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3RemoveHelper.exit:                              ; preds = %bb.dp
  %i.pq = load i32, ptr %i.pi, align 1
  store i32 %i.pq, ptr %i.ot, align 1
  %i.pr = load i32, ptr %i.oi, align 8, !tbaa !79
  %.not210 = icmp eq i32 %i.pr, -1
  br i1 %.not210, label %bb.ea, label %bb.dr

bb.dr:                                            ; preds = %b3RemoveHelper.exit
  %i.ps = load ptr, ptr %i.og, align 8, !tbaa !124 ; 3 uses
  %i.pt = sext i32 %i.ob to i64                   ; 2 uses
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.pt ; 2 uses
  %i.pv = shl nsw i64 %i.pt, 2
  %i.pw = ptrtoint ptr %i.ps to i64, !nosanitize !9 ; 3 uses
  %i.px = add i64 %i.pv, %i.pw, !nosanitize !9    ; 3 uses
  %i.py = icmp ne ptr %i.ps, null, !nosanitize !9 ; 2 uses
  %i.pz = icmp eq i64 %i.px, 0
  %i.qa = xor i1 %i.py, %i.pz
  %i.qb = icmp uge i64 %i.px, %i.pw, !nosanitize !9
  %i.qc = xor i1 %i.pa, %i.qb
  %i.qd = and i1 %i.qa, %i.qc, !nosanitize !9
  br i1 %i.qd, label %bb.dt, label %bb.ds, !prof !11, !nosanitize !9

bb.ds:                                            ; preds = %bb.dr
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.pw, i64 %i.px) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dt:                                            ; preds = %bb.dr
  %i.qe = ptrtoint ptr %i.pu to i64, !nosanitize !9 ; 2 uses
  %i.qf = and i64 %i.qe, 3, !nosanitize !9
  %i.qg = icmp eq i64 %i.qf, 0, !nosanitize !9
  %i.qh = and i1 %i.py, %i.qg
  br i1 %i.qh, label %bb.dv, label %bb.du, !prof !11, !nosanitize !9

bb.du:                                            ; preds = %bb.dt
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %i.qe) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dv:                                            ; preds = %bb.dt
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %i.qj = load i32, ptr %i.pu, align 4, !tbaa !79 ; 2 uses
  %i.qk = load ptr, ptr %i.qi, align 8, !tbaa !71 ; 3 uses
  %i.ql = sext i32 %i.qj to i64                   ; 2 uses
  %i.qm = getelementptr inbounds [216 x i8], ptr %i.qk, i64 %i.ql ; 2 uses
  %i.qn = mul nsw i64 %i.ql, 216
  %i.qo = ptrtoint ptr %i.qk to i64, !nosanitize !9 ; 3 uses
  %i.qp = add i64 %i.qn, %i.qo, !nosanitize !9    ; 3 uses
  %i.qq = icmp ne ptr %i.qk, null, !nosanitize !9 ; 2 uses
  %i.qr = icmp eq i64 %i.qp, 0
  %i.qs = xor i1 %i.qq, %i.qr
  %i.qt = icmp uge i64 %i.qp, %i.qo, !nosanitize !9
  %i.qu = icmp slt i32 %i.qj, 0
  %i.qv = xor i1 %i.qu, %i.qt
  %i.qw = and i1 %i.qs, %i.qv, !nosanitize !9
  br i1 %i.qw, label %bb.dx, label %bb.dw, !prof !11, !nosanitize !9

bb.dw:                                            ; preds = %bb.dv
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.qo, i64 %i.qp) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dx:                                            ; preds = %bb.dv
  %i.qx = ptrtoint ptr %i.qm to i64, !nosanitize !9 ; 2 uses
  %i.qy = and i64 %i.qx, 7, !nosanitize !9
  %i.qz = icmp eq i64 %i.qy, 0, !nosanitize !9
  %i.ra = and i1 %i.qq, %i.qz
  br i1 %i.ra, label %bb.dz, label %bb.dy, !prof !11, !nosanitize !9

bb.dy:                                            ; preds = %bb.dx
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.qx) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dz:                                            ; preds = %bb.dx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i32 %i.ob, ptr %i.rb, align 8, !tbaa !110
  br label %bb.ea

bb.ea:                                            ; preds = %bb.cz, %bb.dz, %b3RemoveHelper.exit, %bb.dg
  store i32 -1, ptr %i.jg, align 8, !tbaa !98
  store i32 -1, ptr %1, align 8, !tbaa !99
  store i32 -1, ptr %i.ne, align 4, !tbaa !100
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 -1, ptr %i.rc, align 8, !tbaa !110
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 3976
  tail call void @b3FreeId(ptr noundef nonnull %i.rd, i32 noundef %i.jh) #7
  %brmerge.not = and i1 %2, %.not191
  br i1 %brmerge.not, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.re = tail call zeroext i1 @b3WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.br) #7 ; 0 uses
  %i.rf = tail call zeroext i1 @b3WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.cd) #7 ; 0 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  ret void
}

declare zeroext i1 @b3RemoveKey(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @b3UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3FreeId(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @b3WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3UpdateContact(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, <2 x float> %4, float %5, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %6, ptr noundef %7, <2 x float> %8, float %9, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %10, i1 noundef zeroext %11, ptr nofree noundef readonly byval(%struct.b3Arena) align 8 captures(none) %12) local_unnamed_addr #6 !func_sanitize !166 {
bb.a:
  %13 = alloca %struct.b3ChildShape, align 8      ; 20 uses
  %14 = alloca %struct.b3Shape, align 8           ; 17 uses
  %15 = alloca %struct.b3Transform, align 8       ; 7 uses
  %16 = alloca %struct.b3Transform, align 8       ; 7 uses
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92
  switch i32 %i.g, label %bb.at [
    i32 1, label %bb.d
    i32 4, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.f, label %bb.e, !prof !11, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %13, ptr noundef %i.p, i32 noundef %i.n) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %14, ptr noundef nonnull align 8 dereferenceable(232) %3, i64 232, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.s = load i32, ptr %i.q, align 4, !tbaa !116  ; 3 uses
  store i32 %i.s, ptr %i.r, align 8, !tbaa !92
  %.not176 = icmp eq i32 %i.s, 4
  br i1 %.not176, label %.thread, label %b3GetShapeMaterials.exit

b3GetShapeMaterials.exit:                         ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = select i1 %.not.i, ptr %i.v, ptr %i.u    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.w, i64 %i.aa ; 2 uses
  %i.ac = mul nsw i64 %i.aa, 40
  %i.ad = ptrtoint ptr %i.w to i64, !nosanitize !9 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !9    ; 3 uses
  %i.af = icmp ne i64 %i.ae, 0, !nosanitize !9
  %i.ag = icmp uge i64 %i.ae, %i.ad, !nosanitize !9
  %i.ah = icmp slt i32 %i.z, 0
  %i.ai = xor i1 %i.ah, %i.ag
  %i.aj = and i1 %i.af, %i.ai, !nosanitize !9
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !11, !nosanitize !9

bb.g:                                             ; preds = %b3GetShapeMaterials.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.ad, i64 %i.ae) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %b3GetShapeMaterials.exit
  %i.ak = ptrtoint ptr %i.ab to i64, !nosanitize !9 ; 2 uses
  %i.al = and i64 %i.ak, 7, !nosanitize !9
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !9
  br i1 %i.am, label %bb.j, label %bb.i, !prof !11, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.ak) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !tbaa.struct !168
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr null, ptr %i.an, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 100
  store i32 1, ptr %i.ao, align 4, !tbaa !169
  switch i32 %i.s, label %bb.x [
    i32 0, label %bb.k
    i32 3, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ap, ptr noundef nonnull align 8 dereferenceable(28) %13, i64 28, i1 false), !tbaa.struct !170
  %i.aq = icmp ne ptr %7, null, !nosanitize !9
  %i.ar = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !9
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !9
  %i.au = and i1 %i.aq, %i.at, !nosanitize !9
  br i1 %i.au, label %bb.m, label %bb.l, !prof !11, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @114, i64 %i.ar) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !92
  %i.ax = icmp eq i32 %i.aw, 3
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, ptr noundef nonnull %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.az = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.p:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %13, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 200
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.0284.0.copyload = load <2 x float>, ptr %i.bc, align 8 ; 4 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.4285.0.copyload = load float, ptr %.sroa.4285.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 44
  %.sroa.5286.0.copyload = load <2 x float>, ptr %.sroa.5286.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 52
  %.sroa.6287.0.copyload = load <2 x float>, ptr %.sroa.6287.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5279.0.copyload = load float, ptr %.sroa.5279.0..sroa_idx, align 8
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.6280.0.copyload = load <2 x float>, ptr %.sroa.6280.0..sroa_idx, align 4 ; 8 uses
  %.sroa.8282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.8282.0.copyload = load <2 x float>, ptr %.sroa.8282.0..sroa_idx, align 4 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 12
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6280.0.copyload, i64 0
  %i.be = shufflevector <2 x float> %.sroa.6287.0.copyload, <2 x float> %.sroa.5286.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bf = shufflevector <2 x float> %.sroa.6280.0.copyload, <2 x float> %.sroa.8282.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = shufflevector <2 x float> %.sroa.5286.0.copyload, <2 x float> %.sroa.6287.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.bi = shufflevector <2 x float> %.sroa.8282.0.copyload, <2 x float> %.sroa.6280.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = fsub <2 x float> %i.bg, %i.bj
  %i.bl = shufflevector <2 x float> %.sroa.8282.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bm = fmul <2 x float> %.sroa.5286.0.copyload, %i.bl
  %i.bn = fadd <2 x float> %i.bm, %i.bk
  %i.bo = shufflevector <2 x float> %.sroa.6287.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = fmul <2 x float> %i.bo, %.sroa.6280.0.copyload
  %i.bq = fadd <2 x float> %i.bp, %i.bn
  %i.br = fmul <2 x float> %i.bo, %.sroa.8282.0.copyload ; 2 uses
  %i.bs = shufflevector <2 x float> %.sroa.5286.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = shufflevector <2 x float> %.sroa.6280.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = shufflevector <2 x float> %.sroa.5286.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x float> %i.bv, %.sroa.6280.0.copyload ; 2 uses
  %i.bx = fsub <2 x float> %i.bw, %i.bu
  %i.by = fadd <2 x float> %i.bw, %i.bu
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x float> %.sroa.6287.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %.sroa.8282.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = fadd <2 x float> %i.bz, %i.cc           ; 2 uses
  %i.ce = fadd <2 x float> %i.br, %i.cd
  %i.cf = fsub <2 x float> %i.br, %i.cd
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> %i.cf, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bq, ptr %i.bd, align 4, !tbaa !131, !alias.scope !171
  %.sroa.4.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <2 x float> %i.cg, ptr %.sroa.4.0..sroa_idx.i183, align 4, !tbaa !131, !alias.scope !171
  %i.ch = load <2 x float>, ptr %6, align 8
  %foldExtExtBinop = fmul <2 x float> %.sroa.0284.0.copyload, %.sroa.8282.0.copyload
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cj = fmul float %.sroa.4285.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.ck = fsub float %i.ci, %i.cj
  %i.cl = shufflevector <2 x float> %.sroa.0284.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cm = insertelement <2 x float> %i.cl, float %.sroa.4285.0.copyload, i64 1 ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %.sroa.6280.0.copyload
  %i.co = fmul <2 x float> %.sroa.0284.0.copyload, %i.bf
  %i.cp = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cq = insertelement <2 x float> %i.cl, float %.sroa.4285.0.copyload, i64 0
  %i.cr = fmul <2 x float> %i.cq, %i.bl
  %i.cs = fmul <2 x float> %i.cm, %i.bl
  %i.ct = fadd <2 x float> %i.cr, %i.cp           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cv = insertelement <2 x float> %i.cu, float %i.ck, i64 0
  %i.cw = fadd <2 x float> %i.cs, %i.cv           ; 2 uses
  %i.cx = fmul <2 x float> %i.bf, %i.ct
  %i.cy = fmul <2 x float> %i.bi, %i.cw
  %i.cz = fsub <2 x float> %i.cx, %i.cy
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.db = fmul <2 x float> %.sroa.6280.0.copyload, %i.da ; 2 uses
  %shift = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop764 = fsub <2 x float> %i.db, %shift
  %i.dc = extractelement <2 x float> %foldExtExtBinop764, i64 0
  %i.dd = fmul <2 x float> %i.cz, splat (float 2.000000e+00)
  %i.de = fadd <2 x float> %.sroa.0284.0.copyload, %i.dd
  %i.df = fmul float %i.dc, 2.000000e+00
  %i.dg = fadd float %.sroa.4285.0.copyload, %i.df
  %i.dh = fadd <2 x float> %i.ch, %i.de
  %i.di = fadd float %.sroa.5279.0.copyload, %i.dg
  store <2 x float> %i.dh, ptr %15, align 8, !tbaa !131
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.di, ptr %.sroa.5290.0..sroa_idx, align 8, !tbaa !131
  %i.dj = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %15, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %bb.ac

.thread:                                          ; preds = %bb.f
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.0268.0.copyload = load <2 x float>, ptr %i.dl, align 8 ; 4 uses
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.4269.0.copyload = load float, ptr %.sroa.4269.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 44
  %.sroa.5270.0.copyload = load <2 x float>, ptr %.sroa.5270.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 52
  %.sroa.6271.0.copyload = load <2 x float>, ptr %.sroa.6271.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 12
  %.sroa.09.0.vec.extract.i.i199 = extractelement <2 x float> %.sroa.6.0.copyload, i64 0
  %i.dn = shufflevector <2 x float> %.sroa.6271.0.copyload, <2 x float> %.sroa.5270.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.do = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dp = fmul <2 x float> %i.dn, %i.do
  %i.dq = shufflevector <2 x float> %.sroa.5270.0.copyload, <2 x float> %.sroa.6271.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.dr = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ds = fmul <2 x float> %i.dq, %i.dr
  %i.dt = fsub <2 x float> %i.dp, %i.ds
  %i.du = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.dv = fmul <2 x float> %.sroa.5270.0.copyload, %i.du
  %i.dw = fadd <2 x float> %i.dv, %i.dt
  %i.dx = shufflevector <2 x float> %.sroa.6271.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dy = fmul <2 x float> %i.dx, %.sroa.6.0.copyload
  %i.dz = fadd <2 x float> %i.dy, %i.dw
  %i.ea = fmul <2 x float> %i.dx, %.sroa.8.0.copyload ; 2 uses
  %i.eb = shufflevector <2 x float> %.sroa.5270.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = fmul <2 x float> %i.eb, %i.ec           ; 2 uses
  %i.ee = shufflevector <2 x float> %.sroa.5270.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ef = fmul <2 x float> %i.ee, %.sroa.6.0.copyload ; 2 uses
  %i.eg = fsub <2 x float> %i.ef, %i.ed
  %i.eh = fadd <2 x float> %i.ef, %i.ed
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <2 x i32> <i32 0, i32 3>
  %i.ej = shufflevector <2 x float> %.sroa.6271.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.el = fmul <2 x float> %i.ej, %i.ek
  %i.em = fadd <2 x float> %i.ei, %i.el           ; 2 uses
  %i.en = fadd <2 x float> %i.ea, %i.em
  %i.eo = fsub <2 x float> %i.ea, %i.em
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dz, ptr %i.dm, align 4, !tbaa !131, !alias.scope !175
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 20
  store <2 x float> %i.ep, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !131, !alias.scope !175
  %i.eq = load <2 x float>, ptr %6, align 8
  %foldExtExtBinop766 = fmul <2 x float> %.sroa.0268.0.copyload, %.sroa.8.0.copyload
  %i.er = extractelement <2 x float> %foldExtExtBinop766, i64 0
  %i.es = fmul float %.sroa.4269.0.copyload, %.sroa.09.0.vec.extract.i.i199
  %i.et = fsub float %i.er, %i.es
  %i.eu = shufflevector <2 x float> %.sroa.0268.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ev = insertelement <2 x float> %i.eu, float %.sroa.4269.0.copyload, i64 1 ; 2 uses
  %i.ew = fmul <2 x float> %i.ev, %.sroa.6.0.copyload
  %i.ex = fmul <2 x float> %.sroa.0268.0.copyload, %i.do
  %i.ey = fsub <2 x float> %i.ew, %i.ex           ; 2 uses
  %i.ez = insertelement <2 x float> %i.eu, float %.sroa.4269.0.copyload, i64 0
  %i.fa = fmul <2 x float> %i.ez, %i.du
  %i.fb = fmul <2 x float> %i.ev, %i.du
  %i.fc = fadd <2 x float> %i.fa, %i.ey           ; 2 uses
  %i.fd = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %i.et, i64 0
  %i.ff = fadd <2 x float> %i.fb, %i.fe           ; 2 uses
  %i.fg = fmul <2 x float> %i.do, %i.fc
  %i.fh = fmul <2 x float> %i.dr, %i.ff
  %i.fi = fsub <2 x float> %i.fg, %i.fh
  %i.fj = shufflevector <2 x float> %i.ff, <2 x float> %i.fc, <2 x i32> <i32 0, i32 3>
  %i.fk = fmul <2 x float> %.sroa.6.0.copyload, %i.fj ; 2 uses
  %shift768 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop769 = fsub <2 x float> %i.fk, %shift768
  %i.fl = extractelement <2 x float> %foldExtExtBinop769, i64 0
  %i.fm = fmul <2 x float> %i.fi, splat (float 2.000000e+00)
  %i.fn = fadd <2 x float> %.sroa.0268.0.copyload, %i.fm
  %i.fo = fmul float %i.fl, 2.000000e+00
  %i.fp = fadd float %.sroa.4269.0.copyload, %i.fo
  %i.fq = fadd <2 x float> %i.eq, %i.fn
  %i.fr = fadd float %.sroa.5.0.copyload, %i.fp
  store <2 x float> %i.fq, ptr %16, align 8, !tbaa !131
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.fr, ptr %.sroa.5274.0..sroa_idx, align 8, !tbaa !131
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.ft = call zeroext i1 @b3ComputeMeshManifolds(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %i.fs, ptr noundef nonnull byval(%struct.b3Transform) align 8 %16, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext %11, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12) #7 ; 2 uses
  br i1 %i.ft, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 198
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !117
  %i.fw = and i8 %i.fv, 8
  %.not178 = icmp eq i8 %i.fw, 0
  br i1 %.not178, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fx = icmp ne ptr %7, null, !nosanitize !9
  %i.fy = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.fz = and i64 %i.fy, 7, !nosanitize !9
  %i.ga = icmp eq i64 %i.fz, 0, !nosanitize !9
  %i.gb = and i1 %i.fx, %i.ga, !nosanitize !9
  br i1 %i.gb, label %bb.t, label %bb.s, !prof !11, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.fy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 198
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !117
  %i.ge = and i8 %i.gd, 8
  %.not180 = icmp eq i8 %i.ge, 0
  br i1 %.not180, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !113
  %i.gh = or i32 %i.gg, 1048576
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !113
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %.thread
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !113
  %i.gk = and i32 %i.gj, -1048577
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !113
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %bb.ac

bb.x:                                             ; preds = %bb.j
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !176
  %i.gm = icmp ne ptr %7, null, !nosanitize !9
  %i.gn = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.go = and i64 %i.gn, 7, !nosanitize !9
  %i.gp = icmp eq i64 %i.go, 0, !nosanitize !9
  %i.gq = and i1 %i.gm, %i.gp, !nosanitize !9
  br i1 %i.gq, label %bb.z, label %bb.y, !prof !11, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @116, i64 %i.gn) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !92
  switch i32 %i.gs, label %bb.ab [
    i32 0, label %bb.aa
    i32 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.gt = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, ptr noundef nonnull %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gu = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.p, %bb.aa, %bb.ab, %bb.w, %bb.n, %bb.o
  %.0.in = phi i1 [ %i.ay, %bb.n ], [ %i.az, %bb.o ], [ %i.dj, %bb.p ], [ %i.ft, %bb.w ], [ %i.gt, %bb.aa ], [ %i.gu, %bb.ab ]
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !87 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.gz = load <2 x float>, ptr %i.gy, align 4    ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.hb = load <2 x float>, ptr %i.ha, align 4    ; 4 uses
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.gx, align 8 ; 4 uses
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.269.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 8 ; 4 uses
  %.sroa.09.0.vec.extract.i.i222 = extractelement <2 x float> %i.gz, i64 0
  %foldExtExtBinop771 = fmul <2 x float> %i.hb, %.sroa.068.0.copyload
  %i.hc = extractelement <2 x float> %foldExtExtBinop771, i64 0
  %i.hd = fmul float %.sroa.09.0.vec.extract.i.i222, %.sroa.269.0.copyload
  %i.he = fsub float %i.hc, %i.hd
  %i.hf = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hg = insertelement <2 x float> %i.hf, float %.sroa.269.0.copyload, i64 1 ; 2 uses
  %i.hh = fmul <2 x float> %i.gz, %i.hg
  %i.hi = shufflevector <2 x float> %i.gz, <2 x float> %i.hb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.hj = fmul <2 x float> %i.hi, %.sroa.068.0.copyload
  %i.hk = fsub <2 x float> %i.hh, %i.hj           ; 2 uses
  %i.hl = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hm = insertelement <2 x float> %i.hf, float %.sroa.269.0.copyload, i64 0
  %i.hn = fmul <2 x float> %i.hl, %i.hm
  %i.ho = fmul <2 x float> %i.hl, %i.hg
  %i.hp = fadd <2 x float> %i.hn, %i.hk           ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = insertelement <2 x float> %i.hq, float %i.he, i64 0
  %i.hs = fadd <2 x float> %i.ho, %i.hr           ; 2 uses
  %i.ht = fmul <2 x float> %i.hi, %i.hp
  %i.hu = shufflevector <2 x float> %i.hb, <2 x float> %i.gz, <2 x i32> <i32 0, i32 2>
  %i.hv = fmul <2 x float> %i.hu, %i.hs
  %i.hw = fsub <2 x float> %i.ht, %i.hv
  %foldExtExtBinop773 = fmul <2 x float> %i.gz, %i.hs
  %foldExtExtBinop775 = fmul <2 x float> %i.gz, %i.hp
  %shift777 = shufflevector <2 x float> %foldExtExtBinop775, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop778 = fsub <2 x float> %foldExtExtBinop773, %shift777
  %i.hx = extractelement <2 x float> %foldExtExtBinop778, i64 0
  %i.hy = fmul <2 x float> %i.hw, splat (float 2.000000e+00)
  %i.hz = fadd <2 x float> %.sroa.068.0.copyload, %i.hy ; 5 uses
  %i.ia = fmul float %i.hx, 2.000000e+00
  %i.ib = fadd float %.sroa.269.0.copyload, %i.ia ; 5 uses
  %i.ic = icmp sgt i32 %i.gw, 0
  br i1 %i.ic, label %.lr.ph432.split, label %.split

.lr.ph432.split:                                  ; preds = %bb.ac
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !88
  %.fr509 = freeze ptr %i.ie                      ; 3 uses
  %i.if = ptrtoint ptr %.fr509 to i64, !nosanitize !9 ; 3 uses
  %.not510 = icmp eq ptr %.fr509, null, !nosanitize !9
  br i1 %.not510, label %.split437, label %.lr.ph432.split.split.preheader, !prof !10

.lr.ph432.split.split.preheader:                  ; preds = %.lr.ph432.split
  %wide.trip.count614 = zext nneg i32 %i.gw to i64
  br label %.lr.ph432.split.split

.split:                                           ; preds = %._crit_edge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br i1 %.0.in, label %._crit_edge630, label %._crit_edge629

.lr.ph432.split.split:                            ; preds = %.lr.ph432.split.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph432.split.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [268 x i8], ptr %.fr509, i64 %indvars.iv ; 17 uses
  %i.ih = mul nuw nsw i64 %indvars.iv, 268
  %i.ii = add i64 %i.ih, %i.if, !nosanitize !9    ; 2 uses
  %.not511 = icmp ult i64 %i.ii, %i.if, !nosanitize !9
  br i1 %.not511, label %.split434.us, label %bb.ad, !prof !10, !nosanitize !9

.split434.us:                                     ; preds = %.lr.ph432.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.if, i64 %i.ii) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %.lr.ph432.split.split
  %i.ij = ptrtoint ptr %i.ig to i64, !nosanitize !9 ; 4 uses
  %i.ik = and i64 %i.ij, 3, !nosanitize !9
  %i.il = icmp eq i64 %i.ik, 0, !nosanitize !9
  br i1 %i.il, label %bb.ae, label %.split437, !prof !11, !nosanitize !9

.split437:                                        ; preds = %bb.ad, %.lr.ph432.split
  %.us-phi438 = phi i64 [ 0, %.lr.ph432.split ], [ %i.ij, %bb.ad ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %.us-phi438) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@b3UpdateContact:bb.a
  %i.nd = icmp uge i64 %i.na, %i.mw, !nosanitize !9
  %i.ne = and i1 %i.nc, %i.nd, !nosanitize !9
  br i1 %i.ne, label %.preheader.us, label %.split487.us, !prof !11, !nosanitize !9

.preheader.us:                                    ; preds = %.lr.ph
  %i.nf = ptrtoint ptr %i.my to i64, !nosanitize !9 ; 4 uses
  %i.ng = and i64 %i.nf, 3, !nosanitize !9
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !9
  %i.ni = and i1 %i.mx, %i.nh
  br i1 %i.ni, label %.lr.ph440.split.split.us.us, label %.preheader._crit_edge, !prof !177, !nosanitize !9

.lr.ph440.split.split.us.us:                      ; preds = %.preheader.us
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 264
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !133 ; 6 uses
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %.lr.ph476.us.preheader, label %.split444.us483

.lr.ph476.us.preheader:                           ; preds = %.lr.ph440.split.split.us.us
  %.sroa.012.0.copyload.us.us = load <2 x float>, ptr %i.my, align 4
  %.sroa.213.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %.sroa.213.0.copyload.us.us = load float, ptr %.sroa.213.0..sroa_idx.us.us, align 4
  %i.nm = fsub <2 x float> %.sroa.012.0.copyload.us.us, %i.lj
  %i.nn = fsub float %.sroa.213.0.copyload.us.us, %i.ll
  store <2 x float> %i.nm, ptr %i.my, align 4, !tbaa !131
  store float %i.nn, ptr %.sroa.213.0..sroa_idx.us.us, align 4, !tbaa !131
  %i.no = getelementptr inbounds nuw i8, ptr %i.my, i64 12 ; 2 uses
  %.sroa.03.0.copyload.us.us = load <2 x float>, ptr %i.no, align 4
  %.sroa.24.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.my, i64 20 ; 2 uses
  %.sroa.24.0.copyload.us.us = load float, ptr %.sroa.24.0..sroa_idx.us.us, align 4
  %i.np = fsub <2 x float> %.sroa.03.0.copyload.us.us, %i.mn
  %i.nq = fsub float %.sroa.24.0.copyload.us.us, %i.mp
  store <2 x float> %i.np, ptr %i.no, align 4, !tbaa !131
  store float %i.nq, ptr %.sroa.24.0..sroa_idx.us.us, align 4, !tbaa !131
  %exitcond620.not = icmp eq i32 %i.nk, 1
  br i1 %exitcond620.not, label %.split444.us483, label %.lr.ph476.us.1

.lr.ph476.us.1:                                   ; preds = %.lr.ph476.us.preheader
  %.not181.us.us.1 = icmp ugt ptr %i.my, inttoptr (i64 -57 to ptr)
  br i1 %.not181.us.us.1, label %.split449.us, label %bb.au, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %.lr.ph476.us.1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.my, i64 56 ; 2 uses
  %.sroa.012.0.copyload.us.us.1 = load <2 x float>, ptr %i.nr, align 4
  %.sroa.213.0..sroa_idx.us.us.1 = getelementptr inbounds nuw i8, ptr %i.my, i64 64 ; 2 uses
  %.sroa.213.0.copyload.us.us.1 = load float, ptr %.sroa.213.0..sroa_idx.us.us.1, align 4
  %i.ns = fsub <2 x float> %.sroa.012.0.copyload.us.us.1, %i.lj
  %i.nt = fsub float %.sroa.213.0.copyload.us.us.1, %i.ll
  store <2 x float> %i.ns, ptr %i.nr, align 4, !tbaa !131
  store float %i.nt, ptr %.sroa.213.0..sroa_idx.us.us.1, align 4, !tbaa !131
  %i.nu = getelementptr inbounds nuw i8, ptr %i.my, i64 68 ; 2 uses
  %.sroa.03.0.copyload.us.us.1 = load <2 x float>, ptr %i.nu, align 4
  %.sroa.24.0..sroa_idx.us.us.1 = getelementptr inbounds nuw i8, ptr %i.my, i64 76 ; 2 uses
  %.sroa.24.0.copyload.us.us.1 = load float, ptr %.sroa.24.0..sroa_idx.us.us.1, align 4
  %i.nv = fsub <2 x float> %.sroa.03.0.copyload.us.us.1, %i.mn
  %i.nw = fsub float %.sroa.24.0.copyload.us.us.1, %i.mp
  store <2 x float> %i.nv, ptr %i.nu, align 4, !tbaa !131
  store float %i.nw, ptr %.sroa.24.0..sroa_idx.us.us.1, align 4, !tbaa !131
  %exitcond620.1.not = icmp eq i32 %i.nk, 2
  br i1 %exitcond620.1.not, label %.split444.us483, label %.lr.ph476.us.2

.lr.ph476.us.2:                                   ; preds = %bb.au
  %.not181.us.us.2 = icmp ugt ptr %i.my, inttoptr (i64 -113 to ptr)
  br i1 %.not181.us.us.2, label %.split449.us, label %bb.av, !prof !10, !nosanitize !9

bb.av:                                            ; preds = %.lr.ph476.us.2
  %i.nx = getelementptr inbounds nuw i8, ptr %i.my, i64 112 ; 2 uses
  %.sroa.012.0.copyload.us.us.2 = load <2 x float>, ptr %i.nx, align 4
  %.sroa.213.0..sroa_idx.us.us.2 = getelementptr inbounds nuw i8, ptr %i.my, i64 120 ; 2 uses
  %.sroa.213.0.copyload.us.us.2 = load float, ptr %.sroa.213.0..sroa_idx.us.us.2, align 4
  %i.ny = fsub <2 x float> %.sroa.012.0.copyload.us.us.2, %i.lj
  %i.nz = fsub float %.sroa.213.0.copyload.us.us.2, %i.ll
  store <2 x float> %i.ny, ptr %i.nx, align 4, !tbaa !131
  store float %i.nz, ptr %.sroa.213.0..sroa_idx.us.us.2, align 4, !tbaa !131
  %i.oa = getelementptr inbounds nuw i8, ptr %i.my, i64 124 ; 2 uses
  %.sroa.03.0.copyload.us.us.2 = load <2 x float>, ptr %i.oa, align 4
  %.sroa.24.0..sroa_idx.us.us.2 = getelementptr inbounds nuw i8, ptr %i.my, i64 132 ; 2 uses
  %.sroa.24.0.copyload.us.us.2 = load float, ptr %.sroa.24.0..sroa_idx.us.us.2, align 4
  %i.ob = fsub <2 x float> %.sroa.03.0.copyload.us.us.2, %i.mn
  %i.oc = fsub float %.sroa.24.0.copyload.us.us.2, %i.mp
  store <2 x float> %i.ob, ptr %i.oa, align 4, !tbaa !131
  store float %i.oc, ptr %.sroa.24.0..sroa_idx.us.us.2, align 4, !tbaa !131
  %exitcond620.2.not = icmp eq i32 %i.nk, 3
  br i1 %exitcond620.2.not, label %.split444.us483, label %.lr.ph476.us.3

.lr.ph476.us.3:                                   ; preds = %bb.av
  %.not181.us.us.3 = icmp ugt ptr %i.my, inttoptr (i64 -169 to ptr)
  br i1 %.not181.us.us.3, label %.split449.us, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %.lr.ph476.us.3
  %i.od = getelementptr inbounds nuw i8, ptr %i.my, i64 168 ; 2 uses
  %.sroa.012.0.copyload.us.us.3 = load <2 x float>, ptr %i.od, align 4
  %.sroa.213.0..sroa_idx.us.us.3 = getelementptr inbounds nuw i8, ptr %i.my, i64 176 ; 2 uses
  %.sroa.213.0.copyload.us.us.3 = load float, ptr %.sroa.213.0..sroa_idx.us.us.3, align 4
  %i.oe = fsub <2 x float> %.sroa.012.0.copyload.us.us.3, %i.lj
  %i.of = fsub float %.sroa.213.0.copyload.us.us.3, %i.ll
  store <2 x float> %i.oe, ptr %i.od, align 4, !tbaa !131
  store float %i.of, ptr %.sroa.213.0..sroa_idx.us.us.3, align 4, !tbaa !131
  %i.og = getelementptr inbounds nuw i8, ptr %i.my, i64 180 ; 2 uses
  %.sroa.03.0.copyload.us.us.3 = load <2 x float>, ptr %i.og, align 4
  %.sroa.24.0..sroa_idx.us.us.3 = getelementptr inbounds nuw i8, ptr %i.my, i64 188 ; 2 uses
  %.sroa.24.0.copyload.us.us.3 = load float, ptr %.sroa.24.0..sroa_idx.us.us.3, align 4
  %i.oh = fsub <2 x float> %.sroa.03.0.copyload.us.us.3, %i.mn
  %i.oi = fsub float %.sroa.24.0.copyload.us.us.3, %i.mp
  store <2 x float> %i.oh, ptr %i.og, align 4, !tbaa !131
  store float %i.oi, ptr %.sroa.24.0..sroa_idx.us.us.3, align 4, !tbaa !131
  %exitcond620.3.not = icmp eq i32 %i.nk, 4
  br i1 %exitcond620.3.not, label %.split444.us483, label %.lr.ph476.us.4

.lr.ph476.us.4:                                   ; preds = %bb.aw
  %.not181.us.us.4 = icmp ugt ptr %i.my, inttoptr (i64 -225 to ptr)
  br i1 %.not181.us.us.4, label %.split449.us, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %.lr.ph476.us.4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.my, i64 224 ; 2 uses
  %.sroa.012.0.copyload.us.us.4 = load <2 x float>, ptr %i.oj, align 4
  %.sroa.213.0..sroa_idx.us.us.4 = getelementptr inbounds nuw i8, ptr %i.my, i64 232 ; 2 uses
  %.sroa.213.0.copyload.us.us.4 = load float, ptr %.sroa.213.0..sroa_idx.us.us.4, align 4
  %i.ok = fsub <2 x float> %.sroa.012.0.copyload.us.us.4, %i.lj
  %i.ol = fsub float %.sroa.213.0.copyload.us.us.4, %i.ll
  store <2 x float> %i.ok, ptr %i.oj, align 4, !tbaa !131
  store float %i.ol, ptr %.sroa.213.0..sroa_idx.us.us.4, align 4, !tbaa !131
  %i.om = getelementptr inbounds nuw i8, ptr %i.my, i64 236 ; 2 uses
  %.sroa.03.0.copyload.us.us.4 = load <2 x float>, ptr %i.om, align 4
  %.sroa.24.0..sroa_idx.us.us.4 = getelementptr inbounds nuw i8, ptr %i.my, i64 244 ; 2 uses
  %.sroa.24.0.copyload.us.us.4 = load float, ptr %.sroa.24.0..sroa_idx.us.us.4, align 4
  %i.on = fsub <2 x float> %.sroa.03.0.copyload.us.us.4, %i.mn
  %i.oo = fsub float %.sroa.24.0.copyload.us.us.4, %i.mp
  store <2 x float> %i.on, ptr %i.om, align 4, !tbaa !131
  store float %i.oo, ptr %.sroa.24.0..sroa_idx.us.us.4, align 4, !tbaa !131
  %exitcond620.4.not = icmp eq i32 %i.nk, 5
  br i1 %exitcond620.4.not, label %.split444.us483, label %.split446.us

.split444.us483:                                  ; preds = %.lr.ph476.us.preheader, %bb.au, %bb.av, %bb.aw, %bb.ax, %.lr.ph440.split.split.us.us
  %exitcond626 = icmp eq i64 %indvars.iv621762, 2147483647
  br i1 %exitcond626, label %.split505.us, label %.lr.ph479.split.split.us, !prof !10, !nosanitize !9

._crit_edge480:                                   ; preds = %._crit_edge630
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %.pre-phi632) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split487.us:                                     ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @127, i64 %i.mw, i64 %i.na) #8, !nosanitize !9
  unreachable, !nosanitize !9

.preheader._crit_edge:                            ; preds = %.preheader.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @128, i64 %i.nf) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split446.us:                                     ; preds = %bb.ax
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @129, i64 5) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split449.us:                                     ; preds = %.lr.ph476.us.4, %.lr.ph476.us.3, %.lr.ph476.us.2, %.lr.ph476.us.1
  %.sink738 = phi i64 [ 168, %.lr.ph476.us.3 ], [ 112, %.lr.ph476.us.2 ], [ 56, %.lr.ph476.us.1 ], [ 224, %.lr.ph476.us.4 ]
  %i.op = add i64 %.sink738, %i.nf, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @130, i64 %i.nf, i64 %i.op) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split505.us:                                     ; preds = %.split444.us483
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @131, i64 2147483647, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split485.us:                                     ; preds = %.lr.ph479.split.split.us, %.lr.ph479
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !113
  %i.os = or i32 %i.or, 65536
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !113
  br label %bb.ba

._crit_edge629:                                   ; preds = %bb.at, %.split298, %.split
  %.pre-phi640 = phi i1 [ true, %.split ], [ true, %.split298 ], [ %i.kh, %bb.at ]
  %.pre-phi638 = phi i64 [ %i.i, %.split ], [ %i.jz, %.split298 ], [ %.pre631, %bb.at ]
  %i.ot = icmp ne ptr %2, null, !nosanitize !9
  %i.ou = and i1 %i.ot, %.pre-phi640, !nosanitize !9
  br i1 %i.ou, label %bb.az, label %bb.ay, !prof !11, !nosanitize !9

bb.ay:                                            ; preds = %._crit_edge629
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @132, i64 %.pre-phi638) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %._crit_edge629
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !113
  %i.ox = and i32 %i.ow, -65537
  store i32 %i.ox, ptr %i.ov, align 4, !tbaa !113
  br label %bb.ba

bb.ba:                                            ; preds = %.split485.us, %bb.az
  %.1.in295 = phi i1 [ true, %.split485.us ], [ false, %bb.az ]
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
  %12 = alloca [4 x %struct.b3ManifoldPoint], align 16 ; 22 uses
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
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 15 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 11 uses
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  br i1 %i.d, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @172, i64 %i.b) #8, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %i.h) #8, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @174, i64 %i.o) #8, !nosanitize !9
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
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %.0.i.i, ptr %i.be, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bg = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = extractelement <2 x float> %.sroa.8.0.copyload, i64 1 ; 3 uses
  %.sroa.4.8.vec.extract60.i.i = extractelement <2 x float> %.sroa.8.0.copyload, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract8.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0 ; 2 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7192.0.copyload, i64 0
  %i.bi = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract8.i.i.i
  %shift = shufflevector <2 x float> %.sroa.7192.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %.sroa.7.0.copyload
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fsub float %i.bi, %i.bj
  %i.bl = shufflevector <2 x float> %.sroa.7192.0.copyload, <2 x float> %.sroa.8193.0.copyload, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.bm = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.bn = fmul <4 x float> %i.bl, %i.bm           ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bq = fsub <2 x float> %i.bo, %i.bp
  %i.br = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bs = fmul <2 x float> %.sroa.7192.0.copyload, %i.br
  %i.bt = fadd <2 x float> %i.bs, %i.bq
  %i.bu = shufflevector <2 x float> %.sroa.8193.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x float> %i.bu, %.sroa.7.0.copyload
  %i.bw = fsub <2 x float> %i.bt, %i.bv
  %i.bx = fmul <2 x float> %.sroa.8193.0.copyload, %i.bg ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fadd float %i.bk, %i.by
  %i.ca = extractelement <2 x float> %i.bx, i64 1
  %i.cb = fsub float %i.bz, %i.ca
  %.sroa.231.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cc = shufflevector <2 x float> %.sroa.7192.0.copyload, <2 x float> %.sroa.8193.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ce = fmul <4 x float> %i.cc, %i.cd           ; 4 uses
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ch = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cj = fadd <2 x float> %i.ch, %i.ci
  %i.ck = fadd <2 x float> %i.cg, %i.cj
  %i.cl = fadd <2 x float> %i.cf, %i.ck
  %.sroa.231.12.vec.insert.i.i = shufflevector <2 x float> %.sroa.231.8.vec.insert.i.i, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.bw, ptr %i.bf, align 4, !tbaa !131, !alias.scope !195
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store <2 x float> %.sroa.231.12.vec.insert.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 4, !tbaa !131, !alias.scope !195
  %i.cm = fsub float %.sroa.6191.0.copyload, %.sroa.6.0.copyload ; 3 uses
  %i.cn = fsub <2 x float> %.sroa.0189.0.copyload, %.sroa.0.0.copyload ; 4 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = insertelement <2 x float> %i.co, float %i.cm, i64 1 ; 2 uses
  %i.cq = fmul <2 x float> %i.cp, %.sroa.7.0.copyload
  %i.cr = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cs = fmul <2 x float> %i.cn, %i.cr
  %i.ct = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cu = fmul <2 x float> %i.cn, %i.ct
  %i.cv = insertelement <2 x float> %i.co, float %i.cm, i64 0 ; 2 uses
  %i.cw = fmul <2 x float> %i.cv, %.sroa.7.0.copyload
  %i.cx = fsub <2 x float> %i.cq, %i.cu
  %i.cy = fsub <2 x float> %i.cs, %i.cw
  %i.cz = fmul <2 x float> %i.cv, %i.br
  %i.da = fmul <2 x float> %i.cp, %i.br
  %i.db = fsub <2 x float> %i.cx, %i.cz           ; 2 uses
  %i.dc = fsub <2 x float> %i.cy, %i.da           ; 2 uses
  %i.dd = fmul <2 x float> %i.ct, %i.db
  %i.de = fmul <2 x float> %i.cr, %i.dc
  %i.df = fsub <2 x float> %i.dd, %i.de
  %foldExtExtBinop498 = fmul <2 x float> %.sroa.7.0.copyload, %i.dc
  %foldExtExtBinop500 = fmul <2 x float> %.sroa.7.0.copyload, %i.db
  %shift502 = shufflevector <2 x float> %foldExtExtBinop500, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop503 = fsub <2 x float> %foldExtExtBinop498, %shift502
  %i.dg = extractelement <2 x float> %foldExtExtBinop503, i64 0
  %i.dh = fmul <2 x float> %i.df, splat (float 2.000000e+00)
  %i.di = fadd <2 x float> %i.cn, %i.dh
  %i.dj = fmul float %i.dg, 2.000000e+00
  %i.dk = fadd float %i.cm, %i.dj
  store <2 x float> %i.di, ptr %11, align 8, !tbaa !131, !alias.scope !195
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.dk, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !131, !alias.scope !195
  switch i32 %i.f, label %bb.x [
    i32 5, label %bb.t
    i32 0, label %bb.u
  ]

bb.t:                                             ; preds = %b3Bump.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 200
  call void @b3CollideSpheres(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #7
  br label %bb.an

bb.u:                                             ; preds = %b3Bump.exit.i
  %i.dn = icmp eq i32 %i.m, 5
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  br i1 %i.dn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @b3CollideCapsuleAndSphere(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #7
  br label %bb.an

bb.w:                                             ; preds = %bb.u
  call void @b3CollideCapsules(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #7
  br label %bb.an

bb.x:                                             ; preds = %b3Bump.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !114 ; 3 uses
  switch i32 %i.m, label %bb.aa [
    i32 5, label %bb.y
    i32 0, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  call void @b3CollideHullAndSphere(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.ds, ptr noundef nonnull %i.dr, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.s) #7
  br label %bb.an

bb.z:                                             ; preds = %bb.x
  call void @b3CollideHullAndCapsule(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.ds, ptr noundef nonnull %i.dr, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.s) #7
  br label %bb.an

bb.aa:                                            ; preds = %bb.x
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !114
  call void @b3CollideHulls(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.ds, ptr noundef %i.dt, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.s) #7
  %i.du = icmp ne ptr %0, null, !nosanitize !9
  %i.dv = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.dw = and i64 %i.dv, 7, !nosanitize !9
  %i.dx = icmp eq i64 %i.dw, 0, !nosanitize !9
  %i.dy = and i1 %i.du, %i.dx, !nosanitize !9
  br i1 %i.dy, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @175, i64 %i.dv) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !196 ; 3 uses
  %i.eb = sext i32 %1 to i64                      ; 2 uses
  %i.ec = getelementptr inbounds [3848 x i8], ptr %i.ea, i64 %i.eb ; 3 uses
  %i.ed = mul nsw i64 %i.eb, 3848
  %i.ee = ptrtoint ptr %i.ea to i64, !nosanitize !9 ; 4 uses
  %i.ef = add i64 %i.ed, %i.ee, !nosanitize !9    ; 3 uses
  %i.eg = icmp ne ptr %i.ea, null, !nosanitize !9 ; 2 uses
  %i.eh = icmp eq i64 %i.ef, 0                    ; 2 uses
  %i.ei = xor i1 %i.eg, %i.eh
  %i.ej = icmp sgt i32 %1, -1
  %i.ek = icmp ult i64 %i.ef, %i.ee, !nosanitize !9
  %i.el = xor i1 %i.ej, %i.ek
  %i.em = and i1 %i.ei, %i.el, !nosanitize !9
  br i1 %i.em, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @176, i64 %i.ee, i64 %i.ef) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.en = ptrtoint ptr %i.ec to i64, !nosanitize !9 ; 2 uses
  %i.eo = and i64 %i.en, 7, !nosanitize !9
  %i.ep = icmp eq i64 %i.eo, 0, !nosanitize !9
  %i.eq = and i1 %i.eg, %i.ep
  br i1 %i.eq, label %bb.ag, label %bb.af, !prof !11, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @178, i64 %i.en) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 136 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !200 ; 2 uses
  %i.et = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.es, i32 1), !nosanitize !9 ; 2 uses
  %i.eu = extractvalue { i32, i1 } %i.et, 1, !nosanitize !9
  br i1 %i.eu, label %bb.ah, label %bb.ai, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.ev = zext nneg i32 %i.es to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @179, i64 %i.ev, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.ew = extractvalue { i32, i1 } %i.et, 0, !nosanitize !9
  store i32 %i.ew, ptr %i.er, align 8, !tbaa !200
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 159
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !114 ; 2 uses
  br i1 %i.eh, label %bb.aj, label %bb.ak, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @180, i64 %i.ee, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 140 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !201 ; 2 uses
  %i.fc = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.fb, i32 %i.ez), !nosanitize !9 ; 2 uses
  %i.fd = extractvalue { i32, i1 } %i.fc, 1, !nosanitize !9
  br i1 %i.fd, label %bb.al, label %bb.am, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.fe = zext i32 %i.fb to i64, !nosanitize !9
  %i.ff = zext i8 %i.ey to i64
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @181, i64 %i.fe, i64 %i.ff) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.fg = extractvalue { i32, i1 } %i.fc, 0, !nosanitize !9
  store i32 %i.fg, ptr %i.fa, align 4, !tbaa !201
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !202 ; 2 uses
  %.not194 = icmp eq i32 %i.fi, 0
  br i1 %.not194, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !87 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.ap, label %b3ComputeConvexManifold.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !88
  %i.fo = icmp ne ptr %0, null, !nosanitize !9
  %i.fp = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.fq = and i64 %i.fp, 7, !nosanitize !9
  %i.fr = icmp eq i64 %i.fq, 0, !nosanitize !9
  %i.fs = and i1 %i.fo, %i.fr, !nosanitize !9
  br i1 %i.fs, label %bb.ar, label %bb.aq, !prof !11, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @146, i64 %i.fp) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.ft = add nsw i32 %i.fk, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !128
  call void @b3LockMutex(ptr noundef %i.fv) #7
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !129 ; 3 uses
  %i.fy = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fz = mul nuw nsw i64 %i.fy, 40
  %i.ga = ptrtoint ptr %i.fx to i64, !nosanitize !9 ; 3 uses
  %i.gb = add i64 %i.fz, %i.ga, !nosanitize !9    ; 3 uses
  %i.gc = icmp ne ptr %i.fx, null, !nosanitize !9
end_hunk_1
