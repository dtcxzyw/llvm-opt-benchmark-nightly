Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_compress_forceExtDict:bb.a
  %.neg = mul i64 %i.vt, -255
  %i.vv = add i64 %.neg, %i.vs
  %i.vw = getelementptr i8, ptr %.12.i56, i64 %i.vt
  %scevgep636 = getelementptr i8, ptr %i.vw, i64 2
  br label %._crit_edge492

._crit_edge492:                                   ; preds = %.lr.ph491.preheader, %bb.dt
  %.0.i63.lcssa = phi i64 [ %i.vp, %bb.dt ], [ %i.vv, %.lr.ph491.preheader ]
  %.13.i64.lcssa = phi ptr [ %.13.i64487, %bb.dt ], [ %scevgep636, %.lr.ph491.preheader ] ; 2 uses
  %i.vx = trunc nuw i64 %.0.i63.lcssa to i8
  store i8 %i.vx, ptr %.13.i64.lcssa, align 1, !tbaa !18
  br label %LZ4_compress_generic_validated.exit97

bb.du:                                            ; preds = %.thread381
  %.0400.tr.i58 = trunc nuw nsw i64 %i.vn to i8
  %i.vy = shl nuw i8 %.0400.tr.i58, 4
  store i8 %i.vy, ptr %.12.i56, align 1, !tbaa !18
  br label %LZ4_compress_generic_validated.exit97

LZ4_compress_generic_validated.exit97:            ; preds = %._crit_edge492, %bb.du
  %.13.pn.i59 = phi ptr [ %.13.i64.lcssa, %._crit_edge492 ], [ %.12.i56, %bb.du ]
  %.14.i60 = getelementptr inbounds nuw i8, ptr %.13.pn.i59, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i60, ptr align 1 %.3478.i55, i64 %i.vn, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %.14.i60, i64 %i.vn
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = ptrtoint ptr %2 to i64
  %i.wc = sub i64 %i.wa, %i.wb
  %i.wd = trunc i64 %i.wc to i32
  br label %LZ4_compress_generic.exit20

LZ4_compress_generic.exit20:                      ; preds = %LZ4_compress_generic_validated.exit97, %bb.bn, %bb.bl, %LZ4_compress_generic_validated.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ %i.lc, %LZ4_compress_generic_validated.exit ], [ 0, %bb.b ], [ %i.wd, %LZ4_compress_generic_validated.exit97 ], [ 0, %bb.bl ], [ 1, %bb.bn ]
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.we, align 8, !tbaa !43
  store i32 %3, ptr %i.w, align 8, !tbaa !24
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65537) i32 @LZ4_saveDict(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.b) ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.j, align 8, !tbaa !43
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !24
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %3 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !18
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = icmp samesign ult i32 %3, 64
  br i1 %i.p, label %.preheader120, label %.preheader129

