Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regexec?download=true
inline.NumInlined: 154
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@onig_region_copy:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.x = getelementptr [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !28
  %wide.load38 = load <2 x i64>, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store <2 x i64> %wide.load, ptr %i.z, align 8, !tbaa !28
  store <2 x i64> %wide.load38, ptr %i.aa, align 8, !tbaa !28
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %wide.load39 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !28
  %wide.load40 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  store <2 x i64> %wide.load39, ptr %i.ad, align 8, !tbaa !28
  store <2 x i64> %wide.load40, ptr %i.ae, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.ph
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !28
  %i.aj = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.al = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.ph
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.am = add nsw i64 %wide.trip.count, -1
  %i.an = icmp eq i64 %indvars.iv.ph, %i.am
  br i1 %i.an, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.aq = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  store i64 %i.as, ptr %i.at, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.av = load i64, ptr %i.au, align 8, !tbaa !28
  %i.aw = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.az = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.ba = getelementptr i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.ba, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @onig_get_match_stack_limit_size() local_unnamed_addr #10 !guid !102 {
bb.a:
  %i.a = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onig_set_match_stack_limit_size(i32 noundef %0) local_unnamed_addr #11 !guid !103 {
bb.a:
  store i32 %0, ptr @MatchStackLimitSize, align 4, !tbaa !14
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !guid !104 {
bb.a:
  %6 = alloca %struct.OnigMatchArg, align 8       ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %5, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %3, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 -1, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 1, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 1, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %.not = icmp eq ptr %4, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  %i.n = add i32 %i.m, 1
  %i.o = tail call i32 @onig_region_resize(ptr noundef nonnull %4, i32 noundef %i.n) ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %4, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i, label %.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = zext nneg i32 %i.q to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 -1, i64 %i.x, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 -1, i64 %i.x, i1 false), !tbaa !28
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.y = sext i32 %i.o to i64
  br label %bb.e

.thread:                                          ; preds = %bb.c, %.lr.ph.i.i, %bb.a
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.aa, ptr noundef %1, ptr noundef %3, ptr noundef %2) #21
  %i.ac = call fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.ab, ptr noundef %6)
  %.pre = load ptr, ptr %6, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.ad = phi ptr [ %.pre, %.thread ], [ null, %bb.d ]
  %.1 = phi i64 [ %i.ac, %.thread ], [ %i.y, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @free(ptr noundef %i.ad) #21
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !51
  call void @free(ptr noundef %i.af) #21
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !52
  call void @free(ptr noundef %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i64 %.1
}

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 !guid !133 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [18 x i8], align 16               ; 5 uses
  %i.g = alloca [18 x i8], align 16               ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca [18 x i8], align 16               ; 5 uses
  %i.k = alloca [18 x i8], align 16               ; 6 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca ptr, align 8                      ; 206 uses
  %i.n = alloca ptr, align 8                      ; 194 uses
  %i.o = alloca ptr, align 8                      ; 302 uses
  %i.p = alloca ptr, align 8                      ; 95 uses
  %i.q = alloca [18 x i8], align 16               ; 3 uses
  %i.r = alloca [18 x i8], align 16               ; 3 uses
  %i.s = alloca ptr, align 8                      ; 2 uses
  %i.t = alloca ptr, align 8                      ; 2 uses
  %i.u = alloca ptr, align 8                      ; 2 uses
  %i.v = alloca ptr, align 8                      ; 2 uses
  %i.w = alloca ptr, align 8                      ; 2 uses
  %i.x = alloca ptr, align 8                      ; 2 uses
  %i.y = alloca ptr, align 8                      ; 2 uses
  %i.z = alloca ptr, align 8                      ; 2 uses
  %i.aa = alloca ptr, align 8                     ; 2 uses
  %i.ab = alloca ptr, align 8                     ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 6 uses
  %i.ae = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 125 uses
  %i.ag = getelementptr i8, ptr %0, i64 96
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54 ; 7 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !134
  %i.al = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !49
  %i.an = shl i32 %i.am, 1
  %i.ao = add i32 %i.ak, 2
  %i.ap = add i32 %i.ao, %i.an                    ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = icmp sgt i32 %i.ap, 100
  br i1 %i.ar, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #22 ; 4 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !38    ; 5 uses
  %.not2536 = icmp eq ptr %i.au, null
  br i1 %.not2536, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.au, ptr %i.n, align 8, !tbaa !56
  store ptr %i.au, ptr %i.o, align 8, !tbaa !56
  %i.av = getelementptr i8, ptr %5, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !57
  %i.ax = getelementptr [48 x i8], ptr %i.au, i64 %i.aw
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ay = alloca [7680 x i8], align 16            ; 4 uses
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !56
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7680
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ba = load ptr, ptr %5, align 8, !tbaa !38    ; 5 uses
  %.not = icmp eq ptr %i.ba, null
  %i.bb = shl nsw i64 %i.aq, 3                    ; 3 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = alloca i8, i64 %i.bb, align 16
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !56
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !56
  %i.bd = getelementptr i8, ptr %5, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !57
  %i.bf = getelementptr [48 x i8], ptr %i.ba, i64 %i.be
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bg = add nsw i64 %i.bb, 7680
  %i.bh = alloca i8, i64 %i.bg, align 16          ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bb  ; 4 uses
  store ptr %i.bi, ptr %i.n, align 8, !tbaa !56
  store ptr %i.bi, ptr %i.o, align 8, !tbaa !56
  %i.bj = getelementptr i8, ptr %i.bi, i64 7680
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %.sink = phi ptr [ %i.az, %bb.d ], [ %i.ax, %bb.c ], [ %i.bj, %bb.g ], [ %i.bf, %bb.f ]
  %i.bk = phi ptr [ %i.ay, %bb.d ], [ %i.au, %bb.c ], [ %i.bi, %bb.g ], [ %i.ba, %bb.f ] ; 97 uses
  %.02227 = phi ptr [ %i.at, %bb.d ], [ %i.at, %bb.c ], [ null, %bb.g ], [ null, %bb.f ] ; 49 uses
  %.02226 = phi ptr [ %i.at, %bb.d ], [ %i.at, %bb.c ], [ %i.bh, %bb.g ], [ %i.bc, %bb.f ] ; 18 uses
  store ptr %.sink, ptr %i.p, align 8, !tbaa !56
  %i.bl = getelementptr i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !135 ; 2 uses
  %i.bn = load i32, ptr %i.al, align 8, !tbaa !49 ; 5 uses
  %i.bo = load i32, ptr %i.aj, align 4, !tbaa !134
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %.02226, i64 %i.bp ; 27 uses
  %i.br = add i32 %i.bn, 1                        ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %i.bs ; 24 uses
  %i.bu = getelementptr [8 x i8], ptr %.02226, i64 %i.aq
  %i.bv = icmp ult ptr %i.bq, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader, label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bw = shl nsw i64 %i.aq, 3
  %i.bx = shl nsw i64 %i.bp, 3
  %i.by = xor i64 %i.bx, -1
  %i.bz = add nsw i64 %i.bw, %i.by
  %i.ca = and i64 %i.bz, -16
  %i.cb = add nsw i64 %i.ca, 16
  call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 -1, i64 %i.cb, i1 false), !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.preheader
  store i32 1, ptr %i.bk, align 8, !tbaa !137
  %i.cc = getelementptr i8, ptr %i.bk, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !138
  %i.cd = getelementptr i8, ptr %i.bk, i64 16
  store ptr @match_at.FinishCode, ptr %i.cd, align 8, !tbaa !58
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.cf = getelementptr i8, ptr %i.ce, i64 48
  store ptr %i.cf, ptr %i.o, align 8, !tbaa !56
  store ptr %3, ptr %i.m, align 8, !tbaa !27
  %i.cg = getelementptr i8, ptr %i.ai, i64 1
  %i.ch = getelementptr i8, ptr %i.af, i64 16     ; 27 uses
  %i.ci = getelementptr i8, ptr %i.af, i64 20     ; 39 uses
  %i.cj = getelementptr i8, ptr %5, i64 120       ; 37 uses
  %i.ck = getelementptr i8, ptr %5, i64 88        ; 17 uses
  %i.cl = getelementptr i8, ptr %0, i64 44        ; 7 uses
  %i.cm = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %i.cn = getelementptr i8, ptr %5, i64 80        ; 14 uses
  %i.co = getelementptr i8, ptr %5, i64 104       ; 12 uses
  %i.cp = getelementptr i8, ptr %5, i64 96        ; 14 uses
  %i.cq = getelementptr i8, ptr %5, i64 112       ; 13 uses
  %i.cr = ptrtoint ptr %1 to i64                  ; 15 uses
  %i.cs = getelementptr i8, ptr %5, i64 64        ; 12 uses
  %i.ct = getelementptr i8, ptr %5, i64 72        ; 4 uses
  %i.cu = getelementptr i8, ptr %0, i64 40        ; 6 uses
  %i.cv = getelementptr i8, ptr %i.af, i64 56     ; 6 uses
  %i.cw = getelementptr i8, ptr %5, i64 40
  %i.cx = and i32 %i.ad, 65536
  %.not2679 = icmp eq i32 %i.cx, 0                ; 5 uses
  %i.cy = getelementptr i8, ptr %i.af, i64 32     ; 41 uses
  %i.cz = getelementptr i8, ptr %5, i64 16        ; 5 uses
  %i.da = getelementptr i8, ptr %i.af, i64 24     ; 4 uses
  %i.db = getelementptr i8, ptr %i.af, i64 128    ; 14 uses
  %i.dc = getelementptr i8, ptr %i.af, i64 88     ; 12 uses
  %i.dd = ptrtoint ptr %3 to i64
  %i.de = and i32 %i.ad, 16
  %.not2815 = icmp ne i32 %i.de, 0                ; 2 uses
  %i.df = getelementptr i8, ptr %5, i64 48        ; 2 uses
  %i.dg = getelementptr i8, ptr %5, i64 56
  %i.dh = getelementptr i8, ptr %5, i64 24
  %.not28174093 = icmp slt i32 %i.bn, 1
  %i.di = and i32 %i.ad, 48
  %.not2818 = icmp eq i32 %i.di, 0
  %i.dj = and i32 %i.ad, 32
  %.not2819 = icmp ne i32 %i.dj, 0
  %i.dk = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.br, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.backedge

bb.j:                                             ; preds = %.backedge
  %i.dl = load ptr, ptr %i.m, align 8, !tbaa !27  ; 3 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dn = sub i64 %i.dm, %i.dd                    ; 6 uses
  %i.do = icmp sgt i64 %i.dn, %.32190
  br i1 %i.do, label %bb.k, label %.loopexit3529

bb.k:                                             ; preds = %bb.j
  br i1 %.not2815, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dp = load i64, ptr %i.df, align 8, !tbaa !43
  %i.dq = icmp sgt i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.m, label %.loopexit3529

bb.m:                                             ; preds = %bb.l
  store i64 %i.dn, ptr %i.df, align 8, !tbaa !43
  store ptr %3, ptr %i.dg, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.dr = load ptr, ptr %i.dh, align 8, !tbaa !40 ; 3 uses
  %.not2816 = icmp eq ptr %i.dr, null
  br i1 %.not2816, label %.loopexit3529, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = icmp ugt ptr %.02225, %i.dl
  %i.dt = select i1 %i.ds, ptr %i.dl, ptr %.02225
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.cr
  %i.dw = getelementptr i8, ptr %i.dr, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !33 ; 3 uses
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !28
  %i.dy = sub i64 %i.dm, %i.cr
  %i.dz = getelementptr i8, ptr %i.dr, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !32 ; 3 uses
  store i64 %i.dy, ptr %i.ea, align 8, !tbaa !28
  br i1 %.not28174093, label %.loopexit3529, label %.lr.ph4098

.lr.ph4098:                                       ; preds = %bb.o
  %i.eb = load ptr, ptr %i.n, align 8             ; 2 uses
  br label %bb.p

end_hunk_0
begin_hunk_1_@match_at:bb.a
  br i1 %i.cll, label %is_mbc_newline_ex.exit.thread, label %bb.yy

bb.yy:                                            ; preds = %.loopexit3562
  %i.clm = getelementptr i8, ptr %.142218, i64 1
  br label %.backedge.backedge

bb.yz:                                            ; preds = %.backedge
  %i.cln = load i32, ptr %.25, align 4, !tbaa !14
  %i.clo = getelementptr i8, ptr %.25, i64 4
  %i.clp = load i32, ptr %i.clo, align 4, !tbaa !14 ; 6 uses
  %i.clq = getelementptr i8, ptr %.25, i64 8
  %i.clr = load i32, ptr %i.clq, align 4, !tbaa !14 ; 4 uses
  %i.cls = getelementptr i8, ptr %.25, i64 12     ; 3 uses
  %i.clt = load ptr, ptr %i.m, align 8, !tbaa !27 ; 5 uses
  %i.clu = load ptr, ptr %i.o, align 8, !tbaa !56 ; 2 uses
  %i.clv = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %.066.i = getelementptr i8, ptr %i.clu, i64 -48 ; 2 uses
  %.not67.i = icmp uge ptr %.066.i, %i.clv
  %i.clw = icmp sgt i32 %i.clr, 0
  %or.cond.i = and i1 %i.clw, %.not67.i
  br i1 %or.cond.i, label %.lr.ph.split.us.split.us.i, label %backref_match_at_nested_level.exit.thread

.lr.ph.split.us.split.us.i:                       ; preds = %bb.yz, %mem_is_in_memp.exit.thread.us.us.i
  %.071.us.us.i = phi ptr [ %.0.us.us.i, %mem_is_in_memp.exit.thread.us.us.i ], [ %.066.i, %bb.yz ] ; 3 uses
  %.pn70.us.us.i = phi ptr [ %.071.us.us.i, %mem_is_in_memp.exit.thread.us.us.i ], [ %i.clu, %bb.yz ] ; 4 uses
  %.03969.us.us.i = phi i32 [ %.1.us.us.i, %mem_is_in_memp.exit.thread.us.us.i ], [ 0, %bb.yz ] ; 4 uses
  %.04068.us.us.i = phi ptr [ %.141.us.us.i, %mem_is_in_memp.exit.thread.us.us.i ], [ null, %bb.yz ] ; 10 uses
  %i.clx = load i32, ptr %.071.us.us.i, align 8, !tbaa !137 ; 2 uses
  switch i32 %i.clx, label %bb.zc [
    i32 2048, label %bb.zb
    i32 2304, label %bb.za
  ]

bb.za:                                            ; preds = %.lr.ph.split.us.split.us.i
  %i.cly = add i32 %.03969.us.us.i, 1
  br label %mem_is_in_memp.exit.thread.us.us.i

bb.zb:                                            ; preds = %.lr.ph.split.us.split.us.i
  %i.clz = add i32 %.03969.us.us.i, -1
  br label %mem_is_in_memp.exit.thread.us.us.i

bb.zc:                                            ; preds = %.lr.ph.split.us.split.us.i
  %i.cma = icmp eq i32 %.03969.us.us.i, %i.clp
  br i1 %i.cma, label %bb.zd, label %mem_is_in_memp.exit.thread.us.us.i

bb.zd:                                            ; preds = %bb.zc
  switch i32 %i.clx, label %mem_is_in_memp.exit.thread.us.us.i [
    i32 256, label %.lr.ph.i.preheader.us.us.i
    i32 33280, label %.lr.ph.i52.preheader.us.us.i
  ]

.lr.ph.i52.preheader.us.us.i:                     ; preds = %bb.zd
  %i.cmb = getelementptr i8, ptr %.pn70.us.us.i, i64 -32
  %i.cmc = load i32, ptr %i.cmb, align 8, !tbaa !58
  br label %.lr.ph.i52.us.us.i

.lr.ph.i52.us.us.i:                               ; preds = %bb.ze, %.lr.ph.i52.preheader.us.us.i
  %.010.i53.us.us.i = phi i32 [ %i.cmh, %bb.ze ], [ 0, %.lr.ph.i52.preheader.us.us.i ]
  %.079.i54.us.us.i = phi ptr [ %i.cmg, %bb.ze ], [ %i.cls, %.lr.ph.i52.preheader.us.us.i ] ; 2 uses
  %i.cmd = load i16, ptr %.079.i54.us.us.i, align 2, !tbaa !72
  %i.cme = sext i16 %i.cmd to i32
  %i.cmf = icmp eq i32 %i.cmc, %i.cme
  br i1 %i.cmf, label %mem_is_in_memp.exit56.us.us.i, label %bb.ze

bb.ze:                                            ; preds = %.lr.ph.i52.us.us.i
  %i.cmg = getelementptr i8, ptr %.079.i54.us.us.i, i64 2
  %i.cmh = add nuw nsw i32 %.010.i53.us.us.i, 1   ; 2 uses
  %exitcond.not.i55.us.us.i = icmp eq i32 %i.cmh, %i.clr
  br i1 %exitcond.not.i55.us.us.i, label %mem_is_in_memp.exit.thread.us.us.i, label %.lr.ph.i52.us.us.i, !llvm.loop !127

