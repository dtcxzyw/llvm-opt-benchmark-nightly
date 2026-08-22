Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi_is_16_bit_from_memory:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  store ptr %3, ptr %2, align 8
  %i.j = call fastcc i32 @stbi__parse_png_file(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %.not1.i.i = icmp eq i32 %i.l, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__is_16_main.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load <2 x ptr>, ptr %i.n, align 8
  store <2 x ptr> %i.p, ptr %i.o, align 8
  br label %stbi__is_16_main.exit

stbi__is_16_main.exit:                            ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_is_16_bit_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 6 uses
  %3 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #52, !inline_history !15 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.f, align 8
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  store ptr %3, ptr %2, align 8
  %i.y = call fastcc i32 @stbi__parse_png_file(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__is_16_main.exit, label %bb.d

bb.d:                                             ; preds = %stbi__start_callbacks.exit
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.ae, ptr %i.ad, align 8
  br label %stbi__is_16_main.exit

stbi__is_16_main.exit:                            ; preds = %stbi__start_callbacks.exit, %bb.d
  %i.af = phi i32 [ 0, %bb.d ], [ 1, %stbi__start_callbacks.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @rl_load_dds_from_memory(ptr nofree noundef readonly captures(address_is_null) %0, i32 %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %.not146 = icmp eq i8 %i.a, 68
  br i1 %.not146, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %.not147 = icmp eq i8 %i.c, 68
  br i1 %.not147, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %.not148 = icmp eq i8 %i.e, 83
  br i1 %.not148, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.f, align 1
  %.not149 = icmp eq i8 %i.g, 32
  br i1 %.not149, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.2) #52
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %2, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  store i32 %i.l, ptr %3, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = and i32 %i.m, 3
  %.not150 = icmp eq i32 %i.n, 0
  br i1 %.not150, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.3) #52
  %.pre = load i32, ptr %3, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = phi i32 [ %.pre, %bb.h ], [ %i.l, %bb.g ]
  %i.p = and i32 %i.o, 3
  %.not151 = icmp eq i32 %i.p, 0
  br i1 %.not151, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.4) #52
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = load i32, ptr %i.i, align 4
  %i.r = load i32, ptr %i.k, align 4
  %i.s = mul i32 %i.r, %i.q                       ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.u = load i32, ptr %i.t, align 4
  %. = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1)
  store i32 %., ptr %5, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp eq i32 %i.w, 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4              ; 4 uses
  br i1 %i.x, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  switch i32 %i.z, label %.thread [
    i32 64, label %bb.m
    i32 65, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.aa = shl i32 %i.s, 1                         ; 3 uses
  %i.ab = load i32, ptr %i.t, align 4
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = sdiv i32 %i.aa, 3
  %i.ae = add nsw i32 %i.ad, %i.aa
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0136 = phi i32 [ %i.ae, %bb.n ], [ %i.aa, %bb.m ]
  %i.af = sext i32 %.0136 to i64                  ; 2 uses
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #53 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.h, i64 %i.af, i1 false)
  store i32 3, ptr %4, align 4
  br label %.thread

bb.p:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = load i32, ptr %i.ah, align 4
  switch i32 %i.ai, label %.thread [
    i32 32768, label %bb.q
    i32 61440, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.aj = shl i32 %i.s, 1                         ; 3 uses
  %i.ak = load i32, ptr %i.t, align 4
  %i.al = icmp ugt i32 %i.ak, 1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = sdiv i32 %i.aj, 3
  %i.an = add nsw i32 %i.am, %i.aj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0135 = phi i32 [ %i.an, %bb.r ], [ %i.aj, %bb.q ] ; 4 uses
  %i.ao = sext i32 %.0135 to i64                  ; 3 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #53 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.h, i64 %i.ao, i1 false)
  %i.aq = lshr i64 %i.ao, 1                       ; 6 uses
  %.not165 = icmp eq i64 %i.aq, 0
  br i1 %.not165, label %._crit_edge163, label %iter.check199

iter.check199:                                    ; preds = %bb.s
  %min.iters.check186 = icmp ult i32 %.0135, 8
  br i1 %min.iters.check186, label %.lr.ph162.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %iter.check199
  %min.iters.check188 = icmp ult i32 %.0135, 32
  br i1 %min.iters.check188, label %vec.epilog.ph203, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %n.vec190 = and i64 %i.aq, 9223372036854775792  ; 4 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next195, %vector.body191 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index192 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load193 = load <8 x i16>, ptr %i.ar, align 2 ; 2 uses
  %wide.load194 = load <8 x i16>, ptr %i.as, align 2 ; 2 uses
  %i.at = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load193, <8 x i16> %wide.load193, <8 x i16> splat (i16 1))
  %i.au = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load194, <8 x i16> %wide.load194, <8 x i16> splat (i16 1))
  store <8 x i16> %i.at, ptr %i.ar, align 2
  store <8 x i16> %i.au, ptr %i.as, align 2
  %index.next195 = add nuw i64 %index192, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.av, label %middle.block196, label %vector.body191, !llvm.loop !28

middle.block196:                                  ; preds = %vector.body191
  %cmp.n197 = icmp eq i64 %i.aq, %n.vec190
  br i1 %cmp.n197, label %._crit_edge163, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %i.aw = and i32 %.0135, 24
  %min.epilog.iters.check202 = icmp eq i32 %i.aw, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph162.preheader, label %vec.epilog.ph203, !prof !8

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec190, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check187 ]
  %n.vec204 = and i64 %i.aq, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph203
  %index206 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next208, %vec.epilog.vector.body205 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index206 ; 2 uses
  %wide.load207 = load <4 x i16>, ptr %i.ax, align 2 ; 2 uses
  %i.ay = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %wide.load207, <4 x i16> %wide.load207, <4 x i16> splat (i16 1))
  store <4 x i16> %i.ay, ptr %i.ax, align 2
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next208, %n.vec204
  br i1 %i.az, label %vec.epilog.middle.block209, label %vec.epilog.vector.body205, !llvm.loop !29

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body205
  %cmp.n210 = icmp eq i64 %i.aq, %n.vec204
  br i1 %cmp.n210, label %._crit_edge163, label %.lr.ph162.preheader

.lr.ph162.preheader:                              ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block209
  %indvars.iv170.ph = phi i64 [ 0, %iter.check199 ], [ %n.vec190, %vec.epilog.iter.check201 ], [ %n.vec204, %vec.epilog.middle.block209 ]
  br label %.lr.ph162

._crit_edge163:                                   ; preds = %.lr.ph162, %middle.block196, %vec.epilog.middle.block209, %bb.s
  store i32 5, ptr %4, align 4
  br label %.thread

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.lr.ph162
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph162 ], [ %indvars.iv170.ph, %.lr.ph162.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv170 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2            ; 2 uses
  %i.bc = tail call i16 @llvm.fshl.i16(i16 %i.bb, i16 %i.bb, i16 1)
  store i16 %i.bc, ptr %i.ba, align 2
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, %i.aq
  br i1 %exitcond173.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !30

bb.t:                                             ; preds = %bb.p
  %i.bd = shl i32 %i.s, 1                         ; 3 uses
  %i.be = load i32, ptr %i.t, align 4
  %i.bf = icmp ugt i32 %i.be, 1
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = sdiv i32 %i.bd, 3
  %i.bh = add nsw i32 %i.bg, %i.bd
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0133 = phi i32 [ %i.bh, %bb.u ], [ %i.bd, %bb.t ] ; 4 uses
  %i.bi = sext i32 %.0133 to i64                  ; 3 uses
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #53 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %i.h, i64 %i.bi, i1 false)
  %i.bk = lshr i64 %i.bi, 1                       ; 6 uses
  %.not164 = icmp eq i64 %i.bk, 0
  br i1 %.not164, label %._crit_edge159, label %iter.check

iter.check:                                       ; preds = %bb.v
  %min.iters.check = icmp ult i32 %.0133, 8
  br i1 %min.iters.check, label %.lr.ph158.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check179 = icmp ult i32 %.0133, 32
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bk, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %index ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bl, align 2 ; 2 uses
  %wide.load180 = load <8 x i16>, ptr %i.bm, align 2 ; 2 uses
  %i.bn = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load, <8 x i16> splat (i16 4))
  %i.bo = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load180, <8 x i16> %wide.load180, <8 x i16> splat (i16 4))
  store <8 x i16> %i.bn, ptr %i.bl, align 2
  store <8 x i16> %i.bo, ptr %i.bm, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %._crit_edge159, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.bq = and i32 %.0133, 24
  %min.epilog.iters.check = icmp eq i32 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph158.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec181 = and i64 %i.bk, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %index182 ; 2 uses
  %wide.load183 = load <4 x i16>, ptr %i.br, align 2 ; 2 uses
  %i.bs = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %wide.load183, <4 x i16> %wide.load183, <4 x i16> splat (i16 4))
  store <4 x i16> %i.bs, ptr %i.br, align 2
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %i.bk, %n.vec181
  br i1 %cmp.n185, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv167.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec181, %vec.epilog.middle.block ]
  br label %.lr.ph158

