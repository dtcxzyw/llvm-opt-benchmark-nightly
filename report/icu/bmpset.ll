Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/bmpset?download=true
inline.NumInlined: 23
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_786BMPSetC2EPKii:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr [4 x i8], ptr %1, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15
  %.not28.i.i = icmp sgt i32 %i.bm, 65533
  br i1 %.not28.i.i, label %.preheader.i.i, label %_ZNK6icu_786BMPSet12containsSlowEiii.exit

.preheader.i.i:                                   ; preds = %bb.i
  %i.bn = add nsw i32 %i.be, %i.bc
  %i.bo = ashr i32 %i.bn, 1                       ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %i.bc
  br i1 %i.bp, label %_ZNK6icu_786BMPSet12containsSlowEiii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.bq = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %i.bo, %.preheader.i.i ] ; 3 uses
  %.01933.i.i = phi i32 [ %..019.i.i, %.lr.ph.i.i ], [ %i.be, %.preheader.i.i ]
  %.02032.i.i = phi i32 [ %.020..i.i, %.lr.ph.i.i ], [ %i.bc, %.preheader.i.i ]
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !15
  %i.bu = icmp sgt i32 %i.bt, 65533               ; 2 uses
  %.020..i.i = select i1 %i.bu, i32 %.02032.i.i, i32 %i.bq ; 3 uses
  %..019.i.i = select i1 %i.bu, i32 %i.bq, i32 %.01933.i.i ; 3 uses
  %i.bv = add nsw i32 %..019.i.i, %.020..i.i
  %i.bw = ashr i32 %i.bv, 1                       ; 2 uses
  %i.bx = icmp eq i32 %i.bw, %.020..i.i
  br i1 %i.bx, label %_ZNK6icu_786BMPSet12containsSlowEiii.exit, label %.lr.ph.i.i

