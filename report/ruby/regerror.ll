inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@llvm.va_end.p0
; Function Attrs: nounwind sspstrong uwtable
define dso_local void @onig_vsnprintf_with_pattern(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 20 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = ptrtoaddr ptr %i.a to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
end_hunk_0
begin_hunk_1_@onig_vsnprintf_with_pattern:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph122, %.loopexit89
  %.071121 = phi ptr [ %i.q, %.lr.ph122 ], [ %.6, %.loopexit89 ] ; 23 uses
  %.073120 = phi ptr [ %3, %.lr.ph122 ], [ %.477, %.loopexit89 ] ; 21 uses
  %.073120163 = ptrtoaddr ptr %.073120 to i64     ; 2 uses
  %.071121158 = ptrtoaddr ptr %.071121 to i64     ; 3 uses
  %i.x = call i32 @onigenc_mbclen(ptr noundef %.073120, ptr noundef nonnull %4, ptr noundef %2) #8
end_hunk_1
begin_hunk_2_@onig_vsnprintf_with_pattern:bb.a

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ac = phi i32 [ %i.y, %bb.d ], [ %.pr, %bb.e ]
  %i.ad = phi i32 [ %i.y, %bb.d ], [ %i.ab, %bb.e ] ; 8 uses
  %i.ae = icmp eq i32 %i.ac, 1
  %i.af = icmp sgt i32 %i.ad, 0                   ; 2 uses
  br i1 %i.ae, label %.preheader, label %.preheader92
end_hunk_2
begin_hunk_3_@onig_vsnprintf_with_pattern:bb.a
  br i1 %i.af, label %.lr.ph105.preheader.a, label %.loopexit89

.lr.ph105.preheader.a:                            ; preds = %.preheader
  %i.ag = zext nneg i32 %i.ad to i64              ; 5 uses
  %min.iters.check185 = icmp ult i32 %i.ad, 4
  %i.ah = sub i64 %.071121158, %.073120163
  %diff.check183 = icmp ult i64 %i.ah, 32
  %or.cond = select i1 %min.iters.check185, i1 true, i1 %diff.check183
  br i1 %or.cond, label %.lr.ph105.preheader228, label %vector.main.loop.iter.check216

vector.main.loop.iter.check216:                   ; preds = %.lr.ph105.preheader.a
  %min.iters.check217 = icmp ult i32 %i.ad, 32
  br i1 %min.iters.check217, label %vec.epilog.ph238, label %vector.ph186

vector.ph186:                                     ; preds = %vector.main.loop.iter.check216
  %n.mod.vf219 = and i64 %i.ag, 28
  %n.vec188 = and i64 %i.ag, 2147483616           ; 6 uses
  %i.ai = getelementptr i8, ptr %.071121, i64 %n.vec188 ; 2 uses
  %i.aj = getelementptr i8, ptr %.073120, i64 %n.vec188 ; 2 uses
  %.cast189 = trunc nuw nsw i64 %n.vec188 to i32
end_hunk_3
begin_hunk_4_@onig_vsnprintf_with_pattern:bb.a
  store <16 x i8> %wide.load195, ptr %i.am, align 1, !tbaa !23
  %index.next196 = add nuw i64 %index191, 32      ; 2 uses
  %i.an = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.an, label %middle.block229, label %vector.body190, !llvm.loop !32

middle.block229:                                  ; preds = %vector.body190
  %cmp.n230 = icmp eq i64 %n.vec188, %i.ag
  br i1 %cmp.n230, label %.loopexit89, label %vec.epilog.iter.check236

vec.epilog.iter.check236:                         ; preds = %middle.block229
  %min.epilog.iters.check237 = icmp eq i64 %n.mod.vf219, 0
  br i1 %min.epilog.iters.check237, label %.lr.ph105.preheader228, label %vec.epilog.ph238, !prof !35

vec.epilog.ph238:                                 ; preds = %vector.main.loop.iter.check216, %vec.epilog.iter.check236
  %vec.epilog.resume.val231 = phi i64 [ %n.vec188, %vec.epilog.iter.check236 ], [ 0, %vector.main.loop.iter.check216 ]
  %n.vec240 = and i64 %i.ag, 2147483644           ; 5 uses
  %7 = getelementptr i8, ptr %.071121, i64 %n.vec240 ; 2 uses
  %8 = getelementptr i8, ptr %.073120, i64 %n.vec240 ; 2 uses
  %.cast241 = trunc nuw nsw i64 %n.vec240 to i32
  %9 = sub nsw i32 %i.ad, %.cast241
  br label %vec.epilog.vector.body242

vec.epilog.vector.body242:                        ; preds = %vec.epilog.vector.body242, %vec.epilog.ph238
  %index243 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph238 ], [ %index.next247, %vec.epilog.vector.body242 ] ; 3 uses
  %next.gep244 = getelementptr i8, ptr %.071121, i64 %index243
  %next.gep245 = getelementptr i8, ptr %.073120, i64 %index243
  %wide.load246 = load <4 x i8>, ptr %next.gep245, align 1, !tbaa !23
  store <4 x i8> %wide.load246, ptr %next.gep244, align 1, !tbaa !23
  %index.next247 = add nuw i64 %index243, 4       ; 2 uses
  %10 = icmp eq i64 %index.next247, %n.vec240
  br i1 %10, label %middle.block197, label %vec.epilog.vector.body242, !llvm.loop !36

