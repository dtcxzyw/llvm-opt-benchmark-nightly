Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail5stack12reserve_implEm:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !237
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.019 = load ptr, ptr %i.l, align 8, !tbaa !325 ; 2 uses
  %.not1520 = icmp eq ptr %.019, null
  br i1 %.not1520, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit
  %.022 = phi ptr [ %.0, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit ], [ %.019, %bb.b ] ; 3 uses
  %.01321 = phi ptr [ %i.v, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit ], [ %i.l, %bb.b ]
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !253
  %i.n = ptrtoint ptr %.022 to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.r = load ptr, ptr %.022, align 8, !tbaa !236
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(24) %.022, ptr noundef %i.q)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit: ; preds = %.lr.ph
  store ptr %i.s, ptr %.01321, align 8, !tbaa !325
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.0 = load ptr, ptr %i.v, align 8, !tbaa !325   ; 2 uses
  %.not15 = icmp eq ptr %.0, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit, %bb.b
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !253  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !270
  %.not16 = icmp eq ptr %i.w, %i.y
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.z = load i64, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not.i.i17 = icmp eq i64 %i.z, 0
  %i.aa = and i64 %i.z, -4
  %i.ab = inttoptr i64 %i.aa to ptr
  %.0.i.i18 = select i1 %.not.i.i17, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ab ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !269
  %i.ae = load ptr, ptr %.0.i.i18, align 8, !tbaa !98
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i18, ptr noundef %i.w, i64 noundef %i.ad, i64 noundef 16), !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !253
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.ah, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost4json6detail11string_implC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2), (15, 16)) %0) unnamed_addr #19 align 2 {
bb.a:
  store i8 -123, ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 14, ptr %i.b, align 1, !tbaa !93
  store i8 0, ptr %i.a, align 1, !tbaa !93
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json6detail11string_implC2EmRKNS0_11storage_ptrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 -123, ptr %0, align 8, !tbaa !93
  %i.b = trunc nuw nsw i64 %1 to i8
  %i.c = sub nuw nsw i8 14, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 15
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
  %i.f = shl i64 %.0126, 2                        ; 13 uses
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
  %i.s = or disjoint i64 %i.f, 2                  ; 3 uses
  %i.t = zext i64 %i.s to i128
  %i.u = load i64, ptr %i.r, align 16, !tbaa !90  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !90
  %i.x = zext i64 %i.w to i128                    ; 3 uses
  %i.y = mul nuw i128 %i.x, %i.t
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.s, i64 %i.u)
  %3 = zext i64 %2 to i128
  %i.z = add nuw i128 %i.y, %3
  %reass.sub = sub nsw i32 %i.n, %.0
  %i.aa = add nsw i32 %reass.sub, 58
  %i.ab = add nsw i32 %i.aa, %i.p
  %i.ac = zext nneg i32 %i.ab to i128             ; 3 uses
  %i.ad = lshr i128 %i.z, %i.ac
  %i.ae = trunc i128 %i.ad to i64                 ; 4 uses
  %i.af = zext i1 %i.i to i64
  %i.ag = xor i64 %i.af, -1
  %i.ah = add i64 %i.f, %i.ag                     ; 2 uses
  %i.ai = zext i64 %i.ah to i128
  %i.aj = mul nuw i128 %i.x, %i.ai
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.ah, i64 %i.u)
  %5 = zext i64 %4 to i128
  %i.ak = add nuw i128 %i.aj, %5
  %i.al = lshr i128 %i.ak, %i.ac
  %i.am = trunc i128 %i.al to i64                 ; 4 uses
  %i.an = zext i64 %i.f to i128
  %i.ao = mul nuw i128 %i.x, %i.an
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.f, i64 %i.u)
  %7 = zext i64 %6 to i128
  %i.ap = add nuw i128 %i.ao, %7
  %i.aq = lshr i128 %i.ap, %i.ac
  %i.ar = trunc i128 %i.aq to i64                 ; 4 uses
  %i.as = icmp ult i32 %i.n, 22
  br i1 %i.as, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.at = trunc i64 %i.f to i32
  %i.au = udiv i64 %i.f, 5
  %i.av = trunc i64 %i.au to i32
  %.neg176 = mul i32 %i.av, -5
  %i.aw = sub i32 0, %i.at
  %i.ax = icmp eq i32 %.neg176, %i.aw
  br i1 %i.ax, label %.preheader267, label %bb.d

.preheader267:                                    ; preds = %bb.c, %.preheader267
  %.09.i.i = phi i64 [ %i.ay, %.preheader267 ], [ %i.f, %bb.c ] ; 2 uses
  %.08.i.i = phi i32 [ %i.bc, %.preheader267 ], [ 0, %bb.c ] ; 2 uses
  %i.ay = udiv i64 %.09.i.i, 5                    ; 2 uses
  %i.az = trunc i64 %.09.i.i to i32
  %i.ba = trunc i64 %i.ay to i32
  %.neg.i.i = mul i32 %i.ba, -5
  %i.bb = sub i32 0, %i.az
  %.not.i.i = icmp eq i32 %.neg.i.i, %i.bb
  %i.bc = add i32 %.08.i.i, 1
  br i1 %.not.i.i, label %.preheader267, label %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit

_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit: ; preds = %.preheader267
  %i.bd = icmp uge i32 %.08.i.i, %i.n
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %.preheader268

bb.e:                                             ; preds = %bb.d
  %i.be = add i64 %i.f, -1
  %.neg178 = sext i1 %i.i to i64
  %i.bf = add i64 %i.be, %.neg178
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.09.i.i189 = phi i64 [ %i.bf, %bb.e ], [ %i.bg, %bb.f ] ; 2 uses
  %.08.i.i190 = phi i32 [ 0, %bb.e ], [ %i.bk, %bb.f ] ; 2 uses
  %i.bg = udiv i64 %.09.i.i189, 5                 ; 2 uses
  %i.bh = trunc i64 %.09.i.i189 to i32
  %i.bi = trunc i64 %i.bg to i32
  %.neg.i.i191 = mul i32 %i.bi, -5
  %i.bj = sub i32 0, %i.bh
  %.not.i.i192 = icmp eq i32 %.neg.i.i191, %i.bj
  %i.bk = add i32 %.08.i.i190, 1
  br i1 %.not.i.i192, label %bb.f, label %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193

_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193: ; preds = %bb.f
  %i.bl = icmp uge i32 %.08.i.i190, %i.n
  br label %bb.j

.preheader268:                                    ; preds = %bb.d, %.preheader268
  %.09.i.i194 = phi i64 [ %i.bm, %.preheader268 ], [ %i.s, %bb.d ] ; 2 uses
  %.08.i.i195 = phi i32 [ %i.bq, %.preheader268 ], [ 0, %bb.d ] ; 2 uses
  %i.bm = udiv i64 %.09.i.i194, 5                 ; 2 uses
  %i.bn = trunc i64 %.09.i.i194 to i32
  %i.bo = trunc i64 %i.bm to i32
  %.neg.i.i196 = mul i32 %i.bo, -5
  %i.bp = sub i32 0, %i.bn
  %.not.i.i197 = icmp eq i32 %.neg.i.i196, %i.bp
  %i.bq = add i32 %.08.i.i195, 1
  br i1 %.not.i.i197, label %.preheader268, label %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198

_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198: ; preds = %.preheader268
  %i.br = icmp uge i32 %.08.i.i195, %i.n
  %.neg177 = sext i1 %i.br to i64
  %i.bs = add i64 %.neg177, %i.ae
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bt = mul i32 %.0, -732923
  %i.bu = lshr i32 %i.bt, 20
  %i.bv = icmp ne i32 %.0, -1
  %.neg = sext i1 %i.bv to i32
  %i.bw = add nsw i32 %i.bu, %.neg                ; 5 uses
  %i.bx = add i32 %i.bw, %.0                      ; 5 uses
  %i.by = sub i32 0, %i.bx
  %i.bz = mul i32 %i.bx, -1217359
  %i.ca = lshr i32 %i.bz, 19
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [16 x i8], ptr @_ZZN5boost4json6detail3ryu17DOUBLE_POW5_SPLITEvE3arr, i64 %i.cb ; 2 uses
  %i.cd = or disjoint i64 %i.f, 2                 ; 2 uses
  %i.ce = zext i64 %i.cd to i128
  %i.cf = load i64, ptr %i.cc, align 16, !tbaa !90 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !90
  %i.ci = zext i64 %i.ch to i128                  ; 3 uses
  %i.cj = mul nuw i128 %i.ci, %i.ce
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.cd, i64 %i.cf)
  %9 = zext i64 %8 to i128
  %i.ck = add nuw i128 %i.cj, %9
  %i.cl = add nsw i32 %i.bw, 56
  %i.cm = sub nsw i32 %i.cl, %i.ca
  %i.cn = zext nneg i32 %i.cm to i128             ; 3 uses
  %i.co = lshr i128 %i.ck, %i.cn
  %i.cp = trunc i128 %i.co to i64                 ; 3 uses
  %i.cq = zext i1 %i.i to i64
  %i.cr = xor i64 %i.cq, -1
  %i.cs = add i64 %i.f, %i.cr                     ; 2 uses
  %i.ct = zext i64 %i.cs to i128
  %i.cu = mul nuw i128 %i.ci, %i.ct
  %10 = tail call i64 @llvm.umulh.i64(i64 %i.cs, i64 %i.cf)
  %11 = zext i64 %10 to i128
  %i.cv = add nuw i128 %i.cu, %11
  %i.cw = lshr i128 %i.cv, %i.cn
  %i.cx = trunc i128 %i.cw to i64                 ; 3 uses
  %i.cy = zext i64 %i.f to i128
  %i.cz = mul nuw i128 %i.ci, %i.cy
  %12 = tail call i64 @llvm.umulh.i64(i64 %i.f, i64 %i.cf)
  %13 = zext i64 %12 to i128
  %i.da = add nuw i128 %i.cz, %13
  %i.db = lshr i128 %i.da, %i.cn
  %i.dc = trunc i128 %i.db to i64                 ; 3 uses
  %i.dd = icmp ult i32 %i.bw, 2
  br i1 %i.dd, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %not.305 = xor i1 %i.e, true
  %i.de = sext i1 %not.305 to i64
  %spec.select = add i64 %i.cp, %i.de
  %spec.select263 = and i1 %i.e, %i.i
  br label %.preheader266

