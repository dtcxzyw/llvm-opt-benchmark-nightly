inline.NumInlined: 996
inline.NumDeleted: 405
begin_hunk_0_@_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1198, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1199, !noalias !1160, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1199, !noalias !1160, !noundef !10
  tail call void %i.y(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ab, i64 noundef %i.ad), !noalias !1152, !inline_history !1200
  br label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.d
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body7.i

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.af = load ptr, ptr %1, align 8, !alias.scope !1207, !noalias !1160, !noundef !10 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1220, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1221, !noalias !1160, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1221, !noalias !1160, !noundef !10
  invoke void %i.ai(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.al, i64 noundef %i.an)
          to label %.body.i unwind label %bb.j, !noalias !1152, !inline_history !60

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1152
  unreachable

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1162, !noalias !1165, !nonnull !10, !noundef !10
  %i.ar = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !1167
  %i.as = add nuw nsw i64 %i.c, 1
  store i64 %i.as, ptr %i.b, align 8, !alias.scope !1162, !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1159
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load i64, ptr %i.av, align 8, !noundef !10 ; 2 uses
  %i.ax = trunc nuw nsw i64 %i.c to i16
  %.not = icmp eq i64 %i.aw, 0
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.k
  %.sroa.6.0.ph = phi i16 [ %i.bh, %bb.m ], [ %3, %bb.k ] ; 2 uses
  %.sroa.09.0.ph = phi i16 [ %i.ba, %bb.m ], [ %i.ax, %bb.k ] ; 2 uses
  %.sroa.07.0.ph = phi i64 [ %i.bg, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.bi, %bb.m ], [ %4, %bb.k ] ; 2 uses
  %i.ay = icmp ult i64 %.sroa.0.0.ph, %i.aw       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ay, %.not.not
  %.sroa.0.0.ph.mux = select i1 %i.ay, i64 %.sroa.0.0.ph, i64 0 ; 2 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.sroa.0.0.ph.mux ; 4 uses
  %i.ba = load i16, ptr %i.az, align 2, !noundef !10 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 3 uses
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  store i16 %.sroa.09.0.ph, ptr %i.az, align 2
  store i16 %.sroa.6.0.ph, ptr %i.bc, align 2
  %i.bd = icmp ugt i64 %.sroa.07.0.ph, 127
  %or.cond = select i1 %5, i1 true, i1 %i.bd
  %i.be = load i64, ptr %0, align 8, !range !26
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond3 = select i1 %or.cond, i1 %i.bf, i1 false
  br i1 %or.cond3, label %bb.n, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

bb.m:                                             ; preds = %.loopexit
  %i.bg = add i64 %.sroa.07.0.ph, 1
  %i.bh = load i16, ptr %i.bc, align 2, !noundef !10
  store i16 %.sroa.09.0.ph, ptr %i.az, align 2
  store i16 %.sroa.6.0.ph, ptr %i.bc, align 2
  %i.bi = add nuw i64 %.sroa.0.0.ph.mux, 1
  br label %.outer

bb.n:                                             ; preds = %bb.l
  store i64 1, ptr %0, align 8
  br label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.n, %bb.l
  %.sroa.06.0 = phi i64 [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ 1, %bb.g ]
  %i.bj = insertvalue { i64, i64 } poison, i64 %.sroa.06.0, 0
  %i.bk = insertvalue { i64, i64 } %i.bj, i64 %i.c, 1
  ret { i64, i64 } %i.bk

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1222, !noalias !1225, !nonnull !10, !noundef !10 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.i, align 8, !alias.scope !1222, !noalias !1225 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = icmp ult i64 %1, %.promoted
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %.sroa.0.062 = phi i64 [ %1, %.lr.ph ], [ %i.db, %bb.at ] ; 10 uses
  %i.t = phi i64 [ %.promoted, %.lr.ph ], [ %i.ah, %bb.at ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.062 ; 7 uses
  %i.v = load i64, ptr %i.u, align 8, !range !150, !noalias !1227, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !1227, !noundef !10 ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !150, !noalias !1227, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1227, !noundef !10 ; 12 uses
  %i.ac = trunc nuw i64 %i.v to i1
  %i.ad = trunc nuw i64 %i.z to i1                ; 2 uses
  br i1 %i.ac, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.at, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.db, %bb.at ]
  %.lcssa = phi i64 [ %.promoted, %bb.a ], [ %i.ah, %bb.at ]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #35, !noalias !1227
  unreachable