middle.block197:                                  ; preds = %vec.epilog.vector.body242
  %cmp.n198 = icmp eq i64 %n.vec240, %i.ag
  br i1 %cmp.n198, label %.loopexit89, label %.lr.ph105.preheader228

.lr.ph105.preheader228:                           ; preds = %.lr.ph105.preheader.a, %vec.epilog.iter.check236, %middle.block197
  %.172104.ph = phi ptr [ %.071121, %.lr.ph105.preheader.a ], [ %i.ai, %vec.epilog.iter.check236 ], [ %7, %middle.block197 ]
  %.174103.ph = phi ptr [ %.073120, %.lr.ph105.preheader.a ], [ %i.aj, %vec.epilog.iter.check236 ], [ %8, %middle.block197 ]
  %.078102.ph = phi i32 [ %i.ad, %.lr.ph105.preheader.a ], [ %i.ak, %vec.epilog.iter.check236 ], [ %9, %middle.block197 ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader228, %.lr.ph105
end_hunk_4
begin_hunk_5_@onig_vsnprintf_with_pattern:bb.a
  %i.ar = getelementptr i8, ptr %.172104, i64 1   ; 2 uses
  store i8 %i.aq, ptr %.172104, align 1, !tbaa !23
  %i.as = icmp samesign ugt i32 %.078102, 1
  br i1 %i.as, label %.lr.ph105, label %.loopexit89, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block269, %middle.block217, %.lr.ph99
  %.3.lcssa = phi ptr [ %.298, %.lr.ph99 ], [ %12, %middle.block217 ], [ %i.bf, %middle.block269 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.at = icmp samesign ugt i32 %.in, 1
  br i1 %i.at, label %.lr.ph99, label %.loopexit89, !llvm.loop !38

.lr.ph99:                                         ; preds = %.preheader92, %.loopexit
  %.in = phi i32 [ %i.au, %.loopexit ], [ %i.ad, %.preheader92 ] ; 2 uses
  %.298 = phi ptr [ %.3.lcssa, %.loopexit ], [ %.071121, %.preheader92 ] ; 7 uses
  %.27597 = phi ptr [ %i.av, %.loopexit ], [ %.073120, %.preheader92 ] ; 2 uses
  %i.au = add nsw i32 %.in, -1
  %i.av = getelementptr i8, ptr %.27597, i64 1    ; 2 uses
  %i.aw = load i8, ptr %.27597, align 1, !tbaa !23
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.66, i32 noundef %i.ax) #8 ; 0 uses
  %i.az = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.a) #8 ; 4 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader.a, label %.loopexit

.lr.ph.preheader.a:                               ; preds = %.lr.ph99
  %.298203 = ptrtoaddr ptr %.298 to i64
  %i.bb = zext nneg i32 %i.az to i64              ; 8 uses
  %i.bc = getelementptr i8, ptr %i.a, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 -1
  %min.iters.check206 = icmp ult i32 %i.az, 4
  %i.bd = sub i64 %.298203, %i.c
  %diff.check204 = icmp ult i64 %i.bd, 32
  %or.cond221 = select i1 %min.iters.check206, i1 true, i1 %diff.check204
  br i1 %or.cond221, label %.lr.ph.preheader224, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %.lr.ph.preheader.a
  %min.iters.check258 = icmp ult i32 %i.az, 32
  br i1 %min.iters.check258, label %vec.epilog.ph277, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check257
  %n.mod.vf260 = and i64 %i.bb, 28
  %n.vec209 = and i64 %i.bb, 2147483616           ; 5 uses
  %i.be = getelementptr i8, ptr %i.a, i64 %n.vec209
  %i.bf = getelementptr i8, ptr %.298, i64 %n.vec209 ; 2 uses
  br label %vector.body210