mem_is_in_memp.exit56.us.us.i:                    ; preds = %.lr.ph.i52.us.us.i
  %i.cmi = getelementptr i8, ptr %.pn70.us.us.i, i64 -24
  %i.cmj = load ptr, ptr %i.cmi, align 8, !tbaa !58
  br label %mem_is_in_memp.exit.thread.us.us.i

.lr.ph.i.preheader.us.us.i:                       ; preds = %bb.zd
  %i.cmk = getelementptr i8, ptr %.pn70.us.us.i, i64 -32
  %i.cml = load i32, ptr %i.cmk, align 8, !tbaa !58
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %bb.zf, %.lr.ph.i.preheader.us.us.i
  %.010.i.us.us.i = phi i32 [ %i.cmq, %bb.zf ], [ 0, %.lr.ph.i.preheader.us.us.i ]
  %.079.i.us.us.i = phi ptr [ %i.cmp, %bb.zf ], [ %i.cls, %.lr.ph.i.preheader.us.us.i ] ; 2 uses
  %i.cmm = load i16, ptr %.079.i.us.us.i, align 2, !tbaa !72
  %i.cmn = sext i16 %i.cmm to i32
  %i.cmo = icmp eq i32 %i.cml, %i.cmn
  br i1 %i.cmo, label %mem_is_in_memp.exit.us.us.i, label %bb.zf

bb.zf:                                            ; preds = %.lr.ph.i.us.us.i
  %i.cmp = getelementptr i8, ptr %.079.i.us.us.i, i64 2
  %i.cmq = add nuw nsw i32 %.010.i.us.us.i, 1     ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.cmq, %i.clr
  br i1 %exitcond.not.i.us.us.i, label %mem_is_in_memp.exit.thread.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !127

mem_is_in_memp.exit.us.us.i:                      ; preds = %.lr.ph.i.us.us.i
  %.not48.us.us.i = icmp eq ptr %.04068.us.us.i, null
  br i1 %.not48.us.us.i, label %mem_is_in_memp.exit.thread.us.us.i, label %.split.us.i

mem_is_in_memp.exit.thread.us.us.i:               ; preds = %bb.ze, %bb.zf, %mem_is_in_memp.exit.us.us.i, %mem_is_in_memp.exit56.us.us.i, %bb.zd, %bb.zc, %bb.zb, %bb.za
  %.141.us.us.i = phi ptr [ %.04068.us.us.i, %bb.zb ], [ %.04068.us.us.i, %bb.za ], [ null, %mem_is_in_memp.exit.us.us.i ], [ %.04068.us.us.i, %bb.zc ], [ %i.cmj, %mem_is_in_memp.exit56.us.us.i ], [ %.04068.us.us.i, %bb.zf ], [ %.04068.us.us.i, %bb.zd ], [ %.04068.us.us.i, %bb.ze ]
  %.1.us.us.i = phi i32 [ %i.clz, %bb.zb ], [ %i.cly, %bb.za ], [ %i.clp, %mem_is_in_memp.exit.us.us.i ], [ %.03969.us.us.i, %bb.zc ], [ %i.clp, %mem_is_in_memp.exit56.us.us.i ], [ %i.clp, %bb.zf ], [ %i.clp, %bb.zd ], [ %i.clp, %bb.ze ]
  %.0.us.us.i = getelementptr i8, ptr %.071.us.us.i, i64 -48 ; 2 uses
  %.not.us.us.i = icmp ult ptr %.0.us.us.i, %i.clv
  br i1 %.not.us.us.i, label %backref_match_at_nested_level.exit.thread, label %.lr.ph.split.us.split.us.i, !llvm.loop !128

.split.us.i:                                      ; preds = %mem_is_in_memp.exit.us.us.i
  %i.cmr = getelementptr i8, ptr %.pn70.us.us.i, i64 -24
  %i.cms = load ptr, ptr %i.cmr, align 8, !tbaa !58 ; 4 uses
  %i.cmt = ptrtoint ptr %.04068.us.us.i to i64
  %i.cmu = ptrtoint ptr %i.cms to i64
  %i.cmv = sub i64 %i.cmt, %i.cmu                 ; 2 uses
  %i.cmw = ptrtoint ptr %.3 to i64
  %i.cmx = ptrtoint ptr %i.clt to i64
  %i.cmy = sub i64 %i.cmw, %i.cmx
  %i.cmz = icmp sgt i64 %i.cmv, %i.cmy
  br i1 %i.cmz, label %backref_match_at_nested_level.exit.thread, label %bb.zg

bb.zg:                                            ; preds = %.split.us.i
  store ptr %i.clt, ptr %i.d, align 8, !tbaa !27
  %.not49.i = icmp eq i32 %i.cln, 0
  br i1 %.not49.i, label %.preheader.i3088.preheader, label %bb.zh

.preheader.i3088.preheader:                       ; preds = %bb.zg
  %i.cna = icmp ult ptr %i.cms, %.04068.us.us.i
  br i1 %i.cna, label %.lr.ph, label %backref_match_at_nested_level.exit

bb.zh:                                            ; preds = %bb.zg
  %i.cnb = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.cnc = call fastcc i32 @string_cmp_ic(ptr noundef %i.cnb, i32 noundef %i.ah, ptr noundef %i.cms, ptr noundef %i.d, i64 noundef %i.cmv, ptr noundef %.3)
  %i.cnd = icmp eq i32 %i.cnc, 0
  br i1 %i.cnd, label %backref_match_at_nested_level.exit.thread, label %._crit_edge.i3085

._crit_edge.i3085:                                ; preds = %bb.zh
  %.pre.i3086 = load ptr, ptr %i.d, align 8, !tbaa !27
  br label %backref_match_at_nested_level.exit

.preheader.i3088:                                 ; preds = %.lr.ph
  %i.cne = getelementptr i8, ptr %.042.i6218, i64 1 ; 2 uses
  %i.cnf = getelementptr i8, ptr %i.cnh, i64 1    ; 2 uses
  %i.cng = icmp ult ptr %i.cne, %.04068.us.us.i
  br i1 %i.cng, label %.lr.ph, label %backref_match_at_nested_level.exit, !llvm.loop !129

.lr.ph:                                           ; preds = %.preheader.i3088.preheader, %.preheader.i3088
  %.042.i6218 = phi ptr [ %i.cne, %.preheader.i3088 ], [ %i.cms, %.preheader.i3088.preheader ] ; 2 uses
  %i.cnh = phi ptr [ %i.cnf, %.preheader.i3088 ], [ %i.clt, %.preheader.i3088.preheader ] ; 2 uses
  %i.cni = load i8, ptr %.042.i6218, align 1, !tbaa !58
  %i.cnj = load i8, ptr %i.cnh, align 1, !tbaa !58
  %.not50.i = icmp eq i8 %i.cni, %i.cnj
  br i1 %.not50.i, label %.preheader.i3088, label %backref_match_at_nested_level.exit.thread, !llvm.loop !129

backref_match_at_nested_level.exit.thread:        ; preds = %mem_is_in_memp.exit.thread.us.us.i, %.lr.ph, %.split.us.i, %bb.zh, %bb.yz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %is_mbc_newline_ex.exit.thread

backref_match_at_nested_level.exit:               ; preds = %.preheader.i3088, %.preheader.i3088.preheader, %._crit_edge.i3085
  %i.cnk = phi ptr [ %.pre.i3086, %._crit_edge.i3085 ], [ %i.clt, %.preheader.i3088.preheader ], [ %i.cnf, %.preheader.i3088 ] ; 2 uses
  store ptr %i.cnk, ptr %i.m, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.zi

bb.zi:                                            ; preds = %backref_match_at_nested_level.exit, %bb.zl
  %i.cnl = phi ptr [ %i.cnk, %backref_match_at_nested_level.exit ], [ %i.cnr, %bb.zl ]
  %.17 = phi ptr [ %i.clt, %backref_match_at_nested_level.exit ], [ %i.cnu, %bb.zl ] ; 4 uses
  %i.cnm = load i32, ptr %i.ch, align 8, !tbaa !62 ; 2 uses
  %i.cnn = load i32, ptr %i.ci, align 4, !tbaa !63
  %i.cno = icmp eq i32 %i.cnm, %i.cnn
  br i1 %i.cno, label %bb.zj, label %bb.zk

bb.zj:                                            ; preds = %bb.zi
  %i.cnp = icmp ult ptr %.17, %.3
  %spec.select2863 = select i1 %i.cnp, i32 %i.cnm, i32 0
  br label %bb.zl

bb.zk:                                            ; preds = %bb.zi
  %i.cnq = call i32 @onigenc_mbclen(ptr noundef %.17, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %.pre4548 = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zj, %bb.zk
  %i.cnr = phi ptr [ %.pre4548, %bb.zk ], [ %i.cnl, %bb.zj ] ; 2 uses
  %i.cns = phi i32 [ %i.cnq, %bb.zk ], [ %spec.select2863, %bb.zj ]
  %i.cnt = sext i32 %i.cns to i64
  %i.cnu = getelementptr i8, ptr %.17, i64 %i.cnt ; 2 uses
  %i.cnv = icmp ult ptr %i.cnu, %i.cnr
  br i1 %i.cnv, label %bb.zi, label %bb.zm, !llvm.loop !130

bb.zm:                                            ; preds = %bb.zl
  %i.cnw = shl nuw i32 %i.clr, 1
  %i.cnx = sext i32 %i.cnw to i64
  %i.cny = getelementptr i8, ptr %i.cls, i64 %i.cnx ; 2 uses
  %i.cnz = getelementptr i8, ptr %i.cny, i64 1
  br label %.backedge.backedge

bb.zn:                                            ; preds = %.backedge
  %i.coa = load i16, ptr %.25, align 2, !tbaa !72
  %i.cob = getelementptr i8, ptr %.25, i64 2
  %i.coc = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.cod = load ptr, ptr %i.o, align 8, !tbaa !56 ; 2 uses
  %i.coe = ptrtoint ptr %i.coc to i64             ; 3 uses
  %i.cof = ptrtoint ptr %i.cod to i64             ; 2 uses
  %i.cog = sub i64 %i.coe, %i.cof
  %i.coh = icmp slt i64 %i.cog, 48
  br i1 %i.coh, label %bb.zo, label %bb.aaa

bb.zo:                                            ; preds = %bb.zn
  %i.coi = load ptr, ptr %i.n, align 8, !tbaa !56 ; 5 uses
  %i.coj = ptrtoint ptr %i.coi to i64             ; 2 uses
  %i.cok = sub i64 %i.coe, %i.coj                 ; 3 uses
  %i.col = sdiv exact i64 %i.cok, 48              ; 4 uses
  %i.com = icmp eq ptr %i.coi, %i.bk              ; 2 uses
  br i1 %i.com, label %bb.zp, label %bb.zs

bb.zp:                                            ; preds = %bb.zo
  %i.con = load ptr, ptr %5, align 8, !tbaa !38
  %i.coo = icmp eq ptr %i.con, null
  br i1 %i.coo, label %bb.zq, label %bb.zs

bb.zq:                                            ; preds = %bb.zp
  %i.cop = shl i64 %i.cok, 1
  %i.coq = call noalias ptr @malloc(i64 noundef %i.cop) #22 ; 3 uses
  %i.cor = icmp eq ptr %i.coq, null
  br i1 %i.cor, label %.loopexit3595, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.coq, ptr noundef nonnull align 1 %i.coi, i64 noundef %i.cok, i1 noundef false) #21
  %i.cos = shl nsw i64 %i.col, 1
  br label %stack_double.exit3094

bb.zs:                                            ; preds = %bb.zp, %bb.zo
  %i.cot = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.cou = shl nsw i64 %i.col, 1                  ; 3 uses
  %.not.i3089 = icmp eq i32 %i.cot, 0
  br i1 %.not.i3089, label %bb.zv, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.cov = zext i32 %i.cot to i64                 ; 2 uses
  %i.cow = icmp ugt i64 %i.cou, %i.cov
  br i1 %i.cow, label %bb.zu, label %bb.zv

bb.zu:                                            ; preds = %bb.zt
  %i.cox = trunc i64 %i.col to i32
  %i.coy = icmp eq i32 %i.cot, %i.cox
  br i1 %i.coy, label %.loopexit3595, label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zt, %bb.zs
  %.050.i3090 = phi i64 [ %i.cou, %bb.zs ], [ %i.cou, %bb.zt ], [ %i.cov, %bb.zu ] ; 2 uses
  %i.coz = mul i64 %.050.i3090, 48
  %i.cpa = call ptr @realloc(ptr noundef %i.coi, i64 noundef %i.coz) #23 ; 2 uses
  %i.cpb = icmp eq ptr %i.cpa, null
  br i1 %i.cpb, label %bb.zw, label %stack_double.exit3094

bb.zw:                                            ; preds = %bb.zv
  br i1 %i.com, label %.loopexit3595, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  store ptr %i.coi, ptr %5, align 8, !tbaa !38
  %i.cpc = getelementptr i8, ptr %5, i64 8
  store i64 %i.col, ptr %i.cpc, align 8, !tbaa !57
  br label %.loopexit3595

stack_double.exit3094:                            ; preds = %bb.zr, %bb.zv
  %.2.i3091 = phi i64 [ %i.cos, %bb.zr ], [ %.050.i3090, %bb.zv ]
  %.1.i3092 = phi ptr [ %i.coq, %bb.zr ], [ %i.cpa, %bb.zv ] ; 3 uses
  %i.cpd = sub i64 %i.cof, %i.coj
  %i.cpe = getelementptr i8, ptr %.1.i3092, i64 %i.cpd ; 2 uses
  store ptr %i.cpe, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3092, ptr %i.n, align 8, !tbaa !56
  %i.cpf = getelementptr [48 x i8], ptr %.1.i3092, i64 %.2.i3091
  store ptr %i.cpf, ptr %i.p, align 8, !tbaa !56
  br label %bb.aaa

.loopexit3595:                                    ; preds = %bb.zq, %bb.zu, %bb.zx, %bb.zw
  %.153.i3093.ph = phi i64 [ -5, %bb.zw ], [ -5, %bb.zx ], [ -5, %bb.zq ], [ -15, %bb.zu ]
  %i.cpg = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2581 = icmp eq ptr %i.cpg, %i.bk
  br i1 %.not2581, label %bb.zz, label %bb.zy

bb.zy:                                            ; preds = %.loopexit3595
  store ptr %i.cpg, ptr %5, align 8, !tbaa !38
  %i.cph = ptrtoint ptr %i.cpg to i64
  %i.cpi = sub i64 %i.coe, %i.cph
  %i.cpj = sdiv exact i64 %i.cpi, 48
  %i.cpk = getelementptr i8, ptr %5, i64 8
  store i64 %i.cpj, ptr %i.cpk, align 8, !tbaa !57
  br label %bb.zz

bb.zz:                                            ; preds = %.loopexit3595, %bb.zy
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.aaa:                                           ; preds = %stack_double.exit3094, %bb.zn
  %6 = phi ptr [ %i.cpe, %stack_double.exit3094 ], [ %i.cod, %bb.zn ] ; 4 uses
  %.pre-phi4601 = ptrtoint ptr %6 to i64
  store i32 12288, ptr %6, align 8, !tbaa !137
  %i.cpl = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.cpm = ptrtoint ptr %i.cpl to i64
  %i.cpn = sub i64 %.pre-phi4601, %i.cpm
  %i.cpo = sdiv exact i64 %i.cpn, 48
  %i.cpp = getelementptr i8, ptr %6, i64 8
  store i64 %i.cpo, ptr %i.cpp, align 8, !tbaa !138
  %i.cpq = sext i16 %i.coa to i32
  %i.cpr = getelementptr i8, ptr %6, i64 16
  store i32 %i.cpq, ptr %i.cpr, align 8, !tbaa !58
  %i.cps = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.cpt = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.cpu = getelementptr i8, ptr %i.cpt, i64 24
  store ptr %i.cps, ptr %i.cpu, align 8, !tbaa !58
  %i.cpv = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.cpw = getelementptr i8, ptr %i.cpv, i64 48
  store ptr %i.cpw, ptr %i.o, align 8, !tbaa !56
  %i.cpx = getelementptr i8, ptr %.25, i64 3
  br label %.backedge.backedge

bb.aab:                                           ; preds = %.backedge
  %i.cpy = load i16, ptr %.25, align 2, !tbaa !72
  %i.cpz = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %i.cqa = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.cqb = getelementptr i8, ptr %i.cqa, i64 -40
  %i.cqc = load i64, ptr %i.cqb, align 8, !tbaa !138
  %i.cqd = getelementptr [48 x i8], ptr %i.cpz, i64 %i.cqc
  %i.cqe = getelementptr i8, ptr %i.cqd, i64 48
  %i.cqf = sext i16 %i.cpy to i32
  br label %bb.aac

bb.aac:                                           ; preds = %.backedge6260, %bb.aab
  %.02264 = phi ptr [ %i.cqe, %bb.aab ], [ %i.cqg, %.backedge6260 ] ; 3 uses
  %i.cqg = getelementptr i8, ptr %.02264, i64 -48 ; 2 uses
  %i.cqh = load i32, ptr %i.cqg, align 8, !tbaa !137
  %i.cqi = icmp eq i32 %i.cqh, 12288
  br i1 %i.cqi, label %bb.aad, label %.backedge6260

