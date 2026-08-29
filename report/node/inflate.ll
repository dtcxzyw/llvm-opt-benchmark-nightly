Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inflate?download=true
inline.NumInlined: 53
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@inflate:bb.a
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.apl
  %i.apn = zext i32 %i.aog to i64
  %i.apo = sub nsw i64 0, %i.apn
  %i.app = getelementptr inbounds i8, ptr %.01059, i64 %i.apo
  %i.apq = zext i32 %spec.select.i1269 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apm, ptr readonly align 1 %i.app, i64 %i.apq, i1 false)
  %.not62.not.i = icmp ugt i32 %i.aog, %i.apk
  br i1 %.not62.not.i, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.apr = sub nuw i32 %i.aog, %spec.select.i1269 ; 2 uses
  %i.aps = load ptr, ptr %i.aoi, align 8, !tbaa !42
  %i.apt = zext i32 %i.apr to i64                 ; 2 uses
  %i.apu = sub nsw i64 0, %i.apt
  %i.apv = getelementptr inbounds i8, ptr %.01059, i64 %i.apu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aps, ptr nonnull readonly align 1 %i.apv, i64 %i.apt, i1 false)
  store i32 %i.apr, ptr %i.api, align 4, !tbaa !41
  %i.apw = load i32, ptr %i.aot, align 4, !tbaa !39
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aoh, i64 64
  store i32 %i.apw, ptr %i.apx, align 8, !tbaa !40
  br label %updatewindow.exit.thread

bb.ic:                                            ; preds = %bb.ia
  %i.apy = load i32, ptr %i.api, align 4, !tbaa !41
  %i.apz = add i32 %i.apy, %spec.select.i1269     ; 2 uses
  %i.aqa = load i32, ptr %i.aot, align 4, !tbaa !39 ; 2 uses
  %i.aqb = icmp eq i32 %i.apz, %i.aqa
  %spec.store.select.i = select i1 %i.aqb, i32 0, i32 %i.apz
  store i32 %spec.store.select.i, ptr %i.api, align 4
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aoh, i64 64 ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 8, !tbaa !40 ; 2 uses
  %i.aqe = icmp ult i32 %i.aqd, %i.aqa
  br i1 %i.aqe, label %bb.id, label %updatewindow.exit.thread

bb.id:                                            ; preds = %bb.ic
  %i.aqf = add i32 %i.aqd, %spec.select.i1269
  store i32 %i.aqf, ptr %i.aqc, align 8, !tbaa !40
  br label %updatewindow.exit.thread

updatewindow.exit:                                ; preds = %bb.hv
  store i32 16210, ptr %i.m, align 8, !tbaa !22
  br label %inflateStateCheck.exit.thread

updatewindow.exit.thread:                         ; preds = %bb.hz, %bb.ic, %bb.id, %bb.ib, %bb.ht, %bb.hs, %bb.hr
  %i.aqg = load i32, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.aqh = sub i32 %i.ab, %i.aqg
  %i.aqi = load i32, ptr %i.y, align 8, !tbaa !52 ; 3 uses
  %i.aqj = sub i32 %.5922, %i.aqi                 ; 3 uses
  %i.aqk = zext i32 %i.aqh to i64
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !24
  %i.aqn = add i64 %i.aqm, %i.aqk
  store i64 %i.aqn, ptr %i.aql, align 8, !tbaa !24
  %i.aqo = zext i32 %i.aqj to i64                 ; 3 uses
  %i.aqp = load i64, ptr %i.ah, align 8, !tbaa !99
  %i.aqq = add i64 %i.aqp, %i.aqo
  store i64 %i.aqq, ptr %i.ah, align 8, !tbaa !99
  %i.aqr = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.aqs = add i64 %i.aqr, %i.aqo
  store i64 %i.aqs, ptr %i.ai, align 8, !tbaa !23
  %i.aqt = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.aqu = and i32 %i.aqt, 4
  %i.aqv = icmp ne i32 %i.aqu, 0
  %i.aqw = icmp ne i32 %.5922, %i.aqi
  %or.cond11 = select i1 %i.aqv, i1 %i.aqw, i1 false
  br i1 %or.cond11, label %bb.ie, label %bb.ii

