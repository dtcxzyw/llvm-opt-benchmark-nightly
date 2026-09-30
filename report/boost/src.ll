Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail11string_implC2EmRKNS0_11storage_ptrE:bb.a
  store i8 %i.c, ptr %i.e, align 1, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  store i8 0, ptr %i.f, align 1, !tbaa !93
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8, !tbaa !93
  %i.g = icmp ugt i64 %1, 2147483646
  br i1 %i.g, label %bb.d, label %_ZN5boost4json6detail11string_impl6growthEmm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl6growthEmmE3loc) #48
  unreachable

_ZN5boost4json6detail11string_impl6growthEmm.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %1, i64 30) ; 3 uses
  %i.h = trunc nuw nsw i64 %.sroa.speculated.i to i32
  %i.i = load i64, ptr %2, align 8, !tbaa !96     ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.i, -4
  %i.k = inttoptr i64 %i.j to ptr
  %.0.i.i = select i1 %.not.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.k ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.speculated.i, 9
  %i.m = load ptr, ptr %.0.i.i, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, i64 noundef %i.l, i64 noundef 4), !inline_history !0 ; 4 uses
  %i.q = trunc nuw nsw i64 %1 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !255
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.h, ptr %i.r, align 4, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !93
  %i.t = load i8, ptr %0, align 8, !tbaa !93
  %i.u = icmp eq i8 %i.t, -123
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.i = select i1 %i.u, ptr %i.v, ptr %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.sroa.speculated.i
  store i8 0, ptr %i.x, align 1, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json6detail11string_implC2ENS1_5key_tENS_4core17basic_string_viewIcEERKNS0_11storage_ptrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 1), (4, 16)) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 align 2 {
bb.a:
  store i8 69, ptr %0, align 8, !tbaa !93
  %i.a = trunc i64 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.b, align 4, !tbaa !93
  %i.c = load i64, ptr %3, align 8, !tbaa !96     ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  %i.d = and i64 %i.c, -4
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i = select i1 %.not.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.e ; 2 uses
  %i.f = add i64 %2, 1
  %i.g = load ptr, ptr %.0.i.i, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, i64 noundef %i.f, i64 noundef 1), !inline_history !0 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  store i8 0, ptr %i.l, align 1, !tbaa !93
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json6detail11string_implC2ENS1_5key_tENS_4core17basic_string_viewIcEES6_RKNS0_11storage_ptrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 1), (4, 16)) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i64 %4, %2                           ; 3 uses
  store i8 69, ptr %0, align 8, !tbaa !93
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !93
  %i.d = load i64, ptr %5, align 8, !tbaa !96     ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = and i64 %i.d, -4
  %i.f = inttoptr i64 %i.e to ptr
  %.0.i.i = select i1 %.not.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.f ; 2 uses
  %i.g = add i64 %i.a, 1
  %i.h = load ptr, ptr %.0.i.i, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, i64 noundef %i.g, i64 noundef 1), !inline_history !0 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store i8 0, ptr %i.m, align 1, !tbaa !93
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %1, i64 %2, i1 false)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %3, i64 %4, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { i64, i32 } @_ZN5boost4json6detail3ryu6detail3d2dEmj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = add nsw i32 %1, -1077
  %i.c = or i64 %0, 4503599627370496
  %.0126 = select i1 %i.a, i64 %0, i64 %i.c       ; 2 uses
  %.0 = select i1 %i.a, i32 -1076, i32 %i.b       ; 7 uses
  %i.d = and i64 %.0126, 1
  %i.e = icmp eq i64 %i.d, 0                      ; 4 uses
  %i.f = shl i64 %.0126, 2                        ; 11 uses
  %i.g = icmp ne i64 %0, 0
  %i.h = icmp ult i32 %1, 2
  %i.i = or i1 %i.g, %i.h                         ; 4 uses
  %i.j = icmp sgt i32 %.0, -1
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = mul i32 %.0, 78913
  %i.l = lshr i32 %i.k, 18
  %i.m = icmp samesign ugt i32 %.0, 3
  %.neg175 = sext i1 %i.m to i32
  %i.n = add nsw i32 %i.l, %.neg175               ; 11 uses
  %i.o = mul nuw i32 %i.n, 1217359
  %i.p = lshr i32 %i.o, 19
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost4json6detail3ryu21DOUBLE_POW5_INV_SPLITEvE3arr, i64 %i.q ; 2 uses
  %i.s = or disjoint i64 %i.f, 2                  ; 2 uses
  %i.t = zext i64 %i.s to i128                    ; 2 uses
  %i.u = load i64, ptr %i.r, align 16, !tbaa !90
  %i.v = zext i64 %i.u to i128                    ; 3 uses
  %i.w = mul nuw i128 %i.v, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !90
  %i.z = zext i64 %i.y to i128                    ; 3 uses
  %i.aa = mul nuw i128 %i.z, %i.t
  %i.ab = lshr i128 %i.w, 64
  %i.ac = add nuw i128 %i.ab, %i.aa
  %reass.sub = sub nsw i32 %i.n, %.0
  %i.ad = add nsw i32 %reass.sub, 58
  %i.ae = add nsw i32 %i.ad, %i.p
  %i.af = zext nneg i32 %i.ae to i128             ; 3 uses
  %i.ag = lshr i128 %i.ac, %i.af
  %i.ah = trunc i128 %i.ag to i64                 ; 4 uses
  %i.ai = zext i1 %i.i to i64
  %i.aj = xor i64 %i.ai, -1
  %i.ak = add i64 %i.f, %i.aj
  %i.al = zext i64 %i.ak to i128                  ; 2 uses
  %i.am = mul nuw i128 %i.v, %i.al
  %i.an = mul nuw i128 %i.z, %i.al
  %i.ao = lshr i128 %i.am, 64
  %i.ap = add nuw i128 %i.ao, %i.an
  %i.aq = lshr i128 %i.ap, %i.af
  %i.ar = trunc i128 %i.aq to i64                 ; 4 uses
  %i.as = zext i64 %i.f to i128                   ; 2 uses
  %i.at = mul nuw i128 %i.v, %i.as
  %i.au = mul nuw i128 %i.z, %i.as
  %i.av = lshr i128 %i.at, 64
  %i.aw = add nuw i128 %i.av, %i.au
  %i.ax = lshr i128 %i.aw, %i.af
  %i.ay = trunc i128 %i.ax to i64                 ; 4 uses
  %i.az = icmp ult i32 %i.n, 22
  br i1 %i.az, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ba = trunc i64 %i.f to i32
  %i.bb = udiv i64 %i.f, 5
  %i.bc = trunc i64 %i.bb to i32
  %.neg176 = mul i32 %i.bc, -5
  %i.bd = sub i32 0, %i.ba
  %i.be = icmp eq i32 %.neg176, %i.bd
  br i1 %i.be, label %.preheader267, label %bb.d