bb.aad:                                           ; preds = %bb.aac
  %i.cqj = getelementptr i8, ptr %.02264, i64 -32
  %i.cqk = load i32, ptr %i.cqj, align 8, !tbaa !58
  %i.cql = icmp eq i32 %i.cqk, %i.cqf
  br i1 %i.cql, label %bb.aae, label %.backedge6260

.backedge6260:                                    ; preds = %bb.aad, %bb.aac
  br label %bb.aac

bb.aae:                                           ; preds = %bb.aad
  %i.cqm = getelementptr i8, ptr %.25, i64 2      ; 2 uses
  %i.cqn = getelementptr i8, ptr %.02264, i64 -24
  %i.cqo = load ptr, ptr %i.cqn, align 8, !tbaa !58
  %i.cqp = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.cqq = icmp eq ptr %i.cqo, %i.cqp
  br i1 %i.cqq, label %._crit_edge3997.thread, label %bb.aah

._crit_edge3997.thread:                           ; preds = %.preheader3572, %.preheader3571, %._crit_edge3993, %._crit_edge3997, %bb.aae
  %i.cqr = phi ptr [ %i.cpz, %bb.aae ], [ %i.cqx, %._crit_edge3997 ], [ %i.csp, %._crit_edge3993 ], [ %i.cqx, %.preheader3571 ], [ %i.csp, %.preheader3572 ]
  %.152219 = phi ptr [ %i.cqm, %bb.aae ], [ %i.crk, %._crit_edge3997 ], [ %i.ctc, %._crit_edge3993 ], [ %i.crk, %.preheader3571 ], [ %i.ctc, %.preheader3572 ]
  %i.cqs = load i8, ptr %.152219, align 1, !tbaa !58
  switch i8 %i.cqs, label %.loopexit3594 [
    i8 61, label %bb.aaf
    i8 62, label %bb.aaf
    i8 68, label %bb.aag
    i8 69, label %bb.aag
    i8 70, label %bb.aag
    i8 71, label %bb.aag
  ]

bb.aaf:                                           ; preds = %._crit_edge3997.thread, %._crit_edge3997.thread
  %i.cqt = getelementptr i8, ptr %.25, i64 7
  br label %bb.aah

bb.aag:                                           ; preds = %._crit_edge3997.thread, %._crit_edge3997.thread, %._crit_edge3997.thread, %._crit_edge3997.thread
  %i.cqu = getelementptr i8, ptr %.25, i64 5
  br label %bb.aah

bb.aah:                                           ; preds = %bb.aaf, %bb.aag, %bb.aae
  %.162220 = phi ptr [ %i.cqt, %bb.aaf ], [ %i.cqu, %bb.aag ], [ %i.cqm, %bb.aae ] ; 2 uses
  %i.cqv = getelementptr i8, ptr %.162220, i64 1
  br label %.backedge.backedge

bb.aai:                                           ; preds = %.backedge
  %i.cqw = load i16, ptr %.25, align 2, !tbaa !72
  %i.cqx = load ptr, ptr %i.n, align 8, !tbaa !56 ; 5 uses
  %i.cqy = load ptr, ptr %i.o, align 8, !tbaa !56 ; 3 uses
  %i.cqz = getelementptr i8, ptr %i.cqy, i64 -40
  %i.cra = load i64, ptr %i.cqz, align 8, !tbaa !138
  %i.crb = getelementptr [48 x i8], ptr %i.cqx, i64 %i.cra
  %i.crc = getelementptr i8, ptr %i.crb, i64 48
  %i.crd = sext i16 %i.cqw to i32
  br label %bb.aaj

bb.aaj:                                           ; preds = %.backedge6261, %bb.aai
  %.02268 = phi ptr [ %i.crc, %bb.aai ], [ %i.cre, %.backedge6261 ] ; 3 uses
  %i.cre = getelementptr i8, ptr %.02268, i64 -48 ; 4 uses
  %i.crf = load i32, ptr %i.cre, align 8, !tbaa !137
  %i.crg = icmp eq i32 %i.crf, 12288
  br i1 %i.crg, label %bb.aak, label %.backedge6261

bb.aak:                                           ; preds = %bb.aaj
  %i.crh = getelementptr i8, ptr %.02268, i64 -32
  %i.cri = load i32, ptr %i.crh, align 8, !tbaa !58
  %i.crj = icmp eq i32 %i.cri, %i.crd
  br i1 %i.crj, label %bb.aal, label %.backedge6261

.backedge6261:                                    ; preds = %bb.aak, %bb.aaj
  br label %bb.aaj

bb.aal:                                           ; preds = %bb.aak
  %i.crk = getelementptr i8, ptr %.25, i64 2      ; 3 uses
  %i.crl = getelementptr i8, ptr %.02268, i64 -24
  %i.crm = load ptr, ptr %i.crl, align 8, !tbaa !58 ; 2 uses
  %i.crn = load ptr, ptr %i.m, align 8, !tbaa !27
  %.not2574 = icmp eq ptr %i.crm, %i.crn
  br i1 %.not2574, label %.preheader3571, label %.thread3393

.preheader3571:                                   ; preds = %bb.aal
  %i.cro = icmp ult ptr %i.cre, %i.cqy
  br i1 %i.cro, label %.lr.ph3996, label %._crit_edge3997.thread

.lr.ph3996:                                       ; preds = %.preheader3571, %bb.aau
  %.022653995 = phi i32 [ %.12266, %bb.aau ], [ 1, %.preheader3571 ] ; 2 uses
  %.122693994 = phi ptr [ %i.csk, %bb.aau ], [ %i.cre, %.preheader3571 ] ; 5 uses
  %i.crp = load i32, ptr %.122693994, align 8, !tbaa !137
  %i.crq = icmp eq i32 %i.crp, 256
  br i1 %i.crq, label %bb.aam, label %bb.aau

bb.aam:                                           ; preds = %.lr.ph3996
  %i.crr = getelementptr i8, ptr %.122693994, i64 40
  %i.crs = load i64, ptr %i.crr, align 8, !tbaa !58 ; 3 uses
  %i.crt = icmp eq i64 %i.crs, -1
  br i1 %i.crt, label %.thread3393, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.cru = getelementptr i8, ptr %.122693994, i64 16
  %i.crv = load i32, ptr %i.cru, align 8, !tbaa !58 ; 2 uses
  %i.crw = icmp slt i32 %i.crv, 32
  %i.crx = load i32, ptr %i.cl, align 4, !tbaa !140 ; 2 uses
  br i1 %i.crw, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %bb.aan
  %i.cry = shl nuw i32 1, %i.crv
  %i.crz = and i32 %i.crx, %i.cry
  %.not2576 = icmp eq i32 %i.crz, 0
  br i1 %.not2576, label %bb.aar, label %bb.aaq

bb.aap:                                           ; preds = %bb.aan
  %i.csa = and i32 %i.crx, 1
  %.not2575 = icmp eq i32 %i.csa, 0
  br i1 %.not2575, label %bb.aar, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap, %bb.aao
  %i.csb = getelementptr [48 x i8], ptr %i.cqx, i64 %i.crs
  %i.csc = getelementptr i8, ptr %i.csb, i64 24
  %i.csd = load ptr, ptr %i.csc, align 8, !tbaa !58
  br label %bb.aas

bb.aar:                                           ; preds = %bb.aap, %bb.aao
  %i.cse = inttoptr i64 %i.crs to ptr
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aar, %bb.aaq
  %.02270 = phi ptr [ %i.csd, %bb.aaq ], [ %i.cse, %bb.aar ] ; 2 uses
  %i.csf = getelementptr i8, ptr %.122693994, i64 32
  %i.csg = load i64, ptr %i.csf, align 8, !tbaa !58
  %i.csh = getelementptr [48 x i8], ptr %i.cqx, i64 %i.csg
  %i.csi = getelementptr i8, ptr %i.csh, i64 24
  %i.csj = load ptr, ptr %i.csi, align 8, !tbaa !58
  %.not2577 = icmp eq ptr %i.csj, %.02270
  br i1 %.not2577, label %bb.aat, label %.thread3393

bb.aat:                                           ; preds = %bb.aas
  %.not2578 = icmp eq ptr %.02270, %i.crm
  %spec.select2864 = select i1 %.not2578, i32 %.022653995, i32 -1
  br label %bb.aau

bb.aau:                                           ; preds = %bb.aat, %.lr.ph3996
  %.12266 = phi i32 [ %.022653995, %.lr.ph3996 ], [ %spec.select2864, %bb.aat ] ; 2 uses
  %i.csk = getelementptr i8, ptr %.122693994, i64 48 ; 2 uses
  %i.csl = icmp ult ptr %i.csk, %i.cqy
  br i1 %i.csl, label %.lr.ph3996, label %._crit_edge3997, !llvm.loop !131

._crit_edge3997:                                  ; preds = %bb.aau
  %i.csm = icmp eq i32 %.12266, -1
  br i1 %i.csm, label %is_mbc_newline_ex.exit.thread, label %._crit_edge3997.thread

.thread3393:                                      ; preds = %bb.aas, %bb.aam, %bb.aal
  %i.csn = getelementptr i8, ptr %.25, i64 3
  br label %.backedge.backedge

bb.aav:                                           ; preds = %.backedge
  %i.cso = load i16, ptr %.25, align 2, !tbaa !72
  %i.csp = load ptr, ptr %i.n, align 8, !tbaa !56 ; 11 uses
  %i.csq = load ptr, ptr %i.o, align 8, !tbaa !56 ; 5 uses
  %i.csr = getelementptr i8, ptr %i.csq, i64 -40
  %i.css = load i64, ptr %i.csr, align 8, !tbaa !138
  %i.cst = getelementptr [48 x i8], ptr %i.csp, i64 %i.css
  %i.csu = getelementptr i8, ptr %i.cst, i64 48
  %i.csv = sext i16 %i.cso to i32                 ; 3 uses
  br label %.outer6262

.outer6262:                                       ; preds = %.outer6262.backedge, %bb.aav
  %.02276.ph = phi ptr [ %i.csu, %bb.aav ], [ %i.csw, %.outer6262.backedge ]
  %.02274.ph = phi i32 [ 0, %bb.aav ], [ %.02274.ph.be, %.outer6262.backedge ] ; 3 uses
  br label %bb.aaw

bb.aaw:                                           ; preds = %.backedge6263, %.outer6262
  %.02276 = phi ptr [ %.02276.ph, %.outer6262 ], [ %i.csw, %.backedge6263 ] ; 4 uses
  %i.csw = getelementptr i8, ptr %.02276, i64 -48 ; 5 uses
  %i.csx = load i32, ptr %i.csw, align 8, !tbaa !137
  switch i32 %i.csx, label %.backedge6263 [
    i32 12288, label %bb.aax
    i32 20480, label %bb.abk
  ]

.backedge6263:                                    ; preds = %bb.aaw, %bb.aax
  br label %bb.aaw

bb.aax:                                           ; preds = %bb.aaw
  %i.csy = getelementptr i8, ptr %.02276, i64 -32
  %i.csz = load i32, ptr %i.csy, align 8, !tbaa !58
  %i.cta = icmp eq i32 %i.csz, %i.csv
  br i1 %i.cta, label %bb.aay, label %.backedge6263

bb.aay:                                           ; preds = %bb.aax
  %i.ctb = icmp eq i32 %.02274.ph, 0
  br i1 %i.ctb, label %bb.aaz, label %bb.abj

bb.aaz:                                           ; preds = %bb.aay
  %i.ctc = getelementptr i8, ptr %.25, i64 2      ; 3 uses
  %i.ctd = getelementptr i8, ptr %.02276, i64 -24
  %i.cte = load ptr, ptr %i.ctd, align 8, !tbaa !58 ; 2 uses
  %i.ctf = load ptr, ptr %i.m, align 8, !tbaa !27
  %.not2566 = icmp eq ptr %i.cte, %i.ctf
  br i1 %.not2566, label %.preheader3572, label %.thread3396

.preheader3572:                                   ; preds = %bb.aaz
  %i.ctg = icmp ult ptr %i.csw, %i.csq
  br i1 %i.ctg, label %.lr.ph3992, label %._crit_edge3997.thread

.lr.ph3992:                                       ; preds = %.preheader3572, %bb.abi
  %.022713991 = phi i32 [ %.12272, %bb.abi ], [ 1, %.preheader3572 ] ; 2 uses
  %.122773990 = phi ptr [ %i.cuc, %bb.abi ], [ %i.csw, %.preheader3572 ] ; 5 uses
  %i.cth = load i32, ptr %.122773990, align 8, !tbaa !137
  %i.cti = icmp eq i32 %i.cth, 256
  br i1 %i.cti, label %bb.aba, label %bb.abi

bb.aba:                                           ; preds = %.lr.ph3992
  %i.ctj = getelementptr i8, ptr %.122773990, i64 40
  %i.ctk = load i64, ptr %i.ctj, align 8, !tbaa !58 ; 3 uses
  %i.ctl = icmp eq i64 %i.ctk, -1
  br i1 %i.ctl, label %.thread3396, label %bb.abb

bb.abb:                                           ; preds = %bb.aba
  %i.ctm = getelementptr i8, ptr %.122773990, i64 16
  %i.ctn = load i32, ptr %i.ctm, align 8, !tbaa !58 ; 2 uses
  %i.cto = icmp slt i32 %i.ctn, 32
  %i.ctp = load i32, ptr %i.cl, align 4, !tbaa !140 ; 2 uses
  br i1 %i.cto, label %bb.abc, label %bb.abd

bb.abc:                                           ; preds = %bb.abb
  %i.ctq = shl nuw i32 1, %i.ctn
  %i.ctr = and i32 %i.ctp, %i.ctq
  %.not2568 = icmp eq i32 %i.ctr, 0
  br i1 %.not2568, label %bb.abf, label %bb.abe

bb.abd:                                           ; preds = %bb.abb
  %i.cts = and i32 %i.ctp, 1
  %.not2567 = icmp eq i32 %i.cts, 0
  br i1 %.not2567, label %bb.abf, label %bb.abe

bb.abe:                                           ; preds = %bb.abd, %bb.abc
  %i.ctt = getelementptr [48 x i8], ptr %i.csp, i64 %i.ctk
  %i.ctu = getelementptr i8, ptr %i.ctt, i64 24
  %i.ctv = load ptr, ptr %i.ctu, align 8, !tbaa !58
  br label %bb.abg

bb.abf:                                           ; preds = %bb.abd, %bb.abc
  %i.ctw = inttoptr i64 %i.ctk to ptr
  br label %bb.abg

bb.abg:                                           ; preds = %bb.abf, %bb.abe
  %.02278 = phi ptr [ %i.ctv, %bb.abe ], [ %i.ctw, %bb.abf ] ; 2 uses
  %i.ctx = getelementptr i8, ptr %.122773990, i64 32
  %i.cty = load i64, ptr %i.ctx, align 8, !tbaa !58
  %i.ctz = getelementptr [48 x i8], ptr %i.csp, i64 %i.cty
  %i.cua = getelementptr i8, ptr %i.ctz, i64 24
  %i.cub = load ptr, ptr %i.cua, align 8, !tbaa !58
  %.not2569 = icmp eq ptr %i.cub, %.02278
  br i1 %.not2569, label %bb.abh, label %.thread3396

bb.abh:                                           ; preds = %bb.abg
  %.not2570 = icmp eq ptr %.02278, %i.cte
  %spec.select2865 = select i1 %.not2570, i32 %.022713991, i32 -1
  br label %bb.abi

bb.abi:                                           ; preds = %bb.abh, %.lr.ph3992
  %.12272 = phi i32 [ %.022713991, %.lr.ph3992 ], [ %spec.select2865, %bb.abh ] ; 2 uses
  %i.cuc = getelementptr i8, ptr %.122773990, i64 48 ; 2 uses
  %i.cud = icmp ult ptr %i.cuc, %i.csq
  br i1 %i.cud, label %.lr.ph3992, label %._crit_edge3993, !llvm.loop !132

bb.abj:                                           ; preds = %bb.aay
  %i.cue = add i32 %.02274.ph, -1
  br label %.outer6262.backedge

bb.abk:                                           ; preds = %bb.aaw
  %i.cuf = getelementptr i8, ptr %.02276, i64 -32
  %i.cug = load i32, ptr %i.cuf, align 8, !tbaa !58
  %i.cuh = icmp eq i32 %i.cug, %i.csv
  %i.cui = zext i1 %i.cuh to i32
  %spec.select2866 = add i32 %.02274.ph, %i.cui
  br label %.outer6262.backedge

.outer6262.backedge:                              ; preds = %bb.abk, %bb.abj
  %.02274.ph.be = phi i32 [ %i.cue, %bb.abj ], [ %spec.select2866, %bb.abk ]
  br label %.outer6262

._crit_edge3993:                                  ; preds = %bb.abi
  %i.cuj = icmp eq i32 %.12272, -1
  br i1 %i.cuj, label %is_mbc_newline_ex.exit.thread, label %._crit_edge3997.thread