bb.h:                                             ; preds = %bb.g
  %i.df = icmp ult i32 %i.bw, 63
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = zext nneg i32 %i.bw to i64
  %notmask.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i, -1
  %i.di = and i64 %i.f, %i.dh
  %i.dj = icmp eq i64 %i.di, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit
  %.0221 = phi i64 [ %i.ae, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.ae, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.bs, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.ae, %bb.b ], [ %i.cp, %bb.h ], [ %i.cp, %bb.i ] ; 3 uses
  %.0212 = phi i64 [ %i.am, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.am, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.am, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.am, %bb.b ], [ %i.cx, %bb.h ], [ %i.cx, %bb.i ] ; 3 uses
  %.3141.shrunk = phi i1 [ %i.bd, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ false, %bb.b ], [ false, %bb.h ], [ %i.dj, %bb.i ] ; 2 uses
  %.3135.shrunk = phi i1 [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.bl, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ false, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.i ] ; 2 uses
  %.0131 = phi i32 [ %i.n, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.n, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.n, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.n, %bb.b ], [ %i.bx, %bb.h ], [ %i.bx, %bb.i ] ; 2 uses
  %.0128 = phi i64 [ %i.ar, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit ], [ %i.ar, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit193 ], [ %i.ar, %_ZN5boost4json6detail3ryu6detail18multipleOfPowerOf5Emj.exit198 ], [ %i.ar, %bb.b ], [ %i.dc, %bb.h ], [ %i.dc, %bb.i ] ; 4 uses
  %i.dk = or i1 %.3141.shrunk, %.3135.shrunk
  br i1 %i.dk, label %.preheader266, label %bb.k

.preheader266:                                    ; preds = %.thread, %bb.j
  %.0128339 = phi i64 [ %i.dc, %.thread ], [ %.0128, %bb.j ] ; 2 uses
  %.0131338 = phi i32 [ %i.bx, %.thread ], [ %.0131, %bb.j ]
  %.3135.shrunk336 = phi i1 [ %spec.select263, %.thread ], [ %.3135.shrunk, %bb.j ] ; 2 uses
  %.3141.shrunk335 = phi i1 [ true, %.thread ], [ %.3141.shrunk, %bb.j ] ; 2 uses
  %.0212334 = phi i64 [ %i.cx, %.thread ], [ %.0212, %bb.j ] ; 3 uses
  %.0221333 = phi i64 [ %spec.select, %.thread ], [ %.0221, %bb.j ]
  %i.dl = udiv i64 %.0221333, 10                  ; 2 uses
  %i.dm = udiv i64 %.0212334, 10                  ; 2 uses
  %.not181278 = icmp samesign ugt i64 %i.dl, %i.dm
  br i1 %.not181278, label %.lr.ph285, label %._crit_edge286

.lr.ph285:                                        ; preds = %.preheader266, %.lr.ph285
  %i.dn = phi i64 [ %i.ec, %.lr.ph285 ], [ %i.dm, %.preheader266 ] ; 4 uses
  %i.do = phi i64 [ %i.eb, %.lr.ph285 ], [ %i.dl, %.preheader266 ]
  %.1129284 = phi i64 [ %i.dr, %.lr.ph285 ], [ %.0128339, %.preheader266 ] ; 2 uses
  %.4136283 = phi i1 [ %i.dx, %.lr.ph285 ], [ %.3135.shrunk336, %.preheader266 ]
  %.4142282 = phi i1 [ %i.dz, %.lr.ph285 ], [ %.3141.shrunk335, %.preheader266 ]
  %.0151281 = phi i8 [ %i.du, %.lr.ph285 ], [ 0, %.preheader266 ]
  %.0157280 = phi i32 [ %i.ea, %.lr.ph285 ], [ 0, %.preheader266 ]
  %.1213279 = phi i64 [ %i.dn, %.lr.ph285 ], [ %.0212334, %.preheader266 ]
  %i.dp = trunc i64 %.1213279 to i32
  %i.dq = trunc i64 %i.dn to i32
  %.neg182 = mul i32 %i.dq, -10
  %i.dr = udiv i64 %.1129284, 10                  ; 3 uses
  %i.ds = trunc i64 %.1129284 to i8
  %i.dt = trunc i64 %i.dr to i8
  %.neg183 = mul i8 %i.dt, -10
  %i.du = add i8 %.neg183, %i.ds                  ; 2 uses
  %i.dv = sub i32 0, %i.dp
  %i.dw = icmp eq i32 %.neg182, %i.dv
  %i.dx = select i1 %i.dw, i1 %.4136283, i1 false ; 2 uses
  %i.dy = icmp eq i8 %.0151281, 0
  %i.dz = select i1 %i.dy, i1 %.4142282, i1 false ; 2 uses
  %i.ea = add nuw nsw i32 %.0157280, 1            ; 2 uses
  %i.eb = udiv i64 %i.do, 10                      ; 2 uses
  %i.ec = udiv i64 %i.dn, 10                      ; 2 uses
  %.not181 = icmp samesign ugt i64 %i.eb, %i.ec
  br i1 %.not181, label %.lr.ph285, label %._crit_edge286

._crit_edge286:                                   ; preds = %.lr.ph285, %.preheader266
  %.1213.lcssa = phi i64 [ %.0212334, %.preheader266 ], [ %i.dn, %.lr.ph285 ] ; 4 uses
  %.0157.lcssa = phi i32 [ 0, %.preheader266 ], [ %i.ea, %.lr.ph285 ] ; 3 uses
  %.0151.lcssa = phi i8 [ 0, %.preheader266 ], [ %i.du, %.lr.ph285 ] ; 3 uses
  %.4142.lcssa = phi i1 [ %.3141.shrunk335, %.preheader266 ], [ %i.dz, %.lr.ph285 ] ; 3 uses
  %.4136.lcssa = phi i1 [ %.3135.shrunk336, %.preheader266 ], [ %i.dx, %.lr.ph285 ] ; 2 uses
  %.1129.lcssa = phi i64 [ %.0128339, %.preheader266 ], [ %i.dr, %.lr.ph285 ] ; 3 uses
  br i1 %.4136.lcssa, label %.preheader, label %.thread244

.preheader:                                       ; preds = %._crit_edge286
  %i.ed = udiv i64 %.1213.lcssa, 10               ; 2 uses
  %i.ee = trunc i64 %.1213.lcssa to i32
  %i.ef = trunc i64 %i.ed to i32
  %.neg184293 = mul i32 %i.ef, -10
  %i.eg = sub i32 0, %i.ee
  %.not185294 = icmp eq i32 %.neg184293, %i.eg
  br i1 %.not185294, label %.lr.ph299, label %.thread244

.lr.ph299:                                        ; preds = %.preheader, %.lr.ph299
  %i.eh = phi i64 [ %i.ep, %.lr.ph299 ], [ %i.ed, %.preheader ] ; 3 uses
  %.3298 = phi i64 [ %i.ei, %.lr.ph299 ], [ %.1129.lcssa, %.preheader ] ; 2 uses
  %.6144297 = phi i1 [ %i.en, %.lr.ph299 ], [ %.4142.lcssa, %.preheader ]
  %.2153296 = phi i8 [ %i.el, %.lr.ph299 ], [ %.0151.lcssa, %.preheader ]
  %.2159295 = phi i32 [ %i.eo, %.lr.ph299 ], [ %.0157.lcssa, %.preheader ]
  %i.ei = udiv i64 %.3298, 10                     ; 3 uses
  %i.ej = trunc i64 %.3298 to i8
  %i.ek = trunc i64 %i.ei to i8
  %.neg186 = mul i8 %i.ek, -10
  %i.el = add i8 %.neg186, %i.ej                  ; 2 uses
  %i.em = icmp eq i8 %.2153296, 0
  %i.en = select i1 %i.em, i1 %.6144297, i1 false ; 2 uses
  %i.eo = add nuw nsw i32 %.2159295, 1            ; 2 uses
  %i.ep = udiv i64 %i.eh, 10                      ; 2 uses
  %i.eq = trunc i64 %i.eh to i32
  %i.er = trunc i64 %i.ep to i32
  %.neg184 = mul i32 %i.er, -10
  %i.es = sub i32 0, %i.eq
  %.not185 = icmp eq i32 %.neg184, %i.es
  br i1 %.not185, label %.lr.ph299, label %.thread244

