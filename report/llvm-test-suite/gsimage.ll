Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gsimage?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@image_unpack_1_spread:bb.a
  %i.h = lshr i32 %i.g, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @map_4_to_16, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !61   ; 2 uses
  %i.l = lshr i16 %i.k, 8
  %i.m = trunc nuw i16 %i.l to i8
  store i8 %i.m, ptr %.026, align 1, !tbaa !59
  %i.n = getelementptr inbounds i8, ptr %.026, i64 %i.c ; 2 uses
  %i.o = trunc i16 %i.k to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !59
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.c ; 2 uses
  %i.q = and i32 %i.g, 15
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @map_4_to_16, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !61   ; 2 uses
  %i.u = lshr i16 %i.t, 8
  %i.v = trunc nuw i16 %i.u to i8
  store i8 %i.v, ptr %i.p, align 1, !tbaa !59
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.c ; 2 uses
  %i.x = trunc i16 %i.t to i8
  store i8 %i.x, ptr %i.w, align 1, !tbaa !59
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @image_unpack_3_spread(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #4 {
bb.a:
  %.not8 = icmp eq i32 %3, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = sext i32 %i.b to i64                     ; 9 uses
  %xtraiter = and i32 %3, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.011.prol = phi i32 [ %i.d, %.prol.preheader ], [ %3, %.lr.ph ]
  %.0610.prol = phi ptr [ %i.g, %.prol.preheader ], [ %1, %.lr.ph ] ; 2 uses
  %.079.prol = phi ptr [ %i.e, %.prol.preheader ], [ %2, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.d = add nsw i32 %.011.prol, -1               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.079.prol, i64 1 ; 2 uses
  %i.f = load i8, ptr %.079.prol, align 1, !tbaa !59
  store i8 %i.f, ptr %.0610.prol, align 1, !tbaa !59
  %i.g = getelementptr inbounds i8, ptr %.0610.prol, i64 %i.c ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !92

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.011.unr = phi i32 [ %3, %.lr.ph ], [ %i.d, %.prol.preheader ]
  %.0610.unr = phi ptr [ %1, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.079.unr = phi ptr [ %2, %.lr.ph ], [ %i.e, %.prol.preheader ]
  %i.h = icmp ult i32 %3, 8
  br i1 %i.h, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.011 = phi i32 [ %i.ad, %.lr.ph.new ], [ %.011.unr, %.prol.loopexit ]
  %.0610 = phi ptr [ %i.ag, %.lr.ph.new ], [ %.0610.unr, %.prol.loopexit ] ; 2 uses
  %.079 = phi ptr [ %i.ae, %.lr.ph.new ], [ %.079.unr, %.prol.loopexit ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.079, i64 1
  %i.j = load i8, ptr %.079, align 1, !tbaa !59
  store i8 %i.j, ptr %.0610, align 1, !tbaa !59
  %i.k = getelementptr inbounds i8, ptr %.0610, i64 %i.c ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.079, i64 2
  %i.m = load i8, ptr %i.i, align 1, !tbaa !59
  store i8 %i.m, ptr %i.k, align 1, !tbaa !59
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.079, i64 3
  %i.p = load i8, ptr %i.l, align 1, !tbaa !59
  store i8 %i.p, ptr %i.n, align 1, !tbaa !59
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.c ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.079, i64 4
  %i.s = load i8, ptr %i.o, align 1, !tbaa !59
  store i8 %i.s, ptr %i.q, align 1, !tbaa !59
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.c ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.079, i64 5
  %i.v = load i8, ptr %i.r, align 1, !tbaa !59
  store i8 %i.v, ptr %i.t, align 1, !tbaa !59
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.c ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.079, i64 6
  %i.y = load i8, ptr %i.u, align 1, !tbaa !59
  store i8 %i.y, ptr %i.w, align 1, !tbaa !59
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.c ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.079, i64 7
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !59
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !59
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 2 uses
  %i.ad = add nsw i32 %.011, -8                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.079, i64 8
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !59
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !59
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.c
  %.not.7 = icmp eq i32 %i.ad, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !93

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @image_render_skip(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 noundef returned %3) #6 {
bb.a:
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @image_render_color(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i32 noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.gs_color_s, align 4         ; 10 uses
  %5 = alloca %struct.gx_device_color_s, align 8  ; 7 uses
  %6 = alloca %struct.gx_device_color_s, align 8  ; 6 uses
  %7 = alloca %struct.gx_path_s, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31   ; 2 uses
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.u = sub nsw i32 0, %i.r
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !59
  %i.y = xor i8 %i.x, -1
  store i8 %i.y, ptr %i.t, align 1, !tbaa !59
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.z = add i64 %i.p, 2048                       ; 2 uses
  %i.aa = lshr i64 %i.z, 12
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = add i64 %i.z, %i.j
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = trunc i64 %i.ad to i32
  %i.af = sub nsw i32 %i.ae, %i.ab                ; 2 uses
  %.0143 = tail call i32 @llvm.smin.i32(i32 %i.af, i32 0)
  %.0141 = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0145 = phi i32 [ undef, %bb.a ], [ %i.ab, %bb.b ]
  %.1144 = phi i32 [ undef, %bb.a ], [ %.0143, %bb.b ]
  %.1142 = phi i32 [ undef, %bb.a ], [ %.0141, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i16 0, ptr %i.ag, align 4, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.ah, align 2, !tbaa !97
  store i16 0, ptr %4, align 4, !tbaa !98
  %i.ai = call i32 (ptr, ...) @gx_color_from_rgb(ptr noundef nonnull %4) #9 ; 0 uses
  %i.aj = call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.b) #9 ; 0 uses
  %i.ak = icmp eq i32 %i.r, 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = add nsw i32 %.1144, %.0145
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread164
  %.sroa.049.0183 = phi i64 [ 0, %.lr.ph ], [ %.sroa.049.1, %.thread164 ] ; 2 uses
  %.0122182 = phi i64 [ %i.p, %.lr.ph ], [ %.3125, %.thread164 ] ; 4 uses
  %.0126181 = phi i64 [ %i.n, %.lr.ph ], [ %.3129, %.thread164 ] ; 5 uses
  %.0130180 = phi ptr [ %1, %.lr.ph ], [ %i.bo, %.thread164 ] ; 6 uses
  %.0132179 = phi i64 [ %i.n, %.lr.ph ], [ %i.ct, %.thread164 ] ; 6 uses
  %.0133178 = phi ptr [ %6, %.lr.ph ], [ %.3136, %.thread164 ] ; 6 uses
  %.0137177 = phi ptr [ %5, %.lr.ph ], [ %.3140, %.thread164 ] ; 7 uses
  %.0146176 = phi i64 [ %i.p, %.lr.ph ], [ %i.cu, %.thread164 ] ; 5 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %.0130180, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !59
  %i.au = xor i8 %i.at, -1                        ; 2 uses
  %i.av = zext i8 %i.au to i16
  %i.aw = load <2 x i8>, ptr %.0130180, align 1, !tbaa !59
  %i.ax = xor <2 x i8> %i.aw, splat (i8 -1)
  %i.ay = zext <2 x i8> %i.ax to <2 x i16>
  %8 = zext i8 %i.au to i16
  %i.az = insertelement <2 x i16> poison, i16 %8, i64 0
  %i.ba = shufflevector <2 x i16> %i.az, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bb = mul nuw <2 x i16> %i.ba, %i.ay
  %i.bc = udiv <2 x i16> %i.bb, splat (i16 255)
  %i.bd = trunc <2 x i16> %i.bc to <2 x i8>
  %i.be = getelementptr inbounds nuw i8, ptr %.0130180, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !59
  %i.bg = xor i8 %i.bf, -1
  %i.bh = zext i8 %i.bg to i16
  %.lhs.trunc173 = mul nuw i16 %i.bh, %i.av
  %i.bi = udiv i16 %.lhs.trunc173, 255
  %i.bj = trunc nuw i16 %i.bi to i8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bk = load <2 x i8>, ptr %.0130180, align 1, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %.0130180, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ 3, %bb.e ], [ 4, %bb.d ]
  %.sroa.13.0 = phi i8 [ %i.bm, %bb.e ], [ %i.bj, %bb.d ] ; 2 uses
  %i.bn = phi <2 x i8> [ %i.bk, %bb.e ], [ %i.bd, %bb.d ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0130180, i64 %.sink ; 4 uses
  %.sroa.13.0.insert.ext = zext i8 %.sroa.13.0 to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 16
  %i.bp = extractelement <2 x i8> %i.bn, i64 1
  %.sroa.9.0.insert.ext = zext i8 %i.bp to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 8
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, %.sroa.13.0.insert.shift
  %i.bq = extractelement <2 x i8> %i.bn, i64 0
  %.sroa.0.0.insert.ext = zext i8 %i.bq to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.0.0.insert.ext ; 5 uses
  %.not155 = icmp eq i64 %.sroa.0.0.insert.insert, %.sroa.049.0183
  br i1 %.not155, label %.thread164, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = zext <2 x i8> %i.bn to <2 x i16>
  %i.bs = mul nuw <2 x i16> %i.br, splat (i16 257)
  store <2 x i16> %i.bs, ptr %4, align 4, !tbaa !61
  %i.bt = zext i8 %.sroa.13.0 to i16
  %i.bu = mul nuw i16 %i.bt, 257
  store i16 %i.bu, ptr %i.ag, align 4, !tbaa !96
  %i.bv = call i32 (ptr, ...) @gx_color_from_rgb(ptr noundef nonnull %4) #9 ; 0 uses
  %i.bw = call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef nonnull %4, ptr noundef %.0133178, ptr noundef %i.b) #9 ; 0 uses
  %i.bx = load i64, ptr %5, align 8, !tbaa !48
  %i.by = load i64, ptr %6, align 8, !tbaa !48
  %.not156 = icmp eq i64 %i.bx, %i.by
  br i1 %.not156, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bz = load i32, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.ca = load i32, ptr %i.am, align 8, !tbaa !46
  %.not157 = icmp eq i32 %i.bz, %i.ca
  br i1 %.not157, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not158 = icmp eq i32 %i.bz, 0
  br i1 %.not158, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = load i64, ptr %i.an, align 8, !tbaa !99
  %i.cc = load i64, ptr %i.ao, align 8, !tbaa !99
  %.not159 = icmp ne i64 %i.cb, %i.cc
  %i.cd = icmp ugt ptr %i.bo, %i.t
  %or.cond = select i1 %.not159, i1 true, i1 %i.cd
  br i1 %or.cond, label %bb.l, label %.thread164

bb.k:                                             ; preds = %bb.i
  %.old = icmp ugt ptr %i.bo, %i.t
  br i1 %.old, label %bb.l, label %.thread164

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.ce = load i32, ptr %i.ap, align 8, !tbaa !53
  %.not160 = icmp eq i32 %i.ce, 0
  br i1 %.not160, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @gx_path_init(ptr noundef nonnull %7, ptr noundef nonnull %i.aq) #9
  %i.cf = add nsw i64 %.0132179, %i.h
  %i.cg = add nsw i64 %.0146176, %i.j
  %i.ch = call i32 @gx_path_add_pgram(ptr noundef nonnull %7, i64 noundef %.0126181, i64 noundef %.0122182, i64 noundef %.0132179, i64 noundef %.0146176, i64 noundef %i.cf, i64 noundef %i.cg) #9 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cj = add nsw i64 %.0126181, 2048
  %i.ck = lshr i64 %i.cj, 12
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = add nsw i64 %.0132179, 2048
  %i.cn = lshr i64 %i.cm, 12
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = sub nsw i32 %i.co, %i.cl                ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  %spec.select = select i1 %i.cq, i32 %i.co, i32 %i.cl
  %spec.select161 = call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = call i32 (i32, i32, i32, i32, ptr, ptr, ...) @gz_fill_rectangle(i32 noundef %spec.select, i32 noundef %i.ar, i32 noundef %spec.select161, i32 noundef %.1142, ptr noundef %.0137177, ptr noundef %i.b) #9 ; 0 uses
  br label %.thread164

bb.o:                                             ; preds = %bb.m
  %i.cs = call i32 (ptr, ptr, ptr, i32, i64, ...) @gx_fill_path(ptr noundef nonnull %7, ptr noundef %.0137177, ptr noundef nonnull %i.b, i32 noundef -1, i64 noundef 0) #9 ; 0 uses
  call void @gx_path_release(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.thread164

bb.p:                                             ; preds = %bb.m
  call void @gx_path_release(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.loopexit

.thread164:                                       ; preds = %bb.o, %bb.n, %bb.k, %bb.j, %bb.f
  %.3140 = phi ptr [ %.0137177, %bb.f ], [ %.0137177, %bb.j ], [ %.0137177, %bb.k ], [ %.0133178, %bb.n ], [ %.0133178, %bb.o ]
  %.3136 = phi ptr [ %.0133178, %bb.f ], [ %.0133178, %bb.j ], [ %.0133178, %bb.k ], [ %.0137177, %bb.n ], [ %.0137177, %bb.o ]
  %.3129 = phi i64 [ %.0126181, %bb.f ], [ %.0126181, %bb.j ], [ %.0126181, %bb.k ], [ %.0132179, %bb.n ], [ %.0132179, %bb.o ]
  %.3125 = phi i64 [ %.0122182, %bb.f ], [ %.0122182, %bb.j ], [ %.0122182, %bb.k ], [ %.0146176, %bb.n ], [ %.0146176, %bb.o ]
  %.sroa.049.1 = phi i64 [ %.sroa.049.0183, %bb.f ], [ %.sroa.0.0.insert.insert, %bb.j ], [ %.sroa.0.0.insert.insert, %bb.k ], [ %.sroa.0.0.insert.insert, %bb.n ], [ %.sroa.0.0.insert.insert, %bb.o ]
  %i.ct = add nsw i64 %.0132179, %i.d
  %i.cu = add nsw i64 %.0146176, %i.f
  %.not154 = icmp ugt ptr %i.bo, %i.t
  br i1 %.not154, label %.loopexit, label %bb.c, !llvm.loop !95

.loopexit:                                        ; preds = %.thread164, %bb.p
  %.6 = phi i32 [ %i.ch, %bb.p ], [ 1, %.thread164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @image_render_direct(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add nsw i64 %i.f, %i.d
  %i.h = lshr i64 %i.b, 12
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = lshr i64 %i.d, 12
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = lshr i64 %i.g, 12
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = sub nsw i32 %i.m, %i.k                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load i64, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8344
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.ab = icmp eq i32 %i.n, 1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = add i32 %2, 7
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = tail call i32 %i.w(ptr noundef nonnull %i.s, ptr noundef %1, i32 noundef 0, i32 noundef %i.ad, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %2, i32 noundef %3, i64 noundef %i.y, i64 noundef %i.aa) #9 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.af = icmp slt i32 %i.n, 0
  %spec.select = select i1 %i.af, i32 %i.m, i32 %i.k
  %spec.select45 = tail call i32 @llvm.abs.i32(i32 %i.n, i1 false)
  %.not = icmp eq i32 %i.m, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ag = add i32 %2, 7
  %i.ah = lshr i32 %i.ag, 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.046 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %bb.d ] ; 2 uses
  %i.ai = add nsw i32 %.046, %spec.select
  %i.aj = tail call i32 %i.w(ptr noundef nonnull %i.s, ptr noundef %1, i32 noundef 0, i32 noundef %i.ah, i32 noundef %i.i, i32 noundef %i.ai, i32 noundef %2, i32 noundef 1, i64 noundef %i.y, i64 noundef %i.aa) #9 ; 0 uses
  %i.ak = add nuw i32 %.046, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %spec.select45
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !100

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.043 = phi i32 [ %3, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @image_render_mono(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.gs_color_s, align 8         ; 8 uses
  %5 = alloca %struct.gx_path_s, align 8          ; 11 uses
  %6 = alloca %struct.gs_fixed_rect_s, align 8    ; 8 uses
end_hunk_0
