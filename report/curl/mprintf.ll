Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/mprintf?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@curl_mfprintf
define i32 @curl_mfprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call fastcc i32 @formatf(ptr noundef %0, ptr noundef nonnull @fputc_wrapper, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @curl_mvsprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !18
  %i.b = call fastcc i32 @formatf(ptr noundef nonnull %i.a, ptr noundef nonnull @storebuffer, ptr noundef %1, ptr noundef %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 1, !tbaa !15
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @curl_mvprintf(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.b = tail call fastcc i32 @formatf(ptr noundef %i.a, ptr noundef nonnull @fputc_wrapper, ptr noundef %0, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @curl_mvfprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @formatf(ptr noundef %0, ptr noundef nonnull @fputc_wrapper, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @out_number(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 14 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !23     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68   ; 4 uses
  %i.f = and i32 %i.b, 8
  %i.g = icmp ne i32 %i.f, 0
  %i.h = and i32 %i.b, 131072
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.b, 4
  %.not174 = icmp ne i32 %i.i, 0                  ; 2 uses
  br i1 %.not174, label %.loopexit216, label %.preheader215

.preheader215:                                    ; preds = %bb.b
  %i.j = add nsw i32 %i.c, -1                     ; 2 uses
  %i.k = icmp sgt i32 %i.c, 1
  br i1 %i.k, label %.lr.ph, label %.loopexit216

.lr.ph:                                           ; preds = %.preheader215, %bb.c
  %i.l = phi i32 [ %i.p, %bb.c ], [ %i.j, %.preheader215 ] ; 2 uses
  %i.m = tail call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20
  %.not175 = icmp eq i32 %i.m, 0
  br i1 %.not175, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %6, align 4, !tbaa !16
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %6, align 4, !tbaa !16
  %i.p = add nsw i32 %i.l, -1
  %i.q = icmp sgt i32 %i.l, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit216, !llvm.loop !60

.loopexit216:                                     ; preds = %bb.c, %.preheader215, %bb.b
  %.1128 = phi i32 [ %i.c, %bb.b ], [ %i.j, %.preheader215 ], [ 0, %bb.c ] ; 2 uses
  %i.r = trunc i64 %3 to i8
  %i.s = tail call i32 %1(i8 noundef zeroext %i.r, ptr noundef %0) #11, !callees !20
  %.not176 = icmp eq i32 %i.s, 0
  br i1 %.not176, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.loopexit216
  %i.t = load i32, ptr %6, align 4, !tbaa !16
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %6, align 4, !tbaa !16
  %i.v = icmp sgt i32 %.1128, 1
  %or.cond254 = select i1 %.not174, i1 %i.v, i1 false
  br i1 %or.cond254, label %.lr.ph223, label %.loopexit

.lr.ph223:                                        ; preds = %bb.d, %bb.e
  %.in = phi i32 [ %i.x, %bb.e ], [ %.1128, %bb.d ] ; 2 uses
  %i.w = tail call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20
  %.not177.not.not = icmp ne i32 %i.w, 0          ; 3 uses
  br i1 %.not177.not.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph223
  %i.x = add nsw i32 %.in, -1
  %i.y = load i32, ptr %6, align 4, !tbaa !16
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %6, align 4, !tbaa !16
  %i.aa = icmp sgt i32 %.in, 2
  br i1 %i.aa, label %.lr.ph223, label %.loopexit, !llvm.loop !61

bb.f:                                             ; preds = %bb.a
  %i.ab = and i32 %i.b, 1024
  %.not144.not = icmp eq i32 %i.ab, 0
  br i1 %.not144.not, label %bb.g, label %.preheader210

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.b, 2048
  %.not145 = icmp eq i32 %i.ac, 0
  br i1 %.not145, label %.preheader208, label %.split195

.split195:                                        ; preds = %bb.g
  %i.ad = and i32 %i.b, 4096
  %.not147 = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not147, ptr @Curl_ldigits, ptr @Curl_udigits
  br label %.preheader210

.preheader210:                                    ; preds = %bb.f, %.split195
  %.0124191.ph = phi i64 [ 16, %.split195 ], [ 8, %bb.f ] ; 3 uses
  %or.cond5189.ph = phi i1 [ %i.g, %.split195 ], [ false, %bb.f ] ; 2 uses
  %.0134184.ph = phi ptr [ %i.ae, %.split195 ], [ @Curl_ldigits, %bb.f ]
  %i.af = icmp eq i32 %i.e, -1
  %spec.store.select = select i1 %i.af, i32 1, i32 %i.e ; 2 uses
  %.not148227 = icmp eq i64 %3, 0
  br i1 %.not148227, label %.loopexit209, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %.preheader210
  %i.ag = add nsw i64 %.0124191.ph, -1
  %i.ah = tail call range(i64 3, 65) i64 @llvm.cttz.i64(i64 %.0124191.ph, i1 true)
  br label %.lr.ph230

.preheader208:                                    ; preds = %bb.g
  %i.ai = and i32 %i.b, 512
  %.not146 = icmp eq i32 %i.ai, 0                 ; 2 uses
  %i.aj = icmp slt i64 %4, 0                      ; 2 uses
  %i.ak = sub i64 0, %4
  %.0125187.ph = and i1 %.not146, %i.aj           ; 2 uses
  %i.al = and i1 %.not146, %i.aj
  %.1136.ph = select i1 %i.al, i64 %i.ak, i64 %3  ; 2 uses
  %i.am = icmp eq i32 %i.e, -1
  %spec.store.select272 = select i1 %i.am, i32 1, i32 %i.e ; 2 uses
  %.not149232 = icmp eq i64 %.1136.ph, 0
  br i1 %.not149232, label %.loopexit209, label %.lr.ph235

.lr.ph235:                                        ; preds = %.preheader208, %.lr.ph235
  %.0123.idx234 = phi i64 [ %.0123.add, %.lr.ph235 ], [ 324, %.preheader208 ] ; 2 uses
  %.1136233 = phi i64 [ %i.aq, %.lr.ph235 ], [ %.1136.ph, %.preheader208 ] ; 3 uses
  %.0123.ptr = getelementptr inbounds i8, ptr %5, i64 %.0123.idx234
  %i.an = urem i64 %.1136233, 10
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %i.ap = or disjoint i8 %i.ao, 48
  %.0123.add = add nsw i64 %.0123.idx234, -1      ; 2 uses
  store i8 %i.ap, ptr %.0123.ptr, align 1, !tbaa !15
  %i.aq = udiv i64 %.1136233, 10
  %.not149 = icmp ult i64 %.1136233, 10
  br i1 %.not149, label %.loopexit209, label %.lr.ph235, !llvm.loop !62

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %.1.idx229 = phi i64 [ %.1.add, %.lr.ph230 ], [ 324, %.lr.ph230.preheader ] ; 2 uses
  %.2137228 = phi i64 [ %i.au, %.lr.ph230 ], [ %3, %.lr.ph230.preheader ] ; 3 uses
  %.1.ptr = getelementptr inbounds i8, ptr %5, i64 %.1.idx229
  %i.ar = and i64 %.2137228, %i.ag
  %i.as = getelementptr inbounds nuw i8, ptr %.0134184.ph, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %.1.add = add nsw i64 %.1.idx229, -1            ; 2 uses
  store i8 %i.at, ptr %.1.ptr, align 1, !tbaa !15
  %i.au = lshr i64 %.2137228, %i.ah
  %.not148 = icmp ugt i64 %.0124191.ph, %.2137228
  br i1 %.not148, label %.loopexit209, label %.lr.ph230, !llvm.loop !63

.loopexit209:                                     ; preds = %.lr.ph230, %.lr.ph235, %.preheader210, %.preheader208
  %spec.store.select192 = phi i32 [ %spec.store.select272, %.preheader208 ], [ %spec.store.select, %.preheader210 ], [ %spec.store.select272, %.lr.ph235 ], [ %spec.store.select, %.lr.ph230 ] ; 2 uses
  %or.cond5188 = phi i1 [ false, %.preheader208 ], [ %or.cond5189.ph, %.preheader210 ], [ false, %.lr.ph235 ], [ %or.cond5189.ph, %.lr.ph230 ] ; 2 uses
  %.0125185 = phi i1 [ %.0125187.ph, %.preheader208 ], [ false, %.preheader210 ], [ %.0125187.ph, %.lr.ph235 ], [ false, %.lr.ph230 ] ; 2 uses
  %.2.idx = phi i64 [ 324, %.preheader208 ], [ 324, %.preheader210 ], [ %.0123.add, %.lr.ph235 ], [ %.1.add, %.lr.ph230 ] ; 9 uses
  %i.av = trunc i64 %.2.idx to i32                ; 2 uses
  %i.aw = sub i32 324, %i.av                      ; 2 uses
  %i.ax = sub nsw i32 %i.c, %i.aw                 ; 3 uses
  %i.ay = sub nsw i32 %spec.store.select192, %i.aw ; 3 uses
  %i.az = and i32 %i.b, 1032
  %or.cond = icmp eq i32 %i.az, 1032
  %i.ba = icmp slt i32 %i.ay, 1
  %or.cond3 = select i1 %or.cond, i1 %i.ba, i1 false
  br i1 %or.cond3, label %.thread, label %bb.h

.thread:                                          ; preds = %.loopexit209
  %.2.ptr = getelementptr inbounds i8, ptr %5, i64 %.2.idx
  %.2.add = add nsw i64 %.2.idx, -1
  store i8 48, ptr %.2.ptr, align 1, !tbaa !15
  %i.bb = add nsw i32 %i.ax, -1
  br label %.loopexit207.a

bb.h:                                             ; preds = %.loopexit209
  %i.bc = icmp sgt i32 %i.ay, 0
  br i1 %i.bc, label %bb.i, label %.loopexit207.a

bb.i:                                             ; preds = %bb.h
  %7 = sub nsw i32 %i.ax, %i.ay                   ; 2 uses
  %i.bd = icmp sgt i64 %.2.idx, -1
  br i1 %i.bd, label %.lr.ph239.preheader, label %.loopexit207.a

.lr.ph239.preheader:                              ; preds = %bb.i
  %i.be = add i32 %spec.store.select192, %i.av
  %i.bf = add i32 %i.be, -325
  %i.bg = zext i32 %i.bf to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %.2.idx, i64 %i.bg) ; 3 uses
  %i.bh = sub nsw i64 %.2.idx, %umin
  %scevgep = getelementptr i8, ptr %5, i64 %i.bh
  %i.bi = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.bi, i1 false), !tbaa !15
  %i.bj = xor i64 %umin, -1
  %i.bk = add nsw i64 %.2.idx, %i.bj
  br label %.loopexit207.a

.loopexit207.a:                                   ; preds = %.lr.ph239.preheader, %bb.i, %.thread, %bb.h
  %.4131 = phi i32 [ %i.bb, %.thread ], [ %i.ax, %bb.h ], [ %7, %bb.i ], [ %7, %.lr.ph239.preheader ] ; 2 uses
  %.5.idx = phi i64 [ %.2.add, %.thread ], [ %.2.idx, %bb.h ], [ %.2.idx, %bb.i ], [ %i.bk, %.lr.ph239.preheader ] ; 2 uses
  %i.bl = add nsw i32 %.4131, -2
  %spec.select178 = select i1 %or.cond5188, i32 %i.bl, i32 %.4131
  %i.bm = and i32 %i.b, 2
  %.not150 = icmp eq i32 %i.bm, 0
  %i.bn = and i32 %i.b, 1
  %.not151 = icmp eq i32 %i.bn, 0
  %i.bo = and i32 %i.b, 3
  %i.bp = icmp ne i32 %i.bo, 0
  %or.cond180.not = or i1 %i.bp, %.0125185
  %i.bq = sext i1 %or.cond180.not to i32
  %.6133 = add nsw i32 %spec.select178, %i.bq     ; 3 uses
  %i.br = and i32 %i.b, 4
  %.not152.not = icmp ne i32 %i.br, 0
  %i.bs = and i32 %i.b, 260                       ; 2 uses
  %or.cond181 = icmp eq i32 %i.bs, 0
  br i1 %or.cond181, label %.preheader204, label %.loopexit205

.preheader204:                                    ; preds = %.loopexit207.a
  %i.bt = add nsw i32 %.6133, -1                  ; 2 uses
  %i.bu = icmp sgt i32 %.6133, 0
  br i1 %i.bu, label %.lr.ph241, label %.loopexit205

.lr.ph241:                                        ; preds = %.preheader204, %bb.j
  %i.bv = phi i32 [ %i.bz, %bb.j ], [ %i.bt, %.preheader204 ] ; 2 uses
  %i.bw = tail call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20
  %.not154 = icmp eq i32 %i.bw, 0
  br i1 %.not154, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph241
  %i.bx = load i32, ptr %6, align 4, !tbaa !16
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %6, align 4, !tbaa !16
  %i.bz = add nsw i32 %i.bv, -1
  %i.ca = icmp sgt i32 %i.bv, 0
  br i1 %i.ca, label %.lr.ph241, label %.loopexit205, !llvm.loop !64

.loopexit205:                                     ; preds = %bb.j, %.preheader204, %.loopexit207.a
  %.8 = phi i32 [ %.6133, %.loopexit207.a ], [ %i.bt, %.preheader204 ], [ -1, %bb.j ] ; 3 uses
  br i1 %.0125185, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit205
  %i.cb = tail call i32 %1(i8 noundef zeroext 45, ptr noundef %0) #11, !callees !20
  %.not159 = icmp eq i32 %i.cb, 0
  br i1 %.not159, label %.sink.split, label %.loopexit

bb.l:                                             ; preds = %.loopexit205
  br i1 %.not150, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call i32 %1(i8 noundef zeroext 43, ptr noundef %0) #11, !callees !20
  %.not158 = icmp eq i32 %i.cc, 0
  br i1 %.not158, label %.sink.split, label %.loopexit

bb.n:                                             ; preds = %bb.l
  br i1 %.not151, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = tail call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20
  %.not157 = icmp eq i32 %i.cd, 0
  br i1 %.not157, label %.sink.split, label %.loopexit

.sink.split:                                      ; preds = %bb.o, %bb.m, %bb.k
  %i.ce = load i32, ptr %6, align 4, !tbaa !16
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %6, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n
  br i1 %or.cond5188, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cg = tail call i32 %1(i8 noundef zeroext 48, ptr noundef %0) #11, !callees !20
  %.not160 = icmp eq i32 %i.cg, 0
  br i1 %.not160, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ch = load i32, ptr %6, align 4, !tbaa !16
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %6, align 4, !tbaa !16
  %i.cj = and i32 %i.b, 4096
  %.not161 = icmp eq i32 %i.cj, 0
  br i1 %.not161, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = tail call i32 %1(i8 noundef zeroext 88, ptr noundef %0) #11, !callees !20
  %.not163 = icmp eq i32 %i.ck, 0
  br i1 %.not163, label %.sink.split281, label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.cl = tail call i32 %1(i8 noundef zeroext 120, ptr noundef %0) #11, !callees !20
  %.not162 = icmp eq i32 %i.cl, 0
  br i1 %.not162, label %.sink.split281, label %.loopexit

.sink.split281:                                   ; preds = %bb.t, %bb.s
  %i.cm = load i32, ptr %6, align 4, !tbaa !16
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %6, align 4, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %.sink.split281, %bb.p
  %or.cond182.not = icmp eq i32 %i.bs, 256
  br i1 %or.cond182.not, label %.preheader201, label %.loopexit202

.preheader201:                                    ; preds = %bb.u
  %i.co = add nsw i32 %.8, -1                     ; 2 uses
  %i.cp = icmp sgt i32 %.8, 0
  br i1 %i.cp, label %.lr.ph243, label %.loopexit202

.lr.ph243:                                        ; preds = %.preheader201, %bb.v
  %i.cq = phi i32 [ %i.cu, %bb.v ], [ %i.co, %.preheader201 ] ; 2 uses
  %i.cr = tail call i32 %1(i8 noundef zeroext 48, ptr noundef %0) #11, !callees !20
  %.not165 = icmp eq i32 %i.cr, 0
  br i1 %.not165, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph243
  %i.cs = load i32, ptr %6, align 4, !tbaa !16
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %6, align 4, !tbaa !16
  %i.cu = add nsw i32 %i.cq, -1
  %i.cv = icmp sgt i32 %i.cq, 0
  br i1 %i.cv, label %.lr.ph243, label %.loopexit202, !llvm.loop !65

.loopexit202:                                     ; preds = %bb.v, %.preheader201, %bb.u
  %.10 = phi i32 [ %.8, %bb.u ], [ %i.co, %.preheader201 ], [ -1, %bb.v ] ; 2 uses
  %.not166246 = icmp sgt i64 %.5.idx, 323
  br i1 %.not166246, label %._crit_edge, label %.lr.ph248

.lr.ph248:                                        ; preds = %.loopexit202, %bb.w
  %.6.add247.in = phi i64 [ %.6.add247, %bb.w ], [ %.5.idx, %.loopexit202 ]
  %.6.add247 = add nsw i64 %.6.add247.in, 1       ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %5, i64 %.6.add247
  %i.cw = load i8, ptr %.ptr, align 1, !tbaa !15
  %i.cx = tail call i32 %1(i8 noundef zeroext %i.cw, ptr noundef %0) #11, !callees !20
  %.not173 = icmp eq i32 %i.cx, 0
  br i1 %.not173, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.lr.ph248
  %i.cy = load i32, ptr %6, align 4, !tbaa !16
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %6, align 4, !tbaa !16
  %exitcond = icmp eq i64 %.6.add247, 324
  br i1 %exitcond, label %._crit_edge, label %.lr.ph248, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.w, %.loopexit202
  %i.da = icmp sgt i32 %.10, 0
  %or.cond256 = select i1 %.not152.not, i1 %i.da, i1 false
  br i1 %or.cond256, label %.lr.ph249, label %.loopexit

.lr.ph249:                                        ; preds = %._crit_edge, %bb.x
  %.in257 = phi i32 [ %i.dc, %bb.x ], [ %.10, %._crit_edge ] ; 2 uses
  %i.db = tail call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20
  %.not172.not.not = icmp ne i32 %i.db, 0         ; 3 uses
  br i1 %.not172.not.not, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph249
  %i.dc = add nsw i32 %.in257, -1
  %i.dd = load i32, ptr %6, align 4, !tbaa !16
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %6, align 4, !tbaa !16
  %i.df = icmp sgt i32 %.in257, 1
  br i1 %i.df, label %.lr.ph249, label %.loopexit, !llvm.loop !67

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph223, %bb.e, %.lr.ph241, %.lr.ph243, %.lr.ph248, %.lr.ph249, %bb.x, %._crit_edge, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.d, %.loopexit216
  %.0 = phi i1 [ true, %.lr.ph248 ], [ true, %.loopexit216 ], [ %.not177.not.not, %.lr.ph223 ], [ false, %bb.d ], [ true, %.lr.ph241 ], [ true, %bb.o ], [ true, %bb.q ], [ true, %.lr.ph243 ], [ %.not172.not.not, %.lr.ph249 ], [ false, %._crit_edge ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.k ], [ true, %bb.m ], [ %.not172.not.not, %bb.x ], [ %.not177.not.not, %bb.e ], [ true, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @curlx_str_single(ptr noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @curlx_dyn_addn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

end_hunk_0