end_hunk_5
begin_hunk_6_@onig_vsnprintf_with_pattern:bb.a
  store <16 x i8> %wide.load215, ptr %i.bh, align 1, !tbaa !23
  %index.next216 = add nuw i64 %index211, 32      ; 2 uses
  %i.bi = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.bi, label %middle.block269, label %vector.body210, !llvm.loop !39

middle.block269:                                  ; preds = %vector.body210
  %cmp.n270 = icmp eq i64 %n.vec209, %i.bb
  br i1 %cmp.n270, label %.loopexit, label %vec.epilog.iter.check275

vec.epilog.iter.check275:                         ; preds = %middle.block269
  %min.epilog.iters.check276 = icmp eq i64 %n.mod.vf260, 0
  br i1 %min.epilog.iters.check276, label %.lr.ph.preheader224, label %vec.epilog.ph277, !prof !35

vec.epilog.ph277:                                 ; preds = %vector.main.loop.iter.check257, %vec.epilog.iter.check275
  %vec.epilog.resume.val271 = phi i64 [ %n.vec209, %vec.epilog.iter.check275 ], [ 0, %vector.main.loop.iter.check257 ]
  %n.vec279 = and i64 %i.bb, 2147483644           ; 4 uses
  %11 = getelementptr i8, ptr %i.a, i64 %n.vec279
  %12 = getelementptr i8, ptr %.298, i64 %n.vec279 ; 2 uses
  br label %vec.epilog.vector.body280

vec.epilog.vector.body280:                        ; preds = %vec.epilog.vector.body280, %vec.epilog.ph277
  %index281 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph277 ], [ %index.next285, %vec.epilog.vector.body280 ] ; 3 uses
  %next.gep282 = getelementptr i8, ptr %i.a, i64 %index281
  %next.gep283 = getelementptr i8, ptr %.298, i64 %index281
  %wide.load284 = load <4 x i8>, ptr %next.gep282, align 1, !tbaa !23
  store <4 x i8> %wide.load284, ptr %next.gep283, align 1, !tbaa !23
  %index.next285 = add nuw i64 %index281, 4       ; 2 uses
  %13 = icmp eq i64 %index.next285, %n.vec279
  br i1 %13, label %middle.block217, label %vec.epilog.vector.body280, !llvm.loop !40

middle.block217:                                  ; preds = %vec.epilog.vector.body280
  %cmp.n218 = icmp eq i64 %n.vec279, %i.bb
  br i1 %cmp.n218, label %.loopexit, label %.lr.ph.preheader224

.lr.ph.preheader224:                              ; preds = %.lr.ph.preheader.a, %vec.epilog.iter.check275, %middle.block217
  %.07095.ph = phi ptr [ %i.a, %.lr.ph.preheader.a ], [ %i.be, %vec.epilog.iter.check275 ], [ %11, %middle.block217 ] ; 3 uses
  %.394.ph = phi ptr [ %.298, %.lr.ph.preheader.a ], [ %i.bf, %vec.epilog.iter.check275 ], [ %12, %middle.block217 ] ; 2 uses
  %i.bj = add i64 %i.b, %i.bb
  %.07095.ph236 = ptrtoint ptr %.07095.ph to i64  ; 2 uses
  %i.bk = sub i64 %i.bj, %.07095.ph236
end_hunk_6
begin_hunk_7_@onig_vsnprintf_with_pattern:bb.a
  store i8 %i.bo, ptr %.394.prol, align 1, !tbaa !23
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !41

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader224
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader224 ], [ %i.bp, %.lr.ph.prol ]
end_hunk_7
begin_hunk_8_@onig_vsnprintf_with_pattern:bb.a
  %i.co = getelementptr i8, ptr %.394, i64 8      ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !23
  %exitcond.not.7 = icmp eq ptr %i.cj, %scevgep
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !43

bb.g:                                             ; preds = %bb.c
  %i.cp = load i8, ptr %.073120, align 1, !tbaa !23 ; 2 uses
end_hunk_8
begin_hunk_9_@onig_vsnprintf_with_pattern:bb.a
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr i8, ptr %.073120, i64 1   ; 9 uses
  store i8 92, ptr %.071121, align 1, !tbaa !23
  %i.cr = load i32, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %i.cs = load i32, ptr %i.t, align 4, !tbaa !19