.thread3396:                                      ; preds = %bb.abg, %bb.aba, %bb.aaz
  %i.cuk = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.cul = ptrtoint ptr %i.cuk to i64             ; 3 uses
  %i.cum = ptrtoint ptr %i.csq to i64             ; 2 uses
  %i.cun = sub i64 %i.cul, %i.cum
  %i.cuo = icmp slt i64 %i.cun, 48
  br i1 %i.cuo, label %bb.abl, label %bb.abx

bb.abl:                                           ; preds = %.thread3396
  %i.cup = ptrtoint ptr %i.csp to i64             ; 2 uses
  %i.cuq = sub i64 %i.cul, %i.cup                 ; 3 uses
  %i.cur = sdiv exact i64 %i.cuq, 48              ; 4 uses
  %i.cus = icmp eq ptr %i.csp, %i.bk              ; 2 uses
  br i1 %i.cus, label %bb.abm, label %bb.abp

bb.abm:                                           ; preds = %bb.abl
  %i.cut = load ptr, ptr %5, align 8, !tbaa !38
  %i.cuu = icmp eq ptr %i.cut, null
  br i1 %i.cuu, label %bb.abn, label %bb.abp

bb.abn:                                           ; preds = %bb.abm
  %i.cuv = shl i64 %i.cuq, 1
  %i.cuw = call noalias ptr @malloc(i64 noundef %i.cuv) #22 ; 3 uses
  %i.cux = icmp eq ptr %i.cuw, null
  br i1 %i.cux, label %.loopexit3593, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cuw, ptr noundef nonnull align 1 %i.csp, i64 noundef %i.cuq, i1 noundef false) #21
  %i.cuy = shl nsw i64 %i.cur, 1
  br label %stack_double.exit3100

bb.abp:                                           ; preds = %bb.abm, %bb.abl
  %i.cuz = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.cva = shl nsw i64 %i.cur, 1                  ; 3 uses
  %.not.i3095 = icmp eq i32 %i.cuz, 0
  br i1 %.not.i3095, label %bb.abs, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.cvb = zext i32 %i.cuz to i64                 ; 2 uses
  %i.cvc = icmp ugt i64 %i.cva, %i.cvb
  br i1 %i.cvc, label %bb.abr, label %bb.abs

bb.abr:                                           ; preds = %bb.abq
  %i.cvd = trunc i64 %i.cur to i32
  %i.cve = icmp eq i32 %i.cuz, %i.cvd
  br i1 %i.cve, label %.loopexit3593, label %bb.abs

bb.abs:                                           ; preds = %bb.abr, %bb.abq, %bb.abp
  %.050.i3096 = phi i64 [ %i.cva, %bb.abp ], [ %i.cva, %bb.abq ], [ %i.cvb, %bb.abr ] ; 2 uses
  %i.cvf = mul i64 %.050.i3096, 48
  %i.cvg = call ptr @realloc(ptr noundef %i.csp, i64 noundef %i.cvf) #23 ; 2 uses
  %i.cvh = icmp eq ptr %i.cvg, null
  br i1 %i.cvh, label %bb.abt, label %stack_double.exit3100

bb.abt:                                           ; preds = %bb.abs
  br i1 %i.cus, label %.loopexit3593, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  store ptr %i.csp, ptr %5, align 8, !tbaa !38
  %i.cvi = getelementptr i8, ptr %5, i64 8
  store i64 %i.cur, ptr %i.cvi, align 8, !tbaa !57
  br label %.loopexit3593

stack_double.exit3100:                            ; preds = %bb.abo, %bb.abs
  %.2.i3097 = phi i64 [ %i.cuy, %bb.abo ], [ %.050.i3096, %bb.abs ]
  %.1.i3098 = phi ptr [ %i.cuw, %bb.abo ], [ %i.cvg, %bb.abs ] ; 4 uses
  %i.cvj = sub i64 %i.cum, %i.cup
  %i.cvk = getelementptr i8, ptr %.1.i3098, i64 %i.cvj ; 2 uses
  store ptr %i.cvk, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3098, ptr %i.n, align 8, !tbaa !56
  %i.cvl = getelementptr [48 x i8], ptr %.1.i3098, i64 %.2.i3097
  store ptr %i.cvl, ptr %i.p, align 8, !tbaa !56
  br label %bb.abx

.loopexit3593:                                    ; preds = %bb.abn, %bb.abr, %bb.abu, %bb.abt
  %.153.i3099.ph = phi i64 [ -5, %bb.abt ], [ -5, %bb.abu ], [ -5, %bb.abn ], [ -15, %bb.abr ]
  %i.cvm = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2573 = icmp eq ptr %i.cvm, %i.bk
  br i1 %.not2573, label %bb.abw, label %bb.abv

bb.abv:                                           ; preds = %.loopexit3593
  store ptr %i.cvm, ptr %5, align 8, !tbaa !38
  %i.cvn = ptrtoint ptr %i.cvm to i64
  %i.cvo = sub i64 %i.cul, %i.cvn
  %i.cvp = sdiv exact i64 %i.cvo, 48
  %i.cvq = getelementptr i8, ptr %5, i64 8
  store i64 %i.cvp, ptr %i.cvq, align 8, !tbaa !57
  br label %bb.abw

bb.abw:                                           ; preds = %.loopexit3593, %bb.abv
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.abx:                                           ; preds = %stack_double.exit3100, %.thread3396
  %i.cvr = phi ptr [ %.1.i3098, %stack_double.exit3100 ], [ %i.csp, %.thread3396 ]
  %i.cvs = phi ptr [ %i.cvk, %stack_double.exit3100 ], [ %i.csq, %.thread3396 ] ; 4 uses
  %.pre-phi4603 = ptrtoint ptr %i.cvs to i64
  store i32 20480, ptr %i.cvs, align 8, !tbaa !137
  %i.cvt = ptrtoint ptr %i.cvr to i64
  %i.cvu = sub i64 %.pre-phi4603, %i.cvt
  %i.cvv = sdiv exact i64 %i.cvu, 48
  %i.cvw = getelementptr i8, ptr %i.cvs, i64 8
  store i64 %i.cvv, ptr %i.cvw, align 8, !tbaa !138
  %i.cvx = getelementptr i8, ptr %i.cvs, i64 16
  store i32 %i.csv, ptr %i.cvx, align 8, !tbaa !58
  %i.cvy = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.cvz = getelementptr i8, ptr %i.cvy, i64 48
  store ptr %i.cvz, ptr %i.o, align 8, !tbaa !56
  %i.cwa = getelementptr i8, ptr %.25, i64 3
  br label %.backedge.backedge

bb.aby:                                           ; preds = %.backedge
  %i.cwb = load i32, ptr %.25, align 4, !tbaa !14
  %i.cwc = getelementptr i8, ptr %.25, i64 4
  %i.cwd = sext i32 %i.cwb to i64
  %i.cwe = getelementptr i8, ptr %i.cwc, i64 %i.cwd ; 2 uses
  %i.cwf = load i32, ptr %i.cs, align 8, !tbaa !44
  %i.cwg = add i32 %i.cwf, 1                      ; 2 uses
  store i32 %i.cwg, ptr %i.cs, align 8, !tbaa !44
  %i.cwh = icmp sgt i32 %i.cwg, 127
  br i1 %i.cwh, label %bb.abz, label %bb.acb

bb.abz:                                           ; preds = %bb.aby
  store i32 0, ptr %i.cs, align 8, !tbaa !44
  %i.cwi = call zeroext i1 @rb_reg_timeout_p(ptr noundef nonnull %0, ptr noundef %i.ct) #21
  br i1 %i.cwi, label %bb.bck, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  call void @rb_thread_check_ints() #21
  br label %bb.acb

bb.acb:                                           ; preds = %bb.aby, %bb.aca
  %i.cwj = getelementptr i8, ptr %i.cwe, i64 1
  br label %.backedge.backedge

bb.acc:                                           ; preds = %.backedge
  %i.cwk = load i32, ptr %.25, align 4, !tbaa !14
  %i.cwl = getelementptr i8, ptr %.25, i64 4      ; 2 uses
  %i.cwm = load i32, ptr %i.cn, align 8, !tbaa !46
  %i.cwn = icmp eq i32 %i.cwm, 0
  br i1 %i.cwn, label %bb.acd, label %bb.ada

bb.acd:                                           ; preds = %bb.acc
  %i.cwo = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.cwp = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.cwq = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.cwr = call fastcc i64 @find_cache_point(ptr noundef nonnull %0, ptr noundef %i.cwo, i64 noundef %i.cwp, ptr noundef nonnull %.pn.in.in, ptr noundef %i.cwq, ptr noundef %.02226, ptr noundef %i.w) ; 2 uses
  %i.cws = icmp sgt i64 %i.cwr, -1
  br i1 %i.cws, label %bb.ace, label %bb.ada

bb.ace:                                           ; preds = %bb.acd
  %i.cwt = load i64, ptr %i.cq, align 8, !tbaa !141
  %i.cwu = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.cwv = ptrtoint ptr %i.cwu to i64
  %i.cww = sub i64 %i.cwv, %i.cr
  %i.cwx = mul i64 %i.cww, %i.cwt
  %i.cwy = add i64 %i.cwx, %i.cwr                 ; 2 uses
  %i.cwz = ashr i64 %i.cwy, 3                     ; 2 uses
  %i.cxa = trunc i64 %i.cwy to i8
  %i.cxb = and i8 %i.cxa, 7                       ; 4 uses
  %i.cxc = shl nuw i8 1, %i.cxb                   ; 2 uses
  %i.cxd = load ptr, ptr %i.cj, align 8, !tbaa !52
  %i.cxe = getelementptr i8, ptr %i.cxd, i64 %i.cwz ; 3 uses
  %i.cxf = load i8, ptr %i.cxe, align 1, !tbaa !58 ; 3 uses
  %i.cxg = and i8 %i.cxc, %i.cxf
  %.not2636 = icmp eq i8 %i.cxg, 0
  br i1 %.not2636, label %bb.acs, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.cxh = load ptr, ptr %i.w, align 8, !tbaa !67 ; 2 uses
  %i.cxi = getelementptr i8, ptr %i.cxh, i64 40
  %i.cxj = load i32, ptr %i.cxi, align 8, !tbaa !69 ; 2 uses
  %i.cxk = icmp eq i32 %i.cxj, 0
  br i1 %i.cxk, label %is_mbc_newline_ex.exit.thread, label %bb.acg

bb.acg:                                           ; preds = %bb.acf
  %i.cxl = icmp slt i32 %i.cxj, 0
  %.not.i3101.not = icmp eq i8 %i.cxb, 7          ; 2 uses
  br i1 %i.cxl, label %bb.ach, label %bb.aco

bb.ach:                                           ; preds = %bb.acg
  br i1 %.not.i3101.not, label %bb.aci, label %bb.acj

bb.aci:                                           ; preds = %bb.ach
  %i.cxm = getelementptr i8, ptr %i.cxe, i64 1
  %i.cxn = load i8, ptr %i.cxm, align 1, !tbaa !58
  %i.cxo = and i8 %i.cxn, 1
  br label %check_extended_match_cache_point.exit3103

bb.acj:                                           ; preds = %bb.ach
  %i.cxp = shl nuw i8 2, %i.cxb
  %i.cxq = and i8 %i.cxp, %i.cxf
  br label %check_extended_match_cache_point.exit3103

check_extended_match_cache_point.exit3103:        ; preds = %bb.aci, %bb.acj
  %.0.i3102.in = phi i8 [ %i.cxo, %bb.aci ], [ %i.cxq, %bb.acj ]
  %.0.i3102 = icmp eq i8 %.0.i3102.in, 0
  br i1 %.0.i3102, label %is_mbc_newline_ex.exit.thread, label %.preheader3565

.preheader3565:                                   ; preds = %check_extended_match_cache_point.exit3103, %.preheader3565.backedge
  %i.cxr = load ptr, ptr %i.o, align 8, !tbaa !56 ; 4 uses
  %i.cxs = getelementptr i8, ptr %i.cxr, i64 -48  ; 2 uses
  store ptr %i.cxs, ptr %i.o, align 8, !tbaa !56
  %i.cxt = load i32, ptr %i.cxs, align 8, !tbaa !137
  switch i32 %i.cxt, label %.preheader3565.backedge [
    i32 1536, label %bb.ack
    i32 3328, label %bb.acl
  ]

bb.ack:                                           ; preds = %.preheader3565
  %i.cxu = getelementptr i8, ptr %i.cxr, i64 -48
  store i32 2560, ptr %i.cxu, align 8, !tbaa !137
  br label %is_mbc_newline_ex.exit.thread

bb.acl:                                           ; preds = %.preheader3565
  %i.cxv = load ptr, ptr %i.cj, align 8, !tbaa !52
  %i.cxw = getelementptr i8, ptr %i.cxr, i64 -32
  %i.cxx = load i64, ptr %i.cxw, align 8, !tbaa !58
  %i.cxy = getelementptr i8, ptr %i.cxr, i64 -24
  %i.cxz = load i8, ptr %i.cxy, align 8, !tbaa !58 ; 3 uses
  %i.cya = getelementptr i8, ptr %i.cxv, i64 %i.cxx ; 4 uses
  %i.cyb = load i8, ptr %i.cya, align 1, !tbaa !58
  %i.cyc = or i8 %i.cyb, %i.cxz                   ; 2 uses
  store i8 %i.cyc, ptr %i.cya, align 1, !tbaa !58
  %.not.i3104 = icmp sgt i8 %i.cxz, -1
  br i1 %.not.i3104, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.cyd = getelementptr i8, ptr %i.cya, i64 1    ; 2 uses
  %i.cye = load i8, ptr %i.cyd, align 1, !tbaa !58
  %i.cyf = or i8 %i.cye, 1
  store i8 %i.cyf, ptr %i.cyd, align 1, !tbaa !58
  br label %.preheader3565.backedge

bb.acn:                                           ; preds = %bb.acl
  %i.cyg = shl nuw i8 %i.cxz, 1
  %i.cyh = or i8 %i.cyc, %i.cyg
  store i8 %i.cyh, ptr %i.cya, align 1, !tbaa !58
  br label %.preheader3565.backedge

.preheader3565.backedge:                          ; preds = %bb.acn, %bb.acm, %.preheader3565
  br label %.preheader3565

bb.aco:                                           ; preds = %bb.acg
  br i1 %.not.i3101.not, label %bb.acp, label %bb.acq

bb.acp:                                           ; preds = %bb.aco
  %i.cyi = getelementptr i8, ptr %i.cxe, i64 1
  %i.cyj = load i8, ptr %i.cyi, align 1, !tbaa !58
  %i.cyk = and i8 %i.cyj, 1
  br label %check_extended_match_cache_point.exit3108

bb.acq:                                           ; preds = %bb.aco
  %i.cyl = shl nuw i8 2, %i.cxb
  %i.cym = and i8 %i.cyl, %i.cxf
  br label %check_extended_match_cache_point.exit3108

check_extended_match_cache_point.exit3108:        ; preds = %bb.acp, %bb.acq
  %.0.i3107.in = phi i8 [ %i.cyk, %bb.acp ], [ %i.cym, %bb.acq ]
  %.0.i3107 = icmp eq i8 %.0.i3107.in, 0
  br i1 %.0.i3107, label %is_mbc_newline_ex.exit.thread, label %bb.acr

bb.acr:                                           ; preds = %check_extended_match_cache_point.exit3108
  %i.cyn = getelementptr i8, ptr %i.cxh, i64 48
  %i.cyo = load ptr, ptr %i.cyn, align 8, !tbaa !70 ; 2 uses
  %i.cyp = getelementptr i8, ptr %i.cyo, i64 1
  br label %.backedge.backedge

bb.acs:                                           ; preds = %bb.ace
  %i.cyq = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.cyr = load ptr, ptr %i.o, align 8, !tbaa !56 ; 2 uses
  %i.cys = ptrtoint ptr %i.cyq to i64
  %i.cyt = ptrtoint ptr %i.cyr to i64
  %i.cyu = sub i64 %i.cys, %i.cyt
  %i.cyv = icmp slt i64 %i.cyu, 48
  br i1 %i.cyv, label %bb.act, label %bb.acx

bb.act:                                           ; preds = %bb.acs
  %i.cyw = call fastcc i32 @stack_double(ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.o, ptr noundef nonnull %i.bk, ptr noundef %5) ; 2 uses
  %.not2637 = icmp eq i32 %i.cyw, 0
  br i1 %.not2637, label %._crit_edge4546, label %bb.acu

._crit_edge4546:                                  ; preds = %bb.act
  %.pre4547 = load ptr, ptr %i.o, align 8, !tbaa !56
  br label %bb.acx

bb.acu:                                           ; preds = %bb.act
  %i.cyx = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2640 = icmp eq ptr %i.cyx, %i.bk
  br i1 %.not2640, label %bb.acw, label %bb.acv

bb.acv:                                           ; preds = %bb.acu
  store ptr %i.cyx, ptr %5, align 8, !tbaa !38
  %i.cyy = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.cyz = ptrtoint ptr %i.cyy to i64
  %i.cza = ptrtoint ptr %i.cyx to i64
  %i.czb = sub i64 %i.cyz, %i.cza