_ZNK6icu_786BMPSet12containsSlowEiii.exit:        ; preds = %.lr.ph.i.i, %bb.g, %bb.h, %bb.i, %.preheader.i.i
  %.023.i.i = phi i32 [ %i.be, %bb.h ], [ %i.bc, %bb.g ], [ %i.be, %bb.i ], [ %i.be, %.preheader.i.i ], [ %..019.i.i, %.lr.ph.i.i ]
  %i.by = trunc i32 %.023.i.i to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.bz, ptr %i.ca, align 8, !tbaa !17
  tail call void @_ZN6icu_786BMPSet8initBitsEv(ptr noundef nonnull align 8 dereferenceable(868) %0)
  tail call void @_ZN6icu_786BMPSet15overrideIllegalEv(ptr noundef nonnull align 8 dereferenceable(868) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_786BMPSet13findCodePointEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(868) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = icmp slt i32 %1, %i.e
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i32 %2, %3
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %.not28 = icmp slt i32 %1, %i.j
  br i1 %.not28, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c
  %i.k = add nsw i32 %3, %2
  %i.l = ashr i32 %i.k, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.n = phi i32 [ %i.t, %.lr.ph ], [ %i.l, %.preheader ] ; 3 uses
  %.01933 = phi i32 [ %..019, %.lr.ph ], [ %3, %.preheader ]
  %.02032 = phi i32 [ %.020., %.lr.ph ], [ %2, %.preheader ]
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp slt i32 %1, %i.q                    ; 2 uses
  %.020. = select i1 %i.r, i32 %.02032, i32 %i.n  ; 3 uses
  %..019 = select i1 %i.r, i32 %i.n, i32 %.01933  ; 3 uses
  %i.s = add nsw i32 %..019, %.020.
  %i.t = ashr i32 %i.s, 1                         ; 2 uses
  %i.u = icmp eq i32 %i.t, %.020.
  br i1 %i.u, label %.thread, label %.lr.ph

.thread:                                          ; preds = %.lr.ph, %.preheader, %bb.b, %bb.c, %bb.a
  %.023 = phi i32 [ %3, %bb.b ], [ %2, %bb.a ], [ %3, %bb.c ], [ %3, %.preheader ], [ %..019, %.lr.ph ]
  ret i32 %.023
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZNK6icu_786BMPSet12containsSlowEiii(ptr noundef nonnull align 8 dereferenceable(868) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = icmp slt i32 %1, %i.e
  br i1 %i.f, label %_ZNK6icu_786BMPSet13findCodePointEiii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp slt i32 %2, %3
  br i1 %.not.i, label %bb.c, label %_ZNK6icu_786BMPSet13findCodePointEiii.exit

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %.not28.i = icmp slt i32 %1, %i.j
  br i1 %.not28.i, label %.preheader.i, label %_ZNK6icu_786BMPSet13findCodePointEiii.exit

.preheader.i:                                     ; preds = %bb.c
  %i.k = add nsw i32 %3, %2
  %i.l = ashr i32 %i.k, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %_ZNK6icu_786BMPSet13findCodePointEiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.n = phi i32 [ %i.t, %.lr.ph.i ], [ %i.l, %.preheader.i ] ; 3 uses
  %.01933.i = phi i32 [ %..019.i, %.lr.ph.i ], [ %3, %.preheader.i ]
  %.02032.i = phi i32 [ %.020..i, %.lr.ph.i ], [ %2, %.preheader.i ]
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp slt i32 %1, %i.q                    ; 2 uses
  %.020..i = select i1 %i.r, i32 %.02032.i, i32 %i.n ; 3 uses
  %..019.i = select i1 %i.r, i32 %i.n, i32 %.01933.i ; 3 uses
  %i.s = add nsw i32 %..019.i, %.020..i
  %i.t = ashr i32 %i.s, 1                         ; 2 uses
  %i.u = icmp eq i32 %i.t, %.020..i
  br i1 %i.u, label %_ZNK6icu_786BMPSet13findCodePointEiii.exit, label %.lr.ph.i

_ZNK6icu_786BMPSet13findCodePointEiii.exit:       ; preds = %.lr.ph.i, %bb.a, %bb.b, %bb.c, %.preheader.i
  %.023.i = phi i32 [ %3, %bb.b ], [ %2, %bb.a ], [ %3, %bb.c ], [ %3, %.preheader.i ], [ %..019.i, %.lr.ph.i ]
  %i.v = trunc i32 %.023.i to i8
  %i.w = and i8 %i.v, 1
  ret i8 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_786BMPSet8initBitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(868) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %bb.a
  %.052 = phi i32 [ 0, %bb.a ], [ %.153, %.preheader.preheader ] ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.d = add nsw i32 %.052, 1                     ; 3 uses
  %i.e = sext i32 %.052 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 5 uses
  %i.h = load i32, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.i = icmp slt i32 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.052, 2
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.055 = phi i32 [ %i.m, %bb.c ], [ 1114112, %bb.b ] ; 2 uses
  %.153 = phi i32 [ %i.j, %bb.c ], [ %i.d, %bb.b ]
  %i.n = icmp sgt i32 %i.g, 255
  br i1 %i.n, label %split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.o = sext i32 %i.g to i64
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.o
  %i.p = add nsw i32 %i.g, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %.055, i32 %i.p)
  %i.q = xor i32 %i.g, -1
  %i.r = add i32 %smax, %i.q
  %i.s = sub i32 255, %i.g
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %umin = zext i32 %i.t to i64
  %i.u = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep136, i8 1, i64 %i.u, i1 false), !tbaa !18
  %i.v = icmp slt i32 %.055, 257
  br i1 %i.v, label %bb.b, label %.preheader.preheader._crit_edge, !llvm.loop !22

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  %.pre139 = load i32, ptr %i.b, align 8, !tbaa !14
  br label %split, !llvm.loop !22

split:                                            ; preds = %bb.d, %.preheader.preheader._crit_edge
  %i.w = phi i32 [ %.pre139, %.preheader.preheader._crit_edge ], [ %i.h, %bb.d ] ; 2 uses
  %i.x = phi ptr [ %.pre, %.preheader.preheader._crit_edge ], [ %i.c, %bb.d ] ; 6 uses
  %i.y = sext i32 %i.w to i64
  %i.z = icmp sgt i32 %i.w, 1
  br i1 %i.z, label %.lr.ph196.preheader, label %.thread.split.loop.exit

.lr.ph196.preheader:                              ; preds = %split
  %invariant.op = sub nsw i64 %i.y, 1
  br label %.lr.ph196

