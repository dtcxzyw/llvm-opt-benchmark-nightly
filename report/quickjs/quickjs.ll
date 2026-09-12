Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@JS_SetPropertyValue:bb.a
bb.cy:                                            ; preds = %bb.cx
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !249
  store i32 %i.ng, ptr %i.mz, align 4, !tbaa !191
  br label %bb.da

.preheader.i:                                     ; preds = %bb.cx, %.preheader.i
  %.0.i.i = phi ptr [ %i.nl, %.preheader.i ], [ %i.nd, %bb.cx ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !249 ; 2 uses
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !299 ; 3 uses
  %i.nm = icmp eq ptr %i.nl, %i.mh
  br i1 %i.nm, label %bb.cz, label %.preheader.i

bb.cz:                                            ; preds = %.preheader.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.np = load i32, ptr %i.no, align 8, !tbaa !249
  store i32 %i.np, ptr %i.nn, align 8, !tbaa !249
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.nj, %bb.cz ], [ %i.nb, %bb.cy ]
  %.1.i.i = phi i32 [ %i.mo, %._crit_edge.i ], [ %i.ni, %bb.cz ], [ %i.na, %bb.cy ]
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mc, i64 1112 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !246
  %i.ns = zext i32 %i.nr to i64
  %i.nt = shl nuw nsw i64 %i.ns, 1
  %i.nu = or disjoint i64 %i.nt, 1
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.pre-phi.i
  store ptr %i.nv, ptr %i.nw, align 8, !tbaa !299
  store i32 %.1.i.i, ptr %i.nq, align 8, !tbaa !246
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !357
  %.not35.i.i = icmp eq ptr %i.ny, null
  br i1 %.not35.i.i, label %JS_FreeAtomStruct.exit.i, label %bb.db, !prof !324

bb.db:                                            ; preds = %bb.da
  tail call fastcc void @reset_weak_ref(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.nx), !inline_history !35
  br label %JS_FreeAtomStruct.exit.i

JS_FreeAtomStruct.exit.i:                         ; preds = %bb.db, %bb.da
  tail call void @js_free_rt(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.mh), !inline_history !35
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mc, i64 1084 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !244
  %i.ob = add nsw i32 %i.oa, -1
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !244
  br label %JS_FreeValueRT.exit195

JS_FreeValueRT.exit195:                           ; preds = %JS_FreeAtomStruct.exit.i, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %.critedge.thread
  %.1 = phi i32 [ %.0.ph, %.critedge.thread ], [ -1, %bb.ct ], [ -1, %bb.cr ], [ -1, %bb.cs ], [ %i.ma, %bb.cu ], [ %i.ma, %bb.cv ], [ %i.ma, %JS_FreeAtomStruct.exit.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %3, i64 %4, i64 %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = icmp ult i64 %3, 2147483648
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @JS_SetPropertyValue(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 0, i64 %4, i64 %5, i32 noundef 16384)
  br label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.d = call i64 @i64toa(ptr noundef nonnull %i.a, i64 noundef %3) #49, !inline_history !67
  %i.e = trunc i64 %i.d to i32
  %i.f = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.e), !inline_history !67 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 1
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %JS_NewAtomInt64.exit.thread, label %JS_NewAtomInt64.exit

JS_NewAtomInt64.exit.thread:                      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.d

JS_NewAtomInt64.exit:                             ; preds = %bb.c
  %i.j = extractvalue { i64, i64 } %i.f, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !232
  %i.m = inttoptr i64 %i.j to ptr
  %i.n = call fastcc i32 @__JS_NewAtom(ptr noundef %i.l, ptr noundef %i.m, i32 noundef 1), !inline_history !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %JS_NewAtomInt64.exit.thread, %JS_NewAtomInt64.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !232
  %i.r = trunc i64 %5 to i32
  %i.s = icmp ugt i32 %i.r, -10
  br i1 %i.s, label %bb.e, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %4 to ptr
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191  ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !191
  %i.x = icmp slt i32 %i.v, 2
  br i1 %i.x, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @js_free_value_rt(ptr noundef %i.q, i64 %4, i64 %5), !inline_history !291
  br label %JS_FreeValue.exit

bb.g:                                             ; preds = %JS_NewAtomInt64.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %1, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.y, align 8
  %i.z = call fastcc i32 @JS_SetPropertyInternal2(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef %i.n, i64 %4, i64 %5, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @JS_FreeAtom(ptr noundef nonnull %0, i32 noundef %i.n)
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.z, %bb.g ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @JS_SetPropertyStr(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i64 %4, i64 %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #52, !inline_history !385
  %i.b = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.a), !inline_history !385 ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.f = trunc i64 %5 to i32
  %i.g = icmp ugt i32 %i.f, -10
  br i1 %i.g, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %4 to ptr
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191  ; 2 uses
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !191
  %i.l = icmp slt i32 %i.j, 2
  br i1 %i.l, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @js_free_value_rt(ptr noundef %i.e, i64 %4, i64 %5), !inline_history !291
  br label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %1, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.m, align 8
  %i.n = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.b, i64 %4, i64 %5, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 16384), !inline_history !68
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.b)
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @JS_DefineProperty(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%struct.JSValue) align 8 captures(none) %6, ptr nofree noundef readonly byval(%struct.JSValue) align 8 captures(none) %7, i32 noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.d = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.d, 4294967295
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %js_update_property_flags.exit

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr                   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 18 ; 4 uses
  %i.j = icmp slt i32 %3, 0                       ; 2 uses
  %i.k = and i32 %3, 2147483647                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %i.m = lshr i32 %8, 8                           ; 3 uses
  %i.n = and i32 %8, 7
  %i.o = and i32 %i.n, %i.m
  %i.p = and i32 %i.m, 7
  %i.q = xor i32 %i.p, 7
  %i.r = or i32 %i.q, %i.o                        ; 2 uses
  %.not219 = icmp eq i32 %i.r, 7
  %i.s = and i32 %8, 6144                         ; 2 uses
  %.not220 = icmp eq i32 %i.s, 0                  ; 2 uses
  %or.cond259 = and i1 %.not220, %.not219
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.u = and i32 %8, 8192
  %.not224 = icmp eq i32 %i.u, 0                  ; 7 uses
  %i.v = and i32 %8, 257
  %i.w = icmp eq i32 %i.v, 257
  %i.x = and i32 %8, 1024
  %.not16.i = icmp eq i32 %i.x, 0
  %i.y = and i32 %8, 14848
  %.not18.i = icmp eq i32 %i.y, 0                 ; 2 uses
  %9 = icmp ne i32 %i.s, 0                        ; 3 uses
  %i.z = and i32 %8, 514                          ; 3 uses
  %i.aa = icmp eq i32 %i.z, 514
  br label %JS_FreeValue.exit315.outer

JS_FreeValue.exit315.outer:                       ; preds = %bb.v, %bb.c
  %.sroa.0173.0.ph = phi i64 [ %.sroa.0173.2, %bb.v ], [ %4, %bb.c ] ; 8 uses
  %.sroa.11.0.ph = phi i64 [ %.sroa.11.2, %bb.v ], [ %5, %bb.c ] ; 8 uses
  br i1 %i.j, label %JS_FreeValue.exit315.outer.split.us, label %JS_FreeValue.exit315.outer.split

JS_FreeValue.exit315.outer.split.us:              ; preds = %JS_FreeValue.exit315.outer
  br i1 %or.cond259, label %JS_FreeValue.exit315.outer.split.us.split.us, label %JS_FreeValue.exit315.us

JS_FreeValue.exit315.outer.split.us.split.us:     ; preds = %JS_FreeValue.exit315.outer.split.us
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !316 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !191 ; 2 uses
  %i.ae = and i32 %i.ad, %3
  %i.af = zext i32 %i.ae to i64
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 60 ; 2 uses
  %i.aj = xor i64 %i.af, -1
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !191 ; 2 uses
  %.not19.i.us.us = icmp eq i32 %i.al, 0
  br i1 %.not19.i.us.us, label %.loopexit422.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %JS_FreeValue.exit315.outer.split.us.split.us, %bb.d
  %.0.in20.i.us.us = phi i32 [ %i.as, %bb.d ], [ %i.al, %JS_FreeValue.exit315.outer.split.us.split.us ]
  %.0.i.us.us = zext i32 %.0.in20.i.us.us to i64
  %i.am = add nsw i64 %.0.i.us.us, -1             ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !319
  %i.aq = icmp eq i32 %i.ap, %3
  br i1 %i.aq, label %.split475.us, label %bb.d, !prof !324

bb.d:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = load i32, ptr %i.an, align 4
  %i.as = and i32 %i.ar, 67108863                 ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.as, 0
  br i1 %.not.i.us.us, label %.loopexit422.us.us, label %.lr.ph.i.us.us, !llvm.loop !36

.loopexit422.us.us:                               ; preds = %JS_FreeValue.exit315.outer.split.us.split.us, %bb.d
  %i.at = load i16, ptr %i.h, align 8
  %i.au = and i16 %i.at, 16
  %.not215.us.us = icmp eq i16 %i.au, 0
  br i1 %.not215.us.us, label %JS_FreeValue.exit315.thread402, label %bb.e

bb.e:                                             ; preds = %.loopexit422.us.us
  %i.av = load i16, ptr %i.i, align 2, !tbaa !276 ; 2 uses
  %i.aw = icmp eq i16 %i.av, 2
  br i1 %i.aw, label %bb.f, label %.split480.us

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.l, align 8, !tbaa !218
  %i.ay = icmp ult i32 %i.k, %i.ax
  br i1 %i.ay, label %.split485.us, label %JS_FreeValue.exit315.thread402

JS_FreeValue.exit315.us:                          ; preds = %JS_FreeValue.exit315.outer.split.us, %bb.j
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !316 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.bc = and i32 %i.bb, %3
  %i.bd = zext i32 %i.bc to i64
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 60 ; 2 uses
  %i.bh = xor i64 %i.bd, -1
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !191 ; 2 uses
  %.not19.i.us = icmp eq i32 %i.bj, 0
  br i1 %.not19.i.us, label %.loopexit422.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %JS_FreeValue.exit315.us, %bb.g
  %.0.in20.i.us = phi i32 [ %i.bq, %bb.g ], [ %i.bj, %JS_FreeValue.exit315.us ]
  %.0.i.us = zext i32 %.0.in20.i.us to i64
  %i.bk = add nsw i64 %.0.i.us, -1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !319
  %i.bo = icmp eq i32 %i.bn, %3
  br i1 %i.bo, label %.split475.us, label %bb.g, !prof !324

bb.g:                                             ; preds = %.lr.ph.i.us
  %i.bp = load i32, ptr %i.bl, align 4
  %i.bq = and i32 %i.bp, 67108863                 ; 2 uses
  %.not.i.us = icmp eq i32 %i.bq, 0
  br i1 %.not.i.us, label %.loopexit422.us, label %.lr.ph.i.us, !llvm.loop !36

.loopexit422.us:                                  ; preds = %bb.g, %JS_FreeValue.exit315.us
  %i.br = load i16, ptr %i.h, align 8
  %i.bs = and i16 %i.br, 16
  %.not215.us = icmp eq i16 %i.bs, 0
  br i1 %.not215.us, label %JS_FreeValue.exit315.thread402, label %bb.h

bb.h:                                             ; preds = %.loopexit422.us
  %i.bt = load i16, ptr %i.i, align 2, !tbaa !276 ; 2 uses
  %i.bu = icmp eq i16 %i.bt, 2
  br i1 %i.bu, label %bb.i, label %.split480.us

bb.i:                                             ; preds = %bb.h
  %i.bv = load i32, ptr %i.l, align 8, !tbaa !218
  %i.bw = icmp ult i32 %i.k, %i.bv
  br i1 %i.bw, label %bb.j, label %JS_FreeValue.exit315.thread402

bb.j:                                             ; preds = %bb.i
  %i.bx = tail call fastcc i32 @convert_fast_array_to_array(ptr noundef %0, ptr noundef nonnull %i.f)
  %.not222.us = icmp eq i32 %i.bx, 0
  br i1 %.not222.us, label %JS_FreeValue.exit315.us, label %js_update_property_flags.exit

JS_FreeValue.exit315.outer.split:                 ; preds = %JS_FreeValue.exit315.outer
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !316 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !191 ; 2 uses
  %i.cb = and i32 %i.ca, %3
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 60 ; 2 uses
  %i.cf = xor i32 %i.cb, -1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !191 ; 2 uses
  %.not19.i = icmp eq i32 %i.ci, 0
  br i1 %.not19.i, label %.loopexit422, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %JS_FreeValue.exit315.outer.split, %bb.k
  %.0.in20.i = phi i32 [ %i.cp, %bb.k ], [ %i.ci, %JS_FreeValue.exit315.outer.split ]
  %.0.i = zext i32 %.0.in20.i to i64
  %i.cj = add nsw i64 %.0.i, -1                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !319
  %i.cn = icmp eq i32 %i.cm, %3
  br i1 %i.cn, label %.split475.us, label %bb.k, !prof !324

bb.k:                                             ; preds = %.lr.ph.i
  %i.co = load i32, ptr %i.ck, align 4
  %i.cp = and i32 %i.co, 67108863                 ; 2 uses
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %.loopexit422, label %.lr.ph.i, !llvm.loop !36

.split475.us:                                     ; preds = %.lr.ph.i, %.lr.ph.i.us.us, %.lr.ph.i.us
  %.us-phi = phi i64 [ %i.bk, %.lr.ph.i.us ], [ %i.am, %.lr.ph.i.us.us ], [ %i.cj, %.lr.ph.i ]
  %.us-phi476 = phi ptr [ %i.bl, %.lr.ph.i.us ], [ %i.an, %.lr.ph.i.us.us ], [ %i.ck, %.lr.ph.i ] ; 3 uses
  %i.cq = load ptr, ptr %i.t, align 8, !tbaa !317
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.us-phi
  store ptr %.us-phi476, ptr %i.b, align 8, !tbaa !517
  %i.cs = load i32, ptr %.us-phi476, align 4      ; 2 uses
  %i.ct = and i32 %i.cs, 536870912
  %.not223 = icmp eq i32 %i.ct, 0
  %or.cond257 = or i1 %.not224, %.not223
  br i1 %or.cond257, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.split475.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.cu = trunc i64 %.sroa.11.0.ph to i32
  %i.cv = icmp ugt i32 %i.cu, -10
  br i1 %i.cv, label %bb.m, label %js_dup.exit

bb.m:                                             ; preds = %bb.l
  %i.cw = inttoptr i64 %.sroa.0173.0.ph to ptr
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !191
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.l, %bb.m
  %i.da = call fastcc i32 @JS_ToArrayLengthFree(ptr noundef %0, ptr noundef %i.c, i64 %.sroa.0173.0.ph, i64 %.sroa.11.0.ph, i1 noundef zeroext false)
  %.not225 = icmp eq i32 %i.da, 0
  br i1 %.not225, label %bb.n, label %.thread

.thread:                                          ; preds = %js_dup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  br label %js_update_property_flags.exit

bb.n:                                             ; preds = %js_dup.exit
  %i.db = load i32, ptr %i.c, align 4, !tbaa !191 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, -1                  ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.db to i64
  %i.dd = uitofp i32 %i.db to double
  %i.de = bitcast double %i.dd to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %i.dc, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.de
  %.sroa.3.0.i = select i1 %i.dc, i64 0, i64 8
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !316 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !191 ; 2 uses
  %i.di = and i32 %i.dh, %3
  %i.dj = zext i32 %i.di to i64
  %i.dk = zext i32 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 60 ; 3 uses
  %i.dn = xor i64 %i.dj, -1
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !191 ; 2 uses
  %.not19.i262 = icmp ne i32 %i.dp, 0
  tail call void @llvm.assume(i1 %.not19.i262)
  %.0.i265871 = zext i32 %i.dp to i64
  %i.dq = add nsw i64 %.0.i265871, -1             ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dq ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !319
  %i.du = icmp eq i32 %i.dt, %3
  br i1 %i.du, label %.loopexit, label %.lr.ph.i263, !prof !518

.loopexit:                                        ; preds = %.lr.ph.i263, %bb.n
  %.lcssa811 = phi i64 [ %i.dq, %bb.n ], [ %i.ea, %.lr.ph.i263 ]
  %.lcssa810 = phi ptr [ %i.dr, %bb.n ], [ %i.eb, %.lr.ph.i263 ] ; 3 uses
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !317
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.lcssa811
  store ptr %.lcssa810, ptr %i.b, align 8, !tbaa !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %.pr = load i32, ptr %.lcssa810, align 4
  br label %bb.o

.lr.ph.i263:                                      ; preds = %bb.n, %.lr.ph.i263
  %i.dx = phi ptr [ %i.eb, %.lr.ph.i263 ], [ %i.dr, %bb.n ]
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = and i32 %i.dy, 67108863                 ; 2 uses
  %.not.i266 = icmp ne i32 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i266)
  %.0.i265 = zext nneg i32 %i.dz to i64
  %i.ea = add nsw i64 %.0.i265, -1                ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !319
  %i.ee = icmp eq i32 %i.ed, %3
  br i1 %i.ee, label %.loopexit, label %.lr.ph.i263, !prof !519

bb.o:                                             ; preds = %.loopexit, %.split475.us
  %i.ef = phi i32 [ %.pr, %.loopexit ], [ %i.cs, %.split475.us ] ; 9 uses
  %i.eg = phi ptr [ %.lcssa810, %.loopexit ], [ %.us-phi476, %.split475.us ] ; 8 uses
  %.1343 = phi ptr [ %i.dw, %.loopexit ], [ %i.cr, %.split475.us ] ; 25 uses
  %.sroa.0173.2 = phi i64 [ %.sroa.0.0.insert.ext.i.pn.i, %.loopexit ], [ %.sroa.0173.0.ph, %.split475.us ] ; 9 uses
  %.sroa.11.2 = phi i64 [ %.sroa.3.0.i, %.loopexit ], [ %.sroa.11.0.ph, %.split475.us ] ; 9 uses
  %i.eh = lshr i32 %i.ef, 26                      ; 3 uses
  %i.ei = and i32 %i.ef, 67108864
  %.not.i270 = icmp eq i32 %i.ei, 0               ; 2 uses
  br i1 %.not.i270, label %bb.p, label %check_define_prop_flags.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.w, label %check_define_prop_flags.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not16.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = xor i32 %i.eh, %8
  %i.ek = and i32 %i.ej, 4
  %.not17.i = icmp eq i32 %i.ek, 0
  br i1 %.not17.i, label %bb.s, label %check_define_prop_flags.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not18.i, label %check_define_prop_flags.exit.thread693.a, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = and i32 %i.ef, -1073741824
  %i.em = icmp eq i32 %i.el, 1073741824           ; 2 uses
  %i.en = xor i1 %9, %i.em
  br i1 %i.en, label %check_define_prop_flags.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %or.cond.i = or i1 %9, %i.em
  %or.cond.not.i = xor i1 %or.cond.i, true
  %i.eo = and i32 %i.ef, 134217728
  %.not20.i = icmp eq i32 %i.eo, 0
  %or.cond21.i = and i1 %.not20.i, %or.cond.not.i
  %or.cond23.i = and i1 %i.aa, %or.cond21.i
  br i1 %or.cond23.i, label %check_define_prop_flags.exit.thread, label %check_define_prop_flags.exit.thread691

check_define_prop_flags.exit.thread:              ; preds = %bb.u, %bb.p, %bb.t, %bb.r, %bb.ak, %bb.ai, %bb.bh, %bb.bd
  %i.ep = call i32 (ptr, i32, ptr, ...) @JS_ThrowTypeErrorOrFalse(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @.str.48)
  br label %js_update_property_flags.exit

check_define_prop_flags.exit:                     ; preds = %bb.o
  %i.eq = and i32 %i.eh, 48                       ; 2 uses
  %i.er = icmp eq i32 %i.eq, 48
  br i1 %i.er, label %bb.v, label %bb.w

check_define_prop_flags.exit.thread693.a:         ; preds = %bb.s
  %i.es = icmp ugt i32 %i.ef, -1073741825
  br i1 %i.es, label %bb.v, label %.thread369

check_define_prop_flags.exit.thread691:           ; preds = %bb.u
  %i.et = and i32 %i.eh, 48                       ; 2 uses
  %i.eu = icmp eq i32 %i.et, 48
  br i1 %i.eu, label %bb.v, label %.thread692

bb.v:                                             ; preds = %check_define_prop_flags.exit.thread693.a, %check_define_prop_flags.exit.thread691, %check_define_prop_flags.exit
  %i.ev = tail call fastcc i32 @JS_AutoInitProperty(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %3, ptr noundef %.1343, ptr noundef nonnull %i.eg)
  %.not256 = icmp eq i32 %i.ev, 0
  br i1 %.not256, label %JS_FreeValue.exit315.outer, label %js_update_property_flags.exit

bb.w:                                             ; preds = %check_define_prop_flags.exit
  br i1 %.not18.i, label %.thread369, label %.thread692

.thread692:                                       ; preds = %check_define_prop_flags.exit.thread691, %bb.w
  %i.ew = phi i32 [ %i.eq, %bb.w ], [ %i.et, %check_define_prop_flags.exit.thread691 ]
  br i1 %.not220, label %bb.av, label %bb.x

bb.x:                                             ; preds = %.thread692
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ey = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ez = and i64 %i.ey, 4294967295
  %.not.i272 = icmp eq i64 %i.ez, 4294967295
  br i1 %.not.i272, label %bb.y, label %JS_IsFunction.exit.thread357