end_hunk_1
begin_hunk_2_@match_at:bb.a

bb.aej:                                           ; preds = %bb.aei
  %i.dem = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2633 = icmp eq ptr %i.dem, %i.bk
  br i1 %.not2633, label %bb.ael, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  store ptr %i.dem, ptr %5, align 8, !tbaa !38
  %i.den = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.deo = ptrtoint ptr %i.den to i64
  %i.dep = ptrtoint ptr %i.dem to i64
  %i.deq = sub i64 %i.deo, %i.dep
  %i.der = sdiv exact i64 %i.deq, 48
  %i.des = getelementptr i8, ptr %5, i64 8
  store i64 %i.der, ptr %i.des, align 8, !tbaa !57
  br label %bb.ael

bb.ael:                                           ; preds = %bb.aej, %bb.aek
  call void @free(ptr noundef %.02227) #21
  %i.det = sext i32 %i.del to i64
  br label %.loopexit3614

bb.aem:                                           ; preds = %._crit_edge4544, %bb.aeh
  %i.deu = phi ptr [ %.pre4545, %._crit_edge4544 ], [ %i.deg, %bb.aeh ] ; 5 uses
  store i32 3328, ptr %i.deu, align 8, !tbaa !137
  %i.dev = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.dew = icmp eq ptr %i.deu, %i.dev
  br i1 %i.dew, label %bb.aeo, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  %i.dex = getelementptr i8, ptr %i.deu, i64 -40
  %i.dey = load i64, ptr %i.dex, align 8, !tbaa !138
  br label %bb.aeo

bb.aeo:                                           ; preds = %bb.aem, %bb.aen
  %i.dez = phi i64 [ %i.dey, %bb.aen ], [ 0, %bb.aem ]
  %i.dfa = getelementptr i8, ptr %i.deu, i64 8
  store i64 %i.dez, ptr %i.dfa, align 8, !tbaa !138
  %i.dfb = getelementptr i8, ptr %i.deu, i64 16
  store i64 %i.dco, ptr %i.dfb, align 8, !tbaa !58
  %i.dfc = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dfd = getelementptr i8, ptr %i.dfc, i64 24
  store i8 %i.dcr, ptr %i.dfd, align 8, !tbaa !58
  %i.dfe = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dff = getelementptr i8, ptr %i.dfe, i64 48
  store ptr %i.dff, ptr %i.o, align 8, !tbaa !56
  br label %bb.aep

bb.aep:                                           ; preds = %bb.adr, %bb.aeo, %bb.ads
  %i.dfg = load i8, ptr %i.dca, align 4, !tbaa !58
  %i.dfh = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.dfi = load i8, ptr %i.dfh, align 1, !tbaa !58
  %i.dfj = icmp eq i8 %i.dfg, %i.dfi
  %i.dfk = getelementptr i8, ptr %.25, i64 5      ; 3 uses
  br i1 %i.dfj, label %bb.aeq, label %bb.afg

bb.aeq:                                           ; preds = %bb.aep
  %i.dfl = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dfm = load ptr, ptr %i.o, align 8, !tbaa !56 ; 2 uses
  %i.dfn = ptrtoint ptr %i.dfl to i64             ; 3 uses
  %i.dfo = ptrtoint ptr %i.dfm to i64             ; 2 uses
  %i.dfp = sub i64 %i.dfn, %i.dfo
  %i.dfq = icmp slt i64 %i.dfp, 48
  br i1 %i.dfq, label %bb.aer, label %bb.afd

bb.aer:                                           ; preds = %bb.aeq
  %i.dfr = load ptr, ptr %i.n, align 8, !tbaa !56 ; 5 uses
  %i.dfs = ptrtoint ptr %i.dfr to i64             ; 2 uses
  %i.dft = sub i64 %i.dfn, %i.dfs                 ; 3 uses
  %i.dfu = sdiv exact i64 %i.dft, 48              ; 4 uses
  %i.dfv = icmp eq ptr %i.dfr, %i.bk              ; 2 uses
  br i1 %i.dfv, label %bb.aes, label %bb.aev

bb.aes:                                           ; preds = %bb.aer
  %i.dfw = load ptr, ptr %5, align 8, !tbaa !38
  %i.dfx = icmp eq ptr %i.dfw, null
  br i1 %i.dfx, label %bb.aet, label %bb.aev

bb.aet:                                           ; preds = %bb.aes
  %i.dfy = shl i64 %i.dft, 1
  %i.dfz = call noalias ptr @malloc(i64 noundef %i.dfy) #22 ; 3 uses
  %i.dga = icmp eq ptr %i.dfz, null
  br i1 %i.dga, label %.loopexit3608, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dfz, ptr noundef nonnull align 1 %i.dfr, i64 noundef %i.dft, i1 noundef false) #21
  %i.dgb = shl nsw i64 %i.dfu, 1
  br label %stack_double.exit3128

bb.aev:                                           ; preds = %bb.aes, %bb.aer
  %i.dgc = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.dgd = shl nsw i64 %i.dfu, 1                  ; 3 uses
  %.not.i3123 = icmp eq i32 %i.dgc, 0
  br i1 %.not.i3123, label %bb.aey, label %bb.aew

bb.aew:                                           ; preds = %bb.aev
  %i.dge = zext i32 %i.dgc to i64                 ; 2 uses
  %i.dgf = icmp ugt i64 %i.dgd, %i.dge
  br i1 %i.dgf, label %bb.aex, label %bb.aey

bb.aex:                                           ; preds = %bb.aew
  %i.dgg = trunc i64 %i.dfu to i32
  %i.dgh = icmp eq i32 %i.dgc, %i.dgg
  br i1 %i.dgh, label %.loopexit3608, label %bb.aey

bb.aey:                                           ; preds = %bb.aex, %bb.aew, %bb.aev
  %.050.i3124 = phi i64 [ %i.dgd, %bb.aev ], [ %i.dgd, %bb.aew ], [ %i.dge, %bb.aex ] ; 2 uses
  %i.dgi = mul i64 %.050.i3124, 48
  %i.dgj = call ptr @realloc(ptr noundef %i.dfr, i64 noundef %i.dgi) #23 ; 2 uses
  %i.dgk = icmp eq ptr %i.dgj, null
  br i1 %i.dgk, label %bb.aez, label %stack_double.exit3128

bb.aez:                                           ; preds = %bb.aey
  br i1 %i.dfv, label %.loopexit3608, label %bb.afa

bb.afa:                                           ; preds = %bb.aez
  store ptr %i.dfr, ptr %5, align 8, !tbaa !38
  %i.dgl = getelementptr i8, ptr %5, i64 8
  store i64 %i.dfu, ptr %i.dgl, align 8, !tbaa !57
  br label %.loopexit3608

stack_double.exit3128:                            ; preds = %bb.aeu, %bb.aey
  %.2.i3125 = phi i64 [ %i.dgb, %bb.aeu ], [ %.050.i3124, %bb.aey ]
  %.1.i3126 = phi ptr [ %i.dfz, %bb.aeu ], [ %i.dgj, %bb.aey ] ; 3 uses
  %i.dgm = sub i64 %i.dfo, %i.dfs
  %i.dgn = getelementptr i8, ptr %.1.i3126, i64 %i.dgm ; 2 uses
  store ptr %i.dgn, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3126, ptr %i.n, align 8, !tbaa !56
  %i.dgo = getelementptr [48 x i8], ptr %.1.i3126, i64 %.2.i3125
  store ptr %i.dgo, ptr %i.p, align 8, !tbaa !56
  br label %bb.afd

.loopexit3608:                                    ; preds = %bb.aet, %bb.aex, %bb.afa, %bb.aez
  %.153.i3127.ph = phi i64 [ -5, %bb.aez ], [ -5, %bb.afa ], [ -5, %bb.aet ], [ -15, %bb.aex ]
  %i.dgp = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2632 = icmp eq ptr %i.dgp, %i.bk
  br i1 %.not2632, label %bb.afc, label %bb.afb

bb.afb:                                           ; preds = %.loopexit3608
  store ptr %i.dgp, ptr %5, align 8, !tbaa !38
  %i.dgq = ptrtoint ptr %i.dgp to i64
  %i.dgr = sub i64 %i.dfn, %i.dgq
  %i.dgs = sdiv exact i64 %i.dgr, 48
  %i.dgt = getelementptr i8, ptr %5, i64 8
  store i64 %i.dgs, ptr %i.dgt, align 8, !tbaa !57
  br label %bb.afc

bb.afc:                                           ; preds = %.loopexit3608, %bb.afb
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.afd:                                           ; preds = %stack_double.exit3128, %bb.aeq
  %i.dgu = phi ptr [ %i.dgn, %stack_double.exit3128 ], [ %i.dfm, %bb.aeq ] ; 5 uses
  store i32 1, ptr %i.dgu, align 8, !tbaa !137
  %i.dgv = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.dgw = icmp eq ptr %i.dgu, %i.dgv
  br i1 %i.dgw, label %bb.aff, label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  %i.dgx = getelementptr i8, ptr %i.dgu, i64 -40
  %i.dgy = load i64, ptr %i.dgx, align 8, !tbaa !138
  br label %bb.aff

bb.aff:                                           ; preds = %bb.afd, %bb.afe
  %i.dgz = phi i64 [ %i.dgy, %bb.afe ], [ 0, %bb.afd ]
  %i.dha = getelementptr i8, ptr %i.dgu, i64 8
  store i64 %i.dgz, ptr %i.dha, align 8, !tbaa !138
  %i.dhb = sext i32 %i.dbz to i64
  %i.dhc = getelementptr i8, ptr %i.dfk, i64 %i.dhb
  %i.dhd = getelementptr i8, ptr %i.dgu, i64 16
  store ptr %i.dhc, ptr %i.dhd, align 8, !tbaa !58
  %i.dhe = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.dhf = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dhg = getelementptr i8, ptr %i.dhf, i64 24
  store ptr %i.dhe, ptr %i.dhg, align 8, !tbaa !58
  %i.dhh = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dhi = getelementptr i8, ptr %i.dhh, i64 32
  store ptr %.19, ptr %i.dhi, align 8, !tbaa !58
  %i.dhj = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dhk = getelementptr i8, ptr %i.dhj, i64 40
  store ptr %.02225, ptr %i.dhk, align 8, !tbaa !58
  %i.dhl = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dhm = getelementptr i8, ptr %i.dhl, i64 48
  store ptr %i.dhm, ptr %i.o, align 8, !tbaa !56
  %i.dhn = getelementptr i8, ptr %.25, i64 6
  br label %.backedge.backedge

bb.afg:                                           ; preds = %bb.aep
  %i.dho = load i64, ptr %i.ck, align 8, !tbaa !47
  %i.dhp = add i64 %i.dho, 1
  store i64 %i.dhp, ptr %i.ck, align 8, !tbaa !47
  %i.dhq = getelementptr i8, ptr %.25, i64 6
  br label %.backedge.backedge

bb.afh:                                           ; preds = %.backedge
  %i.dhr = load i16, ptr %.25, align 2, !tbaa !72 ; 3 uses
  %i.dhs = getelementptr i8, ptr %.25, i64 2
  %i.dht = load i32, ptr %i.dhs, align 4, !tbaa !14
  %i.dhu = getelementptr i8, ptr %.25, i64 6      ; 3 uses
  %i.dhv = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dhw = load ptr, ptr %i.o, align 8, !tbaa !56 ; 3 uses
  %i.dhx = ptrtoint ptr %i.dhv to i64             ; 3 uses
  %i.dhy = ptrtoint ptr %i.dhw to i64             ; 2 uses
  %i.dhz = sub i64 %i.dhx, %i.dhy
  %i.dia = icmp slt i64 %i.dhz, 48
  br i1 %i.dia, label %bb.afi, label %.thread5164

.thread5164:                                      ; preds = %bb.afh
  %.pre-phi45895167 = ptrtoint ptr %i.dhw to i64
  %7 = load ptr, ptr %i.n, align 8, !tbaa !56     ; 2 uses
  %8 = ptrtoint ptr %7 to i64
  %i.dib = sub i64 %.pre-phi45895167, %8
  %i.dic = sdiv exact i64 %i.dib, 48
  %i.did = sext i16 %i.dhr to i64                 ; 2 uses
  %i.die = getelementptr [8 x i8], ptr %.02226, i64 %i.did
  store i64 %i.dic, ptr %i.die, align 8, !tbaa !28
  br label %bb.agh

bb.afi:                                           ; preds = %bb.afh
  %9 = load ptr, ptr %i.n, align 8, !tbaa !56     ; 5 uses
  %10 = ptrtoint ptr %9 to i64                    ; 2 uses
  %i.dif = sub i64 %i.dhx, %10                    ; 3 uses
  %i.dig = sdiv exact i64 %i.dif, 48              ; 4 uses
  %i.dih = icmp eq ptr %9, %i.bk                  ; 2 uses
  br i1 %i.dih, label %bb.afj, label %bb.afm

bb.afj:                                           ; preds = %bb.afi
  %i.dii = load ptr, ptr %5, align 8, !tbaa !38
  %i.dij = icmp eq ptr %i.dii, null
  br i1 %i.dij, label %bb.afk, label %bb.afm

bb.afk:                                           ; preds = %bb.afj
  %i.dik = shl i64 %i.dif, 1
  %i.dil = call noalias ptr @malloc(i64 noundef %i.dik) #22 ; 3 uses
  %i.dim = icmp eq ptr %i.dil, null
  br i1 %i.dim, label %.loopexit3605, label %bb.afl

bb.afl:                                           ; preds = %bb.afk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dil, ptr noundef nonnull align 1 %9, i64 noundef %i.dif, i1 noundef false) #21
  %i.din = shl nsw i64 %i.dig, 1
  br label %bb.afu

bb.afm:                                           ; preds = %bb.afj, %bb.afi
  %i.dio = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.dip = shl nsw i64 %i.dig, 1                  ; 3 uses
  %.not.i3129 = icmp eq i32 %i.dio, 0
  br i1 %.not.i3129, label %bb.afp, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.diq = zext i32 %i.dio to i64                 ; 2 uses
  %i.dir = icmp ugt i64 %i.dip, %i.diq
  br i1 %i.dir, label %bb.afo, label %bb.afp

bb.afo:                                           ; preds = %bb.afn
  %i.dis = trunc i64 %i.dig to i32
  %i.dit = icmp eq i32 %i.dio, %i.dis
  br i1 %i.dit, label %.loopexit3605, label %bb.afp

bb.afp:                                           ; preds = %bb.afo, %bb.afn, %bb.afm
  %.050.i3130 = phi i64 [ %i.dip, %bb.afm ], [ %i.dip, %bb.afn ], [ %i.diq, %bb.afo ] ; 2 uses
  %i.diu = mul i64 %.050.i3130, 48
  %i.div = call ptr @realloc(ptr noundef %9, i64 noundef %i.diu) #23 ; 2 uses
  %i.diw = icmp eq ptr %i.div, null
  br i1 %i.diw, label %bb.afq, label %bb.afu

bb.afq:                                           ; preds = %bb.afp
  br i1 %i.dih, label %.loopexit3605, label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  store ptr %9, ptr %5, align 8, !tbaa !38
  %i.dix = getelementptr i8, ptr %5, i64 8
  store i64 %i.dig, ptr %i.dix, align 8, !tbaa !57
  br label %.loopexit3605

.loopexit3605:                                    ; preds = %bb.afk, %bb.afo, %bb.afr, %bb.afq
  %.153.i3133.ph = phi i64 [ -5, %bb.afq ], [ -5, %bb.afr ], [ -5, %bb.afk ], [ -15, %bb.afo ]
  %i.diy = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2628 = icmp eq ptr %i.diy, %i.bk
  br i1 %.not2628, label %bb.aft, label %bb.afs

bb.afs:                                           ; preds = %.loopexit3605
  store ptr %i.diy, ptr %5, align 8, !tbaa !38
  %i.diz = ptrtoint ptr %i.diy to i64
  %i.dja = sub i64 %i.dhx, %i.diz
  %i.djb = sdiv exact i64 %i.dja, 48
  %i.djc = getelementptr i8, ptr %5, i64 8
  store i64 %i.djb, ptr %i.djc, align 8, !tbaa !57
  br label %bb.aft

