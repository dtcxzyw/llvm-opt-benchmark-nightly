Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_compress_forceExtDict:bb.a
  %.0.i63.lcssa = phi i64 [ %i.vp, %bb.dt ], [ %i.vv, %.lr.ph507.preheader ]
  %.13.i64.lcssa = phi ptr [ %.13.i64503, %bb.dt ], [ %scevgep652, %.lr.ph507.preheader ] ; 2 uses
  %i.vx = trunc nuw i64 %.0.i63.lcssa to i8
  store i8 %i.vx, ptr %.13.i64.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit97

bb.du:                                            ; preds = %.thread397
  %.0400.tr.i58 = trunc nuw nsw i64 %i.vn to i8
  %i.vy = shl nuw i8 %.0400.tr.i58, 4
  store i8 %i.vy, ptr %.12.i56, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit97

LZ4_compress_generic_validated.exit97:            ; preds = %._crit_edge508, %bb.du
  %.13.pn.i59 = phi ptr [ %.13.i64.lcssa, %._crit_edge508 ], [ %.12.i56, %bb.du ]
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
  store ptr %1, ptr %i.we, align 8, !tbaa !40
  store i32 %3, ptr %i.w, align 8, !tbaa !21
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 65537) i32 @LZ4_saveDict(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.b) ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.j, align 8, !tbaa !40
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !21
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
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
  br i1 %i.i, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !15
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = icmp samesign ult i32 %3, 64
  br i1 %i.p, label %.preheader133, label %.preheader143