bb.e:                                             ; preds = %.lr.ph196
  %i.aa = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.aa, label %.lr.ph196, label %.thread.split.loop.exit, !llvm.loop !23

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.e
  %indvars.iv195.a = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph196.preheader ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv195.a, 2 ; 4 uses
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv195.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %2, align 4, !tbaa !15    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 128
  br i1 %i.ac, label %.thread.split.loop.exit179, label %bb.e, !llvm.loop !23

.thread.split.loop.exit:                          ; preds = %bb.e, %split
  %indvars.iv.lcssa = phi i64 [ 0, %split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars138.le = trunc i64 %indvars.iv.lcssa to i32
  %i.ad = or disjoint i32 %indvars138.le, 1
  br label %.thread

.thread.split.loop.exit179:                       ; preds = %.lr.ph196
  %i.ae = trunc nuw i64 %indvars.iv.next to i32
  br label %.thread

.thread:                                          ; preds = %.thread.split.loop.exit179, %.thread.split.loop.exit
  %indvars.iv189 = phi i64 [ %indvars.iv.lcssa, %.thread.split.loop.exit ], [ %indvars.iv195.a, %.thread.split.loop.exit179 ]
  %.3110 = phi i32 [ %i.ad, %.thread.split.loop.exit ], [ %i.ae, %.thread.split.loop.exit179 ] ; 2 uses
  %.156109 = phi i32 [ 1114112, %.thread.split.loop.exit ], [ %i.ab, %.thread.split.loop.exit179 ] ; 2 uses
  %i.af = and i64 %indvars.iv189, 4294967294
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 128) ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 2048
  br i1 %i.ai, label %.lr.ph, label %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %.4120 = phi i32 [ %.3110, %.lr.ph ], [ %.5, %bb.m ] ; 4 uses
  %.257119 = phi i32 [ %.156109, %.lr.ph ], [ %.358, %bb.m ] ; 3 uses
  %.163118 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.gd, %bb.m ] ; 3 uses
  %i.bs = tail call i32 @llvm.smin.i32(i32 %.257119, i32 2048) ; 3 uses
  %i.bt = ashr i32 %.163118, 6                    ; 4 uses
  %i.bu = and i32 %.163118, 63                    ; 6 uses
  %i.bv = shl nuw i32 1, %i.bt                    ; 5 uses
  %i.bw = add nsw i32 %.163118, 1
  %i.bx = icmp eq i32 %i.bw, %i.bs
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !15
  %i.cb = or i32 %i.ca, %i.bv
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !15
  br label %_ZN6icu_78L12set32x64BitsEPjii.exit

bb.h:                                             ; preds = %bb.f
  %i.cc = ashr i32 %i.bs, 6                       ; 6 uses
  %i.cd = and i32 %i.bs, 63                       ; 5 uses
  %i.ce = icmp eq i32 %i.bt, %i.cc
  br i1 %i.ce, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %bb.h
  %i.cf = icmp samesign ult i32 %i.bu, %i.cd
  br i1 %i.cf, label %.lr.ph55.preheader.i, label %_ZN6icu_78L12set32x64BitsEPjii.exit

.lr.ph55.preheader.i:                             ; preds = %.preheader.i
  %i.cg = zext nneg i32 %i.bu to i64              ; 4 uses
  %wide.trip.count70.i = zext nneg i32 %i.cd to i64 ; 2 uses
  %i.ch = sub nsw i64 %wide.trip.count70.i, %i.cg ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 8
  br i1 %min.iters.check, label %.lr.ph55.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph55.preheader.i
  %n.vec = and i64 %i.ch, -8                      ; 3 uses
  %i.ci = add nsw i64 %n.vec, %i.cg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aj, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !15
  %wide.load198 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !15
  %i.ck = or <4 x i32> %wide.load, %broadcast.splat
  %i.cl = or <4 x i32> %wide.load198, %broadcast.splat
  store <4 x i32> %i.ck, ptr %gep, align 4, !tbaa !15
  store <4 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph55.i.preheader

