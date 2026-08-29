Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/bdf?download=true
inline.NumInlined: 52
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@bdf_add_property_:bb.a
  %i.ew = sext i8 %i.et to i64
  %i.ex = getelementptr inbounds i8, ptr @a2i, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !40
  %i.ez = zext i8 %i.ey to i64
  %i.fa = add nsw i64 %i.ev, %i.ez                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.11113.i86, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !40  ; 3 uses
  %i.fd = lshr i8 %i.fc, 3
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !40
  %i.fh = zext i8 %i.fg to i32
  %i.fi = and i8 %i.fc, 7
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 1, %i.fj
  %i.fl = and i32 %i.fk, %i.fh
  %.not.i88 = icmp eq i32 %i.fl, 0
  br i1 %.not.i88, label %bdf_atol_.exit89, label %.lr.ph.i84, !llvm.loop !187

bdf_atol_.exit89:                                 ; preds = %.lr.ph.i84, %bb.ab, %bb.aa
  %.1.i87 = phi i64 [ 0, %bb.aa ], [ %i.fa, %bb.ab ], [ 9223372036854775807, %.lr.ph.i84 ] ; 2 uses
  %i.fm = sub nsw i64 0, %.1.i87
  %i.fn = select i1 %i.ei, i64 %i.fm, i64 %.1.i87
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !40
  br label %bb.ae