bb.y:                                             ; preds = %bb.x
  %i.fa = load i64, ptr %6, align 8
  %i.fb = inttoptr i64 %i.fa to ptr               ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 18
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.fd, label %JS_IsFunction.exit [
    i16 13, label %JS_IsFunction.exit.thread
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !218
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !458
  %.fr = freeze i8 %i.fh
  %.not407 = icmp eq i8 %.fr, 0
  br i1 %.not407, label %JS_IsFunction.exit.thread357, label %JS_IsFunction.exit.thread

JS_IsFunction.exit:                               ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !232
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !251
  %i.fm = zext i16 %i.fd to i64
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !255
  %.fr408 = freeze ptr %i.fp
  %.not409 = icmp eq ptr %.fr408, null
  br i1 %.not409, label %JS_IsFunction.exit.thread357, label %JS_IsFunction.exit.thread

JS_IsFunction.exit.thread:                        ; preds = %bb.y, %.split, %JS_IsFunction.exit
  br label %JS_IsFunction.exit.thread357

JS_IsFunction.exit.thread357:                     ; preds = %bb.x, %.split, %JS_IsFunction.exit, %JS_IsFunction.exit.thread
  %i.fq = phi ptr [ %i.fb, %JS_IsFunction.exit.thread ], [ null, %JS_IsFunction.exit ], [ null, %.split ], [ null, %bb.x ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fs = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.ft = and i64 %i.fs, 4294967295
  %.not.i274 = icmp eq i64 %i.ft, 4294967295
  br i1 %.not.i274, label %bb.z, label %JS_IsFunction.exit276.thread364

bb.z:                                             ; preds = %JS_IsFunction.exit.thread357
  %i.fu = load i64, ptr %7, align 8
  %i.fv = inttoptr i64 %i.fu to ptr               ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 18
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.fx, label %JS_IsFunction.exit276 [
    i16 13, label %JS_IsFunction.exit276.thread
    i16 51, label %.split367
  ]

.split367:                                        ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !218
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !458
  %.fr410 = freeze i8 %i.gb
  %.not411 = icmp eq i8 %.fr410, 0
  br i1 %.not411, label %JS_IsFunction.exit276.thread364, label %JS_IsFunction.exit276.thread

JS_IsFunction.exit276:                            ; preds = %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !232
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1128
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !251
  %i.gg = zext i16 %i.fx to i64
  %i.gh = getelementptr inbounds nuw [40 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !255
  %.fr412 = freeze ptr %i.gj
  %.not413 = icmp eq ptr %.fr412, null
  br i1 %.not413, label %JS_IsFunction.exit276.thread364, label %JS_IsFunction.exit276.thread

JS_IsFunction.exit276.thread:                     ; preds = %bb.z, %.split367, %JS_IsFunction.exit276
  br label %JS_IsFunction.exit276.thread364

JS_IsFunction.exit276.thread364:                  ; preds = %JS_IsFunction.exit.thread357, %.split367, %JS_IsFunction.exit276, %JS_IsFunction.exit276.thread
  %i.gk = phi ptr [ %i.fv, %JS_IsFunction.exit276.thread ], [ null, %JS_IsFunction.exit276 ], [ null, %.split367 ], [ null, %JS_IsFunction.exit.thread357 ] ; 3 uses
  %i.gl = and i32 %i.ef, -1073741824
  %.not240 = icmp eq i32 %i.gl, 1073741824
  br i1 %.not240, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %JS_IsFunction.exit276.thread364
  %i.gm = call fastcc i32 @js_shape_prepare_update(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b)
  %.not246 = icmp eq i32 %i.gm, 0
  br i1 %.not246, label %bb.ab, label %js_update_property_flags.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gn = load ptr, ptr %i.b, align 8, !tbaa !517 ; 4 uses
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = icmp slt i32 %i.go, -1073741824
  br i1 %i.gp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !232
  %i.gs = load ptr, ptr %.1343, align 8, !tbaa !218
  call fastcc void @free_var_ref(ptr noundef %i.gr, ptr noundef %i.gs)
  br label %JS_FreeValueRT.exit

bb.ad:                                            ; preds = %bb.ab
  %i.gt = load i64, ptr %.1343, align 8           ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1343, i64 8
  %i.gv = load i64, ptr %i.gu, align 8            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !232
  %i.gy = trunc i64 %i.gv to i32
  %i.gz = icmp ugt i32 %i.gy, -10
  br i1 %i.gz, label %bb.ae, label %JS_FreeValueRT.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ha = inttoptr i64 %i.gt to ptr
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !191 ; 2 uses
  %i.hd = add nsw i32 %i.hc, -1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !191
  %i.he = icmp slt i32 %i.hc, 2
  br i1 %i.he, label %bb.af, label %JS_FreeValueRT.exit

bb.af:                                            ; preds = %bb.ae
  call fastcc void @js_free_value_rt(ptr noundef %i.gx, i64 %i.gt, i64 %i.gv), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.hf = load i32, ptr %i.gn, align 4
  %i.hg = and i32 %i.hf, 402653183
  %i.hh = or disjoint i32 %i.hg, 1073741824
  store i32 %i.hh, ptr %i.gn, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1343, i8 0, i64 16, i1 false)
  br label %bb.al

bb.ag:                                            ; preds = %JS_IsFunction.exit276.thread364
  br i1 %.not.i270, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.hi = and i32 %8, 2048
  %.not242 = icmp eq i32 %i.hi, 0
  br i1 %.not242, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hj = load ptr, ptr %.1343, align 8, !tbaa !218
  %.not243 = icmp eq ptr %i.fq, %i.hj
  br i1 %.not243, label %bb.aj, label %check_define_prop_flags.exit.thread

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hk = and i32 %8, 4096
  %.not244 = icmp eq i32 %i.hk, 0
  br i1 %.not244, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hl = getelementptr inbounds nuw i8, ptr %.1343, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !218
  %.not245 = icmp eq ptr %i.gk, %i.hm
  br i1 %.not245, label %bb.al, label %check_define_prop_flags.exit.thread

bb.al:                                            ; preds = %bb.ag, %bb.ak, %bb.aj, %JS_FreeValueRT.exit
  %i.hn = phi ptr [ %i.eg, %bb.ag ], [ %i.eg, %bb.ak ], [ %i.eg, %bb.aj ], [ %i.gn, %JS_FreeValueRT.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@JS_DefineProperty:bb.a
  %.us-phi483 = phi i16 [ %i.pw, %bb.cl ], [ %i.av, %bb.e ], [ %i.bt, %bb.h ]
  %i.qr = add i16 %.us-phi483, -22
  %i.qs = icmp ult i16 %i.qr, 12
  br i1 %i.qs, label %bb.cq, label %JS_FreeValue.exit315.thread402

bb.cq:                                            ; preds = %.split480.us
  br i1 %i.j, label %bb.dg, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qt = tail call fastcc { i64, i64 } @JS_AtomIsNumericIndex1(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.qu = extractvalue { i64, i64 } %i.qt, 0      ; 15 uses
  %i.qv = extractvalue { i64, i64 } %i.qt, 1      ; 8 uses
  %trunc = trunc i64 %i.qv to i32                 ; 6 uses
  switch i32 %trunc, label %bb.cs [
    i32 3, label %JS_FreeValue.exit315.thread402
    i32 6, label %js_update_property_flags.exit
  ]

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.qw = and i64 %i.qv, 4294967287
  %i.qx = icmp eq i64 %i.qw, 0
  br i1 %i.qx, label %bb.ct, label %.thread386

bb.ct:                                            ; preds = %bb.cs
  %i.qy = icmp ugt i32 %trunc, -10                ; 2 uses
  br i1 %i.qy, label %JS_ToFloat64.exit, label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %bb.ct
  %i.qz = icmp ult i32 %trunc, 3
  br i1 %i.qz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %js_dup.exit.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.qu to i32
  %i.ra = sitofp i32 %.sroa.0.0.extract.trunc.i.i to double
  br label %JS_ToFloat64.exit.thread

bb.cv:                                            ; preds = %js_dup.exit.i
  %i.rb = icmp eq i32 %trunc, 8
  br i1 %i.rb, label %bb.cw, label %JS_ToFloat64.exit.thread695

bb.cw:                                            ; preds = %bb.cv
  %i.rc = bitcast i64 %i.qu to double
  br label %JS_ToFloat64.exit.thread

JS_ToFloat64.exit:                                ; preds = %bb.ct
  %i.rd = inttoptr i64 %i.qu to ptr
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 -4 ; 4 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !191
  %i.rg = add nsw i32 %i.rf, 1
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !191
  %i.rh = call fastcc i32 @__JS_ToFloat64Free(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.qu, i64 %i.qv), !inline_history !1152
  %.not.i304 = icmp eq i32 %i.rh, 0
  br i1 %.not.i304, label %JS_ToFloat64.exit.JS_ToFloat64.exit.thread_crit_edge, label %bb.cx, !prof !520

JS_ToFloat64.exit.thread695:                      ; preds = %bb.cv
  %i.ri = call fastcc i32 @__JS_ToFloat64Free(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.qu, i64 %i.qv), !inline_history !1152
  %.not.i304696 = icmp eq i32 %i.ri, 0
  br i1 %.not.i304696, label %JS_ToFloat64.exit.JS_ToFloat64.exit.thread_crit_edge, label %.thread697, !prof !520

.thread697:                                       ; preds = %JS_ToFloat64.exit.thread695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %js_update_property_flags.exit

JS_ToFloat64.exit.JS_ToFloat64.exit.thread_crit_edge: ; preds = %JS_ToFloat64.exit.thread695, %JS_ToFloat64.exit
  %.pre669 = load double, ptr %i.a, align 8, !tbaa !504
  br label %JS_ToFloat64.exit.thread

JS_ToFloat64.exit.thread:                         ; preds = %JS_ToFloat64.exit.JS_ToFloat64.exit.thread_crit_edge, %bb.cw, %bb.cu
  %i.rj = phi double [ %.pre669, %JS_ToFloat64.exit.JS_ToFloat64.exit.thread_crit_edge ], [ %i.rc, %bb.cw ], [ %i.ra, %bb.cu ] ; 3 uses
  %i.rk = tail call double @llvm.fabs.f64(double %i.rj)
  %i.rl = fcmp ueq double %i.rk, +inf
  br i1 %i.rl, label %.thread386, label %bb.cz

bb.cx:                                            ; preds = %JS_ToFloat64.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !232
  %i.ro = load i32, ptr %i.re, align 4, !tbaa !191 ; 2 uses
  %i.rp = add nsw i32 %i.ro, -1
  store i32 %i.rp, ptr %i.re, align 4, !tbaa !191
  %i.rq = icmp slt i32 %i.ro, 2
  br i1 %i.rq, label %bb.cy, label %js_update_property_flags.exit

bb.cy:                                            ; preds = %bb.cx
  tail call fastcc void @js_free_value_rt(ptr noundef %i.rn, i64 %i.qu, i64 %i.qv), !inline_history !370
  br label %js_update_property_flags.exit

.thread386:                                       ; preds = %JS_ToFloat64.exit.thread, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.da

bb.cz:                                            ; preds = %JS_ToFloat64.exit.thread
  %i.rr = tail call double @llvm.trunc.f64(double %i.rj)
  %i.rs = fcmp une double %i.rr, %i.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br i1 %i.rs, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %.thread386, %bb.cz
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !232
  %i.rv = icmp ugt i32 %trunc, -10
  br i1 %i.rv, label %bb.db, label %JS_FreeValueRT.exit317

bb.db:                                            ; preds = %bb.da
  %i.rw = inttoptr i64 %i.qu to ptr
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 -4 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !191 ; 2 uses
  %i.rz = add nsw i32 %i.ry, -1
  store i32 %i.rz, ptr %i.rx, align 4, !tbaa !191
  %i.sa = icmp slt i32 %i.ry, 2
  br i1 %i.sa, label %bb.dc, label %JS_FreeValueRT.exit317

bb.dc:                                            ; preds = %bb.db
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ru, i64 %i.qu, i64 %i.qv), !inline_history !370
  br label %JS_FreeValueRT.exit317

JS_FreeValueRT.exit317:                           ; preds = %bb.da, %bb.db, %bb.dc
  %i.sb = tail call i32 (ptr, i32, ptr, ...) @JS_ThrowTypeErrorOrFalse(ptr noundef nonnull %0, i32 noundef %8, ptr noundef nonnull @.str.49)
  br label %js_update_property_flags.exit

bb.dd:                                            ; preds = %bb.cz
  switch i32 %trunc, label %JS_NumberIsNegativeOrMinusZero.exit [
    i32 0, label %.split406
    i32 8, label %JS_NumberIsNegativeOrMinusZero.exit.thread
    i32 7, label %.split405
    i32 -9, label %bb.de
  ]

.split406:                                        ; preds = %bb.dd
  %i.sc = and i64 %i.qu, 2147483648
  %.not415 = icmp eq i64 %i.sc, 0
  br i1 %.not415, label %JS_FreeValueRT.exit318.thread, label %bb.df

.split405:                                        ; preds = %bb.dd
  %i.sd = and i64 %i.qu, 2147483648
  %.not414 = icmp eq i64 %i.sd, 0
  br i1 %.not414, label %JS_FreeValueRT.exit318.thread, label %bb.df

JS_NumberIsNegativeOrMinusZero.exit.thread:       ; preds = %bb.dd
  %i.se = icmp slt i64 %i.qu, 0
  br i1 %i.se, label %bb.df, label %JS_FreeValueRT.exit318.thread

JS_NumberIsNegativeOrMinusZero.exit:              ; preds = %bb.dd
  br i1 %i.qy, label %.thread698, label %JS_FreeValueRT.exit318.thread

bb.de:                                            ; preds = %bb.dd
  %i.sf = inttoptr i64 %i.qu to ptr               ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !191
  %i.si = add i32 %i.sh, -1
  %i.sj = zext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !191
  %i.sm = icmp slt i32 %i.sl, 0                   ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sn = load ptr, ptr %.in, align 8, !tbaa !232
  %i.so = getelementptr inbounds i8, ptr %i.sf, i64 -4 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !191 ; 2 uses
  %i.sq = add nsw i32 %i.sp, -1
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !191
  %i.sr = icmp slt i32 %i.sp, 2
  br i1 %i.sr, label %.split395, label %JS_FreeValueRT.exit318

.thread698:                                       ; preds = %JS_NumberIsNegativeOrMinusZero.exit
  %.pre670 = inttoptr i64 %i.qu to ptr
  %.in701 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ss = load ptr, ptr %.in701, align 8, !tbaa !232
  %i.st = getelementptr inbounds i8, ptr %.pre670, i64 -4 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !191 ; 2 uses
  %i.sv = add nsw i32 %i.su, -1
  store i32 %i.sv, ptr %i.st, align 4, !tbaa !191
  %i.sw = icmp slt i32 %i.su, 2
  br i1 %i.sw, label %.split395.thread, label %JS_FreeValueRT.exit318.thread

.split395.thread:                                 ; preds = %.thread698
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ss, i64 %i.qu, i64 %i.qv), !inline_history !370
  br label %JS_FreeValueRT.exit318.thread

.split395:                                        ; preds = %bb.de
  tail call fastcc void @js_free_value_rt(ptr noundef %i.sn, i64 %i.qu, i64 %i.qv), !inline_history !370
  br i1 %i.sm, label %bb.df, label %JS_FreeValueRT.exit318.thread

JS_FreeValueRT.exit318:                           ; preds = %bb.de
  br i1 %i.sm, label %bb.df, label %JS_FreeValueRT.exit318.thread

bb.df:                                            ; preds = %.split406, %.split405, %.split395, %JS_NumberIsNegativeOrMinusZero.exit.thread, %JS_FreeValueRT.exit318
  %i.sx = tail call i32 (ptr, i32, ptr, ...) @JS_ThrowTypeErrorOrFalse(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @.str.50)
  br label %js_update_property_flags.exit

bb.dg:                                            ; preds = %bb.cq
  %i.sy = load i32, ptr %i.l, align 8, !tbaa !218
  %.not217 = icmp ult i32 %i.k, %i.sy
  br i1 %.not217, label %bb.dh, label %JS_FreeValueRT.exit318.thread

JS_FreeValueRT.exit318.thread:                    ; preds = %.split395.thread, %.thread698, %JS_NumberIsNegativeOrMinusZero.exit, %.split406, %.split405, %JS_FreeValueRT.exit318, %JS_NumberIsNegativeOrMinusZero.exit.thread, %.split395, %bb.dg
  %i.sz = tail call i32 (ptr, i32, ptr, ...) @JS_ThrowTypeErrorOrFalse(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @.str.51)
  br label %js_update_property_flags.exit

bb.dh:                                            ; preds = %bb.dg
  %10 = icmp ne i32 %i.r, 7
  %or.cond = or i1 %9, %10
  br i1 %or.cond, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ta = tail call i32 (ptr, i32, ptr, ...) @JS_ThrowTypeErrorOrFalse(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @.str.52)
  br label %js_update_property_flags.exit

bb.dj:                                            ; preds = %bb.dh
  br i1 %.not224, label %js_update_property_flags.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.k to i64
  %i.tb = trunc i64 %.sroa.11.0.ph to i32
  %i.tc = icmp ugt i32 %i.tb, -10
  br i1 %i.tc, label %bb.dl, label %js_dup.exit309

bb.dl:                                            ; preds = %bb.dk
  %i.td = inttoptr i64 %.sroa.0173.0.ph to ptr
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 -4 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !191
  %i.tg = add nsw i32 %i.tf, 1
  store i32 %i.tg, ptr %i.te, align 4, !tbaa !191
  br label %js_dup.exit309

js_dup.exit309:                                   ; preds = %bb.dk, %bb.dl
  %i.th = tail call fastcc i32 @JS_SetPropertyValue(ptr noundef %0, i64 %1, i64 %2, i64 %.sroa.0.0.insert.ext.i, i64 0, i64 %.sroa.0173.0.ph, i64 %.sroa.11.0.ph, i32 noundef %8)
  br label %js_update_property_flags.exit

JS_FreeValue.exit315.thread402:                   ; preds = %.loopexit422.us, %bb.i, %.loopexit422.us.us, %bb.f, %bb.cl, %.loopexit422, %bb.cr, %.split480.us
  %i.ti = tail call fastcc i32 @JS_CreateProperty(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %3, i64 %.sroa.0173.0.ph, i64 %.sroa.11.0.ph, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef %8)
  br label %js_update_property_flags.exit

js_update_property_flags.exit:                    ; preds = %bb.v, %bb.j, %bb.cf, %.thread697, %bb.cr, %bb.cy, %bb.cx, %bb.df, %JS_FreeValueRT.exit317, %bb.dj, %js_dup.exit309, %bb.di, %JS_FreeValueRT.exit318.thread, %bb.co, %js_dup.exit299, %.split485.us, %bb.cp, %bb.ck, %.thread369, %bb.bm, %bb.aa, %.thread, %bb.cc, %bb.bu, %bb.bd, %bb.aw, %JS_FreeValue.exit315.thread402, %bb.bv, %check_define_prop_flags.exit.thread, %bb.b
  %.8 = phi i32 [ -1, %bb.b ], [ %i.ti, %JS_FreeValue.exit315.thread402 ], [ -1, %.thread ], [ -1, %bb.cc ], [ -1, %bb.bm ], [ %i.ep, %check_define_prop_flags.exit.thread ], [ %i.th, %js_dup.exit309 ], [ -1, %bb.aa ], [ 1, %bb.bd ], [ %.0196, %bb.bv ], [ -1, %bb.bu ], [ -1, %bb.aw ], [ %i.sz, %JS_FreeValueRT.exit318.thread ], [ 1, %.thread369 ], [ -1, %bb.j ], [ 1, %bb.ck ], [ %i.ta, %bb.di ], [ 1, %bb.co ], [ 1, %js_dup.exit299 ], [ 1, %.split485.us ], [ 1, %bb.cp ], [ -1, %bb.cy ], [ -1, %bb.cx ], [ -1, %bb.cf ], [ %i.sx, %bb.df ], [ %i.sb, %JS_FreeValueRT.exit317 ], [ 1, %bb.dj ], [ -1, %bb.cr ], [ -1, %.thread697 ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @JS_ToArrayLengthFree(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 %2, i64 %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = bitcast i64 %2 to double                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.d = trunc i64 %3 to i32                      ; 3 uses
  %switch = icmp ult i32 %i.d, 3
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.022.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %i.e = icmp slt i32 %.sroa.022.0.extract.trunc, 0
  br i1 %i.e, label %.thread47, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 8
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp oge double %i.c, 0.000000e+00
  %i.h = fcmp ole double %i.c, f0x41EFFFFFFFE00000
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.e, label %.thread47

bb.e:                                             ; preds = %bb.d
  %i.i = fptoui double %i.c to i32                ; 2 uses
  %i.j = uitofp i32 %i.i to double
  %i.k = fcmp une double %i.j, %i.c
  br i1 %i.k, label %.thread47, label %.thread

bb.f:                                             ; preds = %bb.c
  br i1 %4, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %2, i64 %3, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %JS_FreeValueRT.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, i64 } %i.l, 0
  %i.q = call fastcc i32 @JS_ToArrayLengthFree(ptr noundef %0, ptr noundef %i.a, i64 %i.p, i64 %i.m, i1 noundef zeroext true)
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %._crit_edge, label %JS_FreeValueRT.exit

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4, !tbaa !191
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.r = icmp ugt i32 %i.d, -10                   ; 2 uses
  br i1 %i.r, label %bb.j, label %js_dup.exit.i.preheader

bb.j:                                             ; preds = %bb.i
  %i.s = inttoptr i64 %2 to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.j, %bb.i
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.p
  %.sroa.017.0.in.i.i = phi i64 [ %i.ao, %bb.p ], [ %2, %js_dup.exit.i.preheader ] ; 6 uses
  %.sroa.6.0.i.i = phi i64 [ %i.ap, %bb.p ], [ %3, %js_dup.exit.i.preheader ] ; 2 uses
  %i.w = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.w, label %bb.p [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.017.0.extract.trunc.i.i = trunc i64 %.sroa.017.0.in.i.i to i32
  br label %bb.t

bb.l:                                             ; preds = %js_dup.exit.i
  %i.x = lshr i64 %.sroa.017.0.in.i.i, 52
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 2047                       ; 3 uses
  %i.aa = icmp samesign ult i32 %i.z, 1054
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !324

bb.m:                                             ; preds = %bb.l
  %.sroa.017.0.i.i.le = bitcast i64 %.sroa.017.0.in.i.i to double
  %i.ab = fptosi double %.sroa.017.0.i.i.le to i32
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.ac = icmp samesign ult i32 %i.z, 1107
  br i1 %i.ac, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ad = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.ae = or disjoint i64 %i.ad, 4503599627370496
  %i.af = add nsw i32 %i.z, -1043
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 %i.ae, %i.ag
  %i.ai = lshr i64 %i.ah, 32                      ; 2 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.al = icmp ne i64 %i.ai, 2147483648
  %or.cond.i.i = select i1 %i.ak, i1 %i.al, i1 false
  %i.am = sub nsw i32 0, %i.aj
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.am, i32 %i.aj
  br label %bb.t

bb.p:                                             ; preds = %js_dup.exit.i
  %i.an = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !73 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 2 uses
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 6
  br i1 %i.ar, label %bb.q, label %js_dup.exit.i

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  br i1 %i.r, label %bb.r, label %JS_FreeValueRT.exit

bb.r:                                             ; preds = %bb.q
  %i.au = inttoptr i64 %2 to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !191 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !191
  %i.ay = icmp slt i32 %i.aw, 2
  br i1 %i.ay, label %bb.s, label %JS_FreeValueRT.exit

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %2, i64 %3), !inline_history !370
  br label %JS_FreeValueRT.exit

bb.t:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.k
  %storemerge.i.i.ph = phi i32 [ 0, %bb.n ], [ %spec.select.i.i, %bb.o ], [ %i.ab, %bb.m ], [ %.sroa.017.0.extract.trunc.i.i, %bb.k ] ; 2 uses
  %i.az = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %2, i64 %3, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 1      ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.bb, 6
  br i1 %i.bc, label %JS_FreeValueRT.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = extractvalue { i64, i64 } %i.az, 0
  %i.be = call fastcc i32 @JS_ToArrayLengthFree(ptr noundef %0, ptr noundef %i.b, i64 %i.bd, i64 %i.ba, i1 noundef zeroext false)
  %.not42 = icmp eq i32 %i.be, 0
  br i1 %.not42, label %bb.v, label %JS_FreeValueRT.exit

bb.v:                                             ; preds = %bb.u
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !191
  %.not43 = icmp eq i32 %i.bf, %storemerge.i.i.ph
  br i1 %.not43, label %.thread, label %.thread47

.thread47:                                        ; preds = %bb.e, %bb.d, %bb.b, %bb.v
  %i.bg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.144) ; 0 uses
  br label %JS_FreeValueRT.exit

.thread:                                          ; preds = %bb.b, %._crit_edge, %bb.e, %bb.v
end_hunk_1
begin_hunk_2_@JS_CallInternal:bb.a
  store i64 %i.eot, ptr %.31, align 8, !tbaa !218
  %.sroa.5.0..sroa_idx.i4150 = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 %i.eoq, ptr %.sroa.5.0..sroa_idx.i4150, align 8, !tbaa !240
  %i.eou = getelementptr inbounds nuw i8, ptr %.31, i64 16
  %i.eov = getelementptr inbounds nuw i8, ptr %.31, i64 32
  store i64 0, ptr %i.eou, align 8, !tbaa !218
  %.sroa.4826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.31, i64 24
  store i64 5, ptr %.sroa.4826.0..sroa_idx, align 8, !tbaa !240
  %i.eow = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.aaq:                                           ; preds = %.backedge
  %i.eox = load i8, ptr %.10, align 1, !tbaa !218
  %i.eoy = zext i8 %i.eox to i64
  %i.eoz = sub nuw nsw i64 -3, %i.eoy
  %i.epa = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 3 uses
  store ptr %i.epa, ptr %i.fn, align 8, !tbaa !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #49
  store i32 1, ptr %i.n, align 4, !tbaa !191
  %i.epb = getelementptr inbounds [16 x i8], ptr %.31, i64 %i.eoz ; 7 uses
  %i.epc = getelementptr inbounds nuw i8, ptr %i.epb, i64 8 ; 3 uses
  %i.epd = load i64, ptr %i.epc, align 8          ; 2 uses
  %i.epe = and i64 %i.epd, 4294967295
  %i.epf = icmp eq i64 %i.epe, 3
  br i1 %i.epf, label %bb.aaz, label %bb.aar, !prof !192

bb.aar:                                           ; preds = %bb.aaq
  %i.epg = getelementptr i8, ptr %i.epb, i64 16
  %i.eph = load i64, ptr %i.epb, align 8
  %i.epi = load i64, ptr %i.epg, align 8
  %i.epj = getelementptr i8, ptr %i.epb, i64 24
  %i.epk = load i64, ptr %i.epj, align 8
  %i.epl = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %.0, i64 %i.eph, i64 %i.epd, i64 %i.epi, i64 %i.epk, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.n), !inline_history !1266 ; 2 uses
  %i.epm = extractvalue { i64, i64 } %i.epl, 0    ; 4 uses
  %i.epn = extractvalue { i64, i64 } %i.epl, 1    ; 4 uses
  %i.epo = and i64 %i.epn, 4294967295
  %i.epp = icmp eq i64 %i.epo, 6
  br i1 %i.epp, label %.thread365, label %bb.aas

.thread365:                                       ; preds = %bb.aar
  store i32 -1, ptr %i.n, align 4, !tbaa !191
  br label %bb.aat

bb.aas:                                           ; preds = %bb.aar
  %.sroa.07.sroa.8.0.extract.shift.i = and i64 %i.epm, -4294967296
  %.pr = load i32, ptr %i.n, align 4, !tbaa !191
  %.not.i4152 = icmp eq i32 %.pr, 0
  br i1 %.not.i4152, label %bb.aaz, label %bb.aat

bb.aat:                                           ; preds = %.thread365, %bb.aas
  %i.epq = load i64, ptr %i.epb, align 8          ; 2 uses
  %i.epr = load i64, ptr %i.epc, align 8          ; 2 uses
  %i.eps = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.ept = trunc i64 %i.epr to i32
  %i.epu = icmp ugt i32 %i.ept, -10
  br i1 %i.epu, label %bb.aau, label %JS_FreeValue.exit4927

bb.aau:                                           ; preds = %bb.aat
  %i.epv = inttoptr i64 %i.epq to ptr
  %i.epw = getelementptr inbounds i8, ptr %i.epv, i64 -4 ; 2 uses
  %i.epx = load i32, ptr %i.epw, align 4, !tbaa !191 ; 2 uses
  %i.epy = add nsw i32 %i.epx, -1
  store i32 %i.epy, ptr %i.epw, align 4, !tbaa !191
  %i.epz = icmp slt i32 %i.epx, 2
  br i1 %i.epz, label %bb.aav, label %JS_FreeValue.exit4927

bb.aav:                                           ; preds = %bb.aau
  call fastcc void @js_free_value_rt(ptr noundef %i.eps, i64 %i.epq, i64 %i.epr), !inline_history !1267
  br label %JS_FreeValue.exit4927

JS_FreeValue.exit4927:                            ; preds = %bb.aat, %bb.aau, %bb.aav
  store i32 0, ptr %i.epb, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.epb, i64 4
  store i32 0, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !218
  store i64 3, ptr %i.epc, align 8, !tbaa !240
  %i.eqa = load i32, ptr %i.n, align 4, !tbaa !191 ; 4 uses
  %i.eqb = icmp slt i32 %i.eqa, 0
  br i1 %i.eqb, label %js_for_of_next.exit, label %bb.aaw

bb.aaw:                                           ; preds = %JS_FreeValue.exit4927
  %i.eqc = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.eqd = trunc i64 %i.epn to i32
  %i.eqe = icmp ugt i32 %i.eqd, -10
  br i1 %i.eqe, label %bb.aax, label %bb.aaz

bb.aax:                                           ; preds = %bb.aaw
  %i.eqf = inttoptr i64 %i.epm to ptr
  %i.eqg = getelementptr inbounds i8, ptr %i.eqf, i64 -4 ; 2 uses
  %i.eqh = load i32, ptr %i.eqg, align 4, !tbaa !191 ; 2 uses
  %i.eqi = add nsw i32 %i.eqh, -1
  store i32 %i.eqi, ptr %i.eqg, align 4, !tbaa !191
  %i.eqj = icmp slt i32 %i.eqh, 2
  br i1 %i.eqj, label %bb.aay, label %bb.aaz

bb.aay:                                           ; preds = %bb.aax
  call fastcc void @js_free_value_rt(ptr noundef %i.eqc, i64 %i.epm, i64 %i.epn), !inline_history !1267
  br label %bb.aaz

js_for_of_next.exit:                              ; preds = %JS_FreeValue.exit4927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #49
  br label %JS_CheckDefineGlobalVar.exit

bb.aaz:                                           ; preds = %bb.aaq, %bb.aas, %bb.aaw, %bb.aax, %bb.aay
  %i.eqk = phi i32 [ 1, %bb.aaq ], [ 0, %bb.aas ], [ %i.eqa, %bb.aaw ], [ %i.eqa, %bb.aax ], [ %i.eqa, %bb.aay ]
  %.sroa.9.0.i4153 = phi i64 [ 3, %bb.aaq ], [ %i.epn, %bb.aas ], [ 3, %bb.aaw ], [ 3, %bb.aax ], [ 3, %bb.aay ]
  %.sroa.07.sroa.0.0.i = phi i64 [ 0, %bb.aaq ], [ %i.epm, %bb.aas ], [ 0, %bb.aaw ], [ 0, %bb.aax ], [ 0, %bb.aay ]
  %.sroa.07.sroa.8.0.i = phi i64 [ 0, %bb.aaq ], [ %.sroa.07.sroa.8.0.extract.shift.i, %bb.aas ], [ 0, %bb.aaw ], [ 0, %bb.aax ], [ 0, %bb.aay ]
  %.sroa.07.sroa.0.0.insert.ext16.i = and i64 %.sroa.07.sroa.0.0.i, 4294967295
  %.sroa.07.sroa.0.0.insert.insert18.i = or disjoint i64 %.sroa.07.sroa.8.0.i, %.sroa.07.sroa.0.0.insert.ext16.i
  store i64 %.sroa.07.sroa.0.0.insert.insert18.i, ptr %.31, align 8, !tbaa !218
  %.sroa.9.0..sroa_idx.i4154 = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 %.sroa.9.0.i4153, ptr %.sroa.9.0..sroa_idx.i4154, align 8, !tbaa !240
  %i.eql = getelementptr inbounds nuw i8, ptr %.31, i64 16
  %i.eqm = icmp ne i32 %i.eqk, 0
  %.sroa.0.0.insert.ext.i4921 = zext i1 %i.eqm to i64
  store i64 %.sroa.0.0.insert.ext.i4921, ptr %i.eql, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx.i4155 = getelementptr inbounds nuw i8, ptr %.31, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx.i4155, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #49
  %i.eqn = getelementptr inbounds nuw i8, ptr %.31, i64 32
  %i.eqo = getelementptr inbounds nuw i8, ptr %.10, i64 2
  br label %.backedge.backedge

bb.aba:                                           ; preds = %.backedge
  store ptr %.10, ptr %i.fn, align 8, !tbaa !468
  %i.eqp = getelementptr inbounds i8, ptr %.31, i64 -16 ; 2 uses
  %.sroa.07.0.copyload.i4157 = load i64, ptr %i.eqp, align 8, !tbaa !218 ; 3 uses
  %.sroa.59.0..sroa_idx.i4158 = getelementptr inbounds i8, ptr %.31, i64 -8 ; 2 uses
  %.sroa.59.0.copyload.i4159 = load i64, ptr %.sroa.59.0..sroa_idx.i4158, align 8, !tbaa !240 ; 3 uses
  %i.eqq = call fastcc { i64, i64 } @JS_GetIterator(ptr noundef %.0, i64 %.sroa.07.0.copyload.i4157, i64 %.sroa.59.0.copyload.i4159, i1 noundef zeroext true), !inline_history !85 ; 2 uses
  %i.eqr = extractvalue { i64, i64 } %i.eqq, 0    ; 3 uses
  %i.eqs = extractvalue { i64, i64 } %i.eqq, 1    ; 4 uses
  %i.eqt = and i64 %i.eqs, 4294967295
  %i.equ = icmp eq i64 %i.eqt, 6
  br i1 %i.equ, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.abb

bb.abb:                                           ; preds = %bb.aba
  %i.eqv = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.eqw = trunc i64 %.sroa.59.0.copyload.i4159 to i32
  %i.eqx = icmp ugt i32 %i.eqw, -10
  br i1 %i.eqx, label %bb.abc, label %JS_FreeValue.exit4929

bb.abc:                                           ; preds = %bb.abb
  %i.eqy = inttoptr i64 %.sroa.07.0.copyload.i4157 to ptr
  %i.eqz = getelementptr inbounds i8, ptr %i.eqy, i64 -4 ; 2 uses
  %i.era = load i32, ptr %i.eqz, align 4, !tbaa !191 ; 2 uses
  %i.erb = add nsw i32 %i.era, -1
  store i32 %i.erb, ptr %i.eqz, align 4, !tbaa !191
  %i.erc = icmp slt i32 %i.era, 2
  br i1 %i.erc, label %bb.abd, label %JS_FreeValue.exit4929

bb.abd:                                           ; preds = %bb.abc
  call fastcc void @js_free_value_rt(ptr noundef %i.eqv, i64 %.sroa.07.0.copyload.i4157, i64 %.sroa.59.0.copyload.i4159), !inline_history !1264
  br label %JS_FreeValue.exit4929

JS_FreeValue.exit4929:                            ; preds = %bb.abb, %bb.abc, %bb.abd
  store i64 %i.eqr, ptr %i.eqp, align 8, !tbaa !218
  store i64 %i.eqs, ptr %.sroa.59.0..sroa_idx.i4158, align 8, !tbaa !240
  %i.erd = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %.0, i64 %i.eqr, i64 %i.eqs, i32 noundef 114, i64 %i.eqr, i64 %i.eqs, i1 noundef zeroext false), !inline_history !1265 ; 2 uses
  %i.ere = extractvalue { i64, i64 } %i.erd, 1    ; 2 uses
  %i.erf = and i64 %i.ere, 4294967295
  %i.erg = icmp eq i64 %i.erf, 6
  br i1 %i.erg, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.abe

bb.abe:                                           ; preds = %JS_FreeValue.exit4929
  %i.erh = extractvalue { i64, i64 } %i.erd, 0
  store i64 %i.erh, ptr %.31, align 8, !tbaa !218
  %.sroa.5.0..sroa_idx.i4160 = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 %i.ere, ptr %.sroa.5.0..sroa_idx.i4160, align 8, !tbaa !240
  %i.eri = getelementptr inbounds nuw i8, ptr %.31, i64 16
  %i.erj = getelementptr inbounds nuw i8, ptr %.31, i64 32
  store i64 0, ptr %i.eri, align 8, !tbaa !218
  %.sroa.4823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.31, i64 24
  store i64 5, ptr %.sroa.4823.0..sroa_idx, align 8, !tbaa !240
  %i.erk = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.abf:                                           ; preds = %.backedge
  store ptr %.10, ptr %i.fn, align 8, !tbaa !468
  %i.erl = getelementptr inbounds i8, ptr %.31, i64 -16 ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %i.erl, align 8, !tbaa !218 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.31, i64 -8 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !240 ; 6 uses
  %i.erm = and i64 %.sroa.6.0.copyload.i, 4294967295
  %i.ern = icmp eq i64 %i.erm, 4294967295
  br i1 %i.ern, label %bb.abh, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.ero = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %.0, ptr noundef nonnull @.str.180), !inline_history !1268 ; 0 uses
  br label %JS_CheckDefineGlobalVar.exit

