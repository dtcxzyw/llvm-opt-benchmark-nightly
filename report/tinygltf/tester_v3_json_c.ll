Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tg3json__indent:bb.a

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @tg3json__format_decimal_digits(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = add i32 %3, %2                           ; 11 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 19 uses
  %.064174 = ptrtoaddr ptr %.064 to i64           ; 3 uses
  %i.g = add i32 %i.d, -17
  %or.cond = icmp ult i32 %i.g, -20
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 1, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  store i8 %i.h, ptr %.064, align 1, !tbaa !30
  %i.j = icmp sgt i32 %2, 1
  br i1 %i.j, label %iter.check291, label %.loopexit

iter.check291:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 5 uses
  store i8 46, ptr %i.i, align 1, !tbaa !30
  %wide.trip.count142 = zext nneg i32 %2 to i64   ; 4 uses
  %i.l = add nsw i64 %wide.trip.count142, -1      ; 5 uses
  %min.iters.check276 = icmp ult i32 %2, 9
  %i.m = sub i64 %.064174, %i.a
  %diff.check275 = icmp ult i64 %i.m, 31
  %or.cond336.a = select i1 %min.iters.check276, i1 true, i1 %diff.check275
  br i1 %or.cond336.a, label %vec.epilog.scalar.ph292.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %iter.check291
  %min.iters.check278 = icmp ult i32 %2, 33
  br i1 %min.iters.check278, label %vec.epilog.ph295, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %i.n = and i64 %i.l, 24
  %n.vec280 = and i64 %i.l, -32                   ; 5 uses
  %i.o = or disjoint i64 %n.vec280, 1
  %i.p = getelementptr i8, ptr %i.k, i64 %n.vec280 ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body281 ] ; 3 uses
  %next.gep283 = getelementptr i8, ptr %i.k, i64 %index282 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index282 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %wide.load284.a = load <16 x i8>, ptr %i.r, align 1, !tbaa !30
  %wide.load285 = load <16 x i8>, ptr %i.s, align 1, !tbaa !30
  %i.t = getelementptr i8, ptr %next.gep283, i64 16
  store <16 x i8> %wide.load284.a, ptr %next.gep283, align 1, !tbaa !30
  store <16 x i8> %wide.load285, ptr %i.t, align 1, !tbaa !30
  %index.next286 = add nuw i64 %index282, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.u, label %middle.block287, label %vector.body281, !llvm.loop !96

middle.block287:                                  ; preds = %vector.body281
  %cmp.n288 = icmp eq i64 %i.l, %n.vec280
  br i1 %cmp.n288, label %.loopexit, label %vec.epilog.iter.check293

vec.epilog.iter.check293:                         ; preds = %middle.block287
  %min.epilog.iters.check294 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check294, label %vec.epilog.scalar.ph292.preheader, label %vec.epilog.ph295, !prof !52

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check277, %vec.epilog.iter.check293
  %vec.epilog.resume.val289 = phi i64 [ %n.vec280, %vec.epilog.iter.check293 ], [ 0, %vector.main.loop.iter.check277 ]
  %n.vec296 = and i64 %i.l, -8                    ; 4 uses
  %i.v = or disjoint i64 %n.vec296, 1
  %i.w = getelementptr i8, ptr %i.k, i64 %n.vec296 ; 2 uses
  br label %vec.epilog.vector.body297

vec.epilog.vector.body297:                        ; preds = %vec.epilog.vector.body297, %vec.epilog.ph295
  %index298 = phi i64 [ %vec.epilog.resume.val289, %vec.epilog.ph295 ], [ %index.next301, %vec.epilog.vector.body297 ] ; 3 uses
  %next.gep299 = getelementptr i8, ptr %i.k, i64 %index298
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index298
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %wide.load300 = load <8 x i8>, ptr %i.y, align 1, !tbaa !30
  store <8 x i8> %wide.load300, ptr %next.gep299, align 1, !tbaa !30
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.z, label %vec.epilog.middle.block302, label %vec.epilog.vector.body297, !llvm.loop !97