end_hunk_9
begin_hunk_10_@onig_vsnprintf_with_pattern:bb.a
  br label %select.unfold

select.unfold:                                    ; preds = %bb.i, %bb.j
  %i.cw = phi i32 [ %i.cv, %bb.j ], [ %i.cr, %bb.i ] ; 7 uses
  %.4108 = getelementptr i8, ptr %.071121, i64 1  ; 6 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph112.preheader.a, label %.loopexit89

.lr.ph112.preheader.a:                            ; preds = %select.unfold
  %i.cy = zext nneg i32 %i.cw to i64              ; 5 uses
  %min.iters.check166 = icmp ult i32 %i.cw, 4
  %i.cz = sub i64 %.071121158, %.073120163
  %diff.check164 = icmp ult i64 %i.cz, 32
  %or.cond222 = select i1 %min.iters.check166, i1 true, i1 %diff.check164
  br i1 %or.cond222, label %.lr.ph112.preheader226, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %.lr.ph112.preheader.a
  %min.iters.check178 = icmp ult i32 %i.cw, 32
  br i1 %min.iters.check178, label %vec.epilog.ph198, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check177
  %n.mod.vf180 = and i64 %i.cy, 28
  %n.vec169 = and i64 %i.cy, 2147483616           ; 6 uses
  %i.da = getelementptr i8, ptr %.4108, i64 %n.vec169 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cq, i64 %n.vec169 ; 2 uses
  %.cast = trunc nuw nsw i64 %n.vec169 to i32
end_hunk_10
begin_hunk_11_@onig_vsnprintf_with_pattern:bb.a
  store <16 x i8> %wide.load175, ptr %i.de, align 1, !tbaa !23
  %index.next176 = add nuw i64 %index171, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.df, label %middle.block189, label %vector.body170, !llvm.loop !44

middle.block189:                                  ; preds = %vector.body170
  %cmp.n190 = icmp eq i64 %n.vec169, %i.cy
  br i1 %cmp.n190, label %.loopexit89, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block189
  %min.epilog.iters.check197 = icmp eq i64 %n.mod.vf180, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph112.preheader226, label %vec.epilog.ph198, !prof !35

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check177, %vec.epilog.iter.check196
  %vec.epilog.resume.val191 = phi i64 [ %n.vec169, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check177 ]
  %n.vec200 = and i64 %i.cy, 2147483644           ; 5 uses
  %14 = getelementptr i8, ptr %.4108, i64 %n.vec200 ; 2 uses
  %15 = getelementptr i8, ptr %i.cq, i64 %n.vec200 ; 2 uses
  %.cast201 = trunc nuw nsw i64 %n.vec200 to i32
  %16 = sub nsw i32 %i.cw, %.cast201
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph198
  %index203 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph198 ], [ %index.next207, %vec.epilog.vector.body202 ] ; 3 uses
  %next.gep204 = getelementptr i8, ptr %.4108, i64 %index203
  %next.gep205 = getelementptr i8, ptr %i.cq, i64 %index203
  %wide.load206 = load <4 x i8>, ptr %next.gep205, align 1, !tbaa !23
  store <4 x i8> %wide.load206, ptr %next.gep204, align 1, !tbaa !23
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %17 = icmp eq i64 %index.next207, %n.vec200
  br i1 %17, label %middle.block177, label %vec.epilog.vector.body202, !llvm.loop !45

middle.block177:                                  ; preds = %vec.epilog.vector.body202
  %cmp.n178 = icmp eq i64 %n.vec200, %i.cy
  br i1 %cmp.n178, label %.loopexit89, label %.lr.ph112.preheader226

.lr.ph112.preheader226:                           ; preds = %.lr.ph112.preheader.a, %vec.epilog.iter.check196, %middle.block177
  %.4111.ph = phi ptr [ %.4108, %.lr.ph112.preheader.a ], [ %i.da, %vec.epilog.iter.check196 ], [ %14, %middle.block177 ]
  %.376110.ph = phi ptr [ %i.cq, %.lr.ph112.preheader.a ], [ %i.db, %vec.epilog.iter.check196 ], [ %15, %middle.block177 ]
  %.280109.ph = phi i32 [ %i.cw, %.lr.ph112.preheader.a ], [ %i.dc, %vec.epilog.iter.check196 ], [ %16, %middle.block177 ]
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader226, %.lr.ph112
end_hunk_11
begin_hunk_12_@onig_vsnprintf_with_pattern:bb.a
  store i8 %i.di, ptr %.4111, align 1, !tbaa !23
  %.4 = getelementptr i8, ptr %.4111, i64 1       ; 2 uses
  %i.dj = icmp samesign ugt i32 %.280109, 1
  br i1 %i.dj, label %.lr.ph112, label %.loopexit89, !llvm.loop !46