bb.ac:                                            ; preds = %bb.w
  %i.fp = load i8, ptr %2, align 1, !tbaa !40     ; 3 uses
  %i.fq = lshr i8 %i.fp, 3
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !40
  %i.fu = zext i8 %i.ft to i32
  %i.fv = and i8 %i.fp, 7
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 1, %i.fw
  %i.fy = and i32 %i.fx, %i.fu
  %.not7.i90 = icmp eq i32 %i.fy, 0
  br i1 %.not7.i90, label %bdf_atoul_.exit96, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.ac, %bb.ad
  %i.fz = phi i8 [ %i.gi, %bb.ad ], [ %i.fp, %bb.ac ]
  %.09.i92 = phi i64 [ %i.gg, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %.068.i93 = phi ptr [ %i.gh, %bb.ad ], [ %2, %bb.ac ]
  %i.ga = icmp ult i64 %.09.i92, 1844674407370955160
  br i1 %i.ga, label %bb.ad, label %bdf_atoul_.exit96

bb.ad:                                            ; preds = %.lr.ph.i91
  %i.gb = mul nuw i64 %.09.i92, 10
  %i.gc = sext i8 %i.fz to i64
  %i.gd = getelementptr inbounds i8, ptr @a2i, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !40
  %i.gf = zext i8 %i.ge to i64
  %i.gg = add i64 %i.gb, %i.gf                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.068.i93, i64 1 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !40  ; 3 uses
  %i.gj = lshr i8 %i.gi, 3
  %i.gk = zext nneg i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !40
  %i.gn = zext i8 %i.gm to i32
  %i.go = and i8 %i.gi, 7
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = shl nuw nsw i32 1, %i.gp
  %i.gr = and i32 %i.gq, %i.gn
  %.not.i95 = icmp eq i32 %i.gr, 0
  br i1 %.not.i95, label %bdf_atoul_.exit96, label %.lr.ph.i91, !llvm.loop !175

bdf_atoul_.exit96:                                ; preds = %.lr.ph.i91, %bb.ad, %bb.ac
  %.1.i94 = phi i64 [ 0, %bb.ac ], [ %i.gg, %bb.ad ], [ -1, %.lr.ph.i91 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.1.i94, ptr %i.gs, align 8, !tbaa !40
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.x, %bb.y, %bdf_atoul_.exit96, %bdf_atol_.exit89, %bb.w
  %i.gt = phi ptr [ %.pre, %._crit_edge ], [ %i.dy, %bb.x ], [ %i.dy, %bb.y ], [ %i.dy, %bdf_atoul_.exit96 ], [ %i.dy, %bdf_atol_.exit89 ], [ %i.dy, %bb.w ]
  %i.gu = load i64, ptr %i.db, align 8, !tbaa !203
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.gw = call i32 @ft_hash_str_insert(ptr noundef %i.gt, i64 noundef %i.gu, ptr noundef %i.gv, ptr noundef %i.d) #18 ; 2 uses
  %.not74 = icmp eq i32 %i.gw, 0
  br i1 %.not74, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gx = load i64, ptr %i.db, align 8, !tbaa !203
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.db, align 8, !tbaa !203
  br label %bb.ag

bb.ag:                                            ; preds = %bdf_create_property.exit.thread, %bb.e, %bb.ae, %bb.z, %bb.r, %bdf_atol_.exit, %bdf_atoul_.exit, %bb.d, %bb.c, %bb.b, %bb.af
  %i.gz = phi i32 [ %.ph, %bdf_create_property.exit.thread ], [ %.pre98, %bb.e ], [ %i.gw, %bb.ae ], [ %i.eg, %bb.z ], [ %i.dk, %bb.r ], [ 0, %bdf_atol_.exit ], [ 0, %bdf_atoul_.exit ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.gz
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @bdf_atol_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !40
  %i.b = icmp eq i8 %i.a, 45                      ; 2 uses
  %.010.idx = zext i1 %i.b to i64
  %.010 = getelementptr inbounds nuw i8, ptr %0, i64 %.010.idx ; 2 uses
  %i.c = load i8, ptr %.010, align 1, !tbaa !40   ; 3 uses
  %i.d = lshr i8 %i.c, 3
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40
  %i.h = zext i8 %i.g to i32
  %i.i = and i8 %i.c, 7
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = and i32 %i.k, %i.h
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi i8 [ %i.v, %bb.b ], [ %i.c, %bb.a ]
  %.0914 = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.11113 = phi ptr [ %i.u, %bb.b ], [ %.010, %bb.a ]
  %i.n = icmp slt i64 %.0914, 922337203685477579
  br i1 %i.n, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.o = mul nsw i64 %.0914, 10
  %i.p = sext i8 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr @a2i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %i.s = zext i8 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.11113, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40    ; 3 uses
  %i.w = lshr i8 %i.v, 3
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i8 %i.v, 7
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.aa
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 9223372036854775807, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.af = sub nsw i64 0, %.1
  %i.ag = select i1 %i.b, i64 %i.af, i64 %.1
  ret i64 %i.ag
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @by_encoding(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !106
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @bdf_parse_end_(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bdf_parse_bitmap_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !199  ; 2 uses
  %i.e = shl i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %1) ; 2 uses
  %.not32 = icmp eq i64 %spec.select, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164
  %i.j = mul i64 %i.g, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02531 = phi i64 [ %i.y, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.02630 = phi ptr [ %.1, %bb.d ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.02531
  %i.m = load i8, ptr %i.l, align 1, !tbaa !40
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 64
  %i.p = mul nuw nsw i32 %i.o, 9
  %i.q = lshr exact i32 %i.p, 6
  %i.r = add nuw nsw i32 %i.q, %i.n
  %5 = and i32 %i.r, 15                           ; 2 uses
  %i.s = and i64 %.02531, 1
  %.not29 = icmp eq i64 %i.s, 0
  br i1 %.not29, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.02630, i64 1
  %i.u = load i8, ptr %.02630, align 1, !tbaa !40
  %i.v = trunc nuw nsw i32 %5 to i8
  %i.w = or i8 %i.u, %i.v
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.tr = trunc nuw nsw i32 %5 to i8
  %i.x = shl nuw i8 %.tr, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  %.1 = phi ptr [ %.02630, %bb.c ], [ %i.t, %bb.b ]
  store i8 %storemerge, ptr %.02630, align 1, !tbaa !40
  %i.y = add nuw i64 %.02531, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %spec.select
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !204

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i64, ptr %i.f, align 8, !tbaa !201
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.z = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !193
  %i.ad = zext i16 %i.ac to i64
  %.not = icmp ult i64 %i.aa, %i.ad
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store ptr @bdf_parse_glyphs_, ptr %4, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret i32 0
}

declare void @ft_hash_str_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bdf_cmap_init(ptr nofree noundef captures(none) initializes((24, 40)) %0, ptr nofree readnone captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !210
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @bdf_cmap_done(ptr nofree noundef writeonly captures(none) initializes((24, 40)) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @bdf_cmap_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !208  ; 3 uses
  %.not48 = icmp eq i64 %i.d, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = lshr i64 %i.d, 1
  %i.f = zext i32 %1 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02747 = phi i64 [ %i.e, %.lr.ph ], [ %.1, %bb.c ] ; 4 uses
  %.02846 = phi i64 [ %i.d, %.lr.ph ], [ %.129, %bb.c ]
  %.03145 = phi i64 [ 0, %.lr.ph ], [ %.132, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02747 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !108  ; 3 uses
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !110
  %i.l = add i16 %i.k, 1
  %i.m = zext i16 %i.l to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.h, %i.f                  ; 2 uses
  %i.o = add i64 %.02747, 1
  %.132 = select i1 %i.n, i64 %.03145, i64 %i.o   ; 4 uses
  %.129 = select i1 %i.n, i64 %.02747, i64 %.02846 ; 4 uses
  %i.p = sub i64 %i.f, %i.h
  %i.q = add i64 %i.p, %.02747                    ; 3 uses
  %.not = icmp uge i64 %i.q, %.129
  %i.r = icmp ult i64 %i.q, %.132
  %or.cond = or i1 %.not, %i.r
  %i.s = add i64 %.132, %.129
  %i.t = lshr i64 %i.s, 1
  %.1 = select i1 %or.cond, i64 %i.t, i64 %i.q
  %i.u = icmp ult i64 %.132, %.129
  br i1 %i.u, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.236 = phi i32 [ %i.m, %.thread ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.236
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @bdf_cmap_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !28
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !208  ; 4 uses
  %.not68 = icmp eq i64 %i.g, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = lshr i64 %i.g, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03967 = phi i64 [ %.1, %bb.b ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %.04066 = phi i64 [ %.141, %bb.b ], [ %i.g, %.lr.ph.preheader ]
  %.04365 = phi i64 [ %.144, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.03967 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !108  ; 3 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !110
  %i.n = add i16 %i.m, 1
  br label %.thread59

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp ugt i64 %i.j, %i.e                  ; 2 uses
  %i.p = add i64 %.03967, 1
  %.144 = select i1 %i.o, i64 %.04365, i64 %i.p   ; 5 uses
  %.141 = select i1 %i.o, i64 %.03967, i64 %.04066 ; 4 uses
  %i.q = sub i64 %i.e, %i.j
  %i.r = add i64 %i.q, %.03967                    ; 3 uses
  %.not = icmp uge i64 %i.r, %.141
  %i.s = icmp ult i64 %i.r, %.144
  %or.cond = or i1 %.not, %i.s
  %i.t = add i64 %.144, %.141
  %i.u = lshr i64 %i.t, 1
  %.1 = select i1 %or.cond, i64 %i.u, i64 %i.r
  %i.v = icmp ult i64 %.144, %.141
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.043.lcssa = phi i64 [ 0, %bb.a ], [ %.144, %bb.b ] ; 2 uses
  %i.w = icmp ult i64 %.043.lcssa, %i.g
  br i1 %i.w, label %bb.c, label %.thread59

bb.c:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.043.lcssa ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !108
  %.fr = freeze i64 %i.y                          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !110
  %i.ab = add i16 %i.aa, 1
  %i.ac = icmp ugt i64 %.fr, 4294967295
  %i.ad = trunc nuw i64 %.fr to i32
  %spec.select = select i1 %i.ac, i32 0, i32 %i.ad
  br label %.thread59

.thread59:                                        ; preds = %._crit_edge, %.thread, %bb.c
  %.24963 = phi i16 [ %i.ab, %bb.c ], [ 0, %._crit_edge ], [ %i.n, %.thread ]
  %i.ae = phi i32 [ %spec.select, %bb.c ], [ 0, %._crit_edge ], [ %i.d, %.thread ]
  store i32 %i.ae, ptr %1, align 4, !tbaa !28
  %i.af = zext i16 %.24963 to i32
  ret i32 %i.af
}

declare hidden void @ft_glyphslot_set_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden void @FT_Select_Metrics(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