vec.epilog.middle.block302:                       ; preds = %vec.epilog.vector.body297
  %cmp.n303 = icmp eq i64 %i.l, %n.vec296
  br i1 %cmp.n303, label %.loopexit, label %vec.epilog.scalar.ph292.preheader

vec.epilog.scalar.ph292.preheader:                ; preds = %iter.check291, %vec.epilog.iter.check293, %vec.epilog.middle.block302
  %indvars.iv139.ph = phi i64 [ 1, %iter.check291 ], [ %i.o, %vec.epilog.iter.check293 ], [ %i.v, %vec.epilog.middle.block302 ] ; 4 uses
  %.165104.ph = phi ptr [ %i.k, %iter.check291 ], [ %i.p, %vec.epilog.iter.check293 ], [ %i.w, %vec.epilog.middle.block302 ] ; 2 uses
  %i.aa = sub nsw i64 %wide.trip.count142, %indvars.iv139.ph
  %xtraiter354 = and i64 %i.aa, 7                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %vec.epilog.scalar.ph292.prol.loopexit, label %vec.epilog.scalar.ph292.prol

vec.epilog.scalar.ph292.prol:                     ; preds = %vec.epilog.scalar.ph292.preheader, %vec.epilog.scalar.ph292.prol
  %indvars.iv139.prol = phi i64 [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph292.prol ], [ %indvars.iv139.ph, %vec.epilog.scalar.ph292.preheader ] ; 2 uses
  %.165104.prol = phi ptr [ %i.ad, %vec.epilog.scalar.ph292.prol ], [ %.165104.ph, %vec.epilog.scalar.ph292.preheader ] ; 2 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %vec.epilog.scalar.ph292.prol ], [ 0, %vec.epilog.scalar.ph292.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139.prol
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.165104.prol, i64 1 ; 3 uses
  store i8 %i.ac, ptr %.165104.prol, align 1, !tbaa !30
  %indvars.iv.next140.prol = add nuw nsw i64 %indvars.iv139.prol, 1 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %vec.epilog.scalar.ph292.prol.loopexit, label %vec.epilog.scalar.ph292.prol, !llvm.loop !98

vec.epilog.scalar.ph292.prol.loopexit:            ; preds = %vec.epilog.scalar.ph292.prol, %vec.epilog.scalar.ph292.preheader
  %.lcssa341.unr.a = phi ptr [ poison, %vec.epilog.scalar.ph292.preheader ], [ %i.ad, %vec.epilog.scalar.ph292.prol ]
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %vec.epilog.scalar.ph292.preheader ], [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph292.prol ]
  %.165104.unr = phi ptr [ %.165104.ph, %vec.epilog.scalar.ph292.preheader ], [ %i.ad, %vec.epilog.scalar.ph292.prol ]
  %i.ae = sub nsw i64 %indvars.iv139.ph, %wide.trip.count142
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %.loopexit, label %vec.epilog.scalar.ph292