bb.ie:                                            ; preds = %updatewindow.exit.thread
  %i.aqx = load i32, ptr %i.aj, align 8, !tbaa !29
  %.not1263 = icmp eq i32 %i.aqx, 0
  %i.aqy = load i64, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.aqz = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.ara = sub nsw i64 0, %i.aqo
  %i.arb = getelementptr inbounds i8, ptr %i.aqz, i64 %i.ara ; 2 uses
  br i1 %.not1263, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.arc = call i64 @crc32(i64 noundef %i.aqy, ptr noundef %i.arb, i32 noundef %i.aqj) #12
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  %i.ard = call i64 @adler32(i64 noundef %i.aqy, ptr noundef %i.arb, i32 noundef %i.aqj) #12
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.are = phi i64 [ %i.arc, %bb.if ], [ %i.ard, %bb.ig ] ; 2 uses
  store i64 %i.are, ptr %i.ak, align 8, !tbaa !47
  store i64 %i.are, ptr %i.al, align 8, !tbaa !26
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %updatewindow.exit.thread
  %i.arf = load i32, ptr %i.ae, align 8, !tbaa !33
  %i.arg = load i32, ptr %i.bn, align 4, !tbaa !27
  %.not1264 = icmp eq i32 %i.arg, 0
  %i.arh = select i1 %.not1264, i32 0, i32 64
  %i.ari = add nsw i32 %i.arh, %i.arf
  %i.arj = load i32, ptr %i.m, align 8, !tbaa !22 ; 3 uses
  %i.ark = icmp eq i32 %i.arj, 16191
  %i.arl = select i1 %i.ark, i32 128, i32 0
  %i.arm = add nsw i32 %i.ari, %i.arl
  %i.arn = icmp eq i32 %i.arj, 16199
  %i.aro = icmp eq i32 %i.arj, 16194
  %i.arp = or i1 %i.arn, %i.aro
  %i.arq = select i1 %i.arp, i32 256, i32 0
  %i.arr = add nsw i32 %i.arm, %i.arq
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.arr, ptr %i.ars, align 8, !tbaa !101
  %i.art = icmp eq i32 %i.ab, %i.aqg
  %i.aru = icmp eq i32 %.5922, %i.aqi
  %or.cond13 = select i1 %i.art, i1 %i.aru, i1 false
  %i.arv = icmp eq i32 %1, 4
  %or.cond15 = or i1 %i.arv, %or.cond13
  %i.arw = icmp eq i32 %.9, 0
  %or.cond17 = select i1 %or.cond15, i1 %i.arw, i1 false
  %spec.store.select = select i1 %or.cond17, i32 -5, i32 %.9
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread.loopexit:           ; preds = %bb.k
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.k, %inflateStateCheck.exit.thread.loopexit, %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.f, %bb.h, %bb.ii, %updatewindow.exit, %bb.dn
  %.01127 = phi i32 [ -2, %inflateStateCheck.exit ], [ -4, %inflateStateCheck.exit.thread.loopexit ], [ -4, %updatewindow.exit ], [ %spec.store.select, %bb.ii ], [ 2, %bb.dn ], [ -2, %bb.h ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.01127
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inflate_fast_chunk_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @chunkcopy_safe(ptr noundef %0, ptr noalias nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %1, align 1
  store i64 %i.f, ptr %0, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]  ; 3 uses
  %i.i = and i32 %2, 4
  %.not29.i = icmp eq i32 %i.i, 0
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %.0.i, align 1
  store i32 %i.j, ptr %.026.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.127.i = phi ptr [ %i.k, %bb.e ], [ %.026.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %i.l, %bb.e ], [ %.0.i, %bb.d ] ; 3 uses
  %i.m = and i32 %2, 2
  %.not30.i = icmp eq i32 %i.m, 0
  br i1 %.not30.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i16, ptr %.1.i, align 1
  store i16 %i.n, ptr %.127.i, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.127.i, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.228.i = phi ptr [ %i.o, %bb.g ], [ %.127.i, %bb.f ] ; 3 uses
  %.2.i = phi ptr [ %i.p, %bb.g ], [ %.1.i, %bb.f ]
  %i.q = and i32 %2, 1
  %.not31.i = icmp eq i32 %i.q, 0
  br i1 %.not31.i, label %chunkcopy_core_safe.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i8, ptr %.2.i, align 1, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %.228.i, i64 1
  store i8 %i.r, ptr %.228.i, align 1, !tbaa !45
  br label %chunkcopy_core_safe.exit

bb.j:                                             ; preds = %bb.a
  %i.t = add i32 %2, -1                           ; 3 uses
  %i.u = and i32 %i.t, 15
  %i.v = add nuw nsw i32 %i.u, 1
  %.val.i.i = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %.val.i.i, ptr %0, align 1
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.w       ; 2 uses
  %i.y = lshr i32 %i.t, 4                         ; 2 uses
  %.not15.i.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i.i, label %chunkcopy_core_safe.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %1, i64 %i.w
  %4 = and i32 %i.t, -16
  %i.aa = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.z, i64 %i.aa, i1 false)
  %5 = add nsw i32 %i.y, -1
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 4
  %i.ab = add i32 %2, 15
  %i.ac = and i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %0, i64 %7
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.af, i64 17
  br label %chunkcopy_core_safe.exit