bb.abh:                                           ; preds = %bb.abf
  %i.erp = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %.0, i64 %.sroa.06.0.copyload.i, i64 %.sroa.6.0.copyload.i, i32 noundef 113, i64 %.sroa.06.0.copyload.i, i64 %.sroa.6.0.copyload.i, i1 noundef zeroext false), !inline_history !1269 ; 2 uses
  %i.erq = extractvalue { i64, i64 } %i.erp, 1    ; 2 uses
  %i.err = and i64 %i.erq, 4294967295
  %i.ers = icmp eq i64 %i.err, 6
  br i1 %i.ers, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.ert = extractvalue { i64, i64 } %i.erp, 0
  %i.eru = call fastcc i32 @JS_ToBoolFree(ptr noundef %.0, i64 %i.ert, i64 %i.erq), !inline_history !1270 ; 2 uses
  %i.erv = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %.0, i64 %.sroa.06.0.copyload.i, i64 %.sroa.6.0.copyload.i, i32 noundef 68, i64 %.sroa.06.0.copyload.i, i64 %.sroa.6.0.copyload.i, i1 noundef zeroext false), !inline_history !1269 ; 2 uses
  %i.erw = extractvalue { i64, i64 } %i.erv, 0
  %i.erx = extractvalue { i64, i64 } %i.erv, 1    ; 2 uses
  %i.ery = and i64 %i.erx, 4294967295
  %or.cond561 = icmp eq i64 %i.ery, 6
  br i1 %or.cond561, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.erz = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.esa = inttoptr i64 %.sroa.06.0.copyload.i to ptr
  %i.esb = getelementptr inbounds i8, ptr %i.esa, i64 -4 ; 2 uses
  %i.esc = load i32, ptr %i.esb, align 4, !tbaa !191 ; 2 uses
  %i.esd = add nsw i32 %i.esc, -1
  store i32 %i.esd, ptr %i.esb, align 4, !tbaa !191
  %i.ese = icmp slt i32 %i.esc, 2
  br i1 %i.ese, label %bb.abk, label %JS_FreeValue.exit4936

bb.abk:                                           ; preds = %bb.abj
  call fastcc void @js_free_value_rt(ptr noundef %i.erz, i64 %.sroa.06.0.copyload.i, i64 %.sroa.6.0.copyload.i), !inline_history !1271
  br label %JS_FreeValue.exit4936

JS_FreeValue.exit4936:                            ; preds = %bb.abj, %bb.abk
  store i64 %i.erw, ptr %i.erl, align 8, !tbaa !218
  store i64 %i.erx, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !240
  %i.esf = icmp ne i32 %i.eru, 0
  %.sroa.0.0.insert.ext.i4932 = zext i1 %i.esf to i64
  store i64 %.sroa.0.0.insert.ext.i4932, ptr %.31, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx.i4164 = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i4164, align 8, !tbaa !240
  %.not.i4165 = icmp eq i32 %i.eru, 0
  br i1 %.not.i4165, label %js_iterator_get_value_done.exit, label %bb.abl

bb.abl:                                           ; preds = %JS_FreeValue.exit4936
  %i.esg = getelementptr inbounds i8, ptr %.31, i64 -64 ; 2 uses
  %i.esh = load i64, ptr %i.esg, align 8          ; 2 uses
  %i.esi = getelementptr inbounds i8, ptr %.31, i64 -56 ; 2 uses
  %i.esj = load i64, ptr %i.esi, align 8          ; 2 uses
  %i.esk = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.esl = trunc i64 %i.esj to i32
  %i.esm = icmp ugt i32 %i.esl, -10
  br i1 %i.esm, label %bb.abm, label %JS_FreeValue.exit4931

bb.abm:                                           ; preds = %bb.abl
  %i.esn = inttoptr i64 %i.esh to ptr
  %i.eso = getelementptr inbounds i8, ptr %i.esn, i64 -4 ; 2 uses
  %i.esp = load i32, ptr %i.eso, align 4, !tbaa !191 ; 2 uses
  %i.esq = add nsw i32 %i.esp, -1
  store i32 %i.esq, ptr %i.eso, align 4, !tbaa !191
  %i.esr = icmp slt i32 %i.esp, 2
  br i1 %i.esr, label %bb.abn, label %JS_FreeValue.exit4931

bb.abn:                                           ; preds = %bb.abm
  call fastcc void @js_free_value_rt(ptr noundef %i.esk, i64 %i.esh, i64 %i.esj), !inline_history !1271
  br label %JS_FreeValue.exit4931

JS_FreeValue.exit4931:                            ; preds = %bb.abl, %bb.abm, %bb.abn
  store i32 0, ptr %i.esg, align 8
  %.sroa.2.0..sroa_idx.i4166 = getelementptr inbounds i8, ptr %.31, i64 -60
  store i32 0, ptr %.sroa.2.0..sroa_idx.i4166, align 4, !tbaa !218
  store i64 3, ptr %i.esi, align 8, !tbaa !240
  br label %js_iterator_get_value_done.exit

js_iterator_get_value_done.exit:                  ; preds = %JS_FreeValue.exit4931, %JS_FreeValue.exit4936
  %i.ess = getelementptr inbounds nuw i8, ptr %.31, i64 16
  %i.est = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.abo:                                           ; preds = %.backedge
  %i.esu = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.esv = load i64, ptr %i.esu, align 8
  %i.esw = and i64 %i.esv, 4294967295
  %i.esx = icmp eq i64 %i.esw, 4294967295
  br i1 %i.esx, label %bb.abq, label %bb.abp, !prof !324

bb.abp:                                           ; preds = %bb.abo
  %i.esy = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %.0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_CheckDefineGlobalVar.exit

bb.abq:                                           ; preds = %bb.abo
  %i.esz = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.abr:                                           ; preds = %.backedge
  %i.eta = getelementptr inbounds i8, ptr %.31, i64 -32 ; 2 uses
  %i.etb = load i64, ptr %i.eta, align 8          ; 2 uses
  %i.etc = getelementptr inbounds i8, ptr %.31, i64 -24
  %i.etd = load i64, ptr %i.etc, align 8          ; 2 uses
  %i.ete = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.etf = trunc i64 %i.etd to i32
  %i.etg = icmp ugt i32 %i.etf, -10
  br i1 %i.etg, label %bb.abs, label %JS_FreeValueRT.exit4939

bb.abs:                                           ; preds = %bb.abr
  %i.eth = inttoptr i64 %i.etb to ptr
  %i.eti = getelementptr inbounds i8, ptr %i.eth, i64 -4 ; 2 uses
  %i.etj = load i32, ptr %i.eti, align 4, !tbaa !191 ; 2 uses
  %i.etk = add nsw i32 %i.etj, -1
  store i32 %i.etk, ptr %i.eti, align 4, !tbaa !191
  %i.etl = icmp slt i32 %i.etj, 2
  br i1 %i.etl, label %bb.abt, label %JS_FreeValueRT.exit4939

bb.abt:                                           ; preds = %bb.abs
  call fastcc void @js_free_value_rt(ptr noundef %i.ete, i64 %i.etb, i64 %i.etd), !inline_history !370
  br label %JS_FreeValueRT.exit4939

JS_FreeValueRT.exit4939:                          ; preds = %bb.abr, %bb.abs, %bb.abt
  %i.etm = getelementptr inbounds i8, ptr %.31, i64 -48 ; 3 uses
  %i.etn = getelementptr inbounds i8, ptr %.31, i64 -40 ; 3 uses
  %i.eto = load i64, ptr %i.etn, align 8
  %i.etp = and i64 %i.eto, 4294967295
  %i.etq = icmp eq i64 %i.etp, 3
  br i1 %i.etq, label %JS_FreeValueRT.exit4940, label %bb.abu

bb.abu:                                           ; preds = %JS_FreeValueRT.exit4939
  store ptr %.10, ptr %i.fn, align 8, !tbaa !468
  %i.etr = load i64, ptr %i.etm, align 8
  %i.ets = load i64, ptr %i.etn, align 8
  %i.ett = call fastcc i32 @JS_IteratorClose(ptr noundef nonnull %.0, i64 %i.etr, i64 %i.ets, i1 noundef zeroext false)
  %.not3578 = icmp eq i32 %i.ett, 0
  br i1 %.not3578, label %bb.abv, label %JS_CheckDefineGlobalVar.exit.loopexit608

bb.abv:                                           ; preds = %bb.abu
  %i.etu = load i64, ptr %i.etm, align 8          ; 2 uses
  %i.etv = load i64, ptr %i.etn, align 8          ; 2 uses
  %i.etw = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.etx = trunc i64 %i.etv to i32
  %i.ety = icmp ugt i32 %i.etx, -10
  br i1 %i.ety, label %bb.abw, label %JS_FreeValueRT.exit4940

bb.abw:                                           ; preds = %bb.abv
  %i.etz = inttoptr i64 %i.etu to ptr
  %i.eua = getelementptr inbounds i8, ptr %i.etz, i64 -4 ; 2 uses
  %i.eub = load i32, ptr %i.eua, align 4, !tbaa !191 ; 2 uses
  %i.euc = add nsw i32 %i.eub, -1
  store i32 %i.euc, ptr %i.eua, align 4, !tbaa !191
  %i.eud = icmp slt i32 %i.eub, 2
  br i1 %i.eud, label %bb.abx, label %JS_FreeValueRT.exit4940

bb.abx:                                           ; preds = %bb.abw
  call fastcc void @js_free_value_rt(ptr noundef %i.etw, i64 %i.etu, i64 %i.etv), !inline_history !370
  br label %JS_FreeValueRT.exit4940

JS_FreeValueRT.exit4940:                          ; preds = %bb.abx, %bb.abw, %bb.abv, %JS_FreeValueRT.exit4939
  %i.eue = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.aby:                                           ; preds = %.backedge
  %i.euf = getelementptr inbounds i8, ptr %.31, i64 -16 ; 4 uses
  %i.eug = load <2 x i64>, ptr %i.euf, align 8, !tbaa !218 ; 3 uses
  %i.euh = icmp ugt ptr %i.euf, %.03437
  br i1 %i.euh, label %.lr.ph1131, label %.critedge

.lr.ph1131:                                       ; preds = %bb.aby, %JS_FreeValueRT.exit4941
  %.234461129 = phi ptr [ %i.eul, %JS_FreeValueRT.exit4941 ], [ %i.euf, %bb.aby ] ; 3 uses
  %i.eui = getelementptr inbounds i8, ptr %.234461129, i64 -8
  %i.euj = load i64, ptr %i.eui, align 8, !tbaa !365 ; 3 uses
  %i.euk = and i64 %i.euj, 4294967295
  %.not3602 = icmp eq i64 %i.euk, 5
  br i1 %.not3602, label %.critedge, label %bb.abz

bb.abz:                                           ; preds = %.lr.ph1131
  %i.eul = getelementptr inbounds i8, ptr %.234461129, i64 -16 ; 4 uses
  %i.eum = load i64, ptr %i.eul, align 8          ; 2 uses
  %i.eun = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.euo = trunc i64 %i.euj to i32
  %i.eup = icmp ugt i32 %i.euo, -10
  br i1 %i.eup, label %bb.aca, label %JS_FreeValueRT.exit4941

bb.aca:                                           ; preds = %bb.abz
  %i.euq = inttoptr i64 %i.eum to ptr
  %i.eur = getelementptr inbounds i8, ptr %i.euq, i64 -4 ; 2 uses
  %i.eus = load i32, ptr %i.eur, align 4, !tbaa !191 ; 2 uses
  %i.eut = add nsw i32 %i.eus, -1
  store i32 %i.eut, ptr %i.eur, align 4, !tbaa !191
  %i.euu = icmp slt i32 %i.eus, 2
  br i1 %i.euu, label %bb.acb, label %JS_FreeValueRT.exit4941

bb.acb:                                           ; preds = %bb.aca
  call fastcc void @js_free_value_rt(ptr noundef %i.eun, i64 %i.eum, i64 %i.euj), !inline_history !370
  br label %JS_FreeValueRT.exit4941

JS_FreeValueRT.exit4941:                          ; preds = %bb.abz, %bb.aca, %bb.acb
  %i.euv = icmp ugt ptr %i.eul, %.03437
  br i1 %i.euv, label %.lr.ph1131, label %.critedge, !llvm.loop !1272

.critedge:                                        ; preds = %.lr.ph1131, %JS_FreeValueRT.exit4941, %bb.aby
  %.23446.lcssa = phi ptr [ %i.euf, %bb.aby ], [ %.234461129, %.lr.ph1131 ], [ %i.eul, %JS_FreeValueRT.exit4941 ] ; 6 uses
  %i.euw = icmp eq ptr %.23446.lcssa, %.03437
  br i1 %i.euw, label %bb.acc, label %bb.acf, !prof !192

bb.acc:                                           ; preds = %.critedge
  %i.eux = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef %.0, ptr noundef nonnull @.str.162) ; 0 uses
  %i.euy = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.euz = extractelement <2 x i64> %i.eug, i64 1 ; 2 uses
  %i.eva = trunc i64 %i.euz to i32
  %i.evb = icmp ugt i32 %i.eva, -10
  br i1 %i.evb, label %bb.acd, label %JS_CheckDefineGlobalVar.exit

bb.acd:                                           ; preds = %bb.acc
  %i.evc = extractelement <2 x i64> %i.eug, i64 0 ; 2 uses
  %i.evd = inttoptr i64 %i.evc to ptr
  %i.eve = getelementptr inbounds i8, ptr %i.evd, i64 -4 ; 2 uses
  %i.evf = load i32, ptr %i.eve, align 4, !tbaa !191 ; 2 uses
  %i.evg = add nsw i32 %i.evf, -1
  store i32 %i.evg, ptr %i.eve, align 4, !tbaa !191
  %i.evh = icmp slt i32 %i.evf, 2
  br i1 %i.evh, label %bb.ace, label %JS_CheckDefineGlobalVar.exit

bb.ace:                                           ; preds = %bb.acd
  call fastcc void @js_free_value_rt(ptr noundef %i.euy, i64 %i.evc, i64 %i.euz), !inline_history !370
  br label %JS_CheckDefineGlobalVar.exit

bb.acf:                                           ; preds = %.critedge
  %i.evi = getelementptr inbounds i8, ptr %.23446.lcssa, i64 -16
  store <2 x i64> %i.eug, ptr %i.evi, align 8, !tbaa !218
  %i.evj = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.acg:                                           ; preds = %.backedge
  store i32 0, ptr %.31, align 8
  %.sroa.2811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.31, i64 4
  store i32 0, ptr %.sroa.2811.0..sroa_idx, align 4, !tbaa !218
  %.sroa.3812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 4, ptr %.sroa.3812.0..sroa_idx, align 8, !tbaa !240
  %i.evk = getelementptr inbounds nuw i8, ptr %.31, i64 16
  %i.evl = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.ach:                                           ; preds = %.backedge
  %.10.val3701 = load i16, ptr %.10, align 1
  %i.evm = getelementptr inbounds nuw i8, ptr %.10, i64 2 ; 3 uses
end_hunk_2
begin_hunk_3_@js_string_constructor:bb.a
  %i.cq = icmp ugt i32 %i.cp, -10
  br i1 %i.cq, label %bb.v, label %JS_FreeValue.exit10.i

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds i8, ptr %i.bl, i64 -4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !191 ; 2 uses
  %i.ct = add nsw i32 %i.cs, -1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !191
  %i.cu = icmp slt i32 %i.cs, 2
  br i1 %i.cu, label %bb.w, label %JS_FreeValue.exit10.i

bb.w:                                             ; preds = %bb.v
  call fastcc void @js_free_value_rt(ptr noundef %i.co, i64 %.sroa.016.sroa.0.0, i64 %.sroa.11.1), !inline_history !699
  br label %JS_FreeValue.exit10.i

JS_FreeValue.exit10.i:                            ; preds = %bb.u, %bb.v, %bb.w
  %i.cv = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.241), !inline_history !528 ; 0 uses
  br label %JS_SetObjectData.exit

JS_SetObjectData.exit:                            ; preds = %JS_FreeValue.exit.i, %JS_FreeValue.exit10.i
  %i.cw = load i64, ptr %i.bl, align 8
  %.sroa.0.0.insert.ext.i = and i64 %i.cw, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %5, align 8, !tbaa !218
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.cy, align 8, !tbaa !365
  store i32 0, ptr %6, align 8, !tbaa !218
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.da, align 8, !tbaa !365
  %i.db = call i32 @JS_DefineProperty(ptr noundef nonnull %0, i64 %i.bn, i64 %i.bo, i32 noundef 51, i64 %.sroa.0.0.insert.ext.i, i64 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %5, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 9984) #51, !inline_history !366 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %JS_FreeValue.exit

bb.x:                                             ; preds = %bb.l
  %i.dc = insertvalue { i64, i64 } poison, i64 %.sroa.016.sroa.0.0, 0
  %i.dd = insertvalue { i64, i64 } %i.dc, i64 %.sroa.11.1, 1
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %JS_SetObjectData.exit, %bb.x
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.dd, %bb.x ], [ %.pn, %bb.k ], [ %i.bm, %JS_SetObjectData.exit ], [ %i.bm, %bb.n ], [ %i.bm, %bb.o ], [ %i.bm, %bb.p ]
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_symbol_constructor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %trunc = trunc i64 %2 to i32
  switch i32 %trunc, label %js_class_has_bytecode.exit.i [
    i32 3, label %bb.e
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %i.e, -13                    ; 2 uses
  %i.g = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 31)
  switch i32 %i.g, label %js_class_has_bytecode.exit.i [
    i32 21, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.c
    i32 23, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !670  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %js_class_has_bytecode.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !232
  %i.n = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i.i, ptr noundef nonnull %i.a, i32 noundef %i.k) ; 0 uses
  %i.o = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.202, ptr noundef nonnull %i.a) #51, !inline_history !110 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %JS_ThrowTypeErrorNotAConstructor.exit

js_class_has_bytecode.exit.i:                     ; preds = %bb.a, %bb.c, %bb.b
  %i.p = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.203) #51, !inline_history !111 ; 0 uses
  br label %JS_ThrowTypeErrorNotAConstructor.exit

bb.e:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %3, 0
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %i.u = icmp eq i64 %i.t, 3
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %4, align 8
  %i.w = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.v, i64 %i.s, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 1
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 6
  br i1 %i.z, label %JS_ThrowTypeErrorNotAConstructor.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = extractvalue { i64, i64 } %i.w, 0
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h
  %.0 = phi ptr [ %i.ab, %bb.h ], [ null, %bb.f ], [ null, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !232 ; 2 uses
  %i.ae = tail call fastcc i32 @__JS_NewAtom(ptr noundef %i.ad, ptr noundef %.0, i32 noundef 3), !inline_history !28 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1256 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !233, !range !234, !noundef !235
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %JS_ThrowTypeErrorNotAConstructor.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ah, align 8, !tbaa !233
  %i.ak = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !29 ; 0 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !233
  br label %JS_ThrowTypeErrorNotAConstructor.exit

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 1104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !297
  %i.an = zext i32 %i.ae to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !299
  %i.aq = ptrtoint ptr %i.ap to i64
  br label %JS_ThrowTypeErrorNotAConstructor.exit

JS_ThrowTypeErrorNotAConstructor.exit:            ; preds = %bb.l, %bb.k, %bb.j, %js_class_has_bytecode.exit.i, %bb.d, %bb.g
  %.sroa.412.0 = phi i64 [ 0, %js_class_has_bytecode.exit.i ], [ 0, %bb.g ], [ 0, %bb.d ], [ %i.aq, %bb.l ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.sroa.515.0 = phi i64 [ 6, %js_class_has_bytecode.exit.i ], [ 6, %bb.g ], [ 6, %bb.d ], [ -8, %bb.l ], [ 6, %bb.j ], [ 6, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.412.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.515.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewArrayBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = select i1 %6, i32 21, i32 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i64 %3, ptr %i.a, align 8, !tbaa !240
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %3, %2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.78) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ]
  %i.e = call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 0, i64 3, i64 noundef %2, ptr noundef %.0, i32 noundef %i.b, ptr noundef %1, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.0 = phi i64 [ 0, %bb.c ], [ %i.f, %bb.d ]
  %.sroa.313.0 = phi i64 [ 6, %bb.c ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.313.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 %1, i64 %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef range(i32 -1073741824, 1073741824) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 5 uses
  %.not = xor i1 %9, true
  %i.c = icmp ne ptr %6, null                     ; 3 uses
  %i.d = icmp ne ptr %4, null                     ; 4 uses
  %i.e = icmp eq ptr %7, null
  %i.f = and i1 %i.e, %.not
  %i.g = icmp ne i32 %5, 21
  %i.h = and i1 %i.g, %i.f
  %i.i = and i1 %i.c, %i.h
  %or.cond7 = and i1 %i.d, %i.i
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.962) ; 0 uses
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.k = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef %5) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 7 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 5 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.extract.shift103 = and i64 %i.l, -4294967296
  br label %bb.at

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %3, 2147483647
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.963) ; 0 uses
  br label %js_malloc.exit.thread

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %10 = icmp eq i32 %5, 21
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %4, align 8, !tbaa !240    ; 2 uses
  %i.s = icmp ugt i64 %i.r, 2147483647
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.78) ; 0 uses
  br label %js_malloc.exit.thread

bb.j:                                             ; preds = %bb.h
  %11 = icmp eq i32 %5, 21                        ; 2 uses
  %or.cond9 = and i1 %11, %9
  br i1 %or.cond9, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.u = icmp samesign ugt i64 %i.r, %3
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1517
  %.not118 = icmp eq ptr %i.w, null
  br i1 %.not118, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.964) ; 0 uses
  br label %js_malloc.exit.thread

bb.n:                                             ; preds = %.thread, %bb.l, %bb.k, %bb.j
  %i.y = phi i1 [ %10, %.thread ], [ true, %bb.l ], [ true, %bb.k ], [ %11, %bb.j ] ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !232  ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !196
  %i.ad = add i64 %i.ac, 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !197
  %i.ag = add i64 %i.af, -1
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.w, label %bb.o, !prof !192

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 664
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 672
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !222 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %bb.p, label %bb.q, !prof !192

bb.p:                                             ; preds = %bb.o
  %i.am = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.z, i32 noundef 6) ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i126 = phi ptr [ %i.am, %bb.p ], [ %i.ak, %bb.o ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i126, i64 38 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !221 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i126, i64 40
  %i.aq = zext i16 %i.ao to i64
  %i.ar = shl nuw nsw i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 20 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !218
  store i16 %i.at, ptr %i.an, align 2, !tbaa !221
  store i16 %i.ao, ptr %i.as, align 8, !tbaa !218
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i126, i64 34 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !221
  %i.aw = add i16 %i.av, 1                        ; 2 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !221
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i126, i64 36
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !221
  %i.az = icmp eq i16 %i.aw, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s, !prof !192

bb.r:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr %.0.i126, align 8, !tbaa !223 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i126, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !222 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !222
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i126, i8 0, i64 16, i1 false)
  br label %bb.s

._crit_edge.i:                                    ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !232
  br label %bb.w

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 5 uses
  %i.bf = load i64, ptr %i.aa, align 8, !tbaa !217
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.aa, align 8, !tbaa !217
  %i.bh = load i16, ptr %i.as, align 8, !tbaa !218
  %i.bi = icmp eq i16 %i.bh, -1
  br i1 %i.bi, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 1064
  %i.bk = icmp eq ptr %i.as, %i.bj
  br i1 %i.bk, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !219
  %i.bn = tail call i64 %i.bm(ptr noundef nonnull %i.as) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.bn, 0
  %i.bo = select i1 %.not15.i.i.i, i64 8, i64 %i.bn
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !218
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !221
  %i.bu = zext i16 %i.bt to i64
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge.i, %bb.n
  %i.bv = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %bb.n ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1256 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !233, !range !234, !noundef !235
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %js_malloc.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.bw, align 8, !tbaa !233
  %i.bz = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.bw, align 8, !tbaa !233
  br label %js_malloc.exit.thread

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.011.i.i.i = phi i64 [ 8, %bb.t ], [ %i.bo, %bb.u ], [ %i.bu, %bb.v ]
  %i.ca = load i64, ptr %i.ab, align 8, !tbaa !196
  %i.cb = add i64 %i.ca, %.011.i.i.i
  store i64 %i.cb, ptr %i.ab, align 8, !tbaa !196
  %i.cc = trunc nuw nsw i64 %3 to i32             ; 3 uses
  store i32 %i.cc, ptr %i.be, align 8, !tbaa !448
  br i1 %i.d, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cd = load i64, ptr %4, align 8, !tbaa !240
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cf = phi i32 [ %i.ce, %bb.z ], [ -1, %bb.y ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !642
  br i1 %9, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.y, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1517 ; 2 uses
  %.not122 = icmp eq ptr %i.ci, null
  br i1 %.not122, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.d, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load i64, ptr %4, align 8, !tbaa !240   ; 2 uses
  %.pre133 = trunc i64 %i.cj to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.pre-phi = phi i32 [ %i.cc, %bb.ad ], [ %.pre133, %bb.ae ]
  %i.ck = phi i64 [ %3, %bb.ad ], [ %i.cj, %bb.ae ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !740
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %.pre-phi, i32 1)
  %i.cn = zext nneg i32 %..i to i64
  %i.co = tail call ptr %i.ci(ptr noundef %i.cm, i64 noundef %i.cn) #49 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !447
  %.not124 = icmp eq ptr %i.co, null
  br i1 %.not124, label %js_malloc.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 0, i64 %i.ck, i1 false)
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ac, %bb.ab
  %i.cq = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 1)
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = tail call ptr @js_mallocz(ptr noundef nonnull %0, i64 noundef %i.cr) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !447
  %.not123 = icmp eq ptr %i.cs, null
  br i1 %.not123, label %js_malloc.exit.thread, label %bb.ao