bb.aft:                                           ; preds = %.loopexit3605, %bb.afs
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.afu:                                           ; preds = %bb.afp, %bb.afl
  %.2.i3131 = phi i64 [ %i.din, %bb.afl ], [ %.050.i3130, %bb.afp ]
  %.1.i3132 = phi ptr [ %i.dil, %bb.afl ], [ %i.div, %bb.afp ] ; 3 uses
  %i.djd = sub i64 %i.dhy, %10                    ; 2 uses
  %i.dje = getelementptr i8, ptr %.1.i3132, i64 %i.djd ; 3 uses
  store ptr %i.dje, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3132, ptr %i.n, align 8, !tbaa !56
  %.idx5152 = mul i64 %.2.i3131, 48               ; 2 uses
  %i.djf = getelementptr i8, ptr %.1.i3132, i64 %.idx5152 ; 2 uses
  store ptr %i.djf, ptr %i.p, align 8, !tbaa !56
  %.pre4588 = ptrtoint ptr %i.djf to i64          ; 2 uses
  %gepdiff5153 = sub i64 %.idx5152, %i.djd
  %11 = icmp slt i64 %gepdiff5153, 48
  %.pre-phi4589 = ptrtoint ptr %i.dje to i64
  %i.djg = load ptr, ptr %i.n, align 8, !tbaa !56 ; 6 uses
  %i.djh = ptrtoint ptr %i.djg to i64             ; 2 uses
  %i.dji = sub i64 %.pre-phi4589, %i.djh          ; 2 uses
  %i.djj = sdiv exact i64 %i.dji, 48
  %i.djk = sext i16 %i.dhr to i64                 ; 3 uses
  %i.djl = getelementptr [8 x i8], ptr %.02226, i64 %i.djk
  store i64 %i.djj, ptr %i.djl, align 8, !tbaa !28
  br i1 %11, label %bb.afv, label %bb.agh

bb.afv:                                           ; preds = %bb.afu
  %i.djm = sub i64 %.pre4588, %i.djh              ; 3 uses
  %i.djn = sdiv exact i64 %i.djm, 48              ; 4 uses
  %i.djo = icmp eq ptr %i.djg, %i.bk              ; 2 uses
  br i1 %i.djo, label %bb.afw, label %bb.afz

bb.afw:                                           ; preds = %bb.afv
  %i.djp = load ptr, ptr %5, align 8, !tbaa !38
  %i.djq = icmp eq ptr %i.djp, null
  br i1 %i.djq, label %bb.afx, label %bb.afz

bb.afx:                                           ; preds = %bb.afw
  %i.djr = shl i64 %i.djm, 1
  %i.djs = call noalias ptr @malloc(i64 noundef %i.djr) #22 ; 3 uses
  %i.djt = icmp eq ptr %i.djs, null
  br i1 %i.djt, label %.loopexit3606, label %bb.afy

bb.afy:                                           ; preds = %bb.afx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.djs, ptr noundef nonnull align 1 %i.djg, i64 noundef %i.djm, i1 noundef false) #21
  %i.dju = shl nsw i64 %i.djn, 1
  br label %stack_double.exit3140

bb.afz:                                           ; preds = %bb.afw, %bb.afv
  %i.djv = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.djw = shl nsw i64 %i.djn, 1                  ; 3 uses
  %.not.i3135 = icmp eq i32 %i.djv, 0
  br i1 %.not.i3135, label %bb.agc, label %bb.aga

bb.aga:                                           ; preds = %bb.afz
  %i.djx = zext i32 %i.djv to i64                 ; 2 uses
  %i.djy = icmp ugt i64 %i.djw, %i.djx
  br i1 %i.djy, label %bb.agb, label %bb.agc

bb.agb:                                           ; preds = %bb.aga
  %i.djz = trunc i64 %i.djn to i32
  %i.dka = icmp eq i32 %i.djv, %i.djz
  br i1 %i.dka, label %.loopexit3606, label %bb.agc

bb.agc:                                           ; preds = %bb.agb, %bb.aga, %bb.afz
  %.050.i3136 = phi i64 [ %i.djw, %bb.afz ], [ %i.djw, %bb.aga ], [ %i.djx, %bb.agb ] ; 2 uses
  %i.dkb = mul i64 %.050.i3136, 48
  %i.dkc = call ptr @realloc(ptr noundef %i.djg, i64 noundef %i.dkb) #23 ; 2 uses
  %i.dkd = icmp eq ptr %i.dkc, null
  br i1 %i.dkd, label %bb.agd, label %stack_double.exit3140

bb.agd:                                           ; preds = %bb.agc
  br i1 %i.djo, label %.loopexit3606, label %bb.age

bb.age:                                           ; preds = %bb.agd
  store ptr %i.djg, ptr %5, align 8, !tbaa !38
  %i.dke = getelementptr i8, ptr %5, i64 8
  store i64 %i.djn, ptr %i.dke, align 8, !tbaa !57
  br label %.loopexit3606

stack_double.exit3140:                            ; preds = %bb.afy, %bb.agc
  %.2.i3137 = phi i64 [ %i.dju, %bb.afy ], [ %.050.i3136, %bb.agc ]
  %.1.i3138 = phi ptr [ %i.djs, %bb.afy ], [ %i.dkc, %bb.agc ] ; 4 uses
  %i.dkf = getelementptr i8, ptr %.1.i3138, i64 %i.dji ; 2 uses
  store ptr %i.dkf, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3138, ptr %i.n, align 8, !tbaa !56
  %i.dkg = getelementptr [48 x i8], ptr %.1.i3138, i64 %.2.i3137
  store ptr %i.dkg, ptr %i.p, align 8, !tbaa !56
  br label %bb.agh

.loopexit3606:                                    ; preds = %bb.afx, %bb.agb, %bb.age, %bb.agd
  %.153.i3139.ph = phi i64 [ -5, %bb.agd ], [ -5, %bb.age ], [ -5, %bb.afx ], [ -15, %bb.agb ]
  %i.dkh = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2627 = icmp eq ptr %i.dkh, %i.bk
  br i1 %.not2627, label %bb.agg, label %bb.agf

bb.agf:                                           ; preds = %.loopexit3606
  store ptr %i.dkh, ptr %5, align 8, !tbaa !38
  %i.dki = ptrtoint ptr %i.dkh to i64
  %i.dkj = sub i64 %.pre4588, %i.dki
  %i.dkk = sdiv exact i64 %i.dkj, 48
  %i.dkl = getelementptr i8, ptr %5, i64 8
  store i64 %i.dkk, ptr %i.dkl, align 8, !tbaa !57
  br label %bb.agg

bb.agg:                                           ; preds = %.loopexit3606, %bb.agf
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.agh:                                           ; preds = %.thread5164, %stack_double.exit3140, %bb.afu
  %i.dkm = phi i64 [ %i.djk, %stack_double.exit3140 ], [ %i.djk, %bb.afu ], [ %i.did, %.thread5164 ]
  %i.dkn = phi ptr [ %.1.i3138, %stack_double.exit3140 ], [ %i.djg, %bb.afu ], [ %7, %.thread5164 ]
  %i.dko = phi ptr [ %i.dkf, %stack_double.exit3140 ], [ %i.dje, %bb.afu ], [ %i.dhw, %.thread5164 ] ; 5 uses
  store i32 1792, ptr %i.dko, align 8, !tbaa !137
  %i.dkp = icmp eq ptr %i.dko, %i.dkn
  br i1 %i.dkp, label %bb.agj, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.dkq = getelementptr i8, ptr %i.dko, i64 -40
  %i.dkr = load i64, ptr %i.dkq, align 8, !tbaa !138
  br label %bb.agj

bb.agj:                                           ; preds = %bb.agh, %bb.agi
  %i.dks = phi i64 [ %i.dkr, %bb.agi ], [ 0, %bb.agh ]
  %i.dkt = getelementptr i8, ptr %i.dko, i64 8
  store i64 %i.dks, ptr %i.dkt, align 8, !tbaa !138
  %i.dku = sext i16 %i.dhr to i32
  %i.dkv = getelementptr i8, ptr %i.dko, i64 32
  store i32 %i.dku, ptr %i.dkv, align 8, !tbaa !58
  %i.dkw = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dkx = getelementptr i8, ptr %i.dkw, i64 24
  store ptr %i.dhu, ptr %i.dkx, align 8, !tbaa !58
  %i.dky = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dkz = getelementptr i8, ptr %i.dky, i64 16
  store i32 0, ptr %i.dkz, align 8, !tbaa !58
  %i.dla = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dlb = getelementptr i8, ptr %i.dla, i64 48   ; 2 uses
  store ptr %i.dlb, ptr %i.o, align 8, !tbaa !56
  %i.dlc = load ptr, ptr %i.cm, align 8, !tbaa !73
  %i.dld = getelementptr [8 x i8], ptr %i.dlc, i64 %i.dkm
  %i.dle = load i32, ptr %i.dld, align 4, !tbaa !75
  %i.dlf = icmp eq i32 %i.dle, 0
  br i1 %i.dlf, label %bb.agk, label %bb.ahy

bb.agk:                                           ; preds = %bb.agj
  %i.dlg = load i32, ptr %i.cn, align 8, !tbaa !46
  %i.dlh = icmp eq i32 %i.dlg, 0
  br i1 %i.dlh, label %bb.agl, label %bb.ahi

bb.agl:                                           ; preds = %bb.agk
  %i.dli = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.dlj = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.dlk = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.dll = call fastcc i64 @find_cache_point(ptr noundef nonnull %0, ptr noundef %i.dli, i64 noundef %i.dlj, ptr noundef nonnull %.pn.in.in, ptr noundef %i.dlk, ptr noundef nonnull %.02226, ptr noundef %i.y) ; 2 uses
  %i.dlm = icmp sgt i64 %i.dll, -1
  br i1 %i.dlm, label %bb.agm, label %._crit_edge4541

._crit_edge4541:                                  ; preds = %bb.agl
  %.pre4542 = load ptr, ptr %i.o, align 8, !tbaa !56
  br label %bb.ahi

bb.agm:                                           ; preds = %bb.agl
  %i.dln = load i64, ptr %i.cq, align 8, !tbaa !141
  %i.dlo = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.dlp = ptrtoint ptr %i.dlo to i64
  %i.dlq = sub i64 %i.dlp, %i.cr
  %i.dlr = mul i64 %i.dlq, %i.dln
  %i.dls = add i64 %i.dlr, %i.dll                 ; 2 uses
  %i.dlt = ashr i64 %i.dls, 3                     ; 2 uses
  %i.dlu = trunc i64 %i.dls to i8
  %i.dlv = and i8 %i.dlu, 7                       ; 4 uses
  %i.dlw = shl nuw i8 1, %i.dlv                   ; 2 uses
  %i.dlx = load ptr, ptr %i.cj, align 8, !tbaa !52
  %i.dly = getelementptr i8, ptr %i.dlx, i64 %i.dlt ; 3 uses
  %i.dlz = load i8, ptr %i.dly, align 1, !tbaa !58 ; 3 uses
  %i.dma = and i8 %i.dlw, %i.dlz
  %.not2620 = icmp eq i8 %i.dma, 0
  br i1 %.not2620, label %bb.aha, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  %i.dmb = load ptr, ptr %i.y, align 8, !tbaa !67 ; 2 uses
  %i.dmc = getelementptr i8, ptr %i.dmb, i64 40
  %i.dmd = load i32, ptr %i.dmc, align 8, !tbaa !69 ; 2 uses
  %i.dme = icmp eq i32 %i.dmd, 0
  br i1 %i.dme, label %is_mbc_newline_ex.exit.thread, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.dmf = icmp slt i32 %i.dmd, 0
  %.not.i3141.not = icmp eq i8 %i.dlv, 7          ; 2 uses
  br i1 %i.dmf, label %bb.agp, label %bb.agw

bb.agp:                                           ; preds = %bb.ago
  br i1 %.not.i3141.not, label %bb.agq, label %bb.agr

bb.agq:                                           ; preds = %bb.agp
  %i.dmg = getelementptr i8, ptr %i.dly, i64 1
  %i.dmh = load i8, ptr %i.dmg, align 1, !tbaa !58
  %i.dmi = and i8 %i.dmh, 1
  br label %check_extended_match_cache_point.exit3143

bb.agr:                                           ; preds = %bb.agp
  %i.dmj = shl nuw i8 2, %i.dlv
  %i.dmk = and i8 %i.dmj, %i.dlz
  br label %check_extended_match_cache_point.exit3143

check_extended_match_cache_point.exit3143:        ; preds = %bb.agq, %bb.agr
  %.0.i3142.in = phi i8 [ %i.dmi, %bb.agq ], [ %i.dmk, %bb.agr ]
  %.0.i3142 = icmp eq i8 %.0.i3142.in, 0
  br i1 %.0.i3142, label %is_mbc_newline_ex.exit.thread, label %.preheader3567

.preheader3567:                                   ; preds = %check_extended_match_cache_point.exit3143, %.preheader3567.backedge
  %i.dml = load ptr, ptr %i.o, align 8, !tbaa !56 ; 4 uses
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -48  ; 2 uses
  store ptr %i.dmm, ptr %i.o, align 8, !tbaa !56
  %i.dmn = load i32, ptr %i.dmm, align 8, !tbaa !137
  switch i32 %i.dmn, label %.preheader3567.backedge [
    i32 1536, label %bb.ags
    i32 3328, label %bb.agt
  ]

bb.ags:                                           ; preds = %.preheader3567
  %i.dmo = getelementptr i8, ptr %i.dml, i64 -48
  store i32 2560, ptr %i.dmo, align 8, !tbaa !137
  br label %is_mbc_newline_ex.exit.thread

bb.agt:                                           ; preds = %.preheader3567
  %i.dmp = load ptr, ptr %i.cj, align 8, !tbaa !52
  %i.dmq = getelementptr i8, ptr %i.dml, i64 -32
  %i.dmr = load i64, ptr %i.dmq, align 8, !tbaa !58
  %i.dms = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmt = load i8, ptr %i.dms, align 8, !tbaa !58 ; 3 uses
  %i.dmu = getelementptr i8, ptr %i.dmp, i64 %i.dmr ; 4 uses
  %i.dmv = load i8, ptr %i.dmu, align 1, !tbaa !58
  %i.dmw = or i8 %i.dmv, %i.dmt                   ; 2 uses
  store i8 %i.dmw, ptr %i.dmu, align 1, !tbaa !58
  %.not.i3144 = icmp sgt i8 %i.dmt, -1
  br i1 %.not.i3144, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.dmx = getelementptr i8, ptr %i.dmu, i64 1    ; 2 uses
  %i.dmy = load i8, ptr %i.dmx, align 1, !tbaa !58
  %i.dmz = or i8 %i.dmy, 1
  store i8 %i.dmz, ptr %i.dmx, align 1, !tbaa !58
  br label %.preheader3567.backedge

bb.agv:                                           ; preds = %bb.agt
  %i.dna = shl nuw i8 %i.dmt, 1
  %i.dnb = or i8 %i.dmw, %i.dna
  store i8 %i.dnb, ptr %i.dmu, align 1, !tbaa !58
  br label %.preheader3567.backedge

.preheader3567.backedge:                          ; preds = %bb.agv, %bb.agu, %.preheader3567
  br label %.preheader3567

bb.agw:                                           ; preds = %bb.ago
  br i1 %.not.i3141.not, label %bb.agx, label %bb.agy

bb.agx:                                           ; preds = %bb.agw
  %i.dnc = getelementptr i8, ptr %i.dly, i64 1
  %i.dnd = load i8, ptr %i.dnc, align 1, !tbaa !58
  %i.dne = and i8 %i.dnd, 1
  br label %check_extended_match_cache_point.exit3148

bb.agy:                                           ; preds = %bb.agw
  %i.dnf = shl nuw i8 2, %i.dlv
  %i.dng = and i8 %i.dnf, %i.dlz
  br label %check_extended_match_cache_point.exit3148

check_extended_match_cache_point.exit3148:        ; preds = %bb.agx, %bb.agy
  %.0.i3147.in = phi i8 [ %i.dne, %bb.agx ], [ %i.dng, %bb.agy ]
  %.0.i3147 = icmp eq i8 %.0.i3147.in, 0
  br i1 %.0.i3147, label %is_mbc_newline_ex.exit.thread, label %bb.agz

bb.agz:                                           ; preds = %check_extended_match_cache_point.exit3148
  %i.dnh = getelementptr i8, ptr %i.dmb, i64 48
  %i.dni = load ptr, ptr %i.dnh, align 8, !tbaa !70 ; 2 uses
  %i.dnj = getelementptr i8, ptr %i.dni, i64 1
  br label %.backedge.backedge

bb.aha:                                           ; preds = %bb.agm
  %i.dnk = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dnl = load ptr, ptr %i.o, align 8, !tbaa !56 ; 2 uses
  %i.dnm = ptrtoint ptr %i.dnk to i64
  %i.dnn = ptrtoint ptr %i.dnl to i64
  %i.dno = sub i64 %i.dnm, %i.dnn
  %i.dnp = icmp slt i64 %i.dno, 48
  br i1 %i.dnp, label %bb.ahb, label %bb.ahf

bb.ahb:                                           ; preds = %bb.aha
  %i.dnq = call fastcc i32 @stack_double(ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.o, ptr noundef nonnull %i.bk, ptr noundef %5) ; 2 uses
  %.not2621 = icmp eq i32 %i.dnq, 0
  br i1 %.not2621, label %._crit_edge4539, label %bb.ahc

._crit_edge4539:                                  ; preds = %bb.ahb
  %.pre4540 = load ptr, ptr %i.o, align 8, !tbaa !56
  br label %bb.ahf