.preheader267:                                    ; preds = %bb.c, %.preheader267
  %.09.i.i = phi i64 [ %i.bf, %.preheader267 ], [ %i.f, %bb.c ] ; 2 uses
  %.08.i.i = phi i32 [ %i.bj, %.preheader267 ], [ 0, %bb.c ] ; 2 uses
  %i.bf = udiv i64 %.09.i.i, 5                    ; 2 uses
  %i.bg = trunc i64 %.09.i.i to i32
  %i.bh = trunc i64 %i.bf to i32
  %.neg.i.i = mul i32 %i.bh, -5
  %i.bi = sub i32 0, %i.bg
  %.not.i.i = icmp eq i32 %.neg.i.i, %i.bi
  %i.bj = add i32 %.08.i.i, 1
  br i1 %.not.i.i, label %.preheader267, label %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit

_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit: ; preds = %.preheader267
  %i.bk = icmp uge i32 %.08.i.i, %i.n
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %.preheader268

bb.e:                                             ; preds = %bb.d
  %i.bl = add i64 %i.f, -1
  %.neg178 = sext i1 %i.i to i64
  %i.bm = add i64 %i.bl, %.neg178
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.09.i.i189 = phi i64 [ %i.bm, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  %.08.i.i190 = phi i32 [ 0, %bb.e ], [ %i.br, %bb.f ] ; 2 uses
  %i.bn = udiv i64 %.09.i.i189, 5                 ; 2 uses
  %i.bo = trunc i64 %.09.i.i189 to i32
  %i.bp = trunc i64 %i.bn to i32
  %.neg.i.i191 = mul i32 %i.bp, -5
  %i.bq = sub i32 0, %i.bo
  %.not.i.i192 = icmp eq i32 %.neg.i.i191, %i.bq
  %i.br = add i32 %.08.i.i190, 1
  br i1 %.not.i.i192, label %bb.f, label %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193

_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193: ; preds = %bb.f
  %i.bs = icmp uge i32 %.08.i.i190, %i.n
  br label %bb.j

.preheader268:                                    ; preds = %bb.d, %.preheader268
  %.09.i.i194 = phi i64 [ %i.bt, %.preheader268 ], [ %i.s, %bb.d ] ; 2 uses
  %.08.i.i195 = phi i32 [ %i.bx, %.preheader268 ], [ 0, %bb.d ] ; 2 uses
  %i.bt = udiv i64 %.09.i.i194, 5                 ; 2 uses
  %i.bu = trunc i64 %.09.i.i194 to i32
  %i.bv = trunc i64 %i.bt to i32
  %.neg.i.i196 = mul i32 %i.bv, -5
  %i.bw = sub i32 0, %i.bu
  %.not.i.i197 = icmp eq i32 %.neg.i.i196, %i.bw
  %i.bx = add i32 %.08.i.i195, 1
  br i1 %.not.i.i197, label %.preheader268, label %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198

_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198: ; preds = %.preheader268
  %i.by = icmp uge i32 %.08.i.i195, %i.n
  %.neg177 = sext i1 %i.by to i64
  %i.bz = add i64 %.neg177, %i.ah
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ca = mul i32 %.0, -732923
  %i.cb = lshr i32 %i.ca, 20
  %i.cc = icmp ne i32 %.0, -1
  %.neg = sext i1 %i.cc to i32
  %i.cd = add nsw i32 %i.cb, %.neg                ; 5 uses
  %i.ce = add i32 %i.cd, %.0                      ; 5 uses
  %i.cf = sub i32 0, %i.ce
  %i.cg = mul i32 %i.ce, -1217359
  %i.ch = lshr i32 %i.cg, 19
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr @_ZZN5boost4json6detail3ryu17DOUBLE_POW5_SPLITEvE3arr, i64 %i.ci ; 2 uses
  %i.ck = or disjoint i64 %i.f, 2
  %i.cl = zext i64 %i.ck to i128                  ; 2 uses
  %i.cm = load i64, ptr %i.cj, align 16, !tbaa !90
  %i.cn = zext i64 %i.cm to i128                  ; 3 uses
  %i.co = mul nuw i128 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !90
  %i.cr = zext i64 %i.cq to i128                  ; 3 uses
  %i.cs = mul nuw i128 %i.cr, %i.cl
  %i.ct = lshr i128 %i.co, 64
  %i.cu = add nuw i128 %i.ct, %i.cs
  %i.cv = add nsw i32 %i.cd, 56
  %i.cw = sub nsw i32 %i.cv, %i.ch
  %i.cx = zext nneg i32 %i.cw to i128             ; 3 uses
  %i.cy = lshr i128 %i.cu, %i.cx
  %i.cz = trunc i128 %i.cy to i64                 ; 3 uses
  %i.da = zext i1 %i.i to i64
  %i.db = xor i64 %i.da, -1
  %i.dc = add i64 %i.f, %i.db
  %i.dd = zext i64 %i.dc to i128                  ; 2 uses
  %i.de = mul nuw i128 %i.cn, %i.dd
  %i.df = mul nuw i128 %i.cr, %i.dd
  %i.dg = lshr i128 %i.de, 64
  %i.dh = add nuw i128 %i.dg, %i.df
  %i.di = lshr i128 %i.dh, %i.cx
  %i.dj = trunc i128 %i.di to i64                 ; 3 uses
  %i.dk = zext i64 %i.f to i128                   ; 2 uses
  %i.dl = mul nuw i128 %i.cn, %i.dk
  %i.dm = mul nuw i128 %i.cr, %i.dk
  %i.dn = lshr i128 %i.dl, 64
  %i.do = add nuw i128 %i.dn, %i.dm
  %i.dp = lshr i128 %i.do, %i.cx
  %i.dq = trunc i128 %i.dp to i64                 ; 3 uses
  %i.dr = icmp ult i32 %i.cd, 2
  br i1 %i.dr, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %not.305 = xor i1 %i.e, true
  %i.ds = sext i1 %not.305 to i64
  %spec.select = add i64 %i.cz, %i.ds
  %spec.select263 = and i1 %i.e, %i.i
  br label %.preheader266

bb.h:                                             ; preds = %bb.g
  %i.dt = icmp ult i32 %i.cd, 63
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.du = zext nneg i32 %i.cd to i64
  %notmask.i = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i, -1
  %i.dw = and i64 %i.f, %i.dv
  %i.dx = icmp eq i64 %i.dw, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit
  %.0221 = phi i64 [ %i.ah, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.ah, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.bz, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.ah, %bb.b ], [ %i.cz, %bb.h ], [ %i.cz, %bb.i ] ; 3 uses
  %.0212 = phi i64 [ %i.ar, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.ar, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.ar, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.ar, %bb.b ], [ %i.dj, %bb.h ], [ %i.dj, %bb.i ] ; 3 uses
  %.3141.shrunk = phi i1 [ %i.bk, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ false, %bb.b ], [ false, %bb.h ], [ %i.dx, %bb.i ] ; 2 uses
  %.3135.shrunk = phi i1 [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.bs, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.i ] ; 2 uses
  %.0131 = phi i32 [ %i.n, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.n, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.n, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.n, %bb.b ], [ %i.ce, %bb.h ], [ %i.ce, %bb.i ] ; 2 uses
  %.0128 = phi i64 [ %i.ay, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.ay, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.ay, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.ay, %bb.b ], [ %i.dq, %bb.h ], [ %i.dq, %bb.i ] ; 4 uses
  %i.dy = or i1 %.3141.shrunk, %.3135.shrunk
  br i1 %i.dy, label %.preheader266, label %bb.k

.preheader266:                                    ; preds = %.thread, %bb.j
  %.0128339 = phi i64 [ %i.dq, %.thread ], [ %.0128, %bb.j ] ; 2 uses
  %.0131338 = phi i32 [ %i.ce, %.thread ], [ %.0131, %bb.j ]
  %.3135.shrunk336 = phi i1 [ %spec.select263, %.thread ], [ %.3135.shrunk, %bb.j ] ; 2 uses
  %.3141.shrunk335 = phi i1 [ true, %.thread ], [ %.3141.shrunk, %bb.j ] ; 2 uses
  %.0212334 = phi i64 [ %i.dj, %.thread ], [ %.0212, %bb.j ] ; 3 uses
  %.0221333 = phi i64 [ %spec.select, %.thread ], [ %.0221, %bb.j ]
  %i.dz = udiv i64 %.0221333, 10                  ; 2 uses
  %i.ea = udiv i64 %.0212334, 10                  ; 2 uses
  %.not181278 = icmp samesign ugt i64 %i.dz, %i.ea
  br i1 %.not181278, label %.lr.ph285, label %._crit_edge286

.lr.ph285:                                        ; preds = %.preheader266, %.lr.ph285
  %i.eb = phi i64 [ %i.eq, %.lr.ph285 ], [ %i.ea, %.preheader266 ] ; 4 uses
  %i.ec = phi i64 [ %i.ep, %.lr.ph285 ], [ %i.dz, %.preheader266 ]
  %.1129284 = phi i64 [ %i.ef, %.lr.ph285 ], [ %.0128339, %.preheader266 ] ; 2 uses
  %.4136283 = phi i1 [ %i.el, %.lr.ph285 ], [ %.3135.shrunk336, %.preheader266 ]
  %.4142282 = phi i1 [ %i.en, %.lr.ph285 ], [ %.3141.shrunk335, %.preheader266 ]
  %.0151281 = phi i8 [ %i.ei, %.lr.ph285 ], [ 0, %.preheader266 ]
  %.0157280 = phi i32 [ %i.eo, %.lr.ph285 ], [ 0, %.preheader266 ]
  %.1213279 = phi i64 [ %i.eb, %.lr.ph285 ], [ %.0212334, %.preheader266 ]
  %i.ed = trunc i64 %.1213279 to i32
  %i.ee = trunc i64 %i.eb to i32
  %.neg182 = mul i32 %i.ee, -10
  %i.ef = udiv i64 %.1129284, 10                  ; 3 uses
  %i.eg = trunc i64 %.1129284 to i8
  %i.eh = trunc i64 %i.ef to i8
  %.neg183 = mul i8 %i.eh, -10
  %i.ei = add i8 %.neg183, %i.eg                  ; 2 uses
  %i.ej = sub i32 0, %i.ed
  %i.ek = icmp eq i32 %.neg182, %i.ej
  %i.el = select i1 %i.ek, i1 %.4136283, i1 false ; 2 uses
  %i.em = icmp eq i8 %.0151281, 0
  %i.en = select i1 %i.em, i1 %.4142282, i1 false ; 2 uses
  %i.eo = add nuw nsw i32 %.0157280, 1            ; 2 uses
  %i.ep = udiv i64 %i.ec, 10                      ; 2 uses
  %i.eq = udiv i64 %i.eb, 10                      ; 2 uses
  %.not181 = icmp samesign ugt i64 %i.ep, %i.eq
  br i1 %.not181, label %.lr.ph285, label %._crit_edge286

._crit_edge286:                                   ; preds = %.lr.ph285, %.preheader266
  %.1213.lcssa = phi i64 [ %.0212334, %.preheader266 ], [ %i.eb, %.lr.ph285 ] ; 4 uses
  %.0157.lcssa = phi i32 [ 0, %.preheader266 ], [ %i.eo, %.lr.ph285 ] ; 3 uses
  %.0151.lcssa = phi i8 [ 0, %.preheader266 ], [ %i.ei, %.lr.ph285 ] ; 3 uses
  %.4142.lcssa = phi i1 [ %.3141.shrunk335, %.preheader266 ], [ %i.en, %.lr.ph285 ] ; 3 uses
  %.4136.lcssa = phi i1 [ %.3135.shrunk336, %.preheader266 ], [ %i.el, %.lr.ph285 ] ; 2 uses
  %.1129.lcssa = phi i64 [ %.0128339, %.preheader266 ], [ %i.ef, %.lr.ph285 ] ; 3 uses
  br i1 %.4136.lcssa, label %.preheader, label %.thread244

.preheader:                                       ; preds = %._crit_edge286
  %i.er = udiv i64 %.1213.lcssa, 10               ; 2 uses
  %i.es = trunc i64 %.1213.lcssa to i32
  %i.et = trunc i64 %i.er to i32
  %.neg184293 = mul i32 %i.et, -10
  %i.eu = sub i32 0, %i.es
  %.not185294 = icmp eq i32 %.neg184293, %i.eu
  br i1 %.not185294, label %.lr.ph299, label %.thread244

.lr.ph299:                                        ; preds = %.preheader, %.lr.ph299
  %i.ev = phi i64 [ %i.fd, %.lr.ph299 ], [ %i.er, %.preheader ] ; 3 uses
  %.3298 = phi i64 [ %i.ew, %.lr.ph299 ], [ %.1129.lcssa, %.preheader ] ; 2 uses
  %.6144297 = phi i1 [ %i.fb, %.lr.ph299 ], [ %.4142.lcssa, %.preheader ]
  %.2153296 = phi i8 [ %i.ez, %.lr.ph299 ], [ %.0151.lcssa, %.preheader ]
  %.2159295 = phi i32 [ %i.fc, %.lr.ph299 ], [ %.0157.lcssa, %.preheader ]
  %i.ew = udiv i64 %.3298, 10                     ; 3 uses
  %i.ex = trunc i64 %.3298 to i8
  %i.ey = trunc i64 %i.ew to i8
  %.neg186 = mul i8 %i.ey, -10
  %i.ez = add i8 %.neg186, %i.ex                  ; 2 uses
  %i.fa = icmp eq i8 %.2153296, 0
  %i.fb = select i1 %i.fa, i1 %.6144297, i1 false ; 2 uses
  %i.fc = add nuw nsw i32 %.2159295, 1            ; 2 uses
  %i.fd = udiv i64 %i.ev, 10                      ; 2 uses
  %i.fe = trunc i64 %i.ev to i32
  %i.ff = trunc i64 %i.fd to i32
  %.neg184 = mul i32 %i.ff, -10
  %i.fg = sub i32 0, %i.fe
  %.not185 = icmp eq i32 %.neg184, %i.fg
  br i1 %.not185, label %.lr.ph299, label %.thread244

.thread244:                                       ; preds = %.lr.ph299, %.preheader, %._crit_edge286
  %.5217 = phi i64 [ %.1213.lcssa, %._crit_edge286 ], [ %.1213.lcssa, %.preheader ], [ %i.ev, %.lr.ph299 ]
  %.4161 = phi i32 [ %.0157.lcssa, %._crit_edge286 ], [ %.0157.lcssa, %.preheader ], [ %i.fc, %.lr.ph299 ]
  %.4155 = phi i8 [ %.0151.lcssa, %._crit_edge286 ], [ %.0151.lcssa, %.preheader ], [ %i.ez, %.lr.ph299 ] ; 2 uses
  %.8146 = phi i1 [ %.4142.lcssa, %._crit_edge286 ], [ %.4142.lcssa, %.preheader ], [ %i.fb, %.lr.ph299 ]
  %.5 = phi i64 [ %.1129.lcssa, %._crit_edge286 ], [ %.1129.lcssa, %.preheader ], [ %i.ew, %.lr.ph299 ] ; 3 uses
  %i.fh = icmp ne i8 %.4155, 5
end_hunk_0