bb.c:                                             ; preds = %bb.b
  br i1 %i.ad, label %bb.o, label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.x, %i.f                 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.x
  store i64 0, ptr %i.af, align 8, !noalias !1227
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !noalias !1227
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.y, %bb.u, %bb.m, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1227
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.ag = icmp ult i64 %i.t, 128102389400760776
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !1231
  %i.ah = add nsw i64 %i.t, -1                    ; 14 uses
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.ah
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false), !noalias !1232
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !1234, !noalias !1235
  %i.aj = load i64, ptr %i.a, align 8, !range !150, !noalias !1227, !noundef !10
  %2 = trunc nuw i64 %i.aj to i1
  %i.ak = load i64, ptr %i.k, align 8, !noalias !1227
  %i.al = icmp eq i64 %i.ak, %i.ah
  %or.cond.i = select i1 %2, i1 %i.al, i1 false
  br i1 %or.cond.i, label %bb.ab, label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !150, !noalias !1227, !noundef !10
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !1236

bb.j:                                             ; preds = %bb.e
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #35, !noalias !1227
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ab, ptr %i.ap, align 8, !noalias !1227
  %i.aq = icmp ult i64 %i.ab, %i.t
  br i1 %i.aq, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #35, !noalias !1227
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  store i64 0, ptr %i.ar, align 8, !noalias !1227
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.x, ptr %i.as, align 8, !noalias !1227
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #35, !noalias !1227
  unreachable

bb.o:                                             ; preds = %bb.c
  %i.at = icmp ult i64 %i.x, %i.t
  br i1 %i.at, label %bb.w, label %bb.x

bb.p:                                             ; preds = %bb.c
  %i.au = icmp ult i64 %i.ab, %i.f
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !150, !noalias !1227, !noundef !10
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.s, label %bb.t, !prof !1236

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #35, !noalias !1227
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.x, ptr %i.ay, align 8, !noalias !1227
  %i.az = icmp ult i64 %i.x, %i.t
  br i1 %i.az, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #35, !noalias !1227
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.x ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %i.bb, align 8, !noalias !1227
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %i.ab, ptr %i.bc, align 8, !noalias !1227
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #35, !noalias !1227
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.x ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 1, ptr %i.be, align 8, !noalias !1227
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %i.ab, ptr %i.bf, align 8, !noalias !1227
  %i.bg = icmp ult i64 %i.ab, %i.t
  br i1 %i.bg, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.o
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #35, !noalias !1227
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  store i64 1, ptr %i.bh, align 8, !noalias !1227
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.x, ptr %i.bi, align 8, !noalias !1227
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.z:                                             ; preds = %bb.w
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #35, !noalias !1227
  unreachable

bb.aa:                                            ; preds = %bb.ab, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bj = load i64, ptr %i.l, align 8, !range !150, !noalias !1227, !noundef !10
  %.not.i = trunc nuw i64 %i.bj to i1
  %i.bk = load i64, ptr %i.m, align 8, !noalias !1227
  %i.bl = icmp eq i64 %i.bk, %i.ah
  %or.cond73.i = select i1 %.not.i, i1 %i.bl, i1 false
  br i1 %or.cond73.i, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  store i64 1, ptr %i.a, align 8, !noalias !1227
  store i64 %.sroa.0.062, ptr %i.k, align 8, !noalias !1227
  br label %bb.aa

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %.not71.i = icmp eq i64 %.sroa.0.062, %i.ah
  br i1 %.not71.i, label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  store i64 1, ptr %i.l, align 8, !noalias !1227
  store i64 %.sroa.0.062, ptr %i.m, align 8, !noalias !1227
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  %i.bm = icmp ult i64 %.sroa.0.062, %i.ah
  br i1 %i.bm, label %bb.af, label %.invoke.i

bb.af:                                            ; preds = %bb.ae
  %i.bn = load i64, ptr %i.y, align 8, !range !150, !noalias !1227, !noundef !10
  %i.bo = load i64, ptr %i.aa, align 8, !noalias !1227, !noundef !10 ; 6 uses
  %i.bp = load i64, ptr %i.u, align 8, !range !150, !noalias !1227, !noundef !10
  %i.bq = load i64, ptr %i.w, align 8, !noalias !1227, !noundef !10 ; 6 uses
  %i.br = trunc nuw i64 %i.bp to i1
  br i1 %i.br, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %.invoke.i, %.invoke98.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1249, !noalias !1227, !nonnull !10, !align !166, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !1250, !nonnull !10, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !1249, !noalias !1227, !noundef !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1249, !noalias !1227, !noundef !10
  invoke void %i.bw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.bz, i64 noundef %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.as, !noalias !1227, !inline_history !1077