bb.ahc:                                           ; preds = %bb.ahb
  %i.dnr = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2624 = icmp eq ptr %i.dnr, %i.bk
  br i1 %.not2624, label %bb.ahe, label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc
  store ptr %i.dnr, ptr %5, align 8, !tbaa !38
  %i.dns = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dnt = ptrtoint ptr %i.dns to i64
  %i.dnu = ptrtoint ptr %i.dnr to i64
  %i.dnv = sub i64 %i.dnt, %i.dnu
  %i.dnw = sdiv exact i64 %i.dnv, 48
  %i.dnx = getelementptr i8, ptr %5, i64 8
  store i64 %i.dnw, ptr %i.dnx, align 8, !tbaa !57
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahc, %bb.ahd
  call void @free(ptr noundef %.02227) #21
  %i.dny = sext i32 %i.dnq to i64
  br label %.loopexit3614

bb.ahf:                                           ; preds = %._crit_edge4539, %bb.aha
  %i.dnz = phi ptr [ %.pre4540, %._crit_edge4539 ], [ %i.dnl, %bb.aha ] ; 5 uses
  store i32 3328, ptr %i.dnz, align 8, !tbaa !137
  %i.doa = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.dob = icmp eq ptr %i.dnz, %i.doa
  br i1 %i.dob, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.doc = getelementptr i8, ptr %i.dnz, i64 -40
  %i.dod = load i64, ptr %i.doc, align 8, !tbaa !138
  br label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahf, %bb.ahg
  %i.doe = phi i64 [ %i.dod, %bb.ahg ], [ 0, %bb.ahf ]
  %i.dof = getelementptr i8, ptr %i.dnz, i64 8
  store i64 %i.doe, ptr %i.dof, align 8, !tbaa !138
  %i.dog = getelementptr i8, ptr %i.dnz, i64 16
  store i64 %i.dlt, ptr %i.dog, align 8, !tbaa !58
  %i.doh = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.doi = getelementptr i8, ptr %i.doh, i64 24
  store i8 %i.dlw, ptr %i.doi, align 8, !tbaa !58
  %i.doj = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dok = getelementptr i8, ptr %i.doj, i64 48   ; 2 uses
  store ptr %i.dok, ptr %i.o, align 8, !tbaa !56
  br label %bb.ahi

bb.ahi:                                           ; preds = %._crit_edge4541, %bb.agk, %bb.ahh
  %i.dol = phi ptr [ %.pre4542, %._crit_edge4541 ], [ %i.dlb, %bb.agk ], [ %i.dok, %bb.ahh ] ; 2 uses
  %i.dom = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.don = ptrtoint ptr %i.dom to i64             ; 3 uses
  %i.doo = ptrtoint ptr %i.dol to i64             ; 2 uses
  %i.dop = sub i64 %i.don, %i.doo
  %i.doq = icmp slt i64 %i.dop, 48
  %.pre4543 = load ptr, ptr %i.n, align 8, !tbaa !56 ; 6 uses
  br i1 %i.doq, label %bb.ahj, label %bb.ahv

bb.ahj:                                           ; preds = %bb.ahi
  %i.dor = ptrtoint ptr %.pre4543 to i64          ; 2 uses
  %i.dos = sub i64 %i.don, %i.dor                 ; 3 uses
  %i.dot = sdiv exact i64 %i.dos, 48              ; 4 uses
  %i.dou = icmp eq ptr %.pre4543, %i.bk           ; 2 uses
  br i1 %i.dou, label %bb.ahk, label %bb.ahn

bb.ahk:                                           ; preds = %bb.ahj
  %i.dov = load ptr, ptr %5, align 8, !tbaa !38
  %i.dow = icmp eq ptr %i.dov, null
  br i1 %i.dow, label %bb.ahl, label %bb.ahn

bb.ahl:                                           ; preds = %bb.ahk
  %i.dox = shl i64 %i.dos, 1
  %i.doy = call noalias ptr @malloc(i64 noundef %i.dox) #22 ; 3 uses
  %i.doz = icmp eq ptr %i.doy, null
  br i1 %i.doz, label %.loopexit3607, label %bb.ahm

bb.ahm:                                           ; preds = %bb.ahl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.doy, ptr noundef nonnull align 1 %.pre4543, i64 noundef %i.dos, i1 noundef false) #21
  %i.dpa = shl nsw i64 %i.dot, 1
  br label %stack_double.exit3154

bb.ahn:                                           ; preds = %bb.ahk, %bb.ahj
  %i.dpb = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.dpc = shl nsw i64 %i.dot, 1                  ; 3 uses
  %.not.i3149 = icmp eq i32 %i.dpb, 0
  br i1 %.not.i3149, label %bb.ahq, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.dpd = zext i32 %i.dpb to i64                 ; 2 uses
  %i.dpe = icmp ugt i64 %i.dpc, %i.dpd
  br i1 %i.dpe, label %bb.ahp, label %bb.ahq

bb.ahp:                                           ; preds = %bb.aho
  %i.dpf = trunc i64 %i.dot to i32
  %i.dpg = icmp eq i32 %i.dpb, %i.dpf
  br i1 %i.dpg, label %.loopexit3607, label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp, %bb.aho, %bb.ahn
  %.050.i3150 = phi i64 [ %i.dpc, %bb.ahn ], [ %i.dpc, %bb.aho ], [ %i.dpd, %bb.ahp ] ; 2 uses
  %i.dph = mul i64 %.050.i3150, 48
  %i.dpi = call ptr @realloc(ptr noundef %.pre4543, i64 noundef %i.dph) #23 ; 2 uses
  %i.dpj = icmp eq ptr %i.dpi, null
  br i1 %i.dpj, label %bb.ahr, label %stack_double.exit3154

bb.ahr:                                           ; preds = %bb.ahq
  br i1 %i.dou, label %.loopexit3607, label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr
  store ptr %.pre4543, ptr %5, align 8, !tbaa !38
  %i.dpk = getelementptr i8, ptr %5, i64 8
  store i64 %i.dot, ptr %i.dpk, align 8, !tbaa !57
  br label %.loopexit3607

stack_double.exit3154:                            ; preds = %bb.ahm, %bb.ahq
  %.2.i3151 = phi i64 [ %i.dpa, %bb.ahm ], [ %.050.i3150, %bb.ahq ]
  %.1.i3152 = phi ptr [ %i.doy, %bb.ahm ], [ %i.dpi, %bb.ahq ] ; 4 uses
  %i.dpl = sub i64 %i.doo, %i.dor
  %i.dpm = getelementptr i8, ptr %.1.i3152, i64 %i.dpl ; 2 uses
  store ptr %i.dpm, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3152, ptr %i.n, align 8, !tbaa !56
  %i.dpn = getelementptr [48 x i8], ptr %.1.i3152, i64 %.2.i3151
  store ptr %i.dpn, ptr %i.p, align 8, !tbaa !56
  br label %bb.ahv

.loopexit3607:                                    ; preds = %bb.ahl, %bb.ahp, %bb.ahs, %bb.ahr
  %.153.i3153.ph = phi i64 [ -5, %bb.ahr ], [ -5, %bb.ahs ], [ -5, %bb.ahl ], [ -15, %bb.ahp ]
  %i.dpo = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2623 = icmp eq ptr %i.dpo, %i.bk
  br i1 %.not2623, label %bb.ahu, label %bb.aht

bb.aht:                                           ; preds = %.loopexit3607
  store ptr %i.dpo, ptr %5, align 8, !tbaa !38
  %i.dpp = ptrtoint ptr %i.dpo to i64
  %i.dpq = sub i64 %i.don, %i.dpp
  %i.dpr = sdiv exact i64 %i.dpq, 48
  %i.dps = getelementptr i8, ptr %5, i64 8
  store i64 %i.dpr, ptr %i.dps, align 8, !tbaa !57
  br label %bb.ahu

bb.ahu:                                           ; preds = %.loopexit3607, %bb.aht
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.ahv:                                           ; preds = %stack_double.exit3154, %bb.ahi
  %i.dpt = phi ptr [ %.1.i3152, %stack_double.exit3154 ], [ %.pre4543, %bb.ahi ]
  %i.dpu = phi ptr [ %i.dpm, %stack_double.exit3154 ], [ %i.dol, %bb.ahi ] ; 5 uses
  store i32 1, ptr %i.dpu, align 8, !tbaa !137
  %i.dpv = icmp eq ptr %i.dpu, %i.dpt
  br i1 %i.dpv, label %bb.ahx, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  %i.dpw = getelementptr i8, ptr %i.dpu, i64 -40
  %i.dpx = load i64, ptr %i.dpw, align 8, !tbaa !138
  br label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahv, %bb.ahw
  %i.dpy = phi i64 [ %i.dpx, %bb.ahw ], [ 0, %bb.ahv ]
  %i.dpz = getelementptr i8, ptr %i.dpu, i64 8
  store i64 %i.dpy, ptr %i.dpz, align 8, !tbaa !138
  %i.dqa = sext i32 %i.dht to i64
  %i.dqb = getelementptr i8, ptr %i.dhu, i64 %i.dqa
  %i.dqc = getelementptr i8, ptr %i.dpu, i64 16
  store ptr %i.dqb, ptr %i.dqc, align 8, !tbaa !58
  %i.dqd = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.dqe = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dqf = getelementptr i8, ptr %i.dqe, i64 24
  store ptr %i.dqd, ptr %i.dqf, align 8, !tbaa !58
  %i.dqg = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dqh = getelementptr i8, ptr %i.dqg, i64 32
  store ptr %.19, ptr %i.dqh, align 8, !tbaa !58
  %i.dqi = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dqj = getelementptr i8, ptr %i.dqi, i64 40
  store ptr %.02225, ptr %i.dqj, align 8, !tbaa !58
  %i.dqk = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dql = getelementptr i8, ptr %i.dqk, i64 48
  store ptr %i.dql, ptr %i.o, align 8, !tbaa !56
  br label %bb.ahy

bb.ahy:                                           ; preds = %bb.ahx, %bb.agj
  %i.dqm = getelementptr i8, ptr %.25, i64 7
  br label %.backedge.backedge

bb.ahz:                                           ; preds = %.backedge
  %i.dqn = load i16, ptr %.25, align 2, !tbaa !72 ; 3 uses
  %i.dqo = getelementptr i8, ptr %.25, i64 2
  %i.dqp = load i32, ptr %i.dqo, align 4, !tbaa !14
  %i.dqq = getelementptr i8, ptr %.25, i64 6      ; 4 uses
  %i.dqr = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dqs = load ptr, ptr %i.o, align 8, !tbaa !56 ; 3 uses
  %i.dqt = ptrtoint ptr %i.dqr to i64             ; 3 uses
  %i.dqu = ptrtoint ptr %i.dqs to i64             ; 2 uses
  %i.dqv = sub i64 %i.dqt, %i.dqu
  %i.dqw = icmp slt i64 %i.dqv, 48
  br i1 %i.dqw, label %bb.aia, label %.thread5168

.thread5168:                                      ; preds = %bb.ahz
  %.pre-phi45955171 = ptrtoint ptr %i.dqs to i64
  %12 = load ptr, ptr %i.n, align 8, !tbaa !56    ; 2 uses
  %13 = ptrtoint ptr %12 to i64
  %i.dqx = sub i64 %.pre-phi45955171, %13
  %i.dqy = sdiv exact i64 %i.dqx, 48
  %i.dqz = sext i16 %i.dqn to i64                 ; 2 uses
  %i.dra = getelementptr [8 x i8], ptr %.02226, i64 %i.dqz
  store i64 %i.dqy, ptr %i.dra, align 8, !tbaa !28
  br label %bb.aiz

bb.aia:                                           ; preds = %bb.ahz
  %14 = load ptr, ptr %i.n, align 8, !tbaa !56    ; 5 uses
  %15 = ptrtoint ptr %14 to i64                   ; 2 uses
  %i.drb = sub i64 %i.dqt, %15                    ; 3 uses
  %i.drc = sdiv exact i64 %i.drb, 48              ; 4 uses
  %i.drd = icmp eq ptr %14, %i.bk                 ; 2 uses
  br i1 %i.drd, label %bb.aib, label %bb.aie

bb.aib:                                           ; preds = %bb.aia
  %i.dre = load ptr, ptr %5, align 8, !tbaa !38
  %i.drf = icmp eq ptr %i.dre, null
  br i1 %i.drf, label %bb.aic, label %bb.aie

bb.aic:                                           ; preds = %bb.aib
  %i.drg = shl i64 %i.drb, 1
  %i.drh = call noalias ptr @malloc(i64 noundef %i.drg) #22 ; 3 uses
  %i.dri = icmp eq ptr %i.drh, null
  br i1 %i.dri, label %.loopexit3602, label %bb.aid

bb.aid:                                           ; preds = %bb.aic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.drh, ptr noundef nonnull align 1 %14, i64 noundef %i.drb, i1 noundef false) #21
  %i.drj = shl nsw i64 %i.drc, 1
  br label %bb.aim

bb.aie:                                           ; preds = %bb.aib, %bb.aia
  %i.drk = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.drl = shl nsw i64 %i.drc, 1                  ; 3 uses
  %.not.i3155 = icmp eq i32 %i.drk, 0
  br i1 %.not.i3155, label %bb.aih, label %bb.aif

bb.aif:                                           ; preds = %bb.aie
  %i.drm = zext i32 %i.drk to i64                 ; 2 uses
  %i.drn = icmp ugt i64 %i.drl, %i.drm
  br i1 %i.drn, label %bb.aig, label %bb.aih

bb.aig:                                           ; preds = %bb.aif
  %i.dro = trunc i64 %i.drc to i32
  %i.drp = icmp eq i32 %i.drk, %i.dro
  br i1 %i.drp, label %.loopexit3602, label %bb.aih

bb.aih:                                           ; preds = %bb.aig, %bb.aif, %bb.aie
  %.050.i3156 = phi i64 [ %i.drl, %bb.aie ], [ %i.drl, %bb.aif ], [ %i.drm, %bb.aig ] ; 2 uses
  %i.drq = mul i64 %.050.i3156, 48
  %i.drr = call ptr @realloc(ptr noundef %14, i64 noundef %i.drq) #23 ; 2 uses
  %i.drs = icmp eq ptr %i.drr, null
  br i1 %i.drs, label %bb.aii, label %bb.aim

bb.aii:                                           ; preds = %bb.aih
  br i1 %i.drd, label %.loopexit3602, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  store ptr %14, ptr %5, align 8, !tbaa !38
  %i.drt = getelementptr i8, ptr %5, i64 8
  store i64 %i.drc, ptr %i.drt, align 8, !tbaa !57
  br label %.loopexit3602

.loopexit3602:                                    ; preds = %bb.aic, %bb.aig, %bb.aij, %bb.aii
  %.153.i3159.ph = phi i64 [ -5, %bb.aii ], [ -5, %bb.aij ], [ -5, %bb.aic ], [ -15, %bb.aig ]
  %i.dru = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2617 = icmp eq ptr %i.dru, %i.bk
  br i1 %.not2617, label %bb.ail, label %bb.aik

bb.aik:                                           ; preds = %.loopexit3602
  store ptr %i.dru, ptr %5, align 8, !tbaa !38
  %i.drv = ptrtoint ptr %i.dru to i64
  %i.drw = sub i64 %i.dqt, %i.drv
  %i.drx = sdiv exact i64 %i.drw, 48
  %i.dry = getelementptr i8, ptr %5, i64 8
  store i64 %i.drx, ptr %i.dry, align 8, !tbaa !57
  br label %bb.ail

bb.ail:                                           ; preds = %.loopexit3602, %bb.aik
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.aim:                                           ; preds = %bb.aih, %bb.aid
  %.2.i3157 = phi i64 [ %i.drj, %bb.aid ], [ %.050.i3156, %bb.aih ]
  %.1.i3158 = phi ptr [ %i.drh, %bb.aid ], [ %i.drr, %bb.aih ] ; 3 uses
  %i.drz = sub i64 %i.dqu, %15                    ; 2 uses
  %i.dsa = getelementptr i8, ptr %.1.i3158, i64 %i.drz ; 3 uses
  store ptr %i.dsa, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3158, ptr %i.n, align 8, !tbaa !56
  %.idx = mul i64 %.2.i3157, 48                   ; 2 uses
  %i.dsb = getelementptr i8, ptr %.1.i3158, i64 %.idx ; 2 uses
  store ptr %i.dsb, ptr %i.p, align 8, !tbaa !56
  %.pre4594 = ptrtoint ptr %i.dsb to i64          ; 2 uses
  %gepdiff = sub i64 %.idx, %i.drz
  %16 = icmp slt i64 %gepdiff, 48
  %.pre-phi4595 = ptrtoint ptr %i.dsa to i64
  %i.dsc = load ptr, ptr %i.n, align 8, !tbaa !56 ; 6 uses
  %i.dsd = ptrtoint ptr %i.dsc to i64             ; 2 uses
  %i.dse = sub i64 %.pre-phi4595, %i.dsd          ; 2 uses
  %i.dsf = sdiv exact i64 %i.dse, 48
  %i.dsg = sext i16 %i.dqn to i64                 ; 3 uses
  %i.dsh = getelementptr [8 x i8], ptr %.02226, i64 %i.dsg
  store i64 %i.dsf, ptr %i.dsh, align 8, !tbaa !28
  br i1 %16, label %bb.ain, label %bb.aiz