._crit_edge159:                                   ; preds = %.lr.ph158, %middle.block, %vec.epilog.middle.block, %bb.v
  store i32 6, ptr %4, align 4
  br label %.thread

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.lr.ph158 ], [ %indvars.iv167.ph, %.lr.ph158.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv167 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2            ; 2 uses
  %i.bw = tail call i16 @llvm.fshl.i16(i16 %i.bv, i16 %i.bv, i16 4)
  store i16 %i.bw, ptr %i.bu, align 2
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next168, %i.bk
  br i1 %exitcond.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !33

bb.w:                                             ; preds = %bb.k
  %i.bx = icmp eq i32 %i.z, 64
  %i.by = icmp eq i32 %i.w, 24
  %or.cond = and i1 %i.by, %i.bx
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = mul nsw i32 %i.s, 3
  %i.ca = load i32, ptr %i.t, align 4
  %i.cb = icmp ugt i32 %i.ca, 1
  %i.cc = shl i32 %i.s, 2
  %spec.select = select i1 %i.cb, i32 %i.cc, i32 %i.bz
  %i.cd = sext i32 %spec.select to i64            ; 2 uses
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #53 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull align 1 %i.h, i64 %i.cd, i1 false)
  store i32 4, ptr %4, align 4
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cf = icmp eq i32 %i.z, 65
  br i1 %i.cf, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cg = icmp eq i32 %i.w, 32
  br i1 %i.cg, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ch = shl nsw i32 %i.s, 2                     ; 3 uses
  %i.ci = load i32, ptr %i.t, align 4
  %i.cj = icmp ugt i32 %i.ci, 1
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = sdiv i32 %i.ch, 3
  %i.cl = add nsw i32 %i.ck, %i.ch
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0130 = phi i32 [ %i.cl, %bb.ab ], [ %i.ch, %bb.aa ] ; 3 uses
  %i.cm = sext i32 %.0130 to i64                  ; 3 uses
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cm) #53 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr nonnull align 1 %i.h, i64 %i.cm, i1 false)
  %i.co = icmp sgt i32 %.0130, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ac
  %i.cp = add nsw i64 %i.cm, -1
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %xtraiter = and i64 %i.cr, 3                    ; 3 uses
  %i.cs = icmp ult i32 %.0130, 13
  br i1 %i.cs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cr, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.epil ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1
  store i8 %i.cw, ptr %i.ct, align 1
  store i8 %i.cu, ptr %i.cv, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !34

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.ac
  store i32 7, ptr %4, align 4
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1
  store i8 %i.da, ptr %i.cx, align 1
  store i8 %i.cy, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1
  store i8 %i.df, ptr %i.dc, align 1
  store i8 %i.dd, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 10 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  store i8 %i.dk, ptr %i.dh, align 1
  store i8 %i.di, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 14 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1
  store i8 %i.dp, ptr %i.dm, align 1
  store i8 %i.dn, ptr %i.do, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.ad:                                            ; preds = %bb.y
  %i.dq = and i32 %i.z, -2
  %switch = icmp eq i32 %i.dq, 4
  br i1 %switch, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %.not152 = icmp eq i32 %i.ds, 0
  br i1 %.not152, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load i32, ptr %i.t, align 4
  %i.du = icmp ugt i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dw = load i32, ptr %i.dv, align 4            ; 3 uses
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = udiv i32 %i.dw, 3
  %i.dy = add i32 %i.dx, %i.dw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i32 [ %i.dy, %bb.ag ], [ %i.dw, %bb.af ]
  %i.dz = sext i32 %.0 to i64                     ; 2 uses
  %i.ea = tail call noalias ptr @malloc(i64 noundef %i.dz) #53 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %i.h, i64 %i.dz, i1 false)
  %i.eb = load i32, ptr %i.dr, align 4
  switch i32 %i.eb, label %.thread [
    i32 827611204, label %bb.ai
    i32 861165636, label %bb.al
    i32 894720068, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load i32, ptr %i.y, align 4
  %i.ed = icmp eq i32 %i.ec, 4
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 14, ptr %4, align 4
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  store i32 15, ptr %4, align 4
  br label %.thread

bb.al:                                            ; preds = %bb.ah
  store i32 16, ptr %4, align 4
  br label %.thread

bb.am:                                            ; preds = %bb.ah
  store i32 17, ptr %4, align 4
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.ad, %bb.f, %bb.al, %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.p, %bb.l, %bb.x, %bb.ae, %._crit_edge, %bb.o, %._crit_edge163, %._crit_edge159, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.ag, %bb.o ], [ %i.ap, %._crit_edge163 ], [ %i.bj, %._crit_edge159 ], [ null, %bb.p ], [ null, %bb.l ], [ %i.ce, %bb.x ], [ %i.cn, %._crit_edge ], [ null, %bb.ad ], [ null, %bb.ae ], [ %i.ea, %bb.ah ], [ %i.ea, %bb.aj ], [ %i.ea, %bb.ak ], [ %i.ea, %bb.am ], [ %i.ea, %bb.al ], [ null, %bb.z ]
  ret ptr %.2
}

declare void @TraceLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @get_gl_texture_formats(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef ptr @qoi_encode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca [64 x %union.qoi_rgba_t], align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = add i8 %i.j, -5
  %or.cond186 = icmp ult i8 %i.k, -2
  br i1 %or.cond186, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp ugt i8 %i.m, 1
  br i1 %i.n, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i32 400000000, %i.d
  %.not = icmp ult i32 %i.g, %i.o
  br i1 %.not, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.p = mul i32 %i.g, %i.d
  %narrow = add nuw nsw i8 %i.j, 1
  %i.q = zext nneg i8 %narrow to i32
  %i.r = mul i32 %i.p, %i.q
  %i.s = add i32 %i.r, 22
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #53 ; 21 uses
  %.not185 = icmp eq ptr %i.u, null
  br i1 %.not185, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <4 x i8> <i8 113, i8 111, i8 105, i8 102>, ptr %i.u, align 1
  %i.v = load i32, ptr %1, align 4                ; 5 uses
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i32 %i.v, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.v, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = trunc i32 %i.v to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = trunc nuw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = lshr i32 %i.ah, 16
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = lshr i32 %i.ah, 8
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = trunc i32 %i.ah to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = load i8, ptr %i.i, align 4              ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.at, ptr %i.au, align 1
  %i.av = load i8, ptr %i.l, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %i.av, ptr %i.aw, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.ax = mul i32 %i.ah, %i.v
  %i.ay = zext i8 %i.at to i32                    ; 2 uses
  %i.az = mul i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.bb = sub nsw i32 %i.az, %i.ay
  %i.bc = icmp eq i8 %i.at, 4
  %i.bd = zext i8 %i.at to i64
  %i.be = zext i32 %i.bb to i64
  %i.bf = zext nneg i32 %i.az to i64
  br label %bb.i

.preheader.loopexit:                              ; preds = %bb.y
  %i.bg = sext i32 %.2212 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0210.lcssa = phi i64 [ 14, %bb.h ], [ %i.bg, %.preheader.loopexit ] ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %.0210.lcssa
  store i64 72057594037927936, ptr %scevgep, align 1
  %i.bh = trunc nsw i64 %.0210.lcssa to i32
  %i.bi = add i32 %i.bh, 8
  store i32 %i.bi, ptr %2, align 4
  br label %bb.z

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %.sroa.0.0219 = phi i8 [ 0, %.lr.ph ], [ %i.bk, %bb.y ] ; 2 uses
  %.sroa.7.0218 = phi i8 [ 0, %.lr.ph ], [ %i.bm, %bb.y ] ; 2 uses
  %.sroa.9.0217 = phi i8 [ 0, %.lr.ph ], [ %i.bo, %bb.y ] ; 2 uses
  %.sroa.11.0216 = phi i8 [ -1, %.lr.ph ], [ %.sroa.26.1, %bb.y ] ; 3 uses
  %.0170214 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.y ] ; 5 uses
  %.0210213 = phi i32 [ 14, %.lr.ph ], [ %.2212, %bb.y ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bm = load i8, ptr %i.bl, align 1             ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1             ; 6 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.26.1 = phi i8 [ %i.bq, %bb.j ], [ %.sroa.11.0216, %bb.i ] ; 5 uses
  %.sroa.26.0.insert.ext = zext i8 %.sroa.26.1 to i32 ; 2 uses
  %.sroa.26.0.insert.shift = shl nuw i32 %.sroa.26.0.insert.ext, 24
  %.sroa.19.0.insert.ext = zext i8 %i.bo to i32   ; 2 uses
  %.sroa.19.0.insert.shift = shl nuw nsw i32 %.sroa.19.0.insert.ext, 16
  %.sroa.19.0.insert.insert = or disjoint i32 %.sroa.26.0.insert.shift, %.sroa.19.0.insert.shift
  %.sroa.12.0.insert.ext = zext i8 %i.bm to i32   ; 2 uses
  %.sroa.12.0.insert.shift = shl nuw nsw i32 %.sroa.12.0.insert.ext, 8
  %.sroa.12.0.insert.insert = or disjoint i32 %.sroa.19.0.insert.insert, %.sroa.12.0.insert.shift
  %.sroa.066.0.insert.ext = zext i8 %i.bk to i32  ; 2 uses
  %.sroa.066.0.insert.insert = or disjoint i32 %.sroa.12.0.insert.insert, %.sroa.066.0.insert.ext ; 2 uses
end_hunk_0
begin_hunk_1_@stbi_write_tga_core:bb.a
  %i.ee = load i32, ptr %i.y, align 8             ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = add nsw i64 %i.ef, 3
  %i.eh = icmp ult i64 %i.eg, 65
  br i1 %i.eh, label %stbiw__write3.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = load ptr, ptr %i.z, align 8
  tail call void %i.ei(ptr noundef %i.ej, ptr noundef nonnull %i.aa, i32 noundef %i.ee) #52, !inline_history !36
  br label %stbiw__write3.exit36.i125.us

stbiw__write3.exit36.i125.us:                     ; preds = %bb.v, %bb.u
  %i.ek = phi i32 [ 0, %bb.v ], [ %i.ee, %bb.u ]  ; 2 uses
  %i.el = add nsw i32 %i.ek, 3
  store i32 %i.el, ptr %i.y, align 8
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds i8, ptr %i.aa, i64 %i.em ; 3 uses
  store i8 %i.ea, ptr %i.en, align 1
  %i.eo = getelementptr i8, ptr %i.en, i64 1
  store i8 %i.ec, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %i.en, i64 2
  store i8 %i.ed, ptr %i.ep, align 1
  br label %bb.y

bb.w:                                             ; preds = %stbiw__write1.exit124.us, %stbiw__write1.exit124.us
  %i.eq = load i8, ptr %i.al, align 1
  %i.er = load i32, ptr %i.y, align 8             ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = add nsw i64 %i.es, 1
  %i.eu = icmp ult i64 %i.et, 65
  br i1 %i.eu, label %stbiw__write1.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %0, align 8
  %i.ew = load ptr, ptr %i.z, align 8
  tail call void %i.ev(ptr noundef %i.ew, ptr noundef nonnull %i.aa, i32 noundef %i.er) #52, !inline_history !37
  br label %stbiw__write1.exit.i140.us

stbiw__write1.exit.i140.us:                       ; preds = %bb.x, %bb.w
  %i.ex = phi i32 [ 0, %bb.x ], [ %i.er, %bb.w ]  ; 2 uses
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.y, align 8
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds i8, ptr %i.aa, i64 %i.ez
  store i8 %i.eq, ptr %i.fa, align 1
  br label %bb.y

bb.y:                                             ; preds = %stbiw__write1.exit.i140.us, %stbiw__write3.exit36.i125.us
  switch i32 %3, label %stbiw__write_pixel.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.fb = getelementptr i8, ptr %i.al, i64 %i.ab
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = load i32, ptr %i.y, align 8             ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = add nsw i64 %i.ff, 1
  %i.fh = icmp ult i64 %i.fg, 65
  br i1 %i.fh, label %stbiw__write1.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = load ptr, ptr %i.z, align 8
  tail call void %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.aa, i32 noundef %i.fe) #52, !inline_history !37
  br label %stbiw__write1.exit37.i127.us