.preheader129:                                    ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader129
  %.0 = phi ptr [ %0, %.preheader129 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0377.i = phi ptr [ %1, %.preheader129 ], [ %.0377.i.be, %.backedge.backedge ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !18
  %i.x = zext i8 %i.w to i32                      ; 4 uses
  %i.y = lshr i32 %i.x, 4                         ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %i.aa = icmp eq i32 %i.y, 15
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.v, %i.r
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %i.ad = zext i8 %i.ac to i64
  %.not23.i = icmp eq i8 %i.ac, -1
  br i1 %.not23.i, label %.preheader127, label %read_variable_length.exit.thread61, !prof !30

.preheader127:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.ae, %bb.i ], [ %i.ab, %bb.h ] ; 2 uses
  %.0.i10 = phi i64 [ %i.ai, %bb.i ], [ 255, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.af = icmp ugt ptr %i.ae, %i.r
  br i1 %i.af, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !30

bb.i:                                             ; preds = %.preheader127
  %i.ag = load i8, ptr %.10, align 1, !tbaa !18   ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %.0.i10, %i.ah                  ; 3 uses
  %i.aj = icmp eq i8 %i.ag, -1
  br i1 %i.aj, label %.preheader127, label %read_variable_length.exit, !llvm.loop !4

read_variable_length.exit:                        ; preds = %bb.i
  %i.ak = icmp eq i64 %i.ai, -1
  br i1 %i.ak, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread61

read_variable_length.exit.thread61:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i65 = phi i64 [ %i.ai, %read_variable_length.exit ], [ %i.ad, %bb.h ]
  %.1164 = phi ptr [ %i.ae, %read_variable_length.exit ], [ %i.ab, %bb.h ] ; 5 uses
  %i.al = add i64 %.019.i65, 15                   ; 5 uses
  %i.am = ptrtoint ptr %.0377.i to i64
  %i.an = xor i64 %i.am, -1
  %i.ao = icmp ugt i64 %i.al, %i.an
  %i.ap = ptrtoint ptr %.1164 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.al, %i.aq
  %or.cond = or i1 %i.ao, %i.ar
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !46

bb.j:                                             ; preds = %read_variable_length.exit.thread61
  %i.as = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.al ; 3 uses
  %i.at = icmp ugt ptr %i.as, %i.h
  %i.au = getelementptr inbounds nuw i8, ptr %.1164, i64 %i.al ; 2 uses
  %i.av = icmp ugt ptr %i.au, %i.s
  %or.cond449.i = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader126

.preheader126:                                    ; preds = %bb.j, %.preheader126
  %.011.i = phi ptr [ %i.ay, %.preheader126 ], [ %.0377.i, %bb.j ] ; 3 uses
  %.0.i24 = phi ptr [ %i.az, %.preheader126 ], [ %.1164, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i24, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i24, i64 32
  %i.ba = icmp ult ptr %i.ay, %i.as
  br i1 %i.ba, label %.preheader126, label %LZ4_wildCopy32.exit.thread70, !llvm.loop !5

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.v, %i.q
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0377.i, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.bc = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.z
  br label %LZ4_wildCopy32.exit.thread70

LZ4_wildCopy32.exit.thread70:                     ; preds = %.preheader126, %bb.l
  %.1 = phi ptr [ %i.bb, %bb.l ], [ %i.au, %.preheader126 ] ; 3 uses
  %.2379.i = phi ptr [ %i.bc, %bb.l ], [ %i.as, %.preheader126 ] ; 25 uses
  %.val31 = load i16, ptr %.1, align 1, !tbaa !33 ; 5 uses
  %i.bd = zext i16 %.val31 to i64                 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds i8, ptr %.2379.i, i64 %i.bf ; 18 uses
  %i.bh = and i32 %i.x, 15                        ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 15
  br i1 %i.bi, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread70
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bk = icmp ugt ptr %i.bj, %i.u
  br i1 %i.bk, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.bl = load i8, ptr %i.be, align 1, !tbaa !18  ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %.not23.i11 = icmp eq i8 %i.bl, -1
  br i1 %.not23.i11, label %.preheader124, label %read_variable_length.exit14.thread78, !prof !30

.preheader124:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bn, %bb.o ], [ %i.bj, %bb.n ] ; 2 uses
  %.0.i13 = phi i64 [ %i.br, %bb.o ], [ 255, %bb.n ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bo = icmp ugt ptr %i.bn, %i.u
  br i1 %i.bo, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !30

bb.o:                                             ; preds = %.preheader124
  %i.bp = load i8, ptr %.12, align 1, !tbaa !18   ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %.0.i13, %i.bq                  ; 3 uses
  %i.bs = icmp eq i8 %i.bp, -1
  br i1 %i.bs, label %.preheader124, label %read_variable_length.exit14, !llvm.loop !4

read_variable_length.exit14:                      ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, -1
  br i1 %i.bt, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit14.thread78

read_variable_length.exit14.thread78:             ; preds = %bb.n, %read_variable_length.exit14
  %.019.i1282 = phi i64 [ %i.br, %read_variable_length.exit14 ], [ %i.bm, %bb.n ]
  %.1381 = phi ptr [ %i.bn, %read_variable_length.exit14 ], [ %i.bj, %bb.n ] ; 3 uses
  %i.bu = add i64 %.019.i1282, 19                 ; 4 uses
  %i.bv = ptrtoint ptr %.2379.i to i64
  %i.bw = xor i64 %i.bv, -1
  %i.bx = icmp ugt i64 %i.bu, %i.bw
  br i1 %i.bx, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !30

bb.p:                                             ; preds = %read_variable_length.exit14.thread78
  %i.by = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %i.bu
  %.not435.i = icmp ult ptr %i.by, %i.t
  br i1 %.not435.i, label %.thread86, label %.loopexit132

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread70
  %narrow.i = add nuw nsw i32 %i.bh, 4
  %i.bz = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %i.bz ; 2 uses
  %.not434.i = icmp ult ptr %i.ca, %i.t
  br i1 %.not434.i, label %bb.r, label %.loopexit132

bb.r:                                             ; preds = %bb.q
  %i.cb = icmp uge ptr %i.bg, %1
  %i.cc = icmp ugt i16 %.val31, 7
  %or.cond5.i = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread86

bb.s:                                             ; preds = %bb.r
  %i.cd = load i64, ptr %i.bg, align 1
  store i64 %i.cd, ptr %.2379.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cg = load i64, ptr %i.cf, align 1
  store i64 %i.cg, ptr %i.ce, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2379.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cj = load i16, ptr %i.ci, align 1
  store i16 %i.cj, ptr %i.ch, align 1
  br label %.backedge.backedge

.thread86:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.be, %bb.r ], [ %.1381, %bb.p ] ; 6 uses
  %.2362.i = phi i64 [ %i.bz, %bb.r ], [ %i.bu, %bb.p ] ; 3 uses
  %i.ck = icmp ult ptr %i.bg, %1
  br i1 %i.ck, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !47

bb.t:                                             ; preds = %.thread86
  %i.cl = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %.2362.i ; 8 uses
  %i.cm = icmp ult i16 %.val31, 16
  br i1 %i.cm, label %bb.u, label %.preheader122, !prof !30

bb.u:                                             ; preds = %bb.t
  switch i16 %.val31, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cn = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.co, 16843009
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bg, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bg, align 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.cp = icmp samesign ult i16 %.val31, 8
  br i1 %i.cp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2379.i, align 1, !tbaa !27
  %i.cq = load i8, ptr %i.bg, align 1, !tbaa !18
  store i8 %i.cq, ptr %.2379.i, align 1, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.2379.i, i64 1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.2379.i, i64 2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.2379.i, i64 3
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !18
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bd
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2379.i, i64 4
  %i.df = load i32, ptr %i.dd, align 1
  store i32 %i.df, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bd
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !40
  %i.di = sext i32 %i.dh to i64
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dd, i64 %i.dj
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dl = load i64, ptr %i.bg, align 1
  store i64 %i.dl, ptr %.2379.i, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.023.i = phi ptr [ %i.dk, %bb.z ], [ %i.dm, %bb.aa ]
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.09.i.i = phi ptr [ %.0.i29, %bb.ab ], [ %i.do, %bb.ac ] ; 2 uses
  %.0.i.i = phi ptr [ %.023.i, %bb.ab ], [ %i.dp, %bb.ac ] ; 2 uses
  %i.dn = load i64, ptr %.0.i.i, align 1
  store i64 %i.dn, ptr %.09.i.i, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.dq = icmp ult ptr %i.do, %i.cl
  br i1 %i.dq, label %bb.ac, label %.backedge.backedge, !llvm.loop !1

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2379.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2379.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.dr = icmp samesign ugt i64 %.2362.i, 8
  br i1 %i.dr, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %.0.i28177 = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8 ; 4 uses
  %4 = ptrtoaddr ptr %.2379.i to i64              ; 3 uses
  %i.ds = add i64 %.2362.i, %4
  %i.dt = add i64 %4, 16
  %i.du = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dt)
  %i.dv = add i64 %i.du, -9
  %i.dw = sub i64 %i.dv, %4                       ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dw, 24
  br i1 %min.iters.check, label %.lr.ph.preheader469, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dy, 4611686018427387900     ; 3 uses
  %i.dz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ea = getelementptr i8, ptr %.0.i28177, i64 %i.dz
  %i.eb = getelementptr i8, ptr %.2379.i, i64 %i.dz
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.ec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i28177, i64 %i.ed
  %i.ee = getelementptr i8, ptr %.0.i28177, i64 %i.ed
  %next.gep409 = getelementptr i8, ptr %i.ee, i64 16
  store <4 x i32> %i.ec, ptr %next.gep, align 1
  store <4 x i32> %i.ec, ptr %next.gep409, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %.lr.ph.preheader469

.backedge.backedge:                               ; preds = %.preheader122, %.lr.ph, %bb.ac, %middle.block, %bb.ad, %bb.s
  %.0.be = phi ptr [ %i.be, %bb.s ], [ %.8, %bb.ac ], [ %.8, %bb.ad ], [ %.8, %middle.block ], [ %.8, %.lr.ph ], [ %.8, %.preheader122 ]
  %.0377.i.be = phi ptr [ %i.ca, %bb.s ], [ %i.cl, %bb.ac ], [ %i.cl, %bb.ad ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph ], [ %i.cl, %.preheader122 ]
  br label %.backedge

.lr.ph.preheader469:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i28179.ph = phi ptr [ %.0.i28177, %.lr.ph.preheader ], [ %i.ea, %middle.block ]
  %.pn.i178.ph = phi ptr [ %.2379.i, %.lr.ph.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader469, %.lr.ph
  %.0.i28179 = phi ptr [ %.0.i28, %.lr.ph ], [ %.0.i28179.ph, %.lr.ph.preheader469 ] ; 3 uses
  %.pn.i178 = phi ptr [ %.0.i28179, %.lr.ph ], [ %.pn.i178.ph, %.lr.ph.preheader469 ]
  store i32 %.sroa.9.0.i, ptr %.0.i28179, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i178, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i28 = getelementptr inbounds nuw i8, ptr %.0.i28179, i64 8 ; 2 uses
  %i.eg = icmp ult ptr %.0.i28, %i.cl
  br i1 %i.eg, label %.lr.ph, label %.backedge.backedge, !llvm.loop !61

.preheader122:                                    ; preds = %bb.t, %.preheader122
  %.011.i25 = phi ptr [ %i.ej, %.preheader122 ], [ %.2379.i, %bb.t ] ; 3 uses
  %.0.i26 = phi ptr [ %i.ek, %.preheader122 ], [ %i.bg, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i25, ptr noundef nonnull align 1 dereferenceable(16) %.0.i26, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.011.i25, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(16) %i.ei, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.011.i25, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.el = icmp ult ptr %i.ej, %i.cl
  br i1 %i.el, label %.preheader122, label %.backedge.backedge, !llvm.loop !5

.lr.ph182:                                        ; preds = %.preheader120, %bb.af
  %.in = phi i32 [ %i.fo, %bb.af ], [ %i.kn, %.preheader120 ]
  %i.em = phi i32 [ %i.fn, %bb.af ], [ %i.km, %.preheader120 ] ; 2 uses
  %i.en = phi ptr [ %i.fl, %bb.af ], [ %i.kk, %.preheader120 ] ; 4 uses
  %.6383.i181 = phi ptr [ %i.fk, %bb.af ], [ %.6383.i.ph, %.preheader120 ] ; 4 uses
  %i.eo = zext nneg i32 %.in to i64               ; 3 uses
  %i.ep = icmp ult ptr %i.en, %i.g
  %i.eq = icmp ule ptr %.6383.i181, %i.h
  %i.er = and i1 %i.ep, %i.eq
  br i1 %i.er, label %bb.ae, label %LZ4_wildCopy32.exit, !prof !34

bb.ae:                                            ; preds = %.lr.ph182
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6383.i181, ptr noundef nonnull align 1 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.6383.i181, i64 %i.eo ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo ; 3 uses
  %i.eu = and i32 %i.em, 15                       ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %.val = load i16, ptr %i.et, align 1, !tbaa !33 ; 2 uses
  %i.ew = zext i16 %.val to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 2 ; 3 uses
  %i.ey = sub nsw i64 0, %i.ew
  %i.ez = getelementptr inbounds i8, ptr %i.es, i64 %i.ey ; 5 uses
  %i.fa = icmp eq i32 %i.eu, 15
  %i.fb = icmp ult i16 %.val, 8
  %or.cond3.i.not113 = select i1 %i.fa, i1 true, i1 %i.fb
  %.not442.i = icmp ult ptr %i.ez, %1
  %or.cond108 = select i1 %or.cond3.i.not113, i1 true, i1 %.not442.i
  br i1 %or.cond108, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr %i.ez, align 1
  store i64 %i.fc, ptr %i.es, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.ff = load i64, ptr %i.fe, align 1
  store i64 %i.ff, ptr %i.fd, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fi = load i16, ptr %i.fh, align 1
  store i16 %i.fi, ptr %i.fg, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 3 ; 2 uses
  %i.fm = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.fn = zext i8 %i.fm to i32                    ; 3 uses
  %i.fo = lshr i32 %i.fn, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.fo, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph182

._crit_edge:                                      ; preds = %bb.af, %.preheader120
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader120 ], [ %i.ex, %bb.af ]
  %.6383.i.lcssa = phi ptr [ %.6383.i.ph, %.preheader120 ], [ %i.fk, %bb.af ] ; 2 uses
  %.lcssa143 = phi ptr [ %i.kk, %.preheader120 ], [ %i.fl, %bb.af ] ; 3 uses
  %.lcssa140 = phi i32 [ %i.km, %.preheader120 ], [ %i.fn, %bb.af ]
  %i.fp = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not22.i15 = icmp ult ptr %.lcssa143, %i.fp
  br i1 %.not22.i15, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.ag:                                            ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.fr = load i8, ptr %.lcssa143, align 1, !tbaa !18 ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %.not23.i17 = icmp eq i8 %i.fr, -1
  br i1 %.not23.i17, label %.preheader119, label %read_variable_length.exit19.thread93, !prof !30

.preheader119:                                    ; preds = %bb.ag, %bb.ah
  %.14 = phi ptr [ %i.ft, %bb.ah ], [ %i.fq, %bb.ag ] ; 2 uses
  %.0.i18 = phi i64 [ %i.fx, %bb.ah ], [ 255, %bb.ag ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.fu = icmp ugt ptr %i.ft, %i.fp
  br i1 %i.fu, label %LZ4_wildCopy32.exit.thread, label %bb.ah, !prof !30

bb.ah:                                            ; preds = %.preheader119
  %i.fv = load i8, ptr %.14, align 1, !tbaa !18   ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = add i64 %.0.i18, %i.fw                  ; 3 uses
  %i.fy = icmp eq i8 %i.fv, -1
  br i1 %i.fy, label %.preheader119, label %read_variable_length.exit19, !llvm.loop !4

read_variable_length.exit19:                      ; preds = %bb.ah
  %i.fz = icmp eq i64 %i.fx, -1
  br i1 %i.fz, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit19.thread93

read_variable_length.exit19.thread93:             ; preds = %bb.ag, %read_variable_length.exit19
  %.019.i1697 = phi i64 [ %i.fx, %read_variable_length.exit19 ], [ %i.fs, %bb.ag ]
  %.1596 = phi ptr [ %i.ft, %read_variable_length.exit19 ], [ %i.fq, %bb.ag ] ; 3 uses
  %i.ga = add i64 %.019.i1697, 15                 ; 3 uses
  %i.gb = ptrtoint ptr %.6383.i.lcssa to i64
  %i.gc = xor i64 %i.gb, -1
  %i.gd = icmp ugt i64 %i.ga, %i.gc
  %i.ge = ptrtoint ptr %.1596 to i64
  %i.gf = xor i64 %i.ge, -1
  %i.gg = icmp ugt i64 %i.ga, %i.gf
  %or.cond111 = or i1 %i.gd, %i.gg
  br i1 %or.cond111, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !46

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph182, %read_variable_length.exit19.thread93
  %.4 = phi ptr [ %.1596, %read_variable_length.exit19.thread93 ], [ %i.en, %.lr.ph182 ], [ %i.v, %bb.k ], [ %.1164, %bb.j ] ; 5 uses
  %.7384.i = phi ptr [ %.6383.i.lcssa, %read_variable_length.exit19.thread93 ], [ %.6383.i181, %.lr.ph182 ], [ %.0377.i, %bb.k ], [ %.0377.i, %bb.j ] ; 3 uses
  %.0366.i = phi i32 [ %.lcssa140, %read_variable_length.exit19.thread93 ], [ %i.em, %.lr.ph182 ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  %.5365.i = phi i64 [ %i.ga, %read_variable_length.exit19.thread93 ], [ %i.eo, %.lr.ph182 ], [ %i.z, %bb.k ], [ %i.al, %bb.j ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.5365.i ; 6 uses
  %i.gi = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gj = icmp ugt ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gm = icmp ugt ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.aj, label %.preheader118

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %.not440.i = icmp ne ptr %i.gn, %i.d
  %i.go = icmp ugt ptr %i.gh, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.go
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %.5365.i, i1 false)
  %i.gp = ptrtoint ptr %i.gh to i64
  %i.gq = sub i64 %i.gp, %i.o
  %i.gr = trunc i64 %i.gq to i32
  br label %LZ4_decompress_generic.exit

.preheader118:                                    ; preds = %bb.ai, %.preheader118
  %.09.i7 = phi ptr [ %i.gt, %.preheader118 ], [ %.7384.i, %bb.ai ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gu, %.preheader118 ], [ %.4, %bb.ai ] ; 2 uses
  %i.gs = load i64, ptr %.0.i8, align 1
  store i64 %i.gs, ptr %.09.i7, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gv = icmp ult ptr %i.gt, %i.gh
  br i1 %i.gv, label %.preheader118, label %LZ4_wildCopy8.exit9, !llvm.loop !1

LZ4_wildCopy8.exit9:                              ; preds = %.preheader118
  %.val30 = load i16, ptr %i.gk, align 1, !tbaa !33
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe:bb.a
  %i.jx = getelementptr i8, ptr %.4373.i, i64 %n.vec429
  %i.jy = getelementptr i8, ptr %.15.i, i64 %n.vec429
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index430 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 3 uses
  %next.gep431 = getelementptr i8, ptr %.4373.i, i64 %index430
  %next.gep432 = getelementptr i8, ptr %.15.i, i64 %index430
  %wide.load433 = load <8 x i8>, ptr %next.gep431, align 1, !tbaa !18
  store <8 x i8> %wide.load433, ptr %next.gep432, align 1, !tbaa !18
  %index.next434 = add nuw i64 %index430, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next434, %n.vec429
  br i1 %i.jz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.jo, %n.vec429
  br i1 %cmp.n435, label %.preheader120, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5374.i187.ph = phi ptr [ %.4373.i, %iter.check ], [ %.4373.i, %vector.memcheck ], [ %i.js, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  %.16.i186.ph = phi ptr [ %.15.i, %iter.check ], [ %.15.i, %vector.memcheck ], [ %i.jt, %vec.epilog.iter.check ], [ %i.jy, %vec.epilog.middle.block ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %.5374.i187 = phi ptr [ %i.ka, %.lr.ph189 ], [ %.5374.i187.ph, %.lr.ph189.preheader ] ; 2 uses
  %.16.i186 = phi ptr [ %i.kc, %.lr.ph189 ], [ %.16.i186.ph, %.lr.ph189.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.5374.i187, i64 1
  %i.kb = load i8, ptr %.5374.i187, align 1, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.16.i186, i64 1 ; 2 uses
  store i8 %i.kb, ptr %.16.i186, align 1, !tbaa !18
  %i.kd = icmp ult ptr %i.kc, %i.hv
  br i1 %i.kd, label %.lr.ph189, label %.preheader120, !llvm.loop !64

bb.aw:                                            ; preds = %bb.as
  %i.ke = load i64, ptr %.3372.i, align 1
  store i64 %i.ke, ptr %i.iv, align 1
  %i.kf = icmp ugt i64 %.11.i, 16
  br i1 %i.kf, label %bb.ax, label %.preheader120

bb.ax:                                            ; preds = %bb.aw
  %i.kg = getelementptr inbounds nuw i8, ptr %.10387.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i4 = phi ptr [ %i.kg, %bb.ax ], [ %i.ki, %bb.ay ] ; 2 uses
  %.3372.i.pn = phi ptr [ %.3372.i, %bb.ax ], [ %.0.i5, %bb.ay ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3372.i.pn, i64 8 ; 2 uses
  %i.kh = load i64, ptr %.0.i5, align 1
  store i64 %i.kh, ptr %.09.i4, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.kj = icmp ult ptr %i.ki, %i.hv
  br i1 %i.kj, label %bb.ay, label %.preheader120, !llvm.loop !1

.preheader120:                                    ; preds = %bb.ay, %.lr.ph189, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block425, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph189 ], [ %.2, %middle.block425 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %bb.ay ] ; 3 uses
  %.6383.i.ph = phi ptr [ %1, %bb.f ], [ %i.hv, %.lr.ph189 ], [ %i.hv, %middle.block425 ], [ %i.hv, %vec.epilog.middle.block ], [ %i.hv, %bb.aw ], [ %i.hv, %bb.av ], [ %i.hv, %bb.ay ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kl = load i8, ptr %.3.ph, align 1, !tbaa !18
  %i.km = zext i8 %i.kl to i32                    ; 3 uses
  %i.kn = lshr i32 %i.km, 4                       ; 2 uses
  %cond.i180 = icmp eq i32 %i.kn, 15
  br i1 %cond.i180, label %._crit_edge, label %.lr.ph182

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit14, %read_variable_length.exit14.thread78, %bb.g, %read_variable_length.exit.thread61, %read_variable_length.exit, %.thread86, %.preheader127, %.preheader124, %.preheader119, %.preheader117, %bb.al, %._crit_edge, %read_variable_length.exit19, %read_variable_length.exit19.thread93, %bb.at, %.loopexit132, %read_variable_length.exit23, %bb.aj
  %.7 = phi ptr [ %.4, %bb.aj ], [ %.2, %.loopexit132 ], [ %.2, %bb.at ], [ %.17, %read_variable_length.exit23 ], [ %i.hi, %.preheader117 ], [ %i.ft, %read_variable_length.exit19 ], [ %i.bn, %.preheader124 ], [ %.1596, %read_variable_length.exit19.thread93 ], [ %.lcssa143, %._crit_edge ], [ %i.ae, %.preheader127 ], [ %i.ft, %.preheader119 ], [ %i.he, %bb.al ], [ %i.bn, %read_variable_length.exit14 ], [ %.1381, %read_variable_length.exit14.thread78 ], [ %i.v, %bb.g ], [ %.1164, %read_variable_length.exit.thread61 ], [ %i.ae, %read_variable_length.exit ], [ %i.bj, %bb.m ], [ %.8, %.thread86 ]
  %i.ko = ptrtoint ptr %.7 to i64
  %i.kp = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.kp, %i.ko
  %i.kq = trunc i64 %.neg.i to i32
  %i.kr = add nsw i32 %i.kq, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1391.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.gr, %bb.ak ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.kr, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1391.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 9 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %LZ4_decompress_generic.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %LZ4_decompress_generic.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = icmp samesign ult i32 %i.a, 64
  br i1 %i.n, label %.preheader127, label %.preheader137

.preheader137:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader137
  %.0 = phi ptr [ %0, %.preheader137 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0377.i = phi ptr [ %1, %.preheader137 ], [ %.0377.i.be, %.backedge.backedge ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.u = load i8, ptr %.0, align 1, !tbaa !18
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = icmp eq i32 %i.w, 15
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.t, %i.p
  br i1 %.not22.i, label %bb.f, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %.not23.i = icmp eq i8 %i.aa, -1
  br i1 %.not23.i, label %.preheader135, label %read_variable_length.exit.thread65, !prof !30

.preheader135:                                    ; preds = %bb.f, %bb.g
  %.11 = phi ptr [ %i.ac, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %.0.i14 = phi i64 [ %i.ag, %bb.g ], [ 255, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 5 uses
  %i.ad = icmp ugt ptr %i.ac, %i.p
  br i1 %i.ad, label %LZ4_wildCopy32.exit.thread, label %bb.g, !prof !30

bb.g:                                             ; preds = %.preheader135
  %i.ae = load i8, ptr %.11, align 1, !tbaa !18   ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %.0.i14, %i.af                  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, -1
  br i1 %i.ah, label %.preheader135, label %read_variable_length.exit, !llvm.loop !4

read_variable_length.exit:                        ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ag, -1
  br i1 %i.ai, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread65

read_variable_length.exit.thread65:               ; preds = %bb.f, %read_variable_length.exit
  %.019.i69 = phi i64 [ %i.ag, %read_variable_length.exit ], [ %i.ab, %bb.f ]
  %.1268 = phi ptr [ %i.ac, %read_variable_length.exit ], [ %i.z, %bb.f ] ; 5 uses
  %i.aj = add i64 %.019.i69, 15                   ; 5 uses
  %i.ak = ptrtoint ptr %.0377.i to i64
  %i.al = xor i64 %i.ak, -1
  %i.am = icmp ugt i64 %i.aj, %i.al
  %i.an = ptrtoint ptr %.1268 to i64
  %i.ao = xor i64 %i.an, -1
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  %or.cond = or i1 %i.am, %i.ap
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.h, !prof !46

bb.h:                                             ; preds = %read_variable_length.exit.thread65
  %i.aq = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.aj ; 3 uses
  %i.ar = icmp ugt ptr %i.aq, %i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.1268, i64 %i.aj ; 2 uses
  %i.at = icmp ugt ptr %i.as, %i.q
  %or.cond449.i = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader134

.preheader134:                                    ; preds = %bb.h, %.preheader134
  %.011.i = phi ptr [ %i.aw, %.preheader134 ], [ %.0377.i, %bb.h ] ; 3 uses
  %.0.i28 = phi ptr [ %i.ax, %.preheader134 ], [ %.1268, %bb.h ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i28, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.au, ptr noundef nonnull align 1 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i28, i64 32
  %i.ay = icmp ult ptr %i.aw, %i.aq
  br i1 %i.ay, label %.preheader134, label %LZ4_wildCopy32.exit.thread74, !llvm.loop !5

bb.i:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.t, %i.o
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0377.i, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.ba = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.x
  br label %LZ4_wildCopy32.exit.thread74

LZ4_wildCopy32.exit.thread74:                     ; preds = %.preheader134, %bb.j
  %.1 = phi ptr [ %i.az, %bb.j ], [ %i.as, %.preheader134 ] ; 3 uses
  %.2379.i = phi ptr [ %i.ba, %bb.j ], [ %i.aq, %.preheader134 ] ; 25 uses
  %.val35 = load i16, ptr %.1, align 1, !tbaa !33 ; 5 uses
  %i.bb = zext i16 %.val35 to i64                 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds i8, ptr %.2379.i, i64 %i.bd ; 18 uses
  %i.bf = and i32 %i.v, 15                        ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 15
  br i1 %i.bg, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread74
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bi = icmp ugt ptr %i.bh, %i.s
  br i1 %i.bi, label %LZ4_wildCopy32.exit.thread, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !18  ; 2 uses
  %i.bk = zext i8 %i.bj to i64
  %.not23.i15 = icmp eq i8 %i.bj, -1
  br i1 %.not23.i15, label %.preheader132, label %read_variable_length.exit18.thread82, !prof !30

.preheader132:                                    ; preds = %bb.l, %bb.m
  %.13 = phi ptr [ %i.bl, %bb.m ], [ %i.bh, %bb.l ] ; 2 uses
  %.0.i17 = phi i64 [ %i.bp, %bb.m ], [ 255, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.13, i64 1 ; 5 uses
  %i.bm = icmp ugt ptr %i.bl, %i.s
  br i1 %i.bm, label %LZ4_wildCopy32.exit.thread, label %bb.m, !prof !30

bb.m:                                             ; preds = %.preheader132
  %i.bn = load i8, ptr %.13, align 1, !tbaa !18   ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = add i64 %.0.i17, %i.bo                  ; 3 uses
  %i.bq = icmp eq i8 %i.bn, -1
  br i1 %i.bq, label %.preheader132, label %read_variable_length.exit18, !llvm.loop !4

read_variable_length.exit18:                      ; preds = %bb.m
  %i.br = icmp eq i64 %i.bp, -1
  br i1 %i.br, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit18.thread82

read_variable_length.exit18.thread82:             ; preds = %bb.l, %read_variable_length.exit18
  %.019.i1686 = phi i64 [ %i.bp, %read_variable_length.exit18 ], [ %i.bk, %bb.l ]
  %.1485 = phi ptr [ %i.bl, %read_variable_length.exit18 ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bs = add i64 %.019.i1686, 19                 ; 4 uses
  %i.bt = ptrtoint ptr %.2379.i to i64
  %i.bu = xor i64 %i.bt, -1
  %i.bv = icmp ugt i64 %i.bs, %i.bu
  br i1 %i.bv, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !30

bb.n:                                             ; preds = %read_variable_length.exit18.thread82
  %i.bw = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %i.bs
  %.not435.i = icmp ult ptr %i.bw, %i.r
  br i1 %.not435.i, label %.thread90, label %.loopexit140

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread74
  %narrow.i = add nuw nsw i32 %i.bf, 4
  %i.bx = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %i.bx ; 2 uses
  %.not434.i = icmp ult ptr %i.by, %i.r
  br i1 %.not434.i, label %bb.p, label %.loopexit140

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp uge ptr %i.be, %1
  %i.ca = icmp ugt i16 %.val35, 7
  %or.cond5.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread90

bb.q:                                             ; preds = %bb.p
  %i.cb = load i64, ptr %i.be, align 1
  store i64 %i.cb, ptr %.2379.i, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ce = load i64, ptr %i.cd, align 1
  store i64 %i.ce, ptr %i.cc, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.2379.i, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ch = load i16, ptr %i.cg, align 1
  store i16 %i.ch, ptr %i.cf, align 1
  br label %.backedge.backedge

.thread90:                                        ; preds = %bb.n, %bb.p
  %.9 = phi ptr [ %i.bc, %bb.p ], [ %.1485, %bb.n ] ; 6 uses
  %.2362.i = phi i64 [ %i.bx, %bb.p ], [ %i.bs, %bb.n ] ; 3 uses
  %i.ci = icmp ult ptr %i.be, %1
  br i1 %i.ci, label %LZ4_wildCopy32.exit.thread, label %bb.r, !prof !47

bb.r:                                             ; preds = %.thread90
  %i.cj = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %.2362.i ; 8 uses
  %i.ck = icmp ult i16 %.val35, 16
  br i1 %i.ck, label %bb.s, label %.preheader130, !prof !30

bb.s:                                             ; preds = %bb.r
  switch i16 %.val35, label %bb.w [
    i16 1, label %bb.t
    i16 2, label %bb.u
    i16 4, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cl = load i8, ptr %i.be, align 1, !tbaa !18
  %i.cm = zext i8 %i.cl to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cm, 16843009
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload9.i = load i16, ptr %i.be, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ab

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.copyload2.i = load i32, ptr %i.be, align 1
  br label %bb.ab

bb.w:                                             ; preds = %bb.s
  %i.cn = icmp samesign ult i16 %.val35, 8
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %.2379.i, align 1, !tbaa !27
  %i.co = load i8, ptr %i.be, align 1, !tbaa !18
  store i8 %i.co, ptr %.2379.i, align 1, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.2379.i, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.2379.i, i64 2
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.2379.i, i64 3
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !18
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bb
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !40
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2379.i, i64 4
  %i.dd = load i32, ptr %i.db, align 1
  store i32 %i.dd, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bb
  %i.df = load i32, ptr %i.de, align 4, !tbaa !40
  %i.dg = sext i32 %i.df to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.db, i64 %i.dh
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dj = load i64, ptr %i.be, align 1
  store i64 %i.dj, ptr %.2379.i, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.023.i = phi ptr [ %i.di, %bb.x ], [ %i.dk, %bb.y ]
  %.0.i33 = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.09.i.i = phi ptr [ %.0.i33, %bb.z ], [ %i.dm, %bb.aa ] ; 2 uses
  %.0.i.i = phi ptr [ %.023.i, %bb.z ], [ %i.dn, %bb.aa ] ; 2 uses
  %i.dl = load i64, ptr %.0.i.i, align 1
  store i64 %i.dl, ptr %.09.i.i, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.do = icmp ult ptr %i.dm, %i.cj
  br i1 %i.do, label %bb.aa, label %.backedge.backedge, !llvm.loop !1

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.t ], [ %.sroa.0.2.insert.insert.i, %bb.u ], [ %.sroa.0.0.copyload2.i, %bb.v ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2379.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2379.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.dp = icmp samesign ugt i64 %.2362.i, 8
  br i1 %i.dp, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ab
  %.0.i32185 = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8 ; 4 uses
  %5 = ptrtoaddr ptr %.2379.i to i64              ; 3 uses
  %i.dq = add i64 %.2362.i, %5
  %i.dr = add i64 %5, 16
  %i.ds = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  %i.dt = add i64 %i.ds, -9
  %i.du = sub i64 %i.dt, %5                       ; 2 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 24
  br i1 %min.iters.check, label %.lr.ph.preheader471, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dw, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %.0.i32185, i64 %i.dx
  %i.dz = getelementptr i8, ptr %.2379.i, i64 %i.dx
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.ea = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i32185, i64 %i.eb
  %i.ec = getelementptr i8, ptr %.0.i32185, i64 %i.eb
  %next.gep412 = getelementptr i8, ptr %i.ec, i64 16
  store <4 x i32> %i.ea, ptr %next.gep, align 1
  store <4 x i32> %i.ea, ptr %next.gep412, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %.lr.ph.preheader471

.backedge.backedge:                               ; preds = %.preheader130, %.lr.ph, %bb.aa, %middle.block, %bb.ab, %bb.q
  %.0.be = phi ptr [ %i.bc, %bb.q ], [ %.9, %bb.aa ], [ %.9, %bb.ab ], [ %.9, %middle.block ], [ %.9, %.lr.ph ], [ %.9, %.preheader130 ]
  %.0377.i.be = phi ptr [ %i.by, %bb.q ], [ %i.cj, %bb.aa ], [ %i.cj, %bb.ab ], [ %i.cj, %middle.block ], [ %i.cj, %.lr.ph ], [ %i.cj, %.preheader130 ]
  br label %.backedge

.lr.ph.preheader471:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i32187.ph = phi ptr [ %.0.i32185, %.lr.ph.preheader ], [ %i.dy, %middle.block ]
  %.pn.i186.ph = phi ptr [ %.2379.i, %.lr.ph.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader471, %.lr.ph
  %.0.i32187 = phi ptr [ %.0.i32, %.lr.ph ], [ %.0.i32187.ph, %.lr.ph.preheader471 ] ; 3 uses
  %.pn.i186 = phi ptr [ %.0.i32187, %.lr.ph ], [ %.pn.i186.ph, %.lr.ph.preheader471 ]
  store i32 %.sroa.9.0.i, ptr %.0.i32187, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i186, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i32 = getelementptr inbounds nuw i8, ptr %.0.i32187, i64 8 ; 2 uses
  %i.ee = icmp ult ptr %.0.i32, %i.cj
  br i1 %i.ee, label %.lr.ph, label %.backedge.backedge, !llvm.loop !66

.preheader130:                                    ; preds = %bb.r, %.preheader130
  %.011.i29 = phi ptr [ %i.eh, %.preheader130 ], [ %.2379.i, %bb.r ] ; 3 uses
  %.0.i30 = phi ptr [ %i.ei, %.preheader130 ], [ %i.be, %bb.r ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i29, ptr noundef nonnull align 1 dereferenceable(16) %.0.i30, i64 16, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %.011.i29, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i30, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ef, ptr noundef nonnull align 1 dereferenceable(16) %i.eg, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.011.i29, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32
  %i.ej = icmp ult ptr %i.eh, %i.cj
  br i1 %i.ej, label %.preheader130, label %.backedge.backedge, !llvm.loop !5

.lr.ph190:                                        ; preds = %.preheader127, %bb.ad
  %.in = phi i32 [ %i.fm, %bb.ad ], [ %i.kl, %.preheader127 ]
  %i.ek = phi i32 [ %i.fl, %bb.ad ], [ %i.kk, %.preheader127 ] ; 2 uses
  %i.el = phi ptr [ %i.fj, %bb.ad ], [ %i.ki, %.preheader127 ] ; 4 uses
  %.6383.i189 = phi ptr [ %i.fi, %bb.ad ], [ %.6383.i.ph, %.preheader127 ] ; 4 uses
  %i.em = zext nneg i32 %.in to i64               ; 3 uses
  %i.en = icmp ult ptr %i.el, %i.h
  %i.eo = icmp ule ptr %.6383.i189, %i.i
  %i.ep = and i1 %i.en, %i.eo
  br i1 %i.ep, label %bb.ac, label %LZ4_wildCopy32.exit, !prof !34

bb.ac:                                            ; preds = %.lr.ph190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6383.i189, ptr noundef nonnull align 1 dereferenceable(16) %i.el, i64 16, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %.6383.i189, i64 %i.em ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em ; 3 uses
  %i.es = and i32 %i.ek, 15                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %.val = load i16, ptr %i.er, align 1, !tbaa !33 ; 2 uses
  %i.eu = zext i16 %.val to i64                   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 2 ; 3 uses
  %i.ew = sub nsw i64 0, %i.eu
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %i.ew ; 5 uses
  %i.ey = icmp eq i32 %i.es, 15
  %i.ez = icmp ult i16 %.val, 8
  %or.cond3.i.not121 = select i1 %i.ey, i1 true, i1 %i.ez
  %.not442.i = icmp ult ptr %i.ex, %1
  %or.cond116 = select i1 %or.cond3.i.not121, i1 true, i1 %.not442.i
  br i1 %or.cond116, label %.loopexit128, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load i64, ptr %i.ex, align 1
  store i64 %i.fa, ptr %i.eq, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fd = load i64, ptr %i.fc, align 1
  store i64 %i.fd, ptr %i.fb, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fg = load i16, ptr %i.ff, align 1
  store i16 %i.fg, ptr %i.fe, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 3 ; 2 uses
  %i.fk = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.fl = zext i8 %i.fk to i32                    ; 3 uses
  %i.fm = lshr i32 %i.fl, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.fm, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph190

._crit_edge:                                      ; preds = %bb.ad, %.preheader127
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader127 ], [ %i.ev, %bb.ad ]
  %.6383.i.lcssa = phi ptr [ %.6383.i.ph, %.preheader127 ], [ %i.fi, %bb.ad ] ; 2 uses
  %.lcssa151 = phi ptr [ %i.ki, %.preheader127 ], [ %i.fj, %bb.ad ] ; 3 uses
  %.lcssa148 = phi i32 [ %i.kk, %.preheader127 ], [ %i.fl, %bb.ad ]
  %i.fn = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not22.i19 = icmp ult ptr %.lcssa151, %i.fn
  br i1 %.not22.i19, label %bb.ae, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.ae:                                            ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.fp = load i8, ptr %.lcssa151, align 1, !tbaa !18 ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %.not23.i21 = icmp eq i8 %i.fp, -1
  br i1 %.not23.i21, label %.preheader126, label %read_variable_length.exit23.thread97, !prof !30

.preheader126:                                    ; preds = %bb.ae, %bb.af
  %.15 = phi ptr [ %i.fr, %bb.af ], [ %i.fo, %bb.ae ] ; 2 uses
  %.0.i22 = phi i64 [ %i.fv, %bb.af ], [ 255, %bb.ae ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.15, i64 1 ; 5 uses
  %i.fs = icmp ugt ptr %i.fr, %i.fn
  br i1 %i.fs, label %LZ4_wildCopy32.exit.thread, label %bb.af, !prof !30

bb.af:                                            ; preds = %.preheader126
  %i.ft = load i8, ptr %.15, align 1, !tbaa !18   ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %i.fv = add i64 %.0.i22, %i.fu                  ; 3 uses
  %i.fw = icmp eq i8 %i.ft, -1
  br i1 %i.fw, label %.preheader126, label %read_variable_length.exit23, !llvm.loop !4

read_variable_length.exit23:                      ; preds = %bb.af
  %i.fx = icmp eq i64 %i.fv, -1
  br i1 %i.fx, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit23.thread97

read_variable_length.exit23.thread97:             ; preds = %bb.ae, %read_variable_length.exit23
  %.019.i20101 = phi i64 [ %i.fv, %read_variable_length.exit23 ], [ %i.fq, %bb.ae ]
  %.16100 = phi ptr [ %i.fr, %read_variable_length.exit23 ], [ %i.fo, %bb.ae ] ; 3 uses
  %i.fy = add i64 %.019.i20101, 15                ; 3 uses
  %i.fz = ptrtoint ptr %.6383.i.lcssa to i64
  %i.ga = xor i64 %i.fz, -1
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  %i.gc = ptrtoint ptr %.16100 to i64
  %i.gd = xor i64 %i.gc, -1
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  %or.cond119 = or i1 %i.gb, %i.ge
  br i1 %or.cond119, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !46

LZ4_wildCopy32.exit:                              ; preds = %bb.h, %bb.i, %.lr.ph190, %read_variable_length.exit23.thread97
  %.4 = phi ptr [ %.16100, %read_variable_length.exit23.thread97 ], [ %i.el, %.lr.ph190 ], [ %i.t, %bb.i ], [ %.1268, %bb.h ] ; 7 uses
  %.7384.i = phi ptr [ %.6383.i.lcssa, %read_variable_length.exit23.thread97 ], [ %.6383.i189, %.lr.ph190 ], [ %.0377.i, %bb.i ], [ %.0377.i, %bb.h ] ; 8 uses
  %.0366.i = phi i32 [ %.lcssa148, %read_variable_length.exit23.thread97 ], [ %i.ek, %.lr.ph190 ], [ %i.v, %bb.i ], [ %i.v, %bb.h ]
  %.5365.i = phi i64 [ %i.fy, %read_variable_length.exit23.thread97 ], [ %i.em, %.lr.ph190 ], [ %i.x, %bb.i ], [ %i.aj, %bb.h ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.5365.i ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gh = icmp ugt ptr %i.gf, %i.gg
  br i1 %i.gh, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gk = icmp ugt ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.ah, label %.preheader125

bb.ah:                                            ; preds = %bb.ag, %LZ4_wildCopy32.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %i.gm = icmp ugt ptr %i.gl, %i.e                ; 2 uses
  %i.gn = ptrtoint ptr %i.e to i64
  %i.go = ptrtoint ptr %.4 to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %i.gp
  %.0375.i = select i1 %i.gm, ptr %i.gq, ptr %i.gf ; 2 uses
  %i.gr = icmp ugt ptr %.0375.i, %i.g
  br i1 %i.gr, label %.thread108, label %bb.ai

.thread108:                                       ; preds = %bb.ah
  %i.gs = ptrtoint ptr %.7384.i to i64
  %i.gt = sub i64 %i.l, %i.gs                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %i.gt, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %i.gt
  br label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %.6.i = select i1 %i.gm, i64 %i.gp, i64 %.5365.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %.6.i, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.4, i64 %.6.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.6.i ; 2 uses
  %i.gx = icmp ne ptr %.0375.i, %i.g
  %i.gy = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not441.i = icmp ult ptr %i.gv, %i.gy
end_hunk_1
begin_hunk_2_@LZ4_decompress_fast:bb.a
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i2, %i.m                     ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !6

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.n, %read_long_length_no_check.exit ], [ %i.e, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.q, %read_long_length_no_check.exit ], [ %i.i, %.thread ] ; 4 uses
  %i.r = ptrtoint ptr %.086.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.085.i
  br i1 %i.t, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %LZ4_decompress_unsafe_generic.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val = load i16, ptr %i.v, align 1, !tbaa !33  ; 2 uses
  %i.ac = zext i16 %.val to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.af = phi ptr [ %i.ai, %.preheader ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.aj, %.preheader ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i4, %i.ah                   ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !6

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5, %bb.e
  %.4 = phi ptr [ %i.ai, %read_long_length_no_check.exit5 ], [ %i.ad, %bb.e ]
  %.080.i = phi i64 [ %i.al, %read_long_length_no_check.exit5 ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.080.i, 4                      ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i = icmp ult i64 %i.ao, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i, -5
  %i.ar = add i16 %.val, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond66 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond66, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !18
  %wide.load60 = load <16 x i8>, ptr %i.au, align 1, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !18
  store <16 x i8> %wide.load60, ptr %i.aw, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %index62
  store <4 x i8> %wide.load63, ptr %i.az, align 1, !tbaa !18
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.am, %n.vec61
  br i1 %cmp.n65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.080.i, 3
  %i.bc = sub i64 %i.bb, %.0.i40.ph
  %xtraiter = and i64 %.080.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i40.prol = phi i64 [ %i.bg, %.lr.ph.prol ], [ %.0.i40.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !18
  %i.bg = add nuw i64 %.0.i40.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !72

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i40.unr = phi i64 [ %.0.i40.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i40 = phi i64 [ %i.bx, %.lr.ph ], [ %.0.i40.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !18
  %i.bl = add nuw i64 %.0.i40, 1                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !18
  %i.bp = add nuw i64 %.0.i40, 2                  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !18
  %i.bt = add nuw i64 %.0.i40, 3                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !18
  %i.bx = add nuw i64 %.0.i40, 4
  %exitcond.not.3 = icmp eq i64 %.0.i40, %.080.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.b, %bb.f, %._crit_edge, %bb.d, %bb.h
  %.595.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 9 uses
  %i.f = zext nneg i32 %3 to i64                  ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !18
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i32 %3, 64
  br i1 %i.o, label %.preheader134, label %.preheader143

.preheader143:                                    ; preds = %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %i.r = add nsw i64 %i.f, -32
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.t = add nsw i64 %i.f, -64                    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %4 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %invariant.op = add i64 %4, 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader143
  %.0 = phi ptr [ %0, %.preheader143 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0377.i.idx = phi i64 [ 0, %.preheader143 ], [ %.0377.i.idx.be, %.backedge.backedge ] ; 5 uses
  %.0377.i.ptr.ptr = getelementptr inbounds i8, ptr %1, i64 %.0377.i.idx ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !18
  %i.x = zext i8 %i.w to i32                      ; 4 uses
  %i.y = lshr i32 %i.x, 4                         ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %i.aa = icmp eq i32 %i.y, 15
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.v, %i.q
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %i.ad = zext i8 %i.ac to i64
  %.not23.i = icmp eq i8 %i.ac, -1
  br i1 %.not23.i, label %.preheader141, label %read_variable_length.exit.thread61, !prof !30

.preheader141:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.ae, %bb.i ], [ %i.ab, %bb.h ] ; 2 uses
  %.0.i10 = phi i64 [ %i.ai, %bb.i ], [ 255, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.af = icmp ugt ptr %i.ae, %i.q
  br i1 %i.af, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !30

bb.i:                                             ; preds = %.preheader141
  %i.ag = load i8, ptr %.10, align 1, !tbaa !18   ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %.0.i10, %i.ah                  ; 3 uses
  %i.aj = icmp eq i8 %i.ag, -1
  br i1 %i.aj, label %.preheader141, label %read_variable_length.exit, !llvm.loop !4

read_variable_length.exit:                        ; preds = %bb.i
  %i.ak = icmp eq i64 %i.ai, -1
  br i1 %i.ak, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread61

read_variable_length.exit.thread61:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i65 = phi i64 [ %i.ai, %read_variable_length.exit ], [ %i.ad, %bb.h ]
  %.1164 = phi ptr [ %i.ae, %read_variable_length.exit ], [ %i.ab, %bb.h ] ; 5 uses
  %i.al = add i64 %.019.i65, 15                   ; 5 uses
  %i.am = ptrtoint ptr %.0377.i.ptr.ptr to i64
  %i.an = xor i64 %i.am, -1
  %i.ao = icmp ugt i64 %i.al, %i.an
  %i.ap = ptrtoint ptr %.1164 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.al, %i.aq
  %or.cond = or i1 %i.ao, %i.ar
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !46

bb.j:                                             ; preds = %read_variable_length.exit.thread61
  %.0377.i.add = add nsw i64 %i.al, %.0377.i.idx  ; 3 uses
  %.ptr114 = getelementptr inbounds i8, ptr %1, i64 %.0377.i.add
  %i.as = icmp sgt i64 %.0377.i.add, %i.r
  %i.at = getelementptr inbounds nuw i8, ptr %.1164, i64 %i.al ; 2 uses
  %i.au = icmp ugt ptr %i.at, %i.s
  %or.cond449.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader140

.preheader140:                                    ; preds = %bb.j, %.preheader140
  %.011.i = phi ptr [ %i.ax, %.preheader140 ], [ %.0377.i.ptr.ptr, %bb.j ] ; 3 uses
  %.0.i24 = phi ptr [ %i.ay, %.preheader140 ], [ %.1164, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i24, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i24, i64 32
  %i.az = icmp ult ptr %i.ax, %.ptr114
  br i1 %i.az, label %.preheader140, label %LZ4_wildCopy32.exit.thread70, !llvm.loop !5

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.v, %i.p
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0377.i.ptr.ptr, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %.0377.i.add111 = add nsw i64 %.0377.i.idx, %i.z
  br label %LZ4_wildCopy32.exit.thread70

LZ4_wildCopy32.exit.thread70:                     ; preds = %.preheader140, %bb.l
  %.1 = phi ptr [ %i.ba, %bb.l ], [ %i.at, %.preheader140 ] ; 3 uses
  %.2379.i.idx = phi i64 [ %.0377.i.add111, %bb.l ], [ %.0377.i.add, %.preheader140 ] ; 10 uses
  %.2379.i.ptr.ptr = getelementptr inbounds i8, ptr %1, i64 %.2379.i.idx ; 18 uses
  %.val31 = load i16, ptr %.1, align 1, !tbaa !33 ; 5 uses
  %i.bb = zext i16 %.val31 to i64                 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %.2379.i.add = sub nsw i64 %.2379.i.idx, %i.bb  ; 4 uses
  %.ptr.ptr = getelementptr inbounds i8, ptr %1, i64 %.2379.i.add ; 14 uses
  %i.bd = and i32 %i.x, 15                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 15
  br i1 %i.be, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread70
  %i.bf = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bg = icmp ugt ptr %i.bf, %i.u
  br i1 %i.bg, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.bh = load i8, ptr %i.bc, align 1, !tbaa !18  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %.not23.i11 = icmp eq i8 %i.bh, -1
  br i1 %.not23.i11, label %.preheader138, label %read_variable_length.exit14.thread78, !prof !30

.preheader138:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bj, %bb.o ], [ %i.bf, %bb.n ] ; 2 uses
  %.0.i13 = phi i64 [ %i.bn, %bb.o ], [ 255, %bb.n ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bk = icmp ugt ptr %i.bj, %i.u
  br i1 %i.bk, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !30

bb.o:                                             ; preds = %.preheader138
  %i.bl = load i8, ptr %.12, align 1, !tbaa !18   ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = add i64 %.0.i13, %i.bm                  ; 3 uses
  %i.bo = icmp eq i8 %i.bl, -1
  br i1 %i.bo, label %.preheader138, label %read_variable_length.exit14, !llvm.loop !4

read_variable_length.exit14:                      ; preds = %bb.o
  %i.bp = icmp eq i64 %i.bn, -1
  br i1 %i.bp, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit14.thread78

read_variable_length.exit14.thread78:             ; preds = %bb.n, %read_variable_length.exit14
  %.019.i1282 = phi i64 [ %i.bn, %read_variable_length.exit14 ], [ %i.bi, %bb.n ]
  %.1381 = phi ptr [ %i.bj, %read_variable_length.exit14 ], [ %i.bf, %bb.n ] ; 3 uses
  %i.bq = add i64 %.019.i1282, 19                 ; 4 uses
  %i.br = ptrtoint ptr %.2379.i.ptr.ptr to i64
  %i.bs = xor i64 %i.br, -1
  %i.bt = icmp ugt i64 %i.bq, %i.bs
  br i1 %i.bt, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !30

bb.p:                                             ; preds = %read_variable_length.exit14.thread78
  %i.bu = add nsw i64 %.2379.i.idx, %i.bq
  %.not435.i = icmp slt i64 %i.bu, %i.t
  br i1 %.not435.i, label %.thread86, label %.loopexit146

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread70
  %narrow.i = add nuw nsw i32 %i.bd, 4
  %i.bv = zext nneg i32 %narrow.i to i64          ; 3 uses
  %.2379.i.add112 = add nsw i64 %.2379.i.idx, %i.bv ; 2 uses
  %.not434.i = icmp slt i64 %.2379.i.add112, %i.t
  br i1 %.not434.i, label %bb.r, label %.loopexit146

bb.r:                                             ; preds = %bb.q
  %.old4.i = icmp ugt i16 %.val31, 7
  br i1 %.old4.i, label %bb.s, label %.thread86

bb.s:                                             ; preds = %bb.r
  %i.bw = load i64, ptr %.ptr.ptr, align 1
  store i64 %i.bw, ptr %.2379.i.ptr.ptr, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  %i.bz = load i64, ptr %i.by, align 1
  store i64 %i.bz, ptr %i.bx, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 16
  %i.cc = load i16, ptr %i.cb, align 1
  store i16 %i.cc, ptr %i.ca, align 1
  br label %.backedge.backedge

.thread86:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.bc, %bb.r ], [ %.1381, %bb.p ] ; 6 uses
  %.2362.i = phi i64 [ %i.bv, %bb.r ], [ %i.bq, %bb.p ] ; 3 uses
  %i.cd = icmp slt i64 %.2379.i.add, -65536
  br i1 %i.cd, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !47

bb.t:                                             ; preds = %.thread86
  %.2379.i.add113 = add nsw i64 %.2362.i, %.2379.i.idx ; 6 uses
  %.ptr117 = getelementptr inbounds i8, ptr %1, i64 %.2379.i.add113 ; 3 uses
  %i.ce = icmp ult i16 %.val31, 16
  br i1 %i.ce, label %bb.u, label %.preheader136, !prof !30

bb.u:                                             ; preds = %bb.t
  switch i16 %.val31, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cf = load i8, ptr %.ptr.ptr, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cg, 16843009
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %.ptr.ptr, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %.ptr.ptr, align 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.ch = icmp samesign ult i16 %.val31, 8
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2379.i.ptr.ptr, align 1, !tbaa !27
  %i.ci = load i8, ptr %.ptr.ptr, align 1, !tbaa !18
  store i8 %i.ci, ptr %.2379.i.ptr.ptr, align 1, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 2
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 3
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !18
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bb
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 4
  %i.cx = load i32, ptr %i.cv, align 1
  store i32 %i.cx, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bb
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !40
  %i.da = sext i32 %i.cz to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cv, i64 %i.db
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dd = load i64, ptr %.ptr.ptr, align 1
  store i64 %i.dd, ptr %.2379.i.ptr.ptr, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.023.i = phi ptr [ %i.dc, %bb.z ], [ %i.de, %bb.aa ]
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.09.i.i = phi ptr [ %.0.i29, %bb.ab ], [ %i.dg, %bb.ac ] ; 2 uses
  %.0.i.i = phi ptr [ %.023.i, %bb.ab ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.df = load i64, ptr %.0.i.i, align 1
  store i64 %i.df, ptr %.09.i.i, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.di = icmp ult ptr %i.dg, %.ptr117
  br i1 %i.di, label %bb.ac, label %.backedge.backedge, !llvm.loop !1

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2379.i.ptr.ptr, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.dj = icmp sgt i64 %.2362.i, 8
  br i1 %i.dj, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %.0.i28190 = getelementptr inbounds nuw i8, ptr %.2379.i.ptr.ptr, i64 8 ; 4 uses
  %i.dk = add i64 %.2362.i, %.2379.i.idx
  %i.dl = add i64 %i.dk, %4
  %.reass = add i64 %.2379.i.idx, %invariant.op
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %.reass)
  %i.dn = add i64 %i.dm, -9
  %i.do = add i64 %.2379.i.idx, %4
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 24
  br i1 %min.iters.check, label %.lr.ph.preheader459, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dr, 4611686018427387900     ; 3 uses
  %i.ds = shl i64 %n.vec, 3                       ; 2 uses
  %i.dt = getelementptr i8, ptr %.0.i28190, i64 %i.ds
  %i.du = getelementptr i8, ptr %.2379.i.ptr.ptr, i64 %i.ds
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.dv = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i28190, i64 %i.dw
  %i.dx = getelementptr i8, ptr %.0.i28190, i64 %i.dw
  %next.gep402 = getelementptr i8, ptr %i.dx, i64 16
  store <4 x i32> %i.dv, ptr %next.gep, align 1
  store <4 x i32> %i.dv, ptr %next.gep402, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %.lr.ph.preheader459

.backedge.backedge:                               ; preds = %.preheader136, %.lr.ph, %bb.ac, %middle.block, %bb.ad, %bb.s
  %.0.be = phi ptr [ %i.bc, %bb.s ], [ %.8, %bb.ac ], [ %.8, %bb.ad ], [ %.8, %middle.block ], [ %.8, %.lr.ph ], [ %.8, %.preheader136 ]
  %.0377.i.idx.be = phi i64 [ %.2379.i.add112, %bb.s ], [ %.2379.i.add113, %bb.ac ], [ %.2379.i.add113, %bb.ad ], [ %.2379.i.add113, %middle.block ], [ %.2379.i.add113, %.lr.ph ], [ %.2379.i.add113, %.preheader136 ]
  br label %.backedge

.lr.ph.preheader459:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i28192.ph = phi ptr [ %.0.i28190, %.lr.ph.preheader ], [ %i.dt, %middle.block ]
  %.pn.i191.ph = phi ptr [ %.2379.i.ptr.ptr, %.lr.ph.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader459, %.lr.ph
  %.0.i28192 = phi ptr [ %.0.i28, %.lr.ph ], [ %.0.i28192.ph, %.lr.ph.preheader459 ] ; 3 uses
  %.pn.i191 = phi ptr [ %.0.i28192, %.lr.ph ], [ %.pn.i191.ph, %.lr.ph.preheader459 ]
  store i32 %.sroa.9.0.i, ptr %.0.i28192, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i191, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i28 = getelementptr inbounds nuw i8, ptr %.0.i28192, i64 8 ; 2 uses
  %i.dz = icmp ult ptr %.0.i28, %.ptr117
  br i1 %i.dz, label %.lr.ph, label %.backedge.backedge, !llvm.loop !75

.preheader136:                                    ; preds = %bb.t, %.preheader136
  %.011.i25 = phi ptr [ %i.ec, %.preheader136 ], [ %.2379.i.ptr.ptr, %bb.t ] ; 3 uses
  %.0.i26 = phi ptr [ %i.ed, %.preheader136 ], [ %.ptr.ptr, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i25, ptr noundef nonnull align 1 dereferenceable(16) %.0.i26, i64 16, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %.011.i25, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ea, ptr noundef nonnull align 1 dereferenceable(16) %i.eb, i64 16, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %.011.i25, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.ee = icmp ult ptr %i.ec, %.ptr117
  br i1 %i.ee, label %.preheader136, label %.backedge.backedge, !llvm.loop !5

bb.ae:                                            ; preds = %.lr.ph197, %bb.ag
  %.in = phi i32 [ %i.ju, %.lr.ph197 ], [ %i.fc, %bb.ag ]
  %i.ef = phi i32 [ %i.jt, %.lr.ph197 ], [ %i.fb, %bb.ag ] ; 2 uses
  %i.eg = phi ptr [ %i.jr, %.lr.ph197 ], [ %i.ez, %bb.ag ] ; 4 uses
  %.6383.i.ptr196 = phi ptr [ %.6383.i.ptr193, %.lr.ph197 ], [ %.6383.i.ptr, %bb.ag ]
  %.6383.i.idx195 = phi i64 [ %.6383.i.idx.ph, %.lr.ph197 ], [ %.add122, %bb.ag ] ; 3 uses
  %i.eh = zext nneg i32 %.in to i64               ; 3 uses
  %i.ei = icmp ult ptr %i.eg, %i.h
  %i.ej = icmp sle i64 %.6383.i.idx195, %i.jv
  %i.ek = and i1 %i.ei, %i.ej
  br i1 %i.ek, label %bb.af, label %LZ4_wildCopy32.exit, !prof !34

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6383.i.ptr196, ptr noundef nonnull align 1 dereferenceable(16) %i.eg, i64 16, i1 false)
  %.6383.i.add = add nsw i64 %.6383.i.idx195, %i.eh ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh ; 3 uses
  %i.em = and i32 %i.ef, 15                       ; 2 uses
  %i.en = zext nneg i32 %i.em to i64              ; 2 uses
  %.val = load i16, ptr %i.el, align 1, !tbaa !33 ; 2 uses
  %i.eo = zext i16 %.val to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 2 ; 3 uses
  %.add = sub nsw i64 %.6383.i.add, %i.eo         ; 2 uses
  %i.eq = icmp ne i32 %i.em, 15
  %i.er = icmp ugt i16 %.val, 7
  %or.cond3.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond3.i, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %.ptr124 = getelementptr inbounds i8, ptr %1, i64 %.add ; 3 uses
  %.ptr123 = getelementptr inbounds i8, ptr %1, i64 %.6383.i.add ; 3 uses
  %i.es = load i64, ptr %.ptr124, align 1
  store i64 %i.es, ptr %.ptr123, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.ptr123, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.ptr124, i64 8
  %i.ev = load i64, ptr %i.eu, align 1
  store i64 %i.ev, ptr %i.et, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.ptr123, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %.ptr124, i64 16
  %i.ey = load i16, ptr %i.ex, align 1
  store i16 %i.ey, ptr %i.ew, align 1
  %.add121 = add nuw nsw i64 %i.en, 4
  %.add122 = add nsw i64 %.add121, %.6383.i.add   ; 3 uses
  %.6383.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.add122 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 3 ; 2 uses
  %i.fa = load i8, ptr %i.ep, align 1, !tbaa !18
  %i.fb = zext i8 %i.fa to i32                    ; 3 uses
  %i.fc = lshr i32 %i.fb, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.fc, 15
  br i1 %cond.i, label %._crit_edge, label %bb.ae

._crit_edge:                                      ; preds = %bb.ag, %.preheader134
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader134 ], [ %i.ep, %bb.ag ]
  %.6383.i.idx.lcssa = phi i64 [ %.6383.i.idx.ph, %.preheader134 ], [ %.add122, %bb.ag ]
  %.6383.i.ptr.lcssa = phi ptr [ %.6383.i.ptr193, %.preheader134 ], [ %.6383.i.ptr, %bb.ag ]
  %.lcssa157 = phi ptr [ %i.jr, %.preheader134 ], [ %i.ez, %bb.ag ] ; 3 uses
  %.lcssa154 = phi i32 [ %i.jt, %.preheader134 ], [ %i.fb, %bb.ag ]
  %i.fd = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not22.i15 = icmp ult ptr %.lcssa157, %i.fd
  br i1 %.not22.i15, label %bb.ah, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.ah:                                            ; preds = %._crit_edge
  %i.fe = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.ff = load i8, ptr %.lcssa157, align 1, !tbaa !18 ; 2 uses
  %i.fg = zext i8 %i.ff to i64
  %.not23.i17 = icmp eq i8 %i.ff, -1
  br i1 %.not23.i17, label %.preheader133, label %read_variable_length.exit19.thread93, !prof !30

.preheader133:                                    ; preds = %bb.ah, %bb.ai
  %.14 = phi ptr [ %i.fh, %bb.ai ], [ %i.fe, %bb.ah ] ; 2 uses
  %.0.i18 = phi i64 [ %i.fl, %bb.ai ], [ 255, %bb.ah ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.fi = icmp ugt ptr %i.fh, %i.fd
  br i1 %i.fi, label %LZ4_wildCopy32.exit.thread, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %.preheader133
  %i.fj = load i8, ptr %.14, align 1, !tbaa !18   ; 2 uses
  %i.fk = zext i8 %i.fj to i64
  %i.fl = add i64 %.0.i18, %i.fk                  ; 3 uses
  %i.fm = icmp eq i8 %i.fj, -1
  br i1 %i.fm, label %.preheader133, label %read_variable_length.exit19, !llvm.loop !4

read_variable_length.exit19:                      ; preds = %bb.ai
  %i.fn = icmp eq i64 %i.fl, -1
  br i1 %i.fn, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit19.thread93

read_variable_length.exit19.thread93:             ; preds = %bb.ah, %read_variable_length.exit19
  %.019.i1697 = phi i64 [ %i.fl, %read_variable_length.exit19 ], [ %i.fg, %bb.ah ]
  %.1596 = phi ptr [ %i.fh, %read_variable_length.exit19 ], [ %i.fe, %bb.ah ] ; 3 uses
  %i.fo = add i64 %.019.i1697, 15                 ; 3 uses
  %i.fp = ptrtoint ptr %.6383.i.ptr.lcssa to i64
  %i.fq = xor i64 %i.fp, -1
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  %i.fs = ptrtoint ptr %.1596 to i64
  %i.ft = xor i64 %i.fs, -1
  %i.fu = icmp ugt i64 %i.fo, %i.ft
  %or.cond110 = or i1 %i.fr, %i.fu
  br i1 %or.cond110, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !46

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %bb.ae, %read_variable_length.exit19.thread93
  %.4 = phi ptr [ %.1596, %read_variable_length.exit19.thread93 ], [ %i.eg, %bb.ae ], [ %i.v, %bb.k ], [ %.1164, %bb.j ] ; 5 uses
  %.7384.i.idx = phi i64 [ %.6383.i.idx.lcssa, %read_variable_length.exit19.thread93 ], [ %.6383.i.idx195, %bb.ae ], [ %.0377.i.idx, %bb.k ], [ %.0377.i.idx, %bb.j ] ; 2 uses
  %.0366.i = phi i32 [ %.lcssa154, %read_variable_length.exit19.thread93 ], [ %i.ef, %bb.ae ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  %.5365.i = phi i64 [ %i.fo, %read_variable_length.exit19.thread93 ], [ %i.eh, %bb.ae ], [ %i.z, %bb.k ], [ %i.al, %bb.j ] ; 4 uses
  %.7384.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.7384.i.idx ; 2 uses
  %.7384.i.add = add nsw i64 %.5365.i, %.7384.i.idx ; 6 uses
  %.ptr125 = getelementptr inbounds i8, ptr %1, i64 %.7384.i.add
  %i.fv = add nsw i64 %i.f, -12
  %i.fw = icmp sgt i64 %.7384.i.add, %i.fv
  br i1 %i.fw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %LZ4_wildCopy32.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 3 uses
  %i.fy = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.fz = icmp ugt ptr %i.fx, %i.fy
  br i1 %i.fz, label %bb.ak, label %.preheader132

bb.ak:                                            ; preds = %bb.aj, %LZ4_wildCopy32.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %.not440.i = icmp ne ptr %i.ga, %i.e
  %i.gb = icmp sgt i64 %.7384.i.add, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.gb
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i.ptr, ptr nonnull align 1 %.4, i64 %.5365.i, i1 false)
  %i.gc = trunc i64 %.7384.i.add to i32
  br label %LZ4_decompress_generic.exit

.preheader132:                                    ; preds = %bb.aj, %.preheader132
  %.09.i7 = phi ptr [ %i.ge, %.preheader132 ], [ %.7384.i.ptr, %bb.aj ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gf, %.preheader132 ], [ %.4, %bb.aj ] ; 2 uses
  %i.gd = load i64, ptr %.0.i8, align 1
  store i64 %i.gd, ptr %.09.i7, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gg = icmp ult ptr %i.ge, %.ptr125
  br i1 %i.gg, label %.preheader132, label %LZ4_wildCopy8.exit9, !llvm.loop !1
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_continue:bb.a

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %.09.i67 = phi ptr [ %i.oc, %bb.br ], [ %i.oe, %bb.bs ] ; 2 uses
  %.3372.i.i.pn = phi ptr [ %.3372.i.i, %bb.br ], [ %.0.i68, %bb.bs ]
  %.0.i68 = getelementptr inbounds nuw i8, ptr %.3372.i.i.pn, i64 8 ; 2 uses
  %i.od = load i64, ptr %.0.i68, align 1
  store i64 %i.od, ptr %.09.i67, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.09.i67, i64 8 ; 2 uses
  %i.of = icmp ult ptr %i.oe, %i.kg
  br i1 %i.of, label %bb.bs, label %.preheader187, !llvm.loop !1

.preheader187:                                    ; preds = %bb.bs, %.lr.ph263, %.lr.ph266, %bb.bq, %bb.bp, %vec.epilog.middle.block579, %middle.block562, %bb.bg, %bb.bi, %vec.epilog.middle.block616, %middle.block599, %bb.n
  %.3.ph = phi ptr [ %.2, %bb.bg ], [ %1, %bb.n ], [ %.2, %middle.block599 ], [ %.2, %vec.epilog.middle.block616 ], [ %.2, %bb.bq ], [ %.2, %bb.bi ], [ %.2, %.lr.ph266 ], [ %.2, %middle.block562 ], [ %.2, %vec.epilog.middle.block579 ], [ %.2, %.lr.ph263 ], [ %.2, %bb.bp ], [ %.2, %bb.bs ] ; 3 uses
  %.6383.i.i.ph = phi ptr [ %i.kg, %bb.bg ], [ %2, %bb.n ], [ %i.lh, %middle.block599 ], [ %i.lm, %vec.epilog.middle.block616 ], [ %i.kg, %bb.bq ], [ %i.kg, %bb.bi ], [ %i.lq, %.lr.ph266 ], [ %i.kg, %middle.block562 ], [ %i.kg, %vec.epilog.middle.block579 ], [ %i.kg, %.lr.ph263 ], [ %i.kg, %bb.bp ], [ %i.kg, %bb.bs ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.oh = load i8, ptr %.3.ph, align 1, !tbaa !18
  %i.oi = zext i8 %i.oh to i32                    ; 3 uses
  %i.oj = lshr i32 %i.oi, 4                       ; 2 uses
  %cond.i.i253 = icmp eq i32 %i.oj, 15
  br i1 %cond.i.i253, label %._crit_edge, label %.lr.ph255

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.u, %read_variable_length.exit77, %read_variable_length.exit77.thread143, %bb.o, %read_variable_length.exit.thread126, %read_variable_length.exit, %bb.ac, %.thread151, %.preheader197, %.preheader194, %.preheader186, %.preheader184, %bb.az, %._crit_edge, %read_variable_length.exit82, %read_variable_length.exit82.thread158, %bb.bn, %bb.be, %.loopexit202, %read_variable_length.exit86, %bb.ax
  %.7 = phi ptr [ %.4, %bb.ax ], [ %.2, %.loopexit202 ], [ %.15161, %read_variable_length.exit82.thread158 ], [ %.2, %bb.be ], [ %.17, %read_variable_length.exit86 ], [ %i.jr, %.preheader184 ], [ %i.ic, %read_variable_length.exit82 ], [ %.2, %bb.bn ], [ %i.jn, %bb.az ], [ %i.bg, %.preheader197 ], [ %.lcssa213, %._crit_edge ], [ %i.ic, %.preheader186 ], [ %i.cp, %.preheader194 ], [ %i.cp, %read_variable_length.exit77 ], [ %.13146, %read_variable_length.exit77.thread143 ], [ %i.ax, %bb.o ], [ %.11129, %read_variable_length.exit.thread126 ], [ %i.bg, %read_variable_length.exit ], [ %.8, %bb.ac ], [ %.8, %.thread151 ], [ %i.cl, %bb.u ]
  %i.ok = ptrtoint ptr %.7 to i64
  %i.ol = ptrtoint ptr %1 to i64
  %.neg.i.i = sub i64 %i.ol, %i.ok
  %i.om = trunc i64 %.neg.i.i to i32
  %i.on = add nsw i32 %i.om, -1
  br label %LZ4_decompress_safe_doubleDict.exit

LZ4_decompress_safe_doubleDict.exit:              ; preds = %LZ4_wildCopy32.exit.thread, %bb.ay, %bb.h, %bb.f
  %.0 = phi i32 [ %i.m, %bb.f ], [ %i.q, %bb.h ], [ %i.ja, %bb.ay ], [ %i.on, %LZ4_wildCopy32.exit.thread ] ; 4 uses
  %i.oo = icmp slt i32 %.0, 1
  br i1 %i.oo, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %LZ4_decompress_safe_doubleDict.exit
  %i.op = zext nneg i32 %.0 to i64                ; 2 uses
  %i.oq = load i64, ptr %i.a, align 8, !tbaa !52
  %i.or = add i64 %i.oq, %i.op
  store i64 %i.or, ptr %i.a, align 8, !tbaa !52
  %i.os = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.op
  store ptr %i.ot, ptr %i.i, align 8, !tbaa !53
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.bu:                                            ; preds = %bb.d
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.ou, align 8, !tbaa !55
  %i.ov = sub i64 0, %i.b
  %i.ow = getelementptr inbounds i8, ptr %i.j, i64 %i.ov ; 2 uses
  store ptr %i.ow, ptr %0, align 8, !tbaa !54
  %i.ox = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.ow, i64 noundef %i.b) ; 4 uses
  %i.oy = icmp slt i32 %i.ox, 1
  br i1 %i.oy, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oz = zext nneg i32 %i.ox to i64              ; 2 uses
  store i64 %i.oz, ptr %i.a, align 8, !tbaa !52
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 %i.oz
  store ptr %i.pa, ptr %i.i, align 8, !tbaa !53
  br label %LZ4_decompress_safe_doubleDict.exit.thread

LZ4_decompress_safe_doubleDict.exit.thread:       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.c, %bb.bv, %bb.bt, %bb.bu, %LZ4_decompress_safe_doubleDict.exit, %bb.b
  %.058 = phi i32 [ %.0, %LZ4_decompress_safe_doubleDict.exit ], [ %i.ox, %bb.bu ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.0, %bb.bt ], [ %i.ox, %bb.bv ], [ -1, %bb.m ], [ %i.ak, %bb.l ], [ -1, %bb.k ], [ -1, %bb.i ]
  ret i32 %.058
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #1 {
bb.a:
  %i.a = sub nsw i64 0, %4
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 4 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 9 uses
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %0, align 1, !tbaa !18
  %i.n = icmp ne i8 %i.m, 0
  %i.o = sext i1 %i.n to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_generic.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = icmp samesign ult i32 %3, 64
  br i1 %i.r, label %.preheader121, label %.preheader130

.preheader130:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader130
  %.0 = phi ptr [ %0, %.preheader130 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0377.i = phi ptr [ %1, %.preheader130 ], [ %.0377.i.be, %.backedge.backedge ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.y = load i8, ptr %.0, align 1, !tbaa !18
  %i.z = zext i8 %i.y to i32                      ; 4 uses
  %i.aa = lshr i32 %i.z, 4                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ac = icmp eq i32 %i.aa, 15
  br i1 %i.ac, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.x, %i.t
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !18   ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %.not23.i = icmp eq i8 %i.ae, -1
  br i1 %.not23.i, label %.preheader128, label %read_variable_length.exit.thread62, !prof !30

.preheader128:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.ag, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  %.0.i11 = phi i64 [ %i.ak, %bb.i ], [ 255, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.ah = icmp ugt ptr %i.ag, %i.t
  br i1 %i.ah, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !30

bb.i:                                             ; preds = %.preheader128
  %i.ai = load i8, ptr %.10, align 1, !tbaa !18   ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add i64 %.0.i11, %i.aj                  ; 3 uses
  %i.al = icmp eq i8 %i.ai, -1
  br i1 %i.al, label %.preheader128, label %read_variable_length.exit, !llvm.loop !4

read_variable_length.exit:                        ; preds = %bb.i
  %i.am = icmp eq i64 %i.ak, -1
  br i1 %i.am, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread62

read_variable_length.exit.thread62:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i66 = phi i64 [ %i.ak, %read_variable_length.exit ], [ %i.af, %bb.h ]
  %.1165 = phi ptr [ %i.ag, %read_variable_length.exit ], [ %i.ad, %bb.h ] ; 5 uses
  %i.an = add i64 %.019.i66, 15                   ; 5 uses
  %i.ao = ptrtoint ptr %.0377.i to i64
  %i.ap = xor i64 %i.ao, -1
  %i.aq = icmp ugt i64 %i.an, %i.ap
  %i.ar = ptrtoint ptr %.1165 to i64
  %i.as = xor i64 %i.ar, -1
  %i.at = icmp ugt i64 %i.an, %i.as
  %or.cond = or i1 %i.aq, %i.at
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !46

bb.j:                                             ; preds = %read_variable_length.exit.thread62
  %i.au = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.an ; 3 uses
  %i.av = icmp ugt ptr %i.au, %i.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.1165, i64 %i.an ; 2 uses
  %i.ax = icmp ugt ptr %i.aw, %i.u
  %or.cond449.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader127

.preheader127:                                    ; preds = %bb.j, %.preheader127
  %.011.i = phi ptr [ %i.ba, %.preheader127 ], [ %.0377.i, %bb.j ] ; 3 uses
  %.0.i25 = phi ptr [ %i.bb, %.preheader127 ], [ %.1165, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i25, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i25, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i25, i64 32
  %i.bc = icmp ult ptr %i.ba, %i.au
  br i1 %i.bc, label %.preheader127, label %LZ4_wildCopy32.exit.thread71, !llvm.loop !5

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.x, %i.s
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0377.i, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.be = getelementptr inbounds nuw i8, ptr %.0377.i, i64 %i.ab
  br label %LZ4_wildCopy32.exit.thread71

LZ4_wildCopy32.exit.thread71:                     ; preds = %.preheader127, %bb.l
  %.1 = phi ptr [ %i.bd, %bb.l ], [ %i.aw, %.preheader127 ] ; 3 uses
  %.2379.i = phi ptr [ %i.be, %bb.l ], [ %i.au, %.preheader127 ] ; 25 uses
  %.val32 = load i16, ptr %.1, align 1, !tbaa !33 ; 5 uses
  %i.bf = zext i16 %.val32 to i64                 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds i8, ptr %.2379.i, i64 %i.bh ; 18 uses
  %i.bj = and i32 %i.z, 15                        ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 15
  br i1 %i.bk, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread71
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bm = icmp ugt ptr %i.bl, %i.w
  br i1 %i.bm, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !18  ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %.not23.i12 = icmp eq i8 %i.bn, -1
  br i1 %.not23.i12, label %.preheader125, label %read_variable_length.exit15.thread79, !prof !30

.preheader125:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bp, %bb.o ], [ %i.bl, %bb.n ] ; 2 uses
  %.0.i14 = phi i64 [ %i.bt, %bb.o ], [ 255, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bq = icmp ugt ptr %i.bp, %i.w
  br i1 %i.bq, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !30

bb.o:                                             ; preds = %.preheader125
  %i.br = load i8, ptr %.12, align 1, !tbaa !18   ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = add i64 %.0.i14, %i.bs                  ; 3 uses
  %i.bu = icmp eq i8 %i.br, -1
  br i1 %i.bu, label %.preheader125, label %read_variable_length.exit15, !llvm.loop !4

read_variable_length.exit15:                      ; preds = %bb.o
  %i.bv = icmp eq i64 %i.bt, -1
  br i1 %i.bv, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit15.thread79

read_variable_length.exit15.thread79:             ; preds = %bb.n, %read_variable_length.exit15
  %.019.i1383 = phi i64 [ %i.bt, %read_variable_length.exit15 ], [ %i.bo, %bb.n ]
  %.1382 = phi ptr [ %i.bp, %read_variable_length.exit15 ], [ %i.bl, %bb.n ] ; 3 uses
  %i.bw = add i64 %.019.i1383, 19                 ; 4 uses
  %i.bx = ptrtoint ptr %.2379.i to i64
  %i.by = xor i64 %i.bx, -1
  %i.bz = icmp ugt i64 %i.bw, %i.by
  br i1 %i.bz, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !30

bb.p:                                             ; preds = %read_variable_length.exit15.thread79
  %i.ca = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %i.bw
  %.not435.i = icmp ult ptr %i.ca, %i.v
  br i1 %.not435.i, label %.thread87, label %.loopexit133

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread71
  %narrow.i = add nuw nsw i32 %i.bj, 4
  %i.cb = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %i.cb ; 2 uses
  %.not434.i = icmp ult ptr %i.cc, %i.v
  br i1 %.not434.i, label %bb.r, label %.loopexit133

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp uge ptr %i.bi, %i.b
  %i.ce = icmp ugt i16 %.val32, 7
  %or.cond5.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread87

bb.s:                                             ; preds = %bb.r
  %i.cf = load i64, ptr %i.bi, align 1
  store i64 %i.cf, ptr %.2379.i, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ci = load i64, ptr %i.ch, align 1
  store i64 %i.ci, ptr %i.cg, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.2379.i, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cl = load i16, ptr %i.ck, align 1
  store i16 %i.cl, ptr %i.cj, align 1
  br label %.backedge.backedge

.thread87:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.bg, %bb.r ], [ %.1382, %bb.p ] ; 6 uses
  %.2362.i = phi i64 [ %i.cb, %bb.r ], [ %i.bw, %bb.p ] ; 3 uses
  %i.cm = icmp ult ptr %i.bi, %i.b
  br i1 %i.cm, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !47

bb.t:                                             ; preds = %.thread87
  %i.cn = getelementptr inbounds nuw i8, ptr %.2379.i, i64 %.2362.i ; 8 uses
  %i.co = icmp ult i16 %.val32, 16
  br i1 %i.co, label %bb.u, label %.preheader123, !prof !30

bb.u:                                             ; preds = %bb.t
  switch i16 %.val32, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cp = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.cq = zext i8 %i.cp to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cq, 16843009
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bi, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bi, align 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.cr = icmp samesign ult i16 %.val32, 8
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2379.i, align 1, !tbaa !27
  %i.cs = load i8, ptr %i.bi, align 1, !tbaa !18
  store i8 %i.cs, ptr %.2379.i, align 1, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.2379.i, i64 1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.2379.i, i64 2
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.2379.i, i64 3
  store i8 %i.da, ptr %i.db, align 1, !tbaa !18
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bf
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !40
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2379.i, i64 4
  %i.dh = load i32, ptr %i.df, align 1
  store i32 %i.dh, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bf
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !40
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sub nsw i64 0, %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 %i.dl
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i64, ptr %i.bi, align 1
  store i64 %i.dn, ptr %.2379.i, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.023.i = phi ptr [ %i.dm, %bb.z ], [ %i.do, %bb.aa ]
  %.0.i30 = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.09.i.i = phi ptr [ %.0.i30, %bb.ab ], [ %i.dq, %bb.ac ] ; 2 uses
  %.0.i.i = phi ptr [ %.023.i, %bb.ab ], [ %i.dr, %bb.ac ] ; 2 uses
  %i.dp = load i64, ptr %.0.i.i, align 1
  store i64 %i.dp, ptr %.09.i.i, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ds = icmp ult ptr %i.dq, %i.cn
  br i1 %i.ds, label %bb.ac, label %.backedge.backedge, !llvm.loop !1

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2379.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2379.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.dt = icmp samesign ugt i64 %.2362.i, 8
  br i1 %i.dt, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %.0.i29178 = getelementptr inbounds nuw i8, ptr %.2379.i, i64 8 ; 4 uses
  %5 = ptrtoaddr ptr %.2379.i to i64              ; 3 uses
  %i.du = add i64 %.2362.i, %5
  %i.dv = add i64 %5, 16
  %i.dw = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dv)
  %i.dx = add i64 %i.dw, -9
  %i.dy = sub i64 %i.dx, %5                       ; 2 uses
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 24
  br i1 %min.iters.check, label %.lr.ph.preheader470, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ea, 4611686018427387900     ; 3 uses
  %i.eb = shl i64 %n.vec, 3                       ; 2 uses
  %i.ec = getelementptr i8, ptr %.0.i29178, i64 %i.eb
  %i.ed = getelementptr i8, ptr %.2379.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.ee = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i29178, i64 %i.ef
  %i.eg = getelementptr i8, ptr %.0.i29178, i64 %i.ef
  %next.gep410 = getelementptr i8, ptr %i.eg, i64 16
  store <4 x i32> %i.ee, ptr %next.gep, align 1
  store <4 x i32> %i.ee, ptr %next.gep410, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %.lr.ph.preheader470

.backedge.backedge:                               ; preds = %.preheader123, %.lr.ph, %bb.ac, %middle.block, %bb.ad, %bb.s
  %.0.be = phi ptr [ %i.bg, %bb.s ], [ %.8, %bb.ac ], [ %.8, %bb.ad ], [ %.8, %middle.block ], [ %.8, %.lr.ph ], [ %.8, %.preheader123 ]
  %.0377.i.be = phi ptr [ %i.cc, %bb.s ], [ %i.cn, %bb.ac ], [ %i.cn, %bb.ad ], [ %i.cn, %middle.block ], [ %i.cn, %.lr.ph ], [ %i.cn, %.preheader123 ]
  br label %.backedge

.lr.ph.preheader470:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i29180.ph = phi ptr [ %.0.i29178, %.lr.ph.preheader ], [ %i.ec, %middle.block ]
  %.pn.i179.ph = phi ptr [ %.2379.i, %.lr.ph.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader470, %.lr.ph
  %.0.i29180 = phi ptr [ %.0.i29, %.lr.ph ], [ %.0.i29180.ph, %.lr.ph.preheader470 ] ; 3 uses
  %.pn.i179 = phi ptr [ %.0.i29180, %.lr.ph ], [ %.pn.i179.ph, %.lr.ph.preheader470 ]
  store i32 %.sroa.9.0.i, ptr %.0.i29180, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i179, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.0.i29180, i64 8 ; 2 uses
  %i.ei = icmp ult ptr %.0.i29, %i.cn
  br i1 %i.ei, label %.lr.ph, label %.backedge.backedge, !llvm.loop !117

.preheader123:                                    ; preds = %bb.t, %.preheader123
  %.011.i26 = phi ptr [ %i.el, %.preheader123 ], [ %.2379.i, %bb.t ] ; 3 uses
  %.0.i27 = phi ptr [ %i.em, %.preheader123 ], [ %i.bi, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i26, ptr noundef nonnull align 1 dereferenceable(16) %.0.i27, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.011.i26, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i27, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ej, ptr noundef nonnull align 1 dereferenceable(16) %i.ek, i64 16, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i26, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i27, i64 32
  %i.en = icmp ult ptr %i.el, %i.cn
  br i1 %i.en, label %.preheader123, label %.backedge.backedge, !llvm.loop !5

.lr.ph183:                                        ; preds = %.preheader121, %bb.af
  %.in = phi i32 [ %i.fq, %bb.af ], [ %i.kp, %.preheader121 ]
  %i.eo = phi i32 [ %i.fp, %bb.af ], [ %i.ko, %.preheader121 ] ; 2 uses
  %i.ep = phi ptr [ %i.fn, %bb.af ], [ %i.km, %.preheader121 ] ; 4 uses
  %.6383.i182 = phi ptr [ %i.fm, %bb.af ], [ %.6383.i.ph, %.preheader121 ] ; 4 uses
  %i.eq = zext nneg i32 %.in to i64               ; 3 uses
  %i.er = icmp ult ptr %i.ep, %i.i
  %i.es = icmp ule ptr %.6383.i182, %i.j
  %i.et = and i1 %i.er, %i.es
  br i1 %i.et, label %bb.ae, label %LZ4_wildCopy32.exit, !prof !34

bb.ae:                                            ; preds = %.lr.ph183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6383.i182, ptr noundef nonnull align 1 dereferenceable(16) %i.ep, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.6383.i182, i64 %i.eq ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq ; 3 uses
  %i.ew = and i32 %i.eo, 15                       ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %.val = load i16, ptr %i.ev, align 1, !tbaa !33 ; 2 uses
  %i.ey = zext i16 %.val to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 3 uses
  %i.fa = sub nsw i64 0, %i.ey
  %i.fb = getelementptr inbounds i8, ptr %i.eu, i64 %i.fa ; 5 uses
  %i.fc = icmp eq i32 %i.ew, 15
  %i.fd = icmp ult i16 %.val, 8
  %or.cond3.i.not114 = select i1 %i.fc, i1 true, i1 %i.fd
  %.not442.i = icmp ult ptr %i.fb, %i.b
  %or.cond109 = select i1 %or.cond3.i.not114, i1 true, i1 %.not442.i
  br i1 %or.cond109, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = load i64, ptr %i.fb, align 1
  store i64 %i.fe, ptr %i.eu, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fh = load i64, ptr %i.fg, align 1
  store i64 %i.fh, ptr %i.ff, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fk = load i16, ptr %i.fj, align 1
  store i16 %i.fk, ptr %i.fi, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 3 ; 2 uses
  %i.fo = load i8, ptr %i.ez, align 1, !tbaa !18
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = lshr i32 %i.fp, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.fq, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph183

._crit_edge:                                      ; preds = %bb.af, %.preheader121
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader121 ], [ %i.ez, %bb.af ]
  %.6383.i.lcssa = phi ptr [ %.6383.i.ph, %.preheader121 ], [ %i.fm, %bb.af ] ; 2 uses
  %.lcssa144 = phi ptr [ %i.km, %.preheader121 ], [ %i.fn, %bb.af ] ; 3 uses
  %.lcssa141 = phi i32 [ %i.ko, %.preheader121 ], [ %i.fp, %bb.af ]
  %i.fr = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 2 uses
  %.not22.i16 = icmp ult ptr %.lcssa144, %i.fr
  br i1 %.not22.i16, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !34

bb.ag:                                            ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.ft = load i8, ptr %.lcssa144, align 1, !tbaa !18 ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %.not23.i18 = icmp eq i8 %i.ft, -1
  br i1 %.not23.i18, label %.preheader120, label %read_variable_length.exit20.thread94, !prof !30

.preheader120:                                    ; preds = %bb.ag, %bb.ah
  %.14 = phi ptr [ %i.fv, %bb.ah ], [ %i.fs, %bb.ag ] ; 2 uses
  %.0.i19 = phi i64 [ %i.fz, %bb.ah ], [ 255, %bb.ag ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.fw = icmp ugt ptr %i.fv, %i.fr
  br i1 %i.fw, label %LZ4_wildCopy32.exit.thread, label %bb.ah, !prof !30

bb.ah:                                            ; preds = %.preheader120
  %i.fx = load i8, ptr %.14, align 1, !tbaa !18   ; 2 uses
  %i.fy = zext i8 %i.fx to i64
  %i.fz = add i64 %.0.i19, %i.fy                  ; 3 uses
  %i.ga = icmp eq i8 %i.fx, -1
  br i1 %i.ga, label %.preheader120, label %read_variable_length.exit20, !llvm.loop !4

read_variable_length.exit20:                      ; preds = %bb.ah
  %i.gb = icmp eq i64 %i.fz, -1
  br i1 %i.gb, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit20.thread94

read_variable_length.exit20.thread94:             ; preds = %bb.ag, %read_variable_length.exit20
  %.019.i1798 = phi i64 [ %i.fz, %read_variable_length.exit20 ], [ %i.fu, %bb.ag ]
  %.1597 = phi ptr [ %i.fv, %read_variable_length.exit20 ], [ %i.fs, %bb.ag ] ; 3 uses
  %i.gc = add i64 %.019.i1798, 15                 ; 3 uses
  %i.gd = ptrtoint ptr %.6383.i.lcssa to i64
  %i.ge = xor i64 %i.gd, -1
  %i.gf = icmp ugt i64 %i.gc, %i.ge
  %i.gg = ptrtoint ptr %.1597 to i64
  %i.gh = xor i64 %i.gg, -1
  %i.gi = icmp ugt i64 %i.gc, %i.gh
  %or.cond112 = or i1 %i.gf, %i.gi
  br i1 %or.cond112, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !46

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph183, %read_variable_length.exit20.thread94
  %.4 = phi ptr [ %.1597, %read_variable_length.exit20.thread94 ], [ %i.ep, %.lr.ph183 ], [ %i.x, %bb.k ], [ %.1165, %bb.j ] ; 5 uses
  %.7384.i = phi ptr [ %.6383.i.lcssa, %read_variable_length.exit20.thread94 ], [ %.6383.i182, %.lr.ph183 ], [ %.0377.i, %bb.k ], [ %.0377.i, %bb.j ] ; 3 uses
  %.0366.i = phi i32 [ %.lcssa141, %read_variable_length.exit20.thread94 ], [ %i.eo, %.lr.ph183 ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %.5365.i = phi i64 [ %i.gc, %read_variable_length.exit20.thread94 ], [ %i.eq, %.lr.ph183 ], [ %i.ab, %bb.k ], [ %i.an, %bb.j ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.5365.i ; 6 uses
  %i.gk = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.gl = icmp ugt ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 3 uses
  %i.gn = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.go = icmp ugt ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.aj, label %.preheader119

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %.not440.i = icmp ne ptr %i.gp, %i.f
  %i.gq = icmp ugt ptr %i.gj, %i.h
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.gq
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %.5365.i, i1 false)
  %i.gr = ptrtoint ptr %i.gj to i64
  %i.gs = sub i64 %i.gr, %i.q
  %i.gt = trunc i64 %i.gs to i32
  br label %LZ4_decompress_generic.exit

.preheader119:                                    ; preds = %bb.ai, %.preheader119
  %.09.i8 = phi ptr [ %i.gv, %.preheader119 ], [ %.7384.i, %bb.ai ] ; 2 uses
  %.0.i9 = phi ptr [ %i.gw, %.preheader119 ], [ %.4, %bb.ai ] ; 2 uses
  %i.gu = load i64, ptr %.0.i9, align 1
  store i64 %i.gu, ptr %.09.i8, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.gx = icmp ult ptr %i.gv, %i.gj
  br i1 %i.gx, label %.preheader119, label %LZ4_wildCopy8.exit10, !llvm.loop !1

LZ4_wildCopy8.exit10:                             ; preds = %.preheader119
  %.val31 = load i16, ptr %i.gm, align 1, !tbaa !33
end_hunk_3
begin_hunk_4_@LZ4_decompress_safe_partial_usingDict:bb.a
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.1370.i.ptr.i, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.10387.i.ptr.i, i64 3
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !18
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1368.i.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !40
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %.1370.i.ptr.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.10387.i.ptr.i, i64 4
  %i.je = load i32, ptr %i.jc, align 1
  store i32 %i.je, ptr %i.jd, align 1
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1368.i.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !40
  %i.jh = sext i32 %i.jg to i64
  %i.ji = sub nsw i64 0, %i.jh
  %i.jj = getelementptr inbounds i8, ptr %i.jc, i64 %i.ji
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jk = load i64, ptr %.1370.i.ptr.i, align 1
  store i64 %i.jk, ptr %.10387.i.ptr.i, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %.1370.i.ptr.i, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.3372.i.i = phi ptr [ %i.jj, %bb.aw ], [ %i.jl, %bb.ax ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.10387.i.ptr.i, i64 8
  %i.jn = load i64, ptr %.3372.i.i, align 1
  store i64 %i.jn, ptr %i.jm, align 1
  %i.jo = icmp ugt i64 %.11.i.i, 16
  br i1 %i.jo, label %bb.az, label %.preheader145.i

bb.az:                                            ; preds = %bb.ay
  %i.jp = getelementptr inbounds nuw i8, ptr %.10387.i.ptr.i, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.09.i8.i = phi ptr [ %i.jp, %bb.az ], [ %i.jr, %bb.ba ] ; 2 uses
  %.3372.i.pn.i = phi ptr [ %.3372.i.i, %bb.az ], [ %.0.i9.i, %bb.ba ]
  %.0.i9.i = getelementptr inbounds nuw i8, ptr %.3372.i.pn.i, i64 8 ; 2 uses
  %i.jq = load i64, ptr %.0.i9.i, align 1
  store i64 %i.jq, ptr %.09.i8.i, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %.09.i8.i, i64 8 ; 2 uses
  %i.js = icmp ult ptr %i.jr, %.ptr139.i
  br i1 %i.js, label %bb.ba, label %.preheader145.i, !llvm.loop !1

.preheader145.i:                                  ; preds = %bb.ba, %bb.ay, %.loopexit.i, %bb.h
  %.3.ph.i = phi ptr [ %0, %bb.h ], [ %.2.i, %.loopexit.i ], [ %.2.i, %bb.ay ], [ %.2.i, %bb.ba ] ; 3 uses
  %.6383.i.idx.ph.i = phi i64 [ 0, %bb.h ], [ %.10387.i.add131.i, %.loopexit.i ], [ %.10387.i.add.i, %bb.ay ], [ %.10387.i.add.i, %bb.ba ] ; 3 uses
  %.6383.i.ptr205.i = getelementptr inbounds i8, ptr %1, i64 %.6383.i.idx.ph.i ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  %i.ju = load i8, ptr %.3.ph.i, align 1, !tbaa !18
  %i.jv = zext i8 %i.ju to i32                    ; 3 uses
  %i.jw = lshr i32 %i.jv, 4                       ; 2 uses
  %cond.i206.i = icmp eq i32 %i.jw, 15
  br i1 %cond.i206.i, label %._crit_edge.i, label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %.preheader145.i
  %i.jx = add nsw i64 %i.l, -32
  br label %bb.ag

bb.bb:                                            ; preds = %.loopexit.i, %bb.an, %.thread108.i
  %.17.i.i = phi ptr [ %.ptr140.i, %.loopexit.i ], [ %.ptr136.i, %bb.an ], [ %i.m, %.thread108.i ]
  %i.jy = ptrtoint ptr %.17.i.i to i64
  %i.jz = sub i64 %i.jy, %i.q
  %i.ka = trunc i64 %i.jz to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i:                     ; preds = %.thread90.i, %read_variable_length.exit18.thread82.i, %read_variable_length.exit18.i, %bb.o, %read_variable_length.exit.thread65.i, %read_variable_length.exit.i, %bb.i, %.preheader153.i, %.preheader150.i, %.preheader144.i, %.preheader142.i, %.loopexit158.i, %read_variable_length.exit27.i, %bb.ao, %read_variable_length.exit23.thread97.i, %read_variable_length.exit23.i, %._crit_edge.i
  %.8.i = phi ptr [ %.2.i, %.loopexit158.i ], [ %i.bm, %.preheader150.i ], [ %.18.i, %read_variable_length.exit27.i ], [ %i.fk, %read_variable_length.exit23.i ], [ %i.hb, %.preheader142.i ], [ %.16100.i, %read_variable_length.exit23.thread97.i ], [ %.lcssa169.i, %._crit_edge.i ], [ %i.fk, %.preheader144.i ], [ %i.ah, %.preheader153.i ], [ %i.gx, %bb.ao ], [ %.9.i, %.thread90.i ], [ %i.ah, %read_variable_length.exit.i ], [ %.1268.i, %read_variable_length.exit.thread65.i ], [ %i.y, %bb.i ], [ %.1485.i, %read_variable_length.exit18.thread82.i ], [ %i.bm, %read_variable_length.exit18.i ], [ %i.bi, %bb.o ]
  %i.kb = ptrtoint ptr %.8.i to i64
  %i.kc = ptrtoint ptr %0 to i64
  %.neg.i.i = sub i64 %i.kc, %i.kb
  %i.kd = trunc i64 %.neg.i.i to i32
  %i.ke = add nsw i32 %i.kd, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.bc:                                            ; preds = %bb.d
  %i.kf = sub nsw i64 0, %i.c
  %i.kg = getelementptr inbounds i8, ptr %1, i64 %i.kf ; 4 uses
  %i.kh = icmp eq ptr %0, null
  %i.ki = icmp slt i32 %i.g, 0
  %or.cond.i.i30 = or i1 %i.kh, %i.ki
  br i1 %or.cond.i.i30, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kj = sext i32 %2 to i64
  %i.kk = getelementptr inbounds i8, ptr %0, i64 %i.kj ; 11 uses
  %i.kl = zext nneg i32 %i.g to i64
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl ; 9 uses
  %i.kn = getelementptr inbounds i8, ptr %i.kk, i64 -16
  %i.ko = getelementptr inbounds i8, ptr %i.km, i64 -32 ; 2 uses
  %i.kp = icmp eq i32 %i.g, 0
  br i1 %i.kp, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.be, !prof !30

bb.be:                                            ; preds = %bb.bd
  %i.kq = icmp eq i32 %2, 0
  br i1 %i.kq, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bf, !prof !30

bb.bf:                                            ; preds = %bb.be
  %i.kr = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.ks = ptrtoint ptr %1 to i64
  %i.kt = icmp samesign ult i32 %i.g, 64
  br i1 %i.kt, label %.preheader128.i, label %.preheader138.i

.preheader138.i:                                  ; preds = %bb.bf
  %i.ku = getelementptr inbounds i8, ptr %i.kk, i64 -17
  %i.kv = getelementptr inbounds i8, ptr %i.kk, i64 -15 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kk, i64 -32
  %i.kx = getelementptr inbounds i8, ptr %i.km, i64 -64 ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kk, i64 -4 ; 2 uses
  br label %.backedge.i75

.backedge.i75:                                    ; preds = %.backedge.i75.backedge, %.preheader138.i
  %.0.i31 = phi ptr [ %0, %.preheader138.i ], [ %.0.i31.be, %.backedge.i75.backedge ] ; 3 uses
  %.0377.i.i = phi ptr [ %1, %.preheader138.i ], [ %.0377.i.i.be, %.backedge.i75.backedge ] ; 7 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i31, i64 1 ; 7 uses
  %i.la = load i8, ptr %.0.i31, align 1, !tbaa !18
  %i.lb = zext i8 %i.la to i32                    ; 4 uses
  %i.lc = lshr i32 %i.lb, 4                       ; 2 uses
  %i.ld = zext nneg i32 %i.lc to i64              ; 3 uses
  %i.le = icmp eq i32 %i.lc, 15
  br i1 %i.le, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %.backedge.i75
  %.not22.i.i94 = icmp ult ptr %i.kz, %i.kv
  br i1 %.not22.i.i94, label %bb.bh, label %LZ4_wildCopy32.exit.thread.i55, !prof !34

bb.bh:                                            ; preds = %bb.bg
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i31, i64 2 ; 2 uses
  %i.lg = load i8, ptr %i.kz, align 1, !tbaa !18  ; 2 uses
  %i.lh = zext i8 %i.lg to i64
  %.not23.i.i95 = icmp eq i8 %i.lg, -1
  br i1 %.not23.i.i95, label %.preheader136.i, label %read_variable_length.exit.thread66.i, !prof !30

.preheader136.i:                                  ; preds = %bb.bh, %bb.bi
  %.11.i99 = phi ptr [ %i.li, %bb.bi ], [ %i.lf, %bb.bh ] ; 2 uses
  %.0.i15.i = phi i64 [ %i.lm, %bb.bi ], [ 255, %bb.bh ]
  %i.li = getelementptr inbounds nuw i8, ptr %.11.i99, i64 1 ; 5 uses
  %i.lj = icmp ugt ptr %i.li, %i.kv
  br i1 %i.lj, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bi, !prof !30

bb.bi:                                            ; preds = %.preheader136.i
  %i.lk = load i8, ptr %.11.i99, align 1, !tbaa !18 ; 2 uses
  %i.ll = zext i8 %i.lk to i64
  %i.lm = add i64 %.0.i15.i, %i.ll                ; 3 uses
  %i.ln = icmp eq i8 %i.lk, -1
  br i1 %i.ln, label %.preheader136.i, label %read_variable_length.exit.i100, !llvm.loop !4

read_variable_length.exit.i100:                   ; preds = %bb.bi
  %i.lo = icmp eq i64 %i.lm, -1
  br i1 %i.lo, label %LZ4_wildCopy32.exit.thread.i55, label %read_variable_length.exit.thread66.i

read_variable_length.exit.thread66.i:             ; preds = %read_variable_length.exit.i100, %bb.bh
  %.019.i70.i = phi i64 [ %i.lm, %read_variable_length.exit.i100 ], [ %i.lh, %bb.bh ]
  %.1269.i = phi ptr [ %i.li, %read_variable_length.exit.i100 ], [ %i.lf, %bb.bh ] ; 5 uses
  %i.lp = add i64 %.019.i70.i, 15                 ; 5 uses
  %i.lq = ptrtoint ptr %.0377.i.i to i64
  %i.lr = xor i64 %i.lq, -1
  %i.ls = icmp ugt i64 %i.lp, %i.lr
  %i.lt = ptrtoint ptr %.1269.i to i64
  %i.lu = xor i64 %i.lt, -1
  %i.lv = icmp ugt i64 %i.lp, %i.lu
  %or.cond.i96 = or i1 %i.ls, %i.lv
  br i1 %or.cond.i96, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bj, !prof !46

bb.bj:                                            ; preds = %read_variable_length.exit.thread66.i
  %i.lw = getelementptr inbounds nuw i8, ptr %.0377.i.i, i64 %i.lp ; 3 uses
  %i.lx = icmp ugt ptr %i.lw, %i.ko
  %i.ly = getelementptr inbounds nuw i8, ptr %.1269.i, i64 %i.lp ; 2 uses
  %i.lz = icmp ugt ptr %i.ly, %i.kw
  %or.cond449.i.i97 = select i1 %i.lx, i1 true, i1 %i.lz
  br i1 %or.cond449.i.i97, label %LZ4_wildCopy32.exit.i42, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.bj, %.preheader135.i
  %.011.i.i98 = phi ptr [ %i.mc, %.preheader135.i ], [ %.0377.i.i, %bb.bj ] ; 3 uses
  %.0.i29.i = phi ptr [ %i.md, %.preheader135.i ], [ %.1269.i, %bb.bj ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i.i98, ptr noundef nonnull align 1 dereferenceable(16) %.0.i29.i, i64 16, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %.011.i.i98, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i29.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ma, ptr noundef nonnull align 1 dereferenceable(16) %i.mb, i64 16, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %.011.i.i98, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i29.i, i64 32
  %i.me = icmp ult ptr %i.mc, %i.lw
  br i1 %i.me, label %.preheader135.i, label %LZ4_wildCopy32.exit.thread75.i, !llvm.loop !5

bb.bk:                                            ; preds = %.backedge.i75
  %.not.i.i32 = icmp ugt ptr %i.kz, %i.ku
  br i1 %.not.i.i32, label %LZ4_wildCopy32.exit.i42, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0377.i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.kz, i64 16, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.ld
  %i.mg = getelementptr inbounds nuw i8, ptr %.0377.i.i, i64 %i.ld
  br label %LZ4_wildCopy32.exit.thread75.i

LZ4_wildCopy32.exit.thread75.i:                   ; preds = %.preheader135.i, %bb.bl
  %.1.i33 = phi ptr [ %i.mf, %bb.bl ], [ %i.ly, %.preheader135.i ] ; 3 uses
  %.2379.i.i = phi ptr [ %i.mg, %bb.bl ], [ %i.lw, %.preheader135.i ] ; 25 uses
  %.val36.i = load i16, ptr %.1.i33, align 1, !tbaa !33 ; 5 uses
  %i.mh = zext i16 %.val36.i to i64               ; 5 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.1.i33, i64 2 ; 4 uses
  %i.mj = sub nsw i64 0, %i.mh
  %i.mk = getelementptr inbounds i8, ptr %.2379.i.i, i64 %i.mj ; 18 uses
  %i.ml = and i32 %i.lb, 15                       ; 2 uses
  %i.mm = icmp eq i32 %i.ml, 15
  br i1 %i.mm, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %LZ4_wildCopy32.exit.thread75.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.1.i33, i64 3 ; 4 uses
  %i.mo = icmp ugt ptr %i.mn, %i.ky
  br i1 %i.mo, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bn, !prof !30

bb.bn:                                            ; preds = %bb.bm
  %i.mp = load i8, ptr %i.mi, align 1, !tbaa !18  ; 2 uses
  %i.mq = zext i8 %i.mp to i64
  %.not23.i16.i = icmp eq i8 %i.mp, -1
  br i1 %.not23.i16.i, label %.preheader133.i, label %read_variable_length.exit19.thread83.i, !prof !30

.preheader133.i:                                  ; preds = %bb.bn, %bb.bo
  %.13.i93 = phi ptr [ %i.mr, %bb.bo ], [ %i.mn, %bb.bn ] ; 2 uses
  %.0.i18.i = phi i64 [ %i.mv, %bb.bo ], [ 255, %bb.bn ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.13.i93, i64 1 ; 5 uses
  %i.ms = icmp ugt ptr %i.mr, %i.ky
  br i1 %i.ms, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bo, !prof !30

bb.bo:                                            ; preds = %.preheader133.i
  %i.mt = load i8, ptr %.13.i93, align 1, !tbaa !18 ; 2 uses
  %i.mu = zext i8 %i.mt to i64
  %i.mv = add i64 %.0.i18.i, %i.mu                ; 3 uses
  %i.mw = icmp eq i8 %i.mt, -1
  br i1 %i.mw, label %.preheader133.i, label %read_variable_length.exit19.i, !llvm.loop !4

read_variable_length.exit19.i:                    ; preds = %bb.bo
  %i.mx = icmp eq i64 %i.mv, -1
  br i1 %i.mx, label %LZ4_wildCopy32.exit.thread.i55, label %read_variable_length.exit19.thread83.i

read_variable_length.exit19.thread83.i:           ; preds = %read_variable_length.exit19.i, %bb.bn
  %.019.i1787.i = phi i64 [ %i.mv, %read_variable_length.exit19.i ], [ %i.mq, %bb.bn ]
  %.1486.i = phi ptr [ %i.mr, %read_variable_length.exit19.i ], [ %i.mn, %bb.bn ] ; 3 uses
  %i.my = add i64 %.019.i1787.i, 19               ; 4 uses
  %i.mz = ptrtoint ptr %.2379.i.i to i64
  %i.na = xor i64 %i.mz, -1
  %i.nb = icmp ugt i64 %i.my, %i.na
  br i1 %i.nb, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bp, !prof !30

bb.bp:                                            ; preds = %read_variable_length.exit19.thread83.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 %i.my
  %.not435.i.i92 = icmp ult ptr %i.nc, %i.kx
  br i1 %.not435.i.i92, label %.thread91.i, label %.loopexit141.i

bb.bq:                                            ; preds = %LZ4_wildCopy32.exit.thread75.i
  %narrow.i.i34 = add nuw nsw i32 %i.ml, 4
  %i.nd = zext nneg i32 %narrow.i.i34 to i64      ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 %i.nd ; 2 uses
  %.not434.i.i35 = icmp ult ptr %i.ne, %i.kx
  br i1 %.not434.i.i35, label %bb.br, label %.loopexit141.i

bb.br:                                            ; preds = %bb.bq
  %i.nf = icmp uge ptr %i.mk, %i.kg
  %i.ng = icmp ugt i16 %.val36.i, 7
  %or.cond5.i.i = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond5.i.i, label %bb.bs, label %.thread91.i

bb.bs:                                            ; preds = %bb.br
  %i.nh = load i64, ptr %i.mk, align 1
  store i64 %i.nh, ptr %.2379.i.i, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.nk = load i64, ptr %i.nj, align 1
  store i64 %i.nk, ptr %i.ni, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.nn = load i16, ptr %i.nm, align 1
  store i16 %i.nn, ptr %i.nl, align 1
  br label %.backedge.i75.backedge

.thread91.i:                                      ; preds = %bb.br, %bb.bp
  %.9.i73 = phi ptr [ %i.mi, %bb.br ], [ %.1486.i, %bb.bp ] ; 6 uses
  %.2362.i.i74 = phi i64 [ %i.nd, %bb.br ], [ %i.my, %bb.bp ] ; 3 uses
  %i.no = icmp ult ptr %i.mk, %i.kg
  br i1 %i.no, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bt, !prof !47

bb.bt:                                            ; preds = %.thread91.i
  %i.np = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 %.2362.i.i74 ; 8 uses
  %i.nq = icmp ult i16 %.val36.i, 16
  br i1 %i.nq, label %bb.bu, label %.preheader131.i, !prof !30

bb.bu:                                            ; preds = %bb.bt
  switch i16 %.val36.i, label %bb.by [
    i16 1, label %bb.bv
    i16 2, label %bb.bw
    i16 4, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.nr = load i8, ptr %i.mk, align 1, !tbaa !18
  %i.ns = zext i8 %i.nr to i32
  %.sroa.0.0.isplat.i.i88 = mul nuw i32 %i.ns, 16843009
  br label %bb.cd

bb.bw:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload9.i.i84 = load i16, ptr %i.mk, align 1
  %.sroa.0.0.insert.ext.i.i85 = zext i16 %.sroa.0.0.copyload9.i.i84 to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i.i86 = shl nuw i32 %.sroa.0.0.insert.ext.i.i85, 16
  %.sroa.0.2.insert.insert.i.i87 = or disjoint i32 %.sroa.0.2.insert.shift.i.i86, %.sroa.0.0.insert.ext.i.i85
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload2.i.i77 = load i32, ptr %i.mk, align 1
  br label %bb.cd

bb.by:                                            ; preds = %bb.bu
  %i.nt = icmp samesign ult i16 %.val36.i, 8
  br i1 %i.nt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %.2379.i.i, align 1, !tbaa !27
  %i.nu = load i8, ptr %i.mk, align 1, !tbaa !18
  store i8 %i.nu, ptr %.2379.i.i, align 1, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !18
  %i.nx = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 1
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mk, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 2
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !18
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mk, i64 3
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 3
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !18
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.mh
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !40
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 4
  %i.oj = load i32, ptr %i.oh, align 1
  store i32 %i.oj, ptr %i.oi, align 1
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.mh
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !40
  %i.om = sext i32 %i.ol to i64
  %i.on = sub nsw i64 0, %i.om
  %i.oo = getelementptr inbounds i8, ptr %i.oh, i64 %i.on
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.op = load i64, ptr %i.mk, align 1
  store i64 %i.op, ptr %.2379.i.i, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.023.i.i89 = phi ptr [ %i.oo, %bb.bz ], [ %i.oq, %bb.ca ]
  %.0.i34.i = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %.09.i.i.i90 = phi ptr [ %.0.i34.i, %bb.cb ], [ %i.os, %bb.cc ] ; 2 uses
  %.0.i.i.i91 = phi ptr [ %.023.i.i89, %bb.cb ], [ %i.ot, %bb.cc ] ; 2 uses
  %i.or = load i64, ptr %.0.i.i.i91, align 1
  store i64 %i.or, ptr %.09.i.i.i90, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %.09.i.i.i90, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 8
  %i.ou = icmp ult ptr %i.os, %i.np
  br i1 %i.ou, label %bb.cc, label %.backedge.i75.backedge, !llvm.loop !1

bb.cd:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.sroa.9.0.i.i78 = phi i32 [ %.sroa.0.0.isplat.i.i88, %bb.bv ], [ %.sroa.0.2.insert.insert.i.i87, %bb.bw ], [ %.sroa.0.0.copyload2.i.i77, %bb.bx ] ; 5 uses
  store i32 %.sroa.9.0.i.i78, ptr %.2379.i.i, align 1
  %.sroa.9.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 4
  store i32 %.sroa.9.0.i.i78, ptr %.sroa.9.0..sroa_idx.i.i79, align 1
  %i.ov = icmp samesign ugt i64 %.2362.i.i74, 8
  br i1 %i.ov, label %.lr.ph.preheader.i80, label %.backedge.i75.backedge

.lr.ph.preheader.i80:                             ; preds = %bb.cd
  %.0.i33186.i = getelementptr inbounds nuw i8, ptr %.2379.i.i, i64 8 ; 4 uses
  %7 = ptrtoaddr ptr %.2379.i.i to i64            ; 3 uses
  %i.ow = add i64 %.2362.i.i74, %7
  %i.ox = add i64 %7, 16
  %i.oy = tail call i64 @llvm.umax.i64(i64 %i.ow, i64 %i.ox)
  %i.oz = add i64 %i.oy, -9
  %i.pa = sub i64 %i.oz, %7                       ; 2 uses
  %i.pb = lshr i64 %i.pa, 3
  %i.pc = add nuw nsw i64 %i.pb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.pa, 24
  br i1 %min.iters.check, label %.lr.ph.i81.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i80
  %n.vec = and i64 %i.pc, 4611686018427387900     ; 3 uses
  %i.pd = shl i64 %n.vec, 3                       ; 2 uses
  %i.pe = getelementptr i8, ptr %.0.i33186.i, i64 %i.pd
  %i.pf = getelementptr i8, ptr %.2379.i.i, i64 %i.pd
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i.i78, i64 0
  %i.pg = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ph = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i33186.i, i64 %i.ph
  %i.pi = getelementptr i8, ptr %.0.i33186.i, i64 %i.ph
  %next.gep622 = getelementptr i8, ptr %i.pi, i64 16
  store <4 x i32> %i.pg, ptr %next.gep, align 1
  store <4 x i32> %i.pg, ptr %next.gep622, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pj = icmp eq i64 %index.next, %n.vec
  br i1 %i.pj, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pc, %n.vec
  br i1 %cmp.n, label %.backedge.i75.backedge, label %.lr.ph.i81.preheader

.backedge.i75.backedge:                           ; preds = %.preheader131.i, %.lr.ph.i81, %bb.cc, %middle.block, %bb.cd, %bb.bs
  %.0.i31.be = phi ptr [ %i.mi, %bb.bs ], [ %.9.i73, %bb.cc ], [ %.9.i73, %bb.cd ], [ %.9.i73, %middle.block ], [ %.9.i73, %.lr.ph.i81 ], [ %.9.i73, %.preheader131.i ]
  %.0377.i.i.be = phi ptr [ %i.ne, %bb.bs ], [ %i.np, %bb.cc ], [ %i.np, %bb.cd ], [ %i.np, %middle.block ], [ %i.np, %.lr.ph.i81 ], [ %i.np, %.preheader131.i ]
  br label %.backedge.i75

.lr.ph.i81.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block
  %.0.i33188.i.ph = phi ptr [ %.0.i33186.i, %.lr.ph.preheader.i80 ], [ %i.pe, %middle.block ]
  %.pn.i187.i.ph = phi ptr [ %.2379.i.i, %.lr.ph.preheader.i80 ], [ %i.pf, %middle.block ]
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %.0.i33188.i = phi ptr [ %.0.i33.i83, %.lr.ph.i81 ], [ %.0.i33188.i.ph, %.lr.ph.i81.preheader ] ; 3 uses
  %.pn.i187.i = phi ptr [ %.0.i33188.i, %.lr.ph.i81 ], [ %.pn.i187.i.ph, %.lr.ph.i81.preheader ]
  store i32 %.sroa.9.0.i.i78, ptr %.0.i33188.i, align 1
  %.sroa.9.0..sroa_idx3.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i187.i, i64 12
  store i32 %.sroa.9.0.i.i78, ptr %.sroa.9.0..sroa_idx3.i.i82, align 1
  %.0.i33.i83 = getelementptr inbounds nuw i8, ptr %.0.i33188.i, i64 8 ; 2 uses
  %i.pk = icmp ult ptr %.0.i33.i83, %i.np
  br i1 %i.pk, label %.lr.ph.i81, label %.backedge.i75.backedge, !llvm.loop !139

.preheader131.i:                                  ; preds = %bb.bt, %.preheader131.i
  %.011.i30.i = phi ptr [ %i.pn, %.preheader131.i ], [ %.2379.i.i, %bb.bt ] ; 3 uses
  %.0.i31.i = phi ptr [ %i.po, %.preheader131.i ], [ %i.mk, %bb.bt ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i30.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i31.i, i64 16, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %.011.i30.i, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.pl, ptr noundef nonnull align 1 dereferenceable(16) %i.pm, i64 16, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %.011.i30.i, i64 32 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 32
  %i.pp = icmp ult ptr %i.pn, %i.np
  br i1 %i.pp, label %.preheader131.i, label %.backedge.i75.backedge, !llvm.loop !5

.lr.ph191.i:                                      ; preds = %.preheader128.i, %bb.cf
  %.in.i41 = phi i32 [ %i.qs, %bb.cf ], [ %i.vr, %.preheader128.i ]
  %i.pq = phi i32 [ %i.qr, %bb.cf ], [ %i.vq, %.preheader128.i ] ; 2 uses
  %i.pr = phi ptr [ %i.qp, %bb.cf ], [ %i.vo, %.preheader128.i ] ; 4 uses
  %.6383.i190.i = phi ptr [ %i.qo, %bb.cf ], [ %.6383.i.ph.i, %.preheader128.i ] ; 4 uses
  %i.ps = zext nneg i32 %.in.i41 to i64           ; 3 uses
  %i.pt = icmp ult ptr %i.pr, %i.kn
  %i.pu = icmp ule ptr %.6383.i190.i, %i.ko
  %i.pv = and i1 %i.pt, %i.pu
  br i1 %i.pv, label %bb.ce, label %LZ4_wildCopy32.exit.i42, !prof !34

bb.ce:                                            ; preds = %.lr.ph191.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6383.i190.i, ptr noundef nonnull align 1 dereferenceable(16) %i.pr, i64 16, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %.6383.i190.i, i64 %i.ps ; 6 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.ps ; 3 uses
  %i.py = and i32 %i.pq, 15                       ; 2 uses
  %i.pz = zext nneg i32 %i.py to i64              ; 2 uses
  %.val.i65 = load i16, ptr %i.px, align 1, !tbaa !33 ; 2 uses
  %i.qa = zext i16 %.val.i65 to i64               ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 2 ; 3 uses
  %i.qc = sub nsw i64 0, %i.qa
  %i.qd = getelementptr inbounds i8, ptr %i.pw, i64 %i.qc ; 5 uses
  %i.qe = icmp eq i32 %i.py, 15
  %i.qf = icmp ult i16 %.val.i65, 8
  %or.cond3.i.not122.i = select i1 %i.qe, i1 true, i1 %i.qf
  %.not442.i.i = icmp ult ptr %i.qd, %i.kg
  %or.cond117.i = select i1 %or.cond3.i.not122.i, i1 true, i1 %.not442.i.i
  br i1 %or.cond117.i, label %.loopexit129.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qg = load i64, ptr %i.qd, align 1
  store i64 %i.qg, ptr %i.pw, align 1
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qj = load i64, ptr %i.qi, align 1
  store i64 %i.qj, ptr %i.qh, align 1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qm = load i16, ptr %i.ql, align 1
  store i16 %i.qm, ptr %i.qk, align 1
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pz
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.px, i64 3 ; 2 uses
  %i.qq = load i8, ptr %i.qb, align 1, !tbaa !18
  %i.qr = zext i8 %i.qq to i32                    ; 3 uses
  %i.qs = lshr i32 %i.qr, 4                       ; 2 uses
  %cond.i.i66 = icmp eq i32 %i.qs, 15
  br i1 %cond.i.i66, label %._crit_edge.i67, label %.lr.ph191.i

._crit_edge.i67:                                  ; preds = %bb.cf, %.preheader128.i
  %.3.lcssa.i68 = phi ptr [ %.3.ph.i40, %.preheader128.i ], [ %i.qb, %bb.cf ]
  %.6383.i.lcssa.i = phi ptr [ %.6383.i.ph.i, %.preheader128.i ], [ %i.qo, %bb.cf ] ; 2 uses
  %.lcssa152.i = phi ptr [ %i.vo, %.preheader128.i ], [ %i.qp, %bb.cf ] ; 3 uses
  %.lcssa149.i = phi i32 [ %i.vq, %.preheader128.i ], [ %i.qr, %bb.cf ]
  %i.qt = getelementptr inbounds i8, ptr %i.kk, i64 -15 ; 2 uses
  %.not22.i20.i = icmp ult ptr %.lcssa152.i, %i.qt
  br i1 %.not22.i20.i, label %bb.cg, label %LZ4_wildCopy32.exit.thread.i55, !prof !34

bb.cg:                                            ; preds = %._crit_edge.i67
  %i.qu = getelementptr inbounds nuw i8, ptr %.3.lcssa.i68, i64 2 ; 2 uses
  %i.qv = load i8, ptr %.lcssa152.i, align 1, !tbaa !18 ; 2 uses
  %i.qw = zext i8 %i.qv to i64
  %.not23.i22.i = icmp eq i8 %i.qv, -1
  br i1 %.not23.i22.i, label %.preheader127.i, label %read_variable_length.exit24.thread98.i, !prof !30

.preheader127.i:                                  ; preds = %bb.cg, %bb.ch
  %.15.i69 = phi ptr [ %i.qx, %bb.ch ], [ %i.qu, %bb.cg ] ; 2 uses
  %.0.i23.i = phi i64 [ %i.rb, %bb.ch ], [ 255, %bb.cg ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.15.i69, i64 1 ; 5 uses
  %i.qy = icmp ugt ptr %i.qx, %i.qt
  br i1 %i.qy, label %LZ4_wildCopy32.exit.thread.i55, label %bb.ch, !prof !30

bb.ch:                                            ; preds = %.preheader127.i
  %i.qz = load i8, ptr %.15.i69, align 1, !tbaa !18 ; 2 uses
  %i.ra = zext i8 %i.qz to i64
  %i.rb = add i64 %.0.i23.i, %i.ra                ; 3 uses
  %i.rc = icmp eq i8 %i.qz, -1
  br i1 %i.rc, label %.preheader127.i, label %read_variable_length.exit24.i, !llvm.loop !4

read_variable_length.exit24.i:                    ; preds = %bb.ch
  %i.rd = icmp eq i64 %i.rb, -1
  br i1 %i.rd, label %LZ4_wildCopy32.exit.thread.i55, label %read_variable_length.exit24.thread98.i

read_variable_length.exit24.thread98.i:           ; preds = %read_variable_length.exit24.i, %bb.cg
  %.019.i21102.i = phi i64 [ %i.rb, %read_variable_length.exit24.i ], [ %i.qw, %bb.cg ]
  %.16101.i = phi ptr [ %i.qx, %read_variable_length.exit24.i ], [ %i.qu, %bb.cg ] ; 3 uses
  %i.re = add i64 %.019.i21102.i, 15              ; 3 uses
  %i.rf = ptrtoint ptr %.6383.i.lcssa.i to i64
  %i.rg = xor i64 %i.rf, -1
  %i.rh = icmp ugt i64 %i.re, %i.rg
  %i.ri = ptrtoint ptr %.16101.i to i64
  %i.rj = xor i64 %i.ri, -1
  %i.rk = icmp ugt i64 %i.re, %i.rj
  %or.cond120.i = or i1 %i.rh, %i.rk
  br i1 %or.cond120.i, label %LZ4_wildCopy32.exit.thread.i55, label %LZ4_wildCopy32.exit.i42, !prof !46

LZ4_wildCopy32.exit.i42:                          ; preds = %bb.bk, %bb.bj, %.lr.ph191.i, %read_variable_length.exit24.thread98.i
  %.4.i43 = phi ptr [ %.16101.i, %read_variable_length.exit24.thread98.i ], [ %i.pr, %.lr.ph191.i ], [ %i.kz, %bb.bk ], [ %.1269.i, %bb.bj ] ; 7 uses
  %.7384.i.i = phi ptr [ %.6383.i.lcssa.i, %read_variable_length.exit24.thread98.i ], [ %.6383.i190.i, %.lr.ph191.i ], [ %.0377.i.i, %bb.bj ], [ %.0377.i.i, %bb.bk ] ; 8 uses
  %.0366.i.i44 = phi i32 [ %.lcssa149.i, %read_variable_length.exit24.thread98.i ], [ %i.pq, %.lr.ph191.i ], [ %i.lb, %bb.bj ], [ %i.lb, %bb.bk ]
  %.5365.i.i45 = phi i64 [ %i.re, %read_variable_length.exit24.thread98.i ], [ %i.ps, %.lr.ph191.i ], [ %i.ld, %bb.bk ], [ %i.lp, %bb.bj ] ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.7384.i.i, i64 %.5365.i.i45 ; 4 uses
  %i.rm = getelementptr inbounds i8, ptr %i.km, i64 -12
  %i.rn = icmp ugt ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy32.exit.i42
  %i.ro = getelementptr inbounds nuw i8, ptr %.4.i43, i64 %.5365.i.i45 ; 2 uses
  %i.rp = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.rq = icmp ugt ptr %i.ro, %i.rp
  br i1 %i.rq, label %bb.cj, label %.preheader126.i

bb.cj:                                            ; preds = %bb.ci, %LZ4_wildCopy32.exit.i42
  %i.rr = getelementptr inbounds nuw i8, ptr %.4.i43, i64 %.5365.i.i45
  %i.rs = icmp ugt ptr %i.rr, %i.kk               ; 2 uses
  %i.rt = ptrtoint ptr %i.kk to i64
  %i.ru = ptrtoint ptr %.4.i43 to i64
  %i.rv = sub i64 %i.rt, %i.ru                    ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.7384.i.i, i64 %i.rv
  %.0375.i.i60 = select i1 %i.rs, ptr %i.rw, ptr %i.rl ; 2 uses
  %i.rx = icmp ugt ptr %.0375.i.i60, %i.km
  br i1 %i.rx, label %.thread109.i, label %bb.ck

.thread109.i:                                     ; preds = %bb.cj
  %i.ry = ptrtoint ptr %.7384.i.i to i64
  %i.rz = sub i64 %i.kr, %i.ry                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i.i, ptr nonnull align 1 %.4.i43, i64 %i.rz, i1 false)
  %i.sa = getelementptr inbounds nuw i8, ptr %.7384.i.i, i64 %i.rz
  br label %bb.cy

bb.ck:                                            ; preds = %bb.cj
  %.6.i.i61 = select i1 %i.rs, i64 %i.rv, i64 %.5365.i.i45 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i.i, ptr nonnull align 1 %.4.i43, i64 %.6.i.i61, i1 false)
  %i.sb = getelementptr inbounds nuw i8, ptr %.4.i43, i64 %.6.i.i61 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.7384.i.i, i64 %.6.i.i61 ; 2 uses
  %i.sd = icmp ne ptr %.0375.i.i60, %i.km
  %i.se = getelementptr inbounds i8, ptr %i.kk, i64 -2
  %.not441.i.i62 = icmp ult ptr %i.sb, %i.se
end_hunk_4