vec.epilog.scalar.ph292:                          ; preds = %vec.epilog.scalar.ph292.prol.loopexit, %vec.epilog.scalar.ph292
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.7, %vec.epilog.scalar.ph292 ], [ %indvars.iv139.unr, %vec.epilog.scalar.ph292.prol.loopexit ] ; 9 uses
  %.165104 = phi ptr [ %i.bk, %vec.epilog.scalar.ph292 ], [ %.165104.unr, %vec.epilog.scalar.ph292.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %.165104, i64 1
  store i8 %i.ah, ptr %.165104, align 1, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %.165104, i64 2
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %.165104, i64 3
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %.165104, i64 4
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %.165104, i64 5
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.165104, i64 6
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.165104, i64 7
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.165104, i64 8 ; 2 uses
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !30
  %indvars.iv.next140.7 = add nuw nsw i64 %indvars.iv139, 8 ; 2 uses
  %exitcond143.not.7 = icmp eq i64 %indvars.iv.next140.7, %wide.trip.count142
  br i1 %exitcond143.not.7, label %.loopexit, label %vec.epilog.scalar.ph292, !llvm.loop !99

.loopexit:                                        ; preds = %vec.epilog.scalar.ph292.prol.loopexit, %vec.epilog.scalar.ph292, %middle.block287, %vec.epilog.middle.block302, %bb.d
  %.266 = phi ptr [ %i.i, %bb.d ], [ %i.w, %vec.epilog.middle.block302 ], [ %i.p, %middle.block287 ], [ %.lcssa341.unr.a, %vec.epilog.scalar.ph292.prol.loopexit ], [ %i.bk, %vec.epilog.scalar.ph292 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.bl = getelementptr inbounds nuw i8, ptr %.266, i64 1 ; 3 uses
  store i8 101, ptr %.266, align 1, !tbaa !30
  %i.bm = icmp slt i32 %i.d, 1
  br i1 %i.bm, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %.266, i64 2
  store i8 45, ptr %i.bl, align 1, !tbaa !30
  %i.bo = sub nsw i32 1, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %.preheader19.i.preheader.i

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bp = icmp eq i32 %i.e, 0
  br i1 %i.bp, label %bb.f, label %.preheader19.i.preheader.i

.preheader19.i.preheader.i:                       ; preds = %bb.e, %.thread.i
  %.018.i = phi i32 [ %i.bo, %.thread.i ], [ %i.e, %bb.e ]
  %.0817.i = phi ptr [ %i.bn, %.thread.i ], [ %i.bl, %bb.e ] ; 4 uses
  %i.bq = zext nneg i32 %.018.i to i64
  br label %.preheader19.i.i

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.c, align 16, !tbaa !30
  br label %tg3json__write_exp.exit

.preheader.i.i.a:                                 ; preds = %.preheader19.i.i
  %.not1822.i.i = icmp eq i64 %8, 0
  br i1 %.not1822.i.i, label %tg3json__write_exp.exit, label %iter.check320

iter.check320:                                    ; preds = %.preheader.i.i.a
  %min.iters.check306 = icmp ult i64 %8, 8
  br i1 %min.iters.check306, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check307

vector.main.loop.iter.check307:                   ; preds = %iter.check320
  %min.iters.check308 = icmp ult i64 %8, 32
  br i1 %min.iters.check308, label %vec.epilog.ph324, label %vector.ph309

vector.ph309:                                     ; preds = %vector.main.loop.iter.check307
  %i.br = and i64 %8, 24
  %n.vec310 = and i64 %8, -32                     ; 5 uses
  %i.bs = and i64 %8, 31
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next316, %vector.body311 ] ; 3 uses
  %i.bt = sub i64 %.01421.i.i, %index312
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -15
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -31
  %wide.load313.a = load <16 x i8>, ptr %i.bv, align 1, !tbaa !30
  %wide.load314 = load <16 x i8>, ptr %i.bw, align 1, !tbaa !30
  %reverse = shufflevector <16 x i8> %wide.load313.a, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse315 = shufflevector <16 x i8> %wide.load314, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %index312 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <16 x i8> %reverse, ptr %i.bx, align 16, !tbaa !30
  store <16 x i8> %reverse315, ptr %i.by, align 16, !tbaa !30
  %index.next316 = add nuw i64 %index312, 32      ; 2 uses
  %i.bz = icmp eq i64 %index.next316, %n.vec310
  br i1 %i.bz, label %middle.block317, label %vector.body311, !llvm.loop !100

middle.block317:                                  ; preds = %vector.body311
  %cmp.n318 = icmp eq i64 %8, %n.vec310
  br i1 %cmp.n318, label %tg3json__write_exp.exit, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block317
  %min.epilog.iters.check323 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check323, label %.lr.ph.i.i.preheader, label %vec.epilog.ph324, !prof !52

vec.epilog.ph324:                                 ; preds = %vector.main.loop.iter.check307, %vec.epilog.iter.check322
  %vec.epilog.resume.val319 = phi i64 [ %n.vec310, %vec.epilog.iter.check322 ], [ 0, %vector.main.loop.iter.check307 ]
  %n.vec325 = and i64 %8, -8                      ; 4 uses
  %i.ca = and i64 %8, 7
  br label %vec.epilog.vector.body326

vec.epilog.vector.body326:                        ; preds = %vec.epilog.vector.body326, %vec.epilog.ph324
  %index327 = phi i64 [ %vec.epilog.resume.val319, %vec.epilog.ph324 ], [ %index.next330, %vec.epilog.vector.body326 ] ; 3 uses
  %i.cb = sub i64 %.01421.i.i, %index327
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -7
  %wide.load328 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !30
  %reverse329 = shufflevector <8 x i8> %wide.load328, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %index327
  store <8 x i8> %reverse329, ptr %i.ce, align 8, !tbaa !30
  %index.next330 = add nuw i64 %index327, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next330, %n.vec325
  br i1 %i.cf, label %vec.epilog.middle.block331, label %vec.epilog.vector.body326, !llvm.loop !101

vec.epilog.middle.block331:                       ; preds = %vec.epilog.vector.body326
  %cmp.n332 = icmp eq i64 %8, %n.vec325
  br i1 %cmp.n332, label %tg3json__write_exp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check320, %vec.epilog.iter.check322, %vec.epilog.middle.block331
  %.024.i.i.ph = phi i64 [ 0, %iter.check320 ], [ %n.vec310, %vec.epilog.iter.check322 ], [ %n.vec325, %vec.epilog.middle.block331 ]
  %.123.i.i.ph = phi i64 [ %8, %iter.check320 ], [ %i.bs, %vec.epilog.iter.check322 ], [ %i.ca, %vec.epilog.middle.block331 ]
  br label %.lr.ph.i.i

.preheader19.i.i:                                 ; preds = %.preheader19.i.i, %.preheader19.i.preheader.i
  %.01421.i.i = phi i64 [ %8, %.preheader19.i.i ], [ 0, %.preheader19.i.preheader.i ] ; 4 uses
  %.01620.i.i = phi i64 [ %10, %.preheader19.i.i ], [ %i.bq, %.preheader19.i.preheader.i ] ; 3 uses
  %5 = urem i64 %.01620.i.i, 10
  %6 = trunc nuw nsw i64 %5 to i8
  %7 = or disjoint i8 %6, 48
  %8 = add i64 %.01421.i.i, 1                     ; 12 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %7, ptr %9, align 1, !tbaa !30
  %10 = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %.preheader.i.i.a, label %.preheader19.i.i, !llvm.loop !102

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.024.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.123.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.123.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.cg = add i64 %.123.i.i, -1                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !30
  %i.cj = add nuw i64 %.024.i.i, 1                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %.024.i.i
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !30
  %.not18.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.lr.ph.i.i, !llvm.loop !103

tg3json__write_exp.exit:                          ; preds = %.lr.ph.i.i, %middle.block317, %vec.epilog.middle.block331, %bb.f, %.preheader.i.i.a
  %.0816.i = phi ptr [ %i.bl, %bb.f ], [ %.0817.i, %.preheader.i.i.a ], [ %.0817.i, %middle.block317 ], [ %.0817.i, %vec.epilog.middle.block331 ], [ %.0817.i, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ 0, %.preheader.i.i.a ], [ %n.vec310, %middle.block317 ], [ %n.vec325, %vec.epilog.middle.block331 ], [ %i.cj, %.lr.ph.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.sink.i.i
  store i8 0, ptr %i.cl, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0816.i, ptr nonnull align 16 %i.c, i64 %.0.lcssa.sink.i.i, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.0816.i, i64 %.0.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.cn = icmp sgt i32 %3, -1
  br i1 %i.cn, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.co = icmp sgt i32 %2, 0
  br i1 %i.co, label %iter.check259, label %.preheader

iter.check259:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check245 = icmp ult i32 %2, 4
  %i.cp = sub i64 %i.a, %.064174
  %diff.check244 = icmp ugt i64 %i.cp, -32
  %or.cond337.a = select i1 %min.iters.check245, i1 true, i1 %diff.check244
  br i1 %or.cond337.a, label %.lr.ph98.preheader, label %vector.main.loop.iter.check246

vector.main.loop.iter.check246:                   ; preds = %iter.check259
  %min.iters.check247 = icmp ult i32 %2, 32
  br i1 %min.iters.check247, label %vec.epilog.ph263, label %vector.ph248

vector.ph248:                                     ; preds = %vector.main.loop.iter.check246
  %i.cq = and i64 %wide.trip.count133, 28
  %n.vec249 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cr = getelementptr i8, ptr %.064, i64 %n.vec249 ; 2 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next255, %vector.body250 ] ; 3 uses
  %next.gep252 = getelementptr i8, ptr %.064, i64 %index251 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %index251 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load253.a = load <16 x i8>, ptr %i.cs, align 1, !tbaa !30
  %wide.load254 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !30
  %i.cu = getelementptr i8, ptr %next.gep252, i64 16
  store <16 x i8> %wide.load253.a, ptr %next.gep252, align 1, !tbaa !30
  store <16 x i8> %wide.load254, ptr %i.cu, align 1, !tbaa !30
  %index.next255 = add nuw i64 %index251, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next255, %n.vec249
  br i1 %i.cv, label %middle.block256, label %vector.body250, !llvm.loop !104

middle.block256:                                  ; preds = %vector.body250
  %cmp.n257 = icmp eq i64 %n.vec249, %wide.trip.count133
  br i1 %cmp.n257, label %.preheader, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph98.preheader, label %vec.epilog.ph263, !prof !119

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check246, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec249, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check246 ]
  %n.vec264 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.cw = getelementptr i8, ptr %.064, i64 %n.vec264 ; 2 uses
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %next.gep267 = getelementptr i8, ptr %.064, i64 %index266
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %index266
  %wide.load268 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !30
  store <4 x i8> %wide.load268, ptr %next.gep267, align 1, !tbaa !30
  %index.next269 = add nuw i64 %index266, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.cy, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !105

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %n.vec264, %wide.trip.count133
  br i1 %cmp.n271, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check259, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv130.ph = phi i64 [ 0, %iter.check259 ], [ %n.vec249, %vec.epilog.iter.check261 ], [ %n.vec264, %vec.epilog.middle.block270 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check259 ], [ %i.cr, %vec.epilog.iter.check261 ], [ %i.cw, %vec.epilog.middle.block270 ] ; 2 uses
  %i.cz = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter351 = and i64 %i.cz, 7                 ; 2 uses
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.dc, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter353 = phi i64 [ %prol.iter353.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.db, ptr %.36796.prol, align 1, !tbaa !30
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter353.next = add i64 %prol.iter353, 1   ; 2 uses
  %prol.iter353.cmp.not = icmp eq i64 %prol.iter353.next, %xtraiter351
  br i1 %prol.iter353.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !106

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa342.unr.a = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.dc, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.dc, %.lr.ph98.prol ]
  %i.dd = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.de = icmp ugt i64 %i.dd, -8
  br i1 %i.de, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block256, %vec.epilog.middle.block270, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.cw, %vec.epilog.middle.block270 ], [ %i.cr, %middle.block256 ], [ %.lcssa342.unr.a, %.lr.ph98.prol.loopexit ], [ %i.ek, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.df = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.df, i1 false), !tbaa !30
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.df
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.ek, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dh, ptr %.36796, align 1, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dp, ptr %i.dm, align 1, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dt, ptr %i.dq, align 1, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !30
  %i.dy = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.dx, ptr %i.du, align 1, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 5
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !30
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 7
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !30
  %i.ek = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.ej, ptr %i.eg, align 1, !tbaa !30
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !107