stbiw__write1.exit37.i127.us:                     ; preds = %bb.aa, %bb.z
  %i.fk = phi i32 [ 0, %bb.aa ], [ %i.fe, %bb.z ] ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.y, align 8
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.aa, i64 %i.fm
  store i8 %i.fd, ptr %i.fn, align 1
  br label %stbiw__write_pixel.exit141.us

stbiw__write_pixel.exit141.us:                    ; preds = %stbiw__write_pixel.exit.us, %stbiw__write1.exit.us, %stbiw__write1.exit37.i127.us, %bb.y, %stbiw__write1.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %stbiw__write1.exit124.us ], [ %.2.lcssa.us, %stbiw__write1.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %stbiw__write1.exit.us ], [ %.3.ph.us, %stbiw__write_pixel.exit.us ]
  %i.fo = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %1
  br i1 %i.fp, label %bb.e, label %._crit_edge163.us

._crit_edge163.us:                                ; preds = %stbiw__write_pixel.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %i.ae ; 2 uses
  %i.fq = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fq
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us

.lr.ph167.split:                                  ; preds = %.lr.ph167, %.lr.ph167.split
  %.1110165 = phi i32 [ %i.fr, %.lr.ph167.split ], [ %.0109, %.lr.ph167 ]
  %i.fr = add nsw i32 %.1110165, %.0104           ; 2 uses
  %.not117 = icmp eq i32 %i.fr, %.0105
  br i1 %.not117, label %._crit_edge168, label %.lr.ph167.split

._crit_edge168:                                   ; preds = %.lr.ph167.split, %._crit_edge163.us, %bb.d
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8            ; 2 uses
  %.not.i142 = icmp eq i32 %i.ft, 0
  br i1 %.not.i142, label %stbiw__write_flush.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fu = load ptr, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fu(ptr noundef %i.fw, ptr noundef nonnull %i.fx, i32 noundef %i.ft) #52, !inline_history !38
  store i32 0, ptr %i.fs, align 8
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @stbi_write_tga_core(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @stbi_write_hdr_core(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_hdr_core(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 10 uses
  %i.g = alloca [4 x i8], align 1                 ; 13 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  %i.i = alloca [66 x i8], align 16               ; 4 uses
  %i.j = icmp slt i32 %1, 1
  %i.k = icmp slt i32 %0, 1
  %or.cond = or i1 %i.k, %i.j
  %i.l = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.l
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %0, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #53 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.i, ptr noundef nonnull align 16 dereferenceable(66) @__const.stbi_write_hdr_core.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.i, i32 noundef 65) #52
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %1, i32 noundef %0) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.h, i32 noundef %i.p) #52
  %i.q = mul nsw i32 %2, %0                       ; 3 uses
  %i.r = lshr i32 %0, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.u = trunc i32 %0 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.w = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.w, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.x = shl nuw nsw i32 %0, 1
  %i.y = mul nuw nsw i32 %0, 3
  %i.z = zext nneg i32 %0 to i64                  ; 8 uses
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z ; 2 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa ; 2 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ad = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.z, -3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bn, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.ah = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us.us = icmp eq i32 %i.ah, 0
  %i.ai = xor i32 %.06.us.us, -1
  %i.aj = add nsw i32 %1, %i.ai
  %i.ak = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aj
  %i.al = mul nsw i32 %i.q, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.c

bb.c:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %stbiw__linear_to_rgbe.exit.i.us.us.us ] ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.ac
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load float, ptr %i.aq, align 4          ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = load float, ptr %i.ap, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.av = fcmp ogt float %i.at, %i.ar
  %..i.i.us.us.us = select i1 %i.av, float %i.at, float %i.ar ; 2 uses
  %i.aw = fcmp ogt float %i.au, %..i.i.us.us.us
  %i.ax = select i1 %i.aw, float %i.au, float %..i.i.us.us.us ; 3 uses
  %i.ay = fcmp olt float %i.ax, 1.000000e-32
  br i1 %i.ay, label %stbiw__linear_to_rgbe.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = fpext float %i.ax to double
  %i.ba = call double @frexp(double noundef %i.az, ptr noundef nonnull %i.e) #52
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul float %i.bb, 2.560000e+02
  %i.bd = fdiv float %i.bc, %i.ax                 ; 3 uses
  %i.be = fmul float %i.au, %i.bd
  %i.bf = fptoui float %i.be to i8
  %i.bg = fmul float %i.at, %i.bd
  %i.bh = fptoui float %i.bg to i8
  %i.bi = fmul float %i.ar, %i.bd
  %i.bj = fptoui float %i.bi to i8
  %i.bk = load i32, ptr %i.e, align 4
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = xor i8 %i.bl, -128
  br label %stbiw__linear_to_rgbe.exit.i.us.us.us

stbiw__linear_to_rgbe.exit.i.us.us.us:            ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bh, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bf, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bj, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %i.ag, align 1
  store i8 %.sink.i.us.us.us, ptr %i.g, align 1
  store i8 %.sink32.i.i.us.us.us, ptr %i.ae, align 1
  store i8 %.sink.i.i.us.us.us, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 4) #52, !inline_history !39
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.z
  br i1 %exitcond187.not.i.us.us.us, label %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us, label %bb.c

stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us: ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.bn = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bn, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us

.preheader.i.us:                                  ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cj, %stbiw__write_hdr_scanline.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.bo = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us = icmp eq i32 %i.bo, 0
  %i.bp = xor i32 %.06.us, -1
  %i.bq = add nsw i32 %1, %i.bp
  %i.br = select i1 %.not.us, i32 %.06.us, i32 %i.bq
  %i.bs = mul nsw i32 %i.q, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.e

bb.e:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %stbiw__linear_to_rgbe.exit.i.us ] ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv183.i.us, %i.ac
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.by = fcmp olt float %i.bx, 1.000000e-32
  br i1 %i.by, label %stbiw__linear_to_rgbe.exit.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = fpext float %i.bx to double
  %i.ca = call double @frexp(double noundef %i.bz, ptr noundef nonnull %i.e) #52
  %i.cb = fptrunc double %i.ca to float
  %i.cc = fmul float %i.cb, 2.560000e+02
  %i.cd = fdiv float %i.cc, %i.bx
  %i.ce = fmul float %i.bx, %i.cd
  %i.cf = fptoui float %i.ce to i8
  %i.cg = load i32, ptr %i.e, align 4
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = xor i8 %i.ch, -128
  br label %stbiw__linear_to_rgbe.exit.i.us

stbiw__linear_to_rgbe.exit.i.us:                  ; preds = %bb.e, %bb.f
  %.sink18 = phi i8 [ %i.cf, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sink32.i.i.us = phi i8 [ %i.ci, %bb.f ], [ 0, %bb.e ]
  store i8 %.sink18, ptr %i.ag, align 1
  store i8 %.sink18, ptr %i.g, align 1
  store i8 %.sink32.i.i.us, ptr %i.ae, align 1
  store i8 %.sink18, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 4) #52, !inline_history !39
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.z
  br i1 %exitcond187.not.i.us, label %stbiw__write_hdr_scanline.exit.loopexit.us.split, label %bb.e

stbiw__write_hdr_scanline.exit.loopexit.us.split: ; preds = %stbiw__linear_to_rgbe.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.cj = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.cj, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us

.preheader131.i:                                  ; preds = %bb.b, %stbiw__write_hdr_scanline.exit.loopexit1
  %.06 = phi i32 [ %i.fw, %stbiw__write_hdr_scanline.exit.loopexit1 ], [ 0, %bb.b ] ; 3 uses
  %i.ck = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = xor i32 %.06, -1
  %i.cm = add nsw i32 %1, %i.cl
  %i.cn = select i1 %.not, i32 %.06, i32 %i.cm
  %i.co = mul nsw i32 %i.q, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  store i32 514, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  store i8 %i.s, ptr %i.t, align 2
  store i8 %i.u, ptr %i.v, align 1
  br i1 %switch.i, label %.preheader131.split.us.i, label %.preheader131.split.i

.preheader131.split.us.i:                         ; preds = %.preheader131.i, %stbiw__linear_to_rgbe.exit119.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %stbiw__linear_to_rgbe.exit119.us.i ], [ 0, %.preheader131.i ] ; 6 uses
  %i.cr = mul nuw nsw i64 %indvars.iv163.i, %i.ad
  %i.cs = getelementptr [4 x i8], ptr %i.cq, i64 %i.cr ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load float, ptr %i.ct, align 4          ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 4
  %i.cw = load float, ptr %i.cv, align 4          ; 3 uses
  %i.cx = load float, ptr %i.cs, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #52
  %i.cy = fcmp ogt float %i.cw, %i.cu
  %..i116.us.i = select i1 %i.cy, float %i.cw, float %i.cu ; 2 uses
  %i.cz = fcmp ogt float %i.cx, %..i116.us.i
  %i.da = select i1 %i.cz, float %i.cx, float %..i116.us.i ; 3 uses
  %i.db = fcmp olt float %i.da, 1.000000e-32
  br i1 %i.db, label %stbiw__linear_to_rgbe.exit119.us.i, label %bb.g