.thread244:                                       ; preds = %.lr.ph299, %.preheader, %._crit_edge286
  %.5217 = phi i64 [ %.1213.lcssa, %._crit_edge286 ], [ %.1213.lcssa, %.preheader ], [ %i.eh, %.lr.ph299 ]
  %.4161 = phi i32 [ %.0157.lcssa, %._crit_edge286 ], [ %.0157.lcssa, %.preheader ], [ %i.eo, %.lr.ph299 ]
  %.4155 = phi i8 [ %.0151.lcssa, %._crit_edge286 ], [ %.0151.lcssa, %.preheader ], [ %i.el, %.lr.ph299 ] ; 2 uses
  %.8146 = phi i1 [ %.4142.lcssa, %._crit_edge286 ], [ %.4142.lcssa, %.preheader ], [ %i.en, %.lr.ph299 ]
  %.5 = phi i64 [ %.1129.lcssa, %._crit_edge286 ], [ %.1129.lcssa, %.preheader ], [ %i.ei, %.lr.ph299 ] ; 3 uses
  %i.et = icmp ne i8 %.4155, 5
  %not. = xor i1 %.8146, true
  %or.cond4 = select i1 %not., i1 true, i1 %i.et
  %i.eu = trunc i64 %.5 to i1
  %or.cond = select i1 %or.cond4, i1 true, i1 %i.eu
  %i.ev = icmp ne i64 %.5, %.5217
  %or.cond6 = and i1 %i.e, %.4136.lcssa
  %or.cond188 = or i1 %or.cond6, %i.ev
  %i.ew = icmp ugt i8 %.4155, 4
  %i.ex = select i1 %or.cond, i1 %i.ew, i1 false
  %not.or.cond188 = xor i1 %or.cond188, true
  %narrow = select i1 %not.or.cond188, i1 true, i1 %i.ex
  %i.ey = zext i1 %narrow to i64
  %i.ez = add i64 %.5, %i.ey
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.fa = udiv i64 %.0221, 100                    ; 2 uses
  %i.fb = udiv i64 %.0212, 100                    ; 2 uses
  %i.fc = icmp samesign ugt i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fd = udiv i64 %.0128, 100                    ; 2 uses
  %i.fe = trunc i64 %.0128 to i32
  %i.ff = trunc i64 %i.fd to i32
  %.neg179 = mul i32 %i.ff, -100
  %i.fg = add i32 %.neg179, %i.fe
  %i.fh = icmp ugt i32 %i.fg, 49
  %i.fi = zext i1 %i.fh to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5226 = phi i64 [ %i.fa, %bb.l ], [ %.0221, %bb.k ]
  %.6218 = phi i64 [ %i.fb, %bb.l ], [ %.0212, %bb.k ] ; 2 uses
  %.5162 = phi i32 [ 2, %bb.l ], [ 0, %bb.k ]     ; 2 uses
  %.6 = phi i64 [ %i.fd, %bb.l ], [ %.0128, %bb.k ] ; 2 uses
  %.0127 = phi i64 [ %i.fi, %bb.l ], [ 0, %bb.k ]
  %i.fj = udiv i64 %.5226, 10                     ; 2 uses
  %i.fk = udiv i64 %.6218, 10                     ; 2 uses
  %.not269 = icmp samesign ugt i64 %i.fj, %i.fk
  br i1 %.not269, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.fl = phi i64 [ %i.fq, %.lr.ph ], [ %i.fk, %bb.m ] ; 2 uses
  %i.fm = phi i64 [ %i.fp, %.lr.ph ], [ %i.fj, %bb.m ]
  %.7271 = phi i64 [ %i.fn, %.lr.ph ], [ %.6, %bb.m ] ; 2 uses
  %.6163270 = phi i32 [ %i.fo, %.lr.ph ], [ %.5162, %bb.m ]
  %i.fn = udiv i64 %.7271, 10                     ; 3 uses
  %i.fo = add nuw nsw i32 %.6163270, 1            ; 2 uses
  %i.fp = udiv i64 %i.fm, 10                      ; 2 uses
  %i.fq = udiv i64 %i.fl, 10                      ; 2 uses
  %.not = icmp samesign ugt i64 %i.fp, %i.fq
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %i.fr = trunc i64 %.7271 to i32
  %i.fs = trunc i64 %i.fn to i32
  %.neg180.le = mul i32 %i.fs, -10
  %i.ft = add i32 %.neg180.le, %i.fr
  %i.fu = icmp ugt i32 %i.ft, 4
  %i.fv = zext i1 %i.fu to i64
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.7219.lcssa = phi i64 [ %i.fl, %._crit_edge ], [ %.6218, %bb.m ]
  %.6163.lcssa = phi i32 [ %i.fo, %._crit_edge ], [ %.5162, %bb.m ]
  %.7.lcssa = phi i64 [ %i.fn, %._crit_edge ], [ %.6, %bb.m ] ; 2 uses
  %.1.lcssa = phi i64 [ %i.fv, %._crit_edge ], [ %.0127, %bb.m ]
  %i.fw = icmp eq i64 %.7.lcssa, %.7219.lcssa
  %i.fx = select i1 %i.fw, i64 1, i64 %.1.lcssa
  %i.fy = add i64 %i.fx, %.7.lcssa
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread244
  %.0131337 = phi i32 [ %.0131338, %.thread244 ], [ %.0131, %bb.n ]
  %.8165 = phi i32 [ %.4161, %.thread244 ], [ %.6163.lcssa, %bb.n ]
  %.0150 = phi i64 [ %i.ez, %.thread244 ], [ %i.fy, %bb.n ]
  %i.fz = add nsw i32 %.8165, %.0131337
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.0150, 0
end_hunk_0
begin_hunk_1_@_ZN5boost4json6detail8charconv6detail10fast_float19from_chars_advancedIdcEENS2_19from_chars_result_tIT0_EEPKS7_SA_RT_NS4_15parse_options_tIS7_EE:bb.a

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cv = and i64 %3, 3
  %or.cond173.i.not.not = icmp eq i64 %i.cv, 1
  br i1 %or.cond173.i.not.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.3136.i = phi i64 [ %.0133.i, %bb.u ], [ %.0133.i, %bb.v ], [ %i.ct, %.thread ] ; 2 uses
  %.9.i = phi ptr [ %.4131.i, %bb.u ], [ %.4131.i, %bb.v ], [ %.6.i.lcssa.ph, %.thread ] ; 7 uses
  %.5.i = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select172.i, %.thread ]
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.9.i, ptr %i.cw, align 8, !tbaa !985, !alias.scope !983
  store i8 1, ptr %i.e, align 1, !tbaa !986, !alias.scope !983
  %i.cx = icmp sgt i64 %.0140.i, 19
  br i1 %i.cx, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.w, %.critedge10.i
  %.0.i252 = phi ptr [ %i.dc, %.critedge10.i ], [ %.0127.i, %bb.w ] ; 2 uses
  %.1141.i251 = phi i64 [ %spec.select175.i, %.critedge10.i ], [ %.0140.i, %bb.w ] ; 2 uses
  %i.cy = load i8, ptr %.0.i252, align 1, !tbaa !93, !noalias !983 ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 48                    ; 2 uses
  %i.da = icmp eq i8 %i.cy, %.sroa.2.0.extract.trunc.i
  %or.cond174.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond174.i, label %.critedge10.i, label %.critedge8.i

.critedge10.i:                                    ; preds = %.preheader
  %i.db = sext i1 %i.cz to i64
  %spec.select175.i = add nsw i64 %.1141.i251, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i252, i64 1 ; 2 uses
  %.not169.i = icmp eq ptr %i.dc, %1
  br i1 %.not169.i, label %.critedge8.i, label %.preheader, !llvm.loop !977

.critedge8.i:                                     ; preds = %.preheader, %.critedge10.i
  %.1141.i.lcssa = phi i64 [ %.1141.i251, %.preheader ], [ %spec.select175.i, %.critedge10.i ]
  %i.dd = icmp sgt i64 %.1141.i.lcssa, 19
  br i1 %i.dd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge8.i
  store i8 1, ptr %i.f, align 2, !tbaa !987, !alias.scope !983
  %i.de = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.bu
  %.not265 = icmp samesign eq i64 %i.bu, 0
  br i1 %.not265, label %._crit_edge.thread, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.x, %.lr.ph255
  %.10.i254 = phi ptr [ %i.dk, %.lr.ph255 ], [ %.0127.i, %bb.x ] ; 2 uses
  %.4147.i253 = phi i64 [ %i.dj, %.lr.ph255 ], [ 0, %bb.x ]
  %i.df = mul nuw i64 %.4147.i253, 10
  %i.dg = load i8, ptr %.10.i254, align 1, !tbaa !93
  %i.dh = sext i8 %i.dg to i64
  %i.di = add i64 %i.df, -48
  %i.dj = add i64 %i.di, %i.dh                    ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.10.i254, i64 1 ; 3 uses
  %i.dl = icmp ult i64 %i.dj, 1000000000000000000
  %i.dm = icmp ne ptr %i.dk, %i.de
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %.lr.ph255, label %._crit_edge, !llvm.loop !978