bb.h:                                             ; preds = %bb.g
  %i.el = icmp sgt i32 %i.d, 0
  br i1 %i.el, label %iter.check192, label %bb.i

iter.check192:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 8 uses
  %min.iters.check176 = icmp ult i32 %i.d, 4
  %i.em = sub i64 %i.a, %.064174
  %diff.check175 = icmp ugt i64 %i.em, -32
  %or.cond338.a = select i1 %min.iters.check176, i1 true, i1 %diff.check175
  br i1 %or.cond338.a, label %.preheader79.preheader, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %iter.check192
  %min.iters.check178 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check178, label %vec.epilog.ph196, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %i.en = and i64 %wide.trip.count122, 28
  %n.vec180 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.eo = or disjoint i64 %n.vec180, 1
  %i.ep = getelementptr i8, ptr %.064, i64 %n.vec180 ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body181 ] ; 3 uses
  %next.gep183 = getelementptr i8, ptr %.064, i64 %index182 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %index182 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load184.a = load <16 x i8>, ptr %i.eq, align 1, !tbaa !30
  %wide.load185 = load <16 x i8>, ptr %i.er, align 1, !tbaa !30
  %i.es = getelementptr i8, ptr %next.gep183, i64 16
  store <16 x i8> %wide.load184.a, ptr %next.gep183, align 1, !tbaa !30
  store <16 x i8> %wide.load185, ptr %i.es, align 1, !tbaa !30
  %index.next186 = add nuw i64 %index182, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.et, label %middle.block187, label %vector.body181, !llvm.loop !108