bb.g:                                             ; preds = %.preheader131.split.us.i
  %i.dc = fpext float %i.da to double
  %i.dd = call double @frexp(double noundef %i.dc, ptr noundef nonnull %i.d) #52
  %i.de = fptrunc double %i.dd to float
  %i.df = fmul float %i.de, 2.560000e+02
  %i.dg = fdiv float %i.df, %i.da                 ; 3 uses
  %i.dh = fmul float %i.cx, %i.dg
  %i.di = fptoui float %i.dh to i8
  %i.dj = fmul float %i.cw, %i.dg
  %i.dk = fptoui float %i.dj to i8
  %i.dl = fmul float %i.cu, %i.dg
  %i.dm = fptoui float %i.dl to i8
  %i.dn = load i32, ptr %i.d, align 4
  %i.do = trunc i32 %i.dn to i8
  %i.dp = xor i8 %i.do, -128
  br label %stbiw__linear_to_rgbe.exit119.us.i

stbiw__linear_to_rgbe.exit119.us.i:               ; preds = %bb.g, %.preheader131.split.us.i
  %i.dq = phi i8 [ %i.dk, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %i.dr = phi i8 [ %i.di, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %.sink32.i117.us.i = phi i8 [ %i.dp, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %.sink.i118.us.i = phi i8 [ %i.dm, %bb.g ], [ 0, %.preheader131.split.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv163.i
  store i8 %i.dr, ptr %i.ds, align 1
  %gep205.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv163.i
  store i8 %i.dq, ptr %gep205.i, align 1
  %gep207.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv163.i
  store i8 %.sink.i118.us.i, ptr %gep207.i, align 1
  %gep209.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv163.i
  store i8 %.sink32.i117.us.i, ptr %gep209.i, align 1
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.z
  br i1 %exitcond167.not.i, label %.split.us.i, label %.preheader131.split.us.i

.preheader131.split.i:                            ; preds = %.preheader131.i, %stbiw__linear_to_rgbe.exit119.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %stbiw__linear_to_rgbe.exit119.i ], [ 0, %.preheader131.i ] ; 6 uses
  %i.dt = mul nsw i64 %indvars.iv.i, %i.ac
  %i.du = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #52
  %i.dw = fcmp olt float %i.dv, 1.000000e-32
  br i1 %i.dw, label %stbiw__linear_to_rgbe.exit119.i, label %bb.h

bb.h:                                             ; preds = %.preheader131.split.i
  %i.dx = fpext float %i.dv to double
  %i.dy = call double @frexp(double noundef %i.dx, ptr noundef nonnull %i.d) #52
  %i.dz = fptrunc double %i.dy to float
  %i.ea = fmul float %i.dz, 2.560000e+02
  %i.eb = fdiv float %i.ea, %i.dv
  %i.ec = fmul float %i.dv, %i.eb
  %i.ed = fptoui float %i.ec to i8
  %i.ee = load i32, ptr %i.d, align 4
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = xor i8 %i.ef, -128
  br label %stbiw__linear_to_rgbe.exit119.i

stbiw__linear_to_rgbe.exit119.i:                  ; preds = %bb.h, %.preheader131.split.i
  %i.eh = phi i8 [ %i.ed, %bb.h ], [ 0, %.preheader131.split.i ] ; 3 uses
  %.sink32.i117.i = phi i8 [ %i.eg, %bb.h ], [ 0, %.preheader131.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  store i8 %i.eh, ptr %i.ei, align 1
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 %i.eh, ptr %gep.i, align 1
  %gep201.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv.i
  store i8 %i.eh, ptr %gep201.i, align 1
  %gep203.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv.i
  store i8 %.sink32.i117.i, ptr %gep203.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.z
  br i1 %exitcond.not.i, label %.split.us.i, label %.preheader131.split.i

.split.us.i:                                      ; preds = %stbiw__linear_to_rgbe.exit119.i, %stbiw__linear_to_rgbe.exit119.us.i
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.f, i32 noundef 4) #52, !inline_history !39
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.split.us.i
  %indvars.iv179.i = phi i64 [ 0, %.split.us.i ], [ %indvars.iv.next180.i, %bb.n ] ; 2 uses
  %i.ej = mul nuw nsw i64 %indvars.iv179.i, %i.z
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ej ; 7 uses
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.loopexit127.i, %bb.i
  %.2152.i = phi i32 [ 0, %bb.i ], [ %.5.i, %.loopexit127.i ] ; 5 uses
  %i.el = icmp slt i32 %.2152.i, %invariant.op.i
  br i1 %i.el, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader129.i
  %i.em = sext i32 %.2152.i to i64                ; 4 uses
  %i.en = add nsw i64 %i.em, 2
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.ek, i64 %i.em
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op212.i, i64 %i.em)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %i.eo = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.eq, %bb.k ] ; 2 uses
  %indvars.iv170.i = phi i64 [ %i.em, %.lr.ph.preheader.i ], [ %indvars.iv.next171.i, %bb.k ] ; 3 uses
  %indvars.iv168.i = phi i64 [ %i.en, %.lr.ph.preheader.i ], [ %indvars.iv.next169.i, %bb.k ] ; 2 uses
  %indvars.iv.next171.i = add nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv.next171.i
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %i.er = icmp eq i8 %i.eo, %i.eq
  br i1 %i.er, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.es = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv168.i
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = icmp eq i8 %i.eo, %i.et
  br i1 %i.eu, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.next169.i = add nsw i64 %indvars.iv168.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv170.i, %smax
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.j
  %i.ev = trunc nsw i64 %indvars.iv170.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i, %.preheader129.i
  %spec.select.i = phi i32 [ %0, %.preheader129.i ], [ %i.ev, %._crit_edge.loopexit.split.loop.exit.i ], [ %0, %bb.k ] ; 5 uses
  %i.ew = icmp slt i32 %.2152.i, %spec.select.i
  br i1 %i.ew, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %._crit_edge.i, %.lr.ph145.i
  %.3143.i = phi i32 [ %i.fb, %.lr.ph145.i ], [ %.2152.i, %._crit_edge.i ] ; 3 uses
  %i.ex = sub nsw i32 %spec.select.i, %.3143.i
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.ex, i32 128) ; 3 uses
  %i.ey = sext i32 %.3143.i to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  %i.fa = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.fa, ptr %i.c, align 1
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.c, i32 noundef 1) #52, !inline_history !40
  call void %.0.val(ptr noundef %.8.val, ptr noundef %i.ez, i32 noundef %spec.store.select.i) #52, !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  %i.fb = add nsw i32 %spec.store.select.i, %.3143.i ; 3 uses
  %i.fc = icmp slt i32 %i.fb, %spec.select.i
  br i1 %i.fc, label %.lr.ph145.i, label %._crit_edge146.i

._crit_edge146.i:                                 ; preds = %.lr.ph145.i, %._crit_edge.i
  %.3.lcssa.i = phi i32 [ %.2152.i, %._crit_edge.i ], [ %i.fb, %.lr.ph145.i ] ; 5 uses
  %i.fd = icmp slt i32 %spec.select.i, %invariant.op.i
  br i1 %i.fd, label %.preheader128.i, label %.loopexit127.i

.preheader128.i:                                  ; preds = %._crit_edge146.i
  %i.fe = sext i32 %.3.lcssa.i to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ek, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i32 %spec.select.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.preheader128.i
  %indvars.iv175.i = phi i64 [ %i.fh, %.preheader128.i ], [ %indvars.iv.next176.i, %bb.m ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv175.i
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = icmp eq i8 %i.fj, %i.fg
  br i1 %i.fk, label %bb.m, label %.critedge.split.loop.exit213.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next176.i = add nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next176.i, %i.z
  br i1 %exitcond178.not.i, label %.critedge.i, label %bb.l

.critedge.split.loop.exit213.i:                   ; preds = %bb.l
  %i.fl = trunc nsw i64 %indvars.iv175.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %.critedge.split.loop.exit213.i
  %.2109.lcssa.i = phi i32 [ %i.fl, %.critedge.split.loop.exit213.i ], [ %0, %bb.m ] ; 3 uses
  %i.fm = icmp slt i32 %.3.lcssa.i, %.2109.lcssa.i
  br i1 %i.fm, label %.lr.ph150.i, label %.loopexit127.i

.lr.ph150.i:                                      ; preds = %.critedge.i, %.lr.ph150.i
  %.4149.i = phi i32 [ %i.ft, %.lr.ph150.i ], [ %.3.lcssa.i, %.critedge.i ] ; 3 uses
  %i.fn = sub nsw i32 %.2109.lcssa.i, %.4149.i
  %spec.store.select2.i = call i32 @llvm.smin.i32(i32 %i.fn, i32 127) ; 2 uses
  %i.fo = sext i32 %.4149.i to i64
  %i.fp = getelementptr inbounds i8, ptr %i.ek, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.fq, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.fr = trunc nuw i32 %spec.store.select2.i to i8
  %i.fs = or disjoint i8 %i.fr, -128
  store i8 %i.fs, ptr %i.b, align 1
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.b, i32 noundef 1) #52, !inline_history !41
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.a, i32 noundef 1) #52, !inline_history !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ft = add nsw i32 %spec.store.select2.i, %.4149.i ; 3 uses
  %i.fu = icmp slt i32 %i.ft, %.2109.lcssa.i
  br i1 %i.fu, label %.lr.ph150.i, label %.loopexit127.i

.loopexit127.i:                                   ; preds = %.lr.ph150.i, %.critedge.i, %._crit_edge146.i
  %.5.i = phi i32 [ %.3.lcssa.i, %._crit_edge146.i ], [ %.3.lcssa.i, %.critedge.i ], [ %i.ft, %.lr.ph150.i ] ; 2 uses
  %i.fv = icmp slt i32 %.5.i, %0
  br i1 %i.fv, label %.preheader129.i, label %bb.n