bb.ai:                                            ; preds = %bb.aa
  br i1 %i.y, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !635 ; 2 uses
  %.not120 = icmp eq ptr %i.cv, null
  br i1 %.not120, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !740
  tail call void %i.cv(ptr noundef %i.cx, ptr noundef %6) #49
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  br i1 %i.c, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cy = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %6, ptr %i.cy, align 8, !tbaa !447
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.cz = tail call ptr @js_mallocz(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !447
  %.not121 = icmp eq ptr %i.cz, null
  br i1 %.not121, label %js_malloc.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ag, %bb.ah
  %.0 = phi ptr [ %7, %bb.ag ], [ %7, %bb.ah ], [ %7, %bb.am ], [ @js_array_buffer_realloc, %bb.an ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  store ptr %i.db, ptr %i.db, align 8, !tbaa !223
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !222
end_hunk_3
begin_hunk_4_@js_regexp_constructor_internal:bb.a
  %i.az = icmp slt i32 %i.ax, 2
  br i1 %i.az, label %bb.k, label %JS_FreeValueRT.exit36

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.as, i64 %3, i64 %4), !inline_history !370
  br label %JS_FreeValueRT.exit36

JS_FreeValueRT.exit36:                            ; preds = %bb.k, %bb.j, %JS_FreeValueRT.exit35, %JS_FreeValueRT.exit
  %i.ba = phi i64 [ %.sroa.011.sroa.0.0, %JS_FreeValueRT.exit ], [ 0, %JS_FreeValueRT.exit35 ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.sroa.432.0 = phi i64 [ %.sroa.9.0, %JS_FreeValueRT.exit ], [ 6, %JS_FreeValueRT.exit35 ], [ 6, %bb.j ], [ 6, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ba, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.432.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_var_ref(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !427
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !273
  %i.j = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.l = load i16, ptr %i.k, align 8, !tbaa !428
  %i.m = zext i16 %i.l to i32
  %i.n = add nsw i32 %2, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !532
  %i.r = sext i32 %2 to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.054 = phi ptr [ %i.j, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  %.pn = phi i64 [ %i.g, %bb.b ], [ %i.o, %bb.c ]
  %.053 = getelementptr inbounds [20 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.053, i64 12
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, 4
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.053, i64 14
  %i.x = load i16, ptr %i.w, align 2, !tbaa !547  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !521
  %i.aa = zext i16 %i.x to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !445 ; 3 uses
  %.not60 = icmp eq ptr %i.ac, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !191
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !191
  br label %js_malloc.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !196
  %i.al = add i64 %i.ak, 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !197
  %i.ao = add i64 %i.an, -1
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %js_arena_malloc.exit.thread, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 648
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 656
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !222 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.aq
  br i1 %i.at, label %bb.i, label %bb.j, !prof !192

bb.i:                                             ; preds = %bb.h
  %i.au = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.ah, i32 noundef 5) ; 2 uses
  %.not.i76 = icmp eq ptr %i.au, null
  br i1 %.not.i76, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.j

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.i
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !232
  br label %js_arena_malloc.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i75 = phi ptr [ %i.au, %bb.i ], [ %i.as, %bb.h ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i75, i64 38 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !221 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i75, i64 40
  %i.ay = zext i16 %i.aw to i64
  %i.az = mul nuw nsw i64 %i.ay, 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az ; 17 uses
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !218
  store i16 %i.bb, ptr %i.av, align 2, !tbaa !221
  store i16 %i.aw, ptr %i.ba, align 8, !tbaa !218
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i75, i64 34 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !221
  %i.be = add i16 %i.bd, 1                        ; 2 uses
  store i16 %i.be, ptr %i.bc, align 2, !tbaa !221
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i75, i64 36
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !221
  %i.bh = icmp eq i16 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l, !prof !192

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %.0.i75, align 8, !tbaa !223 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i75, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !222 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !222
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i75, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 6 uses
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !217
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.ai, align 8, !tbaa !217
  %i.bp = load i16, ptr %i.ba, align 8, !tbaa !218
  %i.bq = icmp eq i16 %i.bp, -1
  br i1 %i.bq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 1064
  %i.bs = icmp eq ptr %i.ba, %i.br
  br i1 %i.bs, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !219
  %i.bv = tail call i64 %i.bu(ptr noundef nonnull %i.ba) #49, !inline_history !12 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not15.i.i, i64 8, i64 %i.bv
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !218
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !221
  %i.cc = zext i16 %i.cb to i64
  br label %bb.q

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.g
  %i.cd = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.ah, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1256 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !233, !range !234, !noundef !235
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %js_malloc.exit.thread, label %bb.p

bb.p:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.ce, align 8, !tbaa !233
  %i.ch = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !309 ; 0 uses
  store i8 0, ptr %i.ce, align 8, !tbaa !233
  br label %js_malloc.exit.thread

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.011.i.i = phi i64 [ 8, %bb.m ], [ %i.bw, %bb.n ], [ %i.cc, %bb.o ]
  %i.ci = load i64, ptr %i.aj, align 8, !tbaa !196
  %i.cj = add i64 %i.ci, %.011.i.i
  store i64 %i.cj, ptr %i.aj, align 8, !tbaa !196
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !191
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i8 0, ptr %i.cl, align 8, !tbaa !321
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 25
  store i8 0, ptr %i.cm, align 1, !tbaa !1698
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 26
  store i8 0, ptr %i.cn, align 2, !tbaa !1699
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i16 %i.x, ptr %i.co, align 8, !tbaa !218
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr %1, ptr %i.cp, align 8, !tbaa !218
  %i.cq = load ptr, ptr %i.y, align 8, !tbaa !521
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.aa
  store ptr %i.bm, ptr %i.cr, align 8, !tbaa !445
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %.054, ptr %i.cs, align 8, !tbaa !330
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !331 ; 3 uses
  %i.cv = icmp ne ptr %i.cu, null
  %i.cw = zext i1 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ba, i64 27
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !322
  %.not62 = icmp eq ptr %i.cu, null
  br i1 %.not62, label %js_malloc.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !191
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !191
  %i.db = load ptr, ptr %i.ag, align 8, !tbaa !232
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 3, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1152 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !223 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.bm, ptr %i.df, align 8, !tbaa !222
  store ptr %i.de, ptr %i.bm, align 8, !tbaa !223
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !222
  store ptr %i.bm, ptr %i.dd, align 8, !tbaa !223
  br label %js_malloc.exit.thread

bb.s:                                             ; preds = %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !232 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !196
  %i.dm = add i64 %i.dl, 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !197
  %i.dp = add i64 %i.do, -1
  %i.dq = icmp ugt i64 %i.dm, %i.dp
  br i1 %i.dq, label %js_arena_malloc.exit80.thread, label %bb.t, !prof !192

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 648
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 656
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !222 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dr
  br i1 %i.du, label %bb.u, label %bb.v, !prof !192

bb.u:                                             ; preds = %bb.t
  %i.dv = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.di, i32 noundef 5) ; 2 uses
  %.not.i79 = icmp eq ptr %i.dv, null
  br i1 %.not.i79, label %.js_arena_malloc.exit80.thread_crit_edge, label %bb.v

.js_arena_malloc.exit80.thread_crit_edge:         ; preds = %bb.u
  %.pre93 = load ptr, ptr %i.dh, align 8, !tbaa !232
  br label %js_arena_malloc.exit80.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i77 = phi ptr [ %i.dv, %bb.u ], [ %i.dt, %bb.t ] ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i77, i64 38 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !221 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i77, i64 40
  %i.dz = zext i16 %i.dx to i64
  %i.ea = mul nuw nsw i64 %i.dz, 56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea ; 15 uses
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !218
  store i16 %i.ec, ptr %i.dw, align 2, !tbaa !221
  store i16 %i.dx, ptr %i.eb, align 8, !tbaa !218
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i77, i64 34 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !221
  %i.ef = add i16 %i.ee, 1                        ; 2 uses
  store i16 %i.ef, ptr %i.ed, align 2, !tbaa !221
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i77, i64 36
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !221
  %i.ei = icmp eq i16 %i.ef, %i.eh
  br i1 %i.ei, label %bb.w, label %bb.x, !prof !192

bb.w:                                             ; preds = %bb.v
  %i.ej = load ptr, ptr %.0.i77, align 8, !tbaa !223 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i77, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !222 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.el, ptr %i.em, align 8, !tbaa !222
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i77, i8 0, i64 16, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.eo = load i64, ptr %i.dj, align 8, !tbaa !217
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.dj, align 8, !tbaa !217
  %i.eq = load i16, ptr %i.eb, align 8, !tbaa !218
  %i.er = icmp eq i16 %i.eq, -1
  br i1 %i.er, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 1064
  %i.et = icmp eq ptr %i.eb, %i.es
  br i1 %i.et, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !219
  %i.ew = tail call i64 %i.ev(ptr noundef nonnull %i.eb) #49, !inline_history !12 ; 2 uses
  %.not15.i.i73 = icmp eq i64 %i.ew, 0
  %i.ex = select i1 %.not15.i.i73, i64 8, i64 %i.ew
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !218
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !221
  %i.fd = zext i16 %i.fc to i64
  br label %bb.ac

js_arena_malloc.exit80.thread:                    ; preds = %.js_arena_malloc.exit80.thread_crit_edge, %bb.s
  %i.fe = phi ptr [ %.pre93, %.js_arena_malloc.exit80.thread_crit_edge ], [ %i.di, %bb.s ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1256 ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !233, !range !234, !noundef !235
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %js_malloc.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %js_arena_malloc.exit80.thread
  store i8 1, ptr %i.ff, align 8, !tbaa !233
  %i.fi = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !309 ; 0 uses
  store i8 0, ptr %i.ff, align 8, !tbaa !233
  br label %js_malloc.exit.thread

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.011.i.i71 = phi i64 [ 8, %bb.y ], [ %i.ex, %bb.z ], [ %i.fd, %bb.aa ]
  %i.fj = load i64, ptr %i.dk, align 8, !tbaa !196
  %i.fk = add i64 %i.fj, %.011.i.i71
  store i64 %i.fk, ptr %i.dk, align 8, !tbaa !196
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 1, ptr %i.fl, align 4, !tbaa !191
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i8 1, ptr %i.fm, align 8, !tbaa !321
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eb, i64 27
  store i8 0, ptr %i.fn, align 1, !tbaa !322
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 2 uses
  %i.fp = load i64, ptr %.054, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = icmp ugt i32 %i.fs, -10
  br i1 %i.ft, label %bb.ad, label %js_dup.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fu = inttoptr i64 %i.fp to ptr
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -4 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !191
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.ac, %bb.ad
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store i64 %i.fr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store ptr %i.fo, ptr %i.fy, align 8, !tbaa !330
  %i.fz = load ptr, ptr %i.dh, align 8, !tbaa !232
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  store i8 3, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1152 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !223 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.en, ptr %i.gd, align 8, !tbaa !222
  store ptr %i.gc, ptr %i.en, align 8, !tbaa !223
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !222
  store ptr %i.en, ptr %i.gb, align 8, !tbaa !223
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.ab, %js_arena_malloc.exit80.thread, %bb.p, %js_arena_malloc.exit.thread, %bb.q, %bb.r, %js_dup.exit, %bb.f
  %.0 = phi ptr [ %i.ac, %bb.f ], [ null, %bb.p ], [ %i.bm, %bb.q ], [ %i.en, %js_dup.exit ], [ %i.bm, %bb.r ], [ null, %js_arena_malloc.exit.thread ], [ null, %js_arena_malloc.exit80.thread ], [ null, %bb.ab ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_IteratorClose(ptr noundef %0, i64 %1, i64 %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !218
  store i32 0, ptr %i.c, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1244
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !218
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]       ; 3 uses
  %i.e = phi <2 x i64> [ %i.d, %bb.b ], [ <i64 0, i64 3>, %bb.a ]
  %i.f = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 6, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 3 uses
  %trunc = trunc i64 %i.h to i32                  ; 2 uses
  switch i32 %trunc, label %bb.d [
    i32 6, label %JS_FreeValueRT.exit37
    i32 3, label %JS_FreeValueRT.exit37.fold.split
end_hunk_4
begin_hunk_5_@map_add_record:bb.a
bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !232 ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !196
  %i.bm = add i64 %i.bl, 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !197
  %i.bp = add i64 %i.bo, -1
  %i.bq = icmp ugt i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.v, label %bb.n, !prof !192

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 600
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 608
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !222 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.br
  br i1 %i.bu, label %bb.o, label %bb.p, !prof !192

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.bi, i32 noundef 2) ; 2 uses
  %.not.i59 = icmp eq ptr %i.bv, null
  br i1 %.not.i59, label %._crit_edge.i49, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i57 = phi ptr [ %i.bv, %bb.o ], [ %i.bt, %bb.n ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i57, i64 38 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !221 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i57, i64 40
  %i.bz = zext i16 %i.bx to i64
  %i.ca = shl nuw nsw i64 %i.bz, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 9 uses
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !218
  store i16 %i.cc, ptr %i.bw, align 2, !tbaa !221
  store i16 %i.bx, ptr %i.cb, align 8, !tbaa !218
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i57, i64 34 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !221
  %i.cf = add i16 %i.ce, 1                        ; 2 uses
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i57, i64 36
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !221
  %i.ci = icmp eq i16 %i.cf, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.r, !prof !192

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %.0.i57, align 8, !tbaa !223 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i57, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !222 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !222
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i57, i8 0, i64 16, i1 false)
  br label %bb.r

._crit_edge.i49:                                  ; preds = %bb.o
  %.pre.i50 = load ptr, ptr %i.a, align 8, !tbaa !232
  br label %bb.v

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.bj, align 8, !tbaa !217
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.bj, align 8, !tbaa !217
  %i.cq = load i16, ptr %i.cb, align 8, !tbaa !218
  %i.cr = icmp eq i16 %i.cq, -1
  br i1 %i.cr, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 1064
  %i.ct = icmp eq ptr %i.cb, %i.cs
  br i1 %i.ct, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !219
  %i.cw = tail call i64 %i.cv(ptr noundef nonnull %i.cb) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i48 = icmp eq i64 %i.cw, 0
  %i.cx = select i1 %.not15.i.i.i48, i64 8, i64 %i.cw
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !218
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !221
  %i.dd = zext i16 %i.dc to i64
  br label %bb.x

bb.v:                                             ; preds = %._crit_edge.i49, %bb.m
  %i.de = phi ptr [ %.pre.i50, %._crit_edge.i49 ], [ %i.bi, %bb.m ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1256 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !233, !range !234, !noundef !235
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.df, align 8, !tbaa !233
  %i.di = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.df, align 8, !tbaa !233
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !232
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.v
  %i.dj = phi ptr [ %.pre, %bb.w ], [ %i.de, %bb.v ]
  tail call void @js_free_rt(ptr noundef %i.dj, ptr noundef nonnull %i.ag)
  br label %map_hash_resize.exit

bb.x:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.011.i.i.i46 = phi i64 [ 8, %bb.s ], [ %i.cx, %bb.t ], [ %i.dd, %bb.u ]
  %i.dk = load i64, ptr %i.bk, align 8, !tbaa !196
  %i.dl = add i64 %i.dk, %.011.i.i.i46
  store i64 %i.dl, ptr %i.bk, align 8, !tbaa !196
  store i32 0, ptr %i.cn, align 8, !tbaa !326
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.ag, ptr %i.dm, align 8, !tbaa !218
  %i.dn = trunc i64 %3 to i32
  switch i32 %i.dn, label %bb.z [
    i32 -1, label %bb.aa
    i32 -8, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @abort() #50
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x
  %.sink4.i.i = phi i64 [ 16, %bb.y ], [ 40, %bb.x ]
  %i.do = inttoptr i64 %2 to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sink4.i.i ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !746
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !327
  store ptr %i.cn, ptr %i.dp, align 8, !tbaa !746
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %2, ptr %i.ds, align 8, !tbaa !218
  br label %bb.ad

bb.ab:                                            ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.du = trunc i64 %3 to i32
  %i.dv = icmp ugt i32 %i.du, -10
  br i1 %i.dv, label %bb.ac, label %js_dup.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dw = inttoptr i64 %2 to ptr
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !191
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.ab, %bb.ac
  store i64 %2, ptr %i.dt, align 8, !tbaa !218
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %js_dup.exit
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %3, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !240
  %i.ea = tail call fastcc i32 @map_hash_key(ptr noundef nonnull %0, i64 %2, i64 %3)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !673 ; 3 uses
  %i.ed = add i32 %i.ec, -1
  %i.ee = and i32 %i.ed, %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !674 ; 2 uses
  %i.ei = zext i32 %i.ee to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ei ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !223 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.ef, ptr %i.el, align 8, !tbaa !222
  store ptr %i.ek, ptr %i.ef, align 8, !tbaa !223
  %i.em = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !222
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !223
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !223 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.en, ptr %i.eq, align 8, !tbaa !222
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !223
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !222
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !223
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !772
  %i.eu = add i32 %i.et, 1                        ; 2 uses
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !772
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !675
  %.not43 = icmp ult i32 %i.eu, %i.ew
  br i1 %.not43, label %map_hash_resize.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ex = icmp eq i32 %i.ec, 1
  %i.ey = shl i32 %i.ec, 1
  %.029.i = select i1 %i.ex, i32 4, i32 %i.ey     ; 7 uses
  %i.ez = zext i32 %.029.i to i64                 ; 3 uses
  %i.fa = shl nuw nsw i64 %i.ez, 4
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.fc = tail call ptr @js_realloc_rt(ptr noundef %i.fb, ptr noundef nonnull %i.eh, i64 noundef %i.fa), !inline_history !1878 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.fc, null           ; 2 uses
  %i.fd = icmp ne i32 %.029.i, 0
  %i.fe = and i1 %i.fd, %.not.i.i52
  br i1 %i.fe, label %bb.af, label %js_realloc.exit.i, !prof !192

bb.af:                                            ; preds = %bb.ae
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1256 ; 3 uses
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !233, !range !234, !noundef !235
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %map_hash_resize.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.fg, align 8, !tbaa !233
  %i.fj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1879 ; 0 uses
  store i8 0, ptr %i.fg, align 8, !tbaa !233
  br label %map_hash_resize.exit

js_realloc.exit.i:                                ; preds = %bb.ae
  br i1 %.not.i.i52, label %map_hash_resize.exit, label %.preheader.i

.preheader.i:                                     ; preds = %js_realloc.exit.i
  %.not.i = icmp eq i32 %.029.i, 0
  br i1 %.not.i, label %._crit_edge.i53, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.ez, 2                    ; 2 uses
  %i.fk = icmp ult i32 %.029.i, 4
  br i1 %i.fk, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ez, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i ; 4 uses
  store ptr %i.fl, ptr %i.fl, align 8, !tbaa !223
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !222
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 3 uses
  store ptr %i.fo, ptr %i.fo, align 8, !tbaa !223
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !222
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32 ; 3 uses
  store ptr %i.fr, ptr %i.fr, align 8, !tbaa !223
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !222
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48 ; 3 uses
  store ptr %i.fu, ptr %i.fu, align 8, !tbaa !223
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !222
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i53.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1880

._crit_edge.i53.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i53, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i53.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i53.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i.epil ; 4 uses
  store ptr %i.fw, ptr %i.fw, align 8, !tbaa !223
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !222
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %._crit_edge.i53, label %.lr.ph.i.epil, !llvm.loop !1881

._crit_edge.i53:                                  ; preds = %._crit_edge.i53.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.034.i = load ptr, ptr %i.fy, align 8, !tbaa !222 ; 2 uses
  %.not3235.i = icmp eq ptr %.034.i, %i.eo
  br i1 %.not3235.i, label %._crit_edge39.i, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %._crit_edge.i53
  %i.fz = add i32 %.029.i, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph38.i
  %.036.i = phi ptr [ %.034.i, %.lr.ph38.i ], [ %.0.i54, %bb.aj ] ; 6 uses
  %i.ga = getelementptr inbounds i8, ptr %.036.i, i64 -12
  %i.gb = load i8, ptr %i.ga, align 4, !tbaa !756, !range !234, !noundef !235
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %.036.i, i64 32
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.036.i, i64 40
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = tail call fastcc i32 @map_hash_key(ptr noundef nonnull %0, i64 %i.ge, i64 %i.gg), !inline_history !1882
  %i.gi = and i32 %i.gh, %i.fz
  %i.gj = getelementptr inbounds nuw i8, ptr %.036.i, i64 16 ; 3 uses
  %i.gk = zext i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.gk ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !223 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gj, ptr %i.gn, align 8, !tbaa !222
  store ptr %i.gm, ptr %i.gj, align 8, !tbaa !223
  %i.go = getelementptr inbounds nuw i8, ptr %.036.i, i64 24
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !222
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !223
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  %.0.i54 = load ptr, ptr %i.gp, align 8, !tbaa !222 ; 2 uses
  %.not32.i = icmp eq ptr %.0.i54, %i.eo
  br i1 %.not32.i, label %._crit_edge39.i, label %bb.ah, !llvm.loop !1883

._crit_edge39.i:                                  ; preds = %bb.aj, %._crit_edge.i53
  store ptr %i.fc, ptr %i.eg, align 8, !tbaa !674
  store i32 %.029.i, ptr %i.eb, align 8, !tbaa !673
  %i.gq = shl i32 %.029.i, 1
  store i32 %i.gq, ptr %i.ev, align 4, !tbaa !675
  br label %map_hash_resize.exit

map_hash_resize.exit:                             ; preds = %bb.k, %bb.j, %._crit_edge39.i, %js_realloc.exit.i, %bb.ag, %bb.af, %.thread, %bb.ad
  %.1 = phi ptr [ %i.ag, %._crit_edge39.i ], [ null, %.thread ], [ %i.ag, %bb.ad ], [ %i.ag, %bb.af ], [ %i.ag, %bb.ag ], [ %i.ag, %js_realloc.exit.i ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @map_hash_key(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  switch i32 %i.a, label %bb.k [
    i32 1, label %bb.b
    i32 -7, label %bb.c
    i32 -6, label %bb.d
    i32 -1, label %bb.e
    i32 -8, label %bb.e
    i32 0, label %bb.f
    i32 7, label %bb.g
    i32 -9, label %bb.h
    i32 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.07.0.extract.trunc = trunc i64 %1 to i32
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  %i.c = tail call fastcc i32 @hash_string(ptr noundef %i.b, i32 noundef 0)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @hash_string_rope(i64 %1, i64 %2, i32 noundef 0)
  br label %bb.k

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.e = trunc i64 %1 to i32
  %i.f = mul i32 %i.e, 3163
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %.sroa.07.0.extract.trunc12 = trunc i64 %1 to i32
  %i.g = sitofp i32 %.sroa.07.0.extract.trunc12 to double
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %.sroa.07.0.extract.trunc14 = trunc i64 %1 to i32
  %i.h = sitofp i32 %.sroa.07.0.extract.trunc14 to double
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !191  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %hash_string8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.010.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %bb.h ] ; 5 uses
  %.079.i = phi i32 [ %i.aj, %.lr.ph.i ], [ 0, %bb.h ]
  %i.n = mul i32 %.079.i, 263
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.010.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !218
  %i.q = zext i8 %i.p to i32
  %i.r = add i32 %i.n, %i.q
  %i.s = mul i32 %i.r, 263
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.010.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !218
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %i.s, %i.w
  %i.y = mul i32 %i.x, 263
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %.010.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !218
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac
  %i.ae = mul i32 %i.ad, 263
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.010.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !218
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 2 uses
  %i.ak = add nuw nsw i64 %.010.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ak, %i.m
  br i1 %exitcond.not.i.3, label %hash_string8.exit, label %.lr.ph.i, !llvm.loop !23

hash_string8.exit:                                ; preds = %.lr.ph.i, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.aj, %.lr.ph.i ]
  %i.al = trunc i64 %i.m to i32
  %i.am = mul i32 %i.al, 1640531527
end_hunk_5
begin_hunk_6_@json_parse_record_add:bb.a
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %json_parse_record_resize_hash.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.as, align 8, !tbaa !233
  %i.av = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.as, align 8, !tbaa !233
  br label %json_parse_record_resize_hash.exit

.lr.ph.preheader.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ak, %bb.g ], [ %i.aq, %bb.h ]
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !196
  %i.ax = add i64 %i.aw, %.011.i.i.i.i
  store i64 %i.ax, ptr %i.s, align 8, !tbaa !196
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !841
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.ba, ptr noundef %i.az)
  store ptr %i.z, ptr %i.ay, align 8, !tbaa !841
  store i32 %i.m, ptr %i.i, align 4, !tbaa !840
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !839
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %json_parse_record_resize_hash.exit.thread, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.preheader.i
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !842
  br label %bb.k

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  store i32 -1, ptr %i.bd, align 4, !tbaa !191
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = load i32, ptr %i.i, align 4, !tbaa !840
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %.preheader.i, !llvm.loop !1909

bb.k:                                             ; preds = %bb.k, %.lr.ph33.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph33.i ], [ %indvars.iv.next36.i, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %indvars.iv35.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !836
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !840
  %i.bk = add i32 %i.bj, -1
  %i.bl = and i32 %i.bk, %i.bi
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !1911
  %i.bq = trunc nuw i64 %indvars.iv35.i to i32
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !191
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.br = load i32, ptr %i.a, align 8, !tbaa !839 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next36.i, %i.bs
  br i1 %i.bt, label %bb.k, label %json_parse_record_resize_hash.exit.thread, !llvm.loop !1910

json_parse_record_resize_hash.exit.thread:        ; preds = %bb.k, %.preheader.i, %bb.b, %js_resize_array.exit.thread
  %i.bu = phi i32 [ %i.g, %js_resize_array.exit.thread ], [ 0, %.preheader.i ], [ %i.g, %bb.b ], [ %i.br, %bb.k ] ; 2 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !842
  %i.bw = add nsw i32 %i.bu, 1
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !839
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [48 x i8], ptr %i.bv, i64 %i.bx ; 5 uses
  %i.bz = icmp slt i32 %2, 242
  br i1 %i.bz, label %JS_DupAtom.exit, label %bb.l

bb.l:                                             ; preds = %json_parse_record_resize_hash.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !232
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !297
  %i.ce = zext nneg i32 %2 to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !299
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !191
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %json_parse_record_resize_hash.exit.thread, %bb.l
  store i32 %2, ptr %i.by, align 8, !tbaa !836
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  store i32 0, ptr %i.ck, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !240
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !840 ; 2 uses
  %.not34 = icmp eq i32 %i.cm, 0
  br i1 %.not34, label %json_parse_record_resize_hash.exit, label %bb.m

bb.m:                                             ; preds = %JS_DupAtom.exit
  %i.cn = add i32 %i.cm, -1
  %i.co = and i32 %i.cn, %2
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !841
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !191
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !1911
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !839
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.cs, align 4, !tbaa !191
  br label %json_parse_record_resize_hash.exit

json_parse_record_resize_hash.exit:               ; preds = %bb.j, %bb.i, %JS_DupAtom.exit, %bb.m, %js_resize_array.exit
  %.1 = phi ptr [ %i.ck, %JS_DupAtom.exit ], [ null, %js_resize_array.exit ], [ %i.ck, %bb.m ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @js_proxy_isArray(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %.tr15 = phi i64 [ %1, %bb.a ], [ %i.u, %bb.h ]
  %.tr16 = phi i64 [ %2, %bb.a ], [ %i.r, %bb.h ]
  %i.b = and i64 %.tr16, 4294967295
  %.not.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i, label %bb.b, label %js_is_array.exit

bb.b:                                             ; preds = %tailrecurse
  %i.c = inttoptr i64 %.tr15 to ptr               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %.not3.i = icmp eq i16 %i.e, 51
  br i1 %.not3.i, label %JS_GetOpaque.exit, label %js_is_array.exit

JS_GetOpaque.exit:                                ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218  ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %js_is_array.exit, label %bb.c

bb.c:                                             ; preds = %JS_GetOpaque.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.i = getelementptr i8, ptr %i.h, i64 1232
  %.val = load i64, ptr %i.i, align 8, !tbaa !263
  %i.j = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = icmp ugt i64 %.val, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !6 ; 0 uses
  br label %js_is_array.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !473
  %.not11 = icmp eq i8 %i.o, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.110), !inline_history !112 ; 0 uses
  br label %js_is_array.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 4294967295
  br i1 %i.t, label %bb.h, label %js_is_array.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.g, align 8              ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.x = load i16, ptr %i.w, align 2, !tbaa !276  ; 2 uses
  %i.y = icmp eq i16 %i.x, 51
  br i1 %i.y, label %tailrecurse, label %bb.i, !prof !192

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i16 %i.x, 2
  %i.aa = zext i1 %i.z to i32
  br label %js_is_array.exit

js_is_array.exit:                                 ; preds = %bb.b, %tailrecurse, %bb.g, %JS_GetOpaque.exit, %bb.i, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %i.aa, %bb.i ], [ 0, %JS_GetOpaque.exit ], [ 0, %bb.g ], [ 0, %tailrecurse ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_push(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %.not = icmp eq i32 %5, 0
  %spec.select = and i1 %i.c, %.not
  br i1 %spec.select, label %bb.b, label %.critedge.thread, !prof !324

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276
  %i.g = icmp eq i16 %i.f, 2
  br i1 %i.g, label %bb.c, label %.critedge.thread, !prof !324

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 18
  %or.cond98.not = icmp eq i16 %i.j, 18
  br i1 %or.cond98.not, label %bb.d, label %.critedge.thread, !prof !505

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !316  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !336
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !350
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %bb.e, label %.critedge.thread, !prof !324

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.critedge.thread, !prof !324

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !317  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !218
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.critedge.thread, !prof !324

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !191
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 134217728
  %.not125 = icmp eq i32 %i.ai, 0
  br i1 %.not125, label %.critedge.thread, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !218 ; 4 uses
  %i.ak = add i32 %i.aj, %3                       ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !218
  %i.an = icmp eq i32 %i.aj, %i.am
  %.not94 = icmp uge i32 %i.ak, %i.aj
  %or.cond101.not127 = and i1 %i.an, %.not94
  %i.ao = icmp sgt i32 %i.ak, -1
  %or.cond104 = and i1 %i.ao, %or.cond101.not127
  br i1 %or.cond104, label %bb.i, label %.critedge.thread, !prof !1914

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !218
  %i.ar = icmp ugt i32 %i.ak, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !192

bb.j:                                             ; preds = %bb.i
  %i.as = tail call fastcc i32 @expand_fast_array(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef %i.ak)
  %.not95 = icmp eq i32 %i.as, 0
  br i1 %.not95, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %js_dup.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %js_dup.exit ] ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !218
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = add i32 %i.aj, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = icmp ugt i32 %i.be, -10
  br i1 %i.bf, label %bb.m, label %js_dup.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = inttoptr i64 %i.bb to ptr
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !191
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.l, %bb.m
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !218
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bd, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !240
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !1912

._crit_edge:                                      ; preds = %js_dup.exit, %bb.k
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !218
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !317 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.ak to i64
  store i64 %.sroa.0.0.insert.ext.i.i, ptr %i.bk, align 8, !tbaa !218
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !240
  br label %.critedge

.critedge.thread:                                 ; preds = %bb.g, %bb.f, %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %i.bl = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0      ; 9 uses
  %i.bn = extractvalue { i64, i64 } %i.bl, 1      ; 9 uses
  %i.bo = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.bm, i64 %i.bn)
  %.not96 = icmp eq i32 %i.bo, 0
  br i1 %.not96, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.critedge.thread
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !240 ; 3 uses
  %i.bq = sext i32 %3 to i64                      ; 2 uses
  %i.br = add nsw i64 %i.bp, %i.bq                ; 4 uses
  %i.bs = icmp sgt i64 %i.br, 9007199254740991
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.312) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %7 = icmp ne i32 %5, 0
  %8 = icmp sgt i32 %3, 0                         ; 2 uses
  %or.cond = and i1 %8, %7
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = tail call fastcc i32 @JS_CopySubArray(ptr noundef %0, i64 %i.bm, i64 %i.bn, i64 noundef %i.bq, i64 noundef 0, i64 noundef %i.bp, i32 noundef -1)
  %.not97 = icmp eq i32 %i.bu, 0
  br i1 %.not97, label %.lr.ph131.preheader, label %.loopexit

bb.r:                                             ; preds = %bb.p
  br i1 %8, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %bb.q, %bb.r
  %.085143 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.q ]
  %wide.trip.count137 = zext nneg i32 %3 to i64
  br label %.lr.ph131

bb.s:                                             ; preds = %js_dup.exit109
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge132, label %.lr.ph131, !llvm.loop !1913

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %bb.s
  %indvars.iv134 = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next135, %bb.s ] ; 3 uses
  %i.bv = add nsw i64 %.085143, %indvars.iv134
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv134 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp ugt i32 %i.ca, -10
  br i1 %i.cb, label %bb.t, label %js_dup.exit109

bb.t:                                             ; preds = %.lr.ph131
  %i.cc = inttoptr i64 %i.bx to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !191
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !191
  br label %js_dup.exit109

js_dup.exit109:                                   ; preds = %.lr.ph131, %bb.t
  %i.cg = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %i.bm, i64 %i.bn, i64 noundef %i.bv, i64 %i.bx, i64 %i.bz)
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit, label %bb.s

._crit_edge132:                                   ; preds = %bb.s, %bb.r
  %i.ci = add nsw i64 %i.br, 2147483648
  %or.cond.i = icmp ult i64 %i.ci, 4294967296     ; 2 uses
  %.sroa.0.0.insert.ext.i.i110 = and i64 %i.br, 4294967295
  %i.cj = sitofp i64 %i.br to double
  %i.ck = bitcast double %i.cj to i64
  %.sroa.0.0.insert.ext.i.pn.i111 = select i1 %or.cond.i, i64 %.sroa.0.0.insert.ext.i.i110, i64 %i.ck ; 3 uses
  %.sroa.3.0.i112 = select i1 %or.cond.i, i64 0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.bm, ptr %6, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bn, ptr %i.cl, align 8
  %i.cm = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef %0, i64 %i.bm, i64 %i.bn, i32 noundef 51, i64 %.sroa.0.0.insert.ext.i.pn.i111, i64 %.sroa.3.0.i112, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %._crit_edge132
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !232
  %i.cq = trunc i64 %i.bn to i32
  %i.cr = icmp ugt i32 %i.cq, -10
  br i1 %i.cr, label %bb.v, label %JS_FreeValue.exit

bb.v:                                             ; preds = %bb.u
  %i.cs = inttoptr i64 %i.bm to ptr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !191 ; 2 uses
  %i.cv = add nsw i32 %i.cu, -1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !191
  %i.cw = icmp slt i32 %i.cu, 2
  br i1 %i.cw, label %bb.w, label %JS_FreeValue.exit

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cp, i64 %i.bm, i64 %i.bn), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.081.0.extract.trunc82 = trunc i64 %.sroa.0.0.insert.ext.i.pn.i111 to i32
  %.sroa.5.0.extract.shift83 = and i64 %.sroa.0.0.insert.ext.i.pn.i111, -4294967296
  br label %.critedge

.loopexit:                                        ; preds = %js_dup.exit109, %._crit_edge132, %bb.q, %.critedge.thread, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !232
  %i.cz = trunc i64 %i.bn to i32
  %i.da = icmp ugt i32 %i.cz, -10
  br i1 %i.da, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.loopexit
  %i.db = inttoptr i64 %i.bm to ptr
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !191 ; 2 uses
  %i.de = add nsw i32 %i.dd, -1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !191
  %i.df = icmp slt i32 %i.dd, 2
  br i1 %i.df, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cy, i64 %i.bm, i64 %i.bn), !inline_history !291
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.x, %.loopexit, %bb.j, %._crit_edge, %JS_FreeValue.exit
  %.sroa.081.3 = phi i32 [ %i.ak, %._crit_edge ], [ %.sroa.081.0.extract.trunc82, %JS_FreeValue.exit ], [ 0, %bb.j ], [ 0, %.loopexit ], [ 0, %bb.x ], [ 0, %bb.y ]
  %.sroa.5.3 = phi i64 [ 0, %._crit_edge ], [ %.sroa.5.0.extract.shift83, %JS_FreeValue.exit ], [ 0, %bb.j ], [ 0, %.loopexit ], [ 0, %bb.x ], [ 0, %bb.y ]
  %.sroa.7.3 = phi i64 [ 0, %._crit_edge ], [ %.sroa.3.0.i112, %JS_FreeValue.exit ], [ 6, %bb.j ], [ 6, %.loopexit ], [ 6, %bb.x ], [ 6, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.sroa.081.0.insert.ext = zext i32 %.sroa.081.3 to i64
  %.sroa.081.0.insert.insert = or disjoint i64 %.sroa.5.3, %.sroa.081.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.081.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_exception_free(ptr %.16.val, i64 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.b, label %JS_FreeValue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191  ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  %i.g = icmp slt i32 %i.e, 2
  br i1 %i.g, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef %.16.val, i64 %0, i64 %1), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %i.h = and i64 %1, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_object_keys(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call fastcc { i64, i64 } @JS_GetOwnPropertyNames2(ptr noundef %0, i64 %i.a, i64 %i.c, i32 noundef 17, i32 noundef %5)
  ret { i64, i64 } %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_ToQuotedStringFree(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.StringBuffer, align 8       ; 18 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = and i64 %2, 4294967294
  %or.cond.i.i = icmp eq i64 %i.c, 2
  br i1 %or.cond.i.i, label %JS_ToStringCheckObject.exit.thread.i, label %JS_ToStringCheckObject.exit.i

JS_ToStringCheckObject.exit.thread.i:             ; preds = %bb.a
  %i.d = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !151 ; 0 uses
  br label %JS_ToQuotedString.exit

JS_ToStringCheckObject.exit.i:                    ; preds = %bb.a
  %i.e = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !152 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 4 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 6 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %JS_ToQuotedString.exit, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit.i
  %i.j = inttoptr i64 %i.f to ptr                 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 2147483647
  %i.n = add nuw nsw i32 %i.m, 2                  ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !644
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !645
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !646
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !647
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.r, align 4, !tbaa !648
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !232  ; 7 uses
  %i.u = and i64 %i.k, 2147483647
  %i.v = add nuw nsw i64 %i.u, 27                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !196
  %i.z = add i64 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !197
  %i.ac = add i64 %i.ab, -1
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.c, !prof !192

end_hunk_6
begin_hunk_7_@js_create_function:bb.a

.epil.preheader436:                               ; preds = %.preheader256.loopexit.unr-lcssa, %.lr.ph279
  %indvars.iv313.epil.init = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next314.1, %.preheader256.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod440 = trunc i32 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod440)
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.aj, i64 %indvars.iv313.epil.init ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !711
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [20 x i8], ptr %i.al, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !863
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !713
  %i.av = trunc nuw nsw i64 %indvars.iv313.epil.init to i32
  store i32 %i.av, ptr %i.as, align 4, !tbaa !863
  br label %.preheader256

.preheader256:                                    ; preds = %.epil.preheader436, %.preheader256.loopexit.unr-lcssa, %bb.e
  %i.aw = icmp sgt i32 %i.c, 2
  br i1 %i.aw, label %.lr.ph282, label %.preheader

.lr.ph282:                                        ; preds = %.preheader256
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !720 ; 6 uses
  %wide.trip.count321 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter444 = and i64 %wide.trip.count321, 1
  %i.az = icmp eq i32 %i.c, 3
  br i1 %i.az, label %.epil.preheader443, label %.lr.ph282.new

.lr.ph282.new:                                    ; preds = %.lr.ph282
  %i.ba = and i64 %wide.trip.count321, 2147483646
  %i.bb = add nsw i64 %i.ba, -4
  br label %bb.h

bb.f:                                             ; preds = %bb.f, %.lr.ph279.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph279.new ], [ %indvars.iv.next314.1, %bb.f ] ; 4 uses
  %niter442 = phi i64 [ 0, %.lr.ph279.new ], [ %niter442.next.1, %bb.f ]
  %i.bc = getelementptr inbounds nuw [20 x i8], ptr %i.aj, i64 %indvars.iv313 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !711
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [20 x i8], ptr %i.al, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !863
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !713
  %i.bk = trunc nuw nsw i64 %indvars.iv313 to i32
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !863
  %indvars.iv.next314 = or disjoint i64 %indvars.iv313, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [20 x i8], ptr %i.aj, i64 %indvars.iv.next314 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !711
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [20 x i8], ptr %i.al, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !863
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !713
  %i.bt = trunc nuw nsw i64 %indvars.iv.next314 to i32
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !863
  %indvars.iv.next314.1 = add nuw nsw i64 %indvars.iv313, 2 ; 2 uses
  %niter442.next.1 = add i64 %niter442, 2         ; 2 uses
  %niter442.ncmp.1 = icmp eq i64 %niter442.next.1, %unroll_iter441
  br i1 %niter442.ncmp.1, label %.preheader256.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1990

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.l
  %lcmp.mod446.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod446.not, label %.preheader, label %.epil.preheader443

.epil.preheader443:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph282
  %indvars.iv318.epil.init = phi i64 [ 2, %.lr.ph282 ], [ %indvars.iv.next319.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod447 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod447)
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.ay, i64 %indvars.iv318.epil.init ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !863
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.g, label %.preheader

bb.g:                                             ; preds = %.epil.preheader443
  %i.by = load i32, ptr %i.bu, align 4, !tbaa !864
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [20 x i8], ptr %i.ay, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !863
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !863
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.g, %.epil.preheader443, %.preheader256
  br i1 %i.ah, label %.lr.ph284, label %._crit_edge285

.lr.ph284:                                        ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !875
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.trip.count326 = zext nneg i32 %i.ag to i64
  br label %bb.m

bb.h:                                             ; preds = %bb.l, %.lr.ph282.new
  %indvars.iv318 = phi i64 [ 2, %.lr.ph282.new ], [ %indvars.iv.next319.1, %bb.l ] ; 3 uses
  %niter449 = phi i64 [ 0, %.lr.ph282.new ], [ %niter449.next.1, %bb.l ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [20 x i8], ptr %i.ay, i64 %indvars.iv318 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !863
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = load i32, ptr %i.cg, align 4, !tbaa !864
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [20 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !863
  store i32 %i.co, ptr %i.ch, align 4, !tbaa !863
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cp = getelementptr inbounds nuw [20 x i8], ptr %i.ay, i64 %indvars.iv318 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !863
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !864
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [20 x i8], ptr %i.ay, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !863
  store i32 %i.cy, ptr %i.cq, align 4, !tbaa !863
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next319.1 = add nuw nsw i64 %indvars.iv318, 2 ; 2 uses
  %niter449.next.1 = add i64 %niter449, 2
  %niter449.ncmp.1 = icmp eq i64 %niter449, %i.bb
  br i1 %niter449.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1991

bb.m:                                             ; preds = %.lr.ph284, %bb.p
  %indvars.iv323 = phi i64 [ 0, %.lr.ph284 ], [ %indvars.iv.next324, %bb.p ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %indvars.iv323 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !713
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !711 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !720 ; 2 uses
  %i.dh = zext nneg i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !864
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [20 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !863
  store i32 %i.dn, ptr %i.da, align 4, !tbaa !713
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge285, label %bb.m, !llvm.loop !1992

._crit_edge285:                                   ; preds = %bb.p, %.preheader
  %i.do = load i64, ptr %i.z, align 4             ; 3 uses
  %i.dp = and i64 %i.do, 256
  %.not216 = icmp eq i64 %i.dp, 0
  br i1 %.not216, label %add_eval_variables.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge285
  %i.dq = and i64 %i.do, 549755813889
  %or.cond.i = icmp eq i64 %i.dq, 0
  br i1 %or.cond.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dr = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 86)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !884
  %i.dt = load i64, ptr %i.z, align 4             ; 2 uses
  %i.du = and i64 %i.dt, 64
  %.not175.i = icmp eq i64 %i.du, 0
  br i1 %.not175.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dv = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 87)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !885
  %.pre.i = load i64, ptr %i.z, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.dx = phi i64 [ %i.dt, %bb.r ], [ %.pre.i, %bb.s ], [ %i.do, %bb.q ] ; 2 uses
  %i.dy = and i64 %i.dx, 1024                     ; 2 uses
  %.not176.i = icmp eq i64 %i.dy, 0
  %i.dz = icmp ne i64 %i.dy, 0
  br i1 %.not176.i, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !886
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ed = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 8) ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %bb.w, label %add_var_this.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ef = load i64, ptr %i.z, align 4
  %i.eg = and i64 %i.ef, 32768
  %.not.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i, label %add_var_this.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !875
  %i.ej = zext nneg i32 %i.ed to i64
  %i.ek = getelementptr inbounds nuw [20 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %i.em = load i8, ptr %i.el, align 4
  %i.en = or i8 %i.em, 2
  store i8 %i.en, ptr %i.el, align 4
  br label %add_var_this.exit.i

add_var_this.exit.i:                              ; preds = %bb.x, %bb.w, %bb.v
  store i32 %i.ed, ptr %i.ea, align 8, !tbaa !886
  br label %bb.y

bb.y:                                             ; preds = %add_var_this.exit.i, %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !887
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.er = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 122)
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !887
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.es = load i64, ptr %i.z, align 4             ; 3 uses
  %i.et = and i64 %i.es, 32768
  %.not177.i = icmp eq i64 %i.et, 0
  br i1 %.not177.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !888
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ex = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 123)
  store i32 %i.ex, ptr %i.eu, align 8, !tbaa !888
  %.pre264.i = load i64, ptr %i.z, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ey = phi i64 [ %.pre264.i, %bb.ac ], [ %i.es, %bb.ab ], [ %i.es, %bb.aa ] ; 3 uses
  %i.ez = and i64 %i.ey, 8
  %.not178.i = icmp eq i64 %i.ez, 0
  br i1 %.not178.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !889
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fd = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 124)
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !889
  %.pre265.i = load i64, ptr %i.z, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.t
  %i.fe = phi i64 [ %i.ey, %bb.ad ], [ %i.ey, %bb.ae ], [ %.pre265.i, %bb.af ], [ %i.dx, %bb.t ]
  %i.ff = and i64 %i.fe, 512                      ; 2 uses
  %.not180.i = icmp eq i64 %i.ff, 0
  %i.fg = icmp ne i64 %i.ff, 0
  br i1 %.not180.i, label %add_arguments_arg.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !890
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %bb.ai, label %add_arguments_var.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fk = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 81) ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %bb.aj, label %add_arguments_var.exit.i

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.fk, ptr %i.fh, align 8, !tbaa !890
  br label %add_arguments_var.exit.i

add_arguments_var.exit.i:                         ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fm = load i64, ptr %i.z, align 4
  %i.fn = and i64 %i.fm, 549755813952
  %or.cond196.i = icmp eq i64 %i.fn, 64
  br i1 %or.cond196.i, label %bb.ak, label %add_arguments_arg.exit.i

bb.ak:                                            ; preds = %add_arguments_var.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !891
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %bb.al, label %add_arguments_arg.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !720
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %.01.i.i.i = load i32, ptr %i.ft, align 4, !tbaa !191 ; 2 uses
  %i.fu = icmp sgt i32 %.01.i.i.i, -1
  br i1 %i.fu, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !875
  br label %bb.an

bb.am:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.0.i.i.i = load i32, ptr %i.fx, align 4, !tbaa !191 ; 2 uses
  %i.fy = icmp sgt i32 %.0.i.i.i, -1
  br i1 %i.fy, label %bb.an, label %.loopexit.i.i, !llvm.loop !1993

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i.i
  %.02.i.i.i = phi i32 [ %.01.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.am ]
  %i.fz = zext nneg i32 %.02.i.i.i to i64
  %i.ga = getelementptr inbounds nuw [20 x i8], ptr %i.fw, i64 %i.fz ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !711
  %.not.i.i.i = icmp eq i32 %i.gc, 1
  br i1 %.not.i.i.i, label %bb.ao, label %.loopexit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gd = load i32, ptr %i.ga, align 4, !tbaa !546
  %i.ge = icmp eq i32 %i.gd, 81
  br i1 %i.ge, label %add_arguments_arg.exit.i, label %bb.am

.loopexit.i.i:                                    ; preds = %bb.an, %bb.am, %bb.al
  %i.gf = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef %1, i32 noundef 81) ; 4 uses
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %add_arguments_arg.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i.i
  %i.gh = load ptr, ptr %i.fr, align 8, !tbaa !720
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !863
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !875
  %i.gm = zext nneg i32 %i.gf to i64
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %i.gl, i64 %i.gm ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %i.gj, ptr %i.go, align 4, !tbaa !713
  store i32 %i.gf, ptr %i.gi, align 4, !tbaa !863
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 1, ptr %i.gp, align 4, !tbaa !711
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 4
  %i.gs = or i8 %i.gr, 2
  store i8 %i.gs, ptr %i.gq, align 4
  store i32 %i.gf, ptr %i.fo, align 4, !tbaa !891
  br label %add_arguments_arg.exit.i