.lr.ph55.i.preheader:                             ; preds = %.lr.ph55.preheader.i, %middle.block
  %indvars.iv67.i.ph = phi i64 [ %i.cg, %.lr.ph55.preheader.i ], [ %i.ci, %middle.block ]
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader, %.lr.ph55.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %.lr.ph55.i ], [ %indvars.iv67.i.ph, %.lr.ph55.i.preheader ] ; 2 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv67.i ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !15
  %i.cp = or i32 %i.co, %i.bv
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !15
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count70.i
  br i1 %exitcond71.not.i, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph55.i, !llvm.loop !25

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %bb.j, label %.preheader51.preheader.i

.preheader51.preheader.i:                         ; preds = %bb.i
  %i.cq = zext nneg i32 %i.bu to i64              ; 10 uses
  %i.cr = sub nuw nsw i64 64, %i.cq               ; 2 uses
  %min.iters.check224 = icmp samesign ugt i32 %i.bu, 56
  br i1 %min.iters.check224, label %.preheader51.i.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.preheader51.preheader.i
  %n.vec226 = and i64 %i.cr, 120                  ; 8 uses
  %i.cs = add nuw nsw i64 %n.vec226, %i.cq
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cq ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load231 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !15
  %wide.load232 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !15
  %i.cv = or <4 x i32> %wide.load231, %broadcast.splat228
  %i.cw = or <4 x i32> %wide.load232, %broadcast.splat228
  store <4 x i32> %i.cv, ptr %i.ct, align 4, !tbaa !15
  store <4 x i32> %i.cw, ptr %i.cu, align 4, !tbaa !15
  %i.cx = icmp eq i64 %n.vec226, 8
  br i1 %i.cx, label %middle.block234, label %vector.body229.1

vector.body229.1:                                 ; preds = %vector.ph225
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cq ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %wide.load231.1 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !15
  %wide.load232.1 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !15
  %i.da = or <4 x i32> %wide.load231.1, %broadcast.splat228
  %i.db = or <4 x i32> %wide.load232.1, %broadcast.splat228
  store <4 x i32> %i.da, ptr %i.cy, align 4, !tbaa !15
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !15
  %i.dc = icmp eq i64 %n.vec226, 16
  br i1 %i.dc, label %middle.block234, label %vector.body229.2

vector.body229.2:                                 ; preds = %vector.body229.1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cq ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load231.2 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !15
  %wide.load232.2 = load <4 x i32>, ptr %i.de, align 4, !tbaa !15
  %i.df = or <4 x i32> %wide.load231.2, %broadcast.splat228
  %i.dg = or <4 x i32> %wide.load232.2, %broadcast.splat228
  store <4 x i32> %i.df, ptr %i.dd, align 4, !tbaa !15
  store <4 x i32> %i.dg, ptr %i.de, align 4, !tbaa !15
  %i.dh = icmp eq i64 %n.vec226, 24
  br i1 %i.dh, label %middle.block234, label %vector.body229.3

vector.body229.3:                                 ; preds = %vector.body229.2
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cq ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load231.3 = load <4 x i32>, ptr %i.di, align 4, !tbaa !15
  %wide.load232.3 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !15
  %i.dk = or <4 x i32> %wide.load231.3, %broadcast.splat228
  %i.dl = or <4 x i32> %wide.load232.3, %broadcast.splat228
  store <4 x i32> %i.dk, ptr %i.di, align 4, !tbaa !15
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !15
  %i.dm = icmp eq i64 %n.vec226, 32
  br i1 %i.dm, label %middle.block234, label %vector.body229.4

vector.body229.4:                                 ; preds = %vector.body229.3
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cq ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %wide.load231.4 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !15
  %wide.load232.4 = load <4 x i32>, ptr %i.do, align 4, !tbaa !15
  %i.dp = or <4 x i32> %wide.load231.4, %broadcast.splat228
  %i.dq = or <4 x i32> %wide.load232.4, %broadcast.splat228
  store <4 x i32> %i.dp, ptr %i.dn, align 4, !tbaa !15
  store <4 x i32> %i.dq, ptr %i.do, align 4, !tbaa !15
  %i.dr = icmp eq i64 %n.vec226, 40
  br i1 %i.dr, label %middle.block234, label %vector.body229.5

vector.body229.5:                                 ; preds = %vector.body229.4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cq ; 3 uses
end_hunk_0