bb.k:                                             ; preds = %bb.g
  %i.dk = getelementptr i8, ptr %.071121, i64 1
end_hunk_12
begin_hunk_13_@onig_vsnprintf_with_pattern:bb.a

bb.l:                                             ; preds = %bb.g
  %i.do = zext i8 %i.cp to i32
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.dq = call i32 %i.dp(i32 noundef %i.do, i32 noundef 7, ptr noundef %2) #8
  %.not86 = icmp eq i32 %i.dq, 0
  br i1 %.not86, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.ds = load i8, ptr %.073120, align 1, !tbaa !23
  %i.dt = zext i8 %i.ds to i32
  %i.du = call i32 %i.dr(i32 noundef %i.dt, i32 noundef 9, ptr noundef nonnull %2) #8
end_hunk_13
begin_hunk_14_@onig_vsnprintf_with_pattern:bb.a
  br i1 %.not87, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.dw = load i8, ptr %.073120, align 1, !tbaa !23
  %i.dx = zext i8 %i.dw to i32
  %i.dy = call i32 %i.dv(i32 noundef %i.dx, i32 noundef 3, ptr noundef nonnull %2) #8
end_hunk_14
begin_hunk_15_@onig_vsnprintf_with_pattern:bb.a
  br i1 %.not88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dz = getelementptr i8, ptr %.073120, i64 1   ; 5 uses
  %i.ea = load i8, ptr %.073120, align 1, !tbaa !23
  %i.eb = zext i8 %i.ea to i32
  %i.ec = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.66, i32 noundef %i.eb) #8 ; 0 uses
  %i.ed = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.a) #8 ; 4 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph118.preheader.a, label %.loopexit89

.lr.ph118.preheader.a:                            ; preds = %bb.o
  %i.ef = zext nneg i32 %i.ed to i64              ; 8 uses
  %i.eg = getelementptr i8, ptr %i.a, i64 %i.ef
  %scevgep132 = getelementptr i8, ptr %i.eg, i64 -1
  %min.iters.check = icmp ult i32 %i.ed, 4
  %i.eh = sub i64 %.071121158, %i.c
  %diff.check = icmp ult i64 %i.eh, 32
  %or.cond223 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond223, label %.lr.ph118.preheader225, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph118.preheader.a
  %min.iters.check159 = icmp ult i32 %i.ed, 32
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ef, 28
  %n.vec = and i64 %i.ef, 2147483616              ; 5 uses
  %i.ei = getelementptr i8, ptr %i.a, i64 %n.vec
  %i.ej = getelementptr i8, ptr %.071121, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_15
begin_hunk_16_@onig_vsnprintf_with_pattern:bb.a
  store <16 x i8> %wide.load160, ptr %i.el, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ef
  br i1 %cmp.n, label %.loopexit89, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph118.preheader225, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.ef, 2147483644           ; 4 uses
  %18 = getelementptr i8, ptr %i.a, i64 %n.vec164
  %19 = getelementptr i8, ptr %.071121, i64 %n.vec164 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %i.a, i64 %index165
  %next.gep167 = getelementptr i8, ptr %.071121, i64 %index165
  %wide.load168 = load <4 x i8>, ptr %next.gep166, align 1, !tbaa !23
  store <4 x i8> %wide.load168, ptr %next.gep167, align 1, !tbaa !23
  %index.next169 = add nuw i64 %index165, 4       ; 2 uses
  %20 = icmp eq i64 %index.next169, %n.vec164
  br i1 %20, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !49

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec164, %i.ef
  br i1 %cmp.n.a, label %.loopexit89, label %.lr.ph118.preheader225

.lr.ph118.preheader225:                           ; preds = %.lr.ph118.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.1117.ph = phi ptr [ %i.a, %.lr.ph118.preheader.a ], [ %i.ei, %vec.epilog.iter.check ], [ %18, %middle.block.a ] ; 3 uses
  %.5116.ph = phi ptr [ %.071121, %.lr.ph118.preheader.a ], [ %i.ej, %vec.epilog.iter.check ], [ %19, %middle.block.a ] ; 2 uses
  %i.en = add i64 %i.b, %i.ef
  %.1117.ph237 = ptrtoint ptr %.1117.ph to i64    ; 2 uses
  %i.eo = sub i64 %i.en, %.1117.ph237