bb.ain:                                           ; preds = %bb.aim
  %i.dsi = sub i64 %.pre4594, %i.dsd              ; 3 uses
  %i.dsj = sdiv exact i64 %i.dsi, 48              ; 4 uses
  %i.dsk = icmp eq ptr %i.dsc, %i.bk              ; 2 uses
  br i1 %i.dsk, label %bb.aio, label %bb.air

bb.aio:                                           ; preds = %bb.ain
  %i.dsl = load ptr, ptr %5, align 8, !tbaa !38
  %i.dsm = icmp eq ptr %i.dsl, null
  br i1 %i.dsm, label %bb.aip, label %bb.air

bb.aip:                                           ; preds = %bb.aio
  %i.dsn = shl i64 %i.dsi, 1
  %i.dso = call noalias ptr @malloc(i64 noundef %i.dsn) #22 ; 3 uses
  %i.dsp = icmp eq ptr %i.dso, null
  br i1 %i.dsp, label %.loopexit3603, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dso, ptr noundef nonnull align 1 %i.dsc, i64 noundef %i.dsi, i1 noundef false) #21
  %i.dsq = shl nsw i64 %i.dsj, 1
  br label %stack_double.exit3166

bb.air:                                           ; preds = %bb.aio, %bb.ain
  %i.dsr = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14 ; 3 uses
  %i.dss = shl nsw i64 %i.dsj, 1                  ; 3 uses
  %.not.i3161 = icmp eq i32 %i.dsr, 0
  br i1 %.not.i3161, label %bb.aiu, label %bb.ais

bb.ais:                                           ; preds = %bb.air
  %i.dst = zext i32 %i.dsr to i64                 ; 2 uses
  %i.dsu = icmp ugt i64 %i.dss, %i.dst
  br i1 %i.dsu, label %bb.ait, label %bb.aiu

bb.ait:                                           ; preds = %bb.ais
  %i.dsv = trunc i64 %i.dsj to i32
  %i.dsw = icmp eq i32 %i.dsr, %i.dsv
  br i1 %i.dsw, label %.loopexit3603, label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait, %bb.ais, %bb.air
  %.050.i3162 = phi i64 [ %i.dss, %bb.air ], [ %i.dss, %bb.ais ], [ %i.dst, %bb.ait ] ; 2 uses
  %i.dsx = mul i64 %.050.i3162, 48
  %i.dsy = call ptr @realloc(ptr noundef %i.dsc, i64 noundef %i.dsx) #23 ; 2 uses
  %i.dsz = icmp eq ptr %i.dsy, null
  br i1 %i.dsz, label %bb.aiv, label %stack_double.exit3166

bb.aiv:                                           ; preds = %bb.aiu
  br i1 %i.dsk, label %.loopexit3603, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  store ptr %i.dsc, ptr %5, align 8, !tbaa !38
  %i.dta = getelementptr i8, ptr %5, i64 8
  store i64 %i.dsj, ptr %i.dta, align 8, !tbaa !57
  br label %.loopexit3603

stack_double.exit3166:                            ; preds = %bb.aiq, %bb.aiu
  %.2.i3163 = phi i64 [ %i.dsq, %bb.aiq ], [ %.050.i3162, %bb.aiu ]
  %.1.i3164 = phi ptr [ %i.dso, %bb.aiq ], [ %i.dsy, %bb.aiu ] ; 4 uses
  %i.dtb = getelementptr i8, ptr %.1.i3164, i64 %i.dse ; 2 uses
  store ptr %i.dtb, ptr %i.o, align 8, !tbaa !56
  store ptr %.1.i3164, ptr %i.n, align 8, !tbaa !56
  %i.dtc = getelementptr [48 x i8], ptr %.1.i3164, i64 %.2.i3163
  store ptr %i.dtc, ptr %i.p, align 8, !tbaa !56
  br label %bb.aiz

.loopexit3603:                                    ; preds = %bb.aip, %bb.ait, %bb.aiw, %bb.aiv
  %.153.i3165.ph = phi i64 [ -5, %bb.aiv ], [ -5, %bb.aiw ], [ -5, %bb.aip ], [ -15, %bb.ait ]
  %i.dtd = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2616 = icmp eq ptr %i.dtd, %i.bk
  br i1 %.not2616, label %bb.aiy, label %bb.aix

bb.aix:                                           ; preds = %.loopexit3603
  store ptr %i.dtd, ptr %5, align 8, !tbaa !38
  %i.dte = ptrtoint ptr %i.dtd to i64
  %i.dtf = sub i64 %.pre4594, %i.dte
  %i.dtg = sdiv exact i64 %i.dtf, 48
  %i.dth = getelementptr i8, ptr %5, i64 8
  store i64 %i.dtg, ptr %i.dth, align 8, !tbaa !57
  br label %bb.aiy

bb.aiy:                                           ; preds = %.loopexit3603, %bb.aix
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3614

bb.aiz:                                           ; preds = %.thread5168, %stack_double.exit3166, %bb.aim
  %i.dti = phi i64 [ %i.dsg, %stack_double.exit3166 ], [ %i.dsg, %bb.aim ], [ %i.dqz, %.thread5168 ]
  %i.dtj = phi ptr [ %.1.i3164, %stack_double.exit3166 ], [ %i.dsc, %bb.aim ], [ %12, %.thread5168 ]
  %i.dtk = phi ptr [ %i.dtb, %stack_double.exit3166 ], [ %i.dsa, %bb.aim ], [ %i.dqs, %.thread5168 ] ; 5 uses
  store i32 1792, ptr %i.dtk, align 8, !tbaa !137
  %i.dtl = icmp eq ptr %i.dtk, %i.dtj
  br i1 %i.dtl, label %bb.ajb, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.dtm = getelementptr i8, ptr %i.dtk, i64 -40
  %i.dtn = load i64, ptr %i.dtm, align 8, !tbaa !138
  br label %bb.ajb

bb.ajb:                                           ; preds = %bb.aiz, %bb.aja
  %i.dto = phi i64 [ %i.dtn, %bb.aja ], [ 0, %bb.aiz ]
  %i.dtp = getelementptr i8, ptr %i.dtk, i64 8
  store i64 %i.dto, ptr %i.dtp, align 8, !tbaa !138
  %i.dtq = sext i16 %i.dqn to i32
  %i.dtr = getelementptr i8, ptr %i.dtk, i64 32
  store i32 %i.dtq, ptr %i.dtr, align 8, !tbaa !58
  %i.dts = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dtt = getelementptr i8, ptr %i.dts, i64 24
  store ptr %i.dqq, ptr %i.dtt, align 8, !tbaa !58
  %i.dtu = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dtv = getelementptr i8, ptr %i.dtu, i64 16
  store i32 0, ptr %i.dtv, align 8, !tbaa !58
  %i.dtw = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.dtx = getelementptr i8, ptr %i.dtw, i64 48   ; 2 uses
  store ptr %i.dtx, ptr %i.o, align 8, !tbaa !56
  %i.dty = load ptr, ptr %i.cm, align 8, !tbaa !73
  %i.dtz = getelementptr [8 x i8], ptr %i.dty, i64 %i.dti
  %i.dua = load i32, ptr %i.dtz, align 4, !tbaa !75
  %i.dub = icmp eq i32 %i.dua, 0
  br i1 %i.dub, label %bb.ajc, label %bb.akq

bb.ajc:                                           ; preds = %bb.ajb
  %i.duc = load i32, ptr %i.cn, align 8, !tbaa !46
  %i.dud = icmp eq i32 %i.duc, 0
  br i1 %i.dud, label %bb.ajd, label %bb.aka

bb.ajd:                                           ; preds = %bb.ajc
  %i.due = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.duf = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.dug = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.duh = call fastcc i64 @find_cache_point(ptr noundef nonnull %0, ptr noundef %i.due, i64 noundef %i.duf, ptr noundef nonnull %.pn.in.in, ptr noundef %i.dug, ptr noundef nonnull %.02226, ptr noundef %i.z) ; 2 uses
  %i.dui = icmp sgt i64 %i.duh, -1
  br i1 %i.dui, label %bb.aje, label %._crit_edge4536

._crit_edge4536:                                  ; preds = %bb.ajd
  %.pre4537 = load ptr, ptr %i.o, align 8, !tbaa !56
  br label %bb.aka

bb.aje:                                           ; preds = %bb.ajd
  %i.duj = load i64, ptr %i.cq, align 8, !tbaa !141
  %i.duk = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.dul = ptrtoint ptr %i.duk to i64
  %i.dum = sub i64 %i.dul, %i.cr
  %i.dun = mul i64 %i.dum, %i.duj
  %i.duo = add i64 %i.dun, %i.duh                 ; 2 uses
  %i.dup = ashr i64 %i.duo, 3                     ; 2 uses
  %i.duq = trunc i64 %i.duo to i8
  %i.dur = and i8 %i.duq, 7                       ; 4 uses
  %i.dus = shl nuw i8 1, %i.dur                   ; 2 uses
  %i.dut = load ptr, ptr %i.cj, align 8, !tbaa !52
  %i.duu = getelementptr i8, ptr %i.dut, i64 %i.dup ; 3 uses
  %i.duv = load i8, ptr %i.duu, align 1, !tbaa !58 ; 3 uses
  %i.duw = and i8 %i.dus, %i.duv
  %.not2609 = icmp eq i8 %i.duw, 0
  br i1 %.not2609, label %bb.ajs, label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje
  %i.dux = load ptr, ptr %i.z, align 8, !tbaa !67 ; 2 uses
  %i.duy = getelementptr i8, ptr %i.dux, i64 40
  %i.duz = load i32, ptr %i.duy, align 8, !tbaa !69 ; 2 uses
  %i.dva = icmp eq i32 %i.duz, 0
  br i1 %i.dva, label %is_mbc_newline_ex.exit.thread, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  %i.dvb = icmp slt i32 %i.duz, 0
  %.not.i3167.not = icmp eq i8 %i.dur, 7          ; 2 uses
  br i1 %i.dvb, label %bb.ajh, label %bb.ajo

bb.ajh:                                           ; preds = %bb.ajg
  br i1 %.not.i3167.not, label %bb.aji, label %bb.ajj

bb.aji:                                           ; preds = %bb.ajh
  %i.dvc = getelementptr i8, ptr %i.duu, i64 1
  %i.dvd = load i8, ptr %i.dvc, align 1, !tbaa !58
  %i.dve = and i8 %i.dvd, 1
  br label %check_extended_match_cache_point.exit3169

bb.ajj:                                           ; preds = %bb.ajh
  %i.dvf = shl nuw i8 2, %i.dur
  %i.dvg = and i8 %i.dvf, %i.duv
  br label %check_extended_match_cache_point.exit3169

check_extended_match_cache_point.exit3169:        ; preds = %bb.aji, %bb.ajj
  %.0.i3168.in = phi i8 [ %i.dve, %bb.aji ], [ %i.dvg, %bb.ajj ]
  %.0.i3168 = icmp eq i8 %.0.i3168.in, 0
  br i1 %.0.i3168, label %is_mbc_newline_ex.exit.thread, label %.preheader3568

.preheader3568:                                   ; preds = %check_extended_match_cache_point.exit3169, %.preheader3568.backedge
  %i.dvh = load ptr, ptr %i.o, align 8, !tbaa !56 ; 4 uses
  %i.dvi = getelementptr i8, ptr %i.dvh, i64 -48  ; 2 uses
  store ptr %i.dvi, ptr %i.o, align 8, !tbaa !56
  %i.dvj = load i32, ptr %i.dvi, align 8, !tbaa !137
  switch i32 %i.dvj, label %.preheader3568.backedge [
    i32 1536, label %bb.ajk
    i32 3328, label %bb.ajl
  ]

bb.ajk:                                           ; preds = %.preheader3568
  %i.dvk = getelementptr i8, ptr %i.dvh, i64 -48
  store i32 2560, ptr %i.dvk, align 8, !tbaa !137
  br label %is_mbc_newline_ex.exit.thread

bb.ajl:                                           ; preds = %.preheader3568
  %i.dvl = load ptr, ptr %i.cj, align 8, !tbaa !52
  %i.dvm = getelementptr i8, ptr %i.dvh, i64 -32
  %i.dvn = load i64, ptr %i.dvm, align 8, !tbaa !58
  %i.dvo = getelementptr i8, ptr %i.dvh, i64 -24
  %i.dvp = load i8, ptr %i.dvo, align 8, !tbaa !58 ; 3 uses
  %i.dvq = getelementptr i8, ptr %i.dvl, i64 %i.dvn ; 4 uses
  %i.dvr = load i8, ptr %i.dvq, align 1, !tbaa !58
  %i.dvs = or i8 %i.dvr, %i.dvp                   ; 2 uses
  store i8 %i.dvs, ptr %i.dvq, align 1, !tbaa !58
  %.not.i3170 = icmp sgt i8 %i.dvp, -1
  br i1 %.not.i3170, label %bb.ajn, label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl
  %i.dvt = getelementptr i8, ptr %i.dvq, i64 1    ; 2 uses
  %i.dvu = load i8, ptr %i.dvt, align 1, !tbaa !58
  %i.dvv = or i8 %i.dvu, 1
  store i8 %i.dvv, ptr %i.dvt, align 1, !tbaa !58
  br label %.preheader3568.backedge

bb.ajn:                                           ; preds = %bb.ajl
  %i.dvw = shl nuw i8 %i.dvp, 1
  %i.dvx = or i8 %i.dvs, %i.dvw
  store i8 %i.dvx, ptr %i.dvq, align 1, !tbaa !58
  br label %.preheader3568.backedge

.preheader3568.backedge:                          ; preds = %bb.ajn, %bb.ajm, %.preheader3568
  br label %.preheader3568

bb.ajo:                                           ; preds = %bb.ajg
  br i1 %.not.i3167.not, label %bb.ajp, label %bb.ajq

bb.ajp:                                           ; preds = %bb.ajo
  %i.dvy = getelementptr i8, ptr %i.duu, i64 1
  %i.dvz = load i8, ptr %i.dvy, align 1, !tbaa !58
  %i.dwa = and i8 %i.dvz, 1
  br label %check_extended_match_cache_point.exit3174

bb.ajq:                                           ; preds = %bb.ajo
  %i.dwb = shl nuw i8 2, %i.dur
  %i.dwc = and i8 %i.dwb, %i.duv
  br label %check_extended_match_cache_point.exit3174

check_extended_match_cache_point.exit3174:        ; preds = %bb.ajp, %bb.ajq
  %.0.i3173.in = phi i8 [ %i.dwa, %bb.ajp ], [ %i.dwc, %bb.ajq ]
  %.0.i3173 = icmp eq i8 %.0.i3173.in, 0
  br i1 %.0.i3173, label %is_mbc_newline_ex.exit.thread, label %bb.ajr

bb.ajr:                                           ; preds = %check_extended_match_cache_point.exit3174
  %i.dwd = getelementptr i8, ptr %i.dux, i64 48
  %i.dwe = load ptr, ptr %i.dwd, align 8, !tbaa !70 ; 2 uses
  %i.dwf = getelementptr i8, ptr %i.dwe, i64 1
  br label %.backedge.backedge

bb.ajs:                                           ; preds = %bb.aje
  %i.dwg = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dwh = load ptr, ptr %i.o, align 8, !tbaa !56 ; 2 uses
  %i.dwi = ptrtoint ptr %i.dwg to i64
  %i.dwj = ptrtoint ptr %i.dwh to i64
  %i.dwk = sub i64 %i.dwi, %i.dwj
  %i.dwl = icmp slt i64 %i.dwk, 48
  br i1 %i.dwl, label %bb.ajt, label %bb.ajx

bb.ajt:                                           ; preds = %bb.ajs
  %i.dwm = call fastcc i32 @stack_double(ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.o, ptr noundef nonnull %i.bk, ptr noundef %5) ; 2 uses
  %.not2610 = icmp eq i32 %i.dwm, 0
  br i1 %.not2610, label %._crit_edge4534, label %bb.aju

._crit_edge4534:                                  ; preds = %bb.ajt
  %.pre4535 = load ptr, ptr %i.o, align 8, !tbaa !56
  br label %bb.ajx

bb.aju:                                           ; preds = %bb.ajt
  %i.dwn = load ptr, ptr %i.n, align 8, !tbaa !56 ; 3 uses
  %.not2613 = icmp eq ptr %i.dwn, %i.bk
  br i1 %.not2613, label %bb.ajw, label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju
  store ptr %i.dwn, ptr %5, align 8, !tbaa !38
  %i.dwo = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.dwp = ptrtoint ptr %i.dwo to i64
  %i.dwq = ptrtoint ptr %i.dwn to i64
  %i.dwr = sub i64 %i.dwp, %i.dwq
  %i.dws = sdiv exact i64 %i.dwr, 48
  %i.dwt = getelementptr i8, ptr %5, i64 8
  store i64 %i.dws, ptr %i.dwt, align 8, !tbaa !57
  br label %bb.ajw
end_hunk_2