bb.n:                                             ; preds = %.loopexit127.i
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next180.i, 4
  br i1 %exitcond182.not.i, label %stbiw__write_hdr_scanline.exit.loopexit1, label %bb.i

stbiw__write_hdr_scanline.exit.loopexit1:         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.fw = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond15.not = icmp eq i32 %i.fw, %1
  br i1 %exitcond15.not, label %.split8.us, label %.preheader131.i

.split8.us:                                       ; preds = %stbiw__write_hdr_scanline.exit.loopexit1, %stbiw__write_hdr_scanline.exit.loopexit.us.split, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us
  call void @free(ptr noundef %i.o) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #52
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.split8.us
  %.028 = phi i32 [ 1, %.split8.us ], [ 0, %bb.a ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_hdr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 3 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @stbi_write_hdr_core(ptr nonnull @stbi__stdio_write, ptr nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden ptr @stbi_zlib_compress(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #53 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 5) ; 4 uses
  %malloc = tail call dereferenceable_or_null(10) ptr @malloc(i64 10) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %malloc) ]
  %i.c = getelementptr inbounds nuw i8, ptr %malloc, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 8 ; 2 uses
  store i32 2, ptr %malloc, align 4
  store i32 1, ptr %i.c, align 4
  store i8 120, ptr %i.d, align 4
  %i.e = tail call dereferenceable_or_null(13) ptr @realloc(ptr noundef nonnull %malloc, i64 noundef 13) #54 ; 3 uses
  %.not18.i253 = icmp eq ptr %i.e, null
  br i1 %.not18.i253, label %stbiw__zlib_flushf.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 5, ptr %i.e, align 4
  br label %stbiw__zlib_flushf.exit.thread

stbiw__zlib_flushf.exit.thread:                   ; preds = %bb.b, %bb.c
  %.1629 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.1629, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %.1629, i64 %i.j
  store i8 94, ptr %i.k, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.a, i8 0, i64 131072, i1 false)
  %i.l = add nsw i32 %1, -3
  %i.m = icmp sgt i32 %1, 3
  br i1 %i.m, label %.lr.ph762, label %.preheader709

.lr.ph762:                                        ; preds = %stbiw__zlib_flushf.exit.thread
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = shl nuw nsw i32 %spec.store.select, 1
  %i.p = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  br label %bb.d