end_hunk_16
begin_hunk_17_@onig_vsnprintf_with_pattern:bb.a
  store i8 %i.es, ptr %.5116.prol, align 1, !tbaa !23
  %prol.iter240.next = add i64 %prol.iter240, 1   ; 2 uses
  %prol.iter240.cmp.not = icmp eq i64 %prol.iter240.next, %xtraiter238
  br i1 %prol.iter240.cmp.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol, !llvm.loop !50

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader225
  %.lcssa235.unr = phi ptr [ poison, %.lr.ph118.preheader225 ], [ %i.et, %.lr.ph118.prol ]
end_hunk_17
begin_hunk_18_@onig_vsnprintf_with_pattern:bb.a
  %i.fs = getelementptr i8, ptr %.5116, i64 8     ; 2 uses
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !23
  %exitcond133.not.7 = icmp eq ptr %i.fn, %scevgep132
  br i1 %exitcond133.not.7, label %.loopexit89, label %.lr.ph118, !llvm.loop !51

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.ft = getelementptr i8, ptr %.073120, i64 1
end_hunk_18
begin_hunk_19_@onig_vsnprintf_with_pattern:bb.a
  store i8 %i.fu, ptr %.071121, align 1, !tbaa !23
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit, %.lr.ph105, %.lr.ph112, %.lr.ph118.prol.loopexit, %.lr.ph118, %middle.block229, %middle.block197, %middle.block189, %middle.block177, %middle.block, %middle.block.a, %.thread, %.preheader92, %.preheader, %select.unfold, %bb.o, %bb.p, %bb.k
  %.477 = phi ptr [ %i.dz, %bb.o ], [ %i.cq, %.thread ], [ %i.dz, %.lr.ph118.prol.loopexit ], [ %i.dl, %bb.k ], [ %i.ft, %bb.p ], [ %i.dz, %middle.block ], [ %i.cq, %select.unfold ], [ %.073120, %.preheader ], [ %.073120, %.preheader92 ], [ %i.ap, %.lr.ph105 ], [ %i.dh, %.lr.ph112 ], [ %i.dz, %middle.block.a ], [ %15, %middle.block177 ], [ %i.db, %middle.block189 ], [ %8, %middle.block197 ], [ %i.aj, %middle.block229 ], [ %i.dz, %.lr.ph118 ], [ %i.av, %.loopexit ] ; 2 uses
  %.6 = phi ptr [ %.071121, %bb.o ], [ %.4108141, %.thread ], [ %i.fs, %.lr.ph118 ], [ %i.dn, %bb.k ], [ %i.fv, %bb.p ], [ %i.ej, %middle.block ], [ %.4108, %select.unfold ], [ %.071121, %.preheader ], [ %.071121, %.preheader92 ], [ %i.ar, %.lr.ph105 ], [ %.4, %.lr.ph112 ], [ %19, %middle.block.a ], [ %14, %middle.block177 ], [ %i.da, %middle.block189 ], [ %7, %middle.block197 ], [ %i.ai, %middle.block229 ], [ %.lcssa235.unr, %.lr.ph118.prol.loopexit ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.fw = icmp ult ptr %.477, %4
  br i1 %i.fw, label %bb.c, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.loopexit89, %bb.b
  %.071.lcssa = phi ptr [ %i.q, %bb.b ], [ %.6, %.loopexit89 ] ; 2 uses
end_hunk_19
begin_hunk_20_@llvm.memcpy.p0.p0.i64
!32 = distinct !{!32, !26, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"branch_weights", i32 4, i32 28}
!36 = distinct !{!36, !26, !33, !34}
!37 = distinct !{!37, !26, !33}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26, !33, !34}
!40 = distinct !{!40, !26, !33, !34}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !26, !33}
!44 = distinct !{!44, !26, !33, !34}
!45 = distinct !{!45, !26, !33, !34}
!46 = distinct !{!46, !26, !33}
!47 = !{!20, !12, i64 88}
!48 = distinct !{!48, !26, !33, !34}
!49 = distinct !{!49, !26, !33, !34}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !26, !33}
!52 = distinct !{!52, !26}
end_hunk_20