add_arguments_arg.exit.i:                         ; preds = %bb.ao, %bb.ap, %.loopexit.i.i, %bb.ak, %add_arguments_var.exit.i, %bb.ag
  %i.gt = load i64, ptr %i.z, align 4
  %i.gu = and i64 %i.gt, 4
  %.not183.i = icmp eq i64 %i.gu, 0
  br i1 %.not183.i, label %add_func_var.exit.i, label %bb.aq

bb.aq:                                            ; preds = %add_arguments_arg.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !708 ; 2 uses
  %.not184.i = icmp eq i32 %i.gw, 0
  br i1 %.not184.i, label %add_func_var.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !892
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.as, label %add_func_var.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.ha = tail call fastcc i32 @add_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.gw) ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.at, label %add_func_var.exit.i

bb.at:                                            ; preds = %bb.as
  store i32 %i.ha, ptr %i.gx, align 8, !tbaa !892
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !875
  %i.he = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hf = getelementptr inbounds nuw [20 x i8], ptr %i.hd, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 4
  %i.hi = and i8 %i.hh, 15
  %i.hj = or disjoint i8 %i.hi, 64
  store i8 %i.hj, ptr %i.hg, align 4
  %i.hk = load i64, ptr %i.z, align 4
  %i.hl = and i64 %i.hk, 549755813888
  %.not.i199.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i199.i, label %add_func_var.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hm = load ptr, ptr %i.hc, align 8, !tbaa !875
  %i.hn = getelementptr inbounds nuw [20 x i8], ptr %i.hm, i64 %i.he
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 4
  %i.hq = or i8 %i.hp, 1
  store i8 %i.hq, ptr %i.ho, align 4
  br label %add_func_var.exit.i

add_func_var.exit.i:                              ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %add_arguments_arg.exit.i
  %i.hr = load i64, ptr %i.z, align 4
  %i.hs = trunc i64 %i.hr to i1
  br i1 %i.hs, label %.loopexit224.i, label %.preheader225.i

.preheader225.i:                                  ; preds = %add_func_var.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !877 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.i, label %.preheader223.i

.lr.ph.i:                                         ; preds = %.preheader225.i
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  br label %bb.av

.preheader223.i:                                  ; preds = %capture_var.exit.i, %.preheader225.i
  %i.hy = load i32, ptr %i.af, align 4, !tbaa !874 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph228.i, label %.loopexit224.i

.lr.ph228.i:                                      ; preds = %.preheader223.i
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  br label %bb.ax

bb.av:                                            ; preds = %capture_var.exit.i, %.lr.ph.i
  %i.ic = phi i32 [ %i.hu, %.lr.ph.i ], [ %i.in, %capture_var.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %capture_var.exit.i ] ; 2 uses
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !878
  %i.ie = getelementptr inbounds nuw [20 x i8], ptr %i.id, i64 %indvars.iv.i ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 4             ; 2 uses
  %i.ih = and i8 %i.ig, 4
  %.not.i200.i = icmp eq i8 %i.ih, 0
  br i1 %.not.i200.i, label %bb.aw, label %capture_var.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.ii = or disjoint i8 %i.ig, 4
  store i8 %i.ii, ptr %i.if, align 4
  %i.ij = load i32, ptr %i.hx, align 4, !tbaa !893 ; 2 uses
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.hx, align 4, !tbaa !893
  %i.il = trunc i32 %i.ij to i16
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 14
  store i16 %i.il, ptr %i.im, align 2, !tbaa !547
  %.pre266.i = load i32, ptr %i.ht, align 4, !tbaa !877
  br label %capture_var.exit.i

capture_var.exit.i:                               ; preds = %bb.aw, %bb.av
  %i.in = phi i32 [ %i.ic, %bb.av ], [ %.pre266.i, %bb.aw ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next.i, %i.io
  br i1 %i.ip, label %bb.av, label %.preheader223.i, !llvm.loop !1994

bb.ax:                                            ; preds = %capture_var.exit202.i, %.lr.ph228.i
  %i.iq = phi i32 [ %i.hy, %.lr.ph228.i ], [ %i.jb, %capture_var.exit202.i ]
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph228.i ], [ %indvars.iv.next250.i, %capture_var.exit202.i ] ; 2 uses
  %i.ir = load ptr, ptr %i.ia, align 8, !tbaa !875
  %i.is = getelementptr inbounds nuw [20 x i8], ptr %i.ir, i64 %indvars.iv249.i ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 12 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 4             ; 2 uses
  %i.iv = and i8 %i.iu, 4
  %.not.i201.i = icmp eq i8 %i.iv, 0
  br i1 %.not.i201.i, label %bb.ay, label %capture_var.exit202.i
end_hunk_7
begin_hunk_8_@js_parse_statement_or_decl:bb.a
  br i1 %i.adz, label %bb.hi, label %bb.hj, !prof !192

bb.hi:                                            ; preds = %.thread898
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.adu, i8 noundef zeroext -53)
  br label %dbuf_putc.exit.i.i

bb.hj:                                            ; preds = %.thread898
  %i.aea = load ptr, ptr %i.adu, align 8, !tbaa !467
  %i.aeb = add i64 %i.ady, 1
  store i64 %i.aeb, ptr %i.adx, align 8, !tbaa !466
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.ady
  store i8 -53, ptr %i.aec, align 1, !tbaa !218
  br label %dbuf_putc.exit.i.i

dbuf_putc.exit.i.i:                               ; preds = %bb.hj, %bb.hi
  %i.aed = load i64, ptr %i.adv, align 8, !tbaa !465
  %i.aee = load i64, ptr %i.adx, align 8, !tbaa !466 ; 2 uses
  %i.aef = sub i64 %i.aed, %i.aee
  %i.aeg = icmp ult i64 %i.aef, 4
  br i1 %i.aeg, label %bb.hk, label %bb.hl, !prof !192

bb.hk:                                            ; preds = %dbuf_putc.exit.i.i
  %i.aeh = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.adu, i32 noundef %i.adq) ; 0 uses
  %.pre.i.i866 = load i64, ptr %i.adx, align 8, !tbaa !466
  br label %dbuf_put_u32.exit.i.i

bb.hl:                                            ; preds = %dbuf_putc.exit.i.i
  %i.aei = load ptr, ptr %i.adu, align 8, !tbaa !467
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.aee
  store i32 %i.adq, ptr %i.aej, align 1
  %i.aek = load i64, ptr %i.adx, align 8, !tbaa !466
  %i.ael = add i64 %i.aek, 4                      ; 2 uses
  store i64 %i.ael, ptr %i.adx, align 8, !tbaa !466
  br label %dbuf_put_u32.exit.i.i

dbuf_put_u32.exit.i.i:                            ; preds = %bb.hl, %bb.hk
  %i.aem = phi i64 [ %.pre.i.i866, %bb.hk ], [ %i.ael, %bb.hl ] ; 2 uses
  %i.aen = load i64, ptr %i.adv, align 8, !tbaa !465
  %i.aeo = sub i64 %i.aen, %i.aem
  %i.aep = icmp ult i64 %i.aeo, 4
  br i1 %i.aep, label %bb.hm, label %bb.hn, !prof !192

bb.hm:                                            ; preds = %dbuf_put_u32.exit.i.i
  %i.aeq = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.adu, i32 noundef %i.ads) ; 0 uses
  br label %emit_source_loc.exit

bb.hn:                                            ; preds = %dbuf_put_u32.exit.i.i
  %i.aer = load ptr, ptr %i.adu, align 8, !tbaa !467
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aem
  store i32 %i.ads, ptr %i.aes, align 1
  %i.aet = load i64, ptr %i.adx, align 8, !tbaa !466
  %i.aeu = add i64 %i.aet, 4
  store i64 %i.aeu, ptr %i.adx, align 8, !tbaa !466
  br label %emit_source_loc.exit

emit_source_loc.exit:                             ; preds = %bb.hm, %bb.hn
  %i.aev = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !915
  %.not.i995 = icmp eq i32 %i.aev, 0
  br i1 %.not.i995, label %.lr.ph997.preheader, label %.thread

.lr.ph997.preheader:                              ; preds = %emit_source_loc.exit
  %i.aew = load i32, ptr %i.e, align 8, !tbaa !661
  %.not8.i.peel = icmp eq i32 %i.aew, 44
  br i1 %.not8.i.peel, label %bb.ho, label %.lr.ph997.preheader.js_parse_expr2.exit_crit_edge

.lr.ph997.preheader.js_parse_expr2.exit_crit_edge: ; preds = %.lr.ph997.preheader
  %.pre1126 = load ptr, ptr %i.adt, align 8, !tbaa !553
  br label %js_parse_expr2.exit

bb.ho:                                            ; preds = %.lr.ph997.preheader
  %i.aex = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !915
  %.not9.i.peel = icmp eq i32 %i.aex, 0
  br i1 %.not9.i.peel, label %bb.hp, label %.thread

bb.hp:                                            ; preds = %bb.ho
  %.val.i867.peel = load ptr, ptr %i.adt, align 8, !tbaa !553 ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.val.i867.peel, i64 288 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.val.i867.peel, i64 296 ; 2 uses
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !466 ; 4 uses
  %i.afb = trunc i64 %i.afa to i32
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i867.peel, i64 336
  store i32 %i.afb, ptr %i.afc, align 8, !tbaa !730
  %i.afd = getelementptr inbounds nuw i8, ptr %.val.i867.peel, i64 304
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !465
  %i.aff = icmp eq i64 %i.afe, %i.afa
  br i1 %i.aff, label %bb.hr, label %bb.hq, !prof !192

bb.hq:                                            ; preds = %bb.hp
  %i.afg = load ptr, ptr %i.aey, align 8, !tbaa !467
  %i.afh = add i64 %i.afa, 1
  store i64 %i.afh, ptr %i.aez, align 8, !tbaa !466
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afa
  store i8 14, ptr %i.afi, align 1, !tbaa !218
  br label %emit_op.exit.i.peel

bb.hr:                                            ; preds = %bb.hp
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.aey, i8 noundef zeroext 14)
  br label %emit_op.exit.i.peel

emit_op.exit.i.peel:                              ; preds = %bb.hr, %bb.hq
  %i.afj = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !915
  %.not.i.peel = icmp eq i32 %i.afj, 0
  br i1 %.not.i.peel, label %.lr.ph997.peel.next, label %.thread

.lr.ph997.peel.next:                              ; preds = %emit_op.exit.i.peel, %emit_op.exit.i
  %i.afk = load ptr, ptr %i.adt, align 8, !tbaa !553 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 336
  store i32 -1, ptr %i.afl, align 8, !tbaa !730
  %i.afm = load i32, ptr %i.e, align 8, !tbaa !661
  %.not8.i = icmp eq i32 %i.afm, 44
  br i1 %.not8.i, label %bb.hs, label %js_parse_expr2.exit

bb.hs:                                            ; preds = %.lr.ph997.peel.next
  %i.afn = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !915
  %.not9.i = icmp eq i32 %i.afn, 0
  br i1 %.not9.i, label %bb.ht, label %.thread

bb.ht:                                            ; preds = %bb.hs
  %.val.i867 = load ptr, ptr %i.adt, align 8, !tbaa !553 ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.val.i867, i64 288 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.val.i867, i64 296 ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !466 ; 4 uses
  %i.afr = trunc i64 %i.afq to i32
  %i.afs = getelementptr inbounds nuw i8, ptr %.val.i867, i64 336
  store i32 %i.afr, ptr %i.afs, align 8, !tbaa !730
  %i.aft = getelementptr inbounds nuw i8, ptr %.val.i867, i64 304
  %i.afu = load i64, ptr %i.aft, align 8, !tbaa !465
  %i.afv = icmp eq i64 %i.afu, %i.afq
  br i1 %i.afv, label %bb.hu, label %bb.hv, !prof !192

bb.hu:                                            ; preds = %bb.ht
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.afo, i8 noundef zeroext 14)
  br label %emit_op.exit.i

bb.hv:                                            ; preds = %bb.ht
  %i.afw = load ptr, ptr %i.afo, align 8, !tbaa !467
  %i.afx = add i64 %i.afq, 1
  store i64 %i.afx, ptr %i.afp, align 8, !tbaa !466
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.afq
  store i8 14, ptr %i.afy, align 1, !tbaa !218
  br label %emit_op.exit.i

emit_op.exit.i:                                   ; preds = %bb.hv, %bb.hu
  %i.afz = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !915
  %.not.i = icmp eq i32 %i.afz, 0
  br i1 %.not.i, label %.lr.ph997.peel.next, label %.thread, !llvm.loop !2029

js_parse_expr2.exit:                              ; preds = %.lr.ph997.peel.next, %.lr.ph997.preheader.js_parse_expr2.exit_crit_edge
  %i.aga = phi ptr [ %.pre1126, %.lr.ph997.preheader.js_parse_expr2.exit_crit_edge ], [ %i.afk, %.lr.ph997.peel.next ] ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 140
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !719
  %i.agd = icmp sgt i32 %i.agc, -1
  br i1 %i.agd, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %js_parse_expr2.exit
  tail call fastcc void @emit_op(ptr nonnull %i.aga, i8 noundef zeroext 88)
  %i.age = load ptr, ptr %i.adt, align 8, !tbaa !553 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 140
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !719
  %i.agh = trunc i32 %i.agg to i16
  tail call fastcc void @emit_u16(ptr %i.age, i16 noundef zeroext %i.agh)
  br label %bb.hy

bb.hx:                                            ; preds = %js_parse_expr2.exit
  tail call fastcc void @emit_op(ptr nonnull %i.aga, i8 noundef zeroext 14)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.agi = tail call fastcc i32 @js_parse_expect_semi(ptr noundef %0)
  %.not753 = icmp eq i32 %i.agi, 0
  br i1 %.not753, label %bb.hz, label %.thread