.preheader709:                                    ; preds = %stbiw__zlib_flushf.exit354, %stbiw__zlib_flushf.exit.thread
  %.0663.lcssa = phi i32 [ 3, %stbiw__zlib_flushf.exit.thread ], [ %.4667, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.0634.lcssa = phi i32 [ 3, %stbiw__zlib_flushf.exit.thread ], [ %.4638, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.2630.lcssa = phi ptr [ %.1629, %stbiw__zlib_flushf.exit.thread ], [ %.5632, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.1193.lcssa = phi i32 [ 0, %stbiw__zlib_flushf.exit.thread ], [ %.2194, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %i.r = icmp slt i32 %.1193.lcssa, %1
  br i1 %i.r, label %.lr.ph771.preheader, label %.preheader707

.lr.ph771.preheader:                              ; preds = %.preheader709
  %i.s = sext i32 %.1193.lcssa to i64
  %wide.trip.count856 = sext i32 %1 to i64
  br label %.lr.ph771

bb.d:                                             ; preds = %.lr.ph762, %stbiw__zlib_flushf.exit354
  %.1193761 = phi i32 [ 0, %.lr.ph762 ], [ %.2194, %stbiw__zlib_flushf.exit354 ] ; 6 uses
  %.2630760 = phi ptr [ %.1629, %.lr.ph762 ], [ %.5632, %stbiw__zlib_flushf.exit354 ] ; 8 uses
  %.0634759 = phi i32 [ 3, %.lr.ph762 ], [ %.4638, %stbiw__zlib_flushf.exit354 ] ; 12 uses
  %.0663758 = phi i32 [ 3, %.lr.ph762 ], [ %.4667, %stbiw__zlib_flushf.exit354 ] ; 4 uses
  %i.t = sext i32 %.1193761 to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 8 uses
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = or disjoint i32 %i.aa, %i.w             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 3
end_hunk_1
begin_hunk_2_@stbi_zlib_compress:bb.a
  %i.vm = add i32 %i.vl, %.1789
  %i.vn = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.1 = getelementptr i8, ptr %i.vn, i64 1
  %i.vo = load i8, ptr %gep.1, align 1
  %i.vp = zext i8 %i.vo to i32
  %i.vq = add i32 %i.vl, %i.vp                    ; 2 uses
  %i.vr = add i32 %i.vq, %i.vm
  %i.vs = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.2 = getelementptr i8, ptr %i.vs, i64 2
  %i.vt = load i8, ptr %gep.2, align 1
  %i.vu = zext i8 %i.vt to i32
  %i.vv = add i32 %i.vq, %i.vu                    ; 2 uses
  %i.vw = add i32 %i.vv, %i.vr
  %i.vx = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.3 = getelementptr i8, ptr %i.vx, i64 3
  %i.vy = load i8, ptr %gep.3, align 1
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add i32 %i.vv, %i.vz                    ; 4 uses
  %i.wb = add i32 %i.wa, %i.vw                    ; 3 uses
  %indvars.iv.next863.3 = add nuw nsw i64 %indvars.iv862, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge791.loopexit.unr-lcssa, label %.lr.ph790

._crit_edge791.loopexit.unr-lcssa:                ; preds = %.lr.ph790
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil.preheader

.lr.ph790.epil.preheader:                         ; preds = %._crit_edge791.loopexit.unr-lcssa, %.lr.ph790.preheader
  %indvars.iv862.epil.init = phi i64 [ 0, %.lr.ph790.preheader ], [ %indvars.iv.next863.3, %._crit_edge791.loopexit.unr-lcssa ]
  %.1789.epil.init = phi i32 [ %.0177796, %.lr.ph790.preheader ], [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ]
  %.1179788.epil.init = phi i32 [ %.0178795, %.lr.ph790.preheader ], [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ]
  %lcmp.mod1100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  br label %.lr.ph790.epil

.lr.ph790.epil:                                   ; preds = %.lr.ph790.epil, %.lr.ph790.epil.preheader
  %indvars.iv862.epil = phi i64 [ %indvars.iv862.epil.init, %.lr.ph790.epil.preheader ], [ %indvars.iv.next863.epil, %.lr.ph790.epil ] ; 2 uses
  %.1789.epil = phi i32 [ %.1789.epil.init, %.lr.ph790.epil.preheader ], [ %i.wf, %.lr.ph790.epil ]
  %.1179788.epil = phi i32 [ %.1179788.epil.init, %.lr.ph790.epil.preheader ], [ %i.we, %.lr.ph790.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph790.epil.preheader ], [ %epil.iter.next, %.lr.ph790.epil ]
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862.epil
  %i.wc = load i8, ptr %gep.epil, align 1
  %i.wd = zext i8 %i.wc to i32
  %i.we = add i32 %.1179788.epil, %i.wd           ; 3 uses
  %i.wf = add i32 %i.we, %.1789.epil              ; 2 uses
  %indvars.iv.next863.epil = add nuw nsw i64 %indvars.iv862.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil, !llvm.loop !42

._crit_edge791.loopexit:                          ; preds = %.lr.ph790.epil, %._crit_edge791.loopexit.unr-lcssa
  %.lcssa1068 = phi i32 [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ], [ %i.we, %.lr.ph790.epil ]
  %.lcssa = phi i32 [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ], [ %i.wf, %.lr.ph790.epil ]
  %i.wg = urem i32 %.lcssa1068, 65521
  %i.wh = urem i32 %.lcssa, 65521
  br label %._crit_edge791

._crit_edge791:                                   ; preds = %._crit_edge791.loopexit, %.preheader
  %.1179.lcssa = phi i32 [ %.0178795, %.preheader ], [ %i.wg, %._crit_edge791.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0177796, %.preheader ], [ %i.wh, %._crit_edge791.loopexit ] ; 2 uses
  %i.wi = add nuw nsw i32 %.0797, %.5191794       ; 2 uses
  %i.wj = icmp slt i32 %i.wi, %1
  br i1 %i.wj, label %.preheader, label %._crit_edge798

._crit_edge798:                                   ; preds = %._crit_edge791, %bb.an, %.loopexit
  %.131007 = phi ptr [ %.13, %.loopexit ], [ %storemerge.lcssa, %bb.an ], [ %.13, %._crit_edge791 ] ; 4 uses
  %i.wk = phi i32 [ %i.ve, %.loopexit ], [ 2, %bb.an ], [ %i.ve, %._crit_edge791 ]
  %.0178.lcssa = phi i32 [ 1, %.loopexit ], [ 1, %bb.an ], [ %.1179.lcssa, %._crit_edge791 ] ; 2 uses
  %.0177.lcssa = phi i32 [ 0, %.loopexit ], [ 0, %bb.an ], [ %.1.lcssa, %._crit_edge791 ] ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wm = add nsw i32 %i.wk, 1
  %i.wn = load i32, ptr %i.wl, align 4            ; 2 uses
  %.not228 = icmp slt i32 %i.wm, %i.wn
  br i1 %.not228, label %bb.bd, label %.thread704

.thread704:                                       ; preds = %._crit_edge798
  %i.wo = shl nsw i32 %i.wn, 1                    ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wq = sext i32 %i.wo to i64
  %i.wr = add nsw i64 %i.wq, 9
  %i.ws = tail call ptr @realloc(ptr noundef nonnull %i.wp, i64 noundef %i.wr) #54 ; 3 uses
  %.not18.i478 = icmp eq ptr %i.ws, null
  br i1 %.not18.i478, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.thread704
  %i.wt = or disjoint i32 %i.wo, 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i32 %i.wt, ptr %i.ws, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge798, %.thread704, %bb.bc
  %.14 = phi ptr [ %.131007, %._crit_edge798 ], [ %.131007, %.thread704 ], [ %i.wu, %bb.bc ] ; 5 uses
  %i.wv = lshr i32 %.0177.lcssa, 8
  %i.ww = trunc nuw i32 %i.wv to i8
  %i.wx = getelementptr inbounds i8, ptr %.14, i64 -4 ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4            ; 2 uses
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr %i.wx, align 4
  %i.xa = sext i32 %i.wy to i64
  %i.xb = getelementptr inbounds i8, ptr %.14, i64 %i.xa
  store i8 %i.ww, ptr %i.xb, align 1
  %i.xc = getelementptr inbounds i8, ptr %.14, i64 -8 ; 2 uses
  %i.xd = load i32, ptr %i.wx, align 4
  %i.xe = add nsw i32 %i.xd, 1
  %i.xf = load i32, ptr %i.xc, align 4            ; 2 uses
  %.not229 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not229, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.xg = shl nsw i32 %i.xf, 1                    ; 2 uses
  %i.xh = sext i32 %i.xg to i64
  %i.xi = add nsw i64 %i.xh, 9
  %i.xj = tail call ptr @realloc(ptr noundef nonnull %i.xc, i64 noundef %i.xi) #54 ; 3 uses
  %.not18.i484 = icmp eq ptr %i.xj, null
  br i1 %.not18.i484, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.xk = or disjoint i32 %i.xg, 1
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i32 %i.xk, ptr %i.xj, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.15 = phi ptr [ %.14, %bb.bd ], [ %.14, %bb.be ], [ %i.xl, %bb.bf ] ; 5 uses
  %i.xm = trunc i32 %.0177.lcssa to i8
  %i.xn = getelementptr inbounds i8, ptr %.15, i64 -4 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 4            ; 2 uses
  %i.xp = add nsw i32 %i.xo, 1
  store i32 %i.xp, ptr %i.xn, align 4
  %i.xq = sext i32 %i.xo to i64
  %i.xr = getelementptr inbounds i8, ptr %.15, i64 %i.xq
  store i8 %i.xm, ptr %i.xr, align 1
  %i.xs = getelementptr inbounds i8, ptr %.15, i64 -8 ; 2 uses
  %i.xt = load i32, ptr %i.xn, align 4
  %i.xu = add nsw i32 %i.xt, 1
  %i.xv = load i32, ptr %i.xs, align 4            ; 2 uses
  %.not230 = icmp slt i32 %i.xu, %i.xv
  br i1 %.not230, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xw = shl nsw i32 %i.xv, 1                    ; 2 uses
  %i.xx = sext i32 %i.xw to i64
  %i.xy = add nsw i64 %i.xx, 9
  %i.xz = tail call ptr @realloc(ptr noundef nonnull %i.xs, i64 noundef %i.xy) #54 ; 3 uses
  %.not18.i490 = icmp eq ptr %i.xz, null
  br i1 %.not18.i490, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ya = or disjoint i32 %i.xw, 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i32 %i.ya, ptr %i.xz, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %.16 = phi ptr [ %.15, %bb.bg ], [ %.15, %bb.bh ], [ %i.yb, %bb.bi ] ; 5 uses
  %i.yc = lshr i32 %.0178.lcssa, 8
  %i.yd = trunc nuw i32 %i.yc to i8
  %i.ye = getelementptr inbounds i8, ptr %.16, i64 -4 ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 4            ; 2 uses
  %i.yg = add nsw i32 %i.yf, 1
  store i32 %i.yg, ptr %i.ye, align 4
  %i.yh = sext i32 %i.yf to i64
  %i.yi = getelementptr inbounds i8, ptr %.16, i64 %i.yh
  store i8 %i.yd, ptr %i.yi, align 1
  %i.yj = getelementptr inbounds i8, ptr %.16, i64 -8 ; 2 uses
  %i.yk = load i32, ptr %i.ye, align 4
  %i.yl = add nsw i32 %i.yk, 1
  %i.ym = load i32, ptr %i.yj, align 4            ; 2 uses
  %.not231 = icmp slt i32 %i.yl, %i.ym
  br i1 %.not231, label %stbiw__sbgrowf.exit499, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.yn = shl nsw i32 %i.ym, 1                    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = add nsw i64 %i.yo, 9
  %i.yq = tail call ptr @realloc(ptr noundef nonnull %i.yj, i64 noundef %i.yp) #54 ; 3 uses
  %.not18.i496 = icmp eq ptr %i.yq, null
  br i1 %.not18.i496, label %stbiw__sbgrowf.exit499, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.yr = or disjoint i32 %i.yn, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store i32 %i.yr, ptr %i.yq, align 4
  br label %stbiw__sbgrowf.exit499

stbiw__sbgrowf.exit499:                           ; preds = %bb.bl, %bb.bk, %bb.bj
  %.17 = phi ptr [ %.16, %bb.bj ], [ %.16, %bb.bk ], [ %i.ys, %bb.bl ] ; 4 uses
  %i.yt = trunc i32 %.0178.lcssa to i8
  %i.yu = getelementptr inbounds i8, ptr %.17, i64 -4 ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 4            ; 2 uses
  %i.yw = add nsw i32 %i.yv, 1
  store i32 %i.yw, ptr %i.yu, align 4
  %i.yx = sext i32 %i.yv to i64
  %i.yy = getelementptr inbounds i8, ptr %.17, i64 %i.yx
  store i8 %i.yt, ptr %i.yy, align 1
  %i.yz = load i32, ptr %i.yu, align 4            ; 2 uses
  store i32 %i.yz, ptr %2, align 4
  %i.za = getelementptr inbounds i8, ptr %.17, i64 -8 ; 2 uses
  %i.zb = sext i32 %i.yz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.za, ptr nonnull align 1 %.17, i64 %i.zb, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %stbiw__sbgrowf.exit499
  %.0198 = phi ptr [ %i.za, %stbiw__sbgrowf.exit499 ], [ null, %bb.a ]
  ret ptr %.0198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @stbi_write_png_to_mem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @stbi_write_force_png_filter, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.c = icmp eq i32 %1, 0
  %i.d = mul i32 %4, %2                           ; 10 uses
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1 ; 13 uses
  %i.e = icmp sgt i32 %i.b, 4
  %spec.store.select = select i1 %i.e, i32 -1, i32 %i.b ; 2 uses
  %i.f = add nsw i32 %i.d, 1                      ; 4 uses
  %i.g = mul nsw i32 %i.f, %3                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #53 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.d to i64                     ; 4 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #53 ; 28 uses
  %.not108 = icmp eq ptr %i.k, null
  br i1 %.not108, label %bb.d, label %.preheader179

.preheader179:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader179
  %i.m = icmp sgt i32 %spec.store.select, -1
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = trunc i32 %i.b to i8
  %i.o = sext i32 %i.f to i64
  %wide.trip.count214 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv211 to i32
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.p, i32 noundef %4, i32 noundef %spec.store.select, ptr noundef %i.k)
  %i.q = mul nsw i64 %indvars.iv211, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 2 uses
  store i8 %i.n, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = icmp sgt i32 %i.d, 0
  %wide.trip.count209 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %i.t, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.u = sext i32 %i.f to i64
  br label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph.split
  %i.v = zext nneg i32 %i.f to i64
  %wide.trip.count203 = zext nneg i32 %i.d to i64 ; 15 uses
  %min.iters.check287 = icmp ult i32 %i.d, 8
  %n.vec289 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec289, %wide.trip.count203
  %min.iters.check271 = icmp ult i32 %i.d, 8
  %n.vec273 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec273, %wide.trip.count203
  %min.iters.check255 = icmp ult i32 %i.d, 8
  %n.vec257 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec257, %wide.trip.count203
  %min.iters.check239 = icmp ult i32 %i.d, 8
  %n.vec241 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n251 = icmp eq i64 %n.vec241, %wide.trip.count203
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv206 to i32  ; 6 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.body290

vector.body290:                                   ; preds = %.preheader.us, %vector.body290
  %index291 = phi i64 [ %index.next296, %vector.body290 ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi292 = phi <4 x i32> [ %i.ad, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %vec.phi293 = phi <4 x i32> [ %i.ae, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %index291 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load294 = load <4 x i8>, ptr %i.x, align 1
  %wide.load295 = load <4 x i8>, ptr %i.y, align 1
  %i.z = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load294, i1 false)
  %i.aa = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load295, i1 false)
  %i.ab = zext <4 x i8> %i.z to <4 x i32>
  %i.ac = zext <4 x i8> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi292, %i.ab        ; 2 uses
  %i.ae = add <4 x i32> %vec.phi293, %i.ac        ; 2 uses
  %index.next296 = add nuw i64 %index291, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.af, label %middle.block297, label %vector.body290, !llvm.loop !43

middle.block297:                                  ; preds = %vector.body290
  %bin.rdx298 = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx298) ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.us.us, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %.preheader.us, %middle.block297
  %indvars.iv200.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec289, %middle.block297 ]
  %.092182.us.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.ag, %middle.block297 ]
  br label %scalar.ph286

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa235 = phi i32 [ %i.cw, %middle.block ], [ %i.db, %scalar.ph ]
  %i.ah = icmp samesign ult i32 %.lcssa234, %spec.select113.us.us.2
  %spec.select112.us.us.3 = select i1 %i.ah, i32 3, i32 %spec.select112.us.us.2
  %spec.select113.us.us.3 = tail call i32 @llvm.smin.i32(i32 %.lcssa234, i32 %spec.select113.us.us.2)
  %i.ai = icmp samesign ult i32 %.lcssa235, %spec.select113.us.us.3
  %spec.select112.us.us.4 = select i1 %i.ai, i32 4, i32 %spec.select112.us.us.3 ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef %spec.select112.us.us.4, ptr noundef %i.k)
  %i.aj = trunc nuw nsw i32 %spec.select112.us.us.4 to i8
  %i.ak = mul nuw nsw i64 %indvars.iv206, %i.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ak ; 2 uses
  store i8 %i.aj, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge, label %.preheader.us