chunkcopy_core_safe.exit:                         ; preds = %.lr.ph.preheader.i.i, %bb.h, %bb.i, %bb.j
  %.025.i = phi ptr [ %.228.i, %bb.h ], [ %i.s, %bb.i ], [ %i.x, %bb.j ], [ %scevgep, %.lr.ph.preheader.i.i ]
  ret ptr %.025.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @chunkcopy_lapped_safe(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %chunkcopy_lapped_relaxed.exit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.e = zext i32 %1 to i64
  %i.f = sub nsw i64 0, %i.e                      ; 11 uses
  %i.g = zext i32 %2 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.h = add i32 %1, -1
  %diff.check = icmp ult i32 %i.h, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i32 %2, 32
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.g, 28
  %n.vec = and i64 %i.g, 4294967264               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %2, %i.j
  %i.l = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %next.gep, i64 %i.f ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !45
  %wide.load81 = load <16 x i8>, ptr %i.n, align 1, !tbaa !45
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !45
  store <16 x i8> %wide.load81, ptr %i.o, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %chunkcopy_lapped_relaxed.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.g, 4294967292             ; 4 uses
  %i.q = trunc nuw i64 %n.vec83 to i32
  %i.r = sub i32 %2, %i.q
  %i.s = getelementptr i8, ptr %0, i64 %n.vec83   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 2 uses
  %next.gep85 = getelementptr i8, ptr %0, i64 %index84 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %next.gep85, i64 %i.f
  %wide.load86 = load <4 x i8>, ptr %i.t, align 1, !tbaa !45
  store <4 x i8> %wide.load86, ptr %next.gep85, align 1, !tbaa !45
  %index.next87 = add nuw i64 %index84, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next87, %n.vec83
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %n.vec83, %i.g
  br i1 %cmp.n88, label %chunkcopy_lapped_relaxed.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01129.ph = phi i32 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 4 uses
  %.01228.ph = phi ptr [ %0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 2 uses
  %i.v = add i32 %.01129.ph, -1
  %xtraiter109 = and i32 %.01129.ph, 7            ; 2 uses
  %lcmp.mod110.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01129.prol = phi i32 [ %i.w, %vec.epilog.scalar.ph.prol ], [ %.01129.ph, %vec.epilog.scalar.ph.preheader ]
  %.01228.prol = phi ptr [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.01228.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter111 = phi i32 [ %prol.iter111.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = add i32 %.01129.prol, -1                 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.01228.prol, i64 %i.f
  %i.y = load i8, ptr %i.x, align 1, !tbaa !45
  store i8 %i.y, ptr %.01228.prol, align 1, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %.01228.prol, i64 1 ; 3 uses
  %prol.iter111.next = add i32 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i32 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !105

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.01129.unr = phi i32 [ %.01129.ph, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.01228.unr = phi ptr [ %.01228.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = icmp ult i32 %i.v, 7
  br i1 %i.aa, label %chunkcopy_lapped_relaxed.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01129 = phi i32 [ %i.aw, %vec.epilog.scalar.ph ], [ %.01129.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.01228 = phi ptr [ %i.az, %vec.epilog.scalar.ph ], [ %.01228.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ab = getelementptr inbounds i8, ptr %.01228, i64 %i.f
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !45
  store i8 %i.ac, ptr %.01228, align 1, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %.01228, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.f
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !45
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.01228, i64 2 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.f
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %.01228, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.f
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !45
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %.01228, i64 4 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.f
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !45
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %.01228, i64 5 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.f
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !45
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %.01228, i64 6 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.f
  %i.au = load i8, ptr %i.at, align 1, !tbaa !45
  store i8 %i.au, ptr %i.as, align 1, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %.01228, i64 7 ; 2 uses
  %i.aw = add i32 %.01129, -8                     ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.f
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !45
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %.01228, i64 8 ; 2 uses
  %.not.7 = icmp eq i32 %i.aw, 0
  br i1 %.not.7, label %chunkcopy_lapped_relaxed.exit, label %vec.epilog.scalar.ph, !llvm.loop !106

bb.b:                                             ; preds = %bb.a
  %i.ba = icmp ult i32 %1, %2
  %i.bb = icmp ult i32 %1, 16
  %or.cond.i = and i1 %i.bb, %i.ba
  br i1 %or.cond.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.bc = add i32 %2, 15
  %i.bd = and i32 %i.bc, 15
  %narrow.i.i = add nuw nsw i32 %i.bd, 1          ; 8 uses
  %i.be = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %1)
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.split.i.i, label %bb.n

.split.i.i:                                       ; preds = %bb.c
  %i.bg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  %i.bh = zext nneg i32 %narrow.i.i to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 11 uses
  switch i32 %i.bg, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.k
  ]

bb.d:                                             ; preds = %.split.i.i
  %i.bj = getelementptr inbounds i8, ptr %0, i64 -1
  %.val.i.i = load i8, ptr %i.bj, align 1, !tbaa !45
  %i.bk = insertelement <16 x i8> poison, i8 %.val.i.i, i64 0
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.bl, ptr %0, align 1, !tbaa !45
  %i.bm = sub i32 %2, %narrow.i.i                 ; 2 uses
  %.not5291.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not5291.i.i, label %chunkcopy_lapped_relaxed.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.093.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.bi, %bb.d ] ; 2 uses
  %storemerge92.i.i = phi i32 [ %i.bo, %.lr.ph.i.i ], [ %i.bm, %bb.d ]
  store <16 x i8> %i.bl, ptr %.093.i.i, align 1, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 16 ; 2 uses
  %i.bo = add i32 %storemerge92.i.i, -16          ; 2 uses
  %.not52.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not52.i.i, label %chunkcopy_lapped_relaxed.exit, label %.lr.ph.i.i, !llvm.loop !107

bb.e:                                             ; preds = %.split.i.i
end_hunk_0