bb.hz:                                            ; preds = %bb.gx, %bb.gg, %bb.fy, %bb.es, %bb.dm, %.critedge.thread932, %bb.bh, %bb.ba, %bb.aw, %bb.aj, %.thread892, %bb.m, %bb.v, %bb.aa, %bb.ap, %bb.fz, %bb.hb, %bb.he, %bb.hg, %bb.hy
  %.1604 = phi i32 [ %.0603, %bb.hy ], [ %.0603, %bb.m ], [ %.0603, %bb.v ], [ %.0603, %bb.aa ], [ %i.o, %.thread892 ], [ %.0603, %bb.ap ], [ %.0603, %bb.aw ], [ %.0603, %bb.ba ], [ %.0603, %bb.bh ], [ %.0603, %bb.gx ], [ %.0603, %bb.aj ], [ %.0603, %.critedge.thread932 ], [ %.0603, %bb.es ], [ %.0603, %bb.fy ], [ %.0603, %bb.fz ], [ %.0603, %bb.gg ], [ %.0603, %bb.hb ], [ %.0603, %bb.dm ], [ %.0603, %bb.he ], [ %.0603, %bb.hg ]
  call void @JS_FreeAtom(ptr noundef %i.d, i32 noundef %.1604)
  br label %bb.ia

.thread:                                          ; preds = %emit_op.exit.i, %bb.hs, %bb.ho, %emit_op.exit.i.peel, %emit_source_loc.exit, %.critedge, %bb.gx, %bb.gv, %bb.gq, %bb.gu, %bb.gn, %bb.gw, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.dm, %bb.dj, %bb.de, %bb.dl, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ag, %bb.ai, %bb.aj, %bb.ah, %bb.ad, %bb.ac, %bb.ak, %bb.h, %bb.i, %bb.g, %.thread957, %.thread949, %.critedge.thread, %.thread907, %.thread904, %bb.l, %bb.hy, %bb.hg, %bb.hf, %bb.hb, %bb.gk, %bb.fz, %bb.ap, %bb.ao, %bb.an, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.u, %bb.r, %bb.m, %bb.hh, %bb.hd, %bb.ha, %.thread890.thread.thread, %bb.gb, %bb.am, %bb.y, %bb.q, %bb.o
  %.2605 = phi i32 [ %.0603, %bb.gx ], [ %.0603, %bb.hy ], [ %.0603, %bb.m ], [ %.0603, %bb.o ], [ %.0603, %bb.q ], [ %.0603, %bb.r ], [ %.0603, %bb.v ], [ %.0603, %bb.u ], [ %.0603, %bb.w ], [ %.0603, %bb.y ], [ %.0603, %bb.z ], [ %.0603, %bb.aa ], [ %i.o, %bb.h ], [ %.0603, %bb.an ], [ %.0603, %bb.ao ], [ %.0603, %bb.ap ], [ %.0603, %bb.am ], [ %.0603, %bb.ag ], [ %.0603, %.thread904 ], [ %.0603, %.thread907 ], [ %.0603, %.critedge ], [ %.0603, %bb.av ], [ %.0603, %.thread949 ], [ %.0603, %.thread957 ], [ %.0603, %bb.fz ], [ %.0603, %bb.gb ], [ %.0603, %bb.dm ], [ %.0603, %bb.hb ], [ %.0603, %bb.ha ], [ %.060310781168, %.thread890.thread.thread ], [ %.0603, %bb.gk ], [ %.0603, %bb.gf ], [ %.0603, %bb.hd ], [ %.0603, %bb.hf ], [ %.0603, %bb.hg ], [ %.0603, %bb.hh ], [ %i.o, %bb.l ], [ %.0603, %.critedge.thread ], [ %i.o, %bb.g ], [ %i.o, %bb.i ], [ %.0603, %bb.ak ], [ %.0603, %bb.ac ], [ %.0603, %bb.ad ], [ %.0603, %bb.ah ], [ %.0603, %bb.aj ], [ %.0603, %bb.ai ], [ %.0603, %bb.aq ], [ %.0603, %bb.ar ], [ %.0603, %bb.as ], [ %.0603, %bb.au ], [ %.0603, %bb.dl ], [ %.0603, %bb.de ], [ %.0603, %bb.dj ], [ %.0603, %bb.gc ], [ %.0603, %bb.gd ], [ %.0603, %bb.ge ], [ %.0603, %bb.gw ], [ %.0603, %bb.gn ], [ %.0603, %bb.gu ], [ %.0603, %bb.gq ], [ %.0603, %bb.gv ], [ %.0603, %emit_source_loc.exit ], [ %.0603, %bb.ho ], [ %.0603, %emit_op.exit.i.peel ], [ %.0603, %bb.hs ], [ %.0603, %emit_op.exit.i ]
  call void @JS_FreeAtom(ptr noundef %i.d, i32 noundef %.2605)
  br label %bb.ia

bb.ia:                                            ; preds = %.critedge.thread934, %bb.he, %.thread, %bb.hz
  %.3 = phi i32 [ -1, %.critedge.thread934 ], [ -1, %.thread ], [ 0, %bb.hz ], [ -1, %bb.he ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_function_decl2(ptr noundef nonnull %0, i32 noundef range(i32 0, 2147483646) %1, i32 noundef range(i32 0, 4) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.BlockEnv, align 8           ; 10 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !552    ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 71 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !553  ; 25 uses
  %i.h = icmp samesign ugt i32 %1, 1              ; 3 uses
  %i.i = icmp eq i32 %1, 1                        ; 2 uses
  %i.j = icmp eq i32 %1, 2                        ; 4 uses
  %or.cond8 = icmp samesign ult i32 %1, 3         ; 2 uses
  br i1 %or.cond8, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %bb.c, label %token_is_pseudo_keyword.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !661
  %i.n = icmp eq i32 %i.m, -125
  br i1 %i.n, label %bb.d, label %token_is_pseudo_keyword.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !218
  %i.q = icmp eq i32 %i.p, 143
  br i1 %i.q, label %token_is_pseudo_keyword.exit, label %token_is_pseudo_keyword.exit.thread

token_is_pseudo_keyword.exit:                     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i8, ptr %i.r, align 4, !tbaa !218, !range !234, !noundef !235
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %token_is_pseudo_keyword.exit.thread, label %bb.e

bb.e:                                             ; preds = %token_is_pseudo_keyword.exit
  %i.u = getelementptr i8, ptr %0, i64 120
  %.val711 = load ptr, ptr %i.u, align 8, !tbaa !655
  %i.v = tail call fastcc i32 @peek_token(ptr %.val711, i1 noundef zeroext true)
  %.not578 = icmp eq i32 %i.v, 10
  br i1 %.not578, label %token_is_pseudo_keyword.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not579 = icmp eq i32 %i.w, 0
  br i1 %.not579, label %token_is_pseudo_keyword.exit.thread, label %.thread845

token_is_pseudo_keyword.exit.thread:              ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %token_is_pseudo_keyword.exit, %bb.b
  %.0532 = phi i32 [ %2, %bb.b ], [ 0, %bb.e ], [ 0, %token_is_pseudo_keyword.exit ], [ 2, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.x = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not580 = icmp eq i32 %i.x, 0
  br i1 %.not580, label %bb.g, label %.thread845

bb.g:                                             ; preds = %token_is_pseudo_keyword.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !661  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 42
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not581 = icmp eq i32 %i.ab, 0
  br i1 %.not581, label %bb.i, label %.thread845

bb.i:                                             ; preds = %bb.h
  %i.ac = or i32 %.0532, 1
  %.pr = load i32, ptr %i.y, align 8, !tbaa !661
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ad = phi i32 [ %.pr, %bb.i ], [ %i.z, %bb.g ]
  %.1533 = phi i32 [ %i.ac, %bb.i ], [ %.0532, %bb.g ] ; 4 uses
  switch i32 %i.ad, label %.thread783 [
    i32 -125, label %bb.k
    i32 -40, label %bb.o
    i32 -39, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !218, !range !234, !noundef !235
  %i.ah = trunc nuw i8 %i.ag to i1
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !218 ; 3 uses
  br i1 %i.ah, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq i32 %.pre, 46
  %.not582 = trunc i32 %.1533 to i1
  %i.aj = and i1 %i.ai, %.not582
  %or.cond642.not = and i1 %i.j, %i.aj
  br i1 %or.cond642.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp ne i32 %.pre, 47
  %.not653 = xor i1 %i.j, true
  %brmerge654 = or i1 %i.ak, %.not653
  %i.al = and i32 %.1533, 2
  %.not583 = icmp eq i32 %i.al, 0
  %or.cond655 = or i1 %.not583, %brmerge654
  br i1 %or.cond655, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.am = load ptr, ptr %0, align 8, !tbaa !552
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !232
  %i.ao = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i, ptr noundef nonnull %i.c, i32 noundef %.pre) ; 0 uses
  %i.ap = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.519, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  br label %.thread845

bb.o:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.ar = load i64, ptr %i.aq, align 4
  %i.as = and i64 %i.ar, 549755813888
  %.not584 = icmp eq i64 %i.as, 0
  %brmerge848.not = and i1 %i.j, %.not584
  br i1 %brmerge848.not, label %.thread, label %.thread783

bb.p:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.au = load i8, ptr %i.at, align 8, !tbaa !715, !range !234, !noundef !235
  %i.av = trunc nuw i8 %i.au to i1
  %.not = xor i1 %i.av, true
  %or.cond15 = and i1 %i.j, %.not
  br i1 %or.cond15, label %.thread, label %.thread783

.thread:                                          ; preds = %bb.o, %bb.m, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !218 ; 4 uses
  %i.ay = icmp slt i32 %i.ax, 242
  br i1 %i.ay, label %JS_DupAtom.exit, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !232
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !297
  %i.bd = zext nneg i32 %i.ax to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !299
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !191
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %.thread, %bb.q
  %i.bj = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not585 = icmp eq i32 %i.bj, 0
  br i1 %.not585, label %bb.t, label %bb.r

bb.r:                                             ; preds = %JS_DupAtom.exit
  tail call void @JS_FreeAtom(ptr noundef %i.e, i32 noundef %i.ax)
  br label %.thread845

.thread783:                                       ; preds = %bb.o, %bb.j, %bb.p
  %9 = icmp ne i32 %1, 2
  %10 = icmp ne i32 %6, 2
  %or.cond18 = and i1 %9, %10
  br i1 %or.cond18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread783
  %i.bk = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.514) ; 0 uses
  br label %.thread845

bb.t:                                             ; preds = %bb.a, %JS_DupAtom.exit, %.thread783
  %.0535 = phi i32 [ %i.ax, %JS_DupAtom.exit ], [ 0, %.thread783 ], [ 0, %bb.a ] ; 17 uses
  %.2534 = phi i32 [ %.1533, %JS_DupAtom.exit ], [ %.1533, %.thread783 ], [ %2, %bb.a ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.bm = load i64, ptr %i.bl, align 4            ; 3 uses
  %i.bn = trunc i64 %i.bm to i1                   ; 3 uses
  br i1 %i.bn, label %bb.u, label %find_global_var.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !707
  %i.bq = icmp ne i32 %i.bp, 1
  %brmerge = select i1 %i.bq, i1 true, i1 %i.h
  br i1 %brmerge, label %find_global_var.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !879 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %find_global_var.exit.thread

.lr.ph.i:                                         ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !880
  %wide.trip.count.i = zext nneg i32 %i.bs to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_global_var.exit.thread, label %bb.x, !llvm.loop !169

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !882
  %.not.i = icmp eq i32 %i.by, %.0535
  br i1 %.not.i, label %find_global_var.exit, label %bb.w

find_global_var.exit:                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !916
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !717
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %.critedge, label %find_global_var.exit.thread

.critedge:                                        ; preds = %find_global_var.exit
  %i.ce = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.515) ; 0 uses
  tail call void @JS_FreeAtom(ptr noundef %i.e, i32 noundef %.0535)
  br label %.thread845

find_global_var.exit.thread:                      ; preds = %bb.w, %bb.v, %find_global_var.exit, %bb.u, %bb.t
  br i1 %i.i, label %bb.y, label %find_global_var.exit734.thread

bb.y:                                             ; preds = %find_global_var.exit.thread
  %i.cf = and i64 %i.bm, 549755813888
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = icmp eq i32 %.2534, 0                   ; 2 uses
  %or.cond24 = and i1 %i.ch, %i.cg
  br i1 %or.cond24, label %bb.z, label %find_lexical_decl.exit

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 164
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !917 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %.lr.ph.i720, label %._crit_edge.i

.lr.ph.i720:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !875
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ab, %.lr.ph.i720
  %.0178.us.i = phi i32 [ %i.cv, %bb.ab ], [ %i.cj, %.lr.ph.i720 ]
  %i.cn = zext nneg i32 %.0178.us.i to i64
  %i.co = getelementptr inbounds nuw [20 x i8], ptr %i.cm, i64 %i.cn ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !546
  %i.cq = icmp eq i32 %i.cp, %.0535
  br i1 %i.cq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = load i8, ptr %i.cr, align 4
  %i.ct = and i8 %i.cs, 2
  %.not19.us.i = icmp eq i8 %i.ct, 0
  br i1 %.not19.us.i, label %bb.ab, label %find_lexical_decl.exit

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.us.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !713 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %.lr.ph.split.us.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ab, %bb.z
  br i1 %i.bn, label %bb.ac, label %find_lexical_global_var.exit.thread.i

bb.ac:                                            ; preds = %._crit_edge.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !707
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ad, label %find_lexical_global_var.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.db = load i32, ptr %i.da, align 4, !tbaa !879 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.i, label %find_lexical_global_var.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !880
  %wide.trip.count.i.i.i = zext nneg i32 %i.db to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %find_lexical_global_var.exit.thread.i, label %bb.af, !llvm.loop !169

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ae ] ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !882
  %.not.i.i.i = icmp eq i32 %i.dh, %.0535
  br i1 %.not.i.i.i, label %find_global_var.exit.i.i, label %bb.ae

find_global_var.exit.i.i:                         ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dj = load i8, ptr %i.di, align 4
  %i.dk = and i8 %i.dj, 2
  %.not6.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not6.i.i, label %find_lexical_global_var.exit.thread.i, label %find_lexical_decl.exit

find_lexical_global_var.exit.thread.i:            ; preds = %bb.ae, %bb.ad, %find_global_var.exit.i.i, %._crit_edge.i, %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !876 ; 3 uses
  %.not.i721 = icmp eq ptr %i.dm, null
  br i1 %.not.i721, label %._crit_edge.i725, label %bb.ag

._crit_edge.i725:                                 ; preds = %find_lexical_global_var.exit.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !874
  br label %bb.aj

bb.ag:                                            ; preds = %find_lexical_global_var.exit.thread.i
  %i.dn = mul i32 %.0535, 1640531527              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !874 ; 3 uses
  %i.dq = sdiv i32 %i.dp, 5
  %i.dr = add nsw i32 %i.dq, %i.dp
  %i.ds = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dr, i1 true)
  %i.dt = lshr i32 -1, %i.ds                      ; 2 uses
  %i.du = and i32 %i.dt, %i.dn
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !191 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %find_var_htab.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !875 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %i.eb = phi i32 [ %i.dx, %.lr.ph.i.i ], [ %i.el, %bb.ai ] ; 3 uses
  %.019.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.eh, %bb.ai ] ; 2 uses
  %.01518.i.i = phi i32 [ %i.dn, %.lr.ph.i.i ], [ %i.eg, %bb.ai ]
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !546
  %i.ef = icmp eq i32 %i.ee, %.0535
  br i1 %i.ef, label %find_var_htab.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = add i32 %.01518.i.i, %.019.i.i          ; 2 uses
  %i.eh = add i32 %.019.i.i, 1
  %i.ei = and i32 %i.eg, %i.dt
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !191 ; 2 uses
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %find_var_htab.exit.thread.i, label %bb.ah

find_var_htab.exit.i:                             ; preds = %bb.ah
  %i.en = sext i32 %i.eb to i64
  %i.eo = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !711
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %find_var.exit, label %bb.aj

bb.aj:                                            ; preds = %find_var_htab.exit.i, %._crit_edge.i725
  %i.es = phi i32 [ %.pre.i, %._crit_edge.i725 ], [ %i.dp, %find_var_htab.exit.i ] ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i722, label %find_var_htab.exit.thread.i

.lr.ph.i722:                                      ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !875
  %i.ew = zext nneg i32 %i.es to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i722
  %indvars.iv.i723 = phi i64 [ %i.ew, %.lr.ph.i722 ], [ %indvars.iv.next.i724, %bb.am ] ; 2 uses
  %indvars.iv.next.i724 = add nsw i64 %indvars.iv.i723, -1 ; 3 uses
  %i.ex = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv.next.i724 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !546
  %i.ez = icmp eq i32 %i.ey, %.0535
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !711
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %find_arg.exit.loopexit8.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fd = icmp samesign ugt i64 %indvars.iv.i723, 1
  br i1 %i.fd, label %bb.ak, label %find_var_htab.exit.thread.i, !llvm.loop !170

find_var_htab.exit.thread.i:                      ; preds = %bb.ai, %bb.am, %bb.aj, %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !877 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.fh = icmp sgt i32 %i.ff, 0
  br i1 %i.fh, label %.lr.ph26, label %find_var.exit.thread

.lr.ph26:                                         ; preds = %find_var_htab.exit.thread.i
  %i.fi = zext nneg i32 %i.ff to i64
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !878
  br label %bb.ao

bb.an:                                            ; preds = %bb.ao
  %i.fk = icmp sgt i32 %i.fp, 0
  br i1 %i.fk, label %bb.ao, label %find_var.exit.thread, !llvm.loop !171

bb.ao:                                            ; preds = %.lr.ph26, %bb.an
  %indvars.iv.i.i25 = phi i64 [ %i.fi, %.lr.ph26 ], [ %i.fl, %bb.an ]
  %i.fl = add nsw i64 %indvars.iv.i.i25, -1       ; 3 uses
  %i.fm = getelementptr inbounds nuw [20 x i8], ptr %i.fj, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !546
  %i.fo = icmp eq i32 %i.fn, %.0535
  %i.fp = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fo, label %bb.ap, label %bb.an, !llvm.loop !171

bb.ap:                                            ; preds = %bb.ao
  %i.fq = or i32 %i.fp, 536870912
  br label %find_var.exit

find_arg.exit.loopexit8.i:                        ; preds = %bb.al
  %i.fr = trunc nuw nsw i64 %indvars.iv.next.i724 to i32
  br label %find_var.exit

find_var.exit:                                    ; preds = %find_var_htab.exit.i, %bb.ap, %find_arg.exit.loopexit8.i
  %.019.i = phi i32 [ %i.fr, %find_arg.exit.loopexit8.i ], [ %i.eb, %find_var_htab.exit.i ], [ %i.fq, %bb.ap ]
  %i.fs = and i32 %.019.i, -1610612736
  %or.cond644.not = icmp eq i32 %i.fs, 536870912
  br i1 %or.cond644.not, label %find_lexical_decl.exit, label %find_var.exit.thread

find_var.exit.thread:                             ; preds = %bb.an, %find_var_htab.exit.thread.i, %find_var.exit
  %i.ft = icmp ne i32 %.0535, 81
  %i.fu = and i64 %i.bm, 512
  %.not588 = icmp eq i64 %i.fu, 0
  %or.cond849 = or i1 %i.ft, %.not588
  br label %find_lexical_decl.exit

find_lexical_decl.exit:                           ; preds = %bb.aa, %find_var.exit.thread, %find_global_var.exit.i.i, %find_var.exit, %bb.y
  %.0547 = phi i1 [ false, %find_var.exit ], [ %or.cond849, %find_var.exit.thread ], [ false, %find_global_var.exit.i.i ], [ false, %bb.y ], [ false, %bb.aa ] ; 4 uses
  br i1 %i.bn, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %find_lexical_decl.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !707
  %switch = icmp ult i32 %i.fw, 2
  br i1 %switch, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !717 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !718
  %i.gb = icmp eq i32 %i.fy, %i.ga
  br i1 %i.gb, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !879 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i728, label %find_global_var.exit734.thread

.lr.ph.i728:                                      ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !880
  %wide.trip.count.i729 = zext nneg i32 %i.gd to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.au
  %indvars.iv.next.i732 = add nuw nsw i64 %indvars.iv.i730, 1 ; 2 uses
  %exitcond.not.i733 = icmp eq i64 %indvars.iv.next.i732, %wide.trip.count.i729
  br i1 %exitcond.not.i733, label %find_global_var.exit734.thread, label %bb.au, !llvm.loop !169

bb.au:                                            ; preds = %bb.at, %.lr.ph.i728
  %indvars.iv.i730 = phi i64 [ 0, %.lr.ph.i728 ], [ %indvars.iv.next.i732, %bb.at ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv.i730 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !882
  %.not.i731 = icmp eq i32 %i.gj, %.0535
  br i1 %.not.i731, label %find_global_var.exit734, label %bb.at

find_global_var.exit734:                          ; preds = %bb.au
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !916
  %i.gm = icmp eq i32 %i.gl, %i.fy
  br i1 %i.gm, label %.critedge646, label %find_global_var.exit734.thread

.critedge646:                                     ; preds = %find_global_var.exit734
  %i.gn = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.516) ; 0 uses
  tail call void @JS_FreeAtom(ptr noundef %i.e, i32 noundef %.0535)
  br label %.thread845

bb.av:                                            ; preds = %bb.aq, %bb.ar, %find_lexical_decl.exit
  %i.go = select i1 %i.ch, i32 3, i32 4
  %i.gp = tail call fastcc i32 @define_var(ptr noundef %0, ptr noundef %i.g, i32 noundef %.0535, i32 noundef %i.go) ; 2 uses
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %bb.aw, label %find_global_var.exit734.thread

bb.aw:                                            ; preds = %bb.av
  tail call void @JS_FreeAtom(ptr noundef %i.e, i32 noundef %.0535)
  br label %.thread845

find_global_var.exit734.thread:                   ; preds = %bb.at, %bb.as, %find_global_var.exit734, %bb.av, %find_global_var.exit.thread
  %.0553 = phi i32 [ -1, %find_global_var.exit.thread ], [ %i.gp, %bb.av ], [ -1, %find_global_var.exit734 ], [ -1, %bb.as ], [ -1, %bb.at ] ; 2 uses
  %.1548 = phi i1 [ false, %find_global_var.exit.thread ], [ %.0547, %bb.av ], [ %.0547, %find_global_var.exit734 ], [ %.0547, %bb.as ], [ %.0547, %bb.at ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !557
  %i.gt = tail call fastcc ptr @js_new_function_def(ptr noundef %i.e, ptr noundef %i.g, i1 noundef zeroext false, i1 noundef zeroext %i.h, ptr noundef %i.gs, i32 noundef %4, i32 noundef %5) ; 42 uses
  %.not591 = icmp eq ptr %i.gt, null
  br i1 %.not591, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %find_global_var.exit734.thread
  tail call void @JS_FreeAtom(ptr noundef %i.e, i32 noundef %.0535)
  br label %.thread845

bb.ay:                                            ; preds = %find_global_var.exit734.thread
  %.not592 = icmp eq ptr %7, null                 ; 2 uses
  br i1 %.not592, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.gt, ptr %7, align 8, !tbaa !918
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr %i.gt, ptr %i.f, align 8, !tbaa !553
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 68 ; 2 uses
  store i32 %.0535, ptr %i.gu, align 4, !tbaa !708
  %i.gv = icmp eq i32 %.2534, 0                   ; 2 uses
  %i.gw = and i1 %or.cond8, %i.gv
  %i.gx = select i1 %i.gw, i64 16, i64 0
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 60 ; 27 uses
  %i.gz = load i64, ptr %i.gy, align 4
  %i.ha = and i64 %i.gz, -34329
  %i.hb = add nsw i32 %1, -4
  %or.cond36 = icmp ult i32 %i.hb, 3
  %i.hc = icmp eq i32 %1, 8
  %i.hd = icmp eq i32 %1, 9
  %i.he = and i32 %1, 2147483646
  %i.hf = icmp eq i32 %i.he, 8                    ; 2 uses
  %i.hg = or i1 %or.cond36, %i.hf
  %i.hh = select i1 %i.hg, i64 8, i64 0           ; 2 uses
  %i.hi = icmp ne i32 %1, 3
  %i.hj = icmp ne i32 %1, 7                       ; 3 uses
  %i.hk = and i1 %i.hi, %i.hj
  %i.hl = select i1 %i.hd, i64 32768, i64 0       ; 2 uses
  %i.hm = select i1 %i.hk, i64 1536, i64 0
  %i.hn = or disjoint i64 %i.hm, %i.gx
  %i.ho = or disjoint i64 %i.hn, %i.ha
  %i.hp = or disjoint i64 %i.ho, %i.hl
  %i.hq = or disjoint i64 %i.hp, %i.hh            ; 4 uses
  store i64 %i.hq, ptr %i.gy, align 4
  %11 = icmp eq i32 %1, 3                         ; 2 uses
  br i1 %11, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !860
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 60 ; 4 uses
  %i.hu = load i64, ptr %i.ht, align 4
  %.lobit = and i64 %i.hu, 2048
  %i.hv = and i64 %i.hq, -2049
  %i.hw = or disjoint i64 %.lobit, %i.hv          ; 2 uses
  store i64 %i.hw, ptr %i.gy, align 4
  %i.hx = load i64, ptr %i.ht, align 4
  %.lobit593 = and i64 %i.hx, 4096
  %i.hy = and i64 %i.hw, -4097
  %i.hz = or disjoint i64 %i.hy, %.lobit593       ; 2 uses
  store i64 %i.hz, ptr %i.gy, align 4
  %i.ia = load i64, ptr %i.ht, align 4
  %.lobit594 = and i64 %i.ia, 8192
  %i.ib = and i64 %i.hz, -8193
  %i.ic = or disjoint i64 %i.ib, %.lobit594       ; 2 uses
  store i64 %i.ic, ptr %i.gy, align 4
  %i.id = load i64, ptr %i.ht, align 4
  %.lobit595 = and i64 %i.id, 16384
  %i.ie = and i64 %i.ic, -16385
  %i.if = or disjoint i64 %i.ie, %.lobit595
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %12 = icmp eq i32 %1, 7
  br i1 %12, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ig = and i64 %i.hq, -30721
  %i.ih = or disjoint i64 %i.ig, 10240
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ii = lshr exact i64 %i.hl, 3
  %i.ij = and i64 %i.hq, -30721
  %i.ik = or disjoint i64 %i.ii, %i.ij
  %i.il = shl nuw nsw i64 %i.hh, 10
  %i.im = or disjoint i64 %i.ik, %i.il
  %i.in = or disjoint i64 %i.im, 18432
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bb
  %i.io = phi i64 [ %i.ih, %bb.bd ], [ %i.in, %bb.be ], [ %i.if, %bb.bb ]
  %i.ip = shl nuw nsw i32 %.2534, 21
  %i.iq = and i32 %i.ip, 534773760
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = and i64 %i.io, -545995620353
  %i.it = or disjoint i64 %i.is, %i.ir
  %i.iu = and i32 %1, 127
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 32
  %i.ix = or disjoint i64 %i.it, %i.iw            ; 2 uses
  store i64 %i.ix, ptr %i.gy, align 4
  br i1 %i.hf, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %.val692 = load ptr, ptr %i.f, align 8, !tbaa !553 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val692, i64 288 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.val692, i64 296 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !466 ; 4 uses
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %.val692, i64 336
  store i32 %i.jb, ptr %i.jc, align 8, !tbaa !730
  %i.jd = getelementptr inbounds nuw i8, ptr %.val692, i64 304
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !465
  %i.jf = icmp eq i64 %i.je, %i.ja
  br i1 %i.jf, label %bb.bh, label %bb.bi, !prof !192

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.iy, i8 noundef zeroext 43)
  br label %emit_op.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jg = load ptr, ptr %i.iy, align 8, !tbaa !467
  %i.jh = add i64 %i.ja, 1
  store i64 %i.jh, ptr %i.iz, align 8, !tbaa !466
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja
  store i8 43, ptr %i.ji, align 1, !tbaa !218
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.bi, %bb.bh
  br i1 %i.hc, label %bb.bj, label %.thread792

bb.bj:                                            ; preds = %emit_op.exit
  tail call fastcc void @emit_class_field_init(ptr noundef %0)
  br label %.thread792

.thread792:                                       ; preds = %bb.bj, %emit_op.exit
  %i.jj = load i64, ptr %i.gy, align 4
  %i.jk = and i64 %i.jj, -97
  %i.jl = or disjoint i64 %i.jk, 32
  store i64 %i.jl, ptr %i.gy, align 4
  br label %.thread798

bb.bk:                                            ; preds = %bb.bf
  %i.jm = and i64 %i.ix, -97
  %i.jn = or disjoint i64 %i.jm, 32
  store i64 %i.jn, ptr %i.gy, align 4
  br i1 %11, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !661
  %i.jq = icmp eq i32 %i.jp, -125
  br i1 %i.jq, label %bb.bm, label %.thread798

bb.bm:                                            ; preds = %bb.bl
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !218, !range !234, !noundef !235
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.ju = load ptr, ptr %0, align 8, !tbaa !552
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !218
  %i.jx = getelementptr i8, ptr %i.ju, i64 16
  %.val.i735 = load ptr, ptr %i.jx, align 8, !tbaa !232
  %i.jy = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i735, ptr noundef nonnull %i.b, i32 noundef %i.jw) ; 0 uses
  %i.jz = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.519, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %.thread795