bb.ah:                                            ; preds = %bb.af
  %i.cc = icmp ult i64 %i.bq, %i.ah
  br i1 %i.cc, label %bb.am, label %.invoke.i

bb.ai:                                            ; preds = %bb.af
  %i.cd = icmp ult i64 %i.bq, %i.f
  br i1 %i.cd, label %bb.aj, label %.invoke.i

bb.aj:                                            ; preds = %bb.ai
  %i.ce = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.bq ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !150, !noalias !1227, !noundef !10
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.ak, label %.invoke98.i, !prof !1236

bb.ak:                                            ; preds = %bb.aj
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.0.062, ptr %i.ch, align 8, !noalias !1227
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.ci = trunc nuw i64 %i.bn to i1
  br i1 %i.ci, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.bq ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 1, ptr %i.ck, align 8, !noalias !1227
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %.sroa.0.062, ptr %i.cl, align 8, !noalias !1227
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %i.cm = icmp ult i64 %i.bo, %i.ah
  br i1 %i.cm, label %bb.ar, label %.invoke.i

bb.ao:                                            ; preds = %bb.al
  %i.cn = icmp ult i64 %i.bo, %i.f
  br i1 %i.cn, label %bb.ap, label %.invoke.i

bb.ap:                                            ; preds = %bb.ao
  %i.co = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.bo ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !150, !noalias !1227, !noundef !10
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.aq, label %.invoke98.i, !prof !1236

bb.aq:                                            ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %.sroa.0.062, ptr %i.cr, align 8, !noalias !1227
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.invoke98.i:                                      ; preds = %bb.ap, %bb.aj
  %i.cs = phi ptr [ @18, %bb.aj ], [ @21, %bb.ap ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #33
          to label %.cont99.i unwind label %bb.ag, !noalias !1227

.cont99.i:                                        ; preds = %.invoke98.i
  unreachable

bb.ar:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.bo ; 2 uses
  store i64 1, ptr %i.ct, align 8, !noalias !1227
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %.sroa.0.062, ptr %i.cu, align 8, !noalias !1227
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.invoke.i:                                        ; preds = %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.ae
  %i.cv = phi i64 [ %i.bo, %bb.ao ], [ %i.bq, %bb.ah ], [ %i.bq, %bb.ai ], [ %i.bo, %bb.an ], [ %.sroa.0.062, %bb.ae ]
  %i.cw = phi i64 [ %i.f, %bb.ao ], [ %i.ah, %bb.ah ], [ %i.f, %bb.ai ], [ %i.ah, %bb.an ], [ %i.ah, %bb.ae ]
  %i.cx = phi ptr [ @20, %bb.ao ], [ @19, %bb.ah ], [ @17, %bb.ai ], [ @22, %bb.an ], [ @16, %bb.ae ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #33
          to label %.cont.i unwind label %bb.ag, !noalias !1227

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.as:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1227
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ag
  resume { ptr, i32 } %i.bs

_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ac, %bb.aq, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1227
  %i.cz = load i64, ptr %i.n, align 8, !range !150, !noundef !10
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.db = load i64, ptr %i.o, align 8, !noundef !10 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.dc = load ptr, ptr %i.p, align 8, !alias.scope !1263, !nonnull !10, !align !166, !noundef !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !1263, !nonnull !10, !noundef !10
  %i.df = load ptr, ptr %i.r, align 8, !alias.scope !1263, !noundef !10
  %i.dg = load i64, ptr %i.s, align 8, !alias.scope !1263, !noundef !10
  call void %i.de(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.df, i64 noundef %i.dg), !inline_history !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dh = icmp ult i64 %i.db, %i.ah
  br i1 %i.dh, label %bb.b, label %._crit_edge

bb.au:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.di = load ptr, ptr %i.p, align 8, !alias.scope !1277, !nonnull !10, !align !166, !noundef !10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !1277, !nonnull !10, !noundef !10
  %i.dl = load ptr, ptr %i.r, align 8, !alias.scope !1277, !noundef !10
  %i.dm = load i64, ptr %i.s, align 8, !alias.scope !1277, !noundef !10
  call void %i.dk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.dl, i64 noundef %i.dm), !inline_history !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ugt i64 %1, 32768                   ; 2 uses
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 7 uses
  %.idx = shl nuw nsw i64 %i.h, 2                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0                      ; 3 uses
  br i1 %i.j, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.051 = phi ptr [ %i.f, %.lr.ph ], [ %i.n, %bb.h ] ; 3 uses
end_hunk_0