scalar.ph286:                                     ; preds = %scalar.ph286.preheader, %scalar.ph286
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph286 ], [ %indvars.iv200.ph, %scalar.ph286.preheader ] ; 2 uses
  %.092182.us.us = phi i32 [ %i.ar, %scalar.ph286 ], [ %.092182.us.us.ph, %scalar.ph286.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = tail call i8 @llvm.abs.i8(i8 %i.ao, i1 false)
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.092182.us.us, %i.aq   ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.us.us, label %scalar.ph286, !llvm.loop !44

._crit_edge.us.us:                                ; preds = %scalar.ph286, %middle.block297
  %.lcssa231 = phi i32 [ %i.ag, %middle.block297 ], [ %i.ar, %scalar.ph286 ] ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %._crit_edge.us.us, %vector.body274
  %index275 = phi i64 [ %index.next280, %vector.body274 ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %vec.phi276 = phi <4 x i32> [ %i.ay, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %vec.phi277 = phi <4 x i32> [ %i.az, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 %index275 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %wide.load278 = load <4 x i8>, ptr %i.as, align 1
  %wide.load279 = load <4 x i8>, ptr %i.at, align 1
  %i.au = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load278, i1 false)
  %i.av = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load279, i1 false)
  %i.aw = zext <4 x i8> %i.au to <4 x i32>
  %i.ax = zext <4 x i8> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi276, %i.aw        ; 2 uses
  %i.az = add <4 x i32> %vec.phi277, %i.ax        ; 2 uses
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ba, label %middle.block281, label %vector.body274, !llvm.loop !45

middle.block281:                                  ; preds = %vector.body274
  %bin.rdx282 = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx282) ; 2 uses
  br i1 %cmp.n283, label %._crit_edge.us.us.1, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %._crit_edge.us.us, %middle.block281
  %indvars.iv200.1.ph = phi i64 [ 0, %._crit_edge.us.us ], [ %n.vec273, %middle.block281 ]
  %.092182.us.us.1.ph = phi i32 [ 0, %._crit_edge.us.us ], [ %i.bb, %middle.block281 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %indvars.iv200.1 = phi i64 [ %indvars.iv.next201.1, %scalar.ph270 ], [ %indvars.iv200.1.ph, %scalar.ph270.preheader ] ; 2 uses
  %.092182.us.us.1 = phi i32 [ %i.bg, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = tail call i8 @llvm.abs.i8(i8 %i.bd, i1 false)
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %.092182.us.us.1, %i.bf ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !46

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
end_hunk_2
begin_hunk_3_@stbir_quick_resize_helper:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 %9, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 %9, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i32 %8, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 132
  store i32 %8, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i32 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i32 %10, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 156
  store i32 %10, ptr %i.bb, align 4
  store i32 %11, ptr %i.an, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 148
  store i32 %11, ptr %i.bc, align 4
  %i.bd = call i32 @stbir_resize_extended(ptr noundef nonnull %12)
  %.not = icmp eq i32 %i.bd, 0
  %.not57 = icmp eq ptr %.1, null                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not57, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %.1) #52
  br label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.be = select i1 %.not57, ptr %.2, ptr %.1
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.h, %bb.i, %bb.b, %bb.a, %bb.j
  %.149 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ %i.be, %bb.j ], [ null, %bb.b ], [ null, %bb.i ], [ null, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #52
  ret ptr %.149
}

; Function Attrs: nounwind uwtable
define hidden ptr @stbir_resize_uint8_srgb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @stbir_resize_float_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @stbir_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @LoadImage(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.a) #52 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @GetFileExtension(ptr noundef %1) #52
  %i.d = load i32, ptr %i.a, align 4
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %0, ptr noundef %i.c, ptr noundef nonnull %i.b, i32 noundef %i.d)
  call void @UnloadFileData(ptr noundef nonnull %i.b) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret void
}

declare ptr @LoadFileData(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @LoadImageFromMemory(ptr dead_on_unwind noalias nofree writable sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.stbi__context, align 8      ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.qoi_desc, align 8           ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq i32 %3, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.11) #52
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.12) #52
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.13) #55
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #55
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.15) #55
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.16) #55
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.9) #55
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.10) #55
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i32 0, ptr %i.a, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %2, ptr %i.w, align 8
  %i.x = sext i32 %3 to i64
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 216
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = call fastcc ptr @stbi__load_and_postprocess_8bit(ptr noundef %4, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, i32 noundef 0) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  store ptr %i.ab, ptr %0, align 8
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ac, align 8
  %i.ad = load i32, ptr %i.a, align 4
  %switch.tableidx = add i32 %i.ad, -1            ; 2 uses
  %i.ae = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ae, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.af = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.LoadImageFromMemory, i64 %i.af
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %switch.ext, ptr %i.ag, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %thread-pre-split

bb.n:                                             ; preds = %bb.j
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.17) #55
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.18) #55
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = call ptr @qoi_decode(ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %5, i32 noundef %i.an) ; 2 uses
  store ptr %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load <2 x i32>, ptr %5, align 8
  store <2 x i32> %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = icmp eq i8 %i.as, 4
  %i.au = select i1 %i.at, i32 7, i32 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  br label %thread-pre-split

bb.q:                                             ; preds = %bb.o
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.19) #55
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.20) #55
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %thread-pre-split.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = tail call ptr @rl_load_dds_from_memory(ptr noundef nonnull %2, i32 poison, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be) ; 2 uses
  store ptr %i.bf, ptr %0, align 8
  br label %thread-pre-split

thread-pre-split.thread:                          ; preds = %bb.r
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.21) #52
  br label %bb.u

thread-pre-split:                                 ; preds = %bb.p, %bb.m, %bb.s
  %i.bg = phi ptr [ %i.bf, %bb.s ], [ %i.ab, %bb.m ], [ %i.ao, %bb.p ]
  %.not25 = icmp eq ptr %i.bg, null
  br i1 %.not25, label %bb.u, label %bb.t

bb.t:                                             ; preds = %thread-pre-split
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = call ptr @rlGetPixelFormatName(i32 noundef %i.bm) #52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i32, ptr %i.bo, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef %i.bn, i32 noundef %i.bp) #52
  br label %bb.v

bb.u:                                             ; preds = %thread-pre-split.thread, %thread-pre-split
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.23) #52
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.d, %bb.b
  ret void
}

declare ptr @GetFileExtension(ptr noundef) local_unnamed_addr #10