.preheader143:                                    ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.s = load i8, ptr %0, align 1, !tbaa !15
  %i.t = zext i8 %i.s to i32                      ; 3 uses
  %i.u = lshr i32 %i.t, 4                         ; 2 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = icmp slt i32 %2, 18
  br i1 %i.w, label %.loopexit, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader143
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph206, %.backedge
  %i.ab = phi i64 [ %i.v, %.lr.ph206 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.ac = phi i32 [ %i.u, %.lr.ph206 ], [ %i.cm, %.backedge ]
  %i.ad = phi i32 [ %i.t, %.lr.ph206 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.ae = phi ptr [ %i.r, %.lr.ph206 ], [ %i.cj, %.backedge ] ; 5 uses
  %.0380.i205 = phi ptr [ %1, %.lr.ph206 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0204 = phi ptr [ %0, %.lr.ph206 ], [ %.0.be, %.backedge ]
  %i.af = icmp eq i32 %i.ac, 15
  br i1 %i.af, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp ult ptr %i.ae, %i.x
  br i1 %.not.i10, label %bb.i, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !15  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0204, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ag, -1
  br i1 %.not21.i, label %.preheader141.preheader, label %read_variable_length.exit.thread65, !prof !27

.preheader141.preheader:                          ; preds = %bb.i
  %.not22.i462 = icmp ult ptr %i.ah, %i.x
  br i1 %.not22.i462, label %.lr.ph465, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread65:               ; preds = %bb.i
  %i.ai = zext i8 %i.ag to i64
  br label %bb.j

.preheader141:                                    ; preds = %.lr.ph465
  %.not22.i = icmp ult ptr %i.al, %i.x
  br i1 %.not22.i, label %.lr.ph465, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph465:                                        ; preds = %.preheader141.preheader, %.preheader141
  %.0.i11464 = phi i64 [ %i.am, %.preheader141 ], [ 255, %.preheader141.preheader ]
  %.12463 = phi ptr [ %i.al, %.preheader141 ], [ %i.ah, %.preheader141.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.12463, align 1, !tbaa !15 ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.12463, i64 1 ; 5 uses
  %i.am = add i64 %.0.i11464, %i.ak               ; 3 uses
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %.preheader141, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph465
  %i.ao = icmp eq i64 %i.am, -1
  br i1 %i.ao, label %LZ4_wildCopy32.exit.thread, label %bb.j

bb.j:                                             ; preds = %read_variable_length.exit.thread65, %read_variable_length.exit
  %.016.i69 = phi i64 [ %i.ai, %read_variable_length.exit.thread65 ], [ %i.am, %read_variable_length.exit ]
  %.1368 = phi ptr [ %i.ah, %read_variable_length.exit.thread65 ], [ %i.al, %read_variable_length.exit ] ; 5 uses
  %i.ap = add i64 %.016.i69, 15                   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0380.i205, i64 %i.ap ; 4 uses
  %i.ar = ptrtoint ptr %.1368 to i64
  %i.as = xor i64 %i.ar, -1
  %i.at = icmp ugt i64 %i.ap, %i.as
  br i1 %i.at, label %LZ4_wildCopy32.exit.thread, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ugt ptr %i.aq, %i.h
  %i.av = getelementptr inbounds nuw i8, ptr %.1368, i64 %i.ap ; 2 uses
  %i.aw = icmp ugt ptr %i.av, %i.y
  %or.cond450.i = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader140

.preheader140:                                    ; preds = %bb.k, %.preheader140
  %.011.i = phi ptr [ %i.az, %.preheader140 ], [ %.0380.i205, %bb.k ] ; 3 uses
  %.0.i30 = phi ptr [ %i.ba, %.preheader140 ], [ %.1368, %bb.k ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i30, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i30, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32
  %i.bb = icmp ult ptr %i.az, %i.aq
  br i1 %i.bb, label %.preheader140, label %LZ4_wildCopy32.exit.thread75, !llvm.loop !4

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i205, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %.0380.i205, i64 %i.ab
  br label %LZ4_wildCopy32.exit.thread75

LZ4_wildCopy32.exit.thread75:                     ; preds = %.preheader140, %bb.l
  %.1 = phi ptr [ %i.bc, %bb.l ], [ %i.av, %.preheader140 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bd, %bb.l ], [ %i.aq, %.preheader140 ] ; 23 uses
  %.val37 = load i16, ptr %.1, align 1, !tbaa !30 ; 5 uses
  %i.be = zext i16 %.val37 to i64                 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds i8, ptr %.2382.i, i64 %i.bg ; 16 uses
  %i.bi = and i32 %i.ad, 15                       ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 15
  br i1 %i.bj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread75
  %.not.i12 = icmp ult ptr %i.bf, %i.aa
  br i1 %.not.i12, label %bb.n, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !15  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i14 = icmp eq i8 %i.bk, -1
  br i1 %.not21.i14, label %.preheader138.preheader, label %read_variable_length.exit17.thread84, !prof !27

.preheader138.preheader:                          ; preds = %bb.n
  %.not22.i16467 = icmp ult ptr %i.bl, %i.aa
  br i1 %.not22.i16467, label %.lr.ph470, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit17.thread84:             ; preds = %bb.n
  %i.bm = zext i8 %i.bk to i64
  br label %bb.o

.preheader138:                                    ; preds = %.lr.ph470
  %.not22.i16 = icmp ult ptr %i.bp, %i.aa
  br i1 %.not22.i16, label %.lr.ph470, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph470:                                        ; preds = %.preheader138.preheader, %.preheader138
  %.0.i15469 = phi i64 [ %i.bq, %.preheader138 ], [ 255, %.preheader138.preheader ]
  %.14468 = phi ptr [ %i.bp, %.preheader138 ], [ %i.bl, %.preheader138.preheader ] ; 2 uses
  %i.bn = load i8, ptr %.14468, align 1, !tbaa !15 ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.14468, i64 1 ; 5 uses
  %i.bq = add i64 %.0.i15469, %i.bo               ; 3 uses
  %i.br = icmp eq i8 %i.bn, -1
  br i1 %i.br, label %.preheader138, label %read_variable_length.exit17, !llvm.loop !3

read_variable_length.exit17:                      ; preds = %.lr.ph470
  %i.bs = icmp eq i64 %i.bq, -1
  br i1 %i.bs, label %LZ4_wildCopy32.exit.thread, label %bb.o

bb.o:                                             ; preds = %read_variable_length.exit17.thread84, %read_variable_length.exit17
  %.016.i1388 = phi i64 [ %i.bm, %read_variable_length.exit17.thread84 ], [ %i.bq, %read_variable_length.exit17 ]
  %.1587 = phi ptr [ %i.bl, %read_variable_length.exit17.thread84 ], [ %i.bp, %read_variable_length.exit17 ] ; 3 uses
  %i.bt = add i64 %.016.i1388, 19                 ; 4 uses
  %i.bu = ptrtoint ptr %.2382.i to i64
  %i.bv = xor i64 %i.bu, -1
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bt
  %.not436.i = icmp ult ptr %i.bx, %i.z
  br i1 %.not436.i, label %.thread92, label %.loopexit146

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread75
  %narrow.i = add nuw nsw i32 %i.bi, 4
  %i.by = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.by ; 2 uses
  %.not.i = icmp ult ptr %i.bz, %i.z
  br i1 %.not.i, label %bb.r, label %.loopexit146

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp uge ptr %i.bh, %1
  %i.cb = icmp ugt i16 %.val37, 7
  %or.cond5.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread92

bb.s:                                             ; preds = %bb.r
  %i.cc = load i64, ptr %i.bh, align 1
  store i64 %i.cc, ptr %.2382.i, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cf = load i64, ptr %i.ce, align 1
  store i64 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.2382.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.ci = load i16, ptr %i.ch, align 1
  store i16 %i.ci, ptr %i.cg, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader136, %.lr.ph, %bb.ac, %middle.block, %bb.ad, %bb.s
  %.0.be = phi ptr [ %i.bf, %bb.s ], [ %.10, %bb.ac ], [ %.10, %bb.ad ], [ %.10, %middle.block ], [ %.10, %.lr.ph ], [ %.10, %.preheader136 ] ; 3 uses
  %.0380.i.be = phi ptr [ %i.bz, %bb.s ], [ %i.cq, %bb.ac ], [ %i.cq, %bb.ad ], [ %i.cq, %middle.block ], [ %i.cq, %.lr.ph ], [ %i.cq, %.preheader136 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.be, i64 1 ; 3 uses
  %i.ck = load i8, ptr %.0.be, align 1, !tbaa !15
  %i.cl = zext i8 %i.ck to i32                    ; 3 uses
  %i.cm = lshr i32 %i.cl, 4                       ; 2 uses
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = icmp ugt ptr %i.cj, %i.q
  br i1 %i.co, label %.loopexit, label %bb.g

.thread92:                                        ; preds = %bb.p, %bb.r
  %.10 = phi ptr [ %i.bf, %bb.r ], [ %.1587, %bb.p ] ; 6 uses
  %.2360.i = phi i64 [ %i.by, %bb.r ], [ %i.bt, %bb.p ] ; 3 uses
  %i.cp = icmp ult ptr %i.bh, %1
  br i1 %i.cp, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !43

bb.t:                                             ; preds = %.thread92
  %i.cq = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.2360.i ; 8 uses
  %i.cr = icmp ult i16 %.val37, 16
  br i1 %i.cr, label %bb.u, label %.preheader136, !prof !27

bb.u:                                             ; preds = %bb.t
  switch i16 %.val37, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cs = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.ct = zext i8 %i.cs to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.ct, 16843009
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bh, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bh, align 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.cu = icmp samesign ult i16 %.val37, 8
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2382.i, align 1, !tbaa !24
  %i.cv = load i16, ptr %i.bh, align 1
  store i16 %i.cv, ptr %.2382.i, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.2382.i, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.cy = load i16, ptr %i.cx, align 1
  store i16 %i.cy, ptr %i.cw, align 1
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.be
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !37
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  %i.de = load i32, ptr %i.dc, align 1
  store i32 %i.de, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.be
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !37
  %i.dh = sext i32 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.dc, i64 %i.di
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dk = load i64, ptr %i.bh, align 1
  store i64 %i.dk, ptr %.2382.i, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.019.i = phi ptr [ %i.dj, %bb.z ], [ %i.dl, %bb.aa ]
  %.0.i35 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.09.i.i = phi ptr [ %.0.i35, %bb.ab ], [ %i.dn, %bb.ac ] ; 2 uses
  %.0.i.i = phi ptr [ %.019.i, %bb.ab ], [ %i.do, %bb.ac ] ; 2 uses
  %i.dm = load i64, ptr %.0.i.i, align 1
  store i64 %i.dm, ptr %.09.i.i, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.dp = icmp ult ptr %i.dn, %i.cq
  br i1 %i.dp, label %bb.ac, label %.backedge, !llvm.loop !1

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2382.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.dq = icmp samesign ugt i64 %.2360.i, 8
  br i1 %i.dq, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %.0.i34201 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8 ; 4 uses
  %4 = ptrtoaddr ptr %.2382.i to i64              ; 3 uses
  %i.dr = add i64 %.2360.i, %4
  %i.ds = add i64 %4, 16
  %i.dt = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.ds)
  %i.du = add i64 %i.dt, -9
  %i.dv = sub i64 %i.du, %4                       ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dv, 24
  br i1 %min.iters.check, label %.lr.ph.preheader545, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dx, 4611686018427387900     ; 3 uses
  %i.dy = shl i64 %n.vec, 3                       ; 2 uses
  %i.dz = getelementptr i8, ptr %.0.i34201, i64 %i.dy
  %i.ea = getelementptr i8, ptr %.2382.i, i64 %i.dy
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.eb = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ec = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i34201, i64 %i.ec
  %i.ed = getelementptr i8, ptr %.0.i34201, i64 %i.ec
  %next.gep483 = getelementptr i8, ptr %i.ed, i64 16
  store <4 x i32> %i.eb, ptr %next.gep, align 1
  store <4 x i32> %i.eb, ptr %next.gep483, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.backedge, label %.lr.ph.preheader545

.lr.ph.preheader545:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i34203.ph = phi ptr [ %.0.i34201, %.lr.ph.preheader ], [ %i.dz, %middle.block ]
  %.pn.i202.ph = phi ptr [ %.2382.i, %.lr.ph.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader545, %.lr.ph
  %.0.i34203 = phi ptr [ %.0.i34, %.lr.ph ], [ %.0.i34203.ph, %.lr.ph.preheader545 ] ; 3 uses
  %.pn.i202 = phi ptr [ %.0.i34203, %.lr.ph ], [ %.pn.i202.ph, %.lr.ph.preheader545 ]
  store i32 %.sroa.9.0.i, ptr %.0.i34203, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i202, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i34 = getelementptr inbounds nuw i8, ptr %.0.i34203, i64 8 ; 2 uses
  %i.ef = icmp ult ptr %.0.i34, %i.cq
  br i1 %i.ef, label %.lr.ph, label %.backedge, !llvm.loop !59

.preheader136:                                    ; preds = %bb.t, %.preheader136
  %.011.i31 = phi ptr [ %i.ei, %.preheader136 ], [ %.2382.i, %bb.t ] ; 3 uses
  %.0.i32 = phi ptr [ %i.ej, %.preheader136 ], [ %i.bh, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i31, ptr noundef nonnull align 1 dereferenceable(16) %.0.i32, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %.011.i31, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eg, ptr noundef nonnull align 1 dereferenceable(16) %i.eh, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %.011.i31, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i32, i64 32
  %i.ek = icmp ult ptr %i.ei, %i.cq
  br i1 %i.ek, label %.preheader136, label %.backedge, !llvm.loop !4

.lr.ph212:                                        ; preds = %.preheader133, %bb.af
  %.in = phi i32 [ %i.fn, %bb.af ], [ %i.kl, %.preheader133 ]
  %i.el = phi i32 [ %i.fm, %bb.af ], [ %i.kk, %.preheader133 ] ; 2 uses
  %i.em = phi ptr [ %i.fk, %bb.af ], [ %i.ki, %.preheader133 ] ; 4 uses
  %.6386.i211 = phi ptr [ %i.fj, %bb.af ], [ %.6386.i.ph, %.preheader133 ] ; 4 uses
  %i.en = zext nneg i32 %.in to i64               ; 3 uses
  %i.eo = icmp ult ptr %i.em, %i.g
  %i.ep = icmp ule ptr %.6386.i211, %i.h
  %i.eq = and i1 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ae, label %.loopexit.thread, !prof !31

bb.ae:                                            ; preds = %.lr.ph212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6386.i211, ptr noundef nonnull align 1 dereferenceable(16) %i.em, i64 16, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.6386.i211, i64 %i.en ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en ; 3 uses
  %i.et = and i32 %i.el, 15                       ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %.val = load i16, ptr %i.es, align 1, !tbaa !30 ; 2 uses
  %i.ev = zext i16 %.val to i64                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 2 ; 2 uses
  %i.ex = sub nsw i64 0, %i.ev
  %i.ey = getelementptr inbounds i8, ptr %i.er, i64 %i.ex ; 5 uses
  %i.ez = icmp eq i32 %i.et, 15
  %i.fa = icmp ult i16 %.val, 8
  %or.cond3.i.not126 = select i1 %i.ez, i1 true, i1 %i.fa
  %.not443.i = icmp ult ptr %i.ey, %1
  %or.cond = select i1 %or.cond3.i.not126, i1 true, i1 %.not443.i
  br i1 %or.cond, label %.loopexit134, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = load i64, ptr %i.ey, align 1
  store i64 %i.fb, ptr %i.er, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fe = load i64, ptr %i.fd, align 1
  store i64 %i.fe, ptr %i.fc, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fh = load i16, ptr %i.fg, align 1
  store i16 %i.fh, ptr %i.ff, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 3 ; 2 uses
  %i.fl = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fm = zext i8 %i.fl to i32                    ; 3 uses
  %i.fn = lshr i32 %i.fm, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fn, 15
  br i1 %.not439.i, label %.thread96, label %.lr.ph212

.loopexit:                                        ; preds = %.backedge, %.preheader143
  %.4 = phi ptr [ %i.r, %.preheader143 ], [ %i.cj, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader143 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.t, %.preheader143 ], [ %i.cl, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.v, %.preheader143 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.fo = icmp eq i64 %.4362.i, 15
  br i1 %i.fo, label %.thread96, label %.loopexit.thread

.thread96:                                        ; preds = %bb.af, %.preheader133, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %i.kk, %.preheader133 ], [ %i.fm, %bb.af ]
  %.7387.i103 = phi ptr [ %.7387.i, %.loopexit ], [ %.6386.i.ph, %.preheader133 ], [ %i.fj, %bb.af ] ; 2 uses
  %.4101 = phi ptr [ %.4, %.loopexit ], [ %i.ki, %.preheader133 ], [ %i.fk, %bb.af ] ; 4 uses
  %i.fp = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %.not.i18 = icmp ult ptr %.4101, %i.fp
  br i1 %.not.i18, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ag:                                            ; preds = %.thread96
  %i.fq = load i8, ptr %.4101, align 1, !tbaa !15 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.4101, i64 1 ; 4 uses
  %.not21.i20 = icmp eq i8 %i.fq, -1
  br i1 %.not21.i20, label %.preheader132.preheader, label %read_variable_length.exit23.thread109, !prof !27

.preheader132.preheader:                          ; preds = %bb.ag
  %.not22.i22473 = icmp ult ptr %i.fr, %i.fp
  br i1 %.not22.i22473, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit23.thread109:            ; preds = %bb.ag
  %i.fs = zext i8 %i.fq to i64
  br label %bb.ah

.preheader132:                                    ; preds = %.lr.ph476
  %.not22.i22 = icmp ult ptr %i.fv, %i.fp
  br i1 %.not22.i22, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph476:                                        ; preds = %.preheader132.preheader, %.preheader132
  %.0.i21475 = phi i64 [ %i.fw, %.preheader132 ], [ 255, %.preheader132.preheader ]
  %.16474 = phi ptr [ %i.fv, %.preheader132 ], [ %i.fr, %.preheader132.preheader ] ; 2 uses
  %i.ft = load i8, ptr %.16474, align 1, !tbaa !15 ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.16474, i64 1 ; 5 uses
  %i.fw = add i64 %.0.i21475, %i.fu               ; 3 uses
  %i.fx = icmp eq i8 %i.ft, -1
  br i1 %i.fx, label %.preheader132, label %read_variable_length.exit23, !llvm.loop !3

read_variable_length.exit23:                      ; preds = %.lr.ph476
  %i.fy = icmp eq i64 %i.fw, -1
  br i1 %i.fy, label %LZ4_wildCopy32.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %read_variable_length.exit23.thread109, %read_variable_length.exit23
  %.016.i19113 = phi i64 [ %i.fs, %read_variable_length.exit23.thread109 ], [ %i.fw, %read_variable_length.exit23 ]
  %.17112 = phi ptr [ %i.fr, %read_variable_length.exit23.thread109 ], [ %i.fv, %read_variable_length.exit23 ] ; 3 uses
  %i.fz = add i64 %.016.i19113, 15                ; 3 uses
  %i.ga = ptrtoint ptr %.7387.i103 to i64
  %i.gb = xor i64 %i.ga, -1
  %i.gc = icmp ugt i64 %i.fz, %i.gb
  %i.gd = ptrtoint ptr %.17112 to i64
  %i.ge = xor i64 %i.gd, -1
  %i.gf = icmp ugt i64 %i.fz, %i.ge
  %or.cond124 = select i1 %i.gc, i1 true, i1 %i.gf, !prof !44
  br i1 %or.cond124, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %.lr.ph212, %bb.ah, %.loopexit
  %.0364.i104 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i105, %bb.ah ], [ %i.el, %.lr.ph212 ]
  %.7387.i102 = phi ptr [ %.7387.i, %.loopexit ], [ %.7387.i103, %bb.ah ], [ %.6386.i211, %.lr.ph212 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17112, %bb.ah ], [ %i.em, %.lr.ph212 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.fz, %bb.ah ], [ %i.en, %.lr.ph212 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.7387.i102, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1368, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i102, %.loopexit.thread ], [ %.0380.i205, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.gg, %.loopexit.thread ], [ %i.aq, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i104, %.loopexit.thread ], [ %i.ad, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ap, %bb.k ] ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gi = icmp ugt ptr %.3377.i, %i.gh
  br i1 %i.gi, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gl = icmp ugt ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.aj, label %.preheader131

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.gm, %i.d
  %i.gn = icmp ugt ptr %.3377.i, %i.f
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.gn
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe:bb.a
  %next.gep506 = getelementptr i8, ptr %.16.i, i64 %index504
  %wide.load507 = load <8 x i8>, ptr %next.gep505, align 1, !tbaa !15
  store <8 x i8> %wide.load507, ptr %next.gep506, align 1, !tbaa !15
  %index.next508 = add nuw i64 %index504, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.jx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %i.jm, %n.vec503
  br i1 %cmp.n509, label %.preheader133, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i217.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.jq, %vec.epilog.iter.check ], [ %i.jv, %vec.epilog.middle.block ]
  %.17.i216.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.jr, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ]
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.5373.i217 = phi ptr [ %i.jy, %.lr.ph218 ], [ %.5373.i217.ph, %.lr.ph218.preheader ] ; 2 uses
  %.17.i216 = phi ptr [ %i.ka, %.lr.ph218 ], [ %.17.i216.ph, %.lr.ph218.preheader ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.5373.i217, i64 1
  %i.jz = load i8, ptr %.5373.i217, align 1, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %.17.i216, i64 1 ; 2 uses
  store i8 %i.jz, ptr %.17.i216, align 1, !tbaa !15
  %i.kb = icmp ult ptr %i.ka, %i.ht
  br i1 %i.kb, label %.lr.ph218, label %.preheader133, !llvm.loop !62

bb.aw:                                            ; preds = %bb.as
  %i.kc = load i64, ptr %.3371.i, align 1
  store i64 %i.kc, ptr %i.it, align 1
  %i.kd = icmp ugt i64 %.13.i, 16
  br i1 %i.kd, label %bb.ax, label %.preheader133

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i4 = phi ptr [ %i.ke, %bb.ax ], [ %i.kg, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i5, %bb.ay ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kf = load i64, ptr %.0.i5, align 1
  store i64 %i.kf, ptr %.09.i4, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.kh = icmp ult ptr %i.kg, %i.ht
  br i1 %i.kh, label %bb.ay, label %.preheader133, !llvm.loop !1

.preheader133:                                    ; preds = %bb.ay, %.lr.ph218, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block499, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph218 ], [ %.2, %middle.block499 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %bb.ay ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.f ], [ %i.ht, %.lr.ph218 ], [ %i.ht, %middle.block499 ], [ %i.ht, %vec.epilog.middle.block ], [ %i.ht, %bb.aw ], [ %i.ht, %bb.av ], [ %i.ht, %bb.ay ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kj = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.kk = zext i8 %i.kj to i32                    ; 3 uses
  %i.kl = lshr i32 %i.kk, 4                       ; 2 uses
  %.not439.i210 = icmp eq i32 %i.kl, 15
  br i1 %.not439.i210, label %.thread96, label %.lr.ph212

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread92, %.preheader141.preheader, %.preheader138.preheader, %.preheader141, %.preheader138, %.preheader132, %.preheader130, %.preheader132.preheader, %.preheader130.preheader, %bb.al, %.thread96, %read_variable_length.exit23, %bb.ah, %bb.at, %.loopexit146, %read_variable_length.exit29, %bb.aj
  %.9 = phi ptr [ %.6, %bb.aj ], [ %.2, %.loopexit146 ], [ %.2, %bb.at ], [ %.19, %read_variable_length.exit29 ], [ %i.al, %.preheader141 ], [ %.17112, %bb.ah ], [ %i.hj, %.preheader130 ], [ %i.fv, %read_variable_length.exit23 ], [ %i.bp, %.preheader138 ], [ %.4101, %.thread96 ], [ %i.fv, %.preheader132 ], [ %.7, %bb.al ], [ %i.hf, %.preheader130.preheader ], [ %i.fr, %.preheader132.preheader ], [ %i.bf, %bb.m ], [ %i.bp, %read_variable_length.exit17 ], [ %.1587, %bb.o ], [ %i.ae, %bb.h ], [ %.1368, %bb.j ], [ %i.al, %read_variable_length.exit ], [ %i.ah, %.preheader141.preheader ], [ %i.bl, %.preheader138.preheader ], [ %.10, %.thread92 ]
  %i.km = ptrtoint ptr %.9 to i64
  %i.kn = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.kn, %i.km
  %i.ko = trunc i64 %.neg.i to i32
  %i.kp = add nsw i32 %i.ko, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.gr, %bb.ak ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.kp, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
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
  br i1 %i.j, label %LZ4_decompress_generic.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %LZ4_decompress_generic.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = icmp samesign ult i32 %i.a, 64
  br i1 %i.n, label %.preheader140, label %.preheader151

.preheader151:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = load i8, ptr %0, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = lshr i32 %i.r, 4                         ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp slt i32 %2, 18
  br i1 %i.u, label %.loopexit141, label %.lr.ph214

.lr.ph214:                                        ; preds = %.preheader151
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph214, %.backedge
  %i.z = phi i64 [ %i.t, %.lr.ph214 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.aa = phi i32 [ %i.s, %.lr.ph214 ], [ %i.ck, %.backedge ]
  %i.ab = phi i32 [ %i.r, %.lr.ph214 ], [ %i.cj, %.backedge ] ; 2 uses
  %i.ac = phi ptr [ %i.p, %.lr.ph214 ], [ %i.ch, %.backedge ] ; 5 uses
  %.0380.i213 = phi ptr [ %1, %.lr.ph214 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0212 = phi ptr [ %0, %.lr.ph214 ], [ %.0.be, %.backedge ]
  %i.ad = icmp eq i32 %i.aa, 15
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i14 = icmp ult ptr %i.ac, %i.v
  br i1 %.not.i14, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !15  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0212, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ae, -1
  br i1 %.not21.i, label %.preheader149.preheader, label %read_variable_length.exit.thread69, !prof !27

.preheader149.preheader:                          ; preds = %bb.g
  %.not22.i468 = icmp ult ptr %i.af, %i.v
  br i1 %.not22.i468, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread69:               ; preds = %bb.g
  %i.ag = zext i8 %i.ae to i64
  br label %bb.h

.preheader149:                                    ; preds = %.lr.ph471
  %.not22.i = icmp ult ptr %i.aj, %i.v
  br i1 %.not22.i, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph471:                                        ; preds = %.preheader149.preheader, %.preheader149
  %.0.i15470 = phi i64 [ %i.ak, %.preheader149 ], [ 255, %.preheader149.preheader ]
  %.13469 = phi ptr [ %i.aj, %.preheader149 ], [ %i.af, %.preheader149.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.13469, align 1, !tbaa !15 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.13469, i64 1 ; 5 uses
  %i.ak = add i64 %.0.i15470, %i.ai               ; 3 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader149, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph471
  %i.am = icmp eq i64 %i.ak, -1
  br i1 %i.am, label %LZ4_wildCopy32.exit.thread, label %bb.h

bb.h:                                             ; preds = %read_variable_length.exit.thread69, %read_variable_length.exit
  %.016.i73 = phi i64 [ %i.ag, %read_variable_length.exit.thread69 ], [ %i.ak, %read_variable_length.exit ]
  %.1472 = phi ptr [ %i.af, %read_variable_length.exit.thread69 ], [ %i.aj, %read_variable_length.exit ] ; 5 uses
  %i.an = add i64 %.016.i73, 15                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0380.i213, i64 %i.an ; 4 uses
  %i.ap = ptrtoint ptr %.1472 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.as = icmp ugt ptr %i.ao, %i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.1472, i64 %i.an ; 2 uses
  %i.au = icmp ugt ptr %i.at, %i.w
  %or.cond450.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader148

.preheader148:                                    ; preds = %bb.i, %.preheader148
  %.011.i = phi ptr [ %i.ax, %.preheader148 ], [ %.0380.i213, %bb.i ] ; 3 uses
  %.0.i34 = phi ptr [ %i.ay, %.preheader148 ], [ %.1472, %bb.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i34, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i34, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i34, i64 32
  %i.az = icmp ult ptr %i.ax, %i.ao
  br i1 %i.az, label %.preheader148, label %LZ4_wildCopy32.exit.thread79, !llvm.loop !4

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i213, ptr noundef nonnull align 1 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.bb = getelementptr inbounds nuw i8, ptr %.0380.i213, i64 %i.z
  br label %LZ4_wildCopy32.exit.thread79

LZ4_wildCopy32.exit.thread79:                     ; preds = %.preheader148, %bb.j
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %i.at, %.preheader148 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bb, %bb.j ], [ %i.ao, %.preheader148 ] ; 23 uses
  %.val41 = load i16, ptr %.1, align 1, !tbaa !30 ; 5 uses
  %i.bc = zext i16 %.val41 to i64                 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds i8, ptr %.2382.i, i64 %i.be ; 16 uses
  %i.bg = and i32 %i.ab, 15                       ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 15
  br i1 %i.bh, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread79
  %.not.i16 = icmp ult ptr %i.bd, %i.y
  br i1 %.not.i16, label %bb.l, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !15  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i18 = icmp eq i8 %i.bi, -1
  br i1 %.not21.i18, label %.preheader146.preheader, label %read_variable_length.exit21.thread88, !prof !27

.preheader146.preheader:                          ; preds = %bb.l
  %.not22.i20473 = icmp ult ptr %i.bj, %i.y
  br i1 %.not22.i20473, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit21.thread88:             ; preds = %bb.l
  %i.bk = zext i8 %i.bi to i64
  br label %bb.m

.preheader146:                                    ; preds = %.lr.ph476
  %.not22.i20 = icmp ult ptr %i.bn, %i.y
  br i1 %.not22.i20, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph476:                                        ; preds = %.preheader146.preheader, %.preheader146
  %.0.i19475 = phi i64 [ %i.bo, %.preheader146 ], [ 255, %.preheader146.preheader ]
  %.15474 = phi ptr [ %i.bn, %.preheader146 ], [ %i.bj, %.preheader146.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.15474, align 1, !tbaa !15 ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.15474, i64 1 ; 5 uses
  %i.bo = add i64 %.0.i19475, %i.bm               ; 3 uses
  %i.bp = icmp eq i8 %i.bl, -1
  br i1 %i.bp, label %.preheader146, label %read_variable_length.exit21, !llvm.loop !3

read_variable_length.exit21:                      ; preds = %.lr.ph476
  %i.bq = icmp eq i64 %i.bo, -1
  br i1 %i.bq, label %LZ4_wildCopy32.exit.thread, label %bb.m

bb.m:                                             ; preds = %read_variable_length.exit21.thread88, %read_variable_length.exit21
  %.016.i1792 = phi i64 [ %i.bk, %read_variable_length.exit21.thread88 ], [ %i.bo, %read_variable_length.exit21 ]
  %.1691 = phi ptr [ %i.bj, %read_variable_length.exit21.thread88 ], [ %i.bn, %read_variable_length.exit21 ] ; 3 uses
  %i.br = add i64 %.016.i1792, 19                 ; 4 uses
  %i.bs = ptrtoint ptr %.2382.i to i64
  %i.bt = xor i64 %i.bs, -1
  %i.bu = icmp ugt i64 %i.br, %i.bt
  br i1 %i.bu, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !27

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.br
  %.not436.i = icmp ult ptr %i.bv, %i.x
  br i1 %.not436.i, label %.thread96, label %.loopexit154

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread79
  %narrow.i = add nuw nsw i32 %i.bg, 4
  %i.bw = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bw ; 2 uses
  %.not.i = icmp ult ptr %i.bx, %i.x
  br i1 %.not.i, label %bb.p, label %.loopexit154

bb.p:                                             ; preds = %bb.o
  %i.by = icmp uge ptr %i.bf, %1
  %i.bz = icmp ugt i16 %.val41, 7
  %or.cond5.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread96

bb.q:                                             ; preds = %bb.p
  %i.ca = load i64, ptr %i.bf, align 1
  store i64 %i.ca, ptr %.2382.i, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cd = load i64, ptr %i.cc, align 1
  store i64 %i.cd, ptr %i.cb, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.2382.i, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cg = load i16, ptr %i.cf, align 1
  store i16 %i.cg, ptr %i.ce, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader144, %.lr.ph, %bb.aa, %middle.block, %bb.ab, %bb.q
  %.0.be = phi ptr [ %i.bd, %bb.q ], [ %.11, %bb.aa ], [ %.11, %bb.ab ], [ %.11, %middle.block ], [ %.11, %.lr.ph ], [ %.11, %.preheader144 ] ; 3 uses
  %.0380.i.be = phi ptr [ %i.bx, %bb.q ], [ %i.co, %bb.aa ], [ %i.co, %bb.ab ], [ %i.co, %middle.block ], [ %i.co, %.lr.ph ], [ %i.co, %.preheader144 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.be, i64 1 ; 3 uses
  %i.ci = load i8, ptr %.0.be, align 1, !tbaa !15
  %i.cj = zext i8 %i.ci to i32                    ; 3 uses
  %i.ck = lshr i32 %i.cj, 4                       ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = icmp ugt ptr %i.ch, %i.o
  br i1 %i.cm, label %.loopexit141, label %bb.e

.thread96:                                        ; preds = %bb.n, %bb.p
  %.11 = phi ptr [ %i.bd, %bb.p ], [ %.1691, %bb.n ] ; 6 uses
  %.2360.i = phi i64 [ %i.bw, %bb.p ], [ %i.br, %bb.n ] ; 3 uses
  %i.cn = icmp ult ptr %i.bf, %1
  br i1 %i.cn, label %LZ4_wildCopy32.exit.thread, label %bb.r, !prof !43

bb.r:                                             ; preds = %.thread96
  %i.co = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.2360.i ; 8 uses
  %i.cp = icmp ult i16 %.val41, 16
  br i1 %i.cp, label %bb.s, label %.preheader144, !prof !27

bb.s:                                             ; preds = %bb.r
  switch i16 %.val41, label %bb.w [
    i16 1, label %bb.t
    i16 2, label %bb.u
    i16 4, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cq = load i8, ptr %i.bf, align 1, !tbaa !15
  %i.cr = zext i8 %i.cq to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cr, 16843009
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bf, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ab

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bf, align 1
  br label %bb.ab

bb.w:                                             ; preds = %bb.s
  %i.cs = icmp samesign ult i16 %.val41, 8
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %.2382.i, align 1, !tbaa !24
  %i.ct = load i16, ptr %i.bf, align 1
  store i16 %i.ct, ptr %.2382.i, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.2382.i, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.cw = load i16, ptr %i.cv, align 1
  store i16 %i.cw, ptr %i.cu, align 1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bc
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !37
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  %i.dc = load i32, ptr %i.da, align 1
  store i32 %i.dc, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !37
  %i.df = sext i32 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.da, i64 %i.dg
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.di = load i64, ptr %i.bf, align 1
  store i64 %i.di, ptr %.2382.i, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.019.i = phi ptr [ %i.dh, %bb.x ], [ %i.dj, %bb.y ]
  %.0.i39 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.09.i.i = phi ptr [ %.0.i39, %bb.z ], [ %i.dl, %bb.aa ] ; 2 uses
  %.0.i.i = phi ptr [ %.019.i, %bb.z ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.dk = load i64, ptr %.0.i.i, align 1
  store i64 %i.dk, ptr %.09.i.i, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.dn = icmp ult ptr %i.dl, %i.co
  br i1 %i.dn, label %bb.aa, label %.backedge, !llvm.loop !1

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.t ], [ %.sroa.0.2.insert.insert.i, %bb.u ], [ %.sroa.0.0.copyload2.i, %bb.v ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2382.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.do = icmp samesign ugt i64 %.2360.i, 8
  br i1 %i.do, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %bb.ab
  %.0.i38209 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8 ; 4 uses
  %5 = ptrtoaddr ptr %.2382.i to i64              ; 3 uses
  %i.dp = add i64 %.2360.i, %5
  %i.dq = add i64 %5, 16
  %i.dr = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.dq)
  %i.ds = add i64 %i.dr, -9
  %i.dt = sub i64 %i.ds, %5                       ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 24
  br i1 %min.iters.check, label %.lr.ph.preheader550, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %.0.i38209, i64 %i.dw
  %i.dy = getelementptr i8, ptr %.2382.i, i64 %i.dw
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.dz = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i38209, i64 %i.ea
  %i.eb = getelementptr i8, ptr %.0.i38209, i64 %i.ea
  %next.gep489 = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> %i.dz, ptr %next.gep, align 1
  store <4 x i32> %i.dz, ptr %next.gep489, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.backedge, label %.lr.ph.preheader550

.lr.ph.preheader550:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i38211.ph = phi ptr [ %.0.i38209, %.lr.ph.preheader ], [ %i.dx, %middle.block ]
  %.pn.i210.ph = phi ptr [ %.2382.i, %.lr.ph.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader550, %.lr.ph
  %.0.i38211 = phi ptr [ %.0.i38, %.lr.ph ], [ %.0.i38211.ph, %.lr.ph.preheader550 ] ; 3 uses
  %.pn.i210 = phi ptr [ %.0.i38211, %.lr.ph ], [ %.pn.i210.ph, %.lr.ph.preheader550 ]
  store i32 %.sroa.9.0.i, ptr %.0.i38211, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i210, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i38 = getelementptr inbounds nuw i8, ptr %.0.i38211, i64 8 ; 2 uses
  %i.ed = icmp ult ptr %.0.i38, %i.co
  br i1 %i.ed, label %.lr.ph, label %.backedge, !llvm.loop !64

.preheader144:                                    ; preds = %bb.r, %.preheader144
  %.011.i35 = phi ptr [ %i.eg, %.preheader144 ], [ %.2382.i, %bb.r ] ; 3 uses
  %.0.i36 = phi ptr [ %i.eh, %.preheader144 ], [ %i.bf, %bb.r ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i35, ptr noundef nonnull align 1 dereferenceable(16) %.0.i36, i64 16, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.011.i35, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i36, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ee, ptr noundef nonnull align 1 dereferenceable(16) %i.ef, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %.011.i35, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i36, i64 32
  %i.ei = icmp ult ptr %i.eg, %i.co
  br i1 %i.ei, label %.preheader144, label %.backedge, !llvm.loop !4

.lr.ph220:                                        ; preds = %.preheader140, %bb.ad
  %.in = phi i32 [ %i.fl, %bb.ad ], [ %i.ki, %.preheader140 ]
  %i.ej = phi i32 [ %i.fk, %bb.ad ], [ %i.kh, %.preheader140 ] ; 2 uses
  %i.ek = phi ptr [ %i.fi, %bb.ad ], [ %i.kf, %.preheader140 ] ; 4 uses
  %.6386.i219 = phi ptr [ %i.fh, %bb.ad ], [ %.6386.i.ph, %.preheader140 ] ; 4 uses
  %i.el = zext nneg i32 %.in to i64               ; 3 uses
  %i.em = icmp ult ptr %i.ek, %i.h
  %i.en = icmp ule ptr %.6386.i219, %i.i
  %i.eo = and i1 %i.em, %i.en
  br i1 %i.eo, label %bb.ac, label %.loopexit141.thread, !prof !31

bb.ac:                                            ; preds = %.lr.ph220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6386.i219, ptr noundef nonnull align 1 dereferenceable(16) %i.ek, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %.6386.i219, i64 %i.el ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el ; 3 uses
  %i.er = and i32 %i.ej, 15                       ; 2 uses
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %.val = load i16, ptr %i.eq, align 1, !tbaa !30 ; 2 uses
  %i.et = zext i16 %.val to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.ev = sub nsw i64 0, %i.et
  %i.ew = getelementptr inbounds i8, ptr %i.ep, i64 %i.ev ; 5 uses
  %i.ex = icmp eq i32 %i.er, 15
  %i.ey = icmp ult i16 %.val, 8
  %or.cond3.i.not134 = select i1 %i.ex, i1 true, i1 %i.ey
  %.not443.i = icmp ult ptr %i.ew, %1
  %or.cond = select i1 %or.cond3.i.not134, i1 true, i1 %.not443.i
  br i1 %or.cond, label %.loopexit142, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load i64, ptr %i.ew, align 1
  store i64 %i.ez, ptr %i.ep, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i64, ptr %i.fb, align 1
  store i64 %i.fc, ptr %i.fa, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ff = load i16, ptr %i.fe, align 1
  store i16 %i.ff, ptr %i.fd, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 3 ; 2 uses
  %i.fj = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i32                    ; 3 uses
  %i.fl = lshr i32 %i.fk, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fl, 15
  br i1 %.not439.i, label %.thread100, label %.lr.ph220

.loopexit141:                                     ; preds = %.backedge, %.preheader151
  %.4 = phi ptr [ %i.p, %.preheader151 ], [ %i.ch, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader151 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.r, %.preheader151 ], [ %i.cj, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.t, %.preheader151 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.fm = icmp eq i64 %.4362.i, 15
  br i1 %i.fm, label %.thread100, label %.loopexit141.thread

.thread100:                                       ; preds = %bb.ad, %.preheader140, %.loopexit141
  %.0364.i109 = phi i32 [ %.0364.i, %.loopexit141 ], [ %i.kh, %.preheader140 ], [ %i.fk, %bb.ad ]
  %.7387.i107 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.6386.i.ph, %.preheader140 ], [ %i.fh, %bb.ad ] ; 2 uses
  %.4105 = phi ptr [ %.4, %.loopexit141 ], [ %i.kf, %.preheader140 ], [ %i.fi, %bb.ad ] ; 4 uses
  %i.fn = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %.not.i22 = icmp ult ptr %.4105, %i.fn
  br i1 %.not.i22, label %bb.ae, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ae:                                            ; preds = %.thread100
  %i.fo = load i8, ptr %.4105, align 1, !tbaa !15 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.4105, i64 1 ; 4 uses
  %.not21.i24 = icmp eq i8 %i.fo, -1
  br i1 %.not21.i24, label %.preheader139.preheader, label %read_variable_length.exit27.thread113, !prof !27

.preheader139.preheader:                          ; preds = %bb.ae
  %.not22.i26479 = icmp ult ptr %i.fp, %i.fn
  br i1 %.not22.i26479, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit27.thread113:            ; preds = %bb.ae
  %i.fq = zext i8 %i.fo to i64
  br label %bb.af

.preheader139:                                    ; preds = %.lr.ph482
  %.not22.i26 = icmp ult ptr %i.ft, %i.fn
  br i1 %.not22.i26, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph482:                                        ; preds = %.preheader139.preheader, %.preheader139
  %.0.i25481 = phi i64 [ %i.fu, %.preheader139 ], [ 255, %.preheader139.preheader ]
  %.17480 = phi ptr [ %i.ft, %.preheader139 ], [ %i.fp, %.preheader139.preheader ] ; 2 uses
  %i.fr = load i8, ptr %.17480, align 1, !tbaa !15 ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.17480, i64 1 ; 5 uses
  %i.fu = add i64 %.0.i25481, %i.fs               ; 3 uses
  %i.fv = icmp eq i8 %i.fr, -1
  br i1 %i.fv, label %.preheader139, label %read_variable_length.exit27, !llvm.loop !3

read_variable_length.exit27:                      ; preds = %.lr.ph482
  %i.fw = icmp eq i64 %i.fu, -1
  br i1 %i.fw, label %LZ4_wildCopy32.exit.thread, label %bb.af

bb.af:                                            ; preds = %read_variable_length.exit27.thread113, %read_variable_length.exit27
  %.016.i23117 = phi i64 [ %i.fq, %read_variable_length.exit27.thread113 ], [ %i.fu, %read_variable_length.exit27 ]
  %.18116 = phi ptr [ %i.fp, %read_variable_length.exit27.thread113 ], [ %i.ft, %read_variable_length.exit27 ] ; 3 uses
  %i.fx = add i64 %.016.i23117, 15                ; 3 uses
  %i.fy = ptrtoint ptr %.7387.i107 to i64
  %i.fz = xor i64 %i.fy, -1
  %i.ga = icmp ugt i64 %i.fx, %i.fz
  %i.gb = ptrtoint ptr %.18116 to i64
  %i.gc = xor i64 %i.gb, -1
  %i.gd = icmp ugt i64 %i.fx, %i.gc
  %or.cond132 = select i1 %i.ga, i1 true, i1 %i.gd, !prof !44
  br i1 %or.cond132, label %LZ4_wildCopy32.exit.thread, label %.loopexit141.thread, !prof !44

.loopexit141.thread:                              ; preds = %.lr.ph220, %bb.af, %.loopexit141
  %.0364.i108 = phi i32 [ %.0364.i, %.loopexit141 ], [ %.0364.i109, %bb.af ], [ %i.ej, %.lr.ph220 ]
  %.7387.i106 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.7387.i107, %bb.af ], [ %.6386.i219, %.lr.ph220 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit141 ], [ %.18116, %bb.af ], [ %i.ek, %.lr.ph220 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit141 ], [ %i.fx, %bb.af ], [ %i.el, %.lr.ph220 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.7387.i106, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.i, %.loopexit141.thread
  %.6 = phi ptr [ %.5, %.loopexit141.thread ], [ %.1472, %bb.i ] ; 7 uses
  %.8388.i = phi ptr [ %.7387.i106, %.loopexit141.thread ], [ %.0380.i213, %bb.i ] ; 7 uses
  %.3377.i = phi ptr [ %i.ge, %.loopexit141.thread ], [ %i.ao, %bb.i ] ; 4 uses
  %.1365.i = phi i32 [ %.0364.i108, %.loopexit141.thread ], [ %i.ab, %bb.i ]
  %.7.i = phi i64 [ %.6.i, %.loopexit141.thread ], [ %i.an, %bb.i ] ; 3 uses
  %i.gf = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gg = icmp ugt ptr %.3377.i, %i.gf
  br i1 %i.gg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gj = icmp ugt ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.ah, label %.preheader138

bb.ah:                                            ; preds = %bb.ag, %LZ4_wildCopy32.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.gl = icmp ugt ptr %i.gk, %i.e                ; 2 uses
  %i.gm = ptrtoint ptr %i.e to i64
  %i.gn = ptrtoint ptr %.6 to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.go
  %.4378.i = select i1 %i.gl, ptr %i.gp, ptr %.3377.i ; 2 uses
  %i.gq = icmp ugt ptr %.4378.i, %i.g
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_continue:bb.a
  %i.oc = getelementptr inbounds nuw i8, ptr %.09.i67, i64 8 ; 2 uses
  %i.od = icmp ult ptr %i.oc, %i.ke
  br i1 %i.od, label %bb.bs, label %.preheader199, !llvm.loop !1

.preheader199:                                    ; preds = %bb.bs, %.lr.ph291, %.lr.ph294, %bb.bq, %bb.bp, %vec.epilog.middle.block653, %middle.block636, %bb.bg, %bb.bi, %vec.epilog.middle.block690, %middle.block673, %bb.n
  %.3.ph = phi ptr [ %.2, %bb.bg ], [ %1, %bb.n ], [ %.2, %middle.block673 ], [ %.2, %vec.epilog.middle.block690 ], [ %.2, %bb.bq ], [ %.2, %bb.bi ], [ %.2, %.lr.ph294 ], [ %.2, %middle.block636 ], [ %.2, %vec.epilog.middle.block653 ], [ %.2, %.lr.ph291 ], [ %.2, %bb.bp ], [ %.2, %bb.bs ] ; 2 uses
  %.6386.i.i.ph = phi ptr [ %i.ke, %bb.bg ], [ %2, %bb.n ], [ %i.lf, %middle.block673 ], [ %i.lk, %vec.epilog.middle.block690 ], [ %i.ke, %bb.bq ], [ %i.ke, %bb.bi ], [ %i.lo, %.lr.ph294 ], [ %i.ke, %middle.block636 ], [ %i.ke, %vec.epilog.middle.block653 ], [ %i.ke, %.lr.ph291 ], [ %i.ke, %bb.bp ], [ %i.ke, %bb.bs ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.of = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.og = zext i8 %i.of to i32                    ; 3 uses
  %i.oh = lshr i32 %i.og, 4                       ; 2 uses
  %.not439.i.i283 = icmp eq i32 %i.oh, 15
  br i1 %.not439.i.i283, label %.thread160, label %.lr.ph285

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.u, %read_variable_length.exit79, %bb.w, %bb.p, %read_variable_length.exit, %bb.r, %bb.ac, %.thread156, %.preheader210.preheader, %.preheader207.preheader, %.preheader210, %.preheader207, %.preheader198, %.preheader196, %.preheader198.preheader, %.preheader196.preheader, %bb.az, %.thread160, %read_variable_length.exit85, %bb.av, %bb.bn, %bb.be, %.loopexit215, %read_variable_length.exit91, %bb.ax
  %.9 = phi ptr [ %.6, %bb.ax ], [ %.2, %.loopexit215 ], [ %.4165, %.thread160 ], [ %.2, %bb.be ], [ %.19, %read_variable_length.exit91 ], [ %i.bn, %.preheader210 ], [ %.17176, %bb.av ], [ %.2, %bb.bn ], [ %i.js, %.preheader196 ], [ %i.ie, %read_variable_length.exit85 ], [ %.7, %bb.az ], [ %i.ie, %.preheader198 ], [ %i.cr, %.preheader207 ], [ %i.jo, %.preheader196.preheader ], [ %i.ia, %.preheader198.preheader ], [ %i.ch, %bb.u ], [ %i.cr, %read_variable_length.exit79 ], [ %.15151, %bb.w ], [ %i.bg, %bb.p ], [ %.13132, %bb.r ], [ %i.bn, %read_variable_length.exit ], [ %.10, %.thread156 ], [ %i.bj, %.preheader210.preheader ], [ %i.cn, %.preheader207.preheader ], [ %.10, %bb.ac ]
  %i.oi = ptrtoint ptr %.9 to i64
  %i.oj = ptrtoint ptr %1 to i64
  %.neg.i.i = sub i64 %i.oj, %i.oi
  %i.ok = trunc i64 %.neg.i.i to i32
  %i.ol = add nsw i32 %i.ok, -1
  br label %LZ4_decompress_safe_doubleDict.exit

LZ4_decompress_safe_doubleDict.exit:              ; preds = %LZ4_wildCopy32.exit.thread, %bb.ay, %bb.h, %bb.f
  %.0 = phi i32 [ %i.m, %bb.f ], [ %i.q, %bb.h ], [ %i.ja, %bb.ay ], [ %i.ol, %LZ4_wildCopy32.exit.thread ] ; 4 uses
  %i.om = icmp slt i32 %.0, 1
  br i1 %i.om, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %LZ4_decompress_safe_doubleDict.exit
  %i.on = zext nneg i32 %.0 to i64                ; 2 uses
  %i.oo = load i64, ptr %i.a, align 8, !tbaa !49
  %i.op = add i64 %i.oo, %i.on
  store i64 %i.op, ptr %i.a, align 8, !tbaa !49
  %i.oq = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.on
  store ptr %i.or, ptr %i.i, align 8, !tbaa !50
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.bu:                                            ; preds = %bb.d
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.os, align 8, !tbaa !52
  %i.ot = sub i64 0, %i.b
  %i.ou = getelementptr inbounds i8, ptr %i.j, i64 %i.ot ; 2 uses
  store ptr %i.ou, ptr %0, align 8, !tbaa !51
  %i.ov = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.ou, i64 noundef %i.b) ; 4 uses
  %i.ow = icmp slt i32 %i.ov, 1
  br i1 %i.ow, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ox = zext nneg i32 %i.ov to i64              ; 2 uses
  store i64 %i.ox, ptr %i.a, align 8, !tbaa !49
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  store ptr %i.oy, ptr %i.i, align 8, !tbaa !50
  br label %LZ4_decompress_safe_doubleDict.exit.thread

LZ4_decompress_safe_doubleDict.exit.thread:       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.c, %bb.bv, %bb.bt, %bb.bu, %LZ4_decompress_safe_doubleDict.exit, %bb.b
  %.058 = phi i32 [ %.0, %LZ4_decompress_safe_doubleDict.exit ], [ %i.ov, %bb.bu ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.0, %bb.bt ], [ %i.ov, %bb.bv ], [ -1, %bb.m ], [ %i.ak, %bb.l ], [ -1, %bb.k ], [ -1, %bb.i ]
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
  br i1 %i.k, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %0, align 1, !tbaa !15
  %i.n = icmp ne i8 %i.m, 0
  %i.o = sext i1 %i.n to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = icmp samesign ult i32 %3, 64
  br i1 %i.r, label %.preheader134, label %.preheader144

.preheader144:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp slt i32 %2, 18
  br i1 %i.y, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader144
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 -6 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph207, %.backedge
  %i.ad = phi i64 [ %i.x, %.lr.ph207 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.ae = phi i32 [ %i.w, %.lr.ph207 ], [ %i.co, %.backedge ]
  %i.af = phi i32 [ %i.v, %.lr.ph207 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.ag = phi ptr [ %i.t, %.lr.ph207 ], [ %i.cl, %.backedge ] ; 5 uses
  %.0380.i206 = phi ptr [ %1, %.lr.ph207 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0205 = phi ptr [ %0, %.lr.ph207 ], [ %.0.be, %.backedge ]
  %i.ah = icmp eq i32 %i.ae, 15
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i11 = icmp ult ptr %i.ag, %i.z
  br i1 %.not.i11, label %bb.i, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !15  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0205, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ai, -1
  br i1 %.not21.i, label %.preheader142.preheader, label %read_variable_length.exit.thread66, !prof !27

.preheader142.preheader:                          ; preds = %bb.i
  %.not22.i463 = icmp ult ptr %i.aj, %i.z
  br i1 %.not22.i463, label %.lr.ph466, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread66:               ; preds = %bb.i
  %i.ak = zext i8 %i.ai to i64
  br label %bb.j

.preheader142:                                    ; preds = %.lr.ph466
  %.not22.i = icmp ult ptr %i.an, %i.z
  br i1 %.not22.i, label %.lr.ph466, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph466:                                        ; preds = %.preheader142.preheader, %.preheader142
  %.0.i12465 = phi i64 [ %i.ao, %.preheader142 ], [ 255, %.preheader142.preheader ]
  %.12464 = phi ptr [ %i.an, %.preheader142 ], [ %i.aj, %.preheader142.preheader ] ; 2 uses
  %i.al = load i8, ptr %.12464, align 1, !tbaa !15 ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.12464, i64 1 ; 5 uses
  %i.ao = add i64 %.0.i12465, %i.am               ; 3 uses
  %i.ap = icmp eq i8 %i.al, -1
  br i1 %i.ap, label %.preheader142, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph466
  %i.aq = icmp eq i64 %i.ao, -1
  br i1 %i.aq, label %LZ4_wildCopy32.exit.thread, label %bb.j

bb.j:                                             ; preds = %read_variable_length.exit.thread66, %read_variable_length.exit
  %.016.i70 = phi i64 [ %i.ak, %read_variable_length.exit.thread66 ], [ %i.ao, %read_variable_length.exit ]
  %.1369 = phi ptr [ %i.aj, %read_variable_length.exit.thread66 ], [ %i.an, %read_variable_length.exit ] ; 5 uses
  %i.ar = add i64 %.016.i70, 15                   ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0380.i206, i64 %i.ar ; 4 uses
  %i.at = ptrtoint ptr %.1369 to i64
  %i.au = xor i64 %i.at, -1
  %i.av = icmp ugt i64 %i.ar, %i.au
  br i1 %i.av, label %LZ4_wildCopy32.exit.thread, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp ugt ptr %i.as, %i.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.1369, i64 %i.ar ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.aa
  %or.cond450.i = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader141

.preheader141:                                    ; preds = %bb.k, %.preheader141
  %.011.i = phi ptr [ %i.bb, %.preheader141 ], [ %.0380.i206, %bb.k ] ; 3 uses
  %.0.i31 = phi ptr [ %i.bc, %.preheader141 ], [ %.1369, %bb.k ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i31, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.bd = icmp ult ptr %i.bb, %i.as
  br i1 %i.bd, label %.preheader141, label %LZ4_wildCopy32.exit.thread76, !llvm.loop !4

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i206, ptr noundef nonnull align 1 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.bf = getelementptr inbounds nuw i8, ptr %.0380.i206, i64 %i.ad
  br label %LZ4_wildCopy32.exit.thread76

LZ4_wildCopy32.exit.thread76:                     ; preds = %.preheader141, %bb.l
  %.1 = phi ptr [ %i.be, %bb.l ], [ %i.ax, %.preheader141 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bf, %bb.l ], [ %i.as, %.preheader141 ] ; 23 uses
  %.val38 = load i16, ptr %.1, align 1, !tbaa !30 ; 5 uses
  %i.bg = zext i16 %.val38 to i64                 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.bi = sub nsw i64 0, %i.bg
  %i.bj = getelementptr inbounds i8, ptr %.2382.i, i64 %i.bi ; 16 uses
  %i.bk = and i32 %i.af, 15                       ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 15
  br i1 %i.bl, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread76
  %.not.i13 = icmp ult ptr %i.bh, %i.ac
  br i1 %.not.i13, label %bb.n, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !15  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i15 = icmp eq i8 %i.bm, -1
  br i1 %.not21.i15, label %.preheader139.preheader, label %read_variable_length.exit18.thread85, !prof !27

.preheader139.preheader:                          ; preds = %bb.n
  %.not22.i17468 = icmp ult ptr %i.bn, %i.ac
  br i1 %.not22.i17468, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit18.thread85:             ; preds = %bb.n
  %i.bo = zext i8 %i.bm to i64
  br label %bb.o

.preheader139:                                    ; preds = %.lr.ph471
  %.not22.i17 = icmp ult ptr %i.br, %i.ac
  br i1 %.not22.i17, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph471:                                        ; preds = %.preheader139.preheader, %.preheader139
  %.0.i16470 = phi i64 [ %i.bs, %.preheader139 ], [ 255, %.preheader139.preheader ]
  %.14469 = phi ptr [ %i.br, %.preheader139 ], [ %i.bn, %.preheader139.preheader ] ; 2 uses
  %i.bp = load i8, ptr %.14469, align 1, !tbaa !15 ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.14469, i64 1 ; 5 uses
  %i.bs = add i64 %.0.i16470, %i.bq               ; 3 uses
  %i.bt = icmp eq i8 %i.bp, -1
  br i1 %i.bt, label %.preheader139, label %read_variable_length.exit18, !llvm.loop !3

read_variable_length.exit18:                      ; preds = %.lr.ph471
  %i.bu = icmp eq i64 %i.bs, -1
  br i1 %i.bu, label %LZ4_wildCopy32.exit.thread, label %bb.o

bb.o:                                             ; preds = %read_variable_length.exit18.thread85, %read_variable_length.exit18
  %.016.i1489 = phi i64 [ %i.bo, %read_variable_length.exit18.thread85 ], [ %i.bs, %read_variable_length.exit18 ]
  %.1588 = phi ptr [ %i.bn, %read_variable_length.exit18.thread85 ], [ %i.br, %read_variable_length.exit18 ] ; 3 uses
  %i.bv = add i64 %.016.i1489, 19                 ; 4 uses
  %i.bw = ptrtoint ptr %.2382.i to i64
  %i.bx = xor i64 %i.bw, -1
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bv
  %.not436.i = icmp ult ptr %i.bz, %i.ab
  br i1 %.not436.i, label %.thread93, label %.loopexit147

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread76
  %narrow.i = add nuw nsw i32 %i.bk, 4
  %i.ca = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.ca ; 2 uses
  %.not.i = icmp ult ptr %i.cb, %i.ab
  br i1 %.not.i, label %bb.r, label %.loopexit147

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp uge ptr %i.bj, %i.b
  %i.cd = icmp ugt i16 %.val38, 7
  %or.cond5.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread93

bb.s:                                             ; preds = %bb.r
  %i.ce = load i64, ptr %i.bj, align 1
  store i64 %i.ce, ptr %.2382.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ch = load i64, ptr %i.cg, align 1
  store i64 %i.ch, ptr %i.cf, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.2382.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ck = load i16, ptr %i.cj, align 1
  store i16 %i.ck, ptr %i.ci, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader137, %.lr.ph, %bb.ac, %middle.block, %bb.ad, %bb.s
  %.0.be = phi ptr [ %i.bh, %bb.s ], [ %.10, %bb.ac ], [ %.10, %bb.ad ], [ %.10, %middle.block ], [ %.10, %.lr.ph ], [ %.10, %.preheader137 ] ; 3 uses
  %.0380.i.be = phi ptr [ %i.cb, %bb.s ], [ %i.cs, %bb.ac ], [ %i.cs, %bb.ad ], [ %i.cs, %middle.block ], [ %i.cs, %.lr.ph ], [ %i.cs, %.preheader137 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.be, i64 1 ; 3 uses
  %i.cm = load i8, ptr %.0.be, align 1, !tbaa !15
  %i.cn = zext i8 %i.cm to i32                    ; 3 uses
  %i.co = lshr i32 %i.cn, 4                       ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = icmp ugt ptr %i.cl, %i.s
  br i1 %i.cq, label %.loopexit, label %bb.g

.thread93:                                        ; preds = %bb.p, %bb.r
  %.10 = phi ptr [ %i.bh, %bb.r ], [ %.1588, %bb.p ] ; 6 uses
  %.2360.i = phi i64 [ %i.ca, %bb.r ], [ %i.bv, %bb.p ] ; 3 uses
  %i.cr = icmp ult ptr %i.bj, %i.b
  br i1 %i.cr, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !43

bb.t:                                             ; preds = %.thread93
  %i.cs = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.2360.i ; 8 uses
  %i.ct = icmp ult i16 %.val38, 16
  br i1 %i.ct, label %bb.u, label %.preheader137, !prof !27

bb.u:                                             ; preds = %bb.t
  switch i16 %.val38, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cu = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.cv = zext i8 %i.cu to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cv, 16843009
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bj, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bj, align 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.cw = icmp samesign ult i16 %.val38, 8
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2382.i, align 1, !tbaa !24
  %i.cx = load i16, ptr %i.bj, align 1
  store i16 %i.cx, ptr %.2382.i, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.2382.i, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.da = load i16, ptr %i.cz, align 1
  store i16 %i.da, ptr %i.cy, align 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bg
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  %i.dg = load i32, ptr %i.de, align 1
  store i32 %i.dg, ptr %i.df, align 1
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !37
  %i.dj = sext i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.de, i64 %i.dk
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dm = load i64, ptr %i.bj, align 1
  store i64 %i.dm, ptr %.2382.i, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.019.i = phi ptr [ %i.dl, %bb.z ], [ %i.dn, %bb.aa ]
  %.0.i36 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.09.i.i = phi ptr [ %.0.i36, %bb.ab ], [ %i.dp, %bb.ac ] ; 2 uses
  %.0.i.i = phi ptr [ %.019.i, %bb.ab ], [ %i.dq, %bb.ac ] ; 2 uses
  %i.do = load i64, ptr %.0.i.i, align 1
  store i64 %i.do, ptr %.09.i.i, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.dr = icmp ult ptr %i.dp, %i.cs
  br i1 %i.dr, label %bb.ac, label %.backedge, !llvm.loop !1

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2382.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.ds = icmp samesign ugt i64 %.2360.i, 8
  br i1 %i.ds, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %.0.i35202 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8 ; 4 uses
  %5 = ptrtoaddr ptr %.2382.i to i64              ; 3 uses
  %i.dt = add i64 %.2360.i, %5
  %i.du = add i64 %5, 16
  %i.dv = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.du)
  %i.dw = add i64 %i.dv, -9
  %i.dx = sub i64 %i.dw, %5                       ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 24
  br i1 %min.iters.check, label %.lr.ph.preheader546, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dz, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %.0.i35202, i64 %i.ea
  %i.ec = getelementptr i8, ptr %.2382.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.ed = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i35202, i64 %i.ee
  %i.ef = getelementptr i8, ptr %.0.i35202, i64 %i.ee
  %next.gep484 = getelementptr i8, ptr %i.ef, i64 16
  store <4 x i32> %i.ed, ptr %next.gep, align 1
  store <4 x i32> %i.ed, ptr %next.gep484, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %.backedge, label %.lr.ph.preheader546

.lr.ph.preheader546:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i35204.ph = phi ptr [ %.0.i35202, %.lr.ph.preheader ], [ %i.eb, %middle.block ]
  %.pn.i203.ph = phi ptr [ %.2382.i, %.lr.ph.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader546, %.lr.ph
  %.0.i35204 = phi ptr [ %.0.i35, %.lr.ph ], [ %.0.i35204.ph, %.lr.ph.preheader546 ] ; 3 uses
  %.pn.i203 = phi ptr [ %.0.i35204, %.lr.ph ], [ %.pn.i203.ph, %.lr.ph.preheader546 ]
  store i32 %.sroa.9.0.i, ptr %.0.i35204, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i203, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i35 = getelementptr inbounds nuw i8, ptr %.0.i35204, i64 8 ; 2 uses
  %i.eh = icmp ult ptr %.0.i35, %i.cs
  br i1 %i.eh, label %.lr.ph, label %.backedge, !llvm.loop !115

.preheader137:                                    ; preds = %bb.t, %.preheader137
  %.011.i32 = phi ptr [ %i.ek, %.preheader137 ], [ %.2382.i, %bb.t ] ; 3 uses
  %.0.i33 = phi ptr [ %i.el, %.preheader137 ], [ %i.bj, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i32, ptr noundef nonnull align 1 dereferenceable(16) %.0.i33, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %.011.i32, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i33, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ei, ptr noundef nonnull align 1 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.011.i32, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i33, i64 32
  %i.em = icmp ult ptr %i.ek, %i.cs
  br i1 %i.em, label %.preheader137, label %.backedge, !llvm.loop !4

.lr.ph213:                                        ; preds = %.preheader134, %bb.af
  %.in = phi i32 [ %i.fp, %bb.af ], [ %i.kn, %.preheader134 ]
  %i.en = phi i32 [ %i.fo, %bb.af ], [ %i.km, %.preheader134 ] ; 2 uses
  %i.eo = phi ptr [ %i.fm, %bb.af ], [ %i.kk, %.preheader134 ] ; 4 uses
  %.6386.i212 = phi ptr [ %i.fl, %bb.af ], [ %.6386.i.ph, %.preheader134 ] ; 4 uses
  %i.ep = zext nneg i32 %.in to i64               ; 3 uses
  %i.eq = icmp ult ptr %i.eo, %i.i
  %i.er = icmp ule ptr %.6386.i212, %i.j
  %i.es = and i1 %i.eq, %i.er
  br i1 %i.es, label %bb.ae, label %.loopexit.thread, !prof !31

bb.ae:                                            ; preds = %.lr.ph213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6386.i212, ptr noundef nonnull align 1 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %.6386.i212, i64 %i.ep ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep ; 3 uses
  %i.ev = and i32 %i.en, 15                       ; 2 uses
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %.val = load i16, ptr %i.eu, align 1, !tbaa !30 ; 2 uses
  %i.ex = zext i16 %.val to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  %i.ez = sub nsw i64 0, %i.ex
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 %i.ez ; 5 uses
  %i.fb = icmp eq i32 %i.ev, 15
  %i.fc = icmp ult i16 %.val, 8
  %or.cond3.i.not127 = select i1 %i.fb, i1 true, i1 %i.fc
  %.not443.i = icmp ult ptr %i.fa, %i.b
  %or.cond = select i1 %or.cond3.i.not127, i1 true, i1 %.not443.i
  br i1 %or.cond, label %.loopexit135, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = load i64, ptr %i.fa, align 1
  store i64 %i.fd, ptr %i.et, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fg = load i64, ptr %i.ff, align 1
  store i64 %i.fg, ptr %i.fe, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fj = load i16, ptr %i.fi, align 1
  store i16 %i.fj, ptr %i.fh, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 3 ; 2 uses
  %i.fn = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fo = zext i8 %i.fn to i32                    ; 3 uses
  %i.fp = lshr i32 %i.fo, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fp, 15
  br i1 %.not439.i, label %.thread97, label %.lr.ph213

.loopexit:                                        ; preds = %.backedge, %.preheader144
  %.4 = phi ptr [ %i.t, %.preheader144 ], [ %i.cl, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader144 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.v, %.preheader144 ], [ %i.cn, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.x, %.preheader144 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.fq = icmp eq i64 %.4362.i, 15
  br i1 %i.fq, label %.thread97, label %.loopexit.thread

.thread97:                                        ; preds = %bb.af, %.preheader134, %.loopexit
  %.0364.i106 = phi i32 [ %.0364.i, %.loopexit ], [ %i.km, %.preheader134 ], [ %i.fo, %bb.af ]
  %.7387.i104 = phi ptr [ %.7387.i, %.loopexit ], [ %.6386.i.ph, %.preheader134 ], [ %i.fl, %bb.af ] ; 2 uses
  %.4102 = phi ptr [ %.4, %.loopexit ], [ %i.kk, %.preheader134 ], [ %i.fm, %bb.af ] ; 4 uses
  %i.fr = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 3 uses
  %.not.i19 = icmp ult ptr %.4102, %i.fr
  br i1 %.not.i19, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ag:                                            ; preds = %.thread97
  %i.fs = load i8, ptr %.4102, align 1, !tbaa !15 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.4102, i64 1 ; 4 uses
  %.not21.i21 = icmp eq i8 %i.fs, -1
  br i1 %.not21.i21, label %.preheader133.preheader, label %read_variable_length.exit24.thread110, !prof !27

.preheader133.preheader:                          ; preds = %bb.ag
  %.not22.i23474 = icmp ult ptr %i.ft, %i.fr
  br i1 %.not22.i23474, label %.lr.ph477, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit24.thread110:            ; preds = %bb.ag
  %i.fu = zext i8 %i.fs to i64
  br label %bb.ah

.preheader133:                                    ; preds = %.lr.ph477
  %.not22.i23 = icmp ult ptr %i.fx, %i.fr
  br i1 %.not22.i23, label %.lr.ph477, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph477:                                        ; preds = %.preheader133.preheader, %.preheader133
  %.0.i22476 = phi i64 [ %i.fy, %.preheader133 ], [ 255, %.preheader133.preheader ]
  %.16475 = phi ptr [ %i.fx, %.preheader133 ], [ %i.ft, %.preheader133.preheader ] ; 2 uses
  %i.fv = load i8, ptr %.16475, align 1, !tbaa !15 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.16475, i64 1 ; 5 uses
  %i.fy = add i64 %.0.i22476, %i.fw               ; 3 uses
  %i.fz = icmp eq i8 %i.fv, -1
  br i1 %i.fz, label %.preheader133, label %read_variable_length.exit24, !llvm.loop !3

read_variable_length.exit24:                      ; preds = %.lr.ph477
  %i.ga = icmp eq i64 %i.fy, -1
  br i1 %i.ga, label %LZ4_wildCopy32.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %read_variable_length.exit24.thread110, %read_variable_length.exit24
  %.016.i20114 = phi i64 [ %i.fu, %read_variable_length.exit24.thread110 ], [ %i.fy, %read_variable_length.exit24 ]
  %.17113 = phi ptr [ %i.ft, %read_variable_length.exit24.thread110 ], [ %i.fx, %read_variable_length.exit24 ] ; 3 uses
  %i.gb = add i64 %.016.i20114, 15                ; 3 uses
  %i.gc = ptrtoint ptr %.7387.i104 to i64
  %i.gd = xor i64 %i.gc, -1
  %i.ge = icmp ugt i64 %i.gb, %i.gd
  %i.gf = ptrtoint ptr %.17113 to i64
  %i.gg = xor i64 %i.gf, -1
  %i.gh = icmp ugt i64 %i.gb, %i.gg
  %or.cond125 = select i1 %i.ge, i1 true, i1 %i.gh, !prof !44
  br i1 %or.cond125, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %.lr.ph213, %bb.ah, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i106, %bb.ah ], [ %i.en, %.lr.ph213 ]
  %.7387.i103 = phi ptr [ %.7387.i, %.loopexit ], [ %.7387.i104, %bb.ah ], [ %.6386.i212, %.lr.ph213 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17113, %bb.ah ], [ %i.eo, %.lr.ph213 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.gb, %bb.ah ], [ %i.ep, %.lr.ph213 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.7387.i103, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1369, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i103, %.loopexit.thread ], [ %.0380.i206, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.gi, %.loopexit.thread ], [ %i.as, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i105, %.loopexit.thread ], [ %i.af, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ar, %bb.k ] ; 4 uses
  %i.gj = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.gk = icmp ugt ptr %.3377.i, %i.gj
  br i1 %i.gk, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.gn = icmp ugt ptr %i.gl, %i.gm
  br i1 %i.gn, label %bb.aj, label %.preheader132

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.go = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.go, %i.f
  %i.gp = icmp ugt ptr %.3377.i, %i.h
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.gp
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_partial_usingDict:bb.a
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !37
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 4
  %i.jb = load i32, ptr %i.iz, align 1
  store i32 %i.jb, ptr %i.ja, align 1
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !37
  %i.je = sext i32 %i.jd to i64
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr inbounds i8, ptr %i.iz, i64 %i.jf
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jh = load i64, ptr %.1369.i.ptr.i, align 1
  store i64 %i.jh, ptr %.11391.i.ptr.i, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.3371.i.i = phi ptr [ %i.jg, %bb.aw ], [ %i.ji, %bb.ax ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 8
  %i.jk = load i64, ptr %.3371.i.i, align 1
  store i64 %i.jk, ptr %i.jj, align 1
  %i.jl = icmp ugt i64 %.13.i.i, 16
  br i1 %i.jl, label %bb.az, label %.preheader157.i

bb.az:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.09.i8.i = phi ptr [ %i.jm, %bb.az ], [ %i.jo, %bb.ba ] ; 2 uses
  %.3371.i.pn.i = phi ptr [ %.3371.i.i, %bb.az ], [ %.0.i9.i, %bb.ba ]
  %.0.i9.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i, i64 8 ; 2 uses
  %i.jn = load i64, ptr %.0.i9.i, align 1
  store i64 %i.jn, ptr %.09.i8.i, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i8.i, i64 8 ; 2 uses
  %i.jp = icmp ult ptr %i.jo, %.ptr150.i
  br i1 %i.jp, label %bb.ba, label %.preheader157.i, !llvm.loop !1

.preheader157.i:                                  ; preds = %bb.ba, %bb.ay, %.loopexit.i, %bb.h
  %.3.ph.i = phi ptr [ %0, %bb.h ], [ %.2.i, %.loopexit.i ], [ %.2.i, %bb.ay ], [ %.2.i, %bb.ba ] ; 2 uses
  %.6386.i.idx.ph.i = phi i64 [ 0, %bb.h ], [ %.11391.i.add143.i, %.loopexit.i ], [ %.11391.i.add.i, %bb.ay ], [ %.11391.i.add.i, %bb.ba ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  %i.jr = load i8, ptr %.3.ph.i, align 1, !tbaa !15
  %i.js = zext i8 %i.jr to i32                    ; 3 uses
  %i.jt = lshr i32 %i.js, 4                       ; 2 uses
  %.not439.i233.i = icmp eq i32 %i.jt, 15
  br i1 %.not439.i233.i, label %.thread100.i, label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.preheader157.i
  %i.ju = add nsw i64 %i.l, -32
  br label %bb.ag

bb.bb:                                            ; preds = %.loopexit.i, %bb.an, %.thread124.i
  %.18.i.i = phi ptr [ %.ptr151.i, %.loopexit.i ], [ %.ptr147.i, %bb.an ], [ %i.m, %.thread124.i ]
  %i.jv = ptrtoint ptr %.18.i.i to i64
  %i.jw = sub i64 %i.jv, %i.q
  %i.jx = trunc i64 %i.jw to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i:                     ; preds = %.thread96.i, %bb.q, %read_variable_length.exit21.i, %bb.o, %bb.l, %read_variable_length.exit.i, %bb.j, %.preheader166.i.preheader, %.preheader163.i.preheader, %.preheader166.i, %.preheader163.i, %.preheader156.i, %.preheader154.i, %.preheader156.i.preheader, %.preheader154.i.preheader, %.loopexit171.i, %read_variable_length.exit33.i, %bb.ao, %bb.ak, %read_variable_length.exit27.i, %.thread100.i
  %.10.i = phi ptr [ %.2.i, %.loopexit171.i ], [ %i.bo, %.preheader163.i ], [ %.20.i, %read_variable_length.exit33.i ], [ %i.fm, %.preheader156.i ], [ %.18116.i, %bb.ak ], [ %i.fm, %read_variable_length.exit27.i ], [ %i.hb, %.preheader154.i ], [ %.4105.i, %.thread100.i ], [ %i.ao, %.preheader166.i ], [ %.8.i, %bb.ao ], [ %i.gx, %.preheader154.i.preheader ], [ %i.fi, %.preheader156.i.preheader ], [ %i.ao, %read_variable_length.exit.i ], [ %.1472.i, %bb.l ], [ %i.ah, %bb.j ], [ %.1691.i, %bb.q ], [ %i.bo, %read_variable_length.exit21.i ], [ %i.bg, %bb.o ], [ %i.ak, %.preheader166.i.preheader ], [ %i.bk, %.preheader163.i.preheader ], [ %.11.i, %.thread96.i ]
  %i.jy = ptrtoint ptr %.10.i to i64
  %i.jz = ptrtoint ptr %0 to i64
  %.neg.i.i = sub i64 %i.jz, %i.jy
  %i.ka = trunc i64 %.neg.i.i to i32
  %i.kb = add nsw i32 %i.ka, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.bc:                                            ; preds = %bb.d
  %i.kc = sub nsw i64 0, %i.c
  %i.kd = getelementptr inbounds i8, ptr %1, i64 %i.kc ; 4 uses
  %i.ke = icmp eq ptr %0, null
  %i.kf = icmp slt i32 %i.g, 0
  %or.cond.i.i30 = or i1 %i.ke, %i.kf
  br i1 %or.cond.i.i30, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kg = sext i32 %2 to i64
  %i.kh = getelementptr inbounds i8, ptr %0, i64 %i.kg ; 11 uses
  %i.ki = zext nneg i32 %i.g to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ki ; 9 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kh, i64 -16
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -32 ; 2 uses
  %i.km = icmp eq i32 %i.g, 0
  br i1 %i.km, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.be, !prof !27

bb.be:                                            ; preds = %bb.bd
  %i.kn = icmp eq i32 %2, 0
  br i1 %i.kn, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bf, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.ko = ptrtoint ptr %i.kj to i64               ; 2 uses
  %i.kp = ptrtoint ptr %1 to i64
  %i.kq = icmp samesign ult i32 %i.g, 64
  br i1 %i.kq, label %.preheader141.i, label %.preheader152.i

.preheader152.i:                                  ; preds = %bb.bf
  %i.kr = getelementptr inbounds i8, ptr %i.kh, i64 -17
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.kt = load i8, ptr %0, align 1, !tbaa !15
  %i.ku = zext i8 %i.kt to i32                    ; 3 uses
  %i.kv = lshr i32 %i.ku, 4                       ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.kx = icmp slt i32 %2, 18
  br i1 %i.kx, label %.loopexit142.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %.preheader152.i
  %i.ky = getelementptr inbounds i8, ptr %i.kh, i64 -15 ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kh, i64 -32
  %i.la = getelementptr inbounds i8, ptr %i.kj, i64 -64 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kh, i64 -6 ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.backedge.i75, %.lr.ph215.i
  %i.lc = phi i64 [ %i.kw, %.lr.ph215.i ], [ %i.no, %.backedge.i75 ] ; 2 uses
  %i.ld = phi i32 [ %i.kv, %.lr.ph215.i ], [ %i.nn, %.backedge.i75 ]
  %i.le = phi i32 [ %i.ku, %.lr.ph215.i ], [ %i.nm, %.backedge.i75 ] ; 2 uses
  %i.lf = phi ptr [ %i.ks, %.lr.ph215.i ], [ %i.nk, %.backedge.i75 ] ; 5 uses
  %.0380.i214.i = phi ptr [ %1, %.lr.ph215.i ], [ %.0380.i.be.i, %.backedge.i75 ] ; 5 uses
  %.0213.i = phi ptr [ %0, %.lr.ph215.i ], [ %.0.be.i76, %.backedge.i75 ]
  %i.lg = icmp eq i32 %i.ld, 15
  br i1 %i.lg, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %.not.i15.i = icmp ult ptr %i.lf, %i.ky
  br i1 %.not.i15.i, label %bb.bi, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.bi:                                            ; preds = %bb.bh
  %i.lh = load i8, ptr %i.lf, align 1, !tbaa !15  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0213.i, i64 2 ; 4 uses
  %.not21.i.i97 = icmp eq i8 %i.lh, -1
  br i1 %.not21.i.i97, label %.preheader150.i.preheader, label %read_variable_length.exit.thread70.i, !prof !27

.preheader150.i.preheader:                        ; preds = %bb.bi
  %.not22.i.i101682 = icmp ult ptr %i.li, %i.ky
  br i1 %.not22.i.i101682, label %.lr.ph, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

read_variable_length.exit.thread70.i:             ; preds = %bb.bi
  %i.lj = zext i8 %i.lh to i64
  br label %bb.bj

.preheader150.i:                                  ; preds = %.lr.ph
  %.not22.i.i101 = icmp ult ptr %i.lm, %i.ky
  br i1 %.not22.i.i101, label %.lr.ph, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph:                                           ; preds = %.preheader150.i.preheader, %.preheader150.i
  %.0.i16.i684 = phi i64 [ %i.ln, %.preheader150.i ], [ 255, %.preheader150.i.preheader ]
  %.13.i100683 = phi ptr [ %i.lm, %.preheader150.i ], [ %i.li, %.preheader150.i.preheader ] ; 2 uses
  %i.lk = load i8, ptr %.13.i100683, align 1, !tbaa !15 ; 2 uses
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %.13.i100683, i64 1 ; 5 uses
  %i.ln = add i64 %.0.i16.i684, %i.ll             ; 3 uses
  %i.lo = icmp eq i8 %i.lk, -1
  br i1 %i.lo, label %.preheader150.i, label %read_variable_length.exit.i102, !llvm.loop !3

read_variable_length.exit.i102:                   ; preds = %.lr.ph
  %i.lp = icmp eq i64 %i.ln, -1
  br i1 %i.lp, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bj

bb.bj:                                            ; preds = %read_variable_length.exit.i102, %read_variable_length.exit.thread70.i
  %.016.i74.i = phi i64 [ %i.lj, %read_variable_length.exit.thread70.i ], [ %i.ln, %read_variable_length.exit.i102 ]
  %.1473.i = phi ptr [ %i.li, %read_variable_length.exit.thread70.i ], [ %i.lm, %read_variable_length.exit.i102 ] ; 5 uses
  %i.lq = add i64 %.016.i74.i, 15                 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.0380.i214.i, i64 %i.lq ; 4 uses
  %i.ls = ptrtoint ptr %.1473.i to i64
  %i.lt = xor i64 %i.ls, -1
  %i.lu = icmp ugt i64 %i.lq, %i.lt
  br i1 %i.lu, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bk, !prof !27

bb.bk:                                            ; preds = %bb.bj
  %i.lv = icmp ugt ptr %i.lr, %i.kl
  %i.lw = getelementptr inbounds nuw i8, ptr %.1473.i, i64 %i.lq ; 2 uses
  %i.lx = icmp ugt ptr %i.lw, %i.kz
  %or.cond450.i.i98 = select i1 %i.lv, i1 true, i1 %i.lx
  br i1 %or.cond450.i.i98, label %LZ4_wildCopy32.exit.i43, label %.preheader149.i

.preheader149.i:                                  ; preds = %bb.bk, %.preheader149.i
  %.011.i.i99 = phi ptr [ %i.ma, %.preheader149.i ], [ %.0380.i214.i, %bb.bk ] ; 3 uses
  %.0.i35.i = phi ptr [ %i.mb, %.preheader149.i ], [ %.1473.i, %bb.bk ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i.i99, ptr noundef nonnull align 1 dereferenceable(16) %.0.i35.i, i64 16, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %.011.i.i99, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i35.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ly, ptr noundef nonnull align 1 dereferenceable(16) %i.lz, i64 16, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %.011.i.i99, i64 32 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i35.i, i64 32
  %i.mc = icmp ult ptr %i.ma, %i.lr
  br i1 %i.mc, label %.preheader149.i, label %LZ4_wildCopy32.exit.thread80.i, !llvm.loop !4

bb.bl:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i214.i, ptr noundef nonnull align 1 dereferenceable(16) %i.lf, i64 16, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lc
  %i.me = getelementptr inbounds nuw i8, ptr %.0380.i214.i, i64 %i.lc
  br label %LZ4_wildCopy32.exit.thread80.i

LZ4_wildCopy32.exit.thread80.i:                   ; preds = %.preheader149.i, %bb.bl
  %.1.i31 = phi ptr [ %i.md, %bb.bl ], [ %i.lw, %.preheader149.i ] ; 3 uses
  %.2382.i.i = phi ptr [ %i.me, %bb.bl ], [ %i.lr, %.preheader149.i ] ; 23 uses
  %.val42.i = load i16, ptr %.1.i31, align 1, !tbaa !30 ; 5 uses
  %i.mf = zext i16 %.val42.i to i64               ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.1.i31, i64 2 ; 6 uses
  %i.mh = sub nsw i64 0, %i.mf
  %i.mi = getelementptr inbounds i8, ptr %.2382.i.i, i64 %i.mh ; 16 uses
  %i.mj = and i32 %i.le, 15                       ; 2 uses
  %i.mk = icmp eq i32 %i.mj, 15
  br i1 %i.mk, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %LZ4_wildCopy32.exit.thread80.i
  %.not.i17.i = icmp ult ptr %i.mg, %i.lb
  br i1 %.not.i17.i, label %bb.bn, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.bn:                                            ; preds = %bb.bm
  %i.ml = load i8, ptr %i.mg, align 1, !tbaa !15  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.1.i31, i64 3 ; 4 uses
  %.not21.i19.i = icmp eq i8 %i.ml, -1
  br i1 %.not21.i19.i, label %.preheader147.i.preheader, label %read_variable_length.exit22.thread89.i, !prof !27

.preheader147.i.preheader:                        ; preds = %bb.bn
  %.not22.i21.i686 = icmp ult ptr %i.mm, %i.lb
  br i1 %.not22.i21.i686, label %.lr.ph689, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

read_variable_length.exit22.thread89.i:           ; preds = %bb.bn
  %i.mn = zext i8 %i.ml to i64
  br label %bb.bo

.preheader147.i:                                  ; preds = %.lr.ph689
  %.not22.i21.i = icmp ult ptr %i.mq, %i.lb
  br i1 %.not22.i21.i, label %.lr.ph689, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph689:                                        ; preds = %.preheader147.i.preheader, %.preheader147.i
  %.0.i20.i688 = phi i64 [ %i.mr, %.preheader147.i ], [ 255, %.preheader147.i.preheader ]
  %.15.i96687 = phi ptr [ %i.mq, %.preheader147.i ], [ %i.mm, %.preheader147.i.preheader ] ; 2 uses
  %i.mo = load i8, ptr %.15.i96687, align 1, !tbaa !15 ; 2 uses
  %i.mp = zext i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %.15.i96687, i64 1 ; 5 uses
  %i.mr = add i64 %.0.i20.i688, %i.mp             ; 3 uses
  %i.ms = icmp eq i8 %i.mo, -1
  br i1 %i.ms, label %.preheader147.i, label %read_variable_length.exit22.i, !llvm.loop !3

read_variable_length.exit22.i:                    ; preds = %.lr.ph689
  %i.mt = icmp eq i64 %i.mr, -1
  br i1 %i.mt, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bo

bb.bo:                                            ; preds = %read_variable_length.exit22.i, %read_variable_length.exit22.thread89.i
  %.016.i1893.i = phi i64 [ %i.mn, %read_variable_length.exit22.thread89.i ], [ %i.mr, %read_variable_length.exit22.i ]
  %.1692.i = phi ptr [ %i.mm, %read_variable_length.exit22.thread89.i ], [ %i.mq, %read_variable_length.exit22.i ] ; 3 uses
  %i.mu = add i64 %.016.i1893.i, 19               ; 4 uses
  %i.mv = ptrtoint ptr %.2382.i.i to i64
  %i.mw = xor i64 %i.mv, -1
  %i.mx = icmp ugt i64 %i.mu, %i.mw
  br i1 %i.mx, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bp, !prof !27

bb.bp:                                            ; preds = %bb.bo
  %i.my = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.mu
  %.not436.i.i95 = icmp ult ptr %i.my, %i.la
  br i1 %.not436.i.i95, label %.thread97.i, label %.loopexit155.i

bb.bq:                                            ; preds = %LZ4_wildCopy32.exit.thread80.i
  %narrow.i.i32 = add nuw nsw i32 %i.mj, 4
  %i.mz = zext nneg i32 %narrow.i.i32 to i64      ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.mz ; 2 uses
  %.not.i.i33 = icmp ult ptr %i.na, %i.la
  br i1 %.not.i.i33, label %bb.br, label %.loopexit155.i

bb.br:                                            ; preds = %bb.bq
  %i.nb = icmp uge ptr %i.mi, %i.kd
  %i.nc = icmp ugt i16 %.val42.i, 7
  %or.cond5.i.i = select i1 %i.nb, i1 %i.nc, i1 false
  br i1 %or.cond5.i.i, label %bb.bs, label %.thread97.i

bb.bs:                                            ; preds = %bb.br
  %i.nd = load i64, ptr %i.mi, align 1
  store i64 %i.nd, ptr %.2382.i.i, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ng = load i64, ptr %i.nf, align 1
  store i64 %i.ng, ptr %i.ne, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.nj = load i16, ptr %i.ni, align 1
  store i16 %i.nj, ptr %i.nh, align 1
  br label %.backedge.i75

.backedge.i75:                                    ; preds = %.preheader145.i, %.lr.ph.i84, %bb.cc, %middle.block, %bb.cd, %bb.bs
  %.0.be.i76 = phi ptr [ %i.mg, %bb.bs ], [ %.11.i73, %bb.cc ], [ %.11.i73, %bb.cd ], [ %.11.i73, %middle.block ], [ %.11.i73, %.lr.ph.i84 ], [ %.11.i73, %.preheader145.i ] ; 3 uses
  %.0380.i.be.i = phi ptr [ %i.na, %bb.bs ], [ %i.nr, %bb.cc ], [ %i.nr, %bb.cd ], [ %i.nr, %middle.block ], [ %i.nr, %.lr.ph.i84 ], [ %i.nr, %.preheader145.i ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.be.i76, i64 1 ; 3 uses
  %i.nl = load i8, ptr %.0.be.i76, align 1, !tbaa !15
  %i.nm = zext i8 %i.nl to i32                    ; 3 uses
  %i.nn = lshr i32 %i.nm, 4                       ; 2 uses
  %i.no = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.np = icmp ugt ptr %i.nk, %i.kr
  br i1 %i.np, label %.loopexit142.i, label %bb.bg

.thread97.i:                                      ; preds = %bb.br, %bb.bp
  %.11.i73 = phi ptr [ %i.mg, %bb.br ], [ %.1692.i, %bb.bp ] ; 6 uses
  %.2360.i.i74 = phi i64 [ %i.mz, %bb.br ], [ %i.mu, %bb.bp ] ; 3 uses
  %i.nq = icmp ult ptr %i.mi, %i.kd
  br i1 %i.nq, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bt, !prof !43

bb.bt:                                            ; preds = %.thread97.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %.2360.i.i74 ; 8 uses
  %i.ns = icmp ult i16 %.val42.i, 16
  br i1 %i.ns, label %bb.bu, label %.preheader145.i, !prof !27

bb.bu:                                            ; preds = %bb.bt
  switch i16 %.val42.i, label %bb.by [
    i16 1, label %bb.bv
    i16 2, label %bb.bw
    i16 4, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.nt = load i8, ptr %i.mi, align 1, !tbaa !15
  %i.nu = zext i8 %i.nt to i32
  %.sroa.0.0.isplat.i.i91 = mul nuw i32 %i.nu, 16843009
  br label %bb.cd

bb.bw:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload9.i.i87 = load i16, ptr %i.mi, align 1
  %.sroa.0.0.insert.ext.i.i88 = zext i16 %.sroa.0.0.copyload9.i.i87 to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i.i89 = shl nuw i32 %.sroa.0.0.insert.ext.i.i88, 16
  %.sroa.0.2.insert.insert.i.i90 = or disjoint i32 %.sroa.0.2.insert.shift.i.i89, %.sroa.0.0.insert.ext.i.i88
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload2.i.i80 = load i32, ptr %i.mi, align 1
  br label %bb.cd

bb.by:                                            ; preds = %bb.bu
  %i.nv = icmp samesign ult i16 %.val42.i, 8
  br i1 %i.nv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %.2382.i.i, align 1, !tbaa !24
  %i.nw = load i16, ptr %i.mi, align 1
  store i16 %i.nw, ptr %.2382.i.i, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 2
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.nz = load i16, ptr %i.ny, align 1
  store i16 %i.nz, ptr %i.nx, align 1
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.mf
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !37
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.oc ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 4
  %i.of = load i32, ptr %i.od, align 1
  store i32 %i.of, ptr %i.oe, align 1
  %i.og = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.mf
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !37
  %i.oi = sext i32 %i.oh to i64
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds i8, ptr %i.od, i64 %i.oj
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.ol = load i64, ptr %i.mi, align 1
  store i64 %i.ol, ptr %.2382.i.i, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.019.i.i92 = phi ptr [ %i.ok, %bb.bz ], [ %i.om, %bb.ca ]
  %.0.i40.i = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %.09.i.i.i93 = phi ptr [ %.0.i40.i, %bb.cb ], [ %i.oo, %bb.cc ] ; 2 uses
  %.0.i.i.i94 = phi ptr [ %.019.i.i92, %bb.cb ], [ %i.op, %bb.cc ] ; 2 uses
  %i.on = load i64, ptr %.0.i.i.i94, align 1
  store i64 %i.on, ptr %.09.i.i.i93, align 1
  %i.oo = getelementptr inbounds nuw i8, ptr %.09.i.i.i93, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i.i.i94, i64 8
  %i.oq = icmp ult ptr %i.oo, %i.nr
  br i1 %i.oq, label %bb.cc, label %.backedge.i75, !llvm.loop !1

bb.cd:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.sroa.9.0.i.i81 = phi i32 [ %.sroa.0.0.isplat.i.i91, %bb.bv ], [ %.sroa.0.2.insert.insert.i.i90, %bb.bw ], [ %.sroa.0.0.copyload2.i.i80, %bb.bx ] ; 5 uses
  store i32 %.sroa.9.0.i.i81, ptr %.2382.i.i, align 1
  %.sroa.9.0..sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 4
  store i32 %.sroa.9.0.i.i81, ptr %.sroa.9.0..sroa_idx.i.i82, align 1
  %i.or = icmp samesign ugt i64 %.2360.i.i74, 8
  br i1 %i.or, label %.lr.ph.preheader.i83, label %.backedge.i75

.lr.ph.preheader.i83:                             ; preds = %bb.cd
  %.0.i39210.i = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8 ; 4 uses
  %7 = ptrtoaddr ptr %.2382.i.i to i64            ; 3 uses
  %i.os = add i64 %.2360.i.i74, %7
  %i.ot = add i64 %7, 16
  %i.ou = tail call i64 @llvm.umax.i64(i64 %i.os, i64 %i.ot)
  %i.ov = add i64 %i.ou, -9
  %i.ow = sub i64 %i.ov, %7                       ; 2 uses
  %i.ox = lshr i64 %i.ow, 3
  %i.oy = add nuw nsw i64 %i.ox, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ow, 24
  br i1 %min.iters.check, label %.lr.ph.i84.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i83
  %n.vec = and i64 %i.oy, 4611686018427387900     ; 3 uses
  %i.oz = shl i64 %n.vec, 3                       ; 2 uses
  %i.pa = getelementptr i8, ptr %.0.i39210.i, i64 %i.oz
  %i.pb = getelementptr i8, ptr %.2382.i.i, i64 %i.oz
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i.i81, i64 0
  %i.pc = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i39210.i, i64 %i.pd
  %i.pe = getelementptr i8, ptr %.0.i39210.i, i64 %i.pd
  %next.gep724 = getelementptr i8, ptr %i.pe, i64 16
  store <4 x i32> %i.pc, ptr %next.gep, align 1
  store <4 x i32> %i.pc, ptr %next.gep724, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pf = icmp eq i64 %index.next, %n.vec
  br i1 %i.pf, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oy, %n.vec
  br i1 %cmp.n, label %.backedge.i75, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %.lr.ph.preheader.i83, %middle.block
  %.0.i39212.i.ph = phi ptr [ %.0.i39210.i, %.lr.ph.preheader.i83 ], [ %i.pa, %middle.block ]
  %.pn.i211.i.ph = phi ptr [ %.2382.i.i, %.lr.ph.preheader.i83 ], [ %i.pb, %middle.block ]
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84
  %.0.i39212.i = phi ptr [ %.0.i39.i86, %.lr.ph.i84 ], [ %.0.i39212.i.ph, %.lr.ph.i84.preheader ] ; 3 uses
  %.pn.i211.i = phi ptr [ %.0.i39212.i, %.lr.ph.i84 ], [ %.pn.i211.i.ph, %.lr.ph.i84.preheader ]
  store i32 %.sroa.9.0.i.i81, ptr %.0.i39212.i, align 1
  %.sroa.9.0..sroa_idx3.i.i85 = getelementptr inbounds nuw i8, ptr %.pn.i211.i, i64 12
  store i32 %.sroa.9.0.i.i81, ptr %.sroa.9.0..sroa_idx3.i.i85, align 1
  %.0.i39.i86 = getelementptr inbounds nuw i8, ptr %.0.i39212.i, i64 8 ; 2 uses
  %i.pg = icmp ult ptr %.0.i39.i86, %i.nr
  br i1 %i.pg, label %.lr.ph.i84, label %.backedge.i75, !llvm.loop !137

.preheader145.i:                                  ; preds = %bb.bt, %.preheader145.i
  %.011.i36.i = phi ptr [ %i.pj, %.preheader145.i ], [ %.2382.i.i, %bb.bt ] ; 3 uses
  %.0.i37.i = phi ptr [ %i.pk, %.preheader145.i ], [ %i.mi, %bb.bt ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i36.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i37.i, i64 16, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %.011.i36.i, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ph, ptr noundef nonnull align 1 dereferenceable(16) %i.pi, i64 16, i1 false)
  %i.pj = getelementptr inbounds nuw i8, ptr %.011.i36.i, i64 32 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 32
  %i.pl = icmp ult ptr %i.pj, %i.nr
  br i1 %i.pl, label %.preheader145.i, label %.backedge.i75, !llvm.loop !4

.lr.ph221.i:                                      ; preds = %.preheader141.i, %bb.cf
  %.in.i39 = phi i32 [ %i.qo, %bb.cf ], [ %i.vl, %.preheader141.i ]
  %i.pm = phi i32 [ %i.qn, %bb.cf ], [ %i.vk, %.preheader141.i ] ; 2 uses
  %i.pn = phi ptr [ %i.ql, %bb.cf ], [ %i.vi, %.preheader141.i ] ; 4 uses
  %.6386.i220.i = phi ptr [ %i.qk, %bb.cf ], [ %.6386.i.ph.i, %.preheader141.i ] ; 4 uses
  %i.po = zext nneg i32 %.in.i39 to i64           ; 3 uses
  %i.pp = icmp ult ptr %i.pn, %i.kk
  %i.pq = icmp ule ptr %.6386.i220.i, %i.kl
  %i.pr = and i1 %i.pp, %i.pq
  br i1 %i.pr, label %bb.ce, label %.loopexit142.thread.i, !prof !31

bb.ce:                                            ; preds = %.lr.ph221.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6386.i220.i, ptr noundef nonnull align 1 dereferenceable(16) %i.pn, i64 16, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %.6386.i220.i, i64 %i.po ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po ; 3 uses
  %i.pu = and i32 %i.pm, 15                       ; 2 uses
  %i.pv = zext nneg i32 %i.pu to i64              ; 2 uses
  %.val.i66 = load i16, ptr %i.pt, align 1, !tbaa !30 ; 2 uses
  %i.pw = zext i16 %.val.i66 to i64               ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 2 ; 2 uses
  %i.py = sub nsw i64 0, %i.pw
  %i.pz = getelementptr inbounds i8, ptr %i.ps, i64 %i.py ; 5 uses
  %i.qa = icmp eq i32 %i.pu, 15
  %i.qb = icmp ult i16 %.val.i66, 8
  %or.cond3.i.not135.i = select i1 %i.qa, i1 true, i1 %i.qb
  %.not443.i.i = icmp ult ptr %i.pz, %i.kd
  %or.cond.i67 = select i1 %or.cond3.i.not135.i, i1 true, i1 %.not443.i.i
  br i1 %or.cond.i67, label %.loopexit143.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qc = load i64, ptr %i.pz, align 1
  store i64 %i.qc, ptr %i.ps, align 1
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qf = load i64, ptr %i.qe, align 1
  store i64 %i.qf, ptr %i.qd, align 1
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qi = load i16, ptr %i.qh, align 1
  store i16 %i.qi, ptr %i.qg, align 1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pt, i64 3 ; 2 uses
  %i.qm = load i8, ptr %i.px, align 1, !tbaa !15
  %i.qn = zext i8 %i.qm to i32                    ; 3 uses
  %i.qo = lshr i32 %i.qn, 4                       ; 2 uses
  %.not439.i.i68 = icmp eq i32 %i.qo, 15
  br i1 %.not439.i.i68, label %.thread101.i, label %.lr.ph221.i

.loopexit142.i:                                   ; preds = %.backedge.i75, %.preheader152.i
  %.4.i77 = phi ptr [ %i.ks, %.preheader152.i ], [ %i.nk, %.backedge.i75 ] ; 2 uses
  %.7387.i.i = phi ptr [ %1, %.preheader152.i ], [ %.0380.i.be.i, %.backedge.i75 ] ; 2 uses
  %.0364.i.i78 = phi i32 [ %i.ku, %.preheader152.i ], [ %i.nm, %.backedge.i75 ] ; 2 uses
  %.4362.i.i79 = phi i64 [ %i.kw, %.preheader152.i ], [ %i.no, %.backedge.i75 ] ; 2 uses
  %i.qp = icmp eq i64 %.4362.i.i79, 15
  br i1 %i.qp, label %.thread101.i, label %.loopexit142.thread.i

.thread101.i:                                     ; preds = %bb.cf, %.preheader141.i, %.loopexit142.i
  %.0364.i110.i = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %i.vk, %.preheader141.i ], [ %i.qn, %bb.cf ]
  %.7387.i108.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.6386.i.ph.i, %.preheader141.i ], [ %i.qk, %bb.cf ] ; 2 uses
  %.4106.i = phi ptr [ %.4.i77, %.loopexit142.i ], [ %i.vi, %.preheader141.i ], [ %i.ql, %bb.cf ] ; 4 uses
  %i.qq = getelementptr inbounds i8, ptr %i.kh, i64 -15 ; 3 uses
  %.not.i23.i = icmp ult ptr %.4106.i, %i.qq
  br i1 %.not.i23.i, label %bb.cg, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.cg:                                            ; preds = %.thread101.i
  %i.qr = load i8, ptr %.4106.i, align 1, !tbaa !15 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.4106.i, i64 1 ; 4 uses
  %.not21.i25.i = icmp eq i8 %i.qr, -1
  br i1 %.not21.i25.i, label %.preheader140.i.preheader, label %read_variable_length.exit28.thread114.i, !prof !27

.preheader140.i.preheader:                        ; preds = %bb.cg
  %.not22.i27.i692 = icmp ult ptr %i.qs, %i.qq
  br i1 %.not22.i27.i692, label %.lr.ph695, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

read_variable_length.exit28.thread114.i:          ; preds = %bb.cg
  %i.qt = zext i8 %i.qr to i64
  br label %bb.ch

.preheader140.i:                                  ; preds = %.lr.ph695
  %.not22.i27.i = icmp ult ptr %i.qw, %i.qq
  br i1 %.not22.i27.i, label %.lr.ph695, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph695:                                        ; preds = %.preheader140.i.preheader, %.preheader140.i
  %.0.i26.i694 = phi i64 [ %i.qx, %.preheader140.i ], [ 255, %.preheader140.i.preheader ]
  %.17.i69693 = phi ptr [ %i.qw, %.preheader140.i ], [ %i.qs, %.preheader140.i.preheader ] ; 2 uses
  %i.qu = load i8, ptr %.17.i69693, align 1, !tbaa !15 ; 2 uses
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %.17.i69693, i64 1 ; 5 uses
  %i.qx = add i64 %.0.i26.i694, %i.qv             ; 3 uses
  %i.qy = icmp eq i8 %i.qu, -1
  br i1 %i.qy, label %.preheader140.i, label %read_variable_length.exit28.i, !llvm.loop !3

read_variable_length.exit28.i:                    ; preds = %.lr.ph695
  %i.qz = icmp eq i64 %i.qx, -1
  br i1 %i.qz, label %LZ4_wildCopy32.exit.thread.i54, label %bb.ch

bb.ch:                                            ; preds = %read_variable_length.exit28.i, %read_variable_length.exit28.thread114.i
  %.016.i24118.i = phi i64 [ %i.qt, %read_variable_length.exit28.thread114.i ], [ %i.qx, %read_variable_length.exit28.i ]
  %.18117.i = phi ptr [ %i.qs, %read_variable_length.exit28.thread114.i ], [ %i.qw, %read_variable_length.exit28.i ] ; 3 uses
  %i.ra = add i64 %.016.i24118.i, 15              ; 3 uses
  %i.rb = ptrtoint ptr %.7387.i108.i to i64
  %i.rc = xor i64 %i.rb, -1
  %i.rd = icmp ugt i64 %i.ra, %i.rc
  %i.re = ptrtoint ptr %.18117.i to i64
  %i.rf = xor i64 %i.re, -1
  %i.rg = icmp ugt i64 %i.ra, %i.rf
  %or.cond133.i = select i1 %i.rd, i1 true, i1 %i.rg, !prof !44
  br i1 %or.cond133.i, label %LZ4_wildCopy32.exit.thread.i54, label %.loopexit142.thread.i, !prof !44

.loopexit142.thread.i:                            ; preds = %.lr.ph221.i, %bb.ch, %.loopexit142.i
  %.0364.i109.i40 = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %.0364.i110.i, %bb.ch ], [ %i.pm, %.lr.ph221.i ]
  %.7387.i107.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.7387.i108.i, %bb.ch ], [ %.6386.i220.i, %.lr.ph221.i ] ; 2 uses
  %.5.i41 = phi ptr [ %.4.i77, %.loopexit142.i ], [ %.18117.i, %bb.ch ], [ %i.pn, %.lr.ph221.i ]
  %.6.i.i42 = phi i64 [ %.4362.i.i79, %.loopexit142.i ], [ %i.ra, %bb.ch ], [ %i.po, %.lr.ph221.i ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.7387.i107.i, i64 %.6.i.i42
  br label %LZ4_wildCopy32.exit.i43

LZ4_wildCopy32.exit.i43:                          ; preds = %bb.bk, %.loopexit142.thread.i
  %.6.i44 = phi ptr [ %.5.i41, %.loopexit142.thread.i ], [ %.1473.i, %bb.bk ] ; 7 uses
  %.8388.i.i = phi ptr [ %.7387.i107.i, %.loopexit142.thread.i ], [ %.0380.i214.i, %bb.bk ] ; 7 uses
  %.3377.i.i = phi ptr [ %i.rh, %.loopexit142.thread.i ], [ %i.lr, %bb.bk ] ; 4 uses
  %.1365.i.i45 = phi i32 [ %.0364.i109.i40, %.loopexit142.thread.i ], [ %i.le, %bb.bk ]
  %.7.i.i46 = phi i64 [ %.6.i.i42, %.loopexit142.thread.i ], [ %i.lq, %bb.bk ] ; 3 uses
  %i.ri = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.rj = icmp ugt ptr %.3377.i.i, %i.ri
  br i1 %i.rj, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy32.exit.i43
  %i.rk = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46 ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %i.kh, i64 -8
  %i.rm = icmp ugt ptr %i.rk, %i.rl
  br i1 %i.rm, label %bb.cj, label %.preheader139.i

bb.cj:                                            ; preds = %bb.ci, %LZ4_wildCopy32.exit.i43
  %i.rn = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46
  %i.ro = icmp ugt ptr %i.rn, %i.kh               ; 2 uses
  %i.rp = ptrtoint ptr %i.kh to i64
  %i.rq = ptrtoint ptr %.6.i44 to i64
  %i.rr = sub i64 %i.rp, %i.rq                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rr
  %.4378.i.i61 = select i1 %i.ro, ptr %i.rs, ptr %.3377.i.i ; 2 uses
  %i.rt = icmp ugt ptr %.4378.i.i61, %i.kj
end_hunk_3