middle.block187:                                  ; preds = %vector.body181
  %ind.escape188 = getelementptr i8, ptr %i.ep, i64 -1
  %cmp.n189 = icmp eq i64 %n.vec180, %wide.trip.count122
  br i1 %cmp.n189, label %.loopexit335, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block187
end_hunk_0
begin_hunk_1_@tg3json__format_decimal_digits:bb.a
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !30
  %i.hs = getelementptr inbounds nuw i8, ptr %.885, i64 2
  store i8 %i.hr, ptr %i.ho, align 1, !tbaa !30
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = getelementptr inbounds nuw i8, ptr %.885, i64 3
  store i8 %i.hv, ptr %i.hs, align 1, !tbaa !30
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 3
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !30
  %i.ia = getelementptr inbounds nuw i8, ptr %.885, i64 4
  store i8 %i.hz, ptr %i.hw, align 1, !tbaa !30
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = getelementptr inbounds nuw i8, ptr %.885, i64 5
  store i8 %i.id, ptr %i.ia, align 1, !tbaa !30
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 5
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = getelementptr inbounds nuw i8, ptr %.885, i64 6
  store i8 %i.ih, ptr %i.ie, align 1, !tbaa !30
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !30
  %i.im = getelementptr inbounds nuw i8, ptr %.885, i64 7
  store i8 %i.il, ptr %i.ii, align 1, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 7
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !30
  %i.iq = getelementptr inbounds nuw i8, ptr %.885, i64 8 ; 2 uses
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !30
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit76, label %.lr.ph87, !llvm.loop !118