declare void @UnloadFileData(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @LoadImageRaw(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.a) #52 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %4, -1               ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 24
  br i1 %i.c, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.d
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.0.i = phi double [ 0.000000e+00, %bb.b ], [ %switch.load, %switch.lookup ]
  %i.e = sitofp i32 %2 to double
  %i.f = fmul nnan double %.0.i, %i.e
  %i.g = sitofp i32 %3 to double
  %i.h = fmul double %i.f, %i.g
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = icmp slt i32 %2, 4
  %i.k = icmp slt i32 %3, 4
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %bb.d, label %GetPixelDataSize.exit

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %4, -2
  %or.cond3.i = icmp eq i32 %i.l, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %4, -8
  %or.cond5.i = icmp eq i32 %i.m, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.i
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.016.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.d ], [ %spec.select.i, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %i.a, align 4              ; 2 uses
  %.not22 = icmp sgt i32 %.016.i, %i.n
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %GetPixelDataSize.exit
  %i.o = icmp slt i32 %5, 1
  %i.p = add nsw i32 %.016.i, %5
  %.not23 = icmp sgt i32 %i.p, %i.n
  %or.cond = select i1 %i.o, i1 true, i1 %.not23
  %i.q = zext nneg i32 %5 to i64
  %.0.idx = select i1 %or.cond, i64 0, i64 %i.q
  %.0 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.idx
  %i.r = sext i32 %.016.i to i64                  ; 2 uses
  %i.s = call noalias ptr @malloc(i64 noundef %i.r) #53 ; 2 uses
  store ptr %i.s, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %.0, i64 %i.r, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.w, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %GetPixelDataSize.exit
  call void @UnloadFileData(ptr noundef nonnull %i.b) #52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @GetPixelDataSize(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.b
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi double [ 0.000000e+00, %bb.a ], [ %switch.load, %switch.lookup ]
  %i.c = sitofp i32 %0 to double
  %i.d = fmul nnan double %.0, %i.c
  %i.e = sitofp i32 %1 to double
  %i.f = fmul double %i.d, %i.e
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = icmp slt i32 %0, 4
  %i.i = icmp slt i32 %1, 4
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %2, -2
  %or.cond3 = icmp eq i32 %i.j, 14
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %2, -8
  %or.cond5 = icmp eq i32 %i.k, 16
  %spec.select = select i1 %or.cond5, i32 16, i32 %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.016 = phi i32 [ %i.g, %bb.b ], [ 8, %bb.c ], [ %spec.select, %bb.d ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define void @LoadImageAnim(ptr dead_on_unwind noalias nofree writable sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
end_hunk_3
begin_hunk_4_@stbir__vertical_scatter_with_8_coeffs_cont:bb.a
  %i.ew = fmul <4 x float> %i.z, %i.ah
  %i.ex = fadd <4 x float> %i.ew, %i.ep
  %i.ey = fmul <4 x float> %i.z, %i.aj
  %i.ez = fadd <4 x float> %i.ey, %i.er
  %i.fa = fmul <4 x float> %i.z, %i.al
  %i.fb = fadd <4 x float> %i.fa, %i.et
  store <4 x float> %i.ev, ptr %.0344356, align 1
  store <4 x float> %i.ex, ptr %i.eo, align 1
  store <4 x float> %i.ez, ptr %i.eq, align 1
  store <4 x float> %i.fb, ptr %i.es, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.0362, i64 64 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0329361, i64 64 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0332360, i64 64 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0335359, i64 64 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0338358, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0341357, i64 64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0350354, i64 64 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0347355, i64 64 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0344356, i64 64 ; 2 uses
  %i.fl = ptrtoint ptr %i.fc to i64
  %i.fm = sub i64 %i.aa, %i.fl                    ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, 63
  br i1 %i.fn, label %.lr.ph, label %.preheader353, !llvm.loop !1040

.preheader:                                       ; preds = %.lr.ph381, %.preheader353
  %.1351.lcssa = phi ptr [ %.0350.lcssa, %.preheader353 ], [ %i.gu, %.lr.ph381 ]
  %.1348.lcssa = phi ptr [ %.0347.lcssa, %.preheader353 ], [ %i.gv, %.lr.ph381 ]
  %.1345.lcssa = phi ptr [ %.0344.lcssa, %.preheader353 ], [ %i.gw, %.lr.ph381 ]
  %.1342.lcssa = phi ptr [ %.0341.lcssa, %.preheader353 ], [ %i.gt, %.lr.ph381 ]
  %.1339.lcssa = phi ptr [ %.0338.lcssa, %.preheader353 ], [ %i.gs, %.lr.ph381 ]
  %.1336.lcssa = phi ptr [ %.0335.lcssa, %.preheader353 ], [ %i.gr, %.lr.ph381 ]
  %.1333.lcssa = phi ptr [ %.0332.lcssa, %.preheader353 ], [ %i.gq, %.lr.ph381 ]
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader353 ], [ %i.gp, %.lr.ph381 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader353 ], [ %i.go, %.lr.ph381 ] ; 2 uses
  %i.fo = icmp ult ptr %.1.lcssa, %3
  br i1 %i.fo, label %.lr.ph400, label %._crit_edge

.lr.ph381:                                        ; preds = %.preheader353, %.lr.ph381
  %.1380 = phi ptr [ %i.go, %.lr.ph381 ], [ %.0.lcssa, %.preheader353 ] ; 2 uses
  %.1330379 = phi ptr [ %i.gp, %.lr.ph381 ], [ %.0329.lcssa, %.preheader353 ] ; 4 uses
  %.1333378 = phi ptr [ %i.gq, %.lr.ph381 ], [ %.0332.lcssa, %.preheader353 ] ; 3 uses
  %.1336377 = phi ptr [ %i.gr, %.lr.ph381 ], [ %.0335.lcssa, %.preheader353 ] ; 3 uses
  %.1339376 = phi ptr [ %i.gs, %.lr.ph381 ], [ %.0338.lcssa, %.preheader353 ] ; 3 uses
  %.1342375 = phi ptr [ %i.gt, %.lr.ph381 ], [ %.0341.lcssa, %.preheader353 ] ; 3 uses
  %.1345374 = phi ptr [ %i.gw, %.lr.ph381 ], [ %.0344.lcssa, %.preheader353 ] ; 3 uses
  %.1348373 = phi ptr [ %i.gv, %.lr.ph381 ], [ %.0347.lcssa, %.preheader353 ] ; 3 uses
  %.1351372 = phi ptr [ %i.gu, %.lr.ph381 ], [ %.0350.lcssa, %.preheader353 ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1330379) #52, !srcloc !1041
  %i.fp = load <4 x float>, ptr %.1380, align 1   ; 8 uses
  %i.fq = load <4 x float>, ptr %.1330379, align 1
  %i.fr = fmul <4 x float> %i.s, %i.fp
  %i.fs = fadd <4 x float> %i.fq, %i.fr
  store <4 x float> %i.fs, ptr %.1330379, align 1
  %i.ft = load <4 x float>, ptr %.1333378, align 1
  %i.fu = fmul <4 x float> %i.t, %i.fp
  %i.fv = fadd <4 x float> %i.fu, %i.ft
  store <4 x float> %i.fv, ptr %.1333378, align 1
  %i.fw = load <4 x float>, ptr %.1336377, align 1
  %i.fx = fmul <4 x float> %i.u, %i.fp
  %i.fy = fadd <4 x float> %i.fx, %i.fw
  store <4 x float> %i.fy, ptr %.1336377, align 1
  %i.fz = load <4 x float>, ptr %.1339376, align 1
  %i.ga = fmul <4 x float> %i.v, %i.fp
  %i.gb = fadd <4 x float> %i.ga, %i.fz
  store <4 x float> %i.gb, ptr %.1339376, align 1
  %i.gc = load <4 x float>, ptr %.1342375, align 1
  %i.gd = fmul <4 x float> %i.w, %i.fp
  %i.ge = fadd <4 x float> %i.gd, %i.gc
  store <4 x float> %i.ge, ptr %.1342375, align 1
  %i.gf = load <4 x float>, ptr %.1351372, align 1
  %i.gg = fmul <4 x float> %i.x, %i.fp
  %i.gh = fadd <4 x float> %i.gg, %i.gf
  store <4 x float> %i.gh, ptr %.1351372, align 1
  %i.gi = load <4 x float>, ptr %.1348373, align 1
  %i.gj = fmul <4 x float> %i.y, %i.fp
  %i.gk = fadd <4 x float> %i.gj, %i.gi
  store <4 x float> %i.gk, ptr %.1348373, align 1
  %i.gl = load <4 x float>, ptr %.1345374, align 1
  %i.gm = fmul <4 x float> %i.z, %i.fp
  %i.gn = fadd <4 x float> %i.gm, %i.gl
  store <4 x float> %i.gn, ptr %.1345374, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.1380, i64 16 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.1330379, i64 16 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1333378, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1336377, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1339376, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.1342375, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1351372, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1348373, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1345374, i64 16 ; 2 uses
  %i.gx = ptrtoint ptr %i.go to i64
  %i.gy = sub i64 %i.aa, %i.gx
  %i.gz = icmp sgt i64 %i.gy, 15
  br i1 %i.gz, label %.lr.ph381, label %.preheader, !llvm.loop !1042

.lr.ph400:                                        ; preds = %.preheader, %.lr.ph400
  %.2399 = phi ptr [ %i.id, %.lr.ph400 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2331398 = phi ptr [ %i.ie, %.lr.ph400 ], [ %.1330.lcssa, %.preheader ] ; 4 uses
  %.2334397 = phi ptr [ %i.if, %.lr.ph400 ], [ %.1333.lcssa, %.preheader ] ; 3 uses
  %.2337396 = phi ptr [ %i.ig, %.lr.ph400 ], [ %.1336.lcssa, %.preheader ] ; 3 uses
  %.2340395 = phi ptr [ %i.ih, %.lr.ph400 ], [ %.1339.lcssa, %.preheader ] ; 3 uses
  %.2343394 = phi ptr [ %i.ii, %.lr.ph400 ], [ %.1342.lcssa, %.preheader ] ; 3 uses
  %.2346393 = phi ptr [ %i.il, %.lr.ph400 ], [ %.1345.lcssa, %.preheader ] ; 3 uses
  %.2349392 = phi ptr [ %i.ik, %.lr.ph400 ], [ %.1348.lcssa, %.preheader ] ; 3 uses
  %.2352391 = phi ptr [ %i.ij, %.lr.ph400 ], [ %.1351.lcssa, %.preheader ] ; 3 uses
  %i.ha = load float, ptr %.2399, align 4
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2331398) #52, !srcloc !1043
  %i.hb = load float, ptr %.2331398, align 4
  %i.hc = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <4 x float> %i.h, %i.hd            ; 4 uses
  %i.hf = extractelement <4 x float> %i.he, i64 0
  %i.hg = fadd float %i.hf, %i.hb
  store float %i.hg, ptr %.2331398, align 4
  %i.hh = load float, ptr %.2334397, align 4
  %i.hi = extractelement <4 x float> %i.he, i64 1
  %i.hj = fadd float %i.hi, %i.hh
  store float %i.hj, ptr %.2334397, align 4
  %i.hk = load float, ptr %.2337396, align 4
  %i.hl = extractelement <4 x float> %i.he, i64 2
  %i.hm = fadd float %i.hl, %i.hk
  store float %i.hm, ptr %.2337396, align 4
  %i.hn = load float, ptr %.2340395, align 4
  %i.ho = extractelement <4 x float> %i.he, i64 3
  %i.hp = fadd float %i.ho, %i.hn
  store float %i.hp, ptr %.2340395, align 4
  %i.hq = load float, ptr %.2343394, align 4
  %i.hr = fmul <4 x float> %i.r, %i.hd            ; 4 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 0
  %i.ht = fadd float %i.hs, %i.hq
  store float %i.ht, ptr %.2343394, align 4
  %i.hu = load float, ptr %.2352391, align 4
  %i.hv = extractelement <4 x float> %i.hr, i64 1
  %i.hw = fadd float %i.hv, %i.hu
  store float %i.hw, ptr %.2352391, align 4
  %i.hx = load float, ptr %.2349392, align 4
  %i.hy = extractelement <4 x float> %i.hr, i64 2
  %i.hz = fadd float %i.hy, %i.hx
  store float %i.hz, ptr %.2349392, align 4
  %i.ia = load float, ptr %.2346393, align 4
  %i.ib = extractelement <4 x float> %i.hr, i64 3
  %i.ic = fadd float %i.ib, %i.ia
  store float %i.ic, ptr %.2346393, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %.2399, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.2331398, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.2334397, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %.2337396, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.2340395, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.2343394, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.2352391, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.2349392, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %.2346393, i64 4
  %i.im = icmp ult ptr %i.id, %3
  br i1 %i.im, label %.lr.ph400, label %._crit_edge, !llvm.loop !1044

._crit_edge:                                      ; preds = %.lr.ph400, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #17

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.fshl.v8i16(<8 x i16>, <8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.fshl.v4i16(<4 x i16>, <4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn }
attributes #46 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #52 = { nounwind }
attributes #53 = { nounwind allocsize(0) }
attributes #54 = { nounwind allocsize(1) }
attributes #55 = { nounwind willreturn memory(read) }
attributes #56 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = distinct !{ptr @stbi_load_from_file, null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{!"branch_weights", i32 4, i32 12}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !7, !6}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !7, !6}
!14 = distinct !{ptr @stbi_load_from_file_16, null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !6}
!19 = distinct !{ptr @stbi_loadf_from_file, null, null, null}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !6, !7}
!23 = !{!"branch_weights", i32 4, i32 28}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !6}
!27 = distinct !{ptr @stbi_info_from_file, null, null, null}
!28 = distinct !{!28, !6, !7}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !7, !6}
end_hunk_4