bb.bo:                                            ; preds = %bb.bm
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !218 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gt, i64 108 ; 4 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !877 ; 4 uses
  %i.ke = icmp sgt i32 %i.kd, 65534
  br i1 %i.ke, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kf = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.e, ptr noundef nonnull @.str.523, i32 noundef 65534) ; 0 uses
  br label %.thread795

bb.bq:                                            ; preds = %bb.bo
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gt, i64 96 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gt, i64 104 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !191
  %.not17.i = icmp slt i32 %i.kd, %i.ki
  br i1 %.not17.i, label %js_resize_array.exit.thread.i, label %js_resize_array.exit.i, !prof !324

js_resize_array.exit.i:                           ; preds = %bb.bq
  %i.kj = add nsw i32 %i.kd, 1
  %i.kk = tail call fastcc i32 @js_realloc_array(ptr noundef %i.e, ptr noundef nonnull %i.kg, i32 noundef 20, ptr noundef nonnull %i.kh, i32 noundef %i.kj), !inline_history !90
  %.not.i736 = icmp eq i32 %i.kk, 0
  br i1 %.not.i736, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i, label %.thread795

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i: ; preds = %js_resize_array.exit.i
  %.pre.i737 = load i32, ptr %i.kc, align 4, !tbaa !877
  br label %js_resize_array.exit.thread.i

js_resize_array.exit.thread.i:                    ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i, %bb.bq
  %i.kl = phi i32 [ %.pre.i737, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i ], [ %i.kd, %bb.bq ] ; 2 uses
  %i.km = load ptr, ptr %i.kg, align 8, !tbaa !878
  %i.kn = add nsw i32 %i.kl, 1
  store i32 %i.kn, ptr %i.kc, align 4, !tbaa !877
  %i.ko = sext i32 %i.kl to i64
  %i.kp = getelementptr inbounds [20 x i8], ptr %i.km, i64 %i.ko ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.kp, i8 0, i64 20, i1 false)
  %i.kq = icmp slt i32 %i.kb, 242
  br i1 %i.kq, label %add_arg.exit, label %bb.br

bb.br:                                            ; preds = %js_resize_array.exit.thread.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !232
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1104
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !297
  %i.kv = zext nneg i32 %i.kb to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kv
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !299
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -4 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !191
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !191
  br label %add_arg.exit

add_arg.exit:                                     ; preds = %js_resize_array.exit.thread.i, %bb.br
  store i32 %i.kb, ptr %i.kp, align 4, !tbaa !546
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store i32 -1, ptr %i.lb, align 4, !tbaa !905
  %i.lc = load i32, ptr %i.kc, align 4, !tbaa !877
  %i.ld = icmp slt i32 %i.lc, 1
  br i1 %i.ld, label %.thread795, label %bb.bs

bb.bs:                                            ; preds = %add_arg.exit
  %i.le = getelementptr inbounds nuw i8, ptr %i.gt, i64 112
  store i32 1, ptr %i.le, align 8, !tbaa !902
  br label %bb.fi

bb.bt:                                            ; preds = %bb.bk
  br i1 %i.hj, label %.thread798, label %bb.fi

.thread798:                                       ; preds = %bb.bl, %.thread792, %bb.bt
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !661
  %i.lh = icmp eq i32 %i.lg, 40
  br i1 %i.lh, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %.thread798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  %i.li = call fastcc i32 @js_parse_skip_parens_token(ptr noundef %0, ptr noundef nonnull %i.d, i1 noundef zeroext false) ; 0 uses
  %i.lj = load i32, ptr %i.d, align 4, !tbaa !191
  %i.lk = and i32 %i.lj, 4
  %.not597 = icmp eq i32 %i.lk, 0
  br i1 %.not597, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ll = load i64, ptr %i.gy, align 4
  %i.lm = or i64 %i.ll, 64
  store i64 %i.lm, ptr %i.gy, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ln = call fastcc i32 @next_token(ptr noundef %0)
  %.not598 = icmp eq i32 %i.ln, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  br i1 %.not598, label %bb.by, label %.thread795

bb.bx:                                            ; preds = %.thread798
  %i.lo = tail call fastcc i32 @js_parse_expect(ptr noundef %0, i32 noundef 40)
  %.not596 = icmp eq i32 %i.lo, 0
  br i1 %.not596, label %bb.by, label %.thread795

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.lp = load i64, ptr %i.gy, align 4
  %i.lq = and i64 %i.lp, 64
  %.not599 = icmp eq i64 %i.lq, 0
  br i1 %.not599, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gt, i64 160
  store i32 -1, ptr %i.lr, align 8, !tbaa !717
  %i.ls = call fastcc i32 @push_scope(ptr noundef %0)
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %.thread845, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gt, i64 112 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gt, i64 160 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gt, i64 108 ; 11 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gt, i64 96 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gt, i64 104 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.fe, %bb.ca
  %.0549 = phi i8 [ 0, %bb.ca ], [ %.2551807.ph, %bb.fe ] ; 4 uses
  %i.mc = load i32, ptr %i.lf, align 8, !tbaa !661 ; 3 uses
  %.not600 = icmp eq i32 %i.mc, 41
  br i1 %.not600, label %.thread820, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.md = icmp eq i32 %i.mc, -91                  ; 4 uses
  br i1 %i.md, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.me = load i64, ptr %i.gy, align 4
  %i.mf = and i64 %i.me, -33
  store i64 %i.mf, ptr %i.gy, align 4
  %i.mg = call fastcc i32 @next_token(ptr noundef %0)
  %.not601 = icmp eq i32 %i.mg, 0
  br i1 %.not601, label %thread-pre-split, label %.thread795

thread-pre-split:                                 ; preds = %bb.cd
  %.pr799 = load i32, ptr %i.lf, align 8, !tbaa !661
  br label %bb.ce

bb.ce:                                            ; preds = %thread-pre-split, %bb.cc
  %i.mh = phi i32 [ %.pr799, %thread-pre-split ], [ %i.mc, %bb.cc ]
  switch i32 %i.mh, label %bb.er [
    i32 91, label %bb.cf
    i32 123, label %bb.cf
    i32 -125, label %bb.cu
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.mi = load i64, ptr %i.gy, align 4
  %i.mj = and i64 %i.mi, -33
  store i64 %i.mj, ptr %i.gy, align 4
  br i1 %i.md, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %.val691 = load ptr, ptr %i.f, align 8, !tbaa !553 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.val691, i64 288 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.val691, i64 296 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !466 ; 4 uses
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = getelementptr inbounds nuw i8, ptr %.val691, i64 336
  store i32 %i.mn, ptr %i.mo, align 8, !tbaa !730
  %i.mp = getelementptr inbounds nuw i8, ptr %.val691, i64 304
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !465
  %i.mr = icmp eq i64 %i.mq, %i.mm
  br i1 %i.mr, label %bb.ch, label %bb.ci, !prof !192

bb.ch:                                            ; preds = %bb.cg
end_hunk_8
begin_hunk_9_@js_parse_template:bb.a
  %.4 = phi i32 [ %i.hd, %._crit_edge ], [ -1, %bb.b ], [ -1, %JS_FreeValue.exit ], [ -1, %bb.f ], [ -1, %JS_FreeValue.exit112.thread134 ], [ %i.js, %emit_u16.exit ], [ -1, %JS_DefinePropertyValue.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_expr_paren(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @js_parse_expect(ptr noundef %0, i32 noundef 40)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %js_parse_expr2.exit.thread

.preheader:                                       ; preds = %bb.a
  %i.b = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !915
  %.not.i7 = icmp eq i32 %i.b, 0
  br i1 %.not.i7, label %bb.b, label %js_parse_expr2.exit.thread

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !661
  %.not8.i.peel = icmp eq i32 %i.e, 44
  br i1 %.not8.i.peel, label %bb.c, label %js_parse_expr2.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !915
  %.not9.i.peel = icmp eq i32 %i.f, 0
  br i1 %.not9.i.peel, label %bb.d, label %js_parse_expr2.exit.thread

bb.d:                                             ; preds = %bb.c
  %.val.i.peel = load ptr, ptr %i.c, align 8, !tbaa !553 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.peel, i64 288 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.peel, i64 296 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !466  ; 4 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.peel, i64 336
  store i32 %i.j, ptr %i.k, align 8, !tbaa !730
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.peel, i64 304
  %i.m = load i64, ptr %i.l, align 8, !tbaa !465
  %i.n = icmp eq i64 %i.m, %i.i
  br i1 %i.n, label %bb.f, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.p = add i64 %i.i, 1
  store i64 %i.p, ptr %i.h, align 8, !tbaa !466
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 14, ptr %i.q, align 1, !tbaa !218
  br label %emit_op.exit.i.peel

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext 14)
  br label %emit_op.exit.i.peel

emit_op.exit.i.peel:                              ; preds = %bb.f, %bb.e
  %i.r = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !915
  %.not.i.peel = icmp eq i32 %i.r, 0
  br i1 %.not.i.peel, label %.peel.next, label %js_parse_expr2.exit.thread

.peel.next:                                       ; preds = %emit_op.exit.i.peel, %emit_op.exit.i
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !553
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  store i32 -1, ptr %i.t, align 8, !tbaa !730
  %i.u = load i32, ptr %i.d, align 8, !tbaa !661
  %.not8.i = icmp eq i32 %i.u, 44
  br i1 %.not8.i, label %bb.g, label %js_parse_expr2.exit

bb.g:                                             ; preds = %.peel.next
  %i.v = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !915
  %.not9.i = icmp eq i32 %i.v, 0
  br i1 %.not9.i, label %bb.h, label %js_parse_expr2.exit.thread

bb.h:                                             ; preds = %bb.g
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !553 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 288 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 296 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !466  ; 4 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 336
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !730
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 304
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !465
  %i.ad = icmp eq i64 %i.ac, %i.y
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !192

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.w, i8 noundef zeroext 14)
  br label %emit_op.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !467
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.x, align 8, !tbaa !466
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 14, ptr %i.ag, align 1, !tbaa !218
  br label %emit_op.exit.i

emit_op.exit.i:                                   ; preds = %bb.j, %bb.i
  %i.ah = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !915
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %.peel.next, label %js_parse_expr2.exit.thread, !llvm.loop !2056

js_parse_expr2.exit:                              ; preds = %.peel.next, %bb.b
  %i.ai = tail call fastcc i32 @js_parse_expect(ptr noundef %0, i32 noundef 41)
  %.not4 = icmp ne i32 %i.ai, 0
  %. = sext i1 %.not4 to i32
  br label %js_parse_expr2.exit.thread

js_parse_expr2.exit.thread:                       ; preds = %emit_op.exit.i, %bb.g, %bb.c, %emit_op.exit.i.peel, %.preheader, %js_parse_expr2.exit, %bb.a
  %.0 = phi i32 [ %., %js_parse_expr2.exit ], [ -1, %bb.a ], [ -1, %.preheader ], [ -1, %emit_op.exit.i.peel ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %emit_op.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @js_parse_class(ptr noundef nonnull %0, i1 noundef zeroext %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca [2 x %struct.ClassFieldsDef], align 16 ; 16 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !552    ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 78 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !553  ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  store i32 0, ptr %i.b, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !555  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 4 uses
  %i.n = load i64, ptr %i.m, align 4              ; 2 uses
  %i.o = or i64 %i.n, 549755813888
  store i64 %i.o, ptr %i.m, align 4
  %i.p = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not449 = icmp eq i32 %i.p, 0
  br i1 %.not449, label %bb.b, label %.thread591

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.j, align 8, !tbaa !661
  %i.r = icmp eq i32 %i.q, -125
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.t = load i8, ptr %i.s, align 1, !tbaa !218, !range !234, !noundef !235
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.v = load ptr, ptr %0, align 8, !tbaa !552
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !218
  %i.y = getelementptr i8, ptr %i.v, i64 16
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !232
  %i.z = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i, ptr noundef nonnull %i.a, i32 noundef %i.x) ; 0 uses
  %i.aa = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.519, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %.thread591

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !218 ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 242
  br i1 %i.ad, label %JS_DupAtom.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !232
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !297
  %i.ai = zext nneg i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !299
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %bb.e, %bb.f
  %i.ao = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.i, label %.thread591

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp eq i32 %2, 2
  %or.cond.not = or i1 %1, %i.ap
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.556) ; 0 uses
  br label %.thread591

bb.i:                                             ; preds = %bb.g, %JS_DupAtom.exit
  %.0424 = phi i32 [ %i.ac, %JS_DupAtom.exit ], [ 0, %bb.g ] ; 44 uses
  br i1 %1, label %JS_DupAtom.exit573, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i32 %.0424, 0
  %..0424 = select i1 %i.ar, i32 134, i32 %.0424  ; 3 uses
  %i.as = icmp slt i32 %..0424, 242
  br i1 %i.as, label %JS_DupAtom.exit573, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !232
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !297
  %i.ax = zext nneg i32 %..0424 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !299
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !191
  br label %JS_DupAtom.exit573

JS_DupAtom.exit573:                               ; preds = %bb.k, %bb.j, %bb.i
  %.1421 = phi i32 [ 0, %bb.i ], [ %..0424, %bb.j ], [ %.0424, %bb.k ] ; 39 uses
  %i.bd = tail call fastcc i32 @push_scope(ptr noundef %0) ; 0 uses
  %i.be = load i32, ptr %i.j, align 8, !tbaa !661
  %i.bf = icmp eq i32 %i.be, -52                  ; 3 uses
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %JS_DupAtom.exit573
  %i.bg = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not451 = icmp eq i32 %i.bg, 0
  br i1 %.not451, label %bb.m, label %.thread591

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call fastcc i32 @js_parse_postfix_expr(ptr noundef nonnull %0, i32 noundef 2), !inline_history !175
  %.not452 = icmp eq i32 %i.bh, 0
  br i1 %.not452, label %emit_op.exit, label %.thread591

bb.n:                                             ; preds = %JS_DupAtom.exit573
  %.val543 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val543, i64 288 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val543, i64 296 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !466 ; 4 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %.val543, i64 336
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !730
  %i.bn = getelementptr inbounds nuw i8, ptr %.val543, i64 304
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !465
  %i.bp = icmp eq i64 %i.bo, %i.bk
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !192

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.bi, i8 noundef zeroext 6)
  br label %emit_op.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !467
  %i.br = add i64 %i.bk, 1
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !466
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i8 6, ptr %i.bs, align 1, !tbaa !218
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.p, %bb.o, %bb.m
  %.0417 = phi i8 [ 1, %bb.m ], [ 0, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.bt = icmp ne i32 %.0424, 0                   ; 4 uses
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %emit_op.exit
  %i.bu = tail call fastcc i32 @define_var(ptr noundef %0, ptr noundef nonnull %i.i, i32 noundef %.0424, i32 noundef 2)
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.thread591, label %bb.r

bb.r:                                             ; preds = %bb.q, %emit_op.exit
  %i.bw = tail call fastcc i32 @js_parse_expect(ptr noundef %0, i32 noundef 123)
  %.not453 = icmp eq i32 %i.bw, 0
  br i1 %.not453, label %bb.s, label %.thread591

bb.s:                                             ; preds = %bb.r
  %i.bx = tail call fastcc i32 @push_scope(ptr noundef %0) ; 0 uses
  %.val542 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val542, i64 288 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val542, i64 296 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !466 ; 4 uses
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.val542, i64 336
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !730
  %i.cd = getelementptr inbounds nuw i8, ptr %.val542, i64 304
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !465
  %i.cf = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cf, label %bb.t, label %bb.u, !prof !192

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.by, i8 noundef zeroext 2)
  br label %emit_op.exit574

bb.u:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !467
  %i.ch = add i64 %i.ca, 1
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !466
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca
  store i8 2, ptr %i.ci, align 1, !tbaa !218
  br label %emit_op.exit574

emit_op.exit574:                                  ; preds = %bb.t, %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !732
  %.val561 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val561, i64 288 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val561, i64 304
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !465
  %i.cp = getelementptr inbounds nuw i8, ptr %.val561, i64 296 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !466 ; 2 uses
  %i.cr = sub i64 %i.co, %i.cq
  %i.cs = icmp ult i64 %i.cr, 4
  br i1 %i.cs, label %bb.v, label %bb.w, !prof !192

bb.v:                                             ; preds = %emit_op.exit574
  %i.ct = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.cm, i32 noundef 0) ; 0 uses
  br label %emit_u32.exit

bb.w:                                             ; preds = %emit_op.exit574
  %i.cu = load ptr, ptr %i.cm, align 8, !tbaa !467
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq
  store i32 0, ptr %i.cv, align 1
  %i.cw = load i64, ptr %i.cp, align 8, !tbaa !466
  %i.cx = add i64 %i.cw, 4
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !466
  br label %emit_u32.exit

emit_u32.exit:                                    ; preds = %bb.v, %bb.w
  %4 = icmp eq i32 %.0424, 0                      ; 2 uses
  %.not454 = icmp eq i32 %.1421, 0                ; 2 uses
  %. = select i1 %.not454, i32 48, i32 22
  %.0423 = select i1 %4, i32 %., i32 %.0424       ; 3 uses
  %.val541 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val541, i64 288 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val541, i64 296 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !466 ; 4 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.val541, i64 336
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !730
  %i.dd = getelementptr inbounds nuw i8, ptr %.val541, i64 304
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !465
  %i.df = icmp eq i64 %i.de, %i.da
  br i1 %i.df, label %bb.x, label %bb.y, !prof !192

bb.x:                                             ; preds = %emit_u32.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.cy, i8 noundef zeroext 85)
  br label %emit_op.exit575

bb.y:                                             ; preds = %emit_u32.exit
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !467
  %i.dh = add i64 %i.da, 1
  store i64 %i.dh, ptr %i.cz, align 8, !tbaa !466
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.da
  store i8 85, ptr %i.di, align 1, !tbaa !218
  br label %emit_op.exit575

emit_op.exit575:                                  ; preds = %bb.x, %bb.y
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !553 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 288 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 296 ; 4 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !466 ; 3 uses
  %i.dn = add nuw i64 %i.dm, 4                    ; 3 uses
  %i.do = icmp ugt i64 %i.dm, -5
  br i1 %i.do, label %emit_atom.exit, label %bb.z

bb.z:                                             ; preds = %emit_op.exit575
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 304 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !465 ; 4 uses
  %i.dr = icmp ugt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.aa, label %.dbuf_claim.exit_crit_edge.i

.dbuf_claim.exit_crit_edge.i:                     ; preds = %bb.z
  %.pre.i = load ptr, ptr %i.dk, align 8, !tbaa !467
  br label %dbuf_claim.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 312 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !470, !range !234, !noundef !235
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %emit_atom.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = lshr i64 %i.dq, 1
  %i.dw = add i64 %i.dv, %i.dq                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dq
  %i.dy = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.dn)
  %.0.i.i = select i1 %i.dx, i64 %i.dn, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 320
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !464
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 328
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !463
  %i.ed = load ptr, ptr %i.dk, align 8, !tbaa !467
  %i.ee = tail call ptr %i.ea(ptr noundef %i.ec, ptr noundef %i.ed, i64 noundef %.0.i.i) #49, !inline_history !907 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.ds, align 8, !tbaa !470
  br label %emit_atom.exit

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.ee, ptr %i.dk, align 8, !tbaa !467
  store i64 %.0.i.i, ptr %i.dp, align 8, !tbaa !465
  %.pre8.i = load i64, ptr %i.dl, align 8, !tbaa !466
  br label %dbuf_claim.exit.i

dbuf_claim.exit.i:                                ; preds = %bb.ad, %.dbuf_claim.exit_crit_edge.i
  %i.ef = phi i64 [ %i.dm, %.dbuf_claim.exit_crit_edge.i ], [ %.pre8.i, %bb.ad ]
  %i.eg = phi ptr [ %.pre.i, %.dbuf_claim.exit_crit_edge.i ], [ %i.ee, %bb.ad ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  %i.ei = icmp slt i32 %.0423, 242
  br i1 %i.ei, label %JS_DupAtom.exit.i, label %bb.ae

bb.ae:                                            ; preds = %dbuf_claim.exit.i
  %i.ej = load ptr, ptr %0, align 8, !tbaa !552
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !232
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1104
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !297
  %i.eo = zext nneg i32 %.0423 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !299
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !191
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !191
  br label %JS_DupAtom.exit.i

JS_DupAtom.exit.i:                                ; preds = %bb.ae, %dbuf_claim.exit.i
  store i32 %.0423, ptr %i.eh, align 1
  %i.eu = load i64, ptr %i.dl, align 8, !tbaa !466
  %i.ev = add i64 %i.eu, 4
  store i64 %i.ev, ptr %i.dl, align 8, !tbaa !466
  br label %emit_atom.exit

emit_atom.exit:                                   ; preds = %emit_op.exit575, %bb.aa, %bb.ac, %JS_DupAtom.exit.i
  %.val564 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val564, i64 288 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val564, i64 304
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !465
  %i.ez = getelementptr inbounds nuw i8, ptr %.val564, i64 296 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !466 ; 3 uses
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.af, label %bb.ag, !prof !192

bb.af:                                            ; preds = %emit_atom.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.ew, i8 noundef zeroext %.0417)
  br label %emit_u8.exit

bb.ag:                                            ; preds = %emit_atom.exit
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !467
  %i.fd = add i64 %i.fa, 1
  store i64 %i.fd, ptr %i.ez, align 8, !tbaa !466
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 %.0417, ptr %i.fe, align 1, !tbaa !218
  br label %emit_u8.exit

emit_u8.exit:                                     ; preds = %bb.af, %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 336 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !730
  store ptr null, ptr %3, align 16, !tbaa !923
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.fh, align 8, !tbaa !2058
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i8 0, ptr %i.fi, align 4, !tbaa !2059
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.fj, align 4, !tbaa !924
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store ptr null, ptr %i.fk, align 8, !tbaa !923
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.fl, align 16, !tbaa !2058
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  store i8 0, ptr %i.fm, align 4, !tbaa !2059
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 1, ptr %i.fn, align 4, !tbaa !924
  store ptr null, ptr %i.d, align 8, !tbaa !918
  %i.fo = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 160 ; 7 uses
  %.492 = select i1 %i.bf, i32 9, i32 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 164
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %emit_op.exit579, %emit_u8.exit
  %.ph839 = phi ptr [ %i.pb, %emit_op.exit579 ], [ null, %emit_u8.exit ] ; 9 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.outer
  %i.fv = load i32, ptr %i.j, align 8, !tbaa !661
  switch i32 %i.fv, label %emit_op.exit576.thread602 [
    i32 125, label %bb.ed
    i32 59, label %bb.ah
    i32 -41, label %bb.ai
  ]

bb.ah:                                            ; preds = %.backedge
  %i.fw = call fastcc i32 @next_token(ptr noundef %0)
  %.not486 = icmp eq i32 %i.fw, 0
  br i1 %.not486, label %.backedge.backedge, label %.thread591

.backedge.backedge:                               ; preds = %bb.ah, %bb.aq
  br label %.backedge, !llvm.loop !2057

bb.ai:                                            ; preds = %.backedge
  %.val559 = load ptr, ptr %i.fo, align 8, !tbaa !655
  %i.fx = call fastcc i32 @peek_token(ptr %.val559, i1 noundef zeroext true)
  switch i32 %i.fx, label %bb.aj [
    i32 125, label %emit_op.exit576.thread602
    i32 61, label %emit_op.exit576.thread602
    i32 59, label %emit_op.exit576.thread602
    i32 40, label %emit_op.exit576.thread602
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fy = call fastcc i32 @next_token(ptr noundef %0)
  %.not468 = icmp eq i32 %i.fy, 0
  br i1 %.not468, label %bb.ak, label %.thread591

bb.ak:                                            ; preds = %bb.aj
  %i.fz = load i32, ptr %i.j, align 8, !tbaa !661
  switch i32 %i.fz, label %bb.ar [
    i32 123, label %bb.al
    i32 59, label %emit_op.exit576
    i32 61, label %emit_op.exit576
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ga = load ptr, ptr %i.fk, align 8, !tbaa !923 ; 2 uses
  %.not484 = icmp eq ptr %i.ga, null
end_hunk_9
begin_hunk_10_@js_parse_class:bb.a
  br i1 %i.pj, label %bb.eb, label %bb.ec, !prof !192

bb.eb:                                            ; preds = %bb.ea
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.pc, i8 noundef zeroext 27)
  br label %emit_op.exit579

bb.ec:                                            ; preds = %bb.ea
  %i.pk = load ptr, ptr %i.pc, align 8, !tbaa !467
  %i.pl = add i64 %i.pe, 1
  store i64 %i.pl, ptr %i.pd, align 8, !tbaa !466
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pe
  store i8 27, ptr %i.pm, align 1, !tbaa !218
  br label %emit_op.exit579

emit_op.exit579:                                  ; preds = %bb.ec, %bb.eb, %emit_u8.exit578
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %i.hg)
  store i32 0, ptr %i.b, align 4, !tbaa !191
  br label %.backedge.outer, !llvm.loop !2057

bb.ed:                                            ; preds = %.backedge
  store ptr %.ph839, ptr %i.d, align 8
  %.not456 = icmp eq ptr %.ph839, null
  br i1 %.not456, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.pn = call fastcc i32 @js_parse_class_default_ctor(ptr noundef %0, i1 noundef zeroext %i.bf, ptr noundef %i.d)
  %.not457 = icmp eq i32 %i.pn, 0
  br i1 %.not457, label %._crit_edge667, label %.thread591

._crit_edge667:                                   ; preds = %bb.ee
  %.pre668 = load ptr, ptr %i.d, align 8, !tbaa !918
  br label %bb.ef

bb.ef:                                            ; preds = %._crit_edge667, %bb.ed
  %i.po = phi ptr [ %.pre668, %._crit_edge667 ], [ %.ph839, %bb.ed ] ; 3 uses
  %i.pp = load ptr, ptr %i.cj, align 8, !tbaa !731
  %sext = shl i64 %i.cl, 32
  %i.pq = ashr exact i64 %sext, 32
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !861
  store i32 %i.pt, ptr %i.pr, align 1
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 504 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !883
  %i.pw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.px, ptr noundef %i.pv)
  %i.py = load ptr, ptr %i.fo, align 8, !tbaa !655
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.l to i64
  %i.qb = sub i64 %i.pz, %i.qa                    ; 2 uses
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.po, i64 512
  store i32 %i.qc, ptr %i.qd, align 8, !tbaa !903
  %sext458 = shl i64 %i.qb, 32
  %i.qe = ashr exact i64 %sext458, 32
  %i.qf = call ptr @js_strndup(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.qe) ; 2 uses
  store ptr %i.qf, ptr %i.pu, align 8, !tbaa !883
  %.not459 = icmp eq ptr %i.qf, null
  br i1 %.not459, label %.thread591, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qg = call fastcc i32 @next_token(ptr noundef %0)
  %.not460 = icmp eq i32 %i.qg, 0
  br i1 %.not460, label %bb.eh, label %.thread591

bb.eh:                                            ; preds = %bb.eg
  %i.qh = load i8, ptr %i.fi, align 4, !tbaa !2059, !range !234, !noundef !235
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %.val509 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val509, i8 noundef zeroext 17)
  %.val508 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val508, i8 noundef zeroext 7)
  %.val507 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val507, i8 noundef zeroext 27)
  %.val506 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val506, i8 noundef zeroext 46)
  %i.qj = load ptr, ptr %3, align 16, !tbaa !923  ; 2 uses
  %.not461 = icmp eq ptr %i.qj, null
  br i1 %.not461, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.qk = call fastcc i32 @emit_class_init_start(ptr noundef %0, ptr noundef %3)
  %.not462 = icmp eq i32 %i.qk, 0
  br i1 %.not462, label %._crit_edge669, label %.thread591

._crit_edge669:                                   ; preds = %bb.ej
  %.pre670 = load ptr, ptr %3, align 16, !tbaa !923
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge669, %bb.ei
  %i.ql = phi ptr [ %.pre670, %._crit_edge669 ], [ %i.qj, %bb.ei ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 288
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !731
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qp = load i32, ptr %i.qo, align 16, !tbaa !925
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds i8, ptr %i.qn, i64 %i.qq
  store i8 10, ptr %i.qr, align 1, !tbaa !218
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.eh
  %i.qs = call fastcc i32 @define_var(ptr noundef %0, ptr noundef nonnull %i.i, i32 noundef 127, i32 noundef 2)
  %i.qt = icmp slt i32 %i.qs, 0
  br i1 %i.qt, label %.thread591, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qu = load ptr, ptr %3, align 16, !tbaa !923  ; 2 uses
  %.not463 = icmp eq ptr %i.qu, null
  br i1 %.not463, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call fastcc void @emit_class_init_end(ptr noundef %0, ptr nonnull %i.qu)
  br label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %.val505 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val505, i8 noundef zeroext 6)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.val504 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val504, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef 127)
  %i.qv = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 160
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !717
  %i.qy = trunc i32 %i.qx to i16
  call fastcc void @emit_u16(ptr %i.qv, i16 noundef zeroext %i.qy)
  %.val503 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val503, i8 noundef zeroext 14)
  %i.qz = load i8, ptr %i.fm, align 4, !tbaa !2059, !range !234, !noundef !235
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %.val502 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val502, i8 noundef zeroext 17)
  %.val501 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val501, i8 noundef zeroext 17)
  %.val500 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val500, i8 noundef zeroext 46)
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.rb = load ptr, ptr %i.fk, align 8, !tbaa !923 ; 2 uses
  %.not464 = icmp eq ptr %i.rb, null
  br i1 %.not464, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.val499 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val499, i8 noundef zeroext 17)
  call fastcc void @emit_class_init_end(ptr noundef %0, ptr nonnull %i.rb)
  %.val498 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val498, i8 noundef zeroext 36)
  %.val546 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u16(ptr %.val546, i16 noundef zeroext 0)
  %.val497 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val497, i8 noundef zeroext 14)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %i.bt, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %.val496 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val496, i8 noundef zeroext 17)
  %.val495 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val495, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %.0424)
  %i.rc = load i32, ptr %i.fr, align 8, !tbaa !717
  %i.rd = trunc i32 %i.rc to i16
  %.val545 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u16(ptr %.val545, i16 noundef zeroext %i.rd)
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  call fastcc void @pop_scope(ptr noundef %0)
  call fastcc void @pop_scope(ptr noundef %0)
  br i1 %.not454, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.re = call fastcc i32 @define_var(ptr noundef %0, ptr noundef nonnull %i.i, i32 noundef %.1421, i32 noundef 1)
  %i.rf = icmp slt i32 %i.re, 0
  br i1 %i.rf, label %.thread591, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.val494 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val494, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %.1421)
  %i.rg = load i32, ptr %i.fr, align 8, !tbaa !717
  %i.rh = trunc i32 %i.rg to i16
  %.val544 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u16(ptr %.val544, i16 noundef zeroext %i.rh)
  br label %bb.fa