._crit_edge:                                      ; preds = %.lr.ph255
  %i.do = icmp ugt i64 %i.dj, 999999999999999999
  br i1 %i.do, label %bb.y, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %.4147.i.lcssa313 = phi i64 [ %i.dj, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  %.not266 = icmp samesign eq i64 %i.bs, 0
  br i1 %.not266, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge.thread, %.lr.ph261
  %.11.i259 = phi ptr [ %i.dv, %.lr.ph261 ], [ %i.bt, %._crit_edge.thread ] ; 2 uses
  %.5148.i258 = phi i64 [ %i.du, %.lr.ph261 ], [ %.4147.i.lcssa313, %._crit_edge.thread ]
  %i.dq = mul nuw i64 %.5148.i258, 10
  %i.dr = load i8, ptr %.11.i259, align 1, !tbaa !93
  %i.ds = sext i8 %i.dr to i64
  %i.dt = add i64 %i.dq, -48
  %i.du = add i64 %i.dt, %i.ds                    ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.11.i259, i64 1 ; 3 uses
  %i.dw = icmp ult i64 %i.du, 1000000000000000000
  %i.dx = icmp ne ptr %i.dv, %i.dp
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %.lr.ph261, label %._crit_edge262, !llvm.loop !979

._crit_edge262:                                   ; preds = %.lr.ph261, %._crit_edge.thread
  %.5148.i.lcssa = phi i64 [ %.4147.i.lcssa313, %._crit_edge.thread ], [ %i.du, %.lr.ph261 ]
  %.11.i.lcssa = phi ptr [ %i.bt, %._crit_edge.thread ], [ %i.dv, %.lr.ph261 ]
  %i.dz = ptrtoint ptr %i.bt to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge262
  %.11.i.lcssa.sink = phi ptr [ %.11.i.lcssa, %._crit_edge262 ], [ %i.dk, %._crit_edge ]
  %.sink = phi i64 [ %i.dz, %._crit_edge262 ], [ %i.bv, %._crit_edge ]
  %.6149.i = phi i64 [ %.5148.i.lcssa, %._crit_edge262 ], [ %i.dj, %._crit_edge ]
  %i.ea = ptrtoint ptr %.11.i.lcssa.sink to i64
  %i.eb = sub i64 %.sink, %i.ea
  %.4137.i = add nsw i64 %i.eb, %.5.i
  br label %bb.aa

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.u, %bb.v
  %i.ec = tail call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float6detail12parse_infnanIdcEENS2_19from_chars_result_tIT0_EEPKS8_SB_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #47 ; 2 uses
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  %i.ee = extractvalue { ptr, i32 } %i.ec, 1
  br label %bb.bc

bb.aa:                                            ; preds = %bb.y, %.critedge8.i, %bb.w
  %i.ef = phi i1 [ false, %bb.w ], [ true, %bb.y ], [ false, %.critedge8.i ] ; 2 uses
  %.8151.i = phi i64 [ %.3146.i, %bb.w ], [ %.6149.i, %bb.y ], [ %.3146.i, %.critedge8.i ] ; 18 uses
  %.6139.i = phi i64 [ %.3136.i, %bb.w ], [ %.4137.i, %bb.y ], [ %.3136.i, %.critedge8.i ] ; 16 uses
  store i64 %.6139.i, ptr %5, align 8, !tbaa !988, !alias.scope !983
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.8151.i, ptr %i.eg, align 8, !tbaa !989, !alias.scope !983
  %i.eh = add i64 %.6139.i, -23
  %i.ei = icmp ult i64 %i.eh, -45
  %or.cond328 = or i1 %i.ei, %i.ef
  br i1 %or.cond328, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load volatile float, ptr @_ZZN5boost4json6detail8charconv6detail10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !991 ; 2 uses
  %i.ek = fadd float %i.ej, 1.000000e+00
  %i.el = fsub float 1.000000e+00, %i.ej
  %i.em = fcmp oeq float %i.ek, %i.el
  br i1 %i.em, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %.not84 = icmp ugt i64 %.8151.i, 9007199254740992
  br i1 %.not84, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = uitofp nneg i64 %.8151.i to double      ; 3 uses
  store double %i.en, ptr %2, align 8, !tbaa !315
  %i.eo = icmp slt i64 %.6139.i, 0
  br i1 %i.eo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ep = sub nsw i64 0, %.6139.i
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !315
  %i.es = fdiv double %i.en, %i.er
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.6139.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !315
  %i.ev = fmul double %i.eu, %i.en
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi double [ %i.ev, %bb.af ], [ %i.es, %bb.ae ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !315
  br i1 %i.h, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.ew = fneg double %storemerge
  store double %i.ew, ptr %2, align 8, !tbaa !315
  br label %bb.bc

bb.ai:                                            ; preds = %bb.ab
  %i.ex = icmp sgt i64 %.6139.i, -1
  br i1 %i.ex, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %.6139.i
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !90
  %.not83 = icmp ugt i64 %.8151.i, %i.ez
  br i1 %.not83, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = icmp eq i64 %.8151.i, 0
  br i1 %i.fa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fb = select i1 %i.h, double -0.000000e+00, double 0.000000e+00
  store double %i.fb, ptr %2, align 8, !tbaa !315
  br label %bb.bc

bb.am:                                            ; preds = %bb.ak
  %i.fc = uitofp i64 %.8151.i to double
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.6139.i
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !315
  %i.ff = fmul double %i.fe, %i.fc                ; 2 uses
  store double %i.ff, ptr %2, align 8, !tbaa !315
  br i1 %i.h, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  %i.fg = fneg double %i.ff
  store double %i.fg, ptr %2, align 8, !tbaa !315
  br label %bb.bc

bb.ao:                                            ; preds = %bb.ac, %bb.aj, %bb.ai, %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fi = icmp eq i64 %.8151.i, 0
  %i.fj = icmp slt i64 %.6139.i, -342             ; 2 uses
  %or.cond181 = or i1 %i.fj, %i.fi
  br i1 %or.cond181, label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = icmp sgt i64 %.6139.i, 308
  br i1 %i.fk, label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96, label %.noexc102

.noexc102:                                        ; preds = %bb.ap
  %i.fl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = shl i64 %.8151.i, %i.fl                 ; 2 uses
  %i.fo = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.fp = shl nsw i32 %i.fo, 1
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fq ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 5472
  %i.ft = load i64, ptr %i.fs, align 16, !tbaa !90
  %i.fu = zext i64 %i.fn to i128
  %i.fv = zext i64 %i.ft to i128
  %i.fw = mul nuw i128 %i.fv, %i.fu               ; 2 uses
  %i.fx = trunc i128 %i.fw to i64                 ; 2 uses
  %i.fy = lshr i128 %i.fw, 64
  %i.fz = trunc nuw i128 %i.fy to i64             ; 3 uses
  %i.ga = and i64 %i.fz, 511
  %i.gb = icmp eq i64 %i.ga, 511
  br i1 %i.gb, label %.noexc103, label %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit104

.noexc103:                                        ; preds = %.noexc102
  %i.gc = getelementptr i8, ptr %i.fr, i64 5480
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !90
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.fn, i64 %i.gd) ; 2 uses
  %i.ge = add i64 %6, %i.fx                       ; 2 uses
  %7 = icmp ugt i64 %6, %i.ge
  %i.gf = zext i1 %7 to i64
  %spec.select.i101 = add nuw i64 %i.gf, %i.fz
  br label %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit104

_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit104: ; preds = %.noexc103, %.noexc102
  %.pn201 = phi i64 [ %i.ge, %.noexc103 ], [ %i.fx, %.noexc102 ]
  %spec.select.i101.pn = phi i64 [ %spec.select.i101, %.noexc103 ], [ %i.fz, %.noexc102 ] ; 3 uses
  %i.gg = lshr i64 %spec.select.i101.pn, 63       ; 2 uses
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = add nuw nsw i64 %i.gg, 9                ; 2 uses
  %i.gj = lshr i64 %spec.select.i101.pn, %i.gi    ; 5 uses
  %i.gk = mul nsw i32 %i.fo, 217706
  %i.gl = ashr i32 %i.gk, 16
  %i.gm = add nsw i32 %i.gl, 1086
  %i.gn = sub nsw i32 %i.gm, %i.fm
  %i.go = add nsw i32 %i.gn, %i.gh                ; 3 uses
  %i.gp = icmp slt i32 %i.go, 1
  br i1 %i.gp, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit104
  %i.gq = sub nsw i32 1, %i.go                    ; 2 uses
  %i.gr = icmp samesign ugt i32 %i.gq, 63
  br i1 %i.gr, label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gs = zext nneg i32 %i.gq to i64
  %i.gt = lshr i64 %i.gj, %i.gs                   ; 2 uses
  %i.gu = and i64 %i.gt, 1
  %i.gv = add nuw nsw i64 %i.gu, %i.gt            ; 2 uses
  %i.gw = lshr i64 %i.gv, 1
  %i.gx = icmp samesign ugt i64 %i.gv, 9007199254740991
  %i.gy = zext i1 %i.gx to i32
  br label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96

bb.as:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit104
  %i.gz = icmp ult i64 %.pn201, 2
  %i.ha = add nsw i64 %.6139.i, 4
  %i.hb = icmp ult i64 %i.ha, 28
  %or.cond183.not204 = and i1 %i.hb, %i.gz
  %i.hc = and i64 %i.gj, 3
  %i.hd = icmp eq i64 %i.hc, 1
  %or.cond185 = select i1 %or.cond183.not204, i1 %i.hd, i1 false
  %i.he = shl i64 %i.gj, %i.gi
  %i.hf = icmp eq i64 %i.he, %spec.select.i101.pn
  %or.cond187 = select i1 %or.cond185, i1 %i.hf, i1 false
  %i.hg = and i64 %i.gj, 72057594037927934
  %.sroa.0146.0 = select i1 %or.cond187, i64 %i.hg, i64 %i.gj ; 2 uses
  %i.hh = and i64 %.sroa.0146.0, 1
  %i.hi = add nuw nsw i64 %i.hh, %.sroa.0146.0    ; 2 uses
  %i.hj = lshr i64 %i.hi, 1
  %.not21.i86 = icmp samesign ugt i64 %i.hi, 18014398509481983 ; 2 uses
  %i.hk = zext i1 %.not21.i86 to i32
  %.sroa.19152.0 = add nuw nsw i32 %i.go, %i.hk   ; 2 uses
  %i.hl = and i64 %i.hj, 9218868437227405311
  %.not22.i87 = icmp samesign ugt i32 %.sroa.19152.0, 2046 ; 2 uses
  %.not205 = select i1 %.not22.i87, i1 true, i1 %.not21.i86
  %spec.select196 = select i1 %.not205, i64 0, i64 %i.hl
  %spec.select197 = select i1 %.not22.i87, i32 2047, i32 %.sroa.19152.0
  br label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96

_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96: ; preds = %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.ar
  %.sroa.0146.2 = phi i64 [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ %i.gw, %bb.ar ], [ %spec.select196, %bb.as ] ; 3 uses
  %.sroa.19152.1 = phi i32 [ 0, %bb.aq ], [ 0, %bb.ao ], [ 2047, %bb.ap ], [ %i.gy, %bb.ar ], [ %spec.select197, %bb.as ] ; 3 uses
  br i1 %i.ef, label %bb.at, label %.thread177

bb.at:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96
  %i.hm = add i64 %.8151.i, 1                     ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 0
  %or.cond188 = or i1 %i.fj, %i.hn
  br i1 %or.cond188, label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = icmp sgt i64 %.6139.i, 308
  br i1 %i.ho, label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit, label %.noexc107

.noexc107:                                        ; preds = %bb.au
  %i.hp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hm, i1 true) ; 2 uses
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = shl i64 %i.hm, %i.hp                    ; 2 uses
  %i.hs = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.ht = shl nsw i32 %i.hs, 1
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 5472
  %i.hx = load i64, ptr %i.hw, align 16, !tbaa !90
  %i.hy = zext i64 %i.hr to i128
  %i.hz = zext i64 %i.hx to i128
  %i.ia = mul nuw i128 %i.hz, %i.hy               ; 2 uses
  %i.ib = trunc i128 %i.ia to i64                 ; 2 uses
  %i.ic = lshr i128 %i.ia, 64
  %i.id = trunc nuw i128 %i.ic to i64             ; 3 uses
  %i.ie = and i64 %i.id, 511
  %i.if = icmp eq i64 %i.ie, 511
  br i1 %i.if, label %.noexc108, label %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit109

.noexc108:                                        ; preds = %.noexc107
  %i.ig = getelementptr i8, ptr %i.hv, i64 5480
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !90
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.hr, i64 %i.ih) ; 2 uses
  %i.ii = add i64 %8, %i.ib                       ; 2 uses
  %9 = icmp ugt i64 %8, %i.ii
  %i.ij = zext i1 %9 to i64
  %spec.select.i106 = add nuw i64 %i.ij, %i.id
  br label %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit109

_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit109: ; preds = %.noexc108, %.noexc107
  %.pn207 = phi i64 [ %i.ii, %.noexc108 ], [ %i.ib, %.noexc107 ]
  %spec.select.i106.pn = phi i64 [ %spec.select.i106, %.noexc108 ], [ %i.id, %.noexc107 ] ; 3 uses
  %i.ik = lshr i64 %spec.select.i106.pn, 63       ; 2 uses
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = add nuw nsw i64 %i.ik, 9                ; 2 uses
  %i.in = lshr i64 %spec.select.i106.pn, %i.im    ; 5 uses
  %i.io = mul nsw i32 %i.hs, 217706
  %i.ip = ashr i32 %i.io, 16
  %i.iq = add nsw i32 %i.ip, 1086
  %i.ir = sub nsw i32 %i.iq, %i.hq
  %i.is = add nsw i32 %i.ir, %i.il                ; 3 uses
  %i.it = icmp slt i32 %i.is, 1
  br i1 %i.it, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit109
  %i.iu = sub nsw i32 1, %i.is                    ; 2 uses
  %i.iv = icmp samesign ugt i32 %i.iu, 63
  br i1 %i.iv, label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iw = zext nneg i32 %i.iu to i64
  %i.ix = lshr i64 %i.in, %i.iw                   ; 2 uses
  %i.iy = and i64 %i.ix, 1
  %i.iz = add nuw nsw i64 %i.iy, %i.ix            ; 2 uses
  %i.ja = lshr i64 %i.iz, 1
  %i.jb = icmp samesign ugt i64 %i.iz, 9007199254740991
  %i.jc = zext i1 %i.jb to i32
  br label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit

bb.ax:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float29compute_product_approximationILi55EEENS4_8value128Elm.exit109
  %i.jd = icmp ult i64 %.pn207, 2
  %i.je = add nsw i64 %.6139.i, 4
  %i.jf = icmp ult i64 %i.je, 28
  %or.cond190.not210 = and i1 %i.jf, %i.jd
  %i.jg = and i64 %i.in, 3
  %i.jh = icmp eq i64 %i.jg, 1
  %or.cond192 = select i1 %or.cond190.not210, i1 %i.jh, i1 false
  %i.ji = shl i64 %i.in, %i.im
  %i.jj = icmp eq i64 %i.ji, %spec.select.i106.pn
  %or.cond194 = select i1 %or.cond192, i1 %i.jj, i1 false
  %i.jk = and i64 %i.in, 72057594037927934
  %.sroa.0138.0 = select i1 %or.cond194, i64 %i.jk, i64 %i.in ; 2 uses
  %i.jl = and i64 %.sroa.0138.0, 1
  %i.jm = add nuw nsw i64 %i.jl, %.sroa.0138.0    ; 2 uses
  %i.jn = lshr i64 %i.jm, 1
  %.not21.i = icmp samesign ugt i64 %i.jm, 18014398509481983 ; 2 uses
  %i.jo = zext i1 %.not21.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.is, %i.jo      ; 2 uses
  %i.jp = and i64 %i.jn, 9218868437227405311
  %.not22.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not211 = select i1 %.not22.i, i1 true, i1 %.not21.i
  %spec.select198 = select i1 %.not211, i64 0, i64 %i.jp
  %spec.select199 = select i1 %.not22.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit

_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit: ; preds = %bb.ax, %bb.av, %bb.au, %bb.at, %bb.aw
  %.sroa.0138.2 = phi i64 [ 0, %bb.av ], [ 0, %bb.at ], [ 0, %bb.au ], [ %i.ja, %bb.aw ], [ %spec.select198, %bb.ax ]
  %.sroa.19.1 = phi i32 [ 0, %bb.av ], [ 0, %bb.at ], [ 2047, %bb.au ], [ %i.jc, %bb.aw ], [ %spec.select199, %bb.ax ]
  %.not.i125 = icmp ne i64 %.sroa.0146.2, %.sroa.0138.2
  %i.jq = icmp ne i32 %.sroa.19152.1, %.sroa.19.1
  %i.jr = select i1 %.not.i125, i1 true, i1 %i.jq
  br i1 %i.jr, label %.noexc, label %.thread177

.noexc:                                           ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = shl i64 %.8151.i, %i.js                 ; 2 uses
  %i.jv = trunc i64 %.6139.i to i32               ; 4 uses
  %i.jw = shl i32 %i.jv, 1                        ; 2 uses
  %i.jx = add i32 %i.jw, 684
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !90
  %i.kb = zext i64 %i.ju to i128
  %i.kc = zext i64 %i.ka to i128
  %i.kd = mul nuw i128 %i.kc, %i.kb               ; 2 uses
  %i.ke = lshr i128 %i.kd, 64
  %i.kf = trunc nuw i128 %i.ke to i64             ; 3 uses
  %i.kg = and i64 %i.kf, 511
  %i.kh = icmp eq i64 %i.kg, 511
  br i1 %i.kh, label %.noexc99, label %bb.ay

.noexc99:                                         ; preds = %.noexc
  %i.ki = trunc i128 %i.kd to i64
  %i.kj = add i32 %i.jw, 685
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !90
  %10 = tail call i64 @llvm.umulh.i64(i64 %i.ju, i64 %i.km)
  %i.kn = xor i64 %10, -1
  %11 = icmp ugt i64 %i.ki, %i.kn
  %i.ko = zext i1 %11 to i64
  %spec.select.i98 = add nuw i64 %i.ko, %i.kf
  br label %bb.ay

bb.ay:                                            ; preds = %.noexc, %.noexc99
  %spec.select.i98.pn = phi i64 [ %spec.select.i98, %.noexc99 ], [ %i.kf, %.noexc ] ; 2 uses
  %i.kp = lshr i64 %spec.select.i98.pn, 63        ; 2 uses
  %i.kq = trunc nuw nsw i64 %i.kp to i32
  %i.kr = xor i64 %i.kp, 1
  %i.ks = shl i64 %spec.select.i98.pn, %i.kr      ; 2 uses
  %i.kt = mul nsw i32 %i.jv, 217706
  %i.ku = ashr i32 %i.kt, 16
  %reass.sub.neg = sub nsw i32 %i.kq, %i.jt
  %i.kv = add nsw i32 %reass.sub.neg, %i.ku       ; 3 uses
  %i.kw = add nsw i32 %i.kv, -31693
  %i.kx = icmp slt i32 %i.kv, 31693
  br i1 %i.kx, label %bb.az, label %.thread177

bb.az:                                            ; preds = %bb.ay
  %i.ky = icmp ugt i64 %.8151.i, 9999
  br i1 %i.ky, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.az
  %.011.i.lcssa.i = phi i64 [ %.8151.i, %bb.az ], [ %i.la, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.jv, %bb.az ], [ %i.lb, %.lr.ph.i ] ; 2 uses
  %i.kz = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.kz, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.az, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.lb, %.lr.ph.i ], [ %i.jv, %bb.az ]
  %.011.i19.i = phi i64 [ %i.la, %.lr.ph.i ], [ %.8151.i, %bb.az ] ; 2 uses
  %i.la = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.lb = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.lc = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.lc, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !980

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.le, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.lf, %.lr.ph24.i ] ; 2 uses
  %i.ld = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.ld, label %.lr.ph29.i, label %_ZN5boost4json6detail8charconv6detail10fast_float19scientific_exponentIcEEiRNS4_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.lf, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.le, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.le = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.lf = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.lg = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.lg, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !981

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.li, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.lh, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.lh = udiv i64 %.213.i27.i, 10
  %i.li = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.lj = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.lj, label %.lr.ph29.i, label %_ZN5boost4json6detail8charconv6detail10fast_float19scientific_exponentIcEEiRNS4_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !982

_ZN5boost4json6detail8charconv6detail10fast_float19scientific_exponentIcEEiRNS4_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.li, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  store i64 0, ptr %i.b, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %4, i8 0, i64 504, i1 false)
  call void @_ZN5boost4json6detail8charconv6detail10fast_float14parse_mantissaIcEEvRNS4_6bigintERNS4_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #47
  %i.lk = add nsw i32 %.2.i.lcssa.i, 1
  %i.ll = load i64, ptr %i.b, align 8, !tbaa !90
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = sub i32 %i.lk, %i.lm                    ; 3 uses
  %i.lo = icmp sgt i32 %i.ln, -1
  br i1 %i.lo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float19scientific_exponentIcEEiRNS4_22parsed_number_string_tIT_EE.exit.i
  %i.lp = call { i64, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float19positive_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.ln) #47
  br label %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit

bb.bb:                                            ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float19scientific_exponentIcEEiRNS4_22parsed_number_string_tIT_EE.exit.i
  %i.lq = add nsw i32 %i.kv, 1075
  %i.lr = call { i64, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float19negative_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintES6_i(ptr noundef nonnull align 8 dereferenceable(504) %4, i64 %i.ks, i32 %i.lq, i32 noundef %i.ln) #47
  br label %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit

_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit: ; preds = %bb.ba, %bb.bb
  %.pn.i126 = phi { i64, i32 } [ %i.lp, %bb.ba ], [ %i.lr, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i126, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i126, 1
  %.pre = load i8, ptr %i.i, align 8, !tbaa !984, !range !231
  %.pre284 = load i64, ptr %i.fh, align 8, !tbaa !989
  br label %.thread177

.thread177:                                       ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit, %bb.ay, %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit
  %i.ls = phi i64 [ %.pre284, %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit ], [ %.8151.i, %bb.ay ], [ %.8151.i, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit ], [ %.8151.i, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96 ]
  %i.lt = phi i8 [ %.pre, %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit ], [ %i.j, %bb.ay ], [ %i.j, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit ], [ %i.j, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit ], [ %i.kw, %bb.ay ], [ %.sroa.19152.1, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit ], [ %.sroa.19152.1, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96 ] ; 3 uses
  %.sroa.0127.1 = phi i64 [ %.fca.0.extract, %_ZN5boost4json6detail8charconv6detail10fast_float10digit_compIdcEENS4_17adjusted_mantissaERNS4_22parsed_number_string_tIT0_EES6_.exit ], [ %i.ks, %bb.ay ], [ %.sroa.0146.2, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit ], [ %.sroa.0146.2, %_ZN5boost4json6detail8charconv6detail10fast_float13compute_floatINS4_13binary_formatIdEEEENS4_17adjusted_mantissaElm.exit96 ] ; 2 uses
  %i.lu = zext nneg i8 %i.lt to i64
  %i.lv = zext i32 %.sroa.9.1 to i64
  %i.lw = shl i64 %i.lv, 52
  %i.lx = shl nuw i64 %i.lu, 63
  %i.ly = or i64 %i.lw, %i.lx
  %i.lz = or i64 %i.ly, %.sroa.0127.1
  store i64 %i.lz, ptr %2, align 8
  %i.ma = icmp ne i64 %i.ls, 0
  %i.mb = icmp eq i64 %.sroa.0127.1, 0
  %or.cond8 = select i1 %i.ma, i1 %i.mb, i1 false
  %i.mc = icmp eq i32 %.sroa.9.1, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.mc, i1 false
  %i.md = icmp eq i32 %.sroa.9.1, 2047
  %or.cond195 = select i1 %or.cond11, i1 true, i1 %i.md
  %spec.select = select i1 %or.cond195, i32 34, i32 0
  br label %bb.bc

bb.bc:                                            ; preds = %.thread177, %bb.am, %bb.an, %bb.ag, %bb.ah, %bb.al, %bb.z
  %.sroa.075.0 = phi ptr [ %.9.i, %bb.am ], [ %i.ed, %bb.z ], [ %.9.i, %bb.al ], [ %.9.i, %bb.ag ], [ %.9.i, %bb.ah ], [ %.9.i, %bb.an ], [ %.9.i, %.thread177 ]
  %.sroa.7.0 = phi i32 [ 0, %bb.am ], [ %i.ee, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.an ], [ %spec.select, %.thread177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  %.sroa.075.1 = phi ptr [ %.sroa.075.0, %bb.bc ], [ %0, %bb.a ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %bb.bc ], [ 22, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.075.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float6detail12parse_infnanIdcEENS2_19from_chars_result_tIT0_EEPKS8_SB_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !93
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !93 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !93    ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !93    ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !315
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !93
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !93  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
end_hunk_1
begin_hunk_2_@_ZN5boost4json6detail8charconv6detail6parserImlEENS2_19from_chars_result_tIcEEPKcS8_RbRT_RT0_NS2_12chars_formatE:bb.a
  store i8 %i.ej, ptr %i.em, align 1, !tbaa !93
  %i.en = getelementptr inbounds nuw i8, ptr %.10, i64 4 ; 4 uses
  %i.eo = or disjoint i64 %.4228, 4               ; 3 uses
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !93  ; 2 uses
  %i.eq = add i8 %i.ep, -48
  %i.er = icmp ult i8 %i.eq, 10
  br i1 %i.er, label %.lr.ph296.3, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph296.3:                                      ; preds = %.lr.ph351.3
  %.not382 = icmp eq ptr %i.en, %1
  br i1 %.not382, label %.critedge10, label %.lr.ph351.4

.lr.ph351.4:                                      ; preds = %.lr.ph296.3
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eo
  store i8 %i.ep, ptr %i.es, align 1, !tbaa !93
  %i.et = getelementptr inbounds nuw i8, ptr %.10, i64 5 ; 4 uses
  %i.eu = add nuw nsw i64 %.4228, 5               ; 3 uses
  %i.ev = load i8, ptr %i.et, align 1, !tbaa !93  ; 2 uses
  %i.ew = add i8 %i.ev, -48
  %i.ex = icmp ult i8 %i.ew, 10
  br i1 %i.ex, label %.lr.ph296.4, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph296.4:                                      ; preds = %.lr.ph351.4
  %i.ey = icmp ne ptr %i.et, %1
  %or.cond22.4 = and i1 %i.ey, %i.du
  br i1 %or.cond22.4, label %.lr.ph351.5, label %.critedge10

.lr.ph351.5:                                      ; preds = %.lr.ph296.4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eu
  store i8 %i.ev, ptr %i.ez, align 1, !tbaa !93
  %i.fa = getelementptr inbounds nuw i8, ptr %.10, i64 6 ; 3 uses
  %i.fb = or disjoint i64 %.4228, 6               ; 2 uses
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !93
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %.critedge10, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph351:                                        ; preds = %.lr.ph296.preheader
  store i8 %i.dv, ptr %.4228.sroa.phi, align 1, !tbaa !93
  %i.ff = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 4 uses
  %i.fg = add nuw nsw i64 %.4228, 1               ; 3 uses
  %i.fh = load i8, ptr %i.ff, align 1, !tbaa !93  ; 2 uses
  %i.fi = add i8 %i.fh, -48
  %i.fj = icmp ult i8 %i.fi, 10
  br i1 %i.fj, label %.lr.ph296, label %..critedge10_crit_edge, !llvm.loop !1027

..critedge10_crit_edge:                           ; preds = %.lr.ph351.5, %.lr.ph351.4, %.lr.ph351.3, %.lr.ph351.2, %.lr.ph351.1, %.lr.ph351
  %.lcssa360 = phi ptr [ %i.ff, %.lr.ph351 ], [ %i.eb, %.lr.ph351.1 ], [ %i.eh, %.lr.ph351.2 ], [ %i.en, %.lr.ph351.3 ], [ %i.et, %.lr.ph351.4 ], [ %i.fa, %.lr.ph351.5 ]
  %.lcssa = phi i64 [ %i.fg, %.lr.ph351 ], [ %i.ec, %.lr.ph351.1 ], [ %i.ei, %.lr.ph351.2 ], [ %i.eo, %.lr.ph351.3 ], [ %i.eu, %.lr.ph351.4 ], [ %i.fb, %.lr.ph351.5 ]
  br label %.critedge10, !llvm.loop !1027

.critedge10:                                      ; preds = %.lr.ph296, %.lr.ph296.1, %.lr.ph296.2, %.lr.ph296.3, %.lr.ph296.4, %.lr.ph351.5, %..critedge10_crit_edge, %.lr.ph296.preheader
  %.5229.lcssa = phi i64 [ %.4228, %.lr.ph296.preheader ], [ %.lcssa, %..critedge10_crit_edge ], [ %i.fg, %.lr.ph296 ], [ %i.ec, %.lr.ph296.1 ], [ %i.ei, %.lr.ph296.2 ], [ %i.eo, %.lr.ph296.3 ], [ %i.eu, %.lr.ph296.4 ], [ %i.fb, %.lr.ph351.5 ] ; 2 uses
  %.11.lcssa = phi ptr [ %.10, %.lr.ph296.preheader ], [ %.lcssa360, %..critedge10_crit_edge ], [ %i.ff, %.lr.ph296 ], [ %i.eb, %.lr.ph296.1 ], [ %i.eh, %.lr.ph296.2 ], [ %i.en, %.lr.ph296.3 ], [ %i.et, %.lr.ph296.4 ], [ %i.fa, %.lr.ph351.5 ] ; 3 uses
  %i.fk = icmp ne ptr %.11.lcssa, %1
  %i.fl = icmp eq i64 %.5229.lcssa, 6
  %or.cond12 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond12, label %bb.az, label %.critedge10.thread

.critedge10.thread:                               ; preds = %.preheader, %.critedge10
  %.11.lcssa323 = phi ptr [ %.11.lcssa, %.critedge10 ], [ %.10, %.preheader ] ; 5 uses
  %.5229.lcssa322 = phi i64 [ %.5229.lcssa, %.critedge10 ], [ %.4228, %.preheader ] ; 3 uses
  %i.fm = icmp eq i64 %.5229.lcssa322, 0
  br i1 %i.fm, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge10.thread
  %i.fn = icmp eq i64 %.5229.lcssa322, 1
  %i.fo = load i8, ptr %i.b, align 1
  %i.fp = icmp eq i8 %i.fo, 45
  %or.cond16 = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond16, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.critedge10.thread
  %i.fq = sub nsw i64 %.0223, %.3227
  %storemerge = select i1 %i.ah, i64 %i.fq, i64 %.2222
  store i64 %storemerge, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.5229.lcssa322
  %i.fs = call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10from_charsIlEENS2_19from_chars_result_tIcEEPKcS8_RT_i(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 10) #47
  %i.ft = extractvalue { ptr, i32 } %i.fs, 1      ; 3 uses
  %i.fu = load i64, ptr %4, align 8, !tbaa !90
  %i.fv = add nsw i64 %i.fu, %.2219               ; 3 uses
  store i64 %i.fv, ptr %4, align 8, !tbaa !90
  switch i32 %i.ft, label %bb.au [
    i32 22, label %bb.az
    i32 34, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  br i1 %i.ah, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %.not, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fw = load i64, ptr %3, align 8, !tbaa !90
  %i.fx = call noundef i32 @_ZN5boost4json6detail8charconv6detail10num_digitsImEEiT_(i64 noundef %i.fw) #47
  %i.fy = sext i32 %i.fx to i64
  %.neg246 = sub nsw i64 %.0223, %i.fy
  %i.fz = load i64, ptr %4, align 8, !tbaa !90
  %i.ga = add i64 %.neg246, %i.fz
  store i64 %i.ga, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %.neg = sub nsw i64 %.0223, %.3227
  %i.gb = add i64 %.neg, %i.fv
  store i64 %i.gb, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.gc = add nsw i64 %i.fv, %.2222
  store i64 %i.gc, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.az:                                            ; preds = %bb.at, %bb.as, %bb.aw, %bb.ax, %bb.ay, %.critedge10, %bb.ar
  %.sroa.0210.6 = phi ptr [ %.11.lcssa, %.critedge10 ], [ %.11.lcssa323, %bb.ar ], [ %0, %bb.as ], [ %.11.lcssa323, %bb.at ], [ %.11.lcssa323, %bb.aw ], [ %.11.lcssa323, %bb.ax ], [ %.11.lcssa323, %bb.ay ]
  %.sroa.23.6 = phi i32 [ 34, %.critedge10 ], [ 0, %bb.ar ], [ %i.ft, %bb.as ], [ %i.ft, %bb.at ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread: ; preds = %._crit_edge106.i.i, %bb.u, %bb.v, %bb.v, %bb.ah, %bb.ai, %bb.ad, %bb.af, %bb.ae, %bb.ac, %bb.t, %._crit_edge, %bb.l, %bb.m, %bb.k, %bb.j, %bb.az
  %.sroa.0210.7 = phi ptr [ %0, %bb.af ], [ %0, %bb.j ], [ %0, %bb.k ], [ %1, %._crit_edge ], [ %0, %bb.t ], [ %0, %bb.ah ], [ %.8, %bb.ae ], [ %.sroa.0210.6, %bb.az ], [ %0, %bb.ad ], [ %.2.lcssa, %bb.m ], [ %.2.lcssa, %bb.l ], [ %.8, %bb.ac ], [ %0, %bb.v ], [ %i.dg, %bb.ai ], [ %0, %bb.u ], [ %0, %bb.v ], [ %.8, %._crit_edge106.i.i ]
  %.sroa.23.7 = phi i32 [ 22, %bb.af ], [ 22, %bb.j ], [ %i.af, %bb.k ], [ 0, %._crit_edge ], [ 22, %bb.t ], [ %i.do, %bb.ah ], [ 22, %bb.ae ], [ %.sroa.23.6, %bb.az ], [ 22, %bb.ad ], [ 0, %bb.m ], [ %i.af, %bb.l ], [ 0, %bb.ac ], [ 22, %bb.v ], [ %i.do, %bb.ai ], [ 22, %bb.u ], [ 22, %bb.v ], [ 34, %._crit_edge106.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ba

bb.ba:                                            ; preds = %bb.b, %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, %bb.h, %bb.a
  %.sroa.0210.10 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.1, %bb.h ], [ %.sroa.0210.7, %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread ]
  %.sroa.23.10 = phi i32 [ 22, %bb.a ], [ 22, %bb.b ], [ 0, %bb.h ], [ %.sroa.23.7, %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0210.10, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.23.10, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN5boost4json6detail8charconv6detail15compute_float64ElmbRb(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add i64 %0, 22
  %or.cond = icmp ult i64 %i.a, 45
  %i.b = icmp ult i64 %1, 9007199254740992
  %or.cond3 = and i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp nneg i64 %1 to double             ; 2 uses
  %i.d = icmp slt i64 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 0, %0
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL13powers_of_tenE, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !315
  %i.h = fdiv double %i.c, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL13powers_of_tenE, i64 %0
  %i.j = load double, ptr %i.i, align 8, !tbaa !315
  %i.k = fmul double %i.j, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.076 = phi double [ %i.h, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = fneg double %.076
  %.177 = select i1 %2, double %i.l, double %.076
  store i8 1, ptr %3, align 1, !tbaa !207
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %1, 0
  %i.n = icmp slt i64 %0, -325
  %or.cond5 = or i1 %i.n, %i.m
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.p = icmp sgt i64 %0, 308
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = select i1 %2, double -inf, double +inf
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.r = add nsw i64 %0, 325                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL14significand_64E, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !90
  %i.u = mul nsw i64 %0, 217706
  %i.v = ashr i64 %i.u, 16
  %i.w = add nsw i64 %i.v, 1087                   ; 2 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %i.y = shl i64 %1, %i.x                         ; 3 uses
  %i.z = zext i64 %i.y to i128
  %i.aa = zext i64 %i.t to i128
  %i.ab = mul nuw i128 %i.aa, %i.z                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 4 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 5 uses
  %i.af = and i64 %i.ad, 511                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 511
  br i1 %i.ag, label %bb.k, label %bb.m, !prof !252

bb.k:                                             ; preds = %bb.j
  %i.ah = xor i64 %i.ae, -1
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL15significand_128E, i64 %i.r
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !90
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.ak, i64 %i.y)
  %i.al = add i64 %4, %i.ae                       ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ae
  %i.an = zext i1 %i.am to i64
  %spec.select = add nuw i64 %i.an, %i.ad         ; 2 uses
  %.pre = and i64 %spec.select, 511
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ 511, %bb.k ], [ %i.af, %bb.j ]
  %.079 = phi i64 [ %i.al, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ]
  %.078 = phi i64 [ %spec.select, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ao = lshr i64 %.078, 63                      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 9
  %i.aq = lshr i64 %.078, %i.ap                   ; 3 uses
  %i.ar = icmp eq i64 %.079, 0
  %i.as = icmp eq i64 %.pre-phi, 0
  %or.cond90 = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = and i64 %i.aq, 3
  %i.au = icmp eq i64 %i.at, 1
  %or.cond94 = select i1 %or.cond90, i1 %i.au, i1 false, !prof !360
  br i1 %or.cond94, label %bb.o, label %.critedge, !prof !360

.critedge:                                        ; preds = %bb.m
  %i.av = xor i64 %i.ao, 1
  %i.aw = add nuw nsw i64 %i.av, %i.x
  %i.ax = and i64 %i.aq, 1
  %i.ay = add nuw nsw i64 %i.ax, %i.aq            ; 2 uses
  %i.az = icmp samesign ugt i64 %i.ay, 18014398509481983 ; 2 uses
  %i.ba = sext i1 %i.az to i64
  %spec.select91 = add nsw i64 %i.aw, %i.ba       ; 2 uses
  %i.bb = sub nsw i64 %i.w, %spec.select91        ; 2 uses
  %i.bc = icmp eq i64 %i.w, %spec.select91
  %i.bd = icmp ugt i64 %i.bb, 2046
  %i.be = select i1 %i.bc, i1 true, i1 %i.bd, !prof !252
  br i1 %i.be, label %bb.o, label %bb.n, !prof !252

bb.n:                                             ; preds = %.critedge
  %i.bf = lshr i64 %i.ay, 1
  %i.bg = and i64 %i.bf, 67553994410557439
  %i.bh = select i1 %i.az, i64 0, i64 %i.bg
  %i.bi = shl nuw nsw i64 %i.bb, 52
  %i.bj = select i1 %2, i64 -9223372036854775808, i64 0
  %i.bk = or disjoint i64 %i.bh, %i.bj
  %i.bl = or i64 %i.bk, %i.bi
  %i.bm = bitcast i64 %i.bl to double
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.critedge
  %storemerge88 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 0, %.critedge ]
  %.1 = phi double [ 0.000000e+00, %bb.m ], [ %i.bm, %bb.n ], [ 0.000000e+00, %.critedge ]
  store i8 %storemerge88, ptr %3, align 1, !tbaa !207
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %bb.g, %bb.e
  %.2 = phi double [ %.177, %bb.e ], [ %i.o, %bb.g ], [ %i.q, %bb.i ], [ %.1, %bb.o ]
  ret double %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail17from_chars_strtodIdEENS2_19from_chars_result_tIcEEPKcS8_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 6 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1024
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  %i.i = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #47 ; 3 uses
  %i.j = fcmp oeq double %i.i, +inf
  br i1 %i.j, label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp oeq double %i.i, 0.000000e+00
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, %1
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond.i, label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double %i.i, ptr %2, align 8, !tbaa !315
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  br label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit

_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.d ], [ %1, %bb.b ], [ %0, %bb.c ]
  %.sroa.4.0.i = phi i32 [ 0, %bb.d ], [ 34, %bb.b ], [ 34, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.r = add nuw nsw i64 %i.f, 1
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #55 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %0, i64 %i.f, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f
  store i8 0, ptr %i.u, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.v = call double @strtod(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #47 ; 3 uses
  %i.w = fcmp oeq double %i.v, +inf
  br i1 %i.w, label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = fcmp oeq double %i.v, 0.000000e+00
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, %1
  %or.cond.i15 = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond.i15, label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.v, ptr %2, align 8, !tbaa !315
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  br label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20

_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i16 = phi ptr [ %i.ad, %bb.h ], [ %1, %bb.f ], [ %0, %bb.g ]
  %.sroa.4.0.i17 = phi i32 [ 0, %bb.h ], [ 34, %bb.f ], [ 34, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  tail call void @free(ptr noundef nonnull %i.s) #47
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20, %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit
  %.sroa.0.0.i.pn = phi ptr [ %.sroa.0.0.i, %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit ], [ %.sroa.0.0.i16, %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20 ], [ %0, %bb.e ]
  %.sroa.4.0.i.pn = phi i32 [ %.sroa.4.0.i, %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit ], [ %.sroa.4.0.i17, %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit20 ], [ 12, %bb.e ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.i.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.sroa.4.0.i.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail8charconv6detail15is_integer_charEc(i8 noundef signext %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  %i.c = and i8 %0, -33
  %i.d = add i8 %i.c, -65
  %i.e = icmp ult i8 %i.d, 6
  %i.f = or i1 %i.b, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp ule ptr %0, %1
  %i.b = add i32 %3, -2
  %i.c = icmp ult i32 %i.b, 35
  %or.cond3.i = and i1 %i.a, %i.c
  br i1 %or.cond3.i, label %bb.b, label %_ZN5boost4json6detail8charconv6detail23from_chars_integer_implImmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %3 to i64                  ; 6 uses
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost4json6detail8charconv6detail23from_chars_integer_implImmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !93
  switch i8 %i.e, label %bb.d [
    i8 45, label %_ZN5boost4json6detail8charconv6detail23from_chars_integer_implImmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit
    i8 43, label %_ZN5boost4json6detail8charconv6detail23from_chars_integer_implImmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = udiv i64 -1, %i.d                        ; 2 uses
  %i.g = urem i64 -1, %i.d
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %invariant.smin.i = tail call i64 @llvm.smin.i64(i64 %i.j, i64 19) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %0, i64 %invariant.smin.i
  br label %.lr.ph.i
end_hunk_2
begin_hunk_3_@_ZN5boost4json6detail8charconv6detail10from_charsIlEENS2_19from_chars_result_tIcEEPKcS8_RT_i:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN5boost4json6detail8charconv6detailL12uchar_valuesE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !93
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %.not91.i = icmp samesign ult i64 %i.s, %i.d
  br i1 %.not91.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.167107.i, i64 1
  %i.u = mul i64 %.075106.i, %i.d
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  %i.w = add nuw nsw i64 %.0108.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %invariant.smin.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1029

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph.i, %bb.e
  %.075.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.v, %bb.f ], [ %.075106.i, %.lr.ph.i ] ; 2 uses
  %.167.lcssa.i = phi ptr [ %.06697.i, %bb.e ], [ %scevgep.i, %bb.f ], [ %.167107.i, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %invariant.smin.i, %bb.f ], [ %.0108.i, %.lr.ph.i ] ; 2 uses
  %i.x = icmp slt i64 %.0.lcssa.i, %i.m
  br i1 %i.x, label %.lr.ph120.i, label %._crit_edge121.thread.i

.lr.ph120.i:                                      ; preds = %._crit_edge.i, %bb.j
  %.1118.i = phi i64 [ %i.ai, %bb.j ], [ %.0.lcssa.i, %._crit_edge.i ]
  %.064117.i = phi i1 [ %.165.i, %bb.j ], [ false, %._crit_edge.i ] ; 2 uses
  %.4116.i = phi ptr [ %i.ah, %bb.j ], [ %.167.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.378115.i = phi i64 [ %.479.i, %bb.j ], [ %.075.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.y = load i8, ptr %.4116.i, align 1, !tbaa !93
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN5boost4json6detail8charconv6detailL12uchar_valuesE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !93
  %i.ac = zext i8 %i.ab to i64                    ; 3 uses
  %.not92.i = icmp samesign ult i64 %i.ac, %i.d
  br i1 %.not92.i, label %bb.g, label %._crit_edge121.i

bb.g:                                             ; preds = %.lr.ph120.i
  %i.ad = icmp ult i64 %.378115.i, %i.h
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ne i64 %.378115.i, %i.h
  %.not93.i = icmp samesign ult i64 %i.i, %i.ac
  %or.cond.i = select i1 %i.ae, i1 true, i1 %.not93.i
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = mul i64 %.378115.i, %i.d
  %i.ag = add i64 %i.af, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.479.i = phi i64 [ %i.ag, %bb.i ], [ %.378115.i, %bb.h ] ; 2 uses
  %.165.i = phi i1 [ %.064117.i, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.4116.i, i64 1 ; 2 uses
  %i.ai = add nuw nsw i64 %.1118.i, 1             ; 2 uses
  %i.aj = icmp slt i64 %i.ai, %i.m
  br i1 %i.aj, label %.lr.ph120.i, label %._crit_edge121.i, !llvm.loop !1030

._crit_edge121.i:                                 ; preds = %bb.j, %.lr.ph120.i
  %.378.lcssa.i = phi i64 [ %.378115.i, %.lr.ph120.i ], [ %.479.i, %bb.j ]
  %.4.lcssa.i = phi ptr [ %.4116.i, %.lr.ph120.i ], [ %i.ah, %bb.j ] ; 2 uses
  %.064.lcssa.i = phi i1 [ %.064117.i, %.lr.ph120.i ], [ %.165.i, %bb.j ]
  br i1 %.064.lcssa.i, label %_ZN5boost4json6detail8charconv6detail23from_chars_integer_implIlmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit, label %._crit_edge121.thread.i

._crit_edge121.thread.i:                          ; preds = %._crit_edge121.i, %._crit_edge.i
  %.4.lcssa141.i = phi ptr [ %.4.lcssa.i, %._crit_edge121.i ], [ %.167.lcssa.i, %._crit_edge.i ]
  %.378.lcssa140.i = phi i64 [ %.378.lcssa.i, %._crit_edge121.i ], [ %.075.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ak = sub i64 0, %.378.lcssa140.i
  %spec.select.i = select i1 %.07096.i, i64 %i.ak, i64 %.378.lcssa140.i
  store i64 %spec.select.i, ptr %2, align 8, !tbaa !90
  br label %_ZN5boost4json6detail8charconv6detail23from_chars_integer_implIlmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit

_ZN5boost4json6detail8charconv6detail23from_chars_integer_implIlmEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit: ; preds = %bb.a, %bb.c, %.thread.i, %._crit_edge121.i, %._crit_edge121.thread.i
  %.sroa.0.2.i = phi ptr [ %0, %bb.a ], [ %0, %bb.c ], [ %0, %.thread.i ], [ %.4.lcssa.i, %._crit_edge121.i ], [ %.4.lcssa141.i, %._crit_edge121.thread.i ]
  %.sroa.6.2.i = phi i32 [ 22, %bb.a ], [ 22, %bb.c ], [ 22, %.thread.i ], [ 34, %._crit_edge121.i ], [ 0, %._crit_edge121.thread.i ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %.sroa.0.2.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %.sroa.6.2.i, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4json6detail8charconv6detail10num_digitsImEEiT_(i64 noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp ugt i64 %0, 9999999999
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, 99999999999999
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %0, 9999999999999999
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %0, 99999999999999999
  br i1 %i.d, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ugt i64 %0, 999999999999999999
  br i1 %i.e, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.f = icmp ugt i64 %0, -8446744073709551617
  %. = select i1 %i.f, i32 20, i32 19
  br label %bb.t

bb.g:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %0, 999999999999999
  %.21 = select i1 %i.g, i32 16, i32 15
  br label %bb.t

bb.h:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %0, 999999999999
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ugt i64 %0, 9999999999999
  %.22 = select i1 %i.i, i32 14, i32 13
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.j = icmp samesign ugt i64 %0, 99999999999
  %.23 = select i1 %i.j, i32 12, i32 11
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %0, 99999
  br i1 %i.k, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.l = icmp samesign ugt i64 %0, 9999999
  br i1 %i.l, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.m = icmp samesign ugt i64 %0, 99999999
  br i1 %i.m, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.n = icmp samesign ugt i64 %0, 999999999
  %.24 = select i1 %i.n, i32 10, i32 9
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.o = icmp samesign ugt i64 %0, 999999
  %.25 = select i1 %i.o, i32 7, i32 6
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.p = icmp samesign ugt i64 %0, 99
  br i1 %i.p, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.q = icmp samesign ugt i64 %0, 999
  br i1 %i.q, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.r = icmp samesign ugt i64 %0, 9999
  %.26 = select i1 %i.r, i32 5, i32 4
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.s = icmp samesign ugt i64 %0, 9
  %.27 = select i1 %i.s, i32 2, i32 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.r, %bb.o, %bb.m, %bb.n, %bb.j, %bb.i, %bb.g, %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ %., %bb.f ], [ 3, %bb.q ], [ %.27, %bb.s ], [ 18, %bb.e ], [ %.21, %bb.g ], [ 17, %bb.d ], [ %.22, %bb.i ], [ 8, %bb.m ], [ %.23, %bb.j ], [ %.25, %bb.o ], [ %.24, %bb.n ], [ %.26, %bb.r ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #40

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #41

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #42

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_src.cpp() #43 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @_ZNSt8ios_base6xallocEv() #47
  store i32 %i.a, ptr @_ZN5boost4json12_GLOBAL__N_116serialize_xallocE, align 4, !tbaa !176
  %i.b = tail call noundef i32 @_ZNSt8ios_base6xallocEv() #47
  store i32 %i.b, ptr @_ZN5boost4json12_GLOBAL__N_118parse_depth_xallocE, align 4, !tbaa !176
  %i.c = tail call noundef i32 @_ZNSt8ios_base6xallocEv() #47
  store i32 %i.c, ptr @_ZN5boost4json12_GLOBAL__N_118parse_flags_xallocE, align 4, !tbaa !176
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #39

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold noreturn }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #33 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { nounwind }
attributes #48 = { noreturn }
attributes #49 = { noreturn nounwind }
attributes #50 = { builtin nounwind }
attributes #51 = { nounwind willreturn memory(none) }
attributes #52 = { allocsize(0) }
attributes #53 = { builtin allocsize(0) }
attributes #54 = { nounwind willreturn memory(read) }
attributes #55 = { nounwind allocsize(0) }

!llvm.module.flags = !{!77, !78}
!llvm.ident = !{!79}
!llvm.errno.tbaa = !{!84}

!0 = distinct !{null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE, null}
!4 = distinct !{ptr @_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE, null}
!5 = distinct !{!5, !120}
!6 = distinct !{!6, !120}
!7 = distinct !{null, null}
!8 = distinct !{null, null}
!9 = distinct !{ptr @_ZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrE, null, null}
!10 = distinct !{!10, !120}
!11 = distinct !{ptr @_ZNK5boost4json5array6try_atEm, null, null, null, null}
!12 = distinct !{null, null, null}
!13 = distinct !{!13, !120}
!14 = distinct !{!14, !120}
!15 = distinct !{!15, !120}
!16 = distinct !{!16, !120}
!17 = distinct !{null, null, ptr @_ZN5boost4json14key_value_pairD2Ev, null}
!18 = distinct !{null, null, ptr @_ZN5boost4json14key_value_pairD2Ev}
!19 = distinct !{!19, !120}
!20 = distinct !{null, null}
!21 = distinct !{null}
!22 = distinct !{null, ptr @_ZN5boost4json14key_value_pairD2Ev, null}
!23 = distinct !{null, ptr @_ZN5boost4json14key_value_pairD2Ev}
!24 = distinct !{ptr @_ZN5boost4json14key_value_pairD2Ev, null}
!25 = distinct !{ptr @_ZNK5boost4json6object6try_atENS_4core17basic_string_viewIcEE, null, null, null, null}
!26 = distinct !{ptr @_ZN5boost4json6stringD2Ev, null, null}
!27 = distinct !{!27, !120}
!28 = distinct !{!28, !120}
!29 = distinct !{!29, !120}
!30 = distinct !{!30, !120}
!31 = distinct !{ptr @_ZN5boost4json11value_stack5resetENS0_11storage_ptrE, null, null}
!32 = distinct !{ptr @_ZN5boost4json11value_stack7releaseEv, null, null}
!33 = distinct !{null, ptr @_ZN5boost4json13stream_parserC2ENS0_11storage_ptrERKNS0_13parse_optionsEPhm, null, null, null, null}
!34 = distinct !{ptr @_ZN5boost4json13stream_parser5resetENS0_11storage_ptrE, ptr @_ZN5boost4json11value_stack5resetENS0_11storage_ptrE, null, null}
!35 = distinct !{ptr @_ZN5boost4json13stream_parser5writeEPKcmRNS_6system10error_codeE, null, null, null, null}
!36 = distinct !{ptr @_ZN5boost4json13stream_parser5writeEPKcmRNS_6system10error_codeE, ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failENS_6system10error_codeE, null, null, null, null}
!37 = distinct !{ptr @_ZN5boost4json13stream_parser7releaseEv, ptr @_ZN5boost4json11value_stack7releaseEv, null, null}
!38 = distinct !{ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failENS_6system10error_codeE, null, null, null, null}
!39 = distinct !{null, null, null, null}
!40 = distinct !{null, null, null, null}
!41 = distinct !{ptr @_ZN5boost4json6parser5writeEPKcmRNS_6system10error_codeE, null, null, null, null}
!42 = distinct !{ptr @_ZN5boost4json6parser5writeEPKcmRNS_6system10error_codeE, ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failENS_6system10error_codeE, null, null, null, null}
!43 = distinct !{!43, !120}
!44 = distinct !{ptr @_ZN5boost4json5valueaSEOS1_, null, null}
!45 = distinct !{null, ptr @_ZN5boost4json10serializer4readEPcm}
!46 = distinct !{!46, !120}
!47 = distinct !{ptr @_ZNK5boost4json5value13try_as_objectEv, null, null, null, null}
!48 = distinct !{ptr @_ZNK5boost4json5value12try_as_arrayEv, null, null, null, null}
!49 = distinct !{!49, !120}
!50 = distinct !{null, null}
!51 = distinct !{null, null}
!52 = distinct !{!52, !120}
!53 = distinct !{!53, !120}
!54 = distinct !{ptr @_ZN5boost4json6detail5stack12reserve_implEm, null}
!55 = distinct !{ptr @_ZN5boost4json6detail5stack12reserve_implEm, null}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{!58, !120}
!59 = distinct !{!59, !120}
!60 = distinct !{null, ptr @_ZN5boost4json11value_stack9push_nullEv, null, null, null}
!61 = distinct !{null, ptr @_ZN5boost4json11value_stack9push_nullEv, null, null, null}
!62 = distinct !{null, ptr @_ZN5boost4json11value_stack9push_boolEb, null, null, null}
!63 = distinct !{null, ptr @_ZN5boost4json11value_stack9push_boolEb, null, null, null}
!64 = distinct !{null, ptr @_ZN5boost4json11value_stack11push_doubleEd, null, null, null}
!65 = distinct !{null, ptr @_ZN5boost4json11value_stack11push_doubleEd, null, null, null}
!66 = distinct !{!66, !120}
!67 = distinct !{!67, !120}
!68 = distinct !{!68, !120}
!69 = distinct !{null, ptr @_ZN5boost4json11value_stack10push_int64El, null, null, null}
!70 = distinct !{null, ptr @_ZN5boost4json11value_stack10push_int64El, null, null, null}
!71 = distinct !{ptr @_ZN5boost4json6detail7handler9on_uint64EmNS_4core17basic_string_viewIcEERNS_6system10error_codeE, ptr @_ZN5boost4json11value_stack11push_uint64Em, null, null, null}
!72 = distinct !{ptr @_ZN5boost4json6detail7handler9on_uint64EmNS_4core17basic_string_viewIcEERNS_6system10error_codeE, ptr @_ZN5boost4json11value_stack11push_uint64Em, null, null, null}
!73 = distinct !{!73, !120}
!74 = distinct !{!74, !120}
!75 = distinct !{!75, !120}
!76 = distinct !{!76, !120}
!77 = !{i32 8, !"PIC Level", i32 2}
!78 = !{i32 7, !"uwtable", i32 2}
!79 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!80 = !{!"Simple C++ TBAA"}
!81 = !{!"omnipotent char", !80, i64 0}
!82 = !{!"int", !81, i64 0}
!83 = !{!"__libc_errno", !82, i64 0}
!84 = !{!83, !82, i64 0}
!85 = !{!"any pointer", !81, i64 0}
!86 = !{!"p1 omnipotent char", !85, i64 0}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !86, i64 0}
!88 = !{!87, !86, i64 0}
!89 = !{!"long", !81, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !87, i64 0, !89, i64 8, !81, i64 16}
!92 = !{!91, !86, i64 0}
!93 = !{!81, !81, i64 0}
!94 = !{!91, !89, i64 8}
!95 = !{!"_ZTSN5boost4json11storage_ptrE", !89, i64 0}
!96 = !{!95, !89, i64 0}
!97 = !{!"vtable pointer", !80, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!"_ZTSN5boost4json5array5tableE", !82, i64 0, !82, i64 4}
!100 = !{!99, !82, i64 4}
!101 = !{!"long long", !81, i64 0}
!102 = !{!"_ZTSSt13__atomic_baseIjE", !82, i64 0}
!103 = !{!"_ZTSSt6atomicIjE", !102, i64 0}
!104 = !{!"_ZTSN5boost6system14error_categoryE", !101, i64 8, !81, i64 16, !103, i64 48}
!105 = !{!104, !101, i64 8}
end_hunk_3