.loopexit76:                                      ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %.lr.ph94, %middle.block, %vec.epilog.middle.block, %middle.block224, %vec.epilog.middle.block239, %.lr.ph102.preheader, %.preheader80, %.loopexit335, %.preheader, %tg3json__write_exp.exit
  %.071 = phi ptr [ %i.cm, %tg3json__write_exp.exit ], [ %scevgep137, %.lr.ph102.preheader ], [ %.670, %.lr.ph94 ], [ %.367.lcssa, %.preheader ], [ %.67091, %.loopexit335 ], [ %.7.lcssa, %.preheader80 ], [ %i.gh, %vec.epilog.middle.block239 ], [ %i.ga, %middle.block224 ], [ %i.hd, %vec.epilog.middle.block ], [ %i.gy, %middle.block ], [ %.lcssa347.unr, %.lr.ph87.prol.loopexit ], [ %i.iq, %.lr.ph87 ]
  ret ptr %.071
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = !{i32 1, !"long-double-type", !"x86_fp80"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!"tg3json__parser", !16, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !12, i64 64}
!20 = !{!19, !16, i64 8}
!21 = !{!19, !16, i64 16}
!22 = !{!"tg3json_parse_options", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !12, i64 32}
!23 = !{!22, !18, i64 0}
!24 = !{!18, !18, i64 0}
!25 = !{!22, !12, i64 32}
!26 = !{!19, !18, i64 24}
!27 = !{!19, !18, i64 48}
!28 = !{!19, !18, i64 56}
!29 = !{!19, !12, i64 64}
!30 = !{!11, !11, i64 0}
!31 = !{!19, !16, i64 0}
!32 = !{!"tg3json_value", !12, i64 0, !11, i64 8}
!33 = !{!32, !12, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!19, !18, i64 40}
!36 = !{!19, !18, i64 32}
!37 = !{!12, !12, i64 0}
!38 = !{i64 0, i64 4, !37, i64 8, i64 16, !30}
!39 = !{!"p1 _ZTS13tg3json_value", !15, i64 0}
!40 = !{!"tg3json_object_entry", !16, i64 0, !18, i64 8, !39, i64 16}
!41 = !{!40, !16, i64 0}
!42 = !{!40, !18, i64 8}
!43 = !{!40, !39, i64 16}
!44 = !{!15, !15, i64 0}
!45 = !{ptr @tg3json_object_set_copy_n}
!46 = !{!"p1 _ZTS15tg3json__parser", !15, i64 0}
!47 = !{!"tg3json__buffer", !46, i64 0, !16, i64 8, !18, i64 16, !18, i64 24}
!48 = !{!47, !16, i64 8}
!49 = !{!47, !18, i64 16}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"branch_weights", i32 8, i32 24}
!53 = !{!"double", !11, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!47, !46, i64 0}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!22, !18, i64 24}
!60 = distinct !{null}
!61 = distinct !{!61, !34}
!62 = distinct !{!62, !34}
!63 = distinct !{null}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = distinct !{!67, !34}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !34}
!70 = distinct !{!70, !34}
!71 = distinct !{!71, !34}
!72 = distinct !{!72, !34}
!73 = distinct !{!73, !34}
!74 = !{ptr @tg3json_array_append_copy}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, !34, !50, !51}
!77 = distinct !{!77, !34, !50, !51}
!78 = distinct !{!78, !34, !51, !50}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
!82 = distinct !{!82, !34}
!83 = distinct !{!83, !34}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !34}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !34}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !58}
!94 = distinct !{!94, !34}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34, !50, !51}
!97 = distinct !{!97, !34, !50, !51}
!98 = distinct !{!98, !58}
!99 = distinct !{!99, !34, !50}
!100 = distinct !{!100, !34, !50, !51}
!101 = distinct !{!101, !34, !50, !51}
!102 = distinct !{!102, !34}
!103 = distinct !{!103, !34, !51, !50}
!104 = distinct !{!104, !34, !50, !51}
!105 = distinct !{!105, !34, !50, !51}
!106 = distinct !{!106, !58}
!107 = distinct !{!107, !34, !50}
!108 = distinct !{!108, !34, !50, !51}
!109 = distinct !{!109, !34, !50, !51}
!110 = distinct !{!110, !58}
!111 = distinct !{!111, !34, !50}
!112 = distinct !{!112, !34, !50, !51}
!113 = distinct !{!113, !34, !50, !51}
!114 = distinct !{!114, !34, !50}
!115 = distinct !{!115, !34, !50, !51}
!116 = distinct !{!116, !34, !50, !51}
!117 = distinct !{!117, !58}
!118 = distinct !{!118, !34, !50}
!119 = !{!"branch_weights", i32 4, i32 28}
end_hunk_1