bb.ey:                                            ; preds = %bb.ev
  br i1 %4, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %.val = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val, i8 noundef zeroext -55)
  %i.ri = load i32, ptr %i.ff, align 8, !tbaa !730
  %reass.sub745 = sub i32 %i.ri, %i.fg
  %i.rj = add i32 %reass.sub745, 1
  %.val560 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u32(ptr %.val560, i32 noundef %i.rj)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez, %bb.ex
  %.not466 = icmp eq i32 %2, 0
  br i1 %.not466, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rk = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !714
  %i.rm = icmp eq i32 %2, 1
  %i.rn = select i1 %i.rm, i32 %.1421, i32 22
  %i.ro = load ptr, ptr %0, align 8, !tbaa !552
  %i.rp = call fastcc noundef ptr @add_export_entry2(ptr noundef %i.ro, ptr noundef nonnull readonly %0, ptr noundef %i.rl, i32 noundef %.1421, i32 noundef %i.rn, i32 noundef 0)
  %.not467 = icmp eq ptr %i.rp, null
  br i1 %.not467, label %.thread591, label %bb.fc

.thread591:                                       ; preds = %bb.am, %bb.aj, %bb.ah, %bb.cy, %bb.df, %bb.cx, %bb.cm, %bb.ck, %bb.ch, %bb.ds, %bb.dn, %emit_op.exit576.thread602, %emit_u8.exit577, %bb.el, %bb.ej, %bb.co, %bb.ce, %emit_u8.exit577.thread627, %emit_u8.exit577.thread614, %.thread593, %bb.fb, %bb.ew, %bb.eg, %bb.ef, %bb.ee, %bb.r, %bb.q, %bb.m, %bb.l, %JS_DupAtom.exit, %bb.a, %.loopexit, %bb.dk, %bb.av, %bb.h, %bb.d
  %i.rq = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %JS_DupAtom.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.ee ], [ %i.hg, %emit_u8.exit577.thread614 ], [ 0, %.thread593 ], [ 0, %bb.co ], [ %i.hg, %bb.av ], [ %i.hg, %.loopexit ], [ %i.hg, %emit_u8.exit577 ], [ %i.hg, %emit_u8.exit577.thread627 ], [ %i.hg, %bb.ce ], [ 0, %bb.el ], [ 64, %bb.dk ], [ 0, %bb.h ], [ 0, %bb.eg ], [ 0, %bb.ew ], [ 0, %bb.fb ], [ 0, %bb.ej ], [ 0, %bb.ef ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.aj ], [ %i.hg, %bb.dn ], [ %i.hg, %bb.ds ], [ %.pre672.pre, %emit_op.exit576.thread602 ], [ %i.hg, %bb.ch ], [ %i.hg, %bb.ck ], [ 0, %bb.cm ], [ %i.hg, %bb.cx ], [ %i.hg, %bb.df ], [ %i.hg, %bb.cy ]
  %.1425 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.ac, %JS_DupAtom.exit ], [ %.0424, %bb.l ], [ %.0424, %bb.m ], [ %.0424, %bb.q ], [ %.0424, %bb.r ], [ %.0424, %bb.ee ], [ %.0424, %emit_u8.exit577.thread614 ], [ %.0424, %.thread593 ], [ %.0424, %bb.co ], [ %.0424, %bb.av ], [ %.0424, %.loopexit ], [ %.0424, %emit_u8.exit577 ], [ %.0424, %emit_u8.exit577.thread627 ], [ %.0424, %bb.ce ], [ %.0424, %bb.el ], [ %.0424, %bb.dk ], [ 0, %bb.h ], [ %.0424, %bb.eg ], [ %.0424, %bb.ew ], [ %.0424, %bb.fb ], [ %.0424, %bb.ej ], [ %.0424, %bb.ef ], [ %.0424, %emit_op.exit576.thread602 ], [ %.0424, %bb.dn ], [ %.0424, %bb.ds ], [ %.0424, %bb.ch ], [ %.0424, %bb.ck ], [ %.0424, %bb.cm ], [ %.0424, %bb.cx ], [ %.0424, %bb.df ], [ %.0424, %bb.cy ], [ %.0424, %bb.ah ], [ %.0424, %bb.aj ], [ %.0424, %bb.am ]
  %.2422 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %JS_DupAtom.exit ], [ %.1421, %bb.l ], [ %.1421, %bb.m ], [ %.1421, %bb.q ], [ %.1421, %bb.r ], [ %.1421, %bb.ee ], [ %.1421, %emit_u8.exit577.thread614 ], [ %.1421, %.thread593 ], [ %.1421, %bb.co ], [ %.1421, %bb.av ], [ %.1421, %.loopexit ], [ %.1421, %emit_u8.exit577 ], [ %.1421, %emit_u8.exit577.thread627 ], [ %.1421, %bb.ce ], [ %.1421, %bb.el ], [ %.1421, %bb.dk ], [ 0, %bb.h ], [ %.1421, %bb.eg ], [ %.1421, %bb.ew ], [ %.1421, %bb.fb ], [ %.1421, %bb.ej ], [ %.1421, %bb.ef ], [ %.1421, %emit_op.exit576.thread602 ], [ %.1421, %bb.dn ], [ %.1421, %bb.ds ], [ %.1421, %bb.ch ], [ %.1421, %bb.ck ], [ %.1421, %bb.cm ], [ %.1421, %bb.cx ], [ %.1421, %bb.df ], [ %.1421, %bb.cy ], [ %.1421, %bb.ah ], [ %.1421, %bb.aj ], [ %.1421, %bb.am ]
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %i.rq)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb, %.thread591
  %.1425.sink = phi i32 [ %.1425, %.thread591 ], [ %.0424, %bb.fb ], [ %.0424, %bb.fa ]
  %.2422.sink = phi i32 [ %.2422, %.thread591 ], [ %.1421, %bb.fb ], [ %.1421, %bb.fa ]
  %.0 = phi i32 [ -1, %.thread591 ], [ 0, %bb.fb ], [ 0, %bb.fa ]
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %.1425.sink)
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %.2422.sink)
  %i.rr = and i64 %i.n, 549755813888
  %.pn.in = load i64, ptr %i.m, align 4
  %.pn = and i64 %.pn.in, -549755813889
  %storemerge = or disjoint i64 %.pn, %i.rr
  store i64 %storemerge, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_source_loc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !558  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !554  ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 160
  %.val = load ptr, ptr %i.e, align 8, !tbaa !553 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 304 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !465
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 8 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !466  ; 3 uses
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.f, i8 noundef zeroext -53)
  br label %dbuf_putc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !467
  %i.m = add i64 %i.j, 1
  store i64 %i.m, ptr %i.i, align 8, !tbaa !466
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 -53, ptr %i.n, align 1, !tbaa !218
  br label %dbuf_putc.exit.i

dbuf_putc.exit.i:                                 ; preds = %bb.c, %bb.b
  %i.o = load i64, ptr %i.g, align 8, !tbaa !465
  %i.p = load i64, ptr %i.i, align 8, !tbaa !466  ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !192

bb.d:                                             ; preds = %dbuf_putc.exit.i
  %i.s = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.f, i32 noundef %i.b) ; 0 uses
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !466
  br label %dbuf_put_u32.exit.i

bb.e:                                             ; preds = %dbuf_putc.exit.i
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !467
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p
  store i32 %i.b, ptr %i.u, align 1
  %i.v = load i64, ptr %i.i, align 8, !tbaa !466
  %i.w = add i64 %i.v, 4                          ; 2 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !466
  br label %dbuf_put_u32.exit.i

dbuf_put_u32.exit.i:                              ; preds = %bb.e, %bb.d
  %i.x = phi i64 [ %.pre.i, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %i.y = load i64, ptr %i.g, align 8, !tbaa !465
  %i.z = sub i64 %i.y, %i.x
  %i.aa = icmp ult i64 %i.z, 4
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !192

bb.f:                                             ; preds = %dbuf_put_u32.exit.i
  %i.ab = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.f, i32 noundef %i.d) ; 0 uses
  br label %emit_source_loc_at.exit

bb.g:                                             ; preds = %dbuf_put_u32.exit.i
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !467
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  store i32 %i.d, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !466
  %i.af = add i64 %i.ae, 4
  store i64 %i.af, ptr %i.i, align 8, !tbaa !466
  br label %emit_source_loc_at.exit

emit_source_loc_at.exit:                          ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @optional_chain_test(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !553  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 356 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !913  ; 3 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !191
  %.not15.i.i = icmp slt i32 %i.h, %i.i
  br i1 %.not15.i.i, label %new_label_fd.exit.i, label %js_resize_array.exit.i.i, !prof !324

js_resize_array.exit.i.i:                         ; preds = %bb.b
  %i.j = add nsw i32 %i.h, 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !859
  %i.l = tail call fastcc i32 @js_realloc_array(ptr noundef %i.k, ptr noundef nonnull %i.e, i32 noundef 24, ptr noundef nonnull %i.f, i32 noundef %i.j), !inline_history !90
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i, label %new_label_fd.exit.thread.i

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i: ; preds = %js_resize_array.exit.i.i
  %.pre.i.i = load i32, ptr %i.g, align 4, !tbaa !913
  br label %new_label_fd.exit.i

new_label_fd.exit.i:                              ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i, %bb.b
  %i.m = phi i32 [ %.pre.i.i, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i ], [ %i.h, %bb.b ] ; 5 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !913
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !733
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [24 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.q, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !914
  %i.s = icmp slt i32 %i.m, 0
  br i1 %i.s, label %new_label_fd.exit.thread.i, label %new_label.exit, !prof !542

new_label_fd.exit.thread.i:                       ; preds = %new_label_fd.exit.i, %js_resize_array.exit.i.i
  %.0.i5.i = phi i32 [ %i.m, %new_label_fd.exit.i ], [ -1, %js_resize_array.exit.i.i ]
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !553
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  store i8 1, ptr %i.u, align 8, !tbaa !470
  br label %new_label.exit

new_label.exit:                                   ; preds = %new_label_fd.exit.i, %new_label_fd.exit.thread.i
  %.0.i4.i = phi i32 [ %.0.i5.i, %new_label_fd.exit.thread.i ], [ %i.m, %new_label_fd.exit.i ]
  store i32 %.0.i4.i, ptr %1, align 4, !tbaa !191
  br label %bb.c

bb.c:                                             ; preds = %new_label.exit, %bb.a
  %i.v = getelementptr i8, ptr %0, i64 160        ; 7 uses
  %.val16 = load ptr, ptr %i.v, align 8, !tbaa !553 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val16, i64 288 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val16, i64 296 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !466  ; 4 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %.val16, i64 336
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !730
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16, i64 304
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !465
  %i.ad = icmp eq i64 %i.ac, %i.y
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.w, i8 noundef zeroext 17)
  br label %emit_op.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !467
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.x, align 8, !tbaa !466
end_hunk_10
begin_hunk_11_@js_parse_assign_expr2:bb.a
  store i8 1, ptr %i.hq, align 8, !tbaa !470
  br label %new_label.exit.i

new_label.exit.i:                                 ; preds = %new_label_fd.exit.thread.i.i, %new_label_fd.exit.i.i
  %.0.i4.i.i = phi i32 [ %.0.i5.i.i, %new_label_fd.exit.thread.i.i ], [ %i.hi, %new_label_fd.exit.i.i ] ; 5 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bu, %new_label.exit.i
  %i.hr = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !2064
  %.not15.i330 = icmp eq i32 %i.hr, 0
  br i1 %.not15.i330, label %bb.bn, label %.thread

bb.bn:                                            ; preds = %bb.bm
  %.val19.i = load ptr, ptr %i.gy, align 8, !tbaa !553 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val19.i, i64 288 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val19.i, i64 296 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !466 ; 4 uses
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %.val19.i, i64 336
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !730
  %i.hx = getelementptr inbounds nuw i8, ptr %.val19.i, i64 304
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !465
  %i.hz = icmp eq i64 %i.hy, %i.hu
  br i1 %i.hz, label %bb.bo, label %bb.bp, !prof !192

bb.bo:                                            ; preds = %bb.bn
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.hs, i8 noundef zeroext 17)
  br label %emit_op.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.ia = load ptr, ptr %i.hs, align 8, !tbaa !467
  %i.ib = add i64 %i.hu, 1
  store i64 %i.ib, ptr %i.ht, align 8, !tbaa !466
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hu
  store i8 17, ptr %i.ic, align 1, !tbaa !218
  br label %emit_op.exit.i

emit_op.exit.i:                                   ; preds = %bb.bp, %bb.bo
  %.val18.i = load ptr, ptr %i.gy, align 8, !tbaa !553 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val18.i, i64 288 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val18.i, i64 296 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !466 ; 4 uses
  %i.ig = trunc i64 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %.val18.i, i64 336
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !730
  %i.ii = getelementptr inbounds nuw i8, ptr %.val18.i, i64 304
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !465
  %i.ik = icmp eq i64 %i.ij, %i.if
  br i1 %i.ik, label %bb.bq, label %bb.br, !prof !192

bb.bq:                                            ; preds = %emit_op.exit.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.id, i8 noundef zeroext -81)
  br label %emit_op.exit20.i

bb.br:                                            ; preds = %emit_op.exit.i
  %i.il = load ptr, ptr %i.id, align 8, !tbaa !467
  %i.im = add i64 %i.if, 1
  store i64 %i.im, ptr %i.ie, align 8, !tbaa !466
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.if
  store i8 -81, ptr %i.in, align 1, !tbaa !218
  br label %emit_op.exit20.i

emit_op.exit20.i:                                 ; preds = %bb.br, %bb.bq
  %i.io = tail call fastcc i32 @emit_goto(ptr noundef nonnull %0, i32 noundef 104, i32 noundef %.0.i4.i.i), !inline_history !2064 ; 0 uses
  %.val.i = load ptr, ptr %i.gy, align 8, !tbaa !553 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i, i64 288 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i, i64 296 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !466 ; 4 uses
  %i.is = trunc i64 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %.val.i, i64 336
  store i32 %i.is, ptr %i.it, align 8, !tbaa !730
  %i.iu = getelementptr inbounds nuw i8, ptr %.val.i, i64 304
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !465
  %i.iw = icmp eq i64 %i.iv, %i.ir
  br i1 %i.iw, label %bb.bs, label %bb.bt, !prof !192

bb.bs:                                            ; preds = %emit_op.exit20.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.ip, i8 noundef zeroext 14)
  br label %emit_op.exit21.i

bb.bt:                                            ; preds = %emit_op.exit20.i
  %i.ix = load ptr, ptr %i.ip, align 8, !tbaa !467
  %i.iy = add i64 %i.ir, 1
  store i64 %i.iy, ptr %i.iq, align 8, !tbaa !466
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.ir
  store i8 14, ptr %i.iz, align 1, !tbaa !218
  br label %emit_op.exit21.i

emit_op.exit21.i:                                 ; preds = %bb.bt, %bb.bs
  %i.ja = tail call fastcc i32 @js_parse_expr_binary(ptr noundef nonnull %0, i32 noundef 8, i32 noundef range(i32 0, 18) %1), !inline_history !2064
  %.not16.i331 = icmp eq i32 %i.ja, 0
  br i1 %.not16.i331, label %bb.bu, label %.thread

bb.bu:                                            ; preds = %emit_op.exit21.i
  %i.jb = load i32, ptr %i.g, align 8, !tbaa !661 ; 2 uses
  %.not17.i332 = icmp eq i32 %i.jb, -90
  br i1 %.not17.i332, label %bb.bm, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jc = icmp sgt i32 %.0.i4.i.i, -1
  br i1 %i.jc, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i = load ptr, ptr %i.gy, align 8, !tbaa !553 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 288 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 296 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !466 ; 4 uses
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 336
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !730
  %i.ji = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 304
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !465
  %i.jk = icmp eq i64 %i.jj, %i.jf
  br i1 %i.jk, label %bb.bx, label %bb.by, !prof !192

bb.bx:                                            ; preds = %bb.bw
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.jd, i8 noundef zeroext -69)
  br label %emit_op.exit.i.i

bb.by:                                            ; preds = %bb.bw
  %i.jl = load ptr, ptr %i.jd, align 8, !tbaa !467
  %i.jm = add i64 %i.jf, 1
  store i64 %i.jm, ptr %i.je, align 8, !tbaa !466
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jf
  store i8 -69, ptr %i.jn, align 1, !tbaa !218
  br label %emit_op.exit.i.i

emit_op.exit.i.i:                                 ; preds = %bb.by, %bb.bx
  %.val9.i.i = load ptr, ptr %i.gy, align 8, !tbaa !553 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 288 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 304
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !465
  %i.jr = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 296 ; 3 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !466 ; 2 uses
  %i.jt = sub i64 %i.jq, %i.js
  %i.ju = icmp ult i64 %i.jt, 4
  br i1 %i.ju, label %bb.bz, label %bb.ca, !prof !192

bb.bz:                                            ; preds = %emit_op.exit.i.i
  %i.jv = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.jo, i32 noundef %.0.i4.i.i), !inline_history !2064 ; 0 uses
  br label %emit_u32.exit.i.i

bb.ca:                                            ; preds = %emit_op.exit.i.i
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !467
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.js
  store i32 %.0.i4.i.i, ptr %i.jx, align 1
  %i.jy = load i64, ptr %i.jr, align 8, !tbaa !466
  %i.jz = add i64 %i.jy, 4
  store i64 %i.jz, ptr %i.jr, align 8, !tbaa !466
  br label %emit_u32.exit.i.i

emit_u32.exit.i.i:                                ; preds = %bb.ca, %bb.bz
  %i.ka = load ptr, ptr %i.gy, align 8, !tbaa !553 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 296
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !732
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 344
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !733
  %i.kg = zext nneg i32 %.0.i4.i.i to i64
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 %i.kd, ptr %i.ki, align 4, !tbaa !736
  %.pr349 = load i32, ptr %i.g, align 8, !tbaa !661
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bk, %emit_u32.exit.i.i, %bb.bv
  %i.kj = phi i32 [ %i.gw, %bb.bk ], [ %.pr349, %emit_u32.exit.i.i ], [ %i.jb, %bb.bv ] ; 2 uses
  %i.kk = icmp eq i32 %i.kj, 63
  br i1 %i.kk, label %bb.cc, label %js_parse_cond_expr.exit

bb.cc:                                            ; preds = %bb.cb
  %i.kl = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !2066
  %.not14.i = icmp eq i32 %i.kl, 0
  br i1 %.not14.i, label %bb.cd, label %.thread

bb.cd:                                            ; preds = %bb.cc
  %i.km = tail call fastcc i32 @emit_goto(ptr noundef nonnull %0, i32 noundef 104, i32 noundef -1), !inline_history !2066
  %i.kn = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !2067
  %.not15.i = icmp eq i32 %i.kn, 0
  br i1 %.not15.i, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %bb.cd
  %i.ko = tail call fastcc i32 @js_parse_expect(ptr noundef nonnull %0, i32 noundef 58), !inline_history !2066
  %.not16.i = icmp eq i32 %i.ko, 0
  br i1 %.not16.i, label %bb.cf, label %.thread

bb.cf:                                            ; preds = %bb.ce
  %i.kp = tail call fastcc i32 @emit_goto(ptr noundef nonnull %0, i32 noundef 106, i32 noundef -1), !inline_history !2066
  tail call fastcc void @emit_label(ptr noundef nonnull %0, i32 noundef %i.km)
  %i.kq = and i32 %1, 1
  %i.kr = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef %i.kq), !inline_history !2066
  %.not17.i = icmp eq i32 %i.kr, 0
  br i1 %.not17.i, label %bb.cg, label %.thread

bb.cg:                                            ; preds = %bb.cf
  tail call fastcc void @emit_label(ptr noundef nonnull %0, i32 noundef %i.kp)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !661
  br label %js_parse_cond_expr.exit

js_parse_cond_expr.exit:                          ; preds = %bb.cg, %bb.cb
  %i.ks = phi i32 [ %.pre, %bb.cg ], [ %i.kj, %bb.cb ] ; 9 uses
  %i.kt = icmp eq i32 %i.ks, 61                   ; 3 uses
  %i.ku = add i32 %i.ks, 123
  %or.cond4 = icmp ult i32 %i.ku, 12
  %or.cond = or i1 %i.kt, %or.cond4
  br i1 %or.cond, label %bb.ch, label %bb.cs

bb.ch:                                            ; preds = %js_parse_cond_expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  %i.kv = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not246 = icmp eq i32 %i.kv, 0
  br i1 %.not246, label %bb.ci, label %.thread359

bb.ci:                                            ; preds = %bb.ch
  %2 = icmp ne i32 %i.ks, 61
  %i.kw = call fastcc i32 @get_lvalue(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef null, i1 noundef zeroext %2, i32 noundef %i.ks)
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %.thread359, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ky = load i32, ptr %i.a, align 4             ; 3 uses
  %i.kz = icmp eq i32 %i.ky, 70
  %or.cond6 = select i1 %i.kt, i1 %i.kz, i1 false
  br i1 %or.cond6, label %bb.ck, label %.thread352

bb.ck:                                            ; preds = %bb.cj
  %i.la = getelementptr i8, ptr %0, i64 160       ; 10 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !553 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 336 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !730
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 296
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !732
  store i32 -1, ptr %i.lc, align 8, !tbaa !730
  tail call fastcc void @emit_op(ptr %i.lb, i8 noundef zeroext 27)
  %.val276 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val276, i8 noundef zeroext 17)
  %.val275 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val275, i8 noundef zeroext -81)
  %i.lg = tail call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef 105, i32 noundef -1)
  %.val274 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val274, i8 noundef zeroext 27)
  %.val273 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val273, i8 noundef zeroext 113)
  %.val272 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val272, i8 noundef zeroext 27)
  tail call fastcc void @emit_label(ptr noundef %0, i32 noundef %i.lg)
  %.val271 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val271, i8 noundef zeroext 27)
  %i.lh = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not247 = icmp eq i32 %i.lh, 0
  br i1 %.not247, label %.thread357, label %bb.cl

.thread352:                                       ; preds = %bb.cj
  %i.li = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not247353 = icmp eq i32 %i.li, 0
  br i1 %.not247353, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.thread352, %bb.ck
  %i.lj = load ptr, ptr %0, align 8, !tbaa !552
  %i.lk = load i32, ptr %i.c, align 4, !tbaa !191
  tail call void @JS_FreeAtom(ptr noundef %i.lj, i32 noundef %i.lk)
  br label %.thread359

.thread357:                                       ; preds = %bb.ck
  %.val270 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val270, i8 noundef zeroext 27)
  %.val269 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val269, i8 noundef zeroext 113)
  %.val268 = load ptr, ptr %i.la, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val268, i8 noundef zeroext 27)
  br label %bb.cr

bb.cm:                                            ; preds = %.thread352
  br i1 %i.kt, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  switch i32 %i.ky, label %bb.cr [
    i32 189, label %bb.co
    i32 59, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.ll = load i32, ptr %i.c, align 4, !tbaa !191
  %i.lm = icmp eq i32 %i.ll, %.0234
  br i1 %i.lm, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  tail call fastcc void @set_object_name(ptr noundef %0, i32 noundef %.0234)
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cm
  %i.ln = trunc nsw i32 %i.ks to i8
  %i.lo = add nuw nsw i8 %i.ln, 20
  %i.lp = getelementptr i8, ptr %0, i64 160
  %.val267 = load ptr, ptr %i.lp, align 8, !tbaa !553
  tail call fastcc void @emit_op(ptr %.val267, i8 noundef zeroext %i.lo)
  br label %bb.cr

.thread359:                                       ; preds = %bb.ch, %bb.cl, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  br label %.thread

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %.thread357
  %i.lq = load i32, ptr %i.b, align 4, !tbaa !191
  %i.lr = load i32, ptr %i.c, align 4, !tbaa !191
  %i.ls = load i32, ptr %i.d, align 4, !tbaa !191
  tail call fastcc void @put_lvalue(ptr noundef %0, i32 noundef %i.ky, i32 noundef %i.lq, i32 noundef %i.lr, i32 noundef %i.ls, i32 noundef 2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  br label %.thread

bb.cs:                                            ; preds = %js_parse_cond_expr.exit
  %i.lt = add i32 %i.ks, 111
  %or.cond12 = icmp ult i32 %i.lt, 3
  br i1 %or.cond12, label %bb.ct, label %.thread

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #49
  %i.lu = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not243 = icmp eq i32 %i.lu, 0
  br i1 %.not243, label %bb.cu, label %.thread364

bb.cu:                                            ; preds = %bb.ct
  %i.lv = call fastcc i32 @get_lvalue(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.f, i1 noundef zeroext true, i32 noundef %i.ks)
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %.thread364, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lx = getelementptr i8, ptr %0, i64 160       ; 5 uses
  %.val266 = load ptr, ptr %i.lx, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val266, i8 noundef zeroext 17)
  %i.ly = icmp eq i32 %i.ks, -109
  br i1 %i.ly, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %.val265 = load ptr, ptr %i.lx, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val265, i8 noundef zeroext -81)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.lz = icmp eq i32 %i.ks, -110
  %i.ma = select i1 %i.lz, i32 105, i32 104
  %i.mb = call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef %i.ma, i32 noundef -1)
  %.val264 = load ptr, ptr %i.lx, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val264, i8 noundef zeroext 14)
  %i.mc = call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not244 = icmp eq i32 %i.mc, 0
  br i1 %.not244, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.md = load ptr, ptr %0, align 8, !tbaa !552
  %i.me = load i32, ptr %i.c, align 4, !tbaa !191
  call void @JS_FreeAtom(ptr noundef %i.md, i32 noundef %i.me)
  br label %.thread364

bb.cz:                                            ; preds = %bb.cx
  %i.mf = load i32, ptr %i.a, align 4, !tbaa !191 ; 2 uses
  switch i32 %i.mf, label %bb.dc [
    i32 189, label %bb.da
    i32 59, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz
  %i.mg = load i32, ptr %i.c, align 4, !tbaa !191
  %i.mh = icmp eq i32 %i.mg, %.0234
  br i1 %i.mh, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call fastcc void @set_object_name(ptr noundef %0, i32 noundef %.0234)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db, %bb.da
  %i.mi = load i32, ptr %i.f, align 4, !tbaa !191 ; 4 uses
  %i.mj = icmp ult i32 %i.mi, 4
  br i1 %i.mj, label %switch.lookup, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @abort() #50
  unreachable

switch.lookup:                                    ; preds = %bb.dc
  %switch.shiftamt = shl nuw nsw i32 %i.mi, 3
  %switch.downshift = lshr i32 387323153, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.val260 = load ptr, ptr %i.lx, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val260, i8 noundef zeroext %switch.masked)
  %i.mk = load i32, ptr %i.b, align 4, !tbaa !191
  %i.ml = load i32, ptr %i.c, align 4, !tbaa !191
  %i.mm = load i32, ptr %i.e, align 4, !tbaa !191
  call fastcc void @put_lvalue(ptr noundef %0, i32 noundef %i.mf, i32 noundef %i.mk, i32 noundef %i.ml, i32 noundef %i.mm, i32 noundef 1, i1 noundef zeroext false)
  %i.mn = call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef 106, i32 noundef -1)
  call fastcc void @emit_label(ptr noundef %0, i32 noundef %i.mb)
  %.not245368 = icmp eq i32 %i.mi, 0
  br i1 %.not245368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup, %emit_op.exit327
  %i.mo = phi i32 [ %i.na, %emit_op.exit327 ], [ %i.mi, %switch.lookup ]
  %.val = load ptr, ptr %i.lx, align 8, !tbaa !553 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !466 ; 4 uses
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i32 %i.ms, ptr %i.mt, align 8, !tbaa !730
  %i.mu = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !465
  %i.mw = icmp eq i64 %i.mv, %i.mr
  br i1 %i.mw, label %bb.de, label %bb.df, !prof !192

bb.de:                                            ; preds = %.lr.ph
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.mp, i8 noundef zeroext 15)
  br label %emit_op.exit327

bb.df:                                            ; preds = %.lr.ph
  %i.mx = load ptr, ptr %i.mp, align 8, !tbaa !467
end_hunk_11
