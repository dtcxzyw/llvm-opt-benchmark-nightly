inline.NumInlined: 758
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_compress_forceExtDict:bb.a
  %i.ve = udiv i16 %.lhs.trunc396, 255
  %i.vf = zext nneg i16 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %.6430.i93.lcssa, i64 %i.vf ; 2 uses
  %i.vh = urem i16 %.lhs.trunc396, 255
  %i.vi = trunc nuw i16 %i.vh to i8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 1
  store i8 %i.vi, ptr %i.vg, align 1, !tbaa !8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.vk = trunc nuw nsw i32 %.1456.i80.fr to i8
  %i.vl = add i8 %i.uu, %i.vk
  store i8 %i.vl, ptr %.0483.i72, align 1, !tbaa !8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %._crit_edge480
  %.8432.i82 = phi ptr [ %.5429.i79, %bb.dl ], [ %i.vj, %._crit_edge480 ] ; 6 uses
  %.not524.i83 = icmp ult ptr %.6409.i81, %i.ma
  br i1 %.not524.i83, label %bb.dn, label %.thread385

bb.dn:                                            ; preds = %bb.dm
  %i.vm = getelementptr inbounds i8, ptr %.6409.i81, i64 -2 ; 2 uses
  %.val238 = load i64, ptr %i.vm, align 1, !tbaa !30
  %i.vn = mul i64 %.val238, -3523014627271114752
  %i.vo = lshr i64 %i.vn, 52
  %i.vp = ptrtoint ptr %i.vm to i64
  %i.vq = sub i64 %i.vp, %i.ml
  %i.vr = trunc i64 %i.vq to i32
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vo
  store i32 %i.vr, ptr %i.vs, align 4, !tbaa !35
  %.6409.i81.val237 = load i64, ptr %.6409.i81, align 1, !tbaa !30
  %i.vt = mul i64 %.6409.i81.val237, -3523014627271114752
  %i.vu = lshr i64 %i.vt, 52
  %i.vv = ptrtoint ptr %.6409.i81 to i64
  %i.vw = sub i64 %i.vv, %i.ml
  %i.vx = trunc i64 %i.vw to i32                  ; 3 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vu ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !35 ; 4 uses
  %i.wa = icmp ult i32 %i.vz, %i.v                ; 2 uses
  %i.wb = zext i32 %i.vz to i64
  %.10480.i84.v = select i1 %i.wa, ptr %spec.select402, ptr %i.lu
  %.10480.i84 = getelementptr inbounds nuw i8, ptr %.10480.i84.v, i64 %i.wb ; 2 uses
  %.6417.i85 = select i1 %i.wa, ptr %i.lv, ptr %1
  store i32 %i.vx, ptr %i.vy, align 4, !tbaa !35
  %i.wc = add i32 %i.vz, 65535
  %.not527.i87 = icmp ult i32 %i.wc, %i.vx
  br i1 %.not527.i87, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.10480.i84.val = load i32, ptr %.10480.i84, align 1, !tbaa !16
  %.6409.i81.val = load i32, ptr %.6409.i81, align 1, !tbaa !16
  %i.wd = icmp eq i32 %.10480.i84.val, %.6409.i81.val
  br i1 %i.wd, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.we = getelementptr inbounds nuw i8, ptr %.8432.i82, i64 1
  store i8 0, ptr %.8432.i82, align 1, !tbaa !8
  %i.wf = sub i32 %i.vx, %i.vz
  br label %LZ4_wildCopy8.exit

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %.0403.i32 = getelementptr inbounds nuw i8, ptr %.6409.i81, i64 1 ; 2 uses
  %i.wg = ptrtoint ptr %.0403.i32 to i64
  %i.wh = sub i64 %i.wg, %i.ml
  %i.wi = trunc i64 %i.wh to i32
  %i.wj = getelementptr inbounds nuw i8, ptr %.6409.i81, i64 2 ; 2 uses
  %i.wk = icmp ugt ptr %i.wj, %i.ma
  br i1 %i.wk, label %.thread385, label %.lr.ph, !prof !39

.thread385:                                       ; preds = %bb.dq, %bb.bq, %bb.dm, %bb.bn
  %.12.i57 = phi ptr [ %2, %bb.bn ], [ %.0424.i29487, %bb.bq ], [ %.8432.i82, %bb.dm ], [ %.8432.i82, %bb.dq ] ; 5 uses
  %.3423.i58 = phi ptr [ %1, %bb.bn ], [ %.0420.i30488, %bb.bq ], [ %.6409.i81, %bb.dm ], [ %.6409.i81, %bb.dq ] ; 2 uses
  %i.wl = ptrtoint ptr %i.lz to i64
  %i.wm = ptrtoint ptr %.3423.i58 to i64          ; 2 uses
  %i.wn = sub i64 %i.wl, %i.wm                    ; 5 uses
  %i.wo = icmp ugt i64 %i.wn, 14
  br i1 %i.wo, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.thread385
  %i.wp = add i64 %i.wn, -15                      ; 2 uses
  store i8 -16, ptr %.12.i57, align 1, !tbaa !8
  %.13.i66492 = getelementptr i8, ptr %.12.i57, i64 1 ; 2 uses
  %i.wq = icmp ugt i64 %i.wp, 254
  br i1 %i.wq, label %.lr.ph496.preheader, label %._crit_edge497

.lr.ph496.preheader:                              ; preds = %bb.dr
  %i.wr = add i64 %i.a, %i.ly
  %i.ws = add i64 %i.wr, -270
  %i.wt = sub i64 %i.ws, %i.wm                    ; 2 uses
  %i.wu = udiv i64 %i.wt, 255                     ; 3 uses
  %i.wv = add nuw nsw i64 %i.wu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i66492, i8 -1, i64 %i.wv, i1 false), !tbaa !8
  %.neg = mul i64 %i.wu, -255
  %i.ww = add i64 %.neg, %i.wt
  %i.wx = getelementptr i8, ptr %.12.i57, i64 %i.wu
  %scevgep641 = getelementptr i8, ptr %i.wx, i64 2
  br label %._crit_edge497

._crit_edge497:                                   ; preds = %.lr.ph496.preheader, %bb.dr
  %.0.i65.lcssa = phi i64 [ %i.wp, %bb.dr ], [ %i.ww, %.lr.ph496.preheader ]
  %.13.i66.lcssa = phi ptr [ %.13.i66492, %bb.dr ], [ %scevgep641, %.lr.ph496.preheader ] ; 2 uses
  %i.wy = trunc nuw i64 %.0.i65.lcssa to i8
  store i8 %i.wy, ptr %.13.i66.lcssa, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit99

bb.ds:                                            ; preds = %.thread385
  %.0400.tr.i60 = trunc nuw nsw i64 %i.wn to i8
  %i.wz = shl nuw i8 %.0400.tr.i60, 4
  store i8 %i.wz, ptr %.12.i57, align 1, !tbaa !8
  br label %LZ4_compress_generic_validated.exit99

LZ4_compress_generic_validated.exit99:            ; preds = %._crit_edge497, %bb.ds
  %.13.pn.i61 = phi ptr [ %.13.i66.lcssa, %._crit_edge497 ], [ %.12.i57, %bb.ds ]
  %.14.i62 = getelementptr inbounds nuw i8, ptr %.13.pn.i61, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i62, ptr align 1 %.3423.i58, i64 %i.wn, i1 false)
  %i.xa = getelementptr inbounds nuw i8, ptr %.14.i62, i64 %i.wn
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %2 to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = trunc i64 %i.xd to i32
  br label %LZ4_compress_generic.exit20

LZ4_compress_generic.exit20:                      ; preds = %LZ4_compress_generic_validated.exit99, %bb.bm, %bb.bk, %LZ4_compress_generic_validated.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ %i.lq, %LZ4_compress_generic_validated.exit ], [ 0, %bb.b ], [ %i.xe, %LZ4_compress_generic_validated.exit99 ], [ 0, %bb.bk ], [ 1, %bb.bm ]
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.xf, align 8, !tbaa !61
  store i32 %3, ptr %i.x, align 8, !tbaa !14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65537) i32 @LZ4_saveDict(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.b) ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.j, align 8, !tbaa !61
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !14
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
  %i.e = zext nneg i32 %3 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !8
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.p = icmp samesign ult i32 %3, 64
  br i1 %i.p, label %.preheader121, label %.preheader130

.preheader130:                                    ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader130
  %.0 = phi ptr [ %0, %.preheader130 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0358.i = phi ptr [ %1, %.preheader130 ], [ %.0358.i.be, %.backedge.backedge ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i32                      ; 4 uses
  %i.y = lshr i32 %i.x, 4                         ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %i.aa = icmp eq i32 %i.y, 15
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.v, %i.r
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.h:                                             ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !8    ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %.not23.i = icmp eq i8 %i.ab, -1
  br i1 %.not23.i, label %.preheader128, label %read_variable_length.exit.thread62, !prof !20

.preheader128:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.ad, %bb.i ], [ %4, %bb.h ]  ; 2 uses
  %.0.i11 = phi i64 [ %i.ah, %bb.i ], [ 255, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.ae = icmp ugt ptr %i.ad, %i.r
  br i1 %i.ae, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %.preheader128
  %i.af = load i8, ptr %.10, align 1, !tbaa !8    ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = add i64 %.0.i11, %i.ag                  ; 3 uses
  %i.ai = icmp eq i8 %i.af, -1
  br i1 %i.ai, label %.preheader128, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.i
  %i.aj = icmp eq i64 %i.ah, -1
  br i1 %i.aj, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread62

read_variable_length.exit.thread62:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i66 = phi i64 [ %i.ah, %read_variable_length.exit ], [ %i.ac, %bb.h ]
  %.1165 = phi ptr [ %i.ad, %read_variable_length.exit ], [ %4, %bb.h ] ; 5 uses
  %i.ak = add i64 %.019.i66, 15                   ; 5 uses
  %i.al = ptrtoint ptr %.0358.i to i64
  %i.am = xor i64 %i.al, -1
  %i.an = icmp ugt i64 %i.ak, %i.am
  %i.ao = ptrtoint ptr %.1165 to i64
  %i.ap = xor i64 %i.ao, -1
  %i.aq = icmp ugt i64 %i.ak, %i.ap
  %or.cond = or i1 %i.an, %i.aq
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !84

bb.j:                                             ; preds = %read_variable_length.exit.thread62
  %i.ar = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.ak ; 3 uses
  %i.as = icmp ugt ptr %i.ar, %i.h
  %i.at = getelementptr inbounds nuw i8, ptr %.1165, i64 %i.ak ; 2 uses
  %i.au = icmp ugt ptr %i.at, %i.s
  %or.cond449.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader127

.preheader127:                                    ; preds = %bb.j, %.preheader127
  %.011.i = phi ptr [ %i.ay, %.preheader127 ], [ %.1165, %bb.j ] ; 3 uses
  %.0.i25 = phi ptr [ %i.ax, %.preheader127 ], [ %.0358.i, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i25, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i25, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i25, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.az = icmp ult ptr %i.ax, %i.ar
  br i1 %i.az, label %.preheader127, label %LZ4_wildCopy32.exit.thread71, !llvm.loop !85

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.v, %i.q
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.bb = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.z
  br label %LZ4_wildCopy32.exit.thread71

LZ4_wildCopy32.exit.thread71:                     ; preds = %.preheader127, %bb.l
  %.1 = phi ptr [ %i.ba, %bb.l ], [ %i.at, %.preheader127 ] ; 3 uses
  %.2.i = phi ptr [ %i.bb, %bb.l ], [ %i.ar, %.preheader127 ] ; 25 uses
  %.2.i414 = ptrtoaddr ptr %.2.i to i64           ; 7 uses
  %.val32 = load i16, ptr %.1, align 1, !tbaa !27 ; 5 uses
  %i.bc = zext i16 %.val32 to i64                 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds i8, ptr %.2.i, i64 %i.be ; 18 uses
  %i.bg = and i32 %i.x, 15                        ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 15
  br i1 %i.bh, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread71
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bj = icmp ugt ptr %i.bi, %i.u
  br i1 %i.bj, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !8   ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %.not23.i12 = icmp eq i8 %i.bk, -1
  br i1 %.not23.i12, label %.preheader125, label %read_variable_length.exit15.thread79, !prof !20

.preheader125:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bm, %bb.o ], [ %i.bi, %bb.n ] ; 2 uses
  %.0.i14 = phi i64 [ %i.bq, %bb.o ], [ 255, %bb.n ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bn = icmp ugt ptr %i.bm, %i.u
  br i1 %i.bn, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !20

bb.o:                                             ; preds = %.preheader125
  %i.bo = load i8, ptr %.12, align 1, !tbaa !8    ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = add i64 %.0.i14, %i.bp                  ; 3 uses
  %i.br = icmp eq i8 %i.bo, -1
  br i1 %i.br, label %.preheader125, label %read_variable_length.exit15, !llvm.loop !83

read_variable_length.exit15:                      ; preds = %bb.o
  %i.bs = icmp eq i64 %i.bq, -1
  br i1 %i.bs, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit15.thread79

read_variable_length.exit15.thread79:             ; preds = %bb.n, %read_variable_length.exit15
  %.019.i1383 = phi i64 [ %i.bq, %read_variable_length.exit15 ], [ %i.bl, %bb.n ]
  %.1382 = phi ptr [ %i.bm, %read_variable_length.exit15 ], [ %i.bi, %bb.n ] ; 3 uses
  %i.bt = add i64 %.019.i1383, 19                 ; 4 uses
  %i.bu = ptrtoint ptr %.2.i to i64
  %i.bv = xor i64 %i.bu, -1
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !20

bb.p:                                             ; preds = %read_variable_length.exit15.thread79
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.bt
  %.not435.i = icmp ult ptr %i.bx, %i.t
  br i1 %.not435.i, label %.thread87, label %.loopexit133

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread71
  %narrow.i = add nuw nsw i32 %i.bg, 4
  %i.by = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.by ; 2 uses
  %.not434.i = icmp ult ptr %i.bz, %i.t
  br i1 %.not434.i, label %bb.r, label %.loopexit133

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp uge ptr %i.bf, %1
  %i.cb = icmp ugt i16 %.val32, 7
  %or.cond5.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread87

bb.s:                                             ; preds = %bb.r
  %i.cc = load i64, ptr %i.bf, align 1
  store i64 %i.cc, ptr %.2.i, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cf = load i64, ptr %i.ce, align 1
  store i64 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ci = load i16, ptr %i.ch, align 1
  store i16 %i.ci, ptr %i.cg, align 1
  br label %.backedge.backedge

.thread87:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.bd, %bb.r ], [ %.1382, %bb.p ] ; 7 uses
  %.2374.i = phi i64 [ %i.by, %bb.r ], [ %i.bt, %bb.p ] ; 4 uses
  %i.cj = icmp ult ptr %i.bf, %1
  br i1 %i.cj, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !86

bb.t:                                             ; preds = %.thread87
  %i.ck = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.2374.i ; 9 uses
  %i.cl = icmp ult i16 %.val32, 16
  br i1 %i.cl, label %bb.u, label %.preheader123, !prof !20

bb.u:                                             ; preds = %bb.t
  switch i16 %.val32, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cm = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.cn = zext i8 %i.cm to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cn, 16843009
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bf, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bf, align 1
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.co = icmp samesign ult i16 %.val32, 8
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2.i, align 1, !tbaa !16
  %i.cp = load i8, ptr %i.bf, align 1, !tbaa !8
  store i8 %i.cp, ptr %.2.i, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.i, i64 3
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !8
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bc
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !35
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.de = load i32, ptr %i.dc, align 1
  store i32 %i.de, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bc
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !35
  %i.dh = sext i32 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.dc, i64 %i.di
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dk = load i64, ptr %i.bf, align 1
  store i64 %i.dk, ptr %.2.i, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.023.i = phi ptr [ %i.dj, %bb.z ], [ %i.dl, %bb.aa ] ; 5 uses
  %.0.i30 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.dm = add i64 %.2374.i, %.2.i414
  %i.dn = add i64 %.2.i414, 16
  %i.do = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dn)
  %i.dp = sub i64 %i.do, %.2.i414
  %i.dq = add i64 %i.dp, -9                       ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ab
  %.023.i415 = ptrtoaddr ptr %.023.i to i64
  %i.dt = sub i64 %.2.i414, %.023.i415
  %i.du = add i64 %i.dt, 7
  %diff.check = icmp ult i64 %i.du, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ds, 4611686018427387900     ; 3 uses
  %i.dv = shl i64 %n.vec, 3                       ; 2 uses
  %i.dw = getelementptr i8, ptr %.023.i, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.0.i30, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.i, i64 %i.dy ; 2 uses
  %next.gep416 = getelementptr i8, ptr %.0.i30, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load417 = load <2 x i64>, ptr %i.dz, align 1
  %i.ea = getelementptr i8, ptr %next.gep416, i64 16
  store <2 x i64> %wide.load, ptr %next.gep416, align 1
  store <2 x i64> %wide.load417, ptr %i.ea, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ab, %middle.block
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.ab ], [ %i.dw, %middle.block ]
  %.0.i.i.ph = phi ptr [ %.0.i30, %vector.memcheck ], [ %.0.i30, %bb.ab ], [ %i.dx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.ee, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ed, %scalar.ph ], [ %.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ec = load i64, ptr %.09.i.i, align 1
  store i64 %i.ec, ptr %.0.i.i, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ef = icmp ult ptr %i.ed, %i.ck
  br i1 %i.ef, label %scalar.ph, label %.backedge.backedge, !llvm.loop !88

bb.ac:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.eg = icmp samesign ugt i64 %.2374.i, 8
  br i1 %i.eg, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ac
  %.0.i29178 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.eh = add i64 %.2374.i, %.2.i414
  %i.ei = add i64 %.2.i414, 16
  %i.ej = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 %i.ei)
  %i.ek = sub i64 %i.ej, %.2.i414
  %i.el = add i64 %i.ek, -9                       ; 2 uses
  %i.em = lshr i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check420 = icmp ult i64 %i.el, 24
  br i1 %min.iters.check420, label %.lr.ph.preheader555, label %vector.ph421

vector.ph421:                                     ; preds = %.lr.ph.preheader
  %n.vec423 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.eo = shl i64 %n.vec423, 3                    ; 2 uses
  %i.ep = getelementptr i8, ptr %.0.i29178, i64 %i.eo
  %i.eq = getelementptr i8, ptr %.2.i, i64 %i.eo
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.er = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph421
  %index425 = phi i64 [ 0, %vector.ph421 ], [ %index.next429, %vector.body424 ] ; 2 uses
  %i.es = shl i64 %index425, 3                    ; 2 uses
  %next.gep426 = getelementptr i8, ptr %.0.i29178, i64 %i.es
  %i.et = getelementptr i8, ptr %.0.i29178, i64 %i.es
  %next.gep427 = getelementptr i8, ptr %i.et, i64 16
  store <4 x i32> %i.er, ptr %next.gep426, align 1
  store <4 x i32> %i.er, ptr %next.gep427, align 1
  %index.next429 = add nuw i64 %index425, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next429, %n.vec423
  br i1 %i.eu, label %middle.block430, label %vector.body424, !llvm.loop !89

middle.block430:                                  ; preds = %vector.body424
  %cmp.n431 = icmp eq i64 %i.en, %n.vec423
  br i1 %cmp.n431, label %.backedge.backedge, label %.lr.ph.preheader555

.backedge.backedge:                               ; preds = %.preheader123, %.lr.ph, %scalar.ph, %middle.block430, %middle.block, %bb.ac, %bb.s
  %.0.be = phi ptr [ %i.bd, %bb.s ], [ %.8, %middle.block ], [ %.8, %bb.ac ], [ %.8, %middle.block430 ], [ %.8, %scalar.ph ], [ %.8, %.lr.ph ], [ %.8, %.preheader123 ]
  %.0358.i.be = phi ptr [ %i.bz, %bb.s ], [ %i.ck, %middle.block ], [ %i.ck, %bb.ac ], [ %i.ck, %middle.block430 ], [ %i.ck, %scalar.ph ], [ %i.ck, %.lr.ph ], [ %i.ck, %.preheader123 ]
  br label %.backedge

.lr.ph.preheader555:                              ; preds = %.lr.ph.preheader, %middle.block430
  %.0.i29180.ph = phi ptr [ %.0.i29178, %.lr.ph.preheader ], [ %i.ep, %middle.block430 ]
  %.pn.i179.ph = phi ptr [ %.2.i, %.lr.ph.preheader ], [ %i.eq, %middle.block430 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader555, %.lr.ph
  %.0.i29180 = phi ptr [ %.0.i29, %.lr.ph ], [ %.0.i29180.ph, %.lr.ph.preheader555 ] ; 3 uses
  %.pn.i179 = phi ptr [ %.0.i29180, %.lr.ph ], [ %.pn.i179.ph, %.lr.ph.preheader555 ]
  store i32 %.sroa.9.0.i, ptr %.0.i29180, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i179, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.0.i29180, i64 8 ; 2 uses
  %i.ev = icmp ult ptr %.0.i29, %i.ck
  br i1 %i.ev, label %.lr.ph, label %.backedge.backedge, !llvm.loop !90

.preheader123:                                    ; preds = %bb.t, %.preheader123
  %.011.i26 = phi ptr [ %i.ez, %.preheader123 ], [ %i.bf, %bb.t ] ; 3 uses
  %.0.i27 = phi ptr [ %i.ey, %.preheader123 ], [ %.2.i, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i27, ptr noundef nonnull align 1 dereferenceable(16) %.011.i26, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i27, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i26, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ew, ptr noundef nonnull align 1 dereferenceable(16) %i.ex, i64 16, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i27, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i26, i64 32
  %i.fa = icmp ult ptr %i.ey, %i.ck
  br i1 %i.fa, label %.preheader123, label %.backedge.backedge, !llvm.loop !85

.lr.ph183:                                        ; preds = %.preheader121, %bb.ae
  %.in = phi i32 [ %i.gd, %bb.ae ], [ %i.mx, %.preheader121 ]
  %i.fb = phi i32 [ %i.gc, %bb.ae ], [ %i.mw, %.preheader121 ] ; 2 uses
  %i.fc = phi ptr [ %i.ga, %bb.ae ], [ %i.mu, %.preheader121 ] ; 4 uses
  %.6.i182 = phi ptr [ %i.fz, %bb.ae ], [ %.6.i.ph, %.preheader121 ] ; 4 uses
  %i.fd = zext nneg i32 %.in to i64               ; 3 uses
  %i.fe = icmp ult ptr %i.fc, %i.g
  %i.ff = icmp ule ptr %.6.i182, %i.h
  %i.fg = and i1 %i.fe, %i.ff
  br i1 %i.fg, label %bb.ad, label %LZ4_wildCopy32.exit, !prof !29

bb.ad:                                            ; preds = %.lr.ph183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i182, ptr noundef nonnull align 1 dereferenceable(16) %i.fc, i64 16, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %.6.i182, i64 %i.fd ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd ; 3 uses
  %i.fj = and i32 %i.fb, 15                       ; 2 uses
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %.val = load i16, ptr %i.fi, align 1, !tbaa !27 ; 2 uses
  %i.fl = zext i16 %.val to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 2 ; 3 uses
  %i.fn = sub nsw i64 0, %i.fl
  %i.fo = getelementptr inbounds i8, ptr %i.fh, i64 %i.fn ; 5 uses
  %i.fp = icmp eq i32 %i.fj, 15
  %i.fq = icmp ult i16 %.val, 8
  %or.cond3.i.not114 = select i1 %i.fp, i1 true, i1 %i.fq
  %.not442.i = icmp ult ptr %i.fo, %1
  %or.cond109 = select i1 %or.cond3.i.not114, i1 true, i1 %.not442.i
  br i1 %or.cond109, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load i64, ptr %i.fo, align 1
  store i64 %i.fr, ptr %i.fh, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fu = load i64, ptr %i.ft, align 1
  store i64 %i.fu, ptr %i.fs, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fx = load i16, ptr %i.fw, align 1
  store i16 %i.fx, ptr %i.fv, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fk
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 3 ; 2 uses
  %i.gb = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.gc = zext i8 %i.gb to i32                    ; 3 uses
  %i.gd = lshr i32 %i.gc, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.gd, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph183

._crit_edge:                                      ; preds = %bb.ae, %.preheader121
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader121 ], [ %i.fm, %bb.ae ]
  %.6.i.lcssa = phi ptr [ %.6.i.ph, %.preheader121 ], [ %i.fz, %bb.ae ] ; 2 uses
  %.lcssa144 = phi ptr [ %i.mu, %.preheader121 ], [ %i.ga, %bb.ae ] ; 3 uses
  %.lcssa141 = phi i32 [ %i.mw, %.preheader121 ], [ %i.gc, %bb.ae ]
  %i.ge = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not22.i16 = icmp ult ptr %.lcssa144, %i.ge
  br i1 %.not22.i16, label %bb.af, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.af:                                            ; preds = %._crit_edge
  %5 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.gf = load i8, ptr %.lcssa144, align 1, !tbaa !8 ; 2 uses
  %i.gg = zext i8 %i.gf to i64
  %.not23.i18 = icmp eq i8 %i.gf, -1
  br i1 %.not23.i18, label %.preheader120, label %read_variable_length.exit20.thread94, !prof !20

.preheader120:                                    ; preds = %bb.af, %bb.ag
  %.14 = phi ptr [ %i.gh, %bb.ag ], [ %5, %bb.af ] ; 2 uses
  %.0.i19 = phi i64 [ %i.gl, %bb.ag ], [ 255, %bb.af ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.gi = icmp ugt ptr %i.gh, %i.ge
  br i1 %i.gi, label %LZ4_wildCopy32.exit.thread, label %bb.ag, !prof !20

bb.ag:                                            ; preds = %.preheader120
  %i.gj = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.gk = zext i8 %i.gj to i64
  %i.gl = add i64 %.0.i19, %i.gk                  ; 3 uses
  %i.gm = icmp eq i8 %i.gj, -1
  br i1 %i.gm, label %.preheader120, label %read_variable_length.exit20, !llvm.loop !83

read_variable_length.exit20:                      ; preds = %bb.ag
  %i.gn = icmp eq i64 %i.gl, -1
  br i1 %i.gn, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit20.thread94

read_variable_length.exit20.thread94:             ; preds = %bb.af, %read_variable_length.exit20
  %.019.i1798 = phi i64 [ %i.gl, %read_variable_length.exit20 ], [ %i.gg, %bb.af ]
  %.1597 = phi ptr [ %i.gh, %read_variable_length.exit20 ], [ %5, %bb.af ] ; 3 uses
  %i.go = add i64 %.019.i1798, 15                 ; 3 uses
  %i.gp = ptrtoint ptr %.6.i.lcssa to i64
  %i.gq = xor i64 %i.gp, -1
  %i.gr = icmp ugt i64 %i.go, %i.gq
  %i.gs = ptrtoint ptr %.1597 to i64
  %i.gt = xor i64 %i.gs, -1
  %i.gu = icmp ugt i64 %i.go, %i.gt
  %or.cond112 = or i1 %i.gr, %i.gu
  br i1 %or.cond112, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph183, %read_variable_length.exit20.thread94
  %.4 = phi ptr [ %.1597, %read_variable_length.exit20.thread94 ], [ %i.fc, %.lr.ph183 ], [ %i.v, %bb.k ], [ %.1165, %bb.j ] ; 8 uses
  %.5377.i = phi i64 [ %i.go, %read_variable_length.exit20.thread94 ], [ %i.fd, %.lr.ph183 ], [ %i.z, %bb.k ], [ %i.ak, %bb.j ] ; 5 uses
  %.0371.i = phi i32 [ %.lcssa141, %read_variable_length.exit20.thread94 ], [ %i.fb, %.lr.ph183 ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  %.7.i = phi ptr [ %.6.i.lcssa, %read_variable_length.exit20.thread94 ], [ %.6.i182, %.lr.ph183 ], [ %.0358.i, %bb.k ], [ %.0358.i, %bb.j ] ; 6 uses
  %.7.i435 = ptrtoaddr ptr %.7.i to i64           ; 4 uses
  %.4436 = ptrtoaddr ptr %.4 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.5377.i ; 6 uses
  %i.gw = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gx = icmp ugt ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ha = icmp ugt ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.ai, label %.preheader119.preheader

.preheader119.preheader:                          ; preds = %bb.ah
  %i.hb = add nuw i64 %.5377.i, %.7.i435
  %i.hc = add i64 %.7.i435, 8
  %i.hd = tail call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.hc)
  %i.he = xor i64 %.7.i435, -1
  %i.hf = add i64 %i.hd, %i.he                    ; 2 uses
  %i.hg = lshr i64 %i.hf, 3
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check439 = icmp ult i64 %i.hf, 72
  %i.hi = sub i64 %.4436, %.7.i435
  %diff.check437 = icmp ugt i64 %i.hi, -32
  %or.cond521 = select i1 %min.iters.check439, i1 true, i1 %diff.check437
  br i1 %or.cond521, label %.preheader119.preheader526, label %vector.ph440

vector.ph440:                                     ; preds = %.preheader119.preheader
  %n.vec442 = and i64 %i.hh, 4611686018427387900  ; 3 uses
  %i.hj = shl i64 %n.vec442, 3                    ; 2 uses
  %i.hk = getelementptr i8, ptr %.4, i64 %i.hj
  %i.hl = getelementptr i8, ptr %.7.i, i64 %i.hj
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph440
  %index444 = phi i64 [ 0, %vector.ph440 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.hm = shl i64 %index444, 3                    ; 2 uses
  %next.gep445 = getelementptr i8, ptr %.4, i64 %i.hm ; 2 uses
  %next.gep446 = getelementptr i8, ptr %.7.i, i64 %i.hm ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep445, i64 16
  %wide.load447 = load <2 x i64>, ptr %next.gep445, align 1
  %wide.load448 = load <2 x i64>, ptr %i.hn, align 1
  %i.ho = getelementptr i8, ptr %next.gep446, i64 16
  store <2 x i64> %wide.load447, ptr %next.gep446, align 1
  store <2 x i64> %wide.load448, ptr %i.ho, align 1
  %index.next449 = add nuw i64 %index444, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next449, %n.vec442
  br i1 %i.hp, label %middle.block450, label %vector.body443, !llvm.loop !91

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.hh, %n.vec442
  br i1 %cmp.n451, label %LZ4_wildCopy8.exit10, label %.preheader119.preheader526

.preheader119.preheader526:                       ; preds = %.preheader119.preheader, %middle.block450
  %.09.i8.ph = phi ptr [ %.4, %.preheader119.preheader ], [ %i.hk, %middle.block450 ]
  %.0.i9.ph = phi ptr [ %.7.i, %.preheader119.preheader ], [ %i.hl, %middle.block450 ]
  br label %.preheader119

bb.ai:                                            ; preds = %bb.ah, %LZ4_wildCopy32.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i
  %.not440.i = icmp ne ptr %i.hq, %i.d
  %i.hr = icmp ugt ptr %i.gv, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.hr
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %.5377.i, i1 false)
  %i.hs = ptrtoint ptr %i.gv to i64
  %i.ht = sub i64 %i.hs, %i.o
  %i.hu = trunc i64 %i.ht to i32
  br label %LZ4_decompress_generic.exit

.preheader119:                                    ; preds = %.preheader119.preheader526, %.preheader119
  %.09.i8 = phi ptr [ %i.hx, %.preheader119 ], [ %.09.i8.ph, %.preheader119.preheader526 ] ; 2 uses
  %.0.i9 = phi ptr [ %i.hw, %.preheader119 ], [ %.0.i9.ph, %.preheader119.preheader526 ] ; 2 uses
  %i.hv = load i64, ptr %.09.i8, align 1
  store i64 %i.hv, ptr %.0.i9, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8
  %i.hy = icmp ult ptr %i.hw, %i.gv
  br i1 %i.hy, label %.preheader119, label %LZ4_wildCopy8.exit10, !llvm.loop !92

LZ4_wildCopy8.exit10:                             ; preds = %.preheader119, %middle.block450
  %.val31 = load i16, ptr %i.gy, align 1, !tbaa !27
  %i.hz = zext i16 %.val31 to i64                 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.ib = sub nsw i64 0, %i.hz
  %i.ic = getelementptr inbounds i8, ptr %i.gv, i64 %i.ib
  %i.id = and i32 %.0371.i, 15
  %i.ie = zext nneg i32 %i.id to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %LZ4_wildCopy8.exit10
  %.5 = phi ptr [ %i.ia, %LZ4_wildCopy8.exit10 ], [ %i.fm, %bb.ad ] ; 3 uses
  %.8380.i = phi i64 [ %i.ie, %LZ4_wildCopy8.exit10 ], [ %i.fk, %bb.ad ] ; 2 uses
  %.0369.i = phi i64 [ %i.hz, %LZ4_wildCopy8.exit10 ], [ %i.fl, %bb.ad ]
  %.0362.i = phi ptr [ %i.ic, %LZ4_wildCopy8.exit10 ], [ %i.fo, %bb.ad ]
  %.9.i = phi ptr [ %i.gv, %LZ4_wildCopy8.exit10 ], [ %i.fh, %bb.ad ] ; 2 uses
  %i.if = icmp eq i64 %.8380.i, 15
  br i1 %i.if, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.loopexit
  %i.ig = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.ii = icmp ugt ptr %i.ih, %i.ig
  br i1 %i.ii, label %LZ4_wildCopy32.exit.thread, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.ij = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.ik = zext i8 %i.ij to i64
  %.not23.i21 = icmp eq i8 %i.ij, -1
  br i1 %.not23.i21, label %.preheader118, label %read_variable_length.exit24, !prof !20

.preheader118:                                    ; preds = %bb.al, %bb.am
  %.16 = phi ptr [ %i.il, %bb.am ], [ %i.ih, %bb.al ] ; 2 uses
  %.0.i23 = phi i64 [ %i.ip, %bb.am ], [ 255, %bb.al ]
  %i.il = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.im = icmp ugt ptr %i.il, %i.ig
  br i1 %i.im, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %.preheader118
  %i.in = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.io = zext i8 %i.in to i64
  %i.ip = add i64 %.0.i23, %i.io                  ; 2 uses
  %i.iq = icmp eq i8 %i.in, -1
  br i1 %i.iq, label %.preheader118, label %read_variable_length.exit24, !llvm.loop !83

read_variable_length.exit24:                      ; preds = %bb.am, %bb.al
  %.17 = phi ptr [ %i.ih, %bb.al ], [ %i.il, %bb.am ] ; 2 uses
  %.019.i22 = phi i64 [ %i.ik, %bb.al ], [ %i.ip, %bb.am ] ; 2 uses
  %i.ir = icmp ne i64 %.019.i22, -1               ; 2 uses
  %i.is = add i64 %.019.i22, 15                   ; 2 uses
  %i.it = ptrtoint ptr %.9.i to i64
  %i.iu = xor i64 %i.it, -1
  %i.iv = icmp ule i64 %i.is, %i.iu
  %.not116 = select i1 %i.ir, i1 %i.iv, i1 false
  %.9381.i = select i1 %i.ir, i64 %i.is, i64 15
  br i1 %.not116, label %bb.an, label %LZ4_wildCopy32.exit.thread

bb.an:                                            ; preds = %read_variable_length.exit24, %.loopexit
  %.6 = phi ptr [ %.17, %read_variable_length.exit24 ], [ %.5, %.loopexit ]
  %.10382.i = phi i64 [ %.9381.i, %read_variable_length.exit24 ], [ %.8380.i, %.loopexit ]
  %i.iw = add i64 %.10382.i, 4
  br label %.loopexit133

.loopexit133:                                     ; preds = %bb.p, %bb.q, %bb.an
  %.2 = phi ptr [ %.6, %bb.an ], [ %.1382, %bb.p ], [ %i.bd, %bb.q ] ; 9 uses
  %.11383.i = phi i64 [ %i.iw, %bb.an ], [ %i.bt, %bb.p ], [ %i.by, %bb.q ] ; 4 uses
  %.1370.i = phi i64 [ %.0369.i, %bb.an ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ] ; 3 uses
  %.1363.i = phi ptr [ %.0362.i, %bb.an ], [ %i.bf, %bb.q ], [ %i.bf, %bb.p ] ; 8 uses
  %.10.i = phi ptr [ %.9.i, %bb.an ], [ %.2.i, %bb.q ], [ %.2.i, %bb.p ] ; 11 uses
  %.10.i455 = ptrtoaddr ptr %.10.i to i64         ; 10 uses
  %i.ix = icmp ult ptr %.1363.i, %1
  br i1 %i.ix, label %LZ4_wildCopy32.exit.thread, label %bb.ao, !prof !86

bb.ao:                                            ; preds = %.loopexit133
  %i.iy = getelementptr inbounds nuw i8, ptr %.10.i, i64 %.11383.i ; 12 uses
  %i.iz = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.ja = icmp ult i64 %.1370.i, 8
  br i1 %i.ja, label %bb.ap, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %.10.i, align 1, !tbaa !16
  %i.jb = load i8, ptr %.1363.i, align 1, !tbaa !8
  store i8 %i.jb, ptr %.10.i, align 1, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %.1363.i, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %.10.i, i64 1
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %.1363.i, i64 2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !8
  %i.jh = getelementptr inbounds nuw i8, ptr %.10.i, i64 2
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !8
  %i.ji = getelementptr inbounds nuw i8, ptr %.1363.i, i64 3
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %.10.i, i64 3
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !8
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !35
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.10.i, i64 4
  %i.jq = load i32, ptr %i.jo, align 1
  store i32 %i.jq, ptr %i.jp, align 1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1370.i
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe:bb.a
  %i.kt = getelementptr i8, ptr %next.gep484, i64 16
  store <2 x i64> %wide.load485, ptr %next.gep484, align 1
  store <2 x i64> %wide.load486, ptr %i.kt, align 1
  %index.next487 = add nuw i64 %index482, 4       ; 2 uses
  %i.ku = icmp eq i64 %index.next487, %n.vec480
  br i1 %i.ku, label %middle.block488, label %vector.body481, !llvm.loop !93

middle.block488:                                  ; preds = %vector.body481
  %cmp.n489 = icmp eq i64 %i.kl, %n.vec480
  br i1 %cmp.n489, label %LZ4_wildCopy8.exit, label %.preheader.preheader522

.preheader.preheader522:                          ; preds = %vector.memcheck474, %.preheader.preheader, %middle.block488
  %.09.i.ph = phi ptr [ %.3365.i, %vector.memcheck474 ], [ %.3365.i, %.preheader.preheader ], [ %i.kp, %middle.block488 ]
  %.0.i4.ph = phi ptr [ %i.jy, %vector.memcheck474 ], [ %i.jy, %.preheader.preheader ], [ %i.kq, %middle.block488 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader522, %.preheader
  %.09.i = phi ptr [ %i.kx, %.preheader ], [ %.09.i.ph, %.preheader.preheader522 ] ; 2 uses
  %.0.i4 = phi ptr [ %i.kw, %.preheader ], [ %.0.i4.ph, %.preheader.preheader522 ] ; 2 uses
  %i.kv = load i64, ptr %.09.i, align 1
  store i64 %i.kv, ptr %.0.i4, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i4, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.ky = icmp ult ptr %i.kw, %i.ka
  br i1 %i.ky, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !94

LZ4_wildCopy8.exit:                               ; preds = %.preheader, %middle.block488
  %i.kz = ptrtoint ptr %i.ka to i64
  %i.la = ptrtoint ptr %i.jy to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = getelementptr inbounds i8, ptr %.3365.i, i64 %i.lb
  br label %bb.au

bb.au:                                            ; preds = %LZ4_wildCopy8.exit, %bb.at
  %.4366.i = phi ptr [ %i.lc, %LZ4_wildCopy8.exit ], [ %.3365.i, %bb.at ] ; 6 uses
  %.15.i = phi ptr [ %i.ka, %LZ4_wildCopy8.exit ], [ %i.jy, %bb.at ] ; 7 uses
  %i.ld = icmp ult ptr %.15.i, %i.iy
  br i1 %i.ld, label %iter.check, label %.preheader121

iter.check:                                       ; preds = %bb.au
  %i.le = add i64 %.11383.i, %.10.i455
  %i.lf = add i64 %i.o, %i.e
  %i.lg = add i64 %i.lf, -7
  %i.lh = add i64 %.10.i455, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lg, i64 %i.lh)
  %i.li = sub i64 %i.le, %umax                    ; 7 uses
  %min.iters.check495 = icmp ult i64 %i.li, 4
  br i1 %min.iters.check495, label %.lr.ph190.preheader, label %vector.memcheck492

vector.memcheck492:                               ; preds = %iter.check
  %i.lj = sub i64 %.10.i455, %.3365.i456
  %i.lk = add i64 %i.lj, 7
  %diff.check493 = icmp ult i64 %i.lk, 31
  br i1 %diff.check493, label %.lr.ph190.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck492
  %min.iters.check496 = icmp ult i64 %i.li, 32
  br i1 %min.iters.check496, label %vec.epilog.ph, label %vector.ph497

vector.ph497:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf498 = and i64 %i.li, 28
  %n.vec499 = and i64 %i.li, -32                  ; 5 uses
  %i.ll = getelementptr i8, ptr %.15.i, i64 %n.vec499
  %i.lm = getelementptr i8, ptr %.4366.i, i64 %n.vec499
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %vector.ph497
  %index501 = phi i64 [ 0, %vector.ph497 ], [ %index.next506, %vector.body500 ] ; 3 uses
  %next.gep502 = getelementptr i8, ptr %.15.i, i64 %index501 ; 2 uses
  %next.gep503 = getelementptr i8, ptr %.4366.i, i64 %index501 ; 2 uses
  %i.ln = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load504 = load <16 x i8>, ptr %next.gep503, align 1, !tbaa !8
  %wide.load505 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !8
  %i.lo = getelementptr i8, ptr %next.gep502, i64 16
  store <16 x i8> %wide.load504, ptr %next.gep502, align 1, !tbaa !8
  store <16 x i8> %wide.load505, ptr %i.lo, align 1, !tbaa !8
  %index.next506 = add nuw i64 %index501, 32      ; 2 uses
  %i.lp = icmp eq i64 %index.next506, %n.vec499
  br i1 %i.lp, label %middle.block507, label %vector.body500, !llvm.loop !95

middle.block507:                                  ; preds = %vector.body500
  %cmp.n508 = icmp eq i64 %i.li, %n.vec499
  br i1 %cmp.n508, label %.preheader121, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block507
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf498, 0
  br i1 %min.epilog.iters.check, label %.lr.ph190.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec499, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec512 = and i64 %i.li, -4                   ; 4 uses
  %i.lq = getelementptr i8, ptr %.15.i, i64 %n.vec512
  %i.lr = getelementptr i8, ptr %.4366.i, i64 %n.vec512
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index513 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next517, %vec.epilog.vector.body ] ; 3 uses
  %next.gep514 = getelementptr i8, ptr %.15.i, i64 %index513
  %next.gep515 = getelementptr i8, ptr %.4366.i, i64 %index513
  %wide.load516 = load <4 x i8>, ptr %next.gep515, align 1, !tbaa !8
  store <4 x i8> %wide.load516, ptr %next.gep514, align 1, !tbaa !8
  %index.next517 = add nuw i64 %index513, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next517, %n.vec512
  br i1 %i.ls, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n518 = icmp eq i64 %i.li, %n.vec512
  br i1 %cmp.n518, label %.preheader121, label %.lr.ph190.preheader

.lr.ph190.preheader:                              ; preds = %vector.memcheck492, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.16.i188.ph = phi ptr [ %.15.i, %iter.check ], [ %.15.i, %vector.memcheck492 ], [ %i.ll, %vec.epilog.iter.check ], [ %i.lq, %vec.epilog.middle.block ]
  %.5367.i187.ph = phi ptr [ %.4366.i, %iter.check ], [ %.4366.i, %vector.memcheck492 ], [ %i.lm, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %.lr.ph190
  %.16.i188 = phi ptr [ %i.lv, %.lr.ph190 ], [ %.16.i188.ph, %.lr.ph190.preheader ] ; 2 uses
  %.5367.i187 = phi ptr [ %i.lt, %.lr.ph190 ], [ %.5367.i187.ph, %.lr.ph190.preheader ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.5367.i187, i64 1
  %i.lu = load i8, ptr %.5367.i187, align 1, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %.16.i188, i64 1 ; 2 uses
  store i8 %i.lu, ptr %.16.i188, align 1, !tbaa !8
  %i.lw = icmp ult ptr %i.lv, %i.iy
  br i1 %i.lw, label %.lr.ph190, label %.preheader121, !llvm.loop !98

bb.av:                                            ; preds = %bb.ar
  %i.lx = load i64, ptr %.3365.i, align 1
  store i64 %i.lx, ptr %i.jy, align 1
  %i.ly = icmp ugt i64 %.11383.i, 16
  br i1 %i.ly, label %bb.aw, label %.preheader121

bb.aw:                                            ; preds = %bb.av
  %i.lz = getelementptr inbounds nuw i8, ptr %.10.i, i64 16 ; 4 uses
  %i.ma = add i64 %.11383.i, %.10.i455
  %i.mb = add i64 %.10.i455, 24
  %i.mc = tail call i64 @llvm.umax.i64(i64 %i.ma, i64 %i.mb)
  %i.md = sub i64 %i.mc, %.10.i455
  %i.me = add i64 %i.md, -17                      ; 2 uses
  %i.mf = lshr i64 %i.me, 3
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %min.iters.check459 = icmp ult i64 %i.me, 104
  br i1 %min.iters.check459, label %scalar.ph458.preheader, label %vector.memcheck454

vector.memcheck454:                               ; preds = %bb.aw
  %i.mh = sub i64 %.10.i455, %.3365.i456
  %i.mi = add i64 %i.mh, 7
  %diff.check457 = icmp ult i64 %i.mi, 31
  br i1 %diff.check457, label %scalar.ph458.preheader, label %vector.ph460

vector.ph460:                                     ; preds = %vector.memcheck454
  %n.vec462 = and i64 %i.mg, 4611686018427387900  ; 3 uses
  %i.mj = shl i64 %n.vec462, 3                    ; 2 uses
  %i.mk = getelementptr i8, ptr %.3365.i, i64 %i.mj
  %i.ml = getelementptr i8, ptr %i.lz, i64 %i.mj
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph460
  %index464 = phi i64 [ 0, %vector.ph460 ], [ %index.next469, %vector.body463 ] ; 2 uses
  %i.mm = shl i64 %index464, 3                    ; 2 uses
  %next.gep465 = getelementptr i8, ptr %.3365.i, i64 %i.mm ; 2 uses
  %next.gep466 = getelementptr i8, ptr %i.lz, i64 %i.mm ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep465, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %next.gep465, i64 24
  %wide.load467 = load <2 x i64>, ptr %i.mn, align 1
  %wide.load468 = load <2 x i64>, ptr %i.mo, align 1
  %i.mp = getelementptr i8, ptr %next.gep466, i64 16
  store <2 x i64> %wide.load467, ptr %next.gep466, align 1
  store <2 x i64> %wide.load468, ptr %i.mp, align 1
  %index.next469 = add nuw i64 %index464, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.mq, label %middle.block470, label %vector.body463, !llvm.loop !99

middle.block470:                                  ; preds = %vector.body463
  %cmp.n471 = icmp eq i64 %i.mg, %n.vec462
  br i1 %cmp.n471, label %.preheader121, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %vector.memcheck454, %bb.aw, %middle.block470
  %.3365.i.pn.ph = phi ptr [ %.3365.i, %vector.memcheck454 ], [ %.3365.i, %bb.aw ], [ %i.mk, %middle.block470 ]
  %.0.i6.ph = phi ptr [ %i.lz, %vector.memcheck454 ], [ %i.lz, %bb.aw ], [ %i.ml, %middle.block470 ]
  br label %scalar.ph458

scalar.ph458:                                     ; preds = %scalar.ph458.preheader, %scalar.ph458
  %.3365.i.pn = phi ptr [ %.09.i5, %scalar.ph458 ], [ %.3365.i.pn.ph, %scalar.ph458.preheader ]
  %.0.i6 = phi ptr [ %i.ms, %scalar.ph458 ], [ %.0.i6.ph, %scalar.ph458.preheader ] ; 2 uses
  %.09.i5 = getelementptr inbounds nuw i8, ptr %.3365.i.pn, i64 8 ; 2 uses
  %i.mr = load i64, ptr %.09.i5, align 1
  store i64 %i.mr, ptr %.0.i6, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8 ; 2 uses
  %i.mt = icmp ult ptr %i.ms, %i.iy
  br i1 %i.mt, label %scalar.ph458, label %.preheader121, !llvm.loop !100

.preheader121:                                    ; preds = %scalar.ph458, %.lr.ph190, %bb.av, %bb.au, %vec.epilog.middle.block, %middle.block507, %middle.block470, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %middle.block470 ], [ %.2, %.lr.ph190 ], [ %.2, %middle.block507 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.av ], [ %.2, %bb.au ], [ %.2, %scalar.ph458 ] ; 3 uses
  %.6.i.ph = phi ptr [ %1, %bb.f ], [ %i.iy, %middle.block470 ], [ %i.iy, %.lr.ph190 ], [ %i.iy, %middle.block507 ], [ %i.iy, %vec.epilog.middle.block ], [ %i.iy, %bb.av ], [ %i.iy, %bb.au ], [ %i.iy, %scalar.ph458 ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.mv = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.mw = zext i8 %i.mv to i32                    ; 3 uses
  %i.mx = lshr i32 %i.mw, 4                       ; 2 uses
  %cond.i181 = icmp eq i32 %i.mx, 15
  br i1 %cond.i181, label %._crit_edge, label %.lr.ph183

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit15, %read_variable_length.exit15.thread79, %bb.g, %read_variable_length.exit.thread62, %read_variable_length.exit, %.thread87, %.preheader128, %.preheader125, %.preheader120, %.preheader118, %bb.ak, %._crit_edge, %read_variable_length.exit20, %read_variable_length.exit20.thread94, %bb.as, %.loopexit133, %read_variable_length.exit24, %bb.ai
  %.7 = phi ptr [ %.4, %bb.ai ], [ %.2, %.loopexit133 ], [ %.2, %bb.as ], [ %.17, %read_variable_length.exit24 ], [ %i.il, %.preheader118 ], [ %i.gh, %read_variable_length.exit20 ], [ %i.bm, %.preheader125 ], [ %.1597, %read_variable_length.exit20.thread94 ], [ %.lcssa144, %._crit_edge ], [ %i.ad, %.preheader128 ], [ %i.gh, %.preheader120 ], [ %i.ih, %bb.ak ], [ %i.bm, %read_variable_length.exit15 ], [ %.1382, %read_variable_length.exit15.thread79 ], [ %i.v, %bb.g ], [ %.1165, %read_variable_length.exit.thread62 ], [ %i.ad, %read_variable_length.exit ], [ %i.bi, %bb.m ], [ %.8, %.thread87 ]
  %i.my = ptrtoint ptr %.7 to i64
  %i.mz = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.mz, %i.my
  %i.na = trunc i64 %.neg.i to i32
  %i.nb = add nsw i32 %i.na, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.aj, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.hu, %bb.aj ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.nb, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1.i
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
  br i1 %i.j, label %LZ4_decompress_generic.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %LZ4_decompress_generic.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = icmp samesign ult i32 %i.a, 64
  br i1 %i.n, label %.preheader128, label %.preheader138

.preheader138:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader138
  %.0 = phi ptr [ %0, %.preheader138 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0358.i = phi ptr [ %1, %.preheader138 ], [ %.0358.i.be, %.backedge.backedge ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.u = load i8, ptr %.0, align 1, !tbaa !8
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = icmp eq i32 %i.w, 15
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.t, %i.p
  br i1 %.not22.i, label %bb.f, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.f:                                             ; preds = %bb.e
  %5 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.z = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %.not23.i = icmp eq i8 %i.z, -1
  br i1 %.not23.i, label %.preheader136, label %read_variable_length.exit.thread66, !prof !20

.preheader136:                                    ; preds = %bb.f, %bb.g
  %.11 = phi ptr [ %i.ab, %bb.g ], [ %5, %bb.f ]  ; 2 uses
  %.0.i15 = phi i64 [ %i.af, %bb.g ], [ 255, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 5 uses
  %i.ac = icmp ugt ptr %i.ab, %i.p
  br i1 %i.ac, label %LZ4_wildCopy32.exit.thread, label %bb.g, !prof !20

bb.g:                                             ; preds = %.preheader136
  %i.ad = load i8, ptr %.11, align 1, !tbaa !8    ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = add i64 %.0.i15, %i.ae                  ; 3 uses
  %i.ag = icmp eq i8 %i.ad, -1
  br i1 %i.ag, label %.preheader136, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.g
  %i.ah = icmp eq i64 %i.af, -1
  br i1 %i.ah, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread66

read_variable_length.exit.thread66:               ; preds = %bb.f, %read_variable_length.exit
  %.019.i70 = phi i64 [ %i.af, %read_variable_length.exit ], [ %i.aa, %bb.f ]
  %.1269 = phi ptr [ %i.ab, %read_variable_length.exit ], [ %5, %bb.f ] ; 5 uses
  %i.ai = add i64 %.019.i70, 15                   ; 5 uses
  %i.aj = ptrtoint ptr %.0358.i to i64
  %i.ak = xor i64 %i.aj, -1
  %i.al = icmp ugt i64 %i.ai, %i.ak
  %i.am = ptrtoint ptr %.1269 to i64
  %i.an = xor i64 %i.am, -1
  %i.ao = icmp ugt i64 %i.ai, %i.an
  %or.cond = or i1 %i.al, %i.ao
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.h, !prof !84

bb.h:                                             ; preds = %read_variable_length.exit.thread66
  %i.ap = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.ai ; 3 uses
  %i.aq = icmp ugt ptr %i.ap, %i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.1269, i64 %i.ai ; 2 uses
  %i.as = icmp ugt ptr %i.ar, %i.q
  %or.cond449.i = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader135

.preheader135:                                    ; preds = %bb.h, %.preheader135
  %.011.i = phi ptr [ %i.aw, %.preheader135 ], [ %.1269, %bb.h ] ; 3 uses
  %.0.i29 = phi ptr [ %i.av, %.preheader135 ], [ %.0358.i, %bb.h ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i29, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i29, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i29, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.ax = icmp ult ptr %i.av, %i.ap
  br i1 %i.ax, label %.preheader135, label %LZ4_wildCopy32.exit.thread75, !llvm.loop !85

bb.i:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.t, %i.o
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.az = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.x
  br label %LZ4_wildCopy32.exit.thread75

LZ4_wildCopy32.exit.thread75:                     ; preds = %.preheader135, %bb.j
  %.1 = phi ptr [ %i.ay, %bb.j ], [ %i.ar, %.preheader135 ] ; 3 uses
  %.2.i = phi ptr [ %i.az, %bb.j ], [ %i.ap, %.preheader135 ] ; 25 uses
  %.2.i417 = ptrtoaddr ptr %.2.i to i64           ; 7 uses
  %.val36 = load i16, ptr %.1, align 1, !tbaa !27 ; 5 uses
  %i.ba = zext i16 %.val36 to i64                 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bc = sub nsw i64 0, %i.ba
  %i.bd = getelementptr inbounds i8, ptr %.2.i, i64 %i.bc ; 18 uses
  %i.be = and i32 %i.v, 15                        ; 2 uses
  %i.bf = icmp eq i32 %i.be, 15
  br i1 %i.bf, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread75
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bh = icmp ugt ptr %i.bg, %i.s
  br i1 %i.bh, label %LZ4_wildCopy32.exit.thread, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !8   ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %.not23.i16 = icmp eq i8 %i.bi, -1
  br i1 %.not23.i16, label %.preheader133, label %read_variable_length.exit19.thread83, !prof !20

.preheader133:                                    ; preds = %bb.l, %bb.m
  %.13 = phi ptr [ %i.bk, %bb.m ], [ %i.bg, %bb.l ] ; 2 uses
  %.0.i18 = phi i64 [ %i.bo, %bb.m ], [ 255, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.13, i64 1 ; 5 uses
  %i.bl = icmp ugt ptr %i.bk, %i.s
  br i1 %i.bl, label %LZ4_wildCopy32.exit.thread, label %bb.m, !prof !20

bb.m:                                             ; preds = %.preheader133
  %i.bm = load i8, ptr %.13, align 1, !tbaa !8    ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = add i64 %.0.i18, %i.bn                  ; 3 uses
  %i.bp = icmp eq i8 %i.bm, -1
  br i1 %i.bp, label %.preheader133, label %read_variable_length.exit19, !llvm.loop !83

read_variable_length.exit19:                      ; preds = %bb.m
  %i.bq = icmp eq i64 %i.bo, -1
  br i1 %i.bq, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit19.thread83

read_variable_length.exit19.thread83:             ; preds = %bb.l, %read_variable_length.exit19
  %.019.i1787 = phi i64 [ %i.bo, %read_variable_length.exit19 ], [ %i.bj, %bb.l ]
  %.1486 = phi ptr [ %i.bk, %read_variable_length.exit19 ], [ %i.bg, %bb.l ] ; 3 uses
  %i.br = add i64 %.019.i1787, 19                 ; 4 uses
  %i.bs = ptrtoint ptr %.2.i to i64
  %i.bt = xor i64 %i.bs, -1
  %i.bu = icmp ugt i64 %i.br, %i.bt
  br i1 %i.bu, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %read_variable_length.exit19.thread83
  %i.bv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.br
  %.not435.i = icmp ult ptr %i.bv, %i.r
  br i1 %.not435.i, label %.thread91, label %.loopexit141

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread75
  %narrow.i = add nuw nsw i32 %i.be, 4
  %i.bw = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.bw ; 2 uses
  %.not434.i = icmp ult ptr %i.bx, %i.r
  br i1 %.not434.i, label %bb.p, label %.loopexit141

bb.p:                                             ; preds = %bb.o
  %i.by = icmp uge ptr %i.bd, %1
  %i.bz = icmp ugt i16 %.val36, 7
  %or.cond5.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread91

bb.q:                                             ; preds = %bb.p
  %i.ca = load i64, ptr %i.bd, align 1
  store i64 %i.ca, ptr %.2.i, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cd = load i64, ptr %i.cc, align 1
  store i64 %i.cd, ptr %i.cb, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cg = load i16, ptr %i.cf, align 1
  store i16 %i.cg, ptr %i.ce, align 1
  br label %.backedge.backedge

.thread91:                                        ; preds = %bb.n, %bb.p
  %.9 = phi ptr [ %i.bb, %bb.p ], [ %.1486, %bb.n ] ; 7 uses
  %.2374.i = phi i64 [ %i.bw, %bb.p ], [ %i.br, %bb.n ] ; 4 uses
  %i.ch = icmp ult ptr %i.bd, %1
  br i1 %i.ch, label %LZ4_wildCopy32.exit.thread, label %bb.r, !prof !86

bb.r:                                             ; preds = %.thread91
  %i.ci = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.2374.i ; 9 uses
  %i.cj = icmp ult i16 %.val36, 16
  br i1 %i.cj, label %bb.s, label %.preheader131, !prof !20

bb.s:                                             ; preds = %bb.r
  switch i16 %.val36, label %bb.w [
    i16 1, label %bb.t
    i16 2, label %bb.u
    i16 4, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ck = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.cl = zext i8 %i.ck to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cl, 16843009
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bd, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.aa

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bd, align 1
  br label %bb.aa

bb.w:                                             ; preds = %bb.s
  %i.cm = icmp samesign ult i16 %.val36, 8
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %.2.i, align 1, !tbaa !16
  %i.cn = load i8, ptr %i.bd, align 1, !tbaa !8
  store i8 %i.cn, ptr %.2.i, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.i, i64 3
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.ba
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !35
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.dc = load i32, ptr %i.da, align 1
  store i32 %i.dc, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.ba
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !35
  %i.df = sext i32 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.da, i64 %i.dg
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.di = load i64, ptr %i.bd, align 1
  store i64 %i.di, ptr %.2.i, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.023.i = phi ptr [ %i.dh, %bb.x ], [ %i.dj, %bb.y ] ; 5 uses
  %.0.i34 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.dk = add i64 %.2374.i, %.2.i417
  %i.dl = add i64 %.2.i417, 16
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.dl)
  %i.dn = sub i64 %i.dm, %.2.i417
  %i.do = add i64 %i.dn, -9                       ; 2 uses
  %i.dp = lshr i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.do, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.z
  %.023.i418 = ptrtoaddr ptr %.023.i to i64
  %i.dr = sub i64 %.2.i417, %.023.i418
  %i.ds = add i64 %i.dr, 7
  %diff.check = icmp ult i64 %i.ds, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dq, 4611686018427387900     ; 3 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %.023.i, i64 %i.dt
  %i.dv = getelementptr i8, ptr %.0.i34, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.i, i64 %i.dw ; 2 uses
  %next.gep419 = getelementptr i8, ptr %.0.i34, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load420 = load <2 x i64>, ptr %i.dx, align 1
  %i.dy = getelementptr i8, ptr %next.gep419, i64 16
  store <2 x i64> %wide.load, ptr %next.gep419, align 1
  store <2 x i64> %wide.load420, ptr %i.dy, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.z, %middle.block
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.z ], [ %i.du, %middle.block ]
  %.0.i.i.ph = phi ptr [ %.0.i34, %vector.memcheck ], [ %.0.i34, %bb.z ], [ %i.dv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.ec, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.eb, %scalar.ph ], [ %.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ea = load i64, ptr %.09.i.i, align 1
  store i64 %i.ea, ptr %.0.i.i, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ed = icmp ult ptr %i.eb, %i.ci
  br i1 %i.ed, label %scalar.ph, label %.backedge.backedge, !llvm.loop !102

bb.aa:                                            ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.t ], [ %.sroa.0.2.insert.insert.i, %bb.u ], [ %.sroa.0.0.copyload2.i, %bb.v ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.ee = icmp samesign ugt i64 %.2374.i, 8
  br i1 %i.ee, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.aa
  %.0.i33186 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.ef = add i64 %.2374.i, %.2.i417
  %i.eg = add i64 %.2.i417, 16
  %i.eh = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %i.ei = sub i64 %i.eh, %.2.i417
  %i.ej = add i64 %i.ei, -9                       ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check423 = icmp ult i64 %i.ej, 24
  br i1 %min.iters.check423, label %.lr.ph.preheader540, label %vector.ph424

vector.ph424:                                     ; preds = %.lr.ph.preheader
  %n.vec426 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.em = shl i64 %n.vec426, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %.0.i33186, i64 %i.em
  %i.eo = getelementptr i8, ptr %.2.i, i64 %i.em
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.ep = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph424
  %index428 = phi i64 [ 0, %vector.ph424 ], [ %index.next432, %vector.body427 ] ; 2 uses
  %i.eq = shl i64 %index428, 3                    ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.0.i33186, i64 %i.eq
  %i.er = getelementptr i8, ptr %.0.i33186, i64 %i.eq
  %next.gep430 = getelementptr i8, ptr %i.er, i64 16
  store <4 x i32> %i.ep, ptr %next.gep429, align 1
  store <4 x i32> %i.ep, ptr %next.gep430, align 1
  %index.next432 = add nuw i64 %index428, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next432, %n.vec426
  br i1 %i.es, label %middle.block433, label %vector.body427, !llvm.loop !103

middle.block433:                                  ; preds = %vector.body427
  %cmp.n434 = icmp eq i64 %i.el, %n.vec426
  br i1 %cmp.n434, label %.backedge.backedge, label %.lr.ph.preheader540

.backedge.backedge:                               ; preds = %.preheader131, %.lr.ph, %scalar.ph, %middle.block433, %middle.block, %bb.aa, %bb.q
  %.0.be = phi ptr [ %i.bb, %bb.q ], [ %.9, %middle.block ], [ %.9, %bb.aa ], [ %.9, %middle.block433 ], [ %.9, %scalar.ph ], [ %.9, %.lr.ph ], [ %.9, %.preheader131 ]
  %.0358.i.be = phi ptr [ %i.bx, %bb.q ], [ %i.ci, %middle.block ], [ %i.ci, %bb.aa ], [ %i.ci, %middle.block433 ], [ %i.ci, %scalar.ph ], [ %i.ci, %.lr.ph ], [ %i.ci, %.preheader131 ]
  br label %.backedge

.lr.ph.preheader540:                              ; preds = %.lr.ph.preheader, %middle.block433
  %.0.i33188.ph = phi ptr [ %.0.i33186, %.lr.ph.preheader ], [ %i.en, %middle.block433 ]
  %.pn.i187.ph = phi ptr [ %.2.i, %.lr.ph.preheader ], [ %i.eo, %middle.block433 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader540, %.lr.ph
  %.0.i33188 = phi ptr [ %.0.i33, %.lr.ph ], [ %.0.i33188.ph, %.lr.ph.preheader540 ] ; 3 uses
  %.pn.i187 = phi ptr [ %.0.i33188, %.lr.ph ], [ %.pn.i187.ph, %.lr.ph.preheader540 ]
  store i32 %.sroa.9.0.i, ptr %.0.i33188, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i187, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i33 = getelementptr inbounds nuw i8, ptr %.0.i33188, i64 8 ; 2 uses
  %i.et = icmp ult ptr %.0.i33, %i.ci
  br i1 %i.et, label %.lr.ph, label %.backedge.backedge, !llvm.loop !104

.preheader131:                                    ; preds = %bb.r, %.preheader131
  %.011.i30 = phi ptr [ %i.ex, %.preheader131 ], [ %i.bd, %bb.r ] ; 3 uses
  %.0.i31 = phi ptr [ %i.ew, %.preheader131 ], [ %.2.i, %bb.r ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i31, ptr noundef nonnull align 1 dereferenceable(16) %.011.i30, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i30, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eu, ptr noundef nonnull align 1 dereferenceable(16) %i.ev, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i30, i64 32
  %i.ey = icmp ult ptr %i.ew, %i.ci
  br i1 %i.ey, label %.preheader131, label %.backedge.backedge, !llvm.loop !85

.lr.ph191:                                        ; preds = %.preheader128, %bb.ac
  %.in = phi i32 [ %i.gb, %bb.ac ], [ %i.me, %.preheader128 ]
  %i.ez = phi i32 [ %i.ga, %bb.ac ], [ %i.md, %.preheader128 ] ; 2 uses
  %i.fa = phi ptr [ %i.fy, %bb.ac ], [ %i.mb, %.preheader128 ] ; 4 uses
  %.6.i190 = phi ptr [ %i.fx, %bb.ac ], [ %.6.i.ph, %.preheader128 ] ; 4 uses
  %i.fb = zext nneg i32 %.in to i64               ; 3 uses
  %i.fc = icmp ult ptr %i.fa, %i.h
  %i.fd = icmp ule ptr %.6.i190, %i.i
  %i.fe = and i1 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ab, label %LZ4_wildCopy32.exit, !prof !29

bb.ab:                                            ; preds = %.lr.ph191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i190, ptr noundef nonnull align 1 dereferenceable(16) %i.fa, i64 16, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %.6.i190, i64 %i.fb ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb ; 3 uses
  %i.fh = and i32 %i.ez, 15                       ; 2 uses
  %i.fi = zext nneg i32 %i.fh to i64              ; 2 uses
  %.val = load i16, ptr %i.fg, align 1, !tbaa !27 ; 2 uses
  %i.fj = zext i16 %.val to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 2 ; 3 uses
  %i.fl = sub nsw i64 0, %i.fj
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 %i.fl ; 5 uses
  %i.fn = icmp eq i32 %i.fh, 15
  %i.fo = icmp ult i16 %.val, 8
  %or.cond3.i.not122 = select i1 %i.fn, i1 true, i1 %i.fo
  %.not442.i = icmp ult ptr %i.fm, %1
  %or.cond117 = select i1 %or.cond3.i.not122, i1 true, i1 %.not442.i
  br i1 %or.cond117, label %.loopexit129, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = load i64, ptr %i.fm, align 1
  store i64 %i.fp, ptr %i.ff, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fs = load i64, ptr %i.fr, align 1
  store i64 %i.fs, ptr %i.fq, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fv = load i16, ptr %i.fu, align 1
  store i16 %i.fv, ptr %i.ft, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fi
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 3 ; 2 uses
  %i.fz = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.ga = zext i8 %i.fz to i32                    ; 3 uses
  %i.gb = lshr i32 %i.ga, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.gb, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph191

._crit_edge:                                      ; preds = %bb.ac, %.preheader128
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader128 ], [ %i.fk, %bb.ac ]
  %.6.i.lcssa = phi ptr [ %.6.i.ph, %.preheader128 ], [ %i.fx, %bb.ac ] ; 2 uses
  %.lcssa152 = phi ptr [ %i.mb, %.preheader128 ], [ %i.fy, %bb.ac ] ; 3 uses
  %.lcssa149 = phi i32 [ %i.md, %.preheader128 ], [ %i.ga, %bb.ac ]
  %i.gc = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not22.i20 = icmp ult ptr %.lcssa152, %i.gc
  br i1 %.not22.i20, label %bb.ad, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.ad:                                            ; preds = %._crit_edge
  %6 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.gd = load i8, ptr %.lcssa152, align 1, !tbaa !8 ; 2 uses
  %i.ge = zext i8 %i.gd to i64
  %.not23.i22 = icmp eq i8 %i.gd, -1
  br i1 %.not23.i22, label %.preheader127, label %read_variable_length.exit24.thread98, !prof !20

.preheader127:                                    ; preds = %bb.ad, %bb.ae
  %.15 = phi ptr [ %i.gf, %bb.ae ], [ %6, %bb.ad ] ; 2 uses
  %.0.i23 = phi i64 [ %i.gj, %bb.ae ], [ 255, %bb.ad ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.15, i64 1 ; 5 uses
  %i.gg = icmp ugt ptr %i.gf, %i.gc
  br i1 %i.gg, label %LZ4_wildCopy32.exit.thread, label %bb.ae, !prof !20

bb.ae:                                            ; preds = %.preheader127
  %i.gh = load i8, ptr %.15, align 1, !tbaa !8    ; 2 uses
  %i.gi = zext i8 %i.gh to i64
  %i.gj = add i64 %.0.i23, %i.gi                  ; 3 uses
  %i.gk = icmp eq i8 %i.gh, -1
  br i1 %i.gk, label %.preheader127, label %read_variable_length.exit24, !llvm.loop !83

read_variable_length.exit24:                      ; preds = %bb.ae
  %i.gl = icmp eq i64 %i.gj, -1
  br i1 %i.gl, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit24.thread98

read_variable_length.exit24.thread98:             ; preds = %bb.ad, %read_variable_length.exit24
  %.019.i21102 = phi i64 [ %i.gj, %read_variable_length.exit24 ], [ %i.ge, %bb.ad ]
  %.16101 = phi ptr [ %i.gf, %read_variable_length.exit24 ], [ %6, %bb.ad ] ; 3 uses
  %i.gm = add i64 %.019.i21102, 15                ; 3 uses
  %i.gn = ptrtoint ptr %.6.i.lcssa to i64
  %i.go = xor i64 %i.gn, -1
  %i.gp = icmp ugt i64 %i.gm, %i.go
  %i.gq = ptrtoint ptr %.16101 to i64
  %i.gr = xor i64 %i.gq, -1
  %i.gs = icmp ugt i64 %i.gm, %i.gr
  %or.cond120 = or i1 %i.gp, %i.gs
  br i1 %or.cond120, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.h, %bb.i, %.lr.ph191, %read_variable_length.exit24.thread98
  %.4 = phi ptr [ %.16101, %read_variable_length.exit24.thread98 ], [ %i.fa, %.lr.ph191 ], [ %i.t, %bb.i ], [ %.1269, %bb.h ] ; 10 uses
  %.5377.i = phi i64 [ %i.gm, %read_variable_length.exit24.thread98 ], [ %i.fb, %.lr.ph191 ], [ %i.x, %bb.i ], [ %i.ai, %bb.h ] ; 5 uses
  %.0371.i = phi i32 [ %.lcssa149, %read_variable_length.exit24.thread98 ], [ %i.ez, %.lr.ph191 ], [ %i.v, %bb.i ], [ %i.v, %bb.h ]
  %.7.i = phi ptr [ %.6.i.lcssa, %read_variable_length.exit24.thread98 ], [ %.6.i190, %.lr.ph191 ], [ %.0358.i, %bb.i ], [ %.0358.i, %bb.h ] ; 11 uses
  %.7.i438 = ptrtoaddr ptr %.7.i to i64           ; 4 uses
  %.4439 = ptrtoaddr ptr %.4 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.5377.i ; 5 uses
  %i.gu = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gv = icmp ugt ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i ; 3 uses
  %i.gx = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gy = icmp ugt ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.ag, label %.preheader126.preheader

.preheader126.preheader:                          ; preds = %bb.af
  %i.gz = add nuw i64 %.5377.i, %.7.i438
  %i.ha = add i64 %.7.i438, 8
  %i.hb = tail call i64 @llvm.umax.i64(i64 %i.gz, i64 %i.ha)
  %i.hc = xor i64 %.7.i438, -1
  %i.hd = add i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check442 = icmp ult i64 %i.hd, 72
  %i.hg = sub i64 %.4439, %.7.i438
  %diff.check440 = icmp ugt i64 %i.hg, -32
  %or.cond507 = select i1 %min.iters.check442, i1 true, i1 %diff.check440
  br i1 %or.cond507, label %.preheader126.preheader511, label %vector.ph443

vector.ph443:                                     ; preds = %.preheader126.preheader
  %n.vec445 = and i64 %i.hf, 4611686018427387900  ; 3 uses
  %i.hh = shl i64 %n.vec445, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.4, i64 %i.hh
  %i.hj = getelementptr i8, ptr %.7.i, i64 %i.hh
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph443
  %index447 = phi i64 [ 0, %vector.ph443 ], [ %index.next452, %vector.body446 ] ; 2 uses
  %i.hk = shl i64 %index447, 3                    ; 2 uses
  %next.gep448 = getelementptr i8, ptr %.4, i64 %i.hk ; 2 uses
  %next.gep449 = getelementptr i8, ptr %.7.i, i64 %i.hk ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep448, i64 16
  %wide.load450 = load <2 x i64>, ptr %next.gep448, align 1
  %wide.load451 = load <2 x i64>, ptr %i.hl, align 1
  %i.hm = getelementptr i8, ptr %next.gep449, i64 16
  store <2 x i64> %wide.load450, ptr %next.gep449, align 1
  store <2 x i64> %wide.load451, ptr %i.hm, align 1
  %index.next452 = add nuw i64 %index447, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next452, %n.vec445
  br i1 %i.hn, label %middle.block453, label %vector.body446, !llvm.loop !105

middle.block453:                                  ; preds = %vector.body446
  %cmp.n454 = icmp eq i64 %i.hf, %n.vec445
  br i1 %cmp.n454, label %LZ4_wildCopy8.exit14, label %.preheader126.preheader511

.preheader126.preheader511:                       ; preds = %.preheader126.preheader, %middle.block453
  %.09.i12.ph = phi ptr [ %.4, %.preheader126.preheader ], [ %i.hi, %middle.block453 ]
  %.0.i13.ph = phi ptr [ %.7.i, %.preheader126.preheader ], [ %i.hj, %middle.block453 ]
  br label %.preheader126

bb.ag:                                            ; preds = %bb.af, %LZ4_wildCopy32.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i
  %i.hp = icmp ugt ptr %i.ho, %i.e                ; 2 uses
  %i.hq = ptrtoint ptr %i.e to i64
  %i.hr = ptrtoint ptr %.4 to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.hs
  %.0360.i = select i1 %i.hp, ptr %i.ht, ptr %i.gt ; 2 uses
  %i.hu = icmp ugt ptr %.0360.i, %i.g
  br i1 %i.hu, label %.thread109, label %bb.ah

.thread109:                                       ; preds = %bb.ag
  %i.hv = ptrtoint ptr %.7.i to i64
  %i.hw = sub i64 %i.l, %i.hv                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %i.hw, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.hw
  br label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %.6378.i = select i1 %i.hp, i64 %i.hs, i64 %.5377.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %.6378.i, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.4, i64 %.6378.i ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.6378.i ; 2 uses
  %i.ia = icmp ne ptr %.0360.i, %i.g
  %i.ib = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not441.i = icmp ult ptr %i.hy, %i.ib
  %or.cond459.i = select i1 %i.ia, i1 %.not441.i, i1 false
  br i1 %or.cond459.i, label %LZ4_wildCopy8.exit14, label %bb.au

.preheader126:                                    ; preds = %.preheader126.preheader511, %.preheader126
  %.09.i12 = phi ptr [ %i.ie, %.preheader126 ], [ %.09.i12.ph, %.preheader126.preheader511 ] ; 2 uses
  %.0.i13 = phi ptr [ %i.id, %.preheader126 ], [ %.0.i13.ph, %.preheader126.preheader511 ] ; 2 uses
  %i.ic = load i64, ptr %.09.i12, align 1
  store i64 %i.ic, ptr %.0.i13, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.09.i12, i64 8
  %i.if = icmp ult ptr %i.id, %i.gt
  br i1 %i.if, label %.preheader126, label %LZ4_wildCopy8.exit14, !llvm.loop !106

LZ4_wildCopy8.exit14:                             ; preds = %.preheader126, %middle.block453, %bb.ah
  %.5 = phi ptr [ %i.hy, %bb.ah ], [ %i.gw, %middle.block453 ], [ %i.gw, %.preheader126 ] ; 2 uses
  %.8.i = phi ptr [ %i.hz, %bb.ah ], [ %i.gt, %middle.block453 ], [ %i.gt, %.preheader126 ] ; 2 uses
  %.val35 = load i16, ptr %.5, align 1, !tbaa !27
  %i.ig = zext i16 %.val35 to i64                 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ii = sub nsw i64 0, %i.ig
  %i.ij = getelementptr inbounds i8, ptr %.8.i, i64 %i.ii
  %i.ik = and i32 %.0371.i, 15
  %i.il = zext nneg i32 %i.ik to i64
  br label %.loopexit129

.loopexit129:                                     ; preds = %bb.ab, %LZ4_wildCopy8.exit14
  %.6 = phi ptr [ %i.ih, %LZ4_wildCopy8.exit14 ], [ %i.fk, %bb.ab ] ; 3 uses
  %.8380.i = phi i64 [ %i.il, %LZ4_wildCopy8.exit14 ], [ %i.fi, %bb.ab ] ; 2 uses
  %.0369.i = phi i64 [ %i.ig, %LZ4_wildCopy8.exit14 ], [ %i.fj, %bb.ab ]
  %.0362.i = phi ptr [ %i.ij, %LZ4_wildCopy8.exit14 ], [ %i.fm, %bb.ab ]
  %.9.i = phi ptr [ %.8.i, %LZ4_wildCopy8.exit14 ], [ %i.ff, %bb.ab ] ; 2 uses
  %i.im = icmp eq i64 %.8380.i, 15
  br i1 %i.im, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.loopexit129
  %i.in = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 4 uses
  %i.ip = icmp ugt ptr %i.io, %i.in
  br i1 %i.ip, label %LZ4_wildCopy32.exit.thread, label %bb.aj, !prof !20

bb.aj:                                            ; preds = %bb.ai
  %i.iq = load i8, ptr %.6, align 1, !tbaa !8     ; 2 uses
  %i.ir = zext i8 %i.iq to i64
  %.not23.i25 = icmp eq i8 %i.iq, -1
  br i1 %.not23.i25, label %.preheader125, label %read_variable_length.exit28, !prof !20

.preheader125:                                    ; preds = %bb.aj, %bb.ak
  %.17 = phi ptr [ %i.is, %bb.ak ], [ %i.io, %bb.aj ] ; 2 uses
  %.0.i27 = phi i64 [ %i.iw, %bb.ak ], [ 255, %bb.aj ]
  %i.is = getelementptr inbounds nuw i8, ptr %.17, i64 1 ; 4 uses
  %i.it = icmp ugt ptr %i.is, %i.in
  br i1 %i.it, label %LZ4_wildCopy32.exit.thread, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %.preheader125
  %i.iu = load i8, ptr %.17, align 1, !tbaa !8    ; 2 uses
  %i.iv = zext i8 %i.iu to i64
  %i.iw = add i64 %.0.i27, %i.iv                  ; 2 uses
  %i.ix = icmp eq i8 %i.iu, -1
  br i1 %i.ix, label %.preheader125, label %read_variable_length.exit28, !llvm.loop !83

read_variable_length.exit28:                      ; preds = %bb.ak, %bb.aj
  %.18 = phi ptr [ %i.io, %bb.aj ], [ %i.is, %bb.ak ] ; 2 uses
  %.019.i26 = phi i64 [ %i.ir, %bb.aj ], [ %i.iw, %bb.ak ] ; 2 uses
  %i.iy = icmp ne i64 %.019.i26, -1               ; 2 uses
  %i.iz = add i64 %.019.i26, 15                   ; 2 uses
  %i.ja = ptrtoint ptr %.9.i to i64
  %i.jb = xor i64 %i.ja, -1
  %i.jc = icmp ule i64 %i.iz, %i.jb
  %.not124 = select i1 %i.iy, i1 %i.jc, i1 false
  %.9381.i = select i1 %i.iy, i64 %i.iz, i64 15
  br i1 %.not124, label %bb.al, label %LZ4_wildCopy32.exit.thread

bb.al:                                            ; preds = %read_variable_length.exit28, %.loopexit129
  %.7 = phi ptr [ %.18, %read_variable_length.exit28 ], [ %.6, %.loopexit129 ]
  %.10382.i = phi i64 [ %.9381.i, %read_variable_length.exit28 ], [ %.8380.i, %.loopexit129 ]
  %i.jd = add i64 %.10382.i, 4
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.n, %bb.o, %bb.al
  %.2 = phi ptr [ %.7, %bb.al ], [ %.1486, %bb.n ], [ %i.bb, %bb.o ] ; 5 uses
  %.11383.i = phi i64 [ %i.jd, %bb.al ], [ %i.br, %bb.n ], [ %i.bw, %bb.o ] ; 4 uses
  %.1370.i = phi i64 [ %.0369.i, %bb.al ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ] ; 3 uses
  %.1363.i = phi ptr [ %.0362.i, %bb.al ], [ %i.bd, %bb.o ], [ %i.bd, %bb.n ] ; 16 uses
  %.10.i = phi ptr [ %.9.i, %bb.al ], [ %.2.i, %bb.o ], [ %.2.i, %bb.n ] ; 20 uses
  %.1363.i478 = ptrtoaddr ptr %.1363.i to i64
  %.10.i458 = ptrtoaddr ptr %.10.i to i64         ; 8 uses
  %i.je = icmp ult ptr %.1363.i, %1
  br i1 %i.je, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !86

bb.am:                                            ; preds = %.loopexit141
  %i.jf = getelementptr inbounds nuw i8, ptr %.10.i, i64 %.11383.i ; 5 uses
  %i.jg = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.jh = icmp ugt ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ji = ptrtoint ptr %.10.i to i64
  %i.jj = sub i64 %i.l, %i.ji
  %i.jk = tail call i64 @llvm.umin.i64(i64 %.11383.i, i64 %i.jj) ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.10.i, i64 %i.jk ; 3 uses
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_partial:bb.a

vector.ph483:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf484 = and i64 %i.jq, 28
  %n.vec485 = and i64 %i.jq, -32                  ; 5 uses
  %i.js = getelementptr i8, ptr %.10.i, i64 %n.vec485
  %i.jt = getelementptr i8, ptr %.1363.i, i64 %n.vec485
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph483
  %index487 = phi i64 [ 0, %vector.ph483 ], [ %index.next492, %vector.body486 ] ; 3 uses
  %next.gep488 = getelementptr i8, ptr %.10.i, i64 %index487 ; 2 uses
  %next.gep489 = getelementptr i8, ptr %.1363.i, i64 %index487 ; 2 uses
  %i.ju = getelementptr i8, ptr %next.gep489, i64 16
  %wide.load490 = load <16 x i8>, ptr %next.gep489, align 1, !tbaa !8
  %wide.load491 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !8
  %i.jv = getelementptr i8, ptr %next.gep488, i64 16
  store <16 x i8> %wide.load490, ptr %next.gep488, align 1, !tbaa !8
  store <16 x i8> %wide.load491, ptr %i.jv, align 1, !tbaa !8
  %index.next492 = add nuw i64 %index487, 32      ; 2 uses
  %i.jw = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.jw, label %middle.block493, label %vector.body486, !llvm.loop !107

middle.block493:                                  ; preds = %vector.body486
  %cmp.n494 = icmp eq i64 %i.jq, %n.vec485
  br i1 %cmp.n494, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block493
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf484, 0
  br i1 %min.epilog.iters.check, label %.lr.ph197.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec485, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec498 = and i64 %i.jq, -4                   ; 4 uses
  %i.jx = getelementptr i8, ptr %.10.i, i64 %n.vec498
  %i.jy = getelementptr i8, ptr %.1363.i, i64 %n.vec498
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index499 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next503, %vec.epilog.vector.body ] ; 3 uses
  %next.gep500 = getelementptr i8, ptr %.10.i, i64 %index499
  %next.gep501 = getelementptr i8, ptr %.1363.i, i64 %index499
  %wide.load502 = load <4 x i8>, ptr %next.gep501, align 1, !tbaa !8
  store <4 x i8> %wide.load502, ptr %next.gep500, align 1, !tbaa !8
  %index.next503 = add nuw i64 %index499, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next503, %n.vec498
  br i1 %i.jz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n504 = icmp eq i64 %i.jq, %n.vec498
  br i1 %cmp.n504, label %.loopexit, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14.i196.ph = phi ptr [ %.10.i, %iter.check ], [ %i.js, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  %.2364.i195.ph = phi ptr [ %.1363.i, %iter.check ], [ %i.jt, %vec.epilog.iter.check ], [ %i.jy, %vec.epilog.middle.block ]
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %.lr.ph197
  %.14.i196 = phi ptr [ %i.kc, %.lr.ph197 ], [ %.14.i196.ph, %.lr.ph197.preheader ] ; 2 uses
  %.2364.i195 = phi ptr [ %i.ka, %.lr.ph197 ], [ %.2364.i195.ph, %.lr.ph197.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.2364.i195, i64 1
  %i.kb = load i8, ptr %.2364.i195, align 1, !tbaa !8
  %i.kc = getelementptr inbounds nuw i8, ptr %.14.i196, i64 1 ; 2 uses
  store i8 %i.kb, ptr %.14.i196, align 1, !tbaa !8
  %i.kd = icmp ult ptr %i.kc, %i.jm
  br i1 %i.kd, label %.lr.ph197, label %.loopexit, !llvm.loop !109

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10.i, ptr align 1 %.1363.i, i64 %i.jk, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph197, %middle.block493, %vec.epilog.middle.block, %.preheader, %bb.ao
  %i.ke = icmp eq ptr %i.jm, %i.g
  br i1 %i.ke, label %bb.au, label %.preheader128

bb.ap:                                            ; preds = %bb.am
  %i.kf = icmp ult i64 %.1370.i, 8
  br i1 %i.kf, label %bb.aq, label %bb.ar, !prof !20

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.10.i, align 1, !tbaa !16
  %i.kg = load i8, ptr %.1363.i, align 1, !tbaa !8
  store i8 %i.kg, ptr %.10.i, align 1, !tbaa !8
  %i.kh = getelementptr inbounds nuw i8, ptr %.1363.i, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %.10.i, i64 1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %.1363.i, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %.10.i, i64 2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %.1363.i, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !8
  %i.kp = getelementptr inbounds nuw i8, ptr %.10.i, i64 3
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !8
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !35
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.10.i, i64 4
  %i.kv = load i32, ptr %i.kt, align 1
  store i32 %i.kv, ptr %i.ku, align 1
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1370.i
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !35
  %i.ky = sext i32 %i.kx to i64
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.kt, i64 %i.kz
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.lb = load i64, ptr %.1363.i, align 1
  store i64 %i.lb, ptr %.10.i, align 1
  %i.lc = getelementptr inbounds nuw i8, ptr %.1363.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.3365.i = phi ptr [ %i.la, %bb.aq ], [ %i.lc, %bb.ar ] ; 6 uses
  %.3365.i459 = ptrtoaddr ptr %.3365.i to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %.10.i, i64 8
  %i.le = load i64, ptr %.3365.i, align 1
  store i64 %i.le, ptr %i.ld, align 1
  %i.lf = icmp ugt i64 %.11383.i, 16
  br i1 %i.lf, label %bb.at, label %.preheader128

bb.at:                                            ; preds = %bb.as
  %i.lg = getelementptr inbounds nuw i8, ptr %.10.i, i64 16 ; 4 uses
  %i.lh = add i64 %.11383.i, %.10.i458
  %i.li = add i64 %.10.i458, 24
  %i.lj = tail call i64 @llvm.umax.i64(i64 %i.lh, i64 %i.li)
  %i.lk = sub i64 %i.lj, %.10.i458
  %i.ll = add i64 %i.lk, -17                      ; 2 uses
  %i.lm = lshr i64 %i.ll, 3
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %min.iters.check462 = icmp ult i64 %i.ll, 104
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.memcheck457

vector.memcheck457:                               ; preds = %bb.at
  %i.lo = sub i64 %.10.i458, %.3365.i459
  %i.lp = add i64 %i.lo, 7
  %diff.check460 = icmp ult i64 %i.lp, 31
  br i1 %diff.check460, label %scalar.ph461.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %vector.memcheck457
  %n.vec465 = and i64 %i.ln, 4611686018427387900  ; 3 uses
  %i.lq = shl i64 %n.vec465, 3                    ; 2 uses
  %i.lr = getelementptr i8, ptr %.3365.i, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lg, i64 %i.lq
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph463
  %index467 = phi i64 [ 0, %vector.ph463 ], [ %index.next472, %vector.body466 ] ; 2 uses
  %i.lt = shl i64 %index467, 3                    ; 2 uses
  %next.gep468 = getelementptr i8, ptr %.3365.i, i64 %i.lt ; 2 uses
  %next.gep469 = getelementptr i8, ptr %i.lg, i64 %i.lt ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %next.gep468, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %next.gep468, i64 24
  %wide.load470 = load <2 x i64>, ptr %i.lu, align 1
  %wide.load471 = load <2 x i64>, ptr %i.lv, align 1
  %i.lw = getelementptr i8, ptr %next.gep469, i64 16
  store <2 x i64> %wide.load470, ptr %next.gep469, align 1
  store <2 x i64> %wide.load471, ptr %i.lw, align 1
  %index.next472 = add nuw i64 %index467, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next472, %n.vec465
  br i1 %i.lx, label %middle.block473, label %vector.body466, !llvm.loop !110

middle.block473:                                  ; preds = %vector.body466
  %cmp.n474 = icmp eq i64 %i.ln, %n.vec465
  br i1 %cmp.n474, label %.preheader128, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %vector.memcheck457, %bb.at, %middle.block473
  %.3365.i.pn.ph = phi ptr [ %.3365.i, %vector.memcheck457 ], [ %.3365.i, %bb.at ], [ %i.lr, %middle.block473 ]
  %.0.i10.ph = phi ptr [ %i.lg, %vector.memcheck457 ], [ %i.lg, %bb.at ], [ %i.ls, %middle.block473 ]
  br label %scalar.ph461

scalar.ph461:                                     ; preds = %scalar.ph461.preheader, %scalar.ph461
  %.3365.i.pn = phi ptr [ %.09.i9, %scalar.ph461 ], [ %.3365.i.pn.ph, %scalar.ph461.preheader ]
  %.0.i10 = phi ptr [ %i.lz, %scalar.ph461 ], [ %.0.i10.ph, %scalar.ph461.preheader ] ; 2 uses
  %.09.i9 = getelementptr inbounds nuw i8, ptr %.3365.i.pn, i64 8 ; 2 uses
  %i.ly = load i64, ptr %.09.i9, align 1
  store i64 %i.ly, ptr %.0.i10, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8 ; 2 uses
  %i.ma = icmp ult ptr %i.lz, %i.jf
  br i1 %i.ma, label %scalar.ph461, label %.preheader128, !llvm.loop !111

.preheader128:                                    ; preds = %scalar.ph461, %bb.as, %middle.block473, %bb.d, %.loopexit
  %.3.ph = phi ptr [ %0, %bb.d ], [ %.2, %.loopexit ], [ %.2, %middle.block473 ], [ %.2, %bb.as ], [ %.2, %scalar.ph461 ] ; 3 uses
  %.6.i.ph = phi ptr [ %1, %bb.d ], [ %i.jm, %.loopexit ], [ %i.jf, %middle.block473 ], [ %i.jf, %bb.as ], [ %i.jf, %scalar.ph461 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.mc = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.md = zext i8 %i.mc to i32                    ; 3 uses
  %i.me = lshr i32 %i.md, 4                       ; 2 uses
  %cond.i189 = icmp eq i32 %i.me, 15
  br i1 %cond.i189, label %._crit_edge, label %.lr.ph191

bb.au:                                            ; preds = %.thread109, %.loopexit, %bb.ah
  %.17.i = phi ptr [ %i.g, %.loopexit ], [ %i.hz, %bb.ah ], [ %i.hx, %.thread109 ]
  %i.mf = ptrtoint ptr %.17.i to i64
  %i.mg = sub i64 %i.mf, %i.m
  %i.mh = trunc i64 %i.mg to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit19, %read_variable_length.exit19.thread83, %bb.e, %read_variable_length.exit.thread66, %read_variable_length.exit, %.thread91, %.preheader136, %.preheader133, %.preheader127, %.preheader125, %bb.ai, %._crit_edge, %read_variable_length.exit24, %read_variable_length.exit24.thread98, %.loopexit141, %read_variable_length.exit28
  %.8 = phi ptr [ %.2, %.loopexit141 ], [ %i.is, %.preheader125 ], [ %.18, %read_variable_length.exit28 ], [ %i.gf, %read_variable_length.exit24 ], [ %i.bk, %.preheader133 ], [ %.16101, %read_variable_length.exit24.thread98 ], [ %.lcssa152, %._crit_edge ], [ %i.ab, %.preheader136 ], [ %i.gf, %.preheader127 ], [ %i.io, %bb.ai ], [ %i.bk, %read_variable_length.exit19 ], [ %.1486, %read_variable_length.exit19.thread83 ], [ %i.t, %bb.e ], [ %.1269, %read_variable_length.exit.thread66 ], [ %i.ab, %read_variable_length.exit ], [ %.9, %.thread91 ], [ %i.bg, %bb.k ]
  %i.mi = ptrtoint ptr %.8 to i64
  %i.mj = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.mj, %i.mi
  %i.mk = trunc i64 %.neg.i to i32
  %i.ml = add nsw i32 %i.mk, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.au, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1.i = phi i32 [ -1, %bb.a ], [ %i.ml, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.mh, %bb.au ], [ 0, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_decompress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.080.i = phi ptr [ %1, %bb.a ], [ %i.bx, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.k = phi ptr [ %i.n, %.preheader34 ], [ %i.e, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.o, %.preheader34 ], [ 0, %.thread ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8     ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i2, %i.m                     ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !112

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.n, %read_long_length_no_check.exit ], [ %i.e, %.thread ] ; 2 uses
  %.086.i = phi i64 [ %i.q, %read_long_length_no_check.exit ], [ %i.i, %.thread ] ; 4 uses
  %i.r = ptrtoint ptr %.080.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.086.i
  br i1 %i.t, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1, i64 %.086.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 %.086.i ; 3 uses
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
  %.val = load i16, ptr %i.v, align 1, !tbaa !27  ; 2 uses
  %i.ac = zext i16 %.val to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.af = phi ptr [ %i.ai, %.preheader ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.aj, %.preheader ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8   ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i4, %i.ah                   ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !112

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5, %bb.e
  %.4 = phi ptr [ %i.ai, %read_long_length_no_check.exit5 ], [ %i.ad, %bb.e ]
  %.092.i = phi i64 [ %i.al, %read_long_length_no_check.exit5 ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.092.i, 4                      ; 9 uses
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
  %min.iters.check = icmp ugt i64 %.092.i, -5
  %i.ar = add i16 %.val, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond67 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond67, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !8
  %wide.load60 = load <16 x i8>, ptr %i.at, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !8
  store <16 x i8> %wide.load60, ptr %i.av, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index63
  %wide.load64 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 %index63
  store <4 x i8> %wide.load64, ptr %i.ay, align 1, !tbaa !8
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next65, %n.vec62
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.am, %n.vec62
  br i1 %cmp.n66, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec62, %vec.epilog.middle.block ] ; 3 uses
  %i.ba = add i64 %.092.i, 3
  %i.bb = sub i64 %i.ba, %.0.i40.ph
  %xtraiter = and i64 %.092.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i40.prol = phi i64 [ %i.bf, %.lr.ph.prol ], [ %.0.i40.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !8
  %i.bf = add nuw i64 %.0.i40.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !115

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i40.unr = phi i64 [ %.0.i40.ph, %.lr.ph.preheader ], [ %i.bf, %.lr.ph.prol ]
  %i.bg = icmp ult i64 %i.bb, 3
  br i1 %i.bg, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i40 = phi i64 [ %i.bw, %.lr.ph ], [ %.0.i40.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !8
  %i.bk = add nuw i64 %.0.i40, 1                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !8
  %i.bo = add nuw i64 %.0.i40, 2                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !8
  %i.bs = add nuw i64 %.0.i40, 3                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !8
  %i.bw = add nuw i64 %.0.i40, 4
  %exitcond.not.3 = icmp eq i64 %.0.i40, %.092.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.c, %i.by
  %i.ca = icmp ult i64 %i.bz, 5
  br i1 %i.ca, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.cb = ptrtoint ptr %i.v to i64
  %i.cc = ptrtoint ptr %0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.b, %bb.f, %._crit_edge, %bb.d, %bb.h
  %.5.i = phi i32 [ -1, %bb.d ], [ %i.ce, %bb.h ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.5.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 20 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 9 uses
  %i.f = zext nneg i32 %3 to i64                  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !8
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i32 %3, 64
  br i1 %i.o, label %.preheader135, label %.preheader144

.preheader144:                                    ; preds = %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %i.r = add nsw i64 %i.f, -32
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.t = add nsw i64 %i.f, -64                    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.v = add i64 %i.a, 8
  %invariant.op = add i64 %i.a, 16
  %invariant.op614 = add i64 %i.a, 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader144
  %.0 = phi ptr [ %0, %.preheader144 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0358.i.idx = phi i64 [ 0, %.preheader144 ], [ %.0358.i.idx.be, %.backedge.backedge ] ; 5 uses
  %.0358.i.ptr.ptr = getelementptr inbounds i8, ptr %1, i64 %.0358.i.idx ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.x = load i8, ptr %.0, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i32                      ; 4 uses
  %i.z = lshr i32 %i.y, 4                         ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ab = icmp eq i32 %i.z, 15
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.w, %i.q
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.h:                                             ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !8    ; 2 uses
  %i.ad = zext i8 %i.ac to i64
  %.not23.i = icmp eq i8 %i.ac, -1
  br i1 %.not23.i, label %.preheader142, label %read_variable_length.exit.thread62, !prof !20

.preheader142:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.ae, %bb.i ], [ %4, %bb.h ]  ; 2 uses
  %.0.i11 = phi i64 [ %i.ai, %bb.i ], [ 255, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.af = icmp ugt ptr %i.ae, %i.q
  br i1 %i.af, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %.preheader142
  %i.ag = load i8, ptr %.10, align 1, !tbaa !8    ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %.0.i11, %i.ah                  ; 3 uses
  %i.aj = icmp eq i8 %i.ag, -1
  br i1 %i.aj, label %.preheader142, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.i
  %i.ak = icmp eq i64 %i.ai, -1
  br i1 %i.ak, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread62

read_variable_length.exit.thread62:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i66 = phi i64 [ %i.ai, %read_variable_length.exit ], [ %i.ad, %bb.h ]
  %.1165 = phi ptr [ %i.ae, %read_variable_length.exit ], [ %4, %bb.h ] ; 5 uses
  %i.al = add i64 %.019.i66, 15                   ; 5 uses
  %i.am = ptrtoint ptr %.0358.i.ptr.ptr to i64
  %i.an = xor i64 %i.am, -1
  %i.ao = icmp ugt i64 %i.al, %i.an
  %i.ap = ptrtoint ptr %.1165 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.al, %i.aq
  %or.cond = or i1 %i.ao, %i.ar
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !84

bb.j:                                             ; preds = %read_variable_length.exit.thread62
  %.0358.i.add = add nsw i64 %i.al, %.0358.i.idx  ; 3 uses
  %.ptr115 = getelementptr inbounds i8, ptr %1, i64 %.0358.i.add
  %i.as = icmp sgt i64 %.0358.i.add, %i.r
  %i.at = getelementptr inbounds nuw i8, ptr %.1165, i64 %i.al ; 2 uses
  %i.au = icmp ugt ptr %i.at, %i.s
  %or.cond449.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader141

.preheader141:                                    ; preds = %bb.j, %.preheader141
  %.011.i = phi ptr [ %i.ay, %.preheader141 ], [ %.1165, %bb.j ] ; 3 uses
  %.0.i25 = phi ptr [ %i.ax, %.preheader141 ], [ %.0358.i.ptr.ptr, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i25, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i25, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i25, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.az = icmp ult ptr %i.ax, %.ptr115
  br i1 %i.az, label %.preheader141, label %LZ4_wildCopy32.exit.thread71, !llvm.loop !85

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.w, %i.p
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i.ptr.ptr, ptr noundef nonnull align 1 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %.0358.i.add112 = add nsw i64 %.0358.i.idx, %i.aa
  br label %LZ4_wildCopy32.exit.thread71

LZ4_wildCopy32.exit.thread71:                     ; preds = %.preheader141, %bb.l
  %.1 = phi ptr [ %i.ba, %bb.l ], [ %i.at, %.preheader141 ] ; 3 uses
  %.2.i.idx = phi i64 [ %.0358.i.add112, %bb.l ], [ %.0358.i.add, %.preheader141 ] ; 14 uses
  %.2.i.ptr.ptr = getelementptr inbounds i8, ptr %1, i64 %.2.i.idx ; 18 uses
  %.val32 = load i16, ptr %.1, align 1, !tbaa !27 ; 5 uses
  %i.bb = zext i16 %.val32 to i64                 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %.2.i.add = sub nsw i64 %.2.i.idx, %i.bb        ; 4 uses
  %.ptr.ptr = getelementptr inbounds i8, ptr %1, i64 %.2.i.add ; 14 uses
  %i.bd = and i32 %i.y, 15                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 15
  br i1 %i.be, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread71
  %i.bf = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bg = icmp ugt ptr %i.bf, %i.u
  br i1 %i.bg, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bh = load i8, ptr %i.bc, align 1, !tbaa !8   ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %.not23.i12 = icmp eq i8 %i.bh, -1
  br i1 %.not23.i12, label %.preheader139, label %read_variable_length.exit15.thread79, !prof !20

.preheader139:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bj, %bb.o ], [ %i.bf, %bb.n ] ; 2 uses
  %.0.i14 = phi i64 [ %i.bn, %bb.o ], [ 255, %bb.n ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bk = icmp ugt ptr %i.bj, %i.u
  br i1 %i.bk, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !20

bb.o:                                             ; preds = %.preheader139
  %i.bl = load i8, ptr %.12, align 1, !tbaa !8    ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = add i64 %.0.i14, %i.bm                  ; 3 uses
  %i.bo = icmp eq i8 %i.bl, -1
  br i1 %i.bo, label %.preheader139, label %read_variable_length.exit15, !llvm.loop !83

read_variable_length.exit15:                      ; preds = %bb.o
  %i.bp = icmp eq i64 %i.bn, -1
  br i1 %i.bp, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit15.thread79

read_variable_length.exit15.thread79:             ; preds = %bb.n, %read_variable_length.exit15
  %.019.i1383 = phi i64 [ %i.bn, %read_variable_length.exit15 ], [ %i.bi, %bb.n ]
  %.1382 = phi ptr [ %i.bj, %read_variable_length.exit15 ], [ %i.bf, %bb.n ] ; 3 uses
  %i.bq = add i64 %.019.i1383, 19                 ; 4 uses
  %i.br = ptrtoint ptr %.2.i.ptr.ptr to i64
  %i.bs = xor i64 %i.br, -1
  %i.bt = icmp ugt i64 %i.bq, %i.bs
  br i1 %i.bt, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !20

bb.p:                                             ; preds = %read_variable_length.exit15.thread79
  %i.bu = add nsw i64 %.2.i.idx, %i.bq
  %.not435.i = icmp slt i64 %i.bu, %i.t
  br i1 %.not435.i, label %.thread87, label %.loopexit147

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread71
  %narrow.i = add nuw nsw i32 %i.bd, 4
  %i.bv = zext nneg i32 %narrow.i to i64          ; 3 uses
  %.2.i.add113 = add nsw i64 %.2.i.idx, %i.bv     ; 2 uses
  %.not434.i = icmp slt i64 %.2.i.add113, %i.t
  br i1 %.not434.i, label %bb.r, label %.loopexit147

bb.r:                                             ; preds = %bb.q
  %.old4.i = icmp ugt i16 %.val32, 7
  br i1 %.old4.i, label %bb.s, label %.thread87

bb.s:                                             ; preds = %bb.r
  %i.bw = load i64, ptr %.ptr.ptr, align 1
  store i64 %i.bw, ptr %.2.i.ptr.ptr, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  %i.bz = load i64, ptr %i.by, align 1
  store i64 %i.bz, ptr %i.bx, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 16
  %i.cc = load i16, ptr %i.cb, align 1
  store i16 %i.cc, ptr %i.ca, align 1
  br label %.backedge.backedge

.thread87:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.bc, %bb.r ], [ %.1382, %bb.p ] ; 7 uses
  %.2374.i = phi i64 [ %i.bv, %bb.r ], [ %i.bq, %bb.p ] ; 4 uses
  %i.cd = icmp slt i64 %.2.i.add, -65536
  br i1 %i.cd, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !86

bb.t:                                             ; preds = %.thread87
  %.2.i.add114 = add nsw i64 %.2374.i, %.2.i.idx  ; 7 uses
  %.ptr118 = getelementptr inbounds i8, ptr %1, i64 %.2.i.add114 ; 3 uses
  %i.ce = icmp ult i16 %.val32, 16
  br i1 %i.ce, label %bb.u, label %.preheader137, !prof !20

bb.u:                                             ; preds = %bb.t
  switch i16 %.val32, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cf = load i8, ptr %.ptr.ptr, align 1, !tbaa !8
  %i.cg = zext i8 %i.cf to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cg, 16843009
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %.ptr.ptr, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %.ptr.ptr, align 1
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.ch = icmp samesign ult i16 %.val32, 8
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2.i.ptr.ptr, align 1, !tbaa !16
  %i.ci = load i8, ptr %.ptr.ptr, align 1, !tbaa !8
  store i8 %i.ci, ptr %.2.i.ptr.ptr, align 1, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 2
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 3
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bb
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !35
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 4
  %i.cx = load i32, ptr %i.cv, align 1
  store i32 %i.cx, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bb
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !35
  %i.da = sext i32 %i.cz to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cv, i64 %i.db
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dd = load i64, ptr %.ptr.ptr, align 1
  store i64 %i.dd, ptr %.2.i.ptr.ptr, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.023.i = phi ptr [ %i.dc, %bb.z ], [ %i.de, %bb.aa ] ; 5 uses
  %.0.i30 = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 8 ; 4 uses
  %i.df = add i64 %.2374.i, %.2.i.idx
  %i.dg = add i64 %i.df, %i.a
  %.reass615 = add i64 %.2.i.idx, %invariant.op614
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %.reass615)
  %i.di = add i64 %.2.i.idx, %i.a
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = add i64 %i.dj, -9                       ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ab
  %.023.i407 = ptrtoaddr ptr %.023.i to i64
  %i.dn = add i64 %i.v, %.2.i.idx
  %i.do = sub i64 %.023.i407, %i.dn
  %diff.check = icmp ugt i64 %i.do, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dp = shl i64 %n.vec, 3                       ; 2 uses
  %i.dq = getelementptr i8, ptr %.023.i, i64 %i.dp
  %i.dr = getelementptr i8, ptr %.0.i30, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.i, i64 %i.ds ; 2 uses
  %next.gep408 = getelementptr i8, ptr %.0.i30, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load409 = load <2 x i64>, ptr %i.dt, align 1
  %i.du = getelementptr i8, ptr %next.gep408, i64 16
  store <2 x i64> %wide.load, ptr %next.gep408, align 1
  store <2 x i64> %wide.load409, ptr %i.du, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ab, %middle.block
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.ab ], [ %i.dq, %middle.block ]
  %.0.i.i.ph = phi ptr [ %.0.i30, %vector.memcheck ], [ %.0.i30, %bb.ab ], [ %i.dr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.dy, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.dx, %scalar.ph ], [ %.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dw = load i64, ptr %.09.i.i, align 1
  store i64 %i.dw, ptr %.0.i.i, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.dz = icmp ult ptr %i.dx, %.ptr118
  br i1 %i.dz, label %scalar.ph, label %.backedge.backedge, !llvm.loop !119

bb.ac:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i.ptr.ptr, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.ea = icmp sgt i64 %.2374.i, 8
  br i1 %i.ea, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ac
  %.0.i29191 = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr, i64 8 ; 4 uses
  %i.eb = add i64 %.2374.i, %.2.i.idx
  %i.ec = add i64 %i.eb, %i.a
  %.reass = add i64 %.2.i.idx, %invariant.op
  %i.ed = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %.reass)
  %i.ee = add i64 %.2.i.idx, %i.a
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = add i64 %i.ef, -9                       ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check412 = icmp ult i64 %i.eg, 24
  br i1 %min.iters.check412, label %.lr.ph.preheader542, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph.preheader
  %n.vec415 = and i64 %i.ei, 4611686018427387900  ; 3 uses
  %i.ej = shl i64 %n.vec415, 3                    ; 2 uses
  %i.ek = getelementptr i8, ptr %.0.i29191, i64 %i.ej
  %i.el = getelementptr i8, ptr %.2.i.ptr.ptr, i64 %i.ej
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.em = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph413
  %index417 = phi i64 [ 0, %vector.ph413 ], [ %index.next421, %vector.body416 ] ; 2 uses
  %i.en = shl i64 %index417, 3                    ; 2 uses
  %next.gep418 = getelementptr i8, ptr %.0.i29191, i64 %i.en
  %i.eo = getelementptr i8, ptr %.0.i29191, i64 %i.en
  %next.gep419 = getelementptr i8, ptr %i.eo, i64 16
  store <4 x i32> %i.em, ptr %next.gep418, align 1
  store <4 x i32> %i.em, ptr %next.gep419, align 1
  %index.next421 = add nuw i64 %index417, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next421, %n.vec415
  br i1 %i.ep, label %middle.block422, label %vector.body416, !llvm.loop !120

middle.block422:                                  ; preds = %vector.body416
  %cmp.n423 = icmp eq i64 %i.ei, %n.vec415
  br i1 %cmp.n423, label %.backedge.backedge, label %.lr.ph.preheader542

.backedge.backedge:                               ; preds = %.preheader137, %.lr.ph, %scalar.ph, %middle.block422, %middle.block, %bb.ac, %bb.s
  %.0.be = phi ptr [ %i.bc, %bb.s ], [ %.8, %middle.block ], [ %.8, %bb.ac ], [ %.8, %middle.block422 ], [ %.8, %scalar.ph ], [ %.8, %.lr.ph ], [ %.8, %.preheader137 ]
  %.0358.i.idx.be = phi i64 [ %.2.i.add113, %bb.s ], [ %.2.i.add114, %middle.block ], [ %.2.i.add114, %bb.ac ], [ %.2.i.add114, %middle.block422 ], [ %.2.i.add114, %scalar.ph ], [ %.2.i.add114, %.lr.ph ], [ %.2.i.add114, %.preheader137 ]
  br label %.backedge

.lr.ph.preheader542:                              ; preds = %.lr.ph.preheader, %middle.block422
  %.0.i29193.ph = phi ptr [ %.0.i29191, %.lr.ph.preheader ], [ %i.ek, %middle.block422 ]
  %.pn.i192.ph = phi ptr [ %.2.i.ptr.ptr, %.lr.ph.preheader ], [ %i.el, %middle.block422 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader542, %.lr.ph
  %.0.i29193 = phi ptr [ %.0.i29, %.lr.ph ], [ %.0.i29193.ph, %.lr.ph.preheader542 ] ; 3 uses
  %.pn.i192 = phi ptr [ %.0.i29193, %.lr.ph ], [ %.pn.i192.ph, %.lr.ph.preheader542 ]
  store i32 %.sroa.9.0.i, ptr %.0.i29193, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i192, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.0.i29193, i64 8 ; 2 uses
  %i.eq = icmp ult ptr %.0.i29, %.ptr118
  br i1 %i.eq, label %.lr.ph, label %.backedge.backedge, !llvm.loop !121

.preheader137:                                    ; preds = %bb.t, %.preheader137
  %.011.i26 = phi ptr [ %i.eu, %.preheader137 ], [ %.ptr.ptr, %bb.t ] ; 3 uses
  %.0.i27 = phi ptr [ %i.et, %.preheader137 ], [ %.2.i.ptr.ptr, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i27, ptr noundef nonnull align 1 dereferenceable(16) %.011.i26, i64 16, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i27, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.011.i26, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.er, ptr noundef nonnull align 1 dereferenceable(16) %i.es, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i27, i64 32 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.011.i26, i64 32
  %i.ev = icmp ult ptr %i.et, %.ptr118
  br i1 %i.ev, label %.preheader137, label %.backedge.backedge, !llvm.loop !85

bb.ad:                                            ; preds = %.lr.ph198, %bb.af
  %.in = phi i32 [ %i.mr, %.lr.ph198 ], [ %i.ft, %bb.af ]
  %i.ew = phi i32 [ %i.mq, %.lr.ph198 ], [ %i.fs, %bb.af ] ; 2 uses
  %i.ex = phi ptr [ %i.mo, %.lr.ph198 ], [ %i.fq, %bb.af ] ; 4 uses
  %.6.i.ptr197 = phi ptr [ %.6.i.ptr194, %.lr.ph198 ], [ %.6.i.ptr, %bb.af ]
  %.6.i.idx196 = phi i64 [ %.6.i.idx.ph, %.lr.ph198 ], [ %.add123, %bb.af ] ; 3 uses
  %i.ey = zext nneg i32 %.in to i64               ; 3 uses
  %i.ez = icmp ult ptr %i.ex, %i.h
  %i.fa = icmp sle i64 %.6.i.idx196, %i.ms
  %i.fb = and i1 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ae, label %LZ4_wildCopy32.exit, !prof !29

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i.ptr197, ptr noundef nonnull align 1 dereferenceable(16) %i.ex, i64 16, i1 false)
  %.6.i.add = add nsw i64 %.6.i.idx196, %i.ey     ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey ; 3 uses
  %i.fd = and i32 %i.ew, 15                       ; 2 uses
  %i.fe = zext nneg i32 %i.fd to i64              ; 2 uses
  %.val = load i16, ptr %i.fc, align 1, !tbaa !27 ; 2 uses
  %i.ff = zext i16 %.val to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 2 ; 3 uses
  %.add = sub nsw i64 %.6.i.add, %i.ff            ; 2 uses
  %i.fh = icmp ne i32 %i.fd, 15
  %i.fi = icmp ugt i16 %.val, 7
  %or.cond3.i = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond3.i, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %.ptr125 = getelementptr inbounds i8, ptr %1, i64 %.add ; 3 uses
  %.ptr124 = getelementptr inbounds i8, ptr %1, i64 %.6.i.add ; 3 uses
  %i.fj = load i64, ptr %.ptr125, align 1
  store i64 %i.fj, ptr %.ptr124, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.ptr124, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.ptr125, i64 8
  %i.fm = load i64, ptr %i.fl, align 1
  store i64 %i.fm, ptr %i.fk, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.ptr124, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %.ptr125, i64 16
  %i.fp = load i16, ptr %i.fo, align 1
  store i16 %i.fp, ptr %i.fn, align 1
  %.add122 = add nuw nsw i64 %i.fe, 4
  %.add123 = add nsw i64 %.add122, %.6.i.add      ; 3 uses
  %.6.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.add123 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 3 ; 2 uses
  %i.fr = load i8, ptr %i.fg, align 1, !tbaa !8
  %i.fs = zext i8 %i.fr to i32                    ; 3 uses
  %i.ft = lshr i32 %i.fs, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.ft, 15
  br i1 %cond.i, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.af, %.preheader135
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader135 ], [ %i.fg, %bb.af ]
  %.6.i.idx.lcssa = phi i64 [ %.6.i.idx.ph, %.preheader135 ], [ %.add123, %bb.af ]
  %.6.i.ptr.lcssa = phi ptr [ %.6.i.ptr194, %.preheader135 ], [ %.6.i.ptr, %bb.af ]
  %.lcssa158 = phi ptr [ %i.mo, %.preheader135 ], [ %i.fq, %bb.af ] ; 3 uses
  %.lcssa155 = phi i32 [ %i.mq, %.preheader135 ], [ %i.fs, %bb.af ]
  %i.fu = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not22.i16 = icmp ult ptr %.lcssa158, %i.fu
  br i1 %.not22.i16, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.ag:                                            ; preds = %._crit_edge
  %5 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.fv = load i8, ptr %.lcssa158, align 1, !tbaa !8 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %.not23.i18 = icmp eq i8 %i.fv, -1
  br i1 %.not23.i18, label %.preheader134, label %read_variable_length.exit20.thread94, !prof !20

.preheader134:                                    ; preds = %bb.ag, %bb.ah
  %.14 = phi ptr [ %i.fx, %bb.ah ], [ %5, %bb.ag ] ; 2 uses
  %.0.i19 = phi i64 [ %i.gb, %bb.ah ], [ 255, %bb.ag ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.fy = icmp ugt ptr %i.fx, %i.fu
  br i1 %i.fy, label %LZ4_wildCopy32.exit.thread, label %bb.ah, !prof !20

bb.ah:                                            ; preds = %.preheader134
  %i.fz = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.ga = zext i8 %i.fz to i64
  %i.gb = add i64 %.0.i19, %i.ga                  ; 3 uses
  %i.gc = icmp eq i8 %i.fz, -1
  br i1 %i.gc, label %.preheader134, label %read_variable_length.exit20, !llvm.loop !83

read_variable_length.exit20:                      ; preds = %bb.ah
  %i.gd = icmp eq i64 %i.gb, -1
  br i1 %i.gd, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit20.thread94

read_variable_length.exit20.thread94:             ; preds = %bb.ag, %read_variable_length.exit20
  %.019.i1798 = phi i64 [ %i.gb, %read_variable_length.exit20 ], [ %i.fw, %bb.ag ]
  %.1597 = phi ptr [ %i.fx, %read_variable_length.exit20 ], [ %5, %bb.ag ] ; 3 uses
  %i.ge = add i64 %.019.i1798, 15                 ; 3 uses
  %i.gf = ptrtoint ptr %.6.i.ptr.lcssa to i64
  %i.gg = xor i64 %i.gf, -1
  %i.gh = icmp ugt i64 %i.ge, %i.gg
  %i.gi = ptrtoint ptr %.1597 to i64
  %i.gj = xor i64 %i.gi, -1
  %i.gk = icmp ugt i64 %i.ge, %i.gj
  %or.cond111 = or i1 %i.gh, %i.gk
  br i1 %or.cond111, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %bb.ad, %read_variable_length.exit20.thread94
  %.4 = phi ptr [ %.1597, %read_variable_length.exit20.thread94 ], [ %i.ex, %bb.ad ], [ %i.w, %bb.k ], [ %.1165, %bb.j ] ; 9 uses
  %.5377.i = phi i64 [ %i.ge, %read_variable_length.exit20.thread94 ], [ %i.ey, %bb.ad ], [ %i.aa, %bb.k ], [ %i.al, %bb.j ] ; 5 uses
  %.0371.i = phi i32 [ %.lcssa155, %read_variable_length.exit20.thread94 ], [ %i.ew, %bb.ad ], [ %i.y, %bb.k ], [ %i.y, %bb.j ]
  %.7.i.idx = phi i64 [ %.6.i.idx.lcssa, %read_variable_length.exit20.thread94 ], [ %.6.i.idx196, %bb.ad ], [ %.0358.i.idx, %bb.k ], [ %.0358.i.idx, %bb.j ] ; 6 uses
  %.4427 = ptrtoaddr ptr %.4 to i64
  %.7.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.7.i.idx ; 5 uses
  %.7.i.add = add nsw i64 %.7.i.idx, %.5377.i     ; 6 uses
  %.ptr126 = getelementptr inbounds i8, ptr %1, i64 %.7.i.add
  %i.gl = add nsw i64 %i.f, -12
  %i.gm = icmp sgt i64 %.7.i.add, %i.gl
  br i1 %i.gm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gp = icmp ugt ptr %i.gn, %i.go
  br i1 %i.gp, label %bb.aj, label %.preheader133.preheader

.preheader133.preheader:                          ; preds = %bb.ai
  %i.gq = add i64 %.7.i.idx, %.5377.i
  %i.gr = add i64 %i.gq, %i.a
  %i.gs = add i64 %.7.i.idx, %i.a
  %i.gt = add i64 %i.gs, 8
  %i.gu = tail call i64 @llvm.umax.i64(i64 %i.gr, i64 %i.gt)
  %i.gv = add i64 %.7.i.idx, %i.a
  %i.gw = xor i64 %i.gv, -1
  %i.gx = add i64 %i.gu, %i.gw                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check430 = icmp ult i64 %i.gx, 104
  br i1 %min.iters.check430, label %.preheader133.preheader515, label %vector.memcheck426

vector.memcheck426:                               ; preds = %.preheader133.preheader
  %i.ha = add i64 %.7.i.idx, %i.a
  %i.hb = sub i64 %.4427, %i.ha
  %diff.check428 = icmp ugt i64 %i.hb, -32
  br i1 %diff.check428, label %.preheader133.preheader515, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck426
  %n.vec433 = and i64 %i.gz, 4611686018427387900  ; 3 uses
  %i.hc = shl i64 %n.vec433, 3                    ; 2 uses
  %i.hd = getelementptr i8, ptr %.4, i64 %i.hc
  %i.he = getelementptr i8, ptr %.7.i.ptr, i64 %i.hc
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next440, %vector.body434 ] ; 2 uses
  %i.hf = shl i64 %index435, 3                    ; 2 uses
  %next.gep436 = getelementptr i8, ptr %.4, i64 %i.hf ; 2 uses
  %next.gep437 = getelementptr i8, ptr %.7.i.ptr, i64 %i.hf ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep436, i64 16
  %wide.load438 = load <2 x i64>, ptr %next.gep436, align 1
  %wide.load439 = load <2 x i64>, ptr %i.hg, align 1
  %i.hh = getelementptr i8, ptr %next.gep437, i64 16
  store <2 x i64> %wide.load438, ptr %next.gep437, align 1
  store <2 x i64> %wide.load439, ptr %i.hh, align 1
  %index.next440 = add nuw i64 %index435, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next440, %n.vec433
  br i1 %i.hi, label %middle.block441, label %vector.body434, !llvm.loop !122

middle.block441:                                  ; preds = %vector.body434
  %cmp.n442 = icmp eq i64 %i.gz, %n.vec433
  br i1 %cmp.n442, label %LZ4_wildCopy8.exit10, label %.preheader133.preheader515

.preheader133.preheader515:                       ; preds = %vector.memcheck426, %.preheader133.preheader, %middle.block441
  %.09.i8.ph = phi ptr [ %.4, %vector.memcheck426 ], [ %.4, %.preheader133.preheader ], [ %i.hd, %middle.block441 ]
  %.0.i9.ph = phi ptr [ %.7.i.ptr, %vector.memcheck426 ], [ %.7.i.ptr, %.preheader133.preheader ], [ %i.he, %middle.block441 ]
  br label %.preheader133

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i
  %.not440.i = icmp ne ptr %i.hj, %i.e
  %i.hk = icmp sgt i64 %.7.i.add, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.hk
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i.ptr, ptr nonnull align 1 %.4, i64 %.5377.i, i1 false)
  %i.hl = trunc i64 %.7.i.add to i32
  br label %LZ4_decompress_generic.exit

.preheader133:                                    ; preds = %.preheader133.preheader515, %.preheader133
  %.09.i8 = phi ptr [ %i.ho, %.preheader133 ], [ %.09.i8.ph, %.preheader133.preheader515 ] ; 2 uses
  %.0.i9 = phi ptr [ %i.hn, %.preheader133 ], [ %.0.i9.ph, %.preheader133.preheader515 ] ; 2 uses
  %i.hm = load i64, ptr %.09.i8, align 1
  store i64 %i.hm, ptr %.0.i9, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8
  %i.hp = icmp ult ptr %i.hn, %.ptr126
  br i1 %i.hp, label %.preheader133, label %LZ4_wildCopy8.exit10, !llvm.loop !123

LZ4_wildCopy8.exit10:                             ; preds = %.preheader133, %middle.block441
  %.val31 = load i16, ptr %i.gn, align 1, !tbaa !27
  %i.hq = zext i16 %.val31 to i64                 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %.add121 = sub nsw i64 %.7.i.add, %i.hq
  %i.hs = and i32 %.0371.i, 15
  %i.ht = zext nneg i32 %i.hs to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %LZ4_wildCopy8.exit10
  %.5 = phi ptr [ %i.hr, %LZ4_wildCopy8.exit10 ], [ %i.fg, %bb.ae ] ; 3 uses
  %.8380.i = phi i64 [ %i.ht, %LZ4_wildCopy8.exit10 ], [ %i.fe, %bb.ae ] ; 2 uses
  %.0369.i = phi i64 [ %i.hq, %LZ4_wildCopy8.exit10 ], [ %i.ff, %bb.ae ]
  %.0362.i.idx = phi i64 [ %.add121, %LZ4_wildCopy8.exit10 ], [ %.add, %bb.ae ]
  %.9.i.idx = phi i64 [ %.7.i.add, %LZ4_wildCopy8.exit10 ], [ %.6.i.add, %bb.ae ] ; 2 uses
  %.9.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.9.i.idx
  %i.hu = icmp eq i64 %.8380.i, 15
  br i1 %i.hu, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit
  %i.hv = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.hx = icmp ugt ptr %i.hw, %i.hv
  br i1 %i.hx, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %bb.al
  %i.hy = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.hz = zext i8 %i.hy to i64
  %.not23.i21 = icmp eq i8 %i.hy, -1
  br i1 %.not23.i21, label %.preheader132, label %read_variable_length.exit24, !prof !20

.preheader132:                                    ; preds = %bb.am, %bb.an
  %.16 = phi ptr [ %i.ia, %bb.an ], [ %i.hw, %bb.am ] ; 2 uses
  %.0.i23 = phi i64 [ %i.ie, %bb.an ], [ 255, %bb.am ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.ib = icmp ugt ptr %i.ia, %i.hv
  br i1 %i.ib, label %LZ4_wildCopy32.exit.thread, label %bb.an, !prof !20

bb.an:                                            ; preds = %.preheader132
  %i.ic = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.id = zext i8 %i.ic to i64
  %i.ie = add i64 %.0.i23, %i.id                  ; 2 uses
  %i.if = icmp eq i8 %i.ic, -1
  br i1 %i.if, label %.preheader132, label %read_variable_length.exit24, !llvm.loop !83

read_variable_length.exit24:                      ; preds = %bb.an, %bb.am
  %.17 = phi ptr [ %i.hw, %bb.am ], [ %i.ia, %bb.an ] ; 2 uses
  %.019.i22 = phi i64 [ %i.hz, %bb.am ], [ %i.ie, %bb.an ] ; 2 uses
  %i.ig = icmp ne i64 %.019.i22, -1               ; 2 uses
  %i.ih = add i64 %.019.i22, 15                   ; 2 uses
  %i.ii = ptrtoint ptr %.9.i.ptr to i64
  %i.ij = xor i64 %i.ii, -1
  %i.ik = icmp ule i64 %i.ih, %i.ij
  %.not120 = select i1 %i.ig, i1 %i.ik, i1 false
  %.9381.i = select i1 %i.ig, i64 %i.ih, i64 15
  br i1 %.not120, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit24, %.loopexit
  %.6 = phi ptr [ %.17, %read_variable_length.exit24 ], [ %.5, %.loopexit ]
  %.10382.i = phi i64 [ %.9381.i, %read_variable_length.exit24 ], [ %.8380.i, %.loopexit ]
  %i.il = add i64 %.10382.i, 4
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.6, %bb.ao ], [ %.1382, %bb.p ], [ %i.bc, %bb.q ] ; 9 uses
  %.11383.i = phi i64 [ %i.il, %bb.ao ], [ %i.bq, %bb.p ], [ %i.bv, %bb.q ] ; 4 uses
  %.1370.i = phi i64 [ %.0369.i, %bb.ao ], [ %i.bb, %bb.q ], [ %i.bb, %bb.p ] ; 3 uses
  %.1363.i.idx = phi i64 [ %.0362.i.idx, %bb.ao ], [ %.2.i.add, %bb.q ], [ %.2.i.add, %bb.p ] ; 2 uses
  %.10.i.idx = phi i64 [ %.9.i.idx, %bb.ao ], [ %.2.i.idx, %bb.q ], [ %.2.i.idx, %bb.p ] ; 13 uses
  %.10.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.10.i.idx ; 9 uses
  %.1363.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.1363.i.idx ; 7 uses
  %i.im = icmp slt i64 %.1363.i.idx, -65536
  br i1 %i.im, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !86

bb.ap:                                            ; preds = %.loopexit147
  %.10.i.add = add nsw i64 %.10.i.idx, %.11383.i  ; 10 uses
  %.ptr130 = getelementptr inbounds i8, ptr %1, i64 %.10.i.add ; 3 uses
  %i.in = icmp ult i64 %.1370.i, 8
  br i1 %i.in, label %bb.aq, label %bb.ar, !prof !20

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.10.i.ptr, align 1, !tbaa !16
  %i.io = load i8, ptr %.1363.i.ptr, align 1, !tbaa !8
  store i8 %i.io, ptr %.10.i.ptr, align 1, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %.1363.i.ptr, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %.10.i.ptr, i64 1
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %.1363.i.ptr, i64 2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !8
  %i.iu = getelementptr inbounds nuw i8, ptr %.10.i.ptr, i64 2
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %.1363.i.ptr, i64 3
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %.10.i.ptr, i64 3
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !8
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !35
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_withPrefix64k:bb.a

middle.block478:                                  ; preds = %vector.body471
  %cmp.n479 = icmp eq i64 %i.kd, %n.vec470
  br i1 %cmp.n479, label %LZ4_wildCopy8.exit, label %.preheader.preheader511

.preheader.preheader511:                          ; preds = %vector.memcheck464, %.preheader.preheader, %middle.block478
  %.09.i.ph = phi ptr [ %.3365.i, %vector.memcheck464 ], [ %.3365.i, %.preheader.preheader ], [ %i.ki, %middle.block478 ]
  %.0.i4.ph = phi ptr [ %i.jl, %vector.memcheck464 ], [ %i.jl, %.preheader.preheader ], [ %i.kj, %middle.block478 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader511, %.preheader
  %.09.i = phi ptr [ %i.kq, %.preheader ], [ %.09.i.ph, %.preheader.preheader511 ] ; 2 uses
  %.0.i4 = phi ptr [ %i.kp, %.preheader ], [ %.0.i4.ph, %.preheader.preheader511 ] ; 2 uses
  %i.ko = load i64, ptr %.09.i, align 1
  store i64 %i.ko, ptr %.0.i4, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i4, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.kr = icmp ult ptr %i.kp, %i.jo
  br i1 %i.kr, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !125

LZ4_wildCopy8.exit:                               ; preds = %.preheader, %middle.block478
  %i.ks = sub i64 %i.f, %.10.i.idx
  %i.kt = getelementptr i8, ptr %.3365.i, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 -15
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.4366.i = phi ptr [ %i.ku, %LZ4_wildCopy8.exit ], [ %.3365.i, %bb.au ] ; 6 uses
  %.15.i = phi ptr [ %i.jo, %LZ4_wildCopy8.exit ], [ %i.jl, %bb.au ] ; 7 uses
  %i.kv = icmp ult ptr %.15.i, %.ptr130
  br i1 %i.kv, label %iter.check, label %.preheader135

iter.check:                                       ; preds = %bb.av
  %i.kw = add i64 %.10.i.idx, %.11383.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.js, i64 %i.jr)
  %i.kx = sub i64 %i.kw, %smax                    ; 7 uses
  %min.iters.check485 = icmp ult i64 %i.kx, 4
  br i1 %min.iters.check485, label %.lr.ph206.preheader, label %vector.memcheck482

vector.memcheck482:                               ; preds = %iter.check
  %i.ky = add i64 %.10.i.idx, %i.a
  %i.kz = sub i64 %i.ky, %.3365.i446
  %i.la = add i64 %i.kz, 7
  %diff.check483 = icmp ult i64 %i.la, 31
  br i1 %diff.check483, label %.lr.ph206.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck482
  %min.iters.check486 = icmp ult i64 %i.kx, 32
  br i1 %min.iters.check486, label %vec.epilog.ph, label %vector.ph487

vector.ph487:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf488 = and i64 %i.kx, 28
  %n.vec489 = and i64 %i.kx, -32                  ; 5 uses
  %i.lb = getelementptr i8, ptr %.15.i, i64 %n.vec489
  %i.lc = getelementptr i8, ptr %.4366.i, i64 %n.vec489
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph487
  %index491 = phi i64 [ 0, %vector.ph487 ], [ %index.next496, %vector.body490 ] ; 3 uses
  %next.gep492 = getelementptr i8, ptr %.15.i, i64 %index491 ; 2 uses
  %next.gep493 = getelementptr i8, ptr %.4366.i, i64 %index491 ; 2 uses
  %i.ld = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load494 = load <16 x i8>, ptr %next.gep493, align 1, !tbaa !8
  %wide.load495 = load <16 x i8>, ptr %i.ld, align 1, !tbaa !8
  %i.le = getelementptr i8, ptr %next.gep492, i64 16
  store <16 x i8> %wide.load494, ptr %next.gep492, align 1, !tbaa !8
  store <16 x i8> %wide.load495, ptr %i.le, align 1, !tbaa !8
  %index.next496 = add nuw i64 %index491, 32      ; 2 uses
  %i.lf = icmp eq i64 %index.next496, %n.vec489
  br i1 %i.lf, label %middle.block497, label %vector.body490, !llvm.loop !126

middle.block497:                                  ; preds = %vector.body490
  %cmp.n498 = icmp eq i64 %i.kx, %n.vec489
  br i1 %cmp.n498, label %.preheader135, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block497
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf488, 0
  br i1 %min.epilog.iters.check, label %.lr.ph206.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec489, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec502 = and i64 %i.kx, -4                   ; 4 uses
  %i.lg = getelementptr i8, ptr %.15.i, i64 %n.vec502
  %i.lh = getelementptr i8, ptr %.4366.i, i64 %n.vec502
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index503 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next507, %vec.epilog.vector.body ] ; 3 uses
  %next.gep504 = getelementptr i8, ptr %.15.i, i64 %index503
  %next.gep505 = getelementptr i8, ptr %.4366.i, i64 %index503
  %wide.load506 = load <4 x i8>, ptr %next.gep505, align 1, !tbaa !8
  store <4 x i8> %wide.load506, ptr %next.gep504, align 1, !tbaa !8
  %index.next507 = add nuw i64 %index503, 4       ; 2 uses
  %i.li = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.li, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n508 = icmp eq i64 %i.kx, %n.vec502
  br i1 %cmp.n508, label %.preheader135, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %vector.memcheck482, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.16.i204.ph = phi ptr [ %.15.i, %iter.check ], [ %.15.i, %vector.memcheck482 ], [ %i.lb, %vec.epilog.iter.check ], [ %i.lg, %vec.epilog.middle.block ]
  %.5367.i203.ph = phi ptr [ %.4366.i, %iter.check ], [ %.4366.i, %vector.memcheck482 ], [ %i.lc, %vec.epilog.iter.check ], [ %i.lh, %vec.epilog.middle.block ]
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %.16.i204 = phi ptr [ %i.ll, %.lr.ph206 ], [ %.16.i204.ph, %.lr.ph206.preheader ] ; 2 uses
  %.5367.i203 = phi ptr [ %i.lj, %.lr.ph206 ], [ %.5367.i203.ph, %.lr.ph206.preheader ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.5367.i203, i64 1
  %i.lk = load i8, ptr %.5367.i203, align 1, !tbaa !8
  %i.ll = getelementptr inbounds nuw i8, ptr %.16.i204, i64 1 ; 2 uses
  store i8 %i.lk, ptr %.16.i204, align 1, !tbaa !8
  %i.lm = icmp ult ptr %i.ll, %.ptr130
  br i1 %i.lm, label %.lr.ph206, label %.preheader135, !llvm.loop !128

bb.aw:                                            ; preds = %bb.as
  %i.ln = load i64, ptr %.3365.i, align 1
  store i64 %i.ln, ptr %i.jl, align 1
  %i.lo = icmp ugt i64 %.11383.i, 16
  br i1 %i.lo, label %bb.ax, label %.preheader135

bb.ax:                                            ; preds = %bb.aw
  %i.lp = getelementptr inbounds nuw i8, ptr %.10.i.ptr, i64 16 ; 4 uses
  %i.lq = add i64 %.10.i.idx, %.11383.i
  %i.lr = add i64 %i.lq, %i.a
  %i.ls = add i64 %.10.i.idx, %i.a
  %i.lt = add i64 %i.ls, 24
  %i.lu = tail call i64 @llvm.umax.i64(i64 %i.lr, i64 %i.lt)
  %i.lv = add i64 %.10.i.idx, %i.a
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = add i64 %i.lw, -17                      ; 2 uses
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check449 = icmp ult i64 %i.lx, 136
  br i1 %min.iters.check449, label %scalar.ph448.preheader, label %vector.memcheck445

vector.memcheck445:                               ; preds = %bb.ax
  %i.ma = add i64 %.10.i.idx, %i.a
  %i.mb = sub i64 %i.ma, %.3365.i446
  %i.mc = add i64 %i.mb, 7
  %diff.check447 = icmp ult i64 %i.mc, 31
  br i1 %diff.check447, label %scalar.ph448.preheader, label %vector.ph450

vector.ph450:                                     ; preds = %vector.memcheck445
  %n.vec452 = and i64 %i.lz, 4611686018427387900  ; 3 uses
  %i.md = shl i64 %n.vec452, 3                    ; 2 uses
  %i.me = getelementptr i8, ptr %.3365.i, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.lp, i64 %i.md
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph450
  %index454 = phi i64 [ 0, %vector.ph450 ], [ %index.next459, %vector.body453 ] ; 2 uses
  %i.mg = shl i64 %index454, 3                    ; 2 uses
  %next.gep455 = getelementptr i8, ptr %.3365.i, i64 %i.mg ; 2 uses
  %next.gep456 = getelementptr i8, ptr %i.lp, i64 %i.mg ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %next.gep455, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %next.gep455, i64 24
  %wide.load457 = load <2 x i64>, ptr %i.mh, align 1
  %wide.load458 = load <2 x i64>, ptr %i.mi, align 1
  %i.mj = getelementptr i8, ptr %next.gep456, i64 16
  store <2 x i64> %wide.load457, ptr %next.gep456, align 1
  store <2 x i64> %wide.load458, ptr %i.mj, align 1
  %index.next459 = add nuw i64 %index454, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next459, %n.vec452
  br i1 %i.mk, label %middle.block460, label %vector.body453, !llvm.loop !129

middle.block460:                                  ; preds = %vector.body453
  %cmp.n461 = icmp eq i64 %i.lz, %n.vec452
  br i1 %cmp.n461, label %.preheader135, label %scalar.ph448.preheader

scalar.ph448.preheader:                           ; preds = %vector.memcheck445, %bb.ax, %middle.block460
  %.3365.i.pn.ph = phi ptr [ %.3365.i, %vector.memcheck445 ], [ %.3365.i, %bb.ax ], [ %i.me, %middle.block460 ]
  %.0.i6.ph = phi ptr [ %i.lp, %vector.memcheck445 ], [ %i.lp, %bb.ax ], [ %i.mf, %middle.block460 ]
  br label %scalar.ph448

scalar.ph448:                                     ; preds = %scalar.ph448.preheader, %scalar.ph448
  %.3365.i.pn = phi ptr [ %.09.i5, %scalar.ph448 ], [ %.3365.i.pn.ph, %scalar.ph448.preheader ]
  %.0.i6 = phi ptr [ %i.mm, %scalar.ph448 ], [ %.0.i6.ph, %scalar.ph448.preheader ] ; 2 uses
  %.09.i5 = getelementptr inbounds nuw i8, ptr %.3365.i.pn, i64 8 ; 2 uses
  %i.ml = load i64, ptr %.09.i5, align 1
  store i64 %i.ml, ptr %.0.i6, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8 ; 2 uses
  %i.mn = icmp ult ptr %i.mm, %.ptr130
  br i1 %i.mn, label %scalar.ph448, label %.preheader135, !llvm.loop !130

.preheader135:                                    ; preds = %scalar.ph448, %.lr.ph206, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block497, %middle.block460, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %middle.block460 ], [ %.2, %.lr.ph206 ], [ %.2, %middle.block497 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %scalar.ph448 ] ; 3 uses
  %.6.i.idx.ph = phi i64 [ 0, %bb.f ], [ %.10.i.add, %middle.block460 ], [ %.10.i.add, %.lr.ph206 ], [ %.10.i.add, %middle.block497 ], [ %.10.i.add, %vec.epilog.middle.block ], [ %.10.i.add, %bb.aw ], [ %.10.i.add, %bb.av ], [ %.10.i.add, %scalar.ph448 ] ; 3 uses
  %.6.i.ptr194 = getelementptr inbounds i8, ptr %1, i64 %.6.i.idx.ph ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.mp = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.mq = zext i8 %i.mp to i32                    ; 3 uses
  %i.mr = lshr i32 %i.mq, 4                       ; 2 uses
  %cond.i195 = icmp eq i32 %i.mr, 15
  br i1 %cond.i195, label %._crit_edge, label %.lr.ph198

.lr.ph198:                                        ; preds = %.preheader135
  %i.ms = add nsw i64 %i.f, -32
  br label %bb.ad

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit15, %read_variable_length.exit15.thread79, %bb.g, %read_variable_length.exit.thread62, %read_variable_length.exit, %.thread87, %.preheader142, %.preheader139, %.preheader134, %.preheader132, %bb.al, %._crit_edge, %read_variable_length.exit20, %read_variable_length.exit20.thread94, %bb.at, %.loopexit147, %read_variable_length.exit24, %bb.aj
  %.7 = phi ptr [ %.4, %bb.aj ], [ %.2, %.loopexit147 ], [ %.2, %bb.at ], [ %.17, %read_variable_length.exit24 ], [ %i.ia, %.preheader132 ], [ %i.fx, %read_variable_length.exit20 ], [ %i.bj, %.preheader139 ], [ %.1597, %read_variable_length.exit20.thread94 ], [ %.lcssa158, %._crit_edge ], [ %i.ae, %.preheader142 ], [ %i.fx, %.preheader134 ], [ %i.hw, %bb.al ], [ %i.bj, %read_variable_length.exit15 ], [ %.1382, %read_variable_length.exit15.thread79 ], [ %i.w, %bb.g ], [ %.1165, %read_variable_length.exit.thread62 ], [ %i.ae, %read_variable_length.exit ], [ %i.bf, %bb.m ], [ %.8, %.thread87 ]
  %i.mt = ptrtoint ptr %.7 to i64
  %i.mu = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.mu, %i.mt
  %i.mv = trunc i64 %.neg.i to i32
  %i.mw = add nsw i32 %i.mv, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.hl, %bb.ak ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.mw, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_decompress_fast_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.080.i = phi ptr [ %1, %bb.a ], [ %i.by, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !8
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 4                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 15
  br i1 %i.k, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.l = phi ptr [ %i.o, %.preheader34 ], [ %i.f, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.p, %.preheader34 ], [ 0, %.thread ]
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.p = add i64 %.0.i2, %i.n                     ; 2 uses
  %i.q = icmp eq i8 %i.m, -1
  br i1 %i.q, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !112

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.r = add i64 %i.p, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.o, %read_long_length_no_check.exit ], [ %i.f, %.thread ] ; 2 uses
  %.086.i = phi i64 [ %i.r, %read_long_length_no_check.exit ], [ %i.j, %.thread ] ; 4 uses
  %i.s = ptrtoint ptr %.080.i to i64
  %i.t = sub i64 %i.d, %i.s
  %i.u = icmp ult i64 %i.t, %.086.i
  br i1 %i.u, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1, i64 %.086.i, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 %.086.i ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.d, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, 12
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %i.v, %i.b
  br i1 %i.aa, label %bb.h, label %LZ4_decompress_unsafe_generic.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = and i32 %i.h, 15                        ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %.val = load i16, ptr %i.w, align 1, !tbaa !27  ; 2 uses
  %i.ad = zext i16 %.val to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.af = icmp eq i32 %i.ab, 15
  br i1 %i.af, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.ag = phi ptr [ %i.aj, %.preheader ], [ %i.ae, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.ak, %.preheader ], [ 0, %bb.e ]
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ak = add i64 %.0.i4, %i.ai                   ; 2 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !112

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.am = add i64 %i.ak, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5, %bb.e
  %.4 = phi ptr [ %i.aj, %read_long_length_no_check.exit5 ], [ %i.ae, %bb.e ]
  %.092.i = phi i64 [ %i.am, %read_long_length_no_check.exit5 ], [ %i.ac, %bb.e ] ; 5 uses
  %i.an = add i64 %.092.i, 4                      ; 9 uses
  %i.ao = icmp ult i64 %i.y, %i.an
  %i.ap = sub i64 %i.x, %i.e
  %.not.i = icmp ult i64 %i.ap, %i.ad
  %or.cond = select i1 %i.ao, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = sub nsw i64 0, %i.ad
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq ; 7 uses
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.092.i, -5
  %i.as = add i16 %.val, -1
  %diff.check = icmp ult i16 %i.as, 31
  %or.cond67 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond67, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 28
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !8
  %wide.load60 = load <16 x i8>, ptr %i.au, align 1, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !8
  store <16 x i8> %wide.load60, ptr %i.aw, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.an, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index63
  %wide.load64 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 %index63
  store <4 x i8> %wide.load64, ptr %i.az, align 1, !tbaa !8
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next65, %n.vec62
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.an, %n.vec62
  br i1 %cmp.n66, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec62, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.092.i, 3
  %i.bc = sub i64 %i.bb, %.0.i40.ph
  %xtraiter = and i64 %.092.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i40.prol = phi i64 [ %i.bg, %.lr.ph.prol ], [ %.0.i40.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.i40.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i40.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !8
  %i.bg = add nuw i64 %.0.i40.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !133

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i40.unr = phi i64 [ %.0.i40.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i40 = phi i64 [ %i.bx, %.lr.ph ], [ %.0.i40.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.i40
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i40
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !8
  %i.bl = add nuw i64 %.0.i40, 1                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !8
  %i.bp = add nuw i64 %.0.i40, 2                  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !8
  %i.bt = add nuw i64 %.0.i40, 3                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !8
  %i.bx = add nuw i64 %.0.i40, 4
  %exitcond.not.3 = icmp eq i64 %.0.i40, %.092.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.an ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.d, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.w to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.b, %bb.f, %._crit_edge, %bb.d, %bb.h
  %.5.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.5.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %3 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 9 uses
  %i.g = icmp eq ptr %4, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.i = select i1 %i.g, ptr null, ptr %i.h       ; 4 uses
  %i.j = icmp ult i64 %5, 65536                   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 1
  br i1 %i.n, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %0, align 1, !tbaa !8
  %i.p = icmp ne i8 %i.o, 0
  %i.q = sext i1 %i.p to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %2, 0
  br i1 %i.r, label %LZ4_decompress_generic.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %1 to i64                   ; 11 uses
  %i.t = icmp samesign ult i32 %3, 64
  br i1 %i.t, label %.preheader124, label %.preheader136

.preheader136:                                    ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.aa = add i64 %i.s, 1
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader136
  %.0 = phi ptr [ %0, %.preheader136 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0358.i = phi ptr [ %1, %.preheader136 ], [ %.0358.i.be, %.backedge.backedge ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.ac = load i8, ptr %.0, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %i.ae = lshr i32 %i.ad, 4                       ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.ag = icmp eq i32 %i.ae, 15
  br i1 %i.ag, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.ab, %i.v
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.h:                                             ; preds = %bb.g
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !8   ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %.not23.i = icmp eq i8 %i.ah, -1
  br i1 %.not23.i, label %.preheader134, label %read_variable_length.exit.thread64, !prof !20

.preheader134:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.aj, %bb.i ], [ %6, %bb.h ]  ; 2 uses
  %.0.i13 = phi i64 [ %i.an, %bb.i ], [ 255, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.ak = icmp ugt ptr %i.aj, %i.v
  br i1 %i.ak, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %.preheader134
  %i.al = load i8, ptr %.10, align 1, !tbaa !8    ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %.0.i13, %i.am                  ; 3 uses
  %i.ao = icmp eq i8 %i.al, -1
  br i1 %i.ao, label %.preheader134, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.i
  %i.ap = icmp eq i64 %i.an, -1
  br i1 %i.ap, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread64

read_variable_length.exit.thread64:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i68 = phi i64 [ %i.an, %read_variable_length.exit ], [ %i.ai, %bb.h ]
  %.1167 = phi ptr [ %i.aj, %read_variable_length.exit ], [ %6, %bb.h ] ; 5 uses
  %i.aq = add i64 %.019.i68, 15                   ; 5 uses
  %i.ar = ptrtoint ptr %.0358.i to i64
  %i.as = xor i64 %i.ar, -1
  %i.at = icmp ugt i64 %i.aq, %i.as
  %i.au = ptrtoint ptr %.1167 to i64
  %i.av = xor i64 %i.au, -1
  %i.aw = icmp ugt i64 %i.aq, %i.av
  %or.cond = or i1 %i.at, %i.aw
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !84

bb.j:                                             ; preds = %read_variable_length.exit.thread64
  %i.ax = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.aq ; 3 uses
  %i.ay = icmp ugt ptr %i.ax, %i.l
  %i.az = getelementptr inbounds nuw i8, ptr %.1167, i64 %i.aq ; 2 uses
  %i.ba = icmp ugt ptr %i.az, %i.w
  %or.cond449.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader133

.preheader133:                                    ; preds = %bb.j, %.preheader133
  %.011.i = phi ptr [ %i.be, %.preheader133 ], [ %.1167, %bb.j ] ; 3 uses
  %.0.i27 = phi ptr [ %i.bd, %.preheader133 ], [ %.0358.i, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i27, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i27, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i27, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.bf = icmp ult ptr %i.bd, %i.ax
  br i1 %i.bf, label %.preheader133, label %LZ4_wildCopy32.exit.thread73, !llvm.loop !85

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.ab, %i.u
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.bh = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.af
  br label %LZ4_wildCopy32.exit.thread73

LZ4_wildCopy32.exit.thread73:                     ; preds = %.preheader133, %bb.l
  %.1 = phi ptr [ %i.bg, %bb.l ], [ %i.az, %.preheader133 ] ; 3 uses
  %.2.i = phi ptr [ %i.bh, %bb.l ], [ %i.ax, %.preheader133 ] ; 28 uses
  %.2.i450 = ptrtoaddr ptr %.2.i to i64           ; 8 uses
  %.val34 = load i16, ptr %.1, align 1, !tbaa !27 ; 6 uses
  %i.bi = zext i16 %.val34 to i64                 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds i8, ptr %.2.i, i64 %i.bk ; 20 uses
  %i.bm = and i32 %i.ad, 15                       ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 15
  br i1 %i.bn, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread73
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bp = icmp ugt ptr %i.bo, %i.y
  br i1 %i.bp, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !8   ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %.not23.i14 = icmp eq i8 %i.bq, -1
  br i1 %.not23.i14, label %.preheader131, label %read_variable_length.exit17.thread81, !prof !20

.preheader131:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bs, %bb.o ], [ %i.bo, %bb.n ] ; 2 uses
  %.0.i16 = phi i64 [ %i.bw, %bb.o ], [ 255, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bt = icmp ugt ptr %i.bs, %i.y
  br i1 %i.bt, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !20

bb.o:                                             ; preds = %.preheader131
  %i.bu = load i8, ptr %.12, align 1, !tbaa !8    ; 2 uses
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %.0.i16, %i.bv                  ; 3 uses
  %i.bx = icmp eq i8 %i.bu, -1
  br i1 %i.bx, label %.preheader131, label %read_variable_length.exit17, !llvm.loop !83

read_variable_length.exit17:                      ; preds = %bb.o
  %i.by = icmp eq i64 %i.bw, -1
  br i1 %i.by, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit17.thread81

read_variable_length.exit17.thread81:             ; preds = %bb.n, %read_variable_length.exit17
  %.019.i1585 = phi i64 [ %i.bw, %read_variable_length.exit17 ], [ %i.br, %bb.n ]
  %.1384 = phi ptr [ %i.bs, %read_variable_length.exit17 ], [ %i.bo, %bb.n ] ; 3 uses
  %i.bz = add i64 %.019.i1585, 19                 ; 4 uses
  %i.ca = ptrtoint ptr %.2.i to i64
  %i.cb = xor i64 %i.ca, -1
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !20

bb.p:                                             ; preds = %read_variable_length.exit17.thread81
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.bz
  %.not435.i = icmp ult ptr %i.cd, %i.x
  br i1 %.not435.i, label %.thread89, label %.loopexit139

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread73
  %narrow.i = add nuw nsw i32 %i.bm, 4
  %i.ce = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.ce ; 2 uses
  %.not434.i = icmp ult ptr %i.cf, %i.x
  br i1 %.not434.i, label %bb.r, label %.loopexit139

bb.r:                                             ; preds = %bb.q
  %i.cg = icmp uge ptr %i.bl, %1
  %i.ch = icmp ugt i16 %.val34, 7
  %or.cond5.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread89

bb.s:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.bl, align 1
  store i64 %i.ci, ptr %.2.i, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cl = load i64, ptr %i.ck, align 1
  store i64 %i.cl, ptr %i.cj, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.co = load i16, ptr %i.cn, align 1
  store i16 %i.co, ptr %i.cm, align 1
  br label %.backedge.backedge

.thread89:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.bj, %bb.r ], [ %.1384, %bb.p ] ; 13 uses
  %.2374.i = phi i64 [ %i.ce, %bb.r ], [ %i.bz, %bb.p ] ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %5
  %i.cq = icmp ult ptr %i.cp, %1
  %or.cond452.i = select i1 %i.j, i1 %i.cq, i1 false, !prof !86
  br i1 %or.cond452.i, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !86

bb.t:                                             ; preds = %.thread89
  %i.cr = icmp ult ptr %i.bl, %1
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.2374.i ; 13 uses
  br i1 %i.cr, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp ugt ptr %i.cs, %i.z
  br i1 %i.ct, label %LZ4_wildCopy32.exit.thread, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  %i.cu = ptrtoint ptr %i.bl to i64
  %i.cv = sub i64 %i.s, %i.cu                     ; 6 uses
  %.not437.i = icmp ugt i64 %.2374.i, %i.cv
  br i1 %.not437.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = sub i64 0, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.i, i64 %i.cw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2.i, ptr align 1 %i.cx, i64 %.2374.i, i1 false)
  br label %.backedge.backedge

bb.x:                                             ; preds = %bb.v
  %i.cy = sub nuw i64 %.2374.i, %i.cv             ; 2 uses
  %i.cz = sub i64 0, %i.cv
  %i.da = getelementptr inbounds i8, ptr %i.i, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2.i, ptr align 1 %i.da, i64 %i.cv, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.cv ; 7 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.s
  %i.de = icmp ugt i64 %i.cy, %i.dd
  br i1 %i.de, label %iter.check, label %bb.y

iter.check:                                       ; preds = %bb.x
  %i.df = add i64 %i.aa, %i.bi
  %i.dg = add i64 %.2374.i, %.2.i450
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dg)
  %i.dh = add i64 %i.s, %i.bi
  %i.di = sub i64 %umax, %i.dh                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.di, 4
  %i.dj = add i16 %.val34, -1
  %diff.check = icmp ult i16 %i.dj, 31
  %or.cond633 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond633, label %.lr.ph189.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i64 %i.di, 32
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.di, 28
  %n.vec = and i64 %i.di, -32                     ; 5 uses
  %i.dk = getelementptr i8, ptr %i.db, i64 %n.vec ; 2 uses
  %i.dl = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %index ; 2 uses
  %next.gep452 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep452, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep452, align 1, !tbaa !8
  %wide.load453 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !8
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %wide.load453, ptr %i.dn, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
end_hunk_3
begin_hunk_4_@LZ4_decompress_safe_forceExtDict:bb.a
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ev = load i64, ptr %i.bl, align 1
  store i64 %i.ev, ptr %.2.i, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.023.i = phi ptr [ %i.eu, %bb.af ], [ %i.ew, %bb.ag ] ; 5 uses
  %.0.i32 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.ex = add i64 %.2374.i, %.2.i450
  %i.ey = add i64 %.2.i450, 16
  %i.ez = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 %i.ey)
  %i.fa = sub i64 %i.ez, %.2.i450
  %i.fb = add i64 %i.fa, -9                       ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check468 = icmp ult i64 %i.fb, 56
  br i1 %min.iters.check468, label %scalar.ph.preheader, label %vector.memcheck465

vector.memcheck465:                               ; preds = %bb.ah
  %.023.i466 = ptrtoaddr ptr %.023.i to i64
  %i.fe = sub i64 %.2.i450, %.023.i466
  %i.ff = add i64 %i.fe, 7
  %diff.check467 = icmp ult i64 %i.ff, 31
  br i1 %diff.check467, label %scalar.ph.preheader, label %vector.ph469

vector.ph469:                                     ; preds = %vector.memcheck465
  %n.vec471 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.fg = shl i64 %n.vec471, 3                    ; 2 uses
  %i.fh = getelementptr i8, ptr %.023.i, i64 %i.fg
  %i.fi = getelementptr i8, ptr %.0.i32, i64 %i.fg
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph469
  %index473 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %i.fj = shl i64 %index473, 3                    ; 2 uses
  %next.gep474 = getelementptr i8, ptr %.023.i, i64 %i.fj ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.0.i32, i64 %i.fj ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep474, i64 16
  %wide.load476 = load <2 x i64>, ptr %next.gep474, align 1
  %wide.load477 = load <2 x i64>, ptr %i.fk, align 1
  %i.fl = getelementptr i8, ptr %next.gep475, i64 16
  store <2 x i64> %wide.load476, ptr %next.gep475, align 1
  store <2 x i64> %wide.load477, ptr %i.fl, align 1
  %index.next478 = add nuw i64 %index473, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.fm, label %middle.block479, label %vector.body472, !llvm.loop !138

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.fd, %n.vec471
  br i1 %cmp.n480, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck465, %bb.ah, %middle.block479
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck465 ], [ %.023.i, %bb.ah ], [ %i.fh, %middle.block479 ]
  %.0.i.i.ph = phi ptr [ %.0.i32, %vector.memcheck465 ], [ %.0.i32, %bb.ah ], [ %i.fi, %middle.block479 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.fp, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.fo, %scalar.ph ], [ %.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fn = load i64, ptr %.09.i.i, align 1
  store i64 %i.fn, ptr %.0.i.i, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.fq = icmp ult ptr %i.fo, %i.cs
  br i1 %i.fq, label %scalar.ph, label %.backedge.backedge, !llvm.loop !139

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.ab ], [ %.sroa.0.2.insert.insert.i, %bb.ac ], [ %.sroa.0.0.copyload2.i, %bb.ad ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.fr = icmp samesign ugt i64 %.2374.i, 8
  br i1 %i.fr, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ai
  %.0.i31184 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.fs = add i64 %.2374.i, %.2.i450
  %i.ft = add i64 %.2.i450, 16
  %i.fu = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.ft)
  %i.fv = sub i64 %i.fu, %.2.i450
  %i.fw = add i64 %i.fv, -9                       ; 2 uses
  %i.fx = lshr i64 %i.fw, 3
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check483 = icmp ult i64 %i.fw, 24
  br i1 %min.iters.check483, label %.lr.ph.preheader672, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph.preheader
  %n.vec486 = and i64 %i.fy, 4611686018427387900  ; 3 uses
  %i.fz = shl i64 %n.vec486, 3                    ; 2 uses
  %i.ga = getelementptr i8, ptr %.0.i31184, i64 %i.fz
  %i.gb = getelementptr i8, ptr %.2.i, i64 %i.fz
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.gc = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body487 ] ; 2 uses
  %i.gd = shl i64 %index488, 3                    ; 2 uses
  %next.gep489 = getelementptr i8, ptr %.0.i31184, i64 %i.gd
  %i.ge = getelementptr i8, ptr %.0.i31184, i64 %i.gd
  %next.gep490 = getelementptr i8, ptr %i.ge, i64 16
  store <4 x i32> %i.gc, ptr %next.gep489, align 1
  store <4 x i32> %i.gc, ptr %next.gep490, align 1
  %index.next492 = add nuw i64 %index488, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next492, %n.vec486
  br i1 %i.gf, label %middle.block493, label %vector.body487, !llvm.loop !140

middle.block493:                                  ; preds = %vector.body487
  %cmp.n494 = icmp eq i64 %i.fy, %n.vec486
  br i1 %cmp.n494, label %.backedge.backedge, label %.lr.ph.preheader672

.backedge.backedge:                               ; preds = %.preheader129, %.lr.ph, %scalar.ph, %.lr.ph189, %middle.block493, %middle.block479, %middle.block, %vec.epilog.middle.block, %bb.ai, %bb.w, %bb.y, %bb.s
  %.0.be = phi ptr [ %i.bj, %bb.s ], [ %.8, %bb.w ], [ %.8, %middle.block479 ], [ %.8, %middle.block493 ], [ %.8, %bb.y ], [ %.8, %middle.block ], [ %.8, %bb.ai ], [ %.8, %scalar.ph ], [ %.8, %vec.epilog.middle.block ], [ %.8, %.lr.ph ], [ %.8, %.lr.ph189 ], [ %.8, %.preheader129 ]
  %.0358.i.be = phi ptr [ %i.cf, %bb.s ], [ %i.cs, %bb.w ], [ %i.cs, %middle.block479 ], [ %i.cs, %middle.block493 ], [ %i.cs, %bb.y ], [ %i.dk, %middle.block ], [ %i.cs, %bb.ai ], [ %i.cs, %scalar.ph ], [ %i.dp, %vec.epilog.middle.block ], [ %i.cs, %.lr.ph ], [ %i.du, %.lr.ph189 ], [ %i.cs, %.preheader129 ]
  br label %.backedge

.lr.ph.preheader672:                              ; preds = %.lr.ph.preheader, %middle.block493
  %.0.i31186.ph = phi ptr [ %.0.i31184, %.lr.ph.preheader ], [ %i.ga, %middle.block493 ]
  %.pn.i185.ph = phi ptr [ %.2.i, %.lr.ph.preheader ], [ %i.gb, %middle.block493 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader672, %.lr.ph
  %.0.i31186 = phi ptr [ %.0.i31, %.lr.ph ], [ %.0.i31186.ph, %.lr.ph.preheader672 ] ; 3 uses
  %.pn.i185 = phi ptr [ %.0.i31186, %.lr.ph ], [ %.pn.i185.ph, %.lr.ph.preheader672 ]
  store i32 %.sroa.9.0.i, ptr %.0.i31186, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i185, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i31 = getelementptr inbounds nuw i8, ptr %.0.i31186, i64 8 ; 2 uses
  %i.gg = icmp ult ptr %.0.i31, %i.cs
  br i1 %i.gg, label %.lr.ph, label %.backedge.backedge, !llvm.loop !141

.preheader129:                                    ; preds = %bb.z, %.preheader129
  %.011.i28 = phi ptr [ %i.gk, %.preheader129 ], [ %i.bl, %bb.z ] ; 3 uses
  %.0.i29 = phi ptr [ %i.gj, %.preheader129 ], [ %.2.i, %bb.z ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i29, ptr noundef nonnull align 1 dereferenceable(16) %.011.i28, i64 16, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i29, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.011.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gh, ptr noundef nonnull align 1 dereferenceable(16) %i.gi, i64 16, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i29, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.011.i28, i64 32
  %i.gl = icmp ult ptr %i.gj, %i.cs
  br i1 %i.gl, label %.preheader129, label %.backedge.backedge, !llvm.loop !85

.lr.ph192:                                        ; preds = %.preheader124, %bb.ak
  %.in = phi i32 [ %i.ho, %bb.ak ], [ %i.pr, %.preheader124 ]
  %i.gm = phi i32 [ %i.hn, %bb.ak ], [ %i.pq, %.preheader124 ] ; 2 uses
  %i.gn = phi ptr [ %i.hl, %bb.ak ], [ %i.po, %.preheader124 ] ; 4 uses
  %.6.i191 = phi ptr [ %i.hk, %bb.ak ], [ %.6.i.ph, %.preheader124 ] ; 4 uses
  %i.go = zext nneg i32 %.in to i64               ; 3 uses
  %i.gp = icmp ult ptr %i.gn, %i.k
  %i.gq = icmp ule ptr %.6.i191, %i.l
  %i.gr = and i1 %i.gp, %i.gq
  br i1 %i.gr, label %bb.aj, label %LZ4_wildCopy32.exit, !prof !29

bb.aj:                                            ; preds = %.lr.ph192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i191, ptr noundef nonnull align 1 dereferenceable(16) %i.gn, i64 16, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %.6.i191, i64 %i.go ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go ; 3 uses
  %i.gu = and i32 %i.gm, 15                       ; 2 uses
  %i.gv = zext nneg i32 %i.gu to i64              ; 2 uses
  %.val = load i16, ptr %i.gt, align 1, !tbaa !27 ; 2 uses
  %i.gw = zext i16 %.val to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 3 uses
  %i.gy = sub nsw i64 0, %i.gw
  %i.gz = getelementptr inbounds i8, ptr %i.gs, i64 %i.gy ; 5 uses
  %i.ha = icmp eq i32 %i.gu, 15
  %i.hb = icmp ult i16 %.val, 8
  %or.cond3.i.not116 = select i1 %i.ha, i1 true, i1 %i.hb
  %.not442.i = icmp ult ptr %i.gz, %1
  %or.cond111 = select i1 %or.cond3.i.not116, i1 true, i1 %.not442.i
  br i1 %or.cond111, label %.loopexit125, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hc = load i64, ptr %i.gz, align 1
  store i64 %i.hc, ptr %i.gs, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hf = load i64, ptr %i.he, align 1
  store i64 %i.hf, ptr %i.hd, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hi = load i16, ptr %i.hh, align 1
  store i16 %i.hi, ptr %i.hg, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 3 ; 2 uses
  %i.hm = load i8, ptr %i.gx, align 1, !tbaa !8
  %i.hn = zext i8 %i.hm to i32                    ; 3 uses
  %i.ho = lshr i32 %i.hn, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.ho, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph192

._crit_edge:                                      ; preds = %bb.ak, %.preheader124
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader124 ], [ %i.gx, %bb.ak ]
  %.6.i.lcssa = phi ptr [ %.6.i.ph, %.preheader124 ], [ %i.hk, %bb.ak ] ; 2 uses
  %.lcssa150 = phi ptr [ %i.po, %.preheader124 ], [ %i.hl, %bb.ak ] ; 3 uses
  %.lcssa147 = phi i32 [ %i.pq, %.preheader124 ], [ %i.hn, %bb.ak ]
  %i.hp = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not22.i18 = icmp ult ptr %.lcssa150, %i.hp
  br i1 %.not22.i18, label %bb.al, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.al:                                            ; preds = %._crit_edge
  %7 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.hq = load i8, ptr %.lcssa150, align 1, !tbaa !8 ; 2 uses
  %i.hr = zext i8 %i.hq to i64
  %.not23.i20 = icmp eq i8 %i.hq, -1
  br i1 %.not23.i20, label %.preheader123, label %read_variable_length.exit22.thread96, !prof !20

.preheader123:                                    ; preds = %bb.al, %bb.am
  %.14 = phi ptr [ %i.hs, %bb.am ], [ %7, %bb.al ] ; 2 uses
  %.0.i21 = phi i64 [ %i.hw, %bb.am ], [ 255, %bb.al ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.ht = icmp ugt ptr %i.hs, %i.hp
  br i1 %i.ht, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %.preheader123
  %i.hu = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.hv = zext i8 %i.hu to i64
  %i.hw = add i64 %.0.i21, %i.hv                  ; 3 uses
  %i.hx = icmp eq i8 %i.hu, -1
  br i1 %i.hx, label %.preheader123, label %read_variable_length.exit22, !llvm.loop !83

read_variable_length.exit22:                      ; preds = %bb.am
  %i.hy = icmp eq i64 %i.hw, -1
  br i1 %i.hy, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit22.thread96

read_variable_length.exit22.thread96:             ; preds = %bb.al, %read_variable_length.exit22
  %.019.i19100 = phi i64 [ %i.hw, %read_variable_length.exit22 ], [ %i.hr, %bb.al ]
  %.1599 = phi ptr [ %i.hs, %read_variable_length.exit22 ], [ %7, %bb.al ] ; 3 uses
  %i.hz = add i64 %.019.i19100, 15                ; 3 uses
  %i.ia = ptrtoint ptr %.6.i.lcssa to i64
  %i.ib = xor i64 %i.ia, -1
  %i.ic = icmp ugt i64 %i.hz, %i.ib
  %i.id = ptrtoint ptr %.1599 to i64
  %i.ie = xor i64 %i.id, -1
  %i.if = icmp ugt i64 %i.hz, %i.ie
  %or.cond114 = or i1 %i.ic, %i.if
  br i1 %or.cond114, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph192, %read_variable_length.exit22.thread96
  %.4 = phi ptr [ %.1599, %read_variable_length.exit22.thread96 ], [ %i.gn, %.lr.ph192 ], [ %i.ab, %bb.k ], [ %.1167, %bb.j ] ; 8 uses
  %.5377.i = phi i64 [ %i.hz, %read_variable_length.exit22.thread96 ], [ %i.go, %.lr.ph192 ], [ %i.af, %bb.k ], [ %i.aq, %bb.j ] ; 5 uses
  %.0371.i = phi i32 [ %.lcssa147, %read_variable_length.exit22.thread96 ], [ %i.gm, %.lr.ph192 ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ]
  %.7.i = phi ptr [ %.6.i.lcssa, %read_variable_length.exit22.thread96 ], [ %.6.i191, %.lr.ph192 ], [ %.0358.i, %bb.k ], [ %.0358.i, %bb.j ] ; 6 uses
  %.7.i498 = ptrtoaddr ptr %.7.i to i64           ; 4 uses
  %.4499 = ptrtoaddr ptr %.4 to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.5377.i ; 6 uses
  %i.ih = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.ii = icmp ugt ptr %i.ig, %i.ih
  br i1 %i.ii, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %LZ4_wildCopy32.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i ; 3 uses
  %i.ik = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.il = icmp ugt ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.ao, label %.preheader122.preheader

.preheader122.preheader:                          ; preds = %bb.an
  %i.im = add nuw i64 %.5377.i, %.7.i498
  %i.in = add i64 %.7.i498, 8
  %i.io = tail call i64 @llvm.umax.i64(i64 %i.im, i64 %i.in)
  %i.ip = xor i64 %.7.i498, -1
  %i.iq = add i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = lshr i64 %i.iq, 3
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check502 = icmp ult i64 %i.iq, 72
  %i.it = sub i64 %.4499, %.7.i498
  %diff.check500 = icmp ugt i64 %i.it, -32
  %or.cond634 = select i1 %min.iters.check502, i1 true, i1 %diff.check500
  br i1 %or.cond634, label %.preheader122.preheader642, label %vector.ph503

vector.ph503:                                     ; preds = %.preheader122.preheader
  %n.vec505 = and i64 %i.is, 4611686018427387900  ; 3 uses
  %i.iu = shl i64 %n.vec505, 3                    ; 2 uses
  %i.iv = getelementptr i8, ptr %.4, i64 %i.iu
  %i.iw = getelementptr i8, ptr %.7.i, i64 %i.iu
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph503
  %index507 = phi i64 [ 0, %vector.ph503 ], [ %index.next512, %vector.body506 ] ; 2 uses
  %i.ix = shl i64 %index507, 3                    ; 2 uses
  %next.gep508 = getelementptr i8, ptr %.4, i64 %i.ix ; 2 uses
  %next.gep509 = getelementptr i8, ptr %.7.i, i64 %i.ix ; 2 uses
  %i.iy = getelementptr i8, ptr %next.gep508, i64 16
  %wide.load510 = load <2 x i64>, ptr %next.gep508, align 1
  %wide.load511 = load <2 x i64>, ptr %i.iy, align 1
  %i.iz = getelementptr i8, ptr %next.gep509, i64 16
  store <2 x i64> %wide.load510, ptr %next.gep509, align 1
  store <2 x i64> %wide.load511, ptr %i.iz, align 1
  %index.next512 = add nuw i64 %index507, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.ja, label %middle.block513, label %vector.body506, !llvm.loop !142

middle.block513:                                  ; preds = %vector.body506
  %cmp.n514 = icmp eq i64 %i.is, %n.vec505
  br i1 %cmp.n514, label %LZ4_wildCopy8.exit12, label %.preheader122.preheader642

.preheader122.preheader642:                       ; preds = %.preheader122.preheader, %middle.block513
  %.09.i10.ph = phi ptr [ %.4, %.preheader122.preheader ], [ %i.iv, %middle.block513 ]
  %.0.i11.ph = phi ptr [ %.7.i, %.preheader122.preheader ], [ %i.iw, %middle.block513 ]
  br label %.preheader122

bb.ao:                                            ; preds = %bb.an, %LZ4_wildCopy32.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i
  %.not440.i = icmp ne ptr %i.jb, %i.d
  %i.jc = icmp ugt ptr %i.ig, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.jc
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %.5377.i, i1 false)
  %i.jd = ptrtoint ptr %i.ig to i64
  %i.je = sub i64 %i.jd, %i.s
  %i.jf = trunc i64 %i.je to i32
  br label %LZ4_decompress_generic.exit

.preheader122:                                    ; preds = %.preheader122.preheader642, %.preheader122
  %.09.i10 = phi ptr [ %i.ji, %.preheader122 ], [ %.09.i10.ph, %.preheader122.preheader642 ] ; 2 uses
  %.0.i11 = phi ptr [ %i.jh, %.preheader122 ], [ %.0.i11.ph, %.preheader122.preheader642 ] ; 2 uses
  %i.jg = load i64, ptr %.09.i10, align 1
  store i64 %i.jg, ptr %.0.i11, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i11, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.09.i10, i64 8
  %i.jj = icmp ult ptr %i.jh, %i.ig
  br i1 %i.jj, label %.preheader122, label %LZ4_wildCopy8.exit12, !llvm.loop !143

LZ4_wildCopy8.exit12:                             ; preds = %.preheader122, %middle.block513
  %.val33 = load i16, ptr %i.ij, align 1, !tbaa !27
  %i.jk = zext i16 %.val33 to i64                 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.jm = sub nsw i64 0, %i.jk
  %i.jn = getelementptr inbounds i8, ptr %i.ig, i64 %i.jm
  %i.jo = and i32 %.0371.i, 15
  %i.jp = zext nneg i32 %i.jo to i64
  br label %.loopexit125

.loopexit125:                                     ; preds = %bb.aj, %LZ4_wildCopy8.exit12
  %.5 = phi ptr [ %i.jl, %LZ4_wildCopy8.exit12 ], [ %i.gx, %bb.aj ] ; 3 uses
  %.8380.i = phi i64 [ %i.jp, %LZ4_wildCopy8.exit12 ], [ %i.gv, %bb.aj ] ; 2 uses
  %.0369.i = phi i64 [ %i.jk, %LZ4_wildCopy8.exit12 ], [ %i.gw, %bb.aj ]
  %.0362.i = phi ptr [ %i.jn, %LZ4_wildCopy8.exit12 ], [ %i.gz, %bb.aj ]
  %.9.i = phi ptr [ %i.ig, %LZ4_wildCopy8.exit12 ], [ %i.gs, %bb.aj ] ; 2 uses
  %i.jq = icmp eq i64 %.8380.i, 15
  br i1 %i.jq, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.loopexit125
  %i.jr = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.jt = icmp ugt ptr %i.js, %i.jr
  br i1 %i.jt, label %LZ4_wildCopy32.exit.thread, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  %i.ju = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.jv = zext i8 %i.ju to i64
  %.not23.i23 = icmp eq i8 %i.ju, -1
  br i1 %.not23.i23, label %.preheader121, label %read_variable_length.exit26, !prof !20

.preheader121:                                    ; preds = %bb.ar, %bb.as
  %.16 = phi ptr [ %i.jw, %bb.as ], [ %i.js, %bb.ar ] ; 2 uses
  %.0.i25 = phi i64 [ %i.ka, %bb.as ], [ 255, %bb.ar ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.jx = icmp ugt ptr %i.jw, %i.jr
  br i1 %i.jx, label %LZ4_wildCopy32.exit.thread, label %bb.as, !prof !20

bb.as:                                            ; preds = %.preheader121
  %i.jy = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.jz = zext i8 %i.jy to i64
  %i.ka = add i64 %.0.i25, %i.jz                  ; 2 uses
  %i.kb = icmp eq i8 %i.jy, -1
  br i1 %i.kb, label %.preheader121, label %read_variable_length.exit26, !llvm.loop !83

read_variable_length.exit26:                      ; preds = %bb.as, %bb.ar
  %.17 = phi ptr [ %i.js, %bb.ar ], [ %i.jw, %bb.as ] ; 2 uses
  %.019.i24 = phi i64 [ %i.jv, %bb.ar ], [ %i.ka, %bb.as ] ; 2 uses
  %i.kc = icmp ne i64 %.019.i24, -1               ; 2 uses
  %i.kd = add i64 %.019.i24, 15                   ; 2 uses
  %i.ke = ptrtoint ptr %.9.i to i64
  %i.kf = xor i64 %i.ke, -1
  %i.kg = icmp ule i64 %i.kd, %i.kf
  %.not118 = select i1 %i.kc, i1 %i.kg, i1 false
  %.9381.i = select i1 %i.kc, i64 %i.kd, i64 15
  br i1 %.not118, label %bb.at, label %LZ4_wildCopy32.exit.thread

bb.at:                                            ; preds = %read_variable_length.exit26, %.loopexit125
  %.6 = phi ptr [ %.17, %read_variable_length.exit26 ], [ %.5, %.loopexit125 ]
  %.10382.i = phi i64 [ %.9381.i, %read_variable_length.exit26 ], [ %.8380.i, %.loopexit125 ]
  %i.kh = add i64 %.10382.i, 4
  br label %.loopexit139

.loopexit139:                                     ; preds = %bb.p, %bb.q, %bb.at
  %.2 = phi ptr [ %.6, %bb.at ], [ %.1384, %bb.p ], [ %i.bj, %bb.q ] ; 15 uses
  %.11383.i = phi i64 [ %i.kh, %bb.at ], [ %i.bz, %bb.p ], [ %i.ce, %bb.q ] ; 8 uses
  %.1370.i = phi i64 [ %.0369.i, %bb.at ], [ %i.bi, %bb.q ], [ %i.bi, %bb.p ] ; 3 uses
  %.1363.i = phi ptr [ %.0362.i, %bb.at ], [ %i.bl, %bb.q ], [ %i.bl, %bb.p ] ; 10 uses
  %.10.i = phi ptr [ %.9.i, %bb.at ], [ %.2.i, %bb.q ], [ %.2.i, %bb.p ] ; 14 uses
  %.10.i518 = ptrtoaddr ptr %.10.i to i64         ; 13 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %5
  %i.kj = icmp ult ptr %i.ki, %1
  %or.cond462.i = select i1 %i.j, i1 %i.kj, i1 false, !prof !86
  br i1 %or.cond462.i, label %LZ4_wildCopy32.exit.thread, label %bb.au, !prof !86

bb.au:                                            ; preds = %.loopexit139
  %i.kk = icmp ult ptr %.1363.i, %1
  %i.kl = getelementptr inbounds nuw i8, ptr %.10.i, i64 %.11383.i ; 16 uses
  br i1 %i.kk, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.km = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.kn = icmp ugt ptr %i.kl, %i.km
  br i1 %i.kn, label %LZ4_wildCopy32.exit.thread, label %bb.aw, !prof !20

bb.aw:                                            ; preds = %bb.av
  %i.ko = ptrtoint ptr %.1363.i to i64            ; 3 uses
  %i.kp = sub i64 %i.s, %i.ko                     ; 6 uses
  %.not445.i = icmp ugt i64 %.11383.i, %i.kp
  br i1 %.not445.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kq = sub i64 0, %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.i, i64 %i.kq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10.i, ptr align 1 %i.kr, i64 %.11383.i, i1 false)
  br label %.preheader124

bb.ay:                                            ; preds = %bb.aw
  %i.ks = sub nuw i64 %.11383.i, %i.kp            ; 2 uses
  %i.kt = sub i64 0, %i.kp
  %i.ku = getelementptr inbounds i8, ptr %i.i, i64 %i.kt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10.i, ptr align 1 %i.ku, i64 %i.kp, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %.10.i, i64 %i.kp ; 7 uses
end_hunk_4
begin_hunk_5_@LZ4_decompress_safe_forceExtDict:bb.a
  %i.nn = getelementptr i8, ptr %next.gep547, i64 16
  store <2 x i64> %wide.load548, ptr %next.gep547, align 1
  store <2 x i64> %wide.load549, ptr %i.nn, align 1
  %index.next550 = add nuw i64 %index545, 4       ; 2 uses
  %i.no = icmp eq i64 %index.next550, %n.vec543
  br i1 %i.no, label %middle.block551, label %vector.body544, !llvm.loop !147

middle.block551:                                  ; preds = %vector.body544
  %cmp.n552 = icmp eq i64 %i.nf, %n.vec543
  br i1 %cmp.n552, label %LZ4_wildCopy8.exit, label %.preheader119.preheader637

.preheader119.preheader637:                       ; preds = %vector.memcheck537, %.preheader119.preheader, %middle.block551
  %.09.i.ph = phi ptr [ %.3365.i, %vector.memcheck537 ], [ %.3365.i, %.preheader119.preheader ], [ %i.nj, %middle.block551 ]
  %.0.i6.ph = phi ptr [ %i.ms, %vector.memcheck537 ], [ %i.ms, %.preheader119.preheader ], [ %i.nk, %middle.block551 ]
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader119.preheader637, %.preheader119
  %.09.i = phi ptr [ %i.nr, %.preheader119 ], [ %.09.i.ph, %.preheader119.preheader637 ] ; 2 uses
  %.0.i6 = phi ptr [ %i.nq, %.preheader119 ], [ %.0.i6.ph, %.preheader119.preheader637 ] ; 2 uses
  %i.np = load i64, ptr %.09.i, align 1
  store i64 %i.np, ptr %.0.i6, align 1
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.ns = icmp ult ptr %i.nq, %i.mu
  br i1 %i.ns, label %.preheader119, label %LZ4_wildCopy8.exit, !llvm.loop !148

LZ4_wildCopy8.exit:                               ; preds = %.preheader119, %middle.block551
  %i.nt = ptrtoint ptr %i.mu to i64
  %i.nu = ptrtoint ptr %i.ms to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = getelementptr inbounds i8, ptr %.3365.i, i64 %i.nv
  br label %bb.bg

bb.bg:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bf
  %.4366.i = phi ptr [ %i.nw, %LZ4_wildCopy8.exit ], [ %.3365.i, %bb.bf ] ; 6 uses
  %.15.i = phi ptr [ %i.mu, %LZ4_wildCopy8.exit ], [ %i.ms, %bb.bf ] ; 7 uses
  %i.nx = icmp ult ptr %.15.i, %i.kl
  br i1 %i.nx, label %iter.check577, label %.preheader124

iter.check577:                                    ; preds = %bb.bg
  %i.ny = add i64 %.11383.i, %.10.i518
  %i.nz = add i64 %i.s, %i.e
  %i.oa = add i64 %i.nz, -7
  %i.ob = add i64 %.10.i518, 8
  %umax557 = tail call i64 @llvm.umax.i64(i64 %i.oa, i64 %i.ob)
  %i.oc = sub i64 %i.ny, %umax557                 ; 7 uses
  %min.iters.check559 = icmp ult i64 %i.oc, 4
  br i1 %min.iters.check559, label %.lr.ph200.preheader, label %vector.memcheck555

vector.memcheck555:                               ; preds = %iter.check577
  %i.od = sub i64 %.10.i518, %.3365.i519
  %i.oe = add i64 %i.od, 7
  %diff.check556 = icmp ult i64 %i.oe, 31
  br i1 %diff.check556, label %.lr.ph200.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck555
  %min.iters.check561 = icmp ult i64 %i.oc, 32
  br i1 %min.iters.check561, label %vec.epilog.ph581, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %n.mod.vf563 = and i64 %i.oc, 28
  %n.vec564 = and i64 %i.oc, -32                  ; 5 uses
  %i.of = getelementptr i8, ptr %.15.i, i64 %n.vec564
  %i.og = getelementptr i8, ptr %.4366.i, i64 %n.vec564
  br label %vector.body565

vector.body565:                                   ; preds = %vector.body565, %vector.ph562
  %index566 = phi i64 [ 0, %vector.ph562 ], [ %index.next571, %vector.body565 ] ; 3 uses
  %next.gep567 = getelementptr i8, ptr %.15.i, i64 %index566 ; 2 uses
  %next.gep568 = getelementptr i8, ptr %.4366.i, i64 %index566 ; 2 uses
  %i.oh = getelementptr i8, ptr %next.gep568, i64 16
  %wide.load569 = load <16 x i8>, ptr %next.gep568, align 1, !tbaa !8
  %wide.load570 = load <16 x i8>, ptr %i.oh, align 1, !tbaa !8
  %i.oi = getelementptr i8, ptr %next.gep567, i64 16
  store <16 x i8> %wide.load569, ptr %next.gep567, align 1, !tbaa !8
  store <16 x i8> %wide.load570, ptr %i.oi, align 1, !tbaa !8
  %index.next571 = add nuw i64 %index566, 32      ; 2 uses
  %i.oj = icmp eq i64 %index.next571, %n.vec564
  br i1 %i.oj, label %middle.block572, label %vector.body565, !llvm.loop !149

middle.block572:                                  ; preds = %vector.body565
  %cmp.n573 = icmp eq i64 %i.oc, %n.vec564
  br i1 %cmp.n573, label %.preheader124, label %vec.epilog.iter.check579

vec.epilog.iter.check579:                         ; preds = %middle.block572
  %min.epilog.iters.check580 = icmp eq i64 %n.mod.vf563, 0
  br i1 %min.epilog.iters.check580, label %.lr.ph200.preheader, label %vec.epilog.ph581, !prof !96

vec.epilog.ph581:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check579
  %vec.epilog.resume.val574 = phi i64 [ %n.vec564, %vec.epilog.iter.check579 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec583 = and i64 %i.oc, -4                   ; 4 uses
  %i.ok = getelementptr i8, ptr %.15.i, i64 %n.vec583
  %i.ol = getelementptr i8, ptr %.4366.i, i64 %n.vec583
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph581
  %index585 = phi i64 [ %vec.epilog.resume.val574, %vec.epilog.ph581 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %next.gep586 = getelementptr i8, ptr %.15.i, i64 %index585
  %next.gep587 = getelementptr i8, ptr %.4366.i, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %next.gep587, align 1, !tbaa !8
  store <4 x i8> %wide.load588, ptr %next.gep586, align 1, !tbaa !8
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.om = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.om, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !150

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  %cmp.n591 = icmp eq i64 %i.oc, %n.vec583
  br i1 %cmp.n591, label %.preheader124, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %vector.memcheck555, %iter.check577, %vec.epilog.iter.check579, %vec.epilog.middle.block590
  %.16.i198.ph = phi ptr [ %.15.i, %iter.check577 ], [ %.15.i, %vector.memcheck555 ], [ %i.of, %vec.epilog.iter.check579 ], [ %i.ok, %vec.epilog.middle.block590 ]
  %.5367.i197.ph = phi ptr [ %.4366.i, %iter.check577 ], [ %.4366.i, %vector.memcheck555 ], [ %i.og, %vec.epilog.iter.check579 ], [ %i.ol, %vec.epilog.middle.block590 ]
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.lr.ph200
  %.16.i198 = phi ptr [ %i.op, %.lr.ph200 ], [ %.16.i198.ph, %.lr.ph200.preheader ] ; 2 uses
  %.5367.i197 = phi ptr [ %i.on, %.lr.ph200 ], [ %.5367.i197.ph, %.lr.ph200.preheader ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.5367.i197, i64 1
  %i.oo = load i8, ptr %.5367.i197, align 1, !tbaa !8
  %i.op = getelementptr inbounds nuw i8, ptr %.16.i198, i64 1 ; 2 uses
  store i8 %i.oo, ptr %.16.i198, align 1, !tbaa !8
  %i.oq = icmp ult ptr %i.op, %i.kl
  br i1 %i.oq, label %.lr.ph200, label %.preheader124, !llvm.loop !151

bb.bh:                                            ; preds = %bb.bd
  %i.or = load i64, ptr %.3365.i, align 1
  store i64 %i.or, ptr %i.ms, align 1
  %i.os = icmp ugt i64 %.11383.i, 16
  br i1 %i.os, label %bb.bi, label %.preheader124

bb.bi:                                            ; preds = %bb.bh
  %i.ot = getelementptr inbounds nuw i8, ptr %.10.i, i64 16 ; 4 uses
  %i.ou = add i64 %.11383.i, %.10.i518
  %i.ov = add i64 %.10.i518, 24
  %i.ow = tail call i64 @llvm.umax.i64(i64 %i.ou, i64 %i.ov)
  %i.ox = sub i64 %i.ow, %.10.i518
  %i.oy = add i64 %i.ox, -17                      ; 2 uses
  %i.oz = lshr i64 %i.oy, 3
  %i.pa = add nuw nsw i64 %i.oz, 1                ; 2 uses
  %min.iters.check522 = icmp ult i64 %i.oy, 104
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.memcheck517

vector.memcheck517:                               ; preds = %bb.bi
  %i.pb = sub i64 %.10.i518, %.3365.i519
  %i.pc = add i64 %i.pb, 7
  %diff.check520 = icmp ult i64 %i.pc, 31
  br i1 %diff.check520, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %vector.memcheck517
  %n.vec525 = and i64 %i.pa, 4611686018427387900  ; 3 uses
  %i.pd = shl i64 %n.vec525, 3                    ; 2 uses
  %i.pe = getelementptr i8, ptr %.3365.i, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.ot, i64 %i.pd
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph523
  %index527 = phi i64 [ 0, %vector.ph523 ], [ %index.next532, %vector.body526 ] ; 2 uses
  %i.pg = shl i64 %index527, 3                    ; 2 uses
  %next.gep528 = getelementptr i8, ptr %.3365.i, i64 %i.pg ; 2 uses
  %next.gep529 = getelementptr i8, ptr %i.ot, i64 %i.pg ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep528, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %next.gep528, i64 24
  %wide.load530 = load <2 x i64>, ptr %i.ph, align 1
  %wide.load531 = load <2 x i64>, ptr %i.pi, align 1
  %i.pj = getelementptr i8, ptr %next.gep529, i64 16
  store <2 x i64> %wide.load530, ptr %next.gep529, align 1
  store <2 x i64> %wide.load531, ptr %i.pj, align 1
  %index.next532 = add nuw i64 %index527, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next532, %n.vec525
  br i1 %i.pk, label %middle.block533, label %vector.body526, !llvm.loop !152

middle.block533:                                  ; preds = %vector.body526
  %cmp.n534 = icmp eq i64 %i.pa, %n.vec525
  br i1 %cmp.n534, label %.preheader124, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %vector.memcheck517, %bb.bi, %middle.block533
  %.3365.i.pn.ph = phi ptr [ %.3365.i, %vector.memcheck517 ], [ %.3365.i, %bb.bi ], [ %i.pe, %middle.block533 ]
  %.0.i8.ph = phi ptr [ %i.ot, %vector.memcheck517 ], [ %i.ot, %bb.bi ], [ %i.pf, %middle.block533 ]
  br label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.preheader, %scalar.ph521
  %.3365.i.pn = phi ptr [ %.09.i7, %scalar.ph521 ], [ %.3365.i.pn.ph, %scalar.ph521.preheader ]
  %.0.i8 = phi ptr [ %i.pm, %scalar.ph521 ], [ %.0.i8.ph, %scalar.ph521.preheader ] ; 2 uses
  %.09.i7 = getelementptr inbounds nuw i8, ptr %.3365.i.pn, i64 8 ; 2 uses
  %i.pl = load i64, ptr %.09.i7, align 1
  store i64 %i.pl, ptr %.0.i8, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8 ; 2 uses
  %i.pn = icmp ult ptr %i.pm, %i.kl
  br i1 %i.pn, label %scalar.ph521, label %.preheader124, !llvm.loop !153

.preheader124:                                    ; preds = %scalar.ph521, %.lr.ph200, %.lr.ph203, %bb.bh, %bb.bg, %vec.epilog.middle.block590, %middle.block572, %middle.block533, %bb.ax, %bb.az, %vec.epilog.middle.block629, %middle.block611, %bb.f
  %.3.ph = phi ptr [ %.2, %bb.ax ], [ %0, %bb.f ], [ %.2, %middle.block611 ], [ %.2, %vec.epilog.middle.block629 ], [ %.2, %bb.bh ], [ %.2, %bb.az ], [ %.2, %middle.block533 ], [ %.2, %.lr.ph203 ], [ %.2, %middle.block572 ], [ %.2, %vec.epilog.middle.block590 ], [ %.2, %.lr.ph200 ], [ %.2, %bb.bg ], [ %.2, %scalar.ph521 ] ; 3 uses
  %.6.i.ph = phi ptr [ %i.kl, %bb.ax ], [ %1, %bb.f ], [ %i.lh, %middle.block611 ], [ %i.lm, %vec.epilog.middle.block629 ], [ %i.kl, %bb.bh ], [ %i.kl, %bb.az ], [ %i.kl, %middle.block533 ], [ %i.lr, %.lr.ph203 ], [ %i.kl, %middle.block572 ], [ %i.kl, %vec.epilog.middle.block590 ], [ %i.kl, %.lr.ph200 ], [ %i.kl, %bb.bg ], [ %i.kl, %scalar.ph521 ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.pp = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.pq = zext i8 %i.pp to i32                    ; 3 uses
  %i.pr = lshr i32 %i.pq, 4                       ; 2 uses
  %cond.i190 = icmp eq i32 %i.pr, 15
  br i1 %cond.i190, label %._crit_edge, label %.lr.ph192

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %read_variable_length.exit17.thread81, %bb.g, %read_variable_length.exit.thread64, %read_variable_length.exit, %bb.u, %.thread89, %.preheader134, %.preheader131, %.preheader123, %.preheader121, %bb.aq, %._crit_edge, %read_variable_length.exit22, %read_variable_length.exit22.thread96, %bb.be, %bb.av, %.loopexit139, %read_variable_length.exit26, %bb.ao
  %.7 = phi ptr [ %.4, %bb.ao ], [ %.2, %.loopexit139 ], [ %.1599, %read_variable_length.exit22.thread96 ], [ %.2, %bb.av ], [ %.17, %read_variable_length.exit26 ], [ %i.jw, %.preheader121 ], [ %i.hs, %read_variable_length.exit22 ], [ %.2, %bb.be ], [ %i.js, %bb.aq ], [ %i.aj, %.preheader134 ], [ %.lcssa150, %._crit_edge ], [ %i.hs, %.preheader123 ], [ %i.bs, %.preheader131 ], [ %i.bs, %read_variable_length.exit17 ], [ %.1384, %read_variable_length.exit17.thread81 ], [ %i.ab, %bb.g ], [ %.1167, %read_variable_length.exit.thread64 ], [ %i.aj, %read_variable_length.exit ], [ %.8, %bb.u ], [ %.8, %.thread89 ], [ %i.bo, %bb.m ]
  %i.ps = ptrtoint ptr %.7 to i64
  %i.pt = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.pt, %i.ps
  %i.pu = trunc i64 %.neg.i to i32
  %i.pv = add nsw i32 %i.pu, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ap, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.jf, %bb.ap ], [ %i.q, %bb.d ], [ -1, %bb.e ], [ %i.pv, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #1 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 11 uses
  %i.h = icmp eq ptr %5, null
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %i.j = select i1 %i.h, ptr null, ptr %i.i       ; 4 uses
  %i.k = icmp ult i64 %6, 65536                   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.n = icmp eq i32 %i.a, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %LZ4_decompress_generic.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.q = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.r = icmp samesign ult i32 %i.a, 64
  br i1 %i.r, label %.preheader131, label %.preheader142

.preheader142:                                    ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.v = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.y = add i64 %i.q, 1
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader142
  %.0 = phi ptr [ %0, %.preheader142 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0358.i = phi ptr [ %1, %.preheader142 ], [ %.0358.i.be, %.backedge.backedge ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.aa = load i8, ptr %.0, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  %i.ac = lshr i32 %i.ab, 4                       ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.ae = icmp eq i32 %i.ac, 15
  br i1 %i.ae, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.z, %i.t
  br i1 %.not22.i, label %bb.f, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.f:                                             ; preds = %bb.e
  %7 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.z, align 1, !tbaa !8    ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %.not23.i = icmp eq i8 %i.af, -1
  br i1 %.not23.i, label %.preheader140, label %read_variable_length.exit.thread68, !prof !20

.preheader140:                                    ; preds = %bb.f, %bb.g
  %.11 = phi ptr [ %i.ah, %bb.g ], [ %7, %bb.f ]  ; 2 uses
  %.0.i17 = phi i64 [ %i.al, %bb.g ], [ 255, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 5 uses
  %i.ai = icmp ugt ptr %i.ah, %i.t
  br i1 %i.ai, label %LZ4_wildCopy32.exit.thread, label %bb.g, !prof !20

bb.g:                                             ; preds = %.preheader140
  %i.aj = load i8, ptr %.11, align 1, !tbaa !8    ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = add i64 %.0.i17, %i.ak                  ; 3 uses
  %i.am = icmp eq i8 %i.aj, -1
  br i1 %i.am, label %.preheader140, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.g
  %i.an = icmp eq i64 %i.al, -1
  br i1 %i.an, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread68

read_variable_length.exit.thread68:               ; preds = %bb.f, %read_variable_length.exit
  %.019.i72 = phi i64 [ %i.al, %read_variable_length.exit ], [ %i.ag, %bb.f ]
  %.1271 = phi ptr [ %i.ah, %read_variable_length.exit ], [ %7, %bb.f ] ; 5 uses
  %i.ao = add i64 %.019.i72, 15                   ; 5 uses
  %i.ap = ptrtoint ptr %.0358.i to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  %i.as = ptrtoint ptr %.1271 to i64
  %i.at = xor i64 %i.as, -1
  %i.au = icmp ugt i64 %i.ao, %i.at
  %or.cond = or i1 %i.ar, %i.au
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.h, !prof !84

bb.h:                                             ; preds = %read_variable_length.exit.thread68
  %i.av = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.ao ; 3 uses
  %i.aw = icmp ugt ptr %i.av, %i.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.1271, i64 %i.ao ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.u
  %or.cond449.i = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader139

.preheader139:                                    ; preds = %bb.h, %.preheader139
  %.011.i = phi ptr [ %i.bc, %.preheader139 ], [ %.1271, %bb.h ] ; 3 uses
  %.0.i31 = phi ptr [ %i.bb, %.preheader139 ], [ %.0358.i, %bb.h ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i31, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.bd = icmp ult ptr %i.bb, %i.av
  br i1 %i.bd, label %.preheader139, label %LZ4_wildCopy32.exit.thread77, !llvm.loop !85

bb.i:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.z, %i.s
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i, ptr noundef nonnull align 1 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.bf = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.ad
  br label %LZ4_wildCopy32.exit.thread77

LZ4_wildCopy32.exit.thread77:                     ; preds = %.preheader139, %bb.j
  %.1 = phi ptr [ %i.be, %bb.j ], [ %i.ax, %.preheader139 ] ; 3 uses
  %.2.i = phi ptr [ %i.bf, %bb.j ], [ %i.av, %.preheader139 ] ; 32 uses
  %.2.i450 = ptrtoaddr ptr %.2.i to i64           ; 8 uses
  %.val38 = load i16, ptr %.1, align 1, !tbaa !27 ; 6 uses
  %i.bg = zext i16 %.val38 to i64                 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bi = sub nsw i64 0, %i.bg
  %i.bj = getelementptr inbounds i8, ptr %.2.i, i64 %i.bi ; 20 uses
  %i.bk = and i32 %i.ab, 15                       ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 15
  br i1 %i.bl, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread77
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bn = icmp ugt ptr %i.bm, %i.w
  br i1 %i.bn, label %LZ4_wildCopy32.exit.thread, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !8   ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %.not23.i18 = icmp eq i8 %i.bo, -1
  br i1 %.not23.i18, label %.preheader137, label %read_variable_length.exit21.thread85, !prof !20

.preheader137:                                    ; preds = %bb.l, %bb.m
  %.13 = phi ptr [ %i.bq, %bb.m ], [ %i.bm, %bb.l ] ; 2 uses
  %.0.i20 = phi i64 [ %i.bu, %bb.m ], [ 255, %bb.l ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.13, i64 1 ; 5 uses
  %i.br = icmp ugt ptr %i.bq, %i.w
  br i1 %i.br, label %LZ4_wildCopy32.exit.thread, label %bb.m, !prof !20

bb.m:                                             ; preds = %.preheader137
  %i.bs = load i8, ptr %.13, align 1, !tbaa !8    ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = add i64 %.0.i20, %i.bt                  ; 3 uses
  %i.bv = icmp eq i8 %i.bs, -1
  br i1 %i.bv, label %.preheader137, label %read_variable_length.exit21, !llvm.loop !83

read_variable_length.exit21:                      ; preds = %bb.m
  %i.bw = icmp eq i64 %i.bu, -1
  br i1 %i.bw, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit21.thread85

read_variable_length.exit21.thread85:             ; preds = %bb.l, %read_variable_length.exit21
  %.019.i1989 = phi i64 [ %i.bu, %read_variable_length.exit21 ], [ %i.bp, %bb.l ]
  %.1488 = phi ptr [ %i.bq, %read_variable_length.exit21 ], [ %i.bm, %bb.l ] ; 3 uses
  %i.bx = add i64 %.019.i1989, 19                 ; 4 uses
  %i.by = ptrtoint ptr %.2.i to i64
  %i.bz = xor i64 %i.by, -1
  %i.ca = icmp ugt i64 %i.bx, %i.bz
  br i1 %i.ca, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %read_variable_length.exit21.thread85
  %i.cb = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.bx
  %.not435.i = icmp ult ptr %i.cb, %i.v
  br i1 %.not435.i, label %.thread93, label %.loopexit145

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread77
  %narrow.i = add nuw nsw i32 %i.bk, 4
  %i.cc = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.cc ; 2 uses
  %.not434.i = icmp ult ptr %i.cd, %i.v
  br i1 %.not434.i, label %bb.p, label %.loopexit145

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp uge ptr %i.bj, %1
  %i.cf = icmp ugt i16 %.val38, 7
  %or.cond5.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread93

bb.q:                                             ; preds = %bb.p
  %i.cg = load i64, ptr %i.bj, align 1
  store i64 %i.cg, ptr %.2.i, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cj = load i64, ptr %i.ci, align 1
  store i64 %i.cj, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cm = load i16, ptr %i.cl, align 1
  store i16 %i.cm, ptr %i.ck, align 1
  br label %.backedge.backedge

.thread93:                                        ; preds = %bb.n, %bb.p
  %.9 = phi ptr [ %i.bh, %bb.p ], [ %.1488, %bb.n ] ; 12 uses
  %.2374.i = phi i64 [ %i.cc, %bb.p ], [ %i.bx, %bb.n ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %6
  %i.co = icmp ult ptr %i.cn, %1
  %or.cond452.i = select i1 %i.k, i1 %i.co, i1 false, !prof !86
  br i1 %or.cond452.i, label %LZ4_wildCopy32.exit.thread, label %bb.r, !prof !86

bb.r:                                             ; preds = %.thread93
  %i.cp = icmp ult ptr %i.bj, %1
  %i.cq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.2374.i ; 10 uses
  br i1 %i.cp, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cr = icmp ugt ptr %i.cq, %i.x
  br i1 %i.cr, label %bb.t, label %bb.u, !prof !20

bb.t:                                             ; preds = %bb.s
  %i.cs = ptrtoint ptr %.2.i to i64
  %i.ct = sub i64 %i.p, %i.cs
  %i.cu = tail call i64 @llvm.umin.i64(i64 %.2374.i, i64 %i.ct)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3375.i = phi i64 [ %i.cu, %bb.t ], [ %.2374.i, %bb.s ] ; 7 uses
  %i.cv = ptrtoint ptr %i.bj to i64
  %i.cw = sub i64 %i.q, %i.cv                     ; 6 uses
  %.not437.i = icmp ugt i64 %.3375.i, %i.cw
  br i1 %.not437.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = sub i64 0, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.j, i64 %i.cx
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2.i, ptr align 1 %i.cy, i64 %.3375.i, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.3375.i
  br label %.backedge.backedge

bb.w:                                             ; preds = %bb.u
  %i.da = sub nuw i64 %.3375.i, %i.cw             ; 2 uses
  %i.db = sub i64 0, %i.cw
  %i.dc = getelementptr inbounds i8, ptr %i.j, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2.i, ptr align 1 %i.dc, i64 %i.cw, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.cw ; 7 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.q
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %iter.check, label %bb.x

iter.check:                                       ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.3375.i
  %i.di = add i64 %i.y, %i.bg
  %i.dj = add i64 %.3375.i, %.2.i450
  %umax = tail call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dj)
  %i.dk = add i64 %i.q, %i.bg
  %i.dl = sub i64 %umax, %i.dk                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  %i.dm = add i16 %.val38, -1
  %diff.check = icmp ult i16 %i.dm, 31
  %or.cond616 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond616, label %.lr.ph195.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i64 %i.dl, 32
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dl, 28
  %n.vec = and i64 %i.dl, -32                     ; 5 uses
  %i.dn = getelementptr i8, ptr %i.dd, i64 %n.vec ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %index ; 2 uses
  %next.gep452 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep452, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep452, align 1, !tbaa !8
end_hunk_5
begin_hunk_6_@LZ4_decompress_safe_partial_forceExtDict:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ez = load i64, ptr %i.bj, align 1
  store i64 %i.ez, ptr %.2.i, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.023.i = phi ptr [ %i.ey, %bb.ae ], [ %i.fa, %bb.af ] ; 5 uses
  %.0.i36 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.fb = add i64 %.2374.i, %.2.i450
  %i.fc = add i64 %.2.i450, 16
  %i.fd = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fc)
  %i.fe = sub i64 %i.fd, %.2.i450
  %i.ff = add i64 %i.fe, -9                       ; 2 uses
  %i.fg = lshr i64 %i.ff, 3
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check468 = icmp ult i64 %i.ff, 56
  br i1 %min.iters.check468, label %scalar.ph.preheader, label %vector.memcheck465

vector.memcheck465:                               ; preds = %bb.ag
  %.023.i466 = ptrtoaddr ptr %.023.i to i64
  %i.fi = sub i64 %.2.i450, %.023.i466
  %i.fj = add i64 %i.fi, 7
  %diff.check467 = icmp ult i64 %i.fj, 31
  br i1 %diff.check467, label %scalar.ph.preheader, label %vector.ph469

vector.ph469:                                     ; preds = %vector.memcheck465
  %n.vec471 = and i64 %i.fh, 4611686018427387900  ; 3 uses
  %i.fk = shl i64 %n.vec471, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %.023.i, i64 %i.fk
  %i.fm = getelementptr i8, ptr %.0.i36, i64 %i.fk
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph469
  %index473 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %i.fn = shl i64 %index473, 3                    ; 2 uses
  %next.gep474 = getelementptr i8, ptr %.023.i, i64 %i.fn ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.0.i36, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep474, i64 16
  %wide.load476 = load <2 x i64>, ptr %next.gep474, align 1
  %wide.load477 = load <2 x i64>, ptr %i.fo, align 1
  %i.fp = getelementptr i8, ptr %next.gep475, i64 16
  store <2 x i64> %wide.load476, ptr %next.gep475, align 1
  store <2 x i64> %wide.load477, ptr %i.fp, align 1
  %index.next478 = add nuw i64 %index473, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.fq, label %middle.block479, label %vector.body472, !llvm.loop !157

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.fh, %n.vec471
  br i1 %cmp.n480, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck465, %bb.ag, %middle.block479
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck465 ], [ %.023.i, %bb.ag ], [ %i.fl, %middle.block479 ]
  %.0.i.i.ph = phi ptr [ %.0.i36, %vector.memcheck465 ], [ %.0.i36, %bb.ag ], [ %i.fm, %middle.block479 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.ft, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.fs, %scalar.ph ], [ %.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fr = load i64, ptr %.09.i.i, align 1
  store i64 %i.fr, ptr %.0.i.i, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.fu = icmp ult ptr %i.fs, %i.cq
  br i1 %i.fu, label %scalar.ph, label %.backedge.backedge, !llvm.loop !158

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.aa ], [ %.sroa.0.2.insert.insert.i, %bb.ab ], [ %.sroa.0.0.copyload2.i, %bb.ac ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.fv = icmp samesign ugt i64 %.2374.i, 8
  br i1 %i.fv, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ah
  %.0.i35190 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.fw = add i64 %.2374.i, %.2.i450
  %i.fx = add i64 %.2.i450, 16
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.fx)
  %i.fz = sub i64 %i.fy, %.2.i450
  %i.ga = add i64 %i.fz, -9                       ; 2 uses
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check483 = icmp ult i64 %i.ga, 24
  br i1 %min.iters.check483, label %.lr.ph.preheader654, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph.preheader
  %n.vec486 = and i64 %i.gc, 4611686018427387900  ; 3 uses
  %i.gd = shl i64 %n.vec486, 3                    ; 2 uses
  %i.ge = getelementptr i8, ptr %.0.i35190, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.2.i, i64 %i.gd
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.gg = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body487 ] ; 2 uses
  %i.gh = shl i64 %index488, 3                    ; 2 uses
  %next.gep489 = getelementptr i8, ptr %.0.i35190, i64 %i.gh
  %i.gi = getelementptr i8, ptr %.0.i35190, i64 %i.gh
  %next.gep490 = getelementptr i8, ptr %i.gi, i64 16
  store <4 x i32> %i.gg, ptr %next.gep489, align 1
  store <4 x i32> %i.gg, ptr %next.gep490, align 1
  %index.next492 = add nuw i64 %index488, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next492, %n.vec486
  br i1 %i.gj, label %middle.block493, label %vector.body487, !llvm.loop !159

middle.block493:                                  ; preds = %vector.body487
  %cmp.n494 = icmp eq i64 %i.gc, %n.vec486
  br i1 %cmp.n494, label %.backedge.backedge, label %.lr.ph.preheader654

.backedge.backedge:                               ; preds = %.preheader135, %.lr.ph, %scalar.ph, %.lr.ph195, %middle.block493, %middle.block479, %middle.block, %vec.epilog.middle.block, %bb.ah, %bb.v, %bb.x, %bb.q
  %.0.be = phi ptr [ %i.bh, %bb.q ], [ %.9, %bb.v ], [ %.9, %middle.block479 ], [ %.9, %middle.block493 ], [ %.9, %bb.x ], [ %.9, %middle.block ], [ %.9, %bb.ah ], [ %.9, %scalar.ph ], [ %.9, %vec.epilog.middle.block ], [ %.9, %.lr.ph ], [ %.9, %.lr.ph195 ], [ %.9, %.preheader135 ]
  %.0358.i.be = phi ptr [ %i.cd, %bb.q ], [ %i.cz, %bb.v ], [ %i.cq, %middle.block479 ], [ %i.cq, %middle.block493 ], [ %i.dz, %bb.x ], [ %i.dn, %middle.block ], [ %i.cq, %bb.ah ], [ %i.cq, %scalar.ph ], [ %i.ds, %vec.epilog.middle.block ], [ %i.cq, %.lr.ph ], [ %i.dx, %.lr.ph195 ], [ %i.cq, %.preheader135 ]
  br label %.backedge

.lr.ph.preheader654:                              ; preds = %.lr.ph.preheader, %middle.block493
  %.0.i35192.ph = phi ptr [ %.0.i35190, %.lr.ph.preheader ], [ %i.ge, %middle.block493 ]
  %.pn.i191.ph = phi ptr [ %.2.i, %.lr.ph.preheader ], [ %i.gf, %middle.block493 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader654, %.lr.ph
  %.0.i35192 = phi ptr [ %.0.i35, %.lr.ph ], [ %.0.i35192.ph, %.lr.ph.preheader654 ] ; 3 uses
  %.pn.i191 = phi ptr [ %.0.i35192, %.lr.ph ], [ %.pn.i191.ph, %.lr.ph.preheader654 ]
  store i32 %.sroa.9.0.i, ptr %.0.i35192, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i191, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i35 = getelementptr inbounds nuw i8, ptr %.0.i35192, i64 8 ; 2 uses
  %i.gk = icmp ult ptr %.0.i35, %i.cq
  br i1 %i.gk, label %.lr.ph, label %.backedge.backedge, !llvm.loop !160

.preheader135:                                    ; preds = %bb.y, %.preheader135
  %.011.i32 = phi ptr [ %i.go, %.preheader135 ], [ %i.bj, %bb.y ] ; 3 uses
  %.0.i33 = phi ptr [ %i.gn, %.preheader135 ], [ %.2.i, %bb.y ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i33, ptr noundef nonnull align 1 dereferenceable(16) %.011.i32, i64 16, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i33, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %.011.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gl, ptr noundef nonnull align 1 dereferenceable(16) %i.gm, i64 16, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i33, i64 32 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.011.i32, i64 32
  %i.gp = icmp ult ptr %i.gn, %i.cq
  br i1 %i.gp, label %.preheader135, label %.backedge.backedge, !llvm.loop !85

.lr.ph198:                                        ; preds = %.preheader131, %bb.aj
  %.in = phi i32 [ %i.hs, %bb.aj ], [ %i.pk, %.preheader131 ]
  %i.gq = phi i32 [ %i.hr, %bb.aj ], [ %i.pj, %.preheader131 ] ; 2 uses
  %i.gr = phi ptr [ %i.hp, %bb.aj ], [ %i.ph, %.preheader131 ] ; 4 uses
  %.6.i197 = phi ptr [ %i.ho, %bb.aj ], [ %.6.i.ph, %.preheader131 ] ; 4 uses
  %i.gs = zext nneg i32 %.in to i64               ; 3 uses
  %i.gt = icmp ult ptr %i.gr, %i.l
  %i.gu = icmp ule ptr %.6.i197, %i.m
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %bb.ai, label %LZ4_wildCopy32.exit, !prof !29

bb.ai:                                            ; preds = %.lr.ph198
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i197, ptr noundef nonnull align 1 dereferenceable(16) %i.gr, i64 16, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %.6.i197, i64 %i.gs ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs ; 3 uses
  %i.gy = and i32 %i.gq, 15                       ; 2 uses
  %i.gz = zext nneg i32 %i.gy to i64              ; 2 uses
  %.val = load i16, ptr %i.gx, align 1, !tbaa !27 ; 2 uses
  %i.ha = zext i16 %.val to i64                   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 3 uses
  %i.hc = sub nsw i64 0, %i.ha
  %i.hd = getelementptr inbounds i8, ptr %i.gw, i64 %i.hc ; 5 uses
  %i.he = icmp eq i32 %i.gy, 15
  %i.hf = icmp ult i16 %.val, 8
  %or.cond3.i.not124 = select i1 %i.he, i1 true, i1 %i.hf
  %.not442.i = icmp ult ptr %i.hd, %1
  %or.cond119 = select i1 %or.cond3.i.not124, i1 true, i1 %.not442.i
  br i1 %or.cond119, label %.loopexit132, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = load i64, ptr %i.hd, align 1
  store i64 %i.hg, ptr %i.gw, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hj = load i64, ptr %i.hi, align 1
  store i64 %i.hj, ptr %i.hh, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hm = load i16, ptr %i.hl, align 1
  store i16 %i.hm, ptr %i.hk, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gz
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 3 ; 2 uses
  %i.hq = load i8, ptr %i.hb, align 1, !tbaa !8
  %i.hr = zext i8 %i.hq to i32                    ; 3 uses
  %i.hs = lshr i32 %i.hr, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.hs, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph198

._crit_edge:                                      ; preds = %bb.aj, %.preheader131
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader131 ], [ %i.hb, %bb.aj ]
  %.6.i.lcssa = phi ptr [ %.6.i.ph, %.preheader131 ], [ %i.ho, %bb.aj ] ; 2 uses
  %.lcssa156 = phi ptr [ %i.ph, %.preheader131 ], [ %i.hp, %bb.aj ] ; 3 uses
  %.lcssa153 = phi i32 [ %i.pj, %.preheader131 ], [ %i.hr, %bb.aj ]
  %i.ht = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not22.i22 = icmp ult ptr %.lcssa156, %i.ht
  br i1 %.not22.i22, label %bb.ak, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.ak:                                            ; preds = %._crit_edge
  %8 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.hu = load i8, ptr %.lcssa156, align 1, !tbaa !8 ; 2 uses
  %i.hv = zext i8 %i.hu to i64
  %.not23.i24 = icmp eq i8 %i.hu, -1
  br i1 %.not23.i24, label %.preheader130, label %read_variable_length.exit26.thread100, !prof !20

.preheader130:                                    ; preds = %bb.ak, %bb.al
  %.15 = phi ptr [ %i.hw, %bb.al ], [ %8, %bb.ak ] ; 2 uses
  %.0.i25 = phi i64 [ %i.ia, %bb.al ], [ 255, %bb.ak ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.15, i64 1 ; 5 uses
  %i.hx = icmp ugt ptr %i.hw, %i.ht
  br i1 %i.hx, label %LZ4_wildCopy32.exit.thread, label %bb.al, !prof !20

bb.al:                                            ; preds = %.preheader130
  %i.hy = load i8, ptr %.15, align 1, !tbaa !8    ; 2 uses
  %i.hz = zext i8 %i.hy to i64
  %i.ia = add i64 %.0.i25, %i.hz                  ; 3 uses
  %i.ib = icmp eq i8 %i.hy, -1
  br i1 %i.ib, label %.preheader130, label %read_variable_length.exit26, !llvm.loop !83

read_variable_length.exit26:                      ; preds = %bb.al
  %i.ic = icmp eq i64 %i.ia, -1
  br i1 %i.ic, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit26.thread100

read_variable_length.exit26.thread100:            ; preds = %bb.ak, %read_variable_length.exit26
  %.019.i23104 = phi i64 [ %i.ia, %read_variable_length.exit26 ], [ %i.hv, %bb.ak ]
  %.16103 = phi ptr [ %i.hw, %read_variable_length.exit26 ], [ %8, %bb.ak ] ; 3 uses
  %i.id = add i64 %.019.i23104, 15                ; 3 uses
  %i.ie = ptrtoint ptr %.6.i.lcssa to i64
  %i.if = xor i64 %i.ie, -1
  %i.ig = icmp ugt i64 %i.id, %i.if
  %i.ih = ptrtoint ptr %.16103 to i64
  %i.ii = xor i64 %i.ih, -1
  %i.ij = icmp ugt i64 %i.id, %i.ii
  %or.cond122 = or i1 %i.ig, %i.ij
  br i1 %or.cond122, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.h, %bb.i, %.lr.ph198, %read_variable_length.exit26.thread100
  %.4 = phi ptr [ %.16103, %read_variable_length.exit26.thread100 ], [ %i.gr, %.lr.ph198 ], [ %i.z, %bb.i ], [ %.1271, %bb.h ] ; 10 uses
  %.5377.i = phi i64 [ %i.id, %read_variable_length.exit26.thread100 ], [ %i.gs, %.lr.ph198 ], [ %i.ad, %bb.i ], [ %i.ao, %bb.h ] ; 5 uses
  %.0371.i = phi i32 [ %.lcssa153, %read_variable_length.exit26.thread100 ], [ %i.gq, %.lr.ph198 ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ]
  %.7.i = phi ptr [ %.6.i.lcssa, %read_variable_length.exit26.thread100 ], [ %.6.i197, %.lr.ph198 ], [ %.0358.i, %bb.i ], [ %.0358.i, %bb.h ] ; 11 uses
  %.7.i498 = ptrtoaddr ptr %.7.i to i64           ; 4 uses
  %.4499 = ptrtoaddr ptr %.4 to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.5377.i ; 5 uses
  %i.il = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.im = icmp ugt ptr %i.ik, %i.il
  br i1 %i.im, label %bb.an, label %bb.am

bb.am:                                            ; preds = %LZ4_wildCopy32.exit
  %i.in = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i ; 3 uses
  %i.io = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.ip = icmp ugt ptr %i.in, %i.io
  br i1 %i.ip, label %bb.an, label %.preheader129.preheader

.preheader129.preheader:                          ; preds = %bb.am
  %i.iq = add nuw i64 %.5377.i, %.7.i498
  %i.ir = add i64 %.7.i498, 8
  %i.is = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 %i.ir)
  %i.it = xor i64 %.7.i498, -1
  %i.iu = add i64 %i.is, %i.it                    ; 2 uses
  %i.iv = lshr i64 %i.iu, 3
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check502 = icmp ult i64 %i.iu, 72
  %i.ix = sub i64 %.4499, %.7.i498
  %diff.check500 = icmp ugt i64 %i.ix, -32
  %or.cond617 = select i1 %min.iters.check502, i1 true, i1 %diff.check500
  br i1 %or.cond617, label %.preheader129.preheader624, label %vector.ph503

vector.ph503:                                     ; preds = %.preheader129.preheader
  %n.vec505 = and i64 %i.iw, 4611686018427387900  ; 3 uses
  %i.iy = shl i64 %n.vec505, 3                    ; 2 uses
  %i.iz = getelementptr i8, ptr %.4, i64 %i.iy
  %i.ja = getelementptr i8, ptr %.7.i, i64 %i.iy
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph503
  %index507 = phi i64 [ 0, %vector.ph503 ], [ %index.next512, %vector.body506 ] ; 2 uses
  %i.jb = shl i64 %index507, 3                    ; 2 uses
  %next.gep508 = getelementptr i8, ptr %.4, i64 %i.jb ; 2 uses
  %next.gep509 = getelementptr i8, ptr %.7.i, i64 %i.jb ; 2 uses
  %i.jc = getelementptr i8, ptr %next.gep508, i64 16
  %wide.load510 = load <2 x i64>, ptr %next.gep508, align 1
  %wide.load511 = load <2 x i64>, ptr %i.jc, align 1
  %i.jd = getelementptr i8, ptr %next.gep509, i64 16
  store <2 x i64> %wide.load510, ptr %next.gep509, align 1
  store <2 x i64> %wide.load511, ptr %i.jd, align 1
  %index.next512 = add nuw i64 %index507, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.je, label %middle.block513, label %vector.body506, !llvm.loop !161

middle.block513:                                  ; preds = %vector.body506
  %cmp.n514 = icmp eq i64 %i.iw, %n.vec505
  br i1 %cmp.n514, label %LZ4_wildCopy8.exit16, label %.preheader129.preheader624

.preheader129.preheader624:                       ; preds = %.preheader129.preheader, %middle.block513
  %.09.i14.ph = phi ptr [ %.4, %.preheader129.preheader ], [ %i.iz, %middle.block513 ]
  %.0.i15.ph = phi ptr [ %.7.i, %.preheader129.preheader ], [ %i.ja, %middle.block513 ]
  br label %.preheader129

bb.an:                                            ; preds = %bb.am, %LZ4_wildCopy32.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i
  %i.jg = icmp ugt ptr %i.jf, %i.e                ; 2 uses
  %i.jh = ptrtoint ptr %i.e to i64
  %i.ji = ptrtoint ptr %.4 to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.jj
  %.0360.i = select i1 %i.jg, ptr %i.jk, ptr %i.ik ; 2 uses
  %i.jl = icmp ugt ptr %.0360.i, %i.g
  br i1 %i.jl, label %.thread111, label %bb.ao

.thread111:                                       ; preds = %bb.an
  %i.jm = ptrtoint ptr %.7.i to i64
  %i.jn = sub i64 %i.p, %i.jm                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %i.jn, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.jn
  br label %bb.bi

bb.ao:                                            ; preds = %bb.an
  %.6378.i = select i1 %i.jg, i64 %i.jj, i64 %.5377.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %.6378.i, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.4, i64 %.6378.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.6378.i ; 2 uses
  %i.jr = icmp ne ptr %.0360.i, %i.g
  %i.js = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not441.i = icmp ult ptr %i.jp, %i.js
  %or.cond459.i = select i1 %i.jr, i1 %.not441.i, i1 false
  br i1 %or.cond459.i, label %LZ4_wildCopy8.exit16, label %bb.bi

.preheader129:                                    ; preds = %.preheader129.preheader624, %.preheader129
  %.09.i14 = phi ptr [ %i.jv, %.preheader129 ], [ %.09.i14.ph, %.preheader129.preheader624 ] ; 2 uses
  %.0.i15 = phi ptr [ %i.ju, %.preheader129 ], [ %.0.i15.ph, %.preheader129.preheader624 ] ; 2 uses
  %i.jt = load i64, ptr %.09.i14, align 1
  store i64 %i.jt, ptr %.0.i15, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.09.i14, i64 8
  %i.jw = icmp ult ptr %i.ju, %i.ik
  br i1 %i.jw, label %.preheader129, label %LZ4_wildCopy8.exit16, !llvm.loop !162

LZ4_wildCopy8.exit16:                             ; preds = %.preheader129, %middle.block513, %bb.ao
  %.5 = phi ptr [ %i.jp, %bb.ao ], [ %i.in, %middle.block513 ], [ %i.in, %.preheader129 ] ; 2 uses
  %.8.i = phi ptr [ %i.jq, %bb.ao ], [ %i.ik, %middle.block513 ], [ %i.ik, %.preheader129 ] ; 2 uses
  %.val37 = load i16, ptr %.5, align 1, !tbaa !27
  %i.jx = zext i16 %.val37 to i64                 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.jz = sub nsw i64 0, %i.jx
  %i.ka = getelementptr inbounds i8, ptr %.8.i, i64 %i.jz
  %i.kb = and i32 %.0371.i, 15
  %i.kc = zext nneg i32 %i.kb to i64
  br label %.loopexit132

.loopexit132:                                     ; preds = %bb.ai, %LZ4_wildCopy8.exit16
  %.6 = phi ptr [ %i.jy, %LZ4_wildCopy8.exit16 ], [ %i.hb, %bb.ai ] ; 3 uses
  %.8380.i = phi i64 [ %i.kc, %LZ4_wildCopy8.exit16 ], [ %i.gz, %bb.ai ] ; 2 uses
  %.0369.i = phi i64 [ %i.jx, %LZ4_wildCopy8.exit16 ], [ %i.ha, %bb.ai ]
  %.0362.i = phi ptr [ %i.ka, %LZ4_wildCopy8.exit16 ], [ %i.hd, %bb.ai ]
  %.9.i = phi ptr [ %.8.i, %LZ4_wildCopy8.exit16 ], [ %i.gw, %bb.ai ] ; 2 uses
  %i.kd = icmp eq i64 %.8380.i, 15
  br i1 %i.kd, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.loopexit132
  %i.ke = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 4 uses
  %i.kg = icmp ugt ptr %i.kf, %i.ke
  br i1 %i.kg, label %LZ4_wildCopy32.exit.thread, label %bb.aq, !prof !20

bb.aq:                                            ; preds = %bb.ap
  %i.kh = load i8, ptr %.6, align 1, !tbaa !8     ; 2 uses
  %i.ki = zext i8 %i.kh to i64
  %.not23.i27 = icmp eq i8 %i.kh, -1
  br i1 %.not23.i27, label %.preheader128, label %read_variable_length.exit30, !prof !20

.preheader128:                                    ; preds = %bb.aq, %bb.ar
  %.17 = phi ptr [ %i.kj, %bb.ar ], [ %i.kf, %bb.aq ] ; 2 uses
  %.0.i29 = phi i64 [ %i.kn, %bb.ar ], [ 255, %bb.aq ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.17, i64 1 ; 4 uses
  %i.kk = icmp ugt ptr %i.kj, %i.ke
  br i1 %i.kk, label %LZ4_wildCopy32.exit.thread, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %.preheader128
  %i.kl = load i8, ptr %.17, align 1, !tbaa !8    ; 2 uses
  %i.km = zext i8 %i.kl to i64
  %i.kn = add i64 %.0.i29, %i.km                  ; 2 uses
  %i.ko = icmp eq i8 %i.kl, -1
  br i1 %i.ko, label %.preheader128, label %read_variable_length.exit30, !llvm.loop !83

read_variable_length.exit30:                      ; preds = %bb.ar, %bb.aq
  %.18 = phi ptr [ %i.kf, %bb.aq ], [ %i.kj, %bb.ar ] ; 2 uses
  %.019.i28 = phi i64 [ %i.ki, %bb.aq ], [ %i.kn, %bb.ar ] ; 2 uses
  %i.kp = icmp ne i64 %.019.i28, -1               ; 2 uses
  %i.kq = add i64 %.019.i28, 15                   ; 2 uses
  %i.kr = ptrtoint ptr %.9.i to i64
  %i.ks = xor i64 %i.kr, -1
  %i.kt = icmp ule i64 %i.kq, %i.ks
  %.not126 = select i1 %i.kp, i1 %i.kt, i1 false
  %.9381.i = select i1 %i.kp, i64 %i.kq, i64 15
  br i1 %.not126, label %bb.as, label %LZ4_wildCopy32.exit.thread

bb.as:                                            ; preds = %read_variable_length.exit30, %.loopexit132
  %.7 = phi ptr [ %.18, %read_variable_length.exit30 ], [ %.6, %.loopexit132 ]
  %.10382.i = phi i64 [ %.9381.i, %read_variable_length.exit30 ], [ %.8380.i, %.loopexit132 ]
  %i.ku = add i64 %.10382.i, 4
  br label %.loopexit145

.loopexit145:                                     ; preds = %bb.n, %bb.o, %bb.as
  %.2 = phi ptr [ %.7, %bb.as ], [ %.1488, %bb.n ], [ %i.bh, %bb.o ] ; 10 uses
  %.11383.i = phi i64 [ %i.ku, %bb.as ], [ %i.bx, %bb.n ], [ %i.cc, %bb.o ] ; 6 uses
  %.1370.i = phi i64 [ %.0369.i, %bb.as ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ] ; 3 uses
  %.1363.i = phi ptr [ %.0362.i, %bb.as ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ] ; 18 uses
  %.10.i = phi ptr [ %.9.i, %bb.as ], [ %.2.i, %bb.o ], [ %.2.i, %bb.n ] ; 27 uses
  %.1363.i538 = ptrtoaddr ptr %.1363.i to i64     ; 3 uses
  %.10.i518 = ptrtoaddr ptr %.10.i to i64         ; 11 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %6
  %i.kw = icmp ult ptr %i.kv, %1
  %or.cond462.i = select i1 %i.k, i1 %i.kw, i1 false, !prof !86
  br i1 %or.cond462.i, label %LZ4_wildCopy32.exit.thread, label %bb.at, !prof !86

bb.at:                                            ; preds = %.loopexit145
  %i.kx = icmp ult ptr %.1363.i, %1
  %i.ky = getelementptr inbounds nuw i8, ptr %.10.i, i64 %.11383.i ; 6 uses
  br i1 %i.kx, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.kz = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.la = icmp ugt ptr %i.ky, %i.kz
  br i1 %i.la, label %bb.av, label %bb.aw, !prof !20

end_hunk_6
begin_hunk_7_@LZ4_decompress_safe_partial_forceExtDict:bb.a

vector.ph545:                                     ; preds = %vector.main.loop.iter.check543
  %n.mod.vf546 = and i64 %i.mw, 28
  %n.vec547 = and i64 %i.mw, -32                  ; 5 uses
  %i.my = getelementptr i8, ptr %.10.i, i64 %n.vec547
  %i.mz = getelementptr i8, ptr %.1363.i, i64 %n.vec547
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph545
  %index549 = phi i64 [ 0, %vector.ph545 ], [ %index.next554, %vector.body548 ] ; 3 uses
  %next.gep550 = getelementptr i8, ptr %.10.i, i64 %index549 ; 2 uses
  %next.gep551 = getelementptr i8, ptr %.1363.i, i64 %index549 ; 2 uses
  %i.na = getelementptr i8, ptr %next.gep551, i64 16
  %wide.load552 = load <16 x i8>, ptr %next.gep551, align 1, !tbaa !8
  %wide.load553 = load <16 x i8>, ptr %i.na, align 1, !tbaa !8
  %i.nb = getelementptr i8, ptr %next.gep550, i64 16
  store <16 x i8> %wide.load552, ptr %next.gep550, align 1, !tbaa !8
  store <16 x i8> %wide.load553, ptr %i.nb, align 1, !tbaa !8
  %index.next554 = add nuw i64 %index549, 32      ; 2 uses
  %i.nc = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.nc, label %middle.block555, label %vector.body548, !llvm.loop !166

middle.block555:                                  ; preds = %vector.body548
  %cmp.n556 = icmp eq i64 %i.mw, %n.vec547
  br i1 %cmp.n556, label %.loopexit127, label %vec.epilog.iter.check562

vec.epilog.iter.check562:                         ; preds = %middle.block555
  %min.epilog.iters.check563 = icmp eq i64 %n.mod.vf546, 0
  br i1 %min.epilog.iters.check563, label %.lr.ph205.preheader, label %vec.epilog.ph564, !prof !96

vec.epilog.ph564:                                 ; preds = %vector.main.loop.iter.check543, %vec.epilog.iter.check562
  %vec.epilog.resume.val557 = phi i64 [ %n.vec547, %vec.epilog.iter.check562 ], [ 0, %vector.main.loop.iter.check543 ]
  %n.vec566 = and i64 %i.mw, -4                   ; 4 uses
  %i.nd = getelementptr i8, ptr %.10.i, i64 %n.vec566
  %i.ne = getelementptr i8, ptr %.1363.i, i64 %n.vec566
  br label %vec.epilog.vector.body567

vec.epilog.vector.body567:                        ; preds = %vec.epilog.vector.body567, %vec.epilog.ph564
  %index568 = phi i64 [ %vec.epilog.resume.val557, %vec.epilog.ph564 ], [ %index.next572, %vec.epilog.vector.body567 ] ; 3 uses
  %next.gep569 = getelementptr i8, ptr %.10.i, i64 %index568
  %next.gep570 = getelementptr i8, ptr %.1363.i, i64 %index568
  %wide.load571 = load <4 x i8>, ptr %next.gep570, align 1, !tbaa !8
  store <4 x i8> %wide.load571, ptr %next.gep569, align 1, !tbaa !8
  %index.next572 = add nuw i64 %index568, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next572, %n.vec566
  br i1 %i.nf, label %vec.epilog.middle.block573, label %vec.epilog.vector.body567, !llvm.loop !167

vec.epilog.middle.block573:                       ; preds = %vec.epilog.vector.body567
  %cmp.n574 = icmp eq i64 %i.mw, %n.vec566
  br i1 %cmp.n574, label %.loopexit127, label %.lr.ph205.preheader

.lr.ph205.preheader:                              ; preds = %iter.check560, %vec.epilog.iter.check562, %vec.epilog.middle.block573
  %.14.i204.ph = phi ptr [ %.10.i, %iter.check560 ], [ %i.my, %vec.epilog.iter.check562 ], [ %i.nd, %vec.epilog.middle.block573 ]
  %.2364.i203.ph = phi ptr [ %.1363.i, %iter.check560 ], [ %i.mz, %vec.epilog.iter.check562 ], [ %i.ne, %vec.epilog.middle.block573 ]
  br label %.lr.ph205

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %.lr.ph205
  %.14.i204 = phi ptr [ %i.ni, %.lr.ph205 ], [ %.14.i204.ph, %.lr.ph205.preheader ] ; 2 uses
  %.2364.i203 = phi ptr [ %i.ng, %.lr.ph205 ], [ %.2364.i203.ph, %.lr.ph205.preheader ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.2364.i203, i64 1
  %i.nh = load i8, ptr %.2364.i203, align 1, !tbaa !8
  %i.ni = getelementptr inbounds nuw i8, ptr %.14.i204, i64 1 ; 2 uses
  store i8 %i.nh, ptr %.14.i204, align 1, !tbaa !8
  %i.nj = icmp ult ptr %i.ni, %i.ms
  br i1 %i.nj, label %.lr.ph205, label %.loopexit127, !llvm.loop !168

bb.bc:                                            ; preds = %bb.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10.i, ptr align 1 %.1363.i, i64 %i.mq, i1 false)
  br label %.loopexit127

.loopexit127:                                     ; preds = %.lr.ph205, %middle.block555, %vec.epilog.middle.block573, %.preheader, %bb.bc
  %i.nk = icmp eq ptr %i.ms, %i.g
  br i1 %i.nk, label %bb.bi, label %.preheader131

bb.bd:                                            ; preds = %bb.ba
  %i.nl = icmp ult i64 %.1370.i, 8
  br i1 %i.nl, label %bb.be, label %bb.bf, !prof !20

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %.10.i, align 1, !tbaa !16
  %i.nm = load i8, ptr %.1363.i, align 1, !tbaa !8
  store i8 %i.nm, ptr %.10.i, align 1, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %.1363.i, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %.10.i, i64 1
  store i8 %i.no, ptr %i.np, align 1, !tbaa !8
  %i.nq = getelementptr inbounds nuw i8, ptr %.1363.i, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !8
  %i.ns = getelementptr inbounds nuw i8, ptr %.10.i, i64 2
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %.1363.i, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !8
  %i.nv = getelementptr inbounds nuw i8, ptr %.10.i, i64 3
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !8
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !35
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %i.ny ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.10.i, i64 4
  %i.ob = load i32, ptr %i.nz, align 1
  store i32 %i.ob, ptr %i.oa, align 1
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1370.i
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !35
  %i.oe = sext i32 %i.od to i64
  %i.of = sub nsw i64 0, %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.nz, i64 %i.of
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.oh = load i64, ptr %.1363.i, align 1
  store i64 %i.oh, ptr %.10.i, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.1363.i, i64 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.3365.i = phi ptr [ %i.og, %bb.be ], [ %i.oi, %bb.bf ] ; 6 uses
  %.3365.i519 = ptrtoaddr ptr %.3365.i to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %.10.i, i64 8
  %i.ok = load i64, ptr %.3365.i, align 1
  store i64 %i.ok, ptr %i.oj, align 1
  %i.ol = icmp ugt i64 %.11383.i, 16
  br i1 %i.ol, label %bb.bh, label %.preheader131

bb.bh:                                            ; preds = %bb.bg
  %i.om = getelementptr inbounds nuw i8, ptr %.10.i, i64 16 ; 4 uses
  %i.on = add i64 %.11383.i, %.10.i518
  %i.oo = add i64 %.10.i518, 24
  %i.op = tail call i64 @llvm.umax.i64(i64 %i.on, i64 %i.oo)
  %i.oq = sub i64 %i.op, %.10.i518
  %i.or = add i64 %i.oq, -17                      ; 2 uses
  %i.os = lshr i64 %i.or, 3
  %i.ot = add nuw nsw i64 %i.os, 1                ; 2 uses
  %min.iters.check522 = icmp ult i64 %i.or, 104
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.memcheck517

vector.memcheck517:                               ; preds = %bb.bh
  %i.ou = sub i64 %.10.i518, %.3365.i519
  %i.ov = add i64 %i.ou, 7
  %diff.check520 = icmp ult i64 %i.ov, 31
  br i1 %diff.check520, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %vector.memcheck517
  %n.vec525 = and i64 %i.ot, 4611686018427387900  ; 3 uses
  %i.ow = shl i64 %n.vec525, 3                    ; 2 uses
  %i.ox = getelementptr i8, ptr %.3365.i, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.om, i64 %i.ow
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph523
  %index527 = phi i64 [ 0, %vector.ph523 ], [ %index.next532, %vector.body526 ] ; 2 uses
  %i.oz = shl i64 %index527, 3                    ; 2 uses
  %next.gep528 = getelementptr i8, ptr %.3365.i, i64 %i.oz ; 2 uses
  %next.gep529 = getelementptr i8, ptr %i.om, i64 %i.oz ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %next.gep528, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %next.gep528, i64 24
  %wide.load530 = load <2 x i64>, ptr %i.pa, align 1
  %wide.load531 = load <2 x i64>, ptr %i.pb, align 1
  %i.pc = getelementptr i8, ptr %next.gep529, i64 16
  store <2 x i64> %wide.load530, ptr %next.gep529, align 1
  store <2 x i64> %wide.load531, ptr %i.pc, align 1
  %index.next532 = add nuw i64 %index527, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next532, %n.vec525
  br i1 %i.pd, label %middle.block533, label %vector.body526, !llvm.loop !169

middle.block533:                                  ; preds = %vector.body526
  %cmp.n534 = icmp eq i64 %i.ot, %n.vec525
  br i1 %cmp.n534, label %.preheader131, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %vector.memcheck517, %bb.bh, %middle.block533
  %.3365.i.pn.ph = phi ptr [ %.3365.i, %vector.memcheck517 ], [ %.3365.i, %bb.bh ], [ %i.ox, %middle.block533 ]
  %.0.i12.ph = phi ptr [ %i.om, %vector.memcheck517 ], [ %i.om, %bb.bh ], [ %i.oy, %middle.block533 ]
  br label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.preheader, %scalar.ph521
  %.3365.i.pn = phi ptr [ %.09.i11, %scalar.ph521 ], [ %.3365.i.pn.ph, %scalar.ph521.preheader ]
  %.0.i12 = phi ptr [ %i.pf, %scalar.ph521 ], [ %.0.i12.ph, %scalar.ph521.preheader ] ; 2 uses
  %.09.i11 = getelementptr inbounds nuw i8, ptr %.3365.i.pn, i64 8 ; 2 uses
  %i.pe = load i64, ptr %.09.i11, align 1
  store i64 %i.pe, ptr %.0.i12, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i12, i64 8 ; 2 uses
  %i.pg = icmp ult ptr %i.pf, %i.ky
  br i1 %i.pg, label %scalar.ph521, label %.preheader131, !llvm.loop !170

.preheader131:                                    ; preds = %scalar.ph521, %.lr.ph209, %bb.bg, %middle.block533, %bb.ax, %bb.az, %vec.epilog.middle.block612, %middle.block594, %bb.d, %.loopexit127
  %.3.ph = phi ptr [ %.2, %bb.ax ], [ %.2, %.loopexit127 ], [ %0, %bb.d ], [ %.2, %middle.block594 ], [ %.2, %vec.epilog.middle.block612 ], [ %.2, %bb.bg ], [ %.2, %bb.az ], [ %.2, %middle.block533 ], [ %.2, %.lr.ph209 ], [ %.2, %scalar.ph521 ] ; 3 uses
  %.6.i.ph = phi ptr [ %i.li, %bb.ax ], [ %i.ms, %.loopexit127 ], [ %1, %bb.d ], [ %i.lz, %middle.block594 ], [ %i.me, %vec.epilog.middle.block612 ], [ %i.ky, %bb.bg ], [ %i.ml, %bb.az ], [ %i.ky, %middle.block533 ], [ %i.mj, %.lr.ph209 ], [ %i.ky, %scalar.ph521 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.pi = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.pj = zext i8 %i.pi to i32                    ; 3 uses
  %i.pk = lshr i32 %i.pj, 4                       ; 2 uses
  %cond.i196 = icmp eq i32 %i.pk, 15
  br i1 %cond.i196, label %._crit_edge, label %.lr.ph198

bb.bi:                                            ; preds = %.thread111, %.loopexit127, %bb.ao
  %.17.i = phi ptr [ %i.g, %.loopexit127 ], [ %i.jq, %bb.ao ], [ %i.jo, %.thread111 ]
  %i.pl = ptrtoint ptr %.17.i to i64
  %i.pm = sub i64 %i.pl, %i.q
  %i.pn = trunc i64 %i.pm to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit21, %read_variable_length.exit21.thread85, %bb.e, %read_variable_length.exit.thread68, %read_variable_length.exit, %.thread93, %.preheader140, %.preheader137, %.preheader130, %.preheader128, %bb.ap, %._crit_edge, %read_variable_length.exit26, %read_variable_length.exit26.thread100, %.loopexit145, %read_variable_length.exit30
  %.8 = phi ptr [ %.2, %.loopexit145 ], [ %i.kj, %.preheader128 ], [ %.18, %read_variable_length.exit30 ], [ %i.hw, %read_variable_length.exit26 ], [ %i.bq, %.preheader137 ], [ %.16103, %read_variable_length.exit26.thread100 ], [ %.lcssa156, %._crit_edge ], [ %i.ah, %.preheader140 ], [ %i.hw, %.preheader130 ], [ %i.kf, %bb.ap ], [ %i.bq, %read_variable_length.exit21 ], [ %.1488, %read_variable_length.exit21.thread85 ], [ %i.z, %bb.e ], [ %.1271, %read_variable_length.exit.thread68 ], [ %i.ah, %read_variable_length.exit ], [ %.9, %.thread93 ], [ %i.bm, %bb.k ]
  %i.po = ptrtoint ptr %.8 to i64
  %i.pp = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.pp, %i.po
  %i.pq = trunc i64 %.neg.i to i32
  %i.pr = add nsw i32 %i.pq, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.bi, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1.i = phi i32 [ -1, %bb.a ], [ %i.pr, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.pn, %bb.bi ], [ 0, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @LZ4_createStreamDecode() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @LZ4_freeStreamDecode(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @LZ4_setStreamDecode(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !171
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !173
  store ptr null, ptr %0, align 8, !tbaa !174
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !175
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2113994767) i32 @LZ4_decoderRingBufferSize(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2113929216
  %i.a = tail call i32 @llvm.umax.i32(i32 %0, i32 16)
  %i.b = add nuw nsw i32 %i.a, 65550
  %.0 = select i1 %or.cond, i32 0, i32 %i.b
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !171  ; 11 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @LZ4_decompress_safe(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) ; 4 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !171
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !173
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173  ; 2 uses
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %bb.e, label %bb.bs

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.b, 65534
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %LZ4_decompress_safe_doubleDict.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !175  ; 5 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %i.b)
  br label %LZ4_decompress_safe_doubleDict.exit

bb.i:                                             ; preds = %bb.g
  %i.r = sub nsw i64 0, %i.b
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 20 uses
  %i.t = icmp eq ptr %1, null
  %i.u = icmp slt i32 %4, 0
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !174    ; 2 uses
  %i.w = sext i32 %3 to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w ; 9 uses
  %i.y = zext nneg i32 %4 to i64                  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 9 uses
  %i.aa = icmp eq ptr %i.v, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  %i.ac = select i1 %i.aa, ptr null, ptr %i.ab    ; 4 uses
  %i.ad = icmp ult i64 %i.o, 65536                ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %i.ag = icmp eq i32 %4, 0
  br i1 %i.ag, label %bb.k, label %bb.m, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i32 %3, 1
  br i1 %i.ah, label %bb.l, label %LZ4_decompress_safe_doubleDict.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ai = load i8, ptr %1, align 1, !tbaa !8
  %i.aj = icmp ne i8 %i.ai, 0
  %i.ak = sext i1 %i.aj to i32
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.al = icmp eq i32 %3, 0
  br i1 %i.al, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.am = ptrtoint ptr %2 to i64                  ; 7 uses
  %i.an = icmp samesign ult i32 %4, 64
  br i1 %i.an, label %.preheader187, label %.preheader199

.preheader199:                                    ; preds = %bb.n
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -17
  %i.ap = getelementptr inbounds i8, ptr %i.x, i64 -15 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ar = getelementptr inbounds i8, ptr %i.z, i64 -64 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.au = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.av = add i64 %i.am, 1
  %i.aw = sub i64 %i.av, %i.b
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader199
  %.0123 = phi ptr [ %1, %.preheader199 ], [ %.0123.be, %.backedge.backedge ] ; 3 uses
  %.0358.i.i = phi ptr [ %2, %.preheader199 ], [ %.0358.i.i.be, %.backedge.backedge ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0123, i64 1 ; 7 uses
  %i.ay = load i8, ptr %.0123, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i32                    ; 4 uses
  %i.ba = lshr i32 %i.az, 4                       ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 3 uses
  %i.bc = icmp eq i32 %i.ba, 15
  br i1 %i.bc, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.ax, %i.ap
  br i1 %.not22.i, label %bb.p, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.p:                                             ; preds = %bb.o
  %5 = getelementptr inbounds nuw i8, ptr %.0123, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !8   ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %.not23.i = icmp eq i8 %i.bd, -1
  br i1 %.not23.i, label %.preheader197, label %read_variable_length.exit.thread126, !prof !20

.preheader197:                                    ; preds = %bb.p, %bb.q
  %.10 = phi ptr [ %i.bf, %bb.q ], [ %5, %bb.p ]  ; 2 uses
  %.0.i73 = phi i64 [ %i.bj, %bb.q ], [ 255, %bb.p ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.bg = icmp ugt ptr %i.bf, %i.ap
  br i1 %i.bg, label %LZ4_wildCopy32.exit.thread, label %bb.q, !prof !20

bb.q:                                             ; preds = %.preheader197
  %i.bh = load i8, ptr %.10, align 1, !tbaa !8    ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = add i64 %.0.i73, %i.bi                  ; 3 uses
  %i.bk = icmp eq i8 %i.bh, -1
  br i1 %i.bk, label %.preheader197, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.q
  %i.bl = icmp eq i64 %i.bj, -1
  br i1 %i.bl, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread126

read_variable_length.exit.thread126:              ; preds = %bb.p, %read_variable_length.exit
  %.019.i130 = phi i64 [ %i.bj, %read_variable_length.exit ], [ %i.be, %bb.p ]
  %.11129 = phi ptr [ %i.bf, %read_variable_length.exit ], [ %5, %bb.p ] ; 5 uses
  %i.bm = add i64 %.019.i130, 15                  ; 5 uses
  %i.bn = ptrtoint ptr %.0358.i.i to i64
  %i.bo = xor i64 %i.bn, -1
  %i.bp = icmp ugt i64 %i.bm, %i.bo
  %i.bq = ptrtoint ptr %.11129 to i64
  %i.br = xor i64 %i.bq, -1
  %i.bs = icmp ugt i64 %i.bm, %i.br
  %or.cond = or i1 %i.bp, %i.bs
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.r, !prof !84

bb.r:                                             ; preds = %read_variable_length.exit.thread126
  %i.bt = getelementptr inbounds nuw i8, ptr %.0358.i.i, i64 %i.bm ; 3 uses
  %i.bu = icmp ugt ptr %i.bt, %i.af
  %i.bv = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.bm ; 2 uses
  %i.bw = icmp ugt ptr %i.bv, %i.aq
  %or.cond449.i.i = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond449.i.i, label %LZ4_wildCopy32.exit, label %.preheader196

.preheader196:                                    ; preds = %bb.r, %.preheader196
  %.011.i = phi ptr [ %i.ca, %.preheader196 ], [ %.11129, %bb.r ] ; 3 uses
  %.0.i87 = phi ptr [ %i.bz, %.preheader196 ], [ %.0358.i.i, %bb.r ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i87, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i87, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bx, ptr noundef nonnull align 1 dereferenceable(16) %i.by, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i87, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.cb = icmp ult ptr %i.bz, %i.bt
  br i1 %i.cb, label %.preheader196, label %LZ4_wildCopy32.exit.thread135, !llvm.loop !85

bb.s:                                             ; preds = %.backedge
  %.not.i.i = icmp ugt ptr %i.ax, %i.ao
  br i1 %.not.i.i, label %LZ4_wildCopy32.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb
  %i.cd = getelementptr inbounds nuw i8, ptr %.0358.i.i, i64 %i.bb
  br label %LZ4_wildCopy32.exit.thread135

LZ4_wildCopy32.exit.thread135:                    ; preds = %.preheader196, %bb.t
  %.1 = phi ptr [ %i.cc, %bb.t ], [ %i.bv, %.preheader196 ] ; 3 uses
  %.2.i.i = phi ptr [ %i.cd, %bb.t ], [ %i.bt, %.preheader196 ] ; 28 uses
  %.2.i.i522 = ptrtoaddr ptr %.2.i.i to i64       ; 8 uses
  %.val95 = load i16, ptr %.1, align 1, !tbaa !27 ; 6 uses
  %i.ce = zext i16 %.val95 to i64                 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.cg = sub nsw i64 0, %i.ce
  %i.ch = getelementptr inbounds i8, ptr %.2.i.i, i64 %i.cg ; 20 uses
  %i.ci = and i32 %i.az, 15                       ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 15
  br i1 %i.cj, label %bb.u, label %bb.y

bb.u:                                             ; preds = %LZ4_wildCopy32.exit.thread135
  %i.ck = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.cl = icmp ugt ptr %i.ck, %i.as
  br i1 %i.cl, label %LZ4_wildCopy32.exit.thread, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !8   ; 2 uses
  %i.cn = zext i8 %i.cm to i64
  %.not23.i74 = icmp eq i8 %i.cm, -1
  br i1 %.not23.i74, label %.preheader194, label %read_variable_length.exit77.thread143, !prof !20

.preheader194:                                    ; preds = %bb.v, %bb.w
  %.12 = phi ptr [ %i.co, %bb.w ], [ %i.ck, %bb.v ] ; 2 uses
  %.0.i76 = phi i64 [ %i.cs, %bb.w ], [ 255, %bb.v ]
  %i.co = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.cp = icmp ugt ptr %i.co, %i.as
  br i1 %i.cp, label %LZ4_wildCopy32.exit.thread, label %bb.w, !prof !20

bb.w:                                             ; preds = %.preheader194
  %i.cq = load i8, ptr %.12, align 1, !tbaa !8    ; 2 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = add i64 %.0.i76, %i.cr                  ; 3 uses
  %i.ct = icmp eq i8 %i.cq, -1
  br i1 %i.ct, label %.preheader194, label %read_variable_length.exit77, !llvm.loop !83

read_variable_length.exit77:                      ; preds = %bb.w
  %i.cu = icmp eq i64 %i.cs, -1
  br i1 %i.cu, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit77.thread143

read_variable_length.exit77.thread143:            ; preds = %bb.v, %read_variable_length.exit77
  %.019.i75147 = phi i64 [ %i.cs, %read_variable_length.exit77 ], [ %i.cn, %bb.v ]
  %.13146 = phi ptr [ %i.co, %read_variable_length.exit77 ], [ %i.ck, %bb.v ] ; 3 uses
  %i.cv = add i64 %.019.i75147, 19                ; 4 uses
  %i.cw = ptrtoint ptr %.2.i.i to i64
  %i.cx = xor i64 %i.cw, -1
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %LZ4_wildCopy32.exit.thread, label %bb.x, !prof !20

bb.x:                                             ; preds = %read_variable_length.exit77.thread143
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.cv
  %.not435.i.i = icmp ult ptr %i.cz, %i.ar
  br i1 %.not435.i.i, label %.thread151, label %.loopexit202

bb.y:                                             ; preds = %LZ4_wildCopy32.exit.thread135
  %narrow.i.i = add nuw nsw i32 %i.ci, 4
  %i.da = zext nneg i32 %narrow.i.i to i64        ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.da ; 2 uses
  %.not434.i.i = icmp ult ptr %i.db, %i.ar
  br i1 %.not434.i.i, label %bb.z, label %.loopexit202

bb.z:                                             ; preds = %bb.y
  %i.dc = icmp uge ptr %i.ch, %i.s
  %i.dd = icmp ugt i16 %.val95, 7
  %or.cond5.i.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond5.i.i, label %bb.aa, label %.thread151

bb.aa:                                            ; preds = %bb.z
  %i.de = load i64, ptr %i.ch, align 1
  store i64 %i.de, ptr %.2.i.i, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dh = load i64, ptr %i.dg, align 1
  store i64 %i.dh, ptr %i.df, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.dk = load i16, ptr %i.dj, align 1
  store i16 %i.dk, ptr %i.di, align 1
  br label %.backedge.backedge

.thread151:                                       ; preds = %bb.x, %bb.z
  %.8 = phi ptr [ %i.cf, %bb.z ], [ %.13146, %bb.x ] ; 13 uses
  %.2374.i.i = phi i64 [ %i.da, %bb.z ], [ %i.cv, %bb.x ] ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.o
  %i.dm = icmp ult ptr %i.dl, %i.s
  %or.cond452.i.i = select i1 %i.ad, i1 %i.dm, i1 false, !prof !86
  br i1 %or.cond452.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.ab, !prof !86

bb.ab:                                            ; preds = %.thread151
  %i.dn = icmp ult ptr %i.ch, %i.s
  %i.do = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %.2374.i.i ; 13 uses
  br i1 %i.dn, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.dp = icmp ugt ptr %i.do, %i.at
  br i1 %i.dp, label %LZ4_wildCopy32.exit.thread, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.dq = ptrtoint ptr %i.ch to i64
  %i.dr = sub i64 %i.au, %i.dq                    ; 6 uses
  %.not437.i.i = icmp ugt i64 %.2374.i.i, %i.dr
  br i1 %.not437.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = sub i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.ac, i64 %i.ds
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2.i.i, ptr align 1 %i.dt, i64 %.2374.i.i, i1 false)
  br label %.backedge.backedge

bb.af:                                            ; preds = %bb.ad
  %i.du = sub nuw i64 %.2374.i.i, %i.dr           ; 2 uses
  %i.dv = sub i64 0, %i.dr
  %i.dw = getelementptr inbounds i8, ptr %i.ac, i64 %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2.i.i, ptr align 1 %i.dw, i64 %i.dr, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.dr ; 7 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.au
  %i.ea = icmp ugt i64 %i.du, %i.dz
  br i1 %i.ea, label %iter.check, label %bb.ag

iter.check:                                       ; preds = %bb.af
  %i.eb = add i64 %i.aw, %i.ce
  %i.ec = add i64 %.2374.i.i, %.2.i.i522
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 %i.ec)
  %i.ed = add i64 %i.b, %umax
  %i.ee = add i64 %i.am, %i.ce
  %i.ef = sub i64 %i.ed, %i.ee                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.ef, 4
  %i.eg = add i16 %.val95, -1
  %diff.check = icmp ult i16 %i.eg, 31
  %or.cond705 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond705, label %.lr.ph252.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check523 = icmp ult i64 %i.ef, 32
  br i1 %min.iters.check523, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ef, 28
  %n.vec = and i64 %i.ef, -32                     ; 5 uses
  %i.eh = getelementptr i8, ptr %i.dx, i64 %n.vec ; 2 uses
  %i.ei = getelementptr i8, ptr %i.s, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.dx, i64 %index ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep524, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep524, align 1, !tbaa !8
  %wide.load525 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !8
  %i.ek = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %wide.load525, ptr %i.ek, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !176

end_hunk_7
begin_hunk_8_@LZ4_decompress_safe_continue:bb.a
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.fs = load i64, ptr %i.ch, align 1
  store i64 %i.fs, ptr %.2.i.i, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.023.i = phi ptr [ %i.fr, %bb.an ], [ %i.ft, %bb.ao ] ; 5 uses
  %.0.i92 = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8 ; 4 uses
  %i.fu = add i64 %.2374.i.i, %.2.i.i522
  %i.fv = add i64 %.2.i.i522, 16
  %i.fw = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.fv)
  %i.fx = sub i64 %i.fw, %.2.i.i522
  %i.fy = add i64 %i.fx, -9                       ; 2 uses
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check540 = icmp ult i64 %i.fy, 56
  br i1 %min.iters.check540, label %scalar.ph.preheader, label %vector.memcheck537

vector.memcheck537:                               ; preds = %bb.ap
  %.023.i538 = ptrtoaddr ptr %.023.i to i64
  %i.gb = sub i64 %.2.i.i522, %.023.i538
  %i.gc = add i64 %i.gb, 7
  %diff.check539 = icmp ult i64 %i.gc, 31
  br i1 %diff.check539, label %scalar.ph.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %vector.memcheck537
  %n.vec543 = and i64 %i.ga, 4611686018427387900  ; 3 uses
  %i.gd = shl i64 %n.vec543, 3                    ; 2 uses
  %i.ge = getelementptr i8, ptr %.023.i, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.0.i92, i64 %i.gd
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph541
  %index545 = phi i64 [ 0, %vector.ph541 ], [ %index.next550, %vector.body544 ] ; 2 uses
  %i.gg = shl i64 %index545, 3                    ; 2 uses
  %next.gep546 = getelementptr i8, ptr %.023.i, i64 %i.gg ; 2 uses
  %next.gep547 = getelementptr i8, ptr %.0.i92, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %next.gep546, i64 16
  %wide.load548 = load <2 x i64>, ptr %next.gep546, align 1
  %wide.load549 = load <2 x i64>, ptr %i.gh, align 1
  %i.gi = getelementptr i8, ptr %next.gep547, i64 16
  store <2 x i64> %wide.load548, ptr %next.gep547, align 1
  store <2 x i64> %wide.load549, ptr %i.gi, align 1
  %index.next550 = add nuw i64 %index545, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next550, %n.vec543
  br i1 %i.gj, label %middle.block551, label %vector.body544, !llvm.loop !179

middle.block551:                                  ; preds = %vector.body544
  %cmp.n552 = icmp eq i64 %i.ga, %n.vec543
  br i1 %cmp.n552, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck537, %bb.ap, %middle.block551
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck537 ], [ %.023.i, %bb.ap ], [ %i.ge, %middle.block551 ]
  %.0.i.i93.ph = phi ptr [ %.0.i92, %vector.memcheck537 ], [ %.0.i92, %bb.ap ], [ %i.gf, %middle.block551 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.gm, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i93 = phi ptr [ %i.gl, %scalar.ph ], [ %.0.i.i93.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gk = load i64, ptr %.09.i.i, align 1
  store i64 %i.gk, ptr %.0.i.i93, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i93, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.gn = icmp ult ptr %i.gl, %i.do
  br i1 %i.gn, label %scalar.ph, label %.backedge.backedge, !llvm.loop !180

bb.aq:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.aj ], [ %.sroa.0.2.insert.insert.i, %bb.ak ], [ %.sroa.0.0.copyload2.i, %bb.al ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.go = icmp samesign ugt i64 %.2374.i.i, 8
  br i1 %i.go, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.aq
  %.0.i91247 = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8 ; 4 uses
  %i.gp = add i64 %.2374.i.i, %.2.i.i522
  %i.gq = add i64 %.2.i.i522, 16
  %i.gr = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gq)
  %i.gs = sub i64 %i.gr, %.2.i.i522
  %i.gt = add i64 %i.gs, -9                       ; 2 uses
  %i.gu = lshr i64 %i.gt, 3
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check555 = icmp ult i64 %i.gt, 24
  br i1 %min.iters.check555, label %.lr.ph.preheader744, label %vector.ph556

vector.ph556:                                     ; preds = %.lr.ph.preheader
  %n.vec558 = and i64 %i.gv, 4611686018427387900  ; 3 uses
  %i.gw = shl i64 %n.vec558, 3                    ; 2 uses
  %i.gx = getelementptr i8, ptr %.0.i91247, i64 %i.gw
  %i.gy = getelementptr i8, ptr %.2.i.i, i64 %i.gw
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.gz = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body559

vector.body559:                                   ; preds = %vector.body559, %vector.ph556
  %index560 = phi i64 [ 0, %vector.ph556 ], [ %index.next564, %vector.body559 ] ; 2 uses
  %i.ha = shl i64 %index560, 3                    ; 2 uses
  %next.gep561 = getelementptr i8, ptr %.0.i91247, i64 %i.ha
  %i.hb = getelementptr i8, ptr %.0.i91247, i64 %i.ha
  %next.gep562 = getelementptr i8, ptr %i.hb, i64 16
  store <4 x i32> %i.gz, ptr %next.gep561, align 1
  store <4 x i32> %i.gz, ptr %next.gep562, align 1
  %index.next564 = add nuw i64 %index560, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next564, %n.vec558
  br i1 %i.hc, label %middle.block565, label %vector.body559, !llvm.loop !181

middle.block565:                                  ; preds = %vector.body559
  %cmp.n566 = icmp eq i64 %i.gv, %n.vec558
  br i1 %cmp.n566, label %.backedge.backedge, label %.lr.ph.preheader744

.backedge.backedge:                               ; preds = %.preheader192, %.lr.ph, %scalar.ph, %.lr.ph252, %middle.block565, %middle.block551, %middle.block, %vec.epilog.middle.block, %bb.aq, %bb.ae, %bb.ag, %bb.aa
  %.0123.be = phi ptr [ %i.cf, %bb.aa ], [ %.8, %bb.ae ], [ %.8, %middle.block551 ], [ %.8, %middle.block565 ], [ %.8, %bb.ag ], [ %.8, %middle.block ], [ %.8, %bb.aq ], [ %.8, %scalar.ph ], [ %.8, %vec.epilog.middle.block ], [ %.8, %.lr.ph ], [ %.8, %.lr.ph252 ], [ %.8, %.preheader192 ]
  %.0358.i.i.be = phi ptr [ %i.db, %bb.aa ], [ %i.do, %bb.ae ], [ %i.do, %middle.block551 ], [ %i.do, %middle.block565 ], [ %i.do, %bb.ag ], [ %i.eh, %middle.block ], [ %i.do, %bb.aq ], [ %i.do, %scalar.ph ], [ %i.em, %vec.epilog.middle.block ], [ %i.do, %.lr.ph ], [ %i.er, %.lr.ph252 ], [ %i.do, %.preheader192 ]
  br label %.backedge

.lr.ph.preheader744:                              ; preds = %.lr.ph.preheader, %middle.block565
  %.0.i91249.ph = phi ptr [ %.0.i91247, %.lr.ph.preheader ], [ %i.gx, %middle.block565 ]
  %.pn.i248.ph = phi ptr [ %.2.i.i, %.lr.ph.preheader ], [ %i.gy, %middle.block565 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader744, %.lr.ph
  %.0.i91249 = phi ptr [ %.0.i91, %.lr.ph ], [ %.0.i91249.ph, %.lr.ph.preheader744 ] ; 3 uses
  %.pn.i248 = phi ptr [ %.0.i91249, %.lr.ph ], [ %.pn.i248.ph, %.lr.ph.preheader744 ]
  store i32 %.sroa.9.0.i, ptr %.0.i91249, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i248, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i91 = getelementptr inbounds nuw i8, ptr %.0.i91249, i64 8 ; 2 uses
  %i.hd = icmp ult ptr %.0.i91, %i.do
  br i1 %i.hd, label %.lr.ph, label %.backedge.backedge, !llvm.loop !182

.preheader192:                                    ; preds = %bb.ah, %.preheader192
  %.011.i88 = phi ptr [ %i.hh, %.preheader192 ], [ %i.ch, %bb.ah ] ; 3 uses
  %.0.i89 = phi ptr [ %i.hg, %.preheader192 ], [ %.2.i.i, %bb.ah ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i89, ptr noundef nonnull align 1 dereferenceable(16) %.011.i88, i64 16, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i89, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %.011.i88, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.he, ptr noundef nonnull align 1 dereferenceable(16) %i.hf, i64 16, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i89, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.011.i88, i64 32
  %i.hi = icmp ult ptr %i.hg, %i.do
  br i1 %i.hi, label %.preheader192, label %.backedge.backedge, !llvm.loop !85

.lr.ph255:                                        ; preds = %.preheader187, %bb.as
  %.in = phi i32 [ %i.il, %bb.as ], [ %i.qr, %.preheader187 ]
  %i.hj = phi i32 [ %i.ik, %bb.as ], [ %i.qq, %.preheader187 ] ; 2 uses
  %i.hk = phi ptr [ %i.ii, %bb.as ], [ %i.qo, %.preheader187 ] ; 4 uses
  %.6.i.i254 = phi ptr [ %i.ih, %bb.as ], [ %.6.i.i.ph, %.preheader187 ] ; 4 uses
  %i.hl = zext nneg i32 %.in to i64               ; 3 uses
  %i.hm = icmp ult ptr %i.hk, %i.ae
  %i.hn = icmp ule ptr %.6.i.i254, %i.af
  %i.ho = and i1 %i.hm, %i.hn
  br i1 %i.ho, label %bb.ar, label %LZ4_wildCopy32.exit, !prof !29

bb.ar:                                            ; preds = %.lr.ph255
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i.i254, ptr noundef nonnull align 1 dereferenceable(16) %i.hk, i64 16, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.6.i.i254, i64 %i.hl ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hl ; 3 uses
  %i.hr = and i32 %i.hj, 15                       ; 2 uses
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %.val = load i16, ptr %i.hq, align 1, !tbaa !27 ; 2 uses
  %i.ht = zext i16 %.val to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 2 ; 3 uses
  %i.hv = sub nsw i64 0, %i.ht
  %i.hw = getelementptr inbounds i8, ptr %i.hp, i64 %i.hv ; 5 uses
  %i.hx = icmp eq i32 %i.hr, 15
  %i.hy = icmp ult i16 %.val, 8
  %or.cond3.i.i.not179 = select i1 %i.hx, i1 true, i1 %i.hy
  %.not442.i.i = icmp ult ptr %i.hw, %i.s
  %or.cond174 = select i1 %or.cond3.i.i.not179, i1 true, i1 %.not442.i.i
  br i1 %or.cond174, label %.loopexit188, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hz = load i64, ptr %i.hw, align 1
  store i64 %i.hz, ptr %i.hp, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = load i64, ptr %i.ib, align 1
  store i64 %i.ic, ptr %i.ia, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.if = load i16, ptr %i.ie, align 1
  store i16 %i.if, ptr %i.id, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hs
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hq, i64 3 ; 2 uses
  %i.ij = load i8, ptr %i.hu, align 1, !tbaa !8
  %i.ik = zext i8 %i.ij to i32                    ; 3 uses
  %i.il = lshr i32 %i.ik, 4                       ; 2 uses
  %cond.i.i = icmp eq i32 %i.il, 15
  br i1 %cond.i.i, label %._crit_edge, label %.lr.ph255

._crit_edge:                                      ; preds = %bb.as, %.preheader187
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader187 ], [ %i.hu, %bb.as ]
  %.6.i.i.lcssa = phi ptr [ %.6.i.i.ph, %.preheader187 ], [ %i.ih, %bb.as ] ; 2 uses
  %.lcssa213 = phi ptr [ %i.qo, %.preheader187 ], [ %i.ii, %bb.as ] ; 3 uses
  %.lcssa210 = phi i32 [ %i.qq, %.preheader187 ], [ %i.ik, %bb.as ]
  %i.im = getelementptr inbounds i8, ptr %i.x, i64 -15 ; 2 uses
  %.not22.i78 = icmp ult ptr %.lcssa213, %i.im
  br i1 %.not22.i78, label %bb.at, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.at:                                            ; preds = %._crit_edge
  %6 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.in = load i8, ptr %.lcssa213, align 1, !tbaa !8 ; 2 uses
  %i.io = zext i8 %i.in to i64
  %.not23.i80 = icmp eq i8 %i.in, -1
  br i1 %.not23.i80, label %.preheader186, label %read_variable_length.exit82.thread158, !prof !20

.preheader186:                                    ; preds = %bb.at, %bb.au
  %.14 = phi ptr [ %i.ip, %bb.au ], [ %6, %bb.at ] ; 2 uses
  %.0.i81 = phi i64 [ %i.it, %bb.au ], [ 255, %bb.at ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.iq = icmp ugt ptr %i.ip, %i.im
  br i1 %i.iq, label %LZ4_wildCopy32.exit.thread, label %bb.au, !prof !20

bb.au:                                            ; preds = %.preheader186
  %i.ir = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = add i64 %.0.i81, %i.is                  ; 3 uses
  %i.iu = icmp eq i8 %i.ir, -1
  br i1 %i.iu, label %.preheader186, label %read_variable_length.exit82, !llvm.loop !83

read_variable_length.exit82:                      ; preds = %bb.au
  %i.iv = icmp eq i64 %i.it, -1
  br i1 %i.iv, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit82.thread158

read_variable_length.exit82.thread158:            ; preds = %bb.at, %read_variable_length.exit82
  %.019.i79162 = phi i64 [ %i.it, %read_variable_length.exit82 ], [ %i.io, %bb.at ]
  %.15161 = phi ptr [ %i.ip, %read_variable_length.exit82 ], [ %6, %bb.at ] ; 3 uses
  %i.iw = add i64 %.019.i79162, 15                ; 3 uses
  %i.ix = ptrtoint ptr %.6.i.i.lcssa to i64
  %i.iy = xor i64 %i.ix, -1
  %i.iz = icmp ugt i64 %i.iw, %i.iy
  %i.ja = ptrtoint ptr %.15161 to i64
  %i.jb = xor i64 %i.ja, -1
  %i.jc = icmp ugt i64 %i.iw, %i.jb
  %or.cond177 = or i1 %i.iz, %i.jc
  br i1 %or.cond177, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.r, %bb.s, %.lr.ph255, %read_variable_length.exit82.thread158
  %.4 = phi ptr [ %.15161, %read_variable_length.exit82.thread158 ], [ %i.hk, %.lr.ph255 ], [ %i.ax, %bb.s ], [ %.11129, %bb.r ] ; 8 uses
  %.5377.i.i = phi i64 [ %i.iw, %read_variable_length.exit82.thread158 ], [ %i.hl, %.lr.ph255 ], [ %i.bb, %bb.s ], [ %i.bm, %bb.r ] ; 5 uses
  %.0371.i.i = phi i32 [ %.lcssa210, %read_variable_length.exit82.thread158 ], [ %i.hj, %.lr.ph255 ], [ %i.az, %bb.s ], [ %i.az, %bb.r ]
  %.7.i.i = phi ptr [ %.6.i.i.lcssa, %read_variable_length.exit82.thread158 ], [ %.6.i.i254, %.lr.ph255 ], [ %.0358.i.i, %bb.s ], [ %.0358.i.i, %bb.r ] ; 6 uses
  %.7.i.i570 = ptrtoaddr ptr %.7.i.i to i64       ; 4 uses
  %.4571 = ptrtoaddr ptr %.4 to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 %.5377.i.i ; 6 uses
  %i.je = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.jf = icmp ugt ptr %i.jd, %i.je
  br i1 %i.jf, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy32.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i.i ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ji = icmp ugt ptr %i.jg, %i.jh
  br i1 %i.ji, label %bb.aw, label %.preheader185.preheader

.preheader185.preheader:                          ; preds = %bb.av
  %i.jj = add nuw i64 %.5377.i.i, %.7.i.i570
  %i.jk = add i64 %.7.i.i570, 8
  %i.jl = tail call i64 @llvm.umax.i64(i64 %i.jj, i64 %i.jk)
  %i.jm = xor i64 %.7.i.i570, -1
  %i.jn = add i64 %i.jl, %i.jm                    ; 2 uses
  %i.jo = lshr i64 %i.jn, 3
  %i.jp = add nuw nsw i64 %i.jo, 1                ; 2 uses
  %min.iters.check574 = icmp ult i64 %i.jn, 72
  %i.jq = sub i64 %.4571, %.7.i.i570
  %diff.check572 = icmp ugt i64 %i.jq, -32
  %or.cond706 = select i1 %min.iters.check574, i1 true, i1 %diff.check572
  br i1 %or.cond706, label %.preheader185.preheader714, label %vector.ph575

vector.ph575:                                     ; preds = %.preheader185.preheader
  %n.vec577 = and i64 %i.jp, 4611686018427387900  ; 3 uses
  %i.jr = shl i64 %n.vec577, 3                    ; 2 uses
  %i.js = getelementptr i8, ptr %.4, i64 %i.jr
  %i.jt = getelementptr i8, ptr %.7.i.i, i64 %i.jr
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph575
  %index579 = phi i64 [ 0, %vector.ph575 ], [ %index.next584, %vector.body578 ] ; 2 uses
  %i.ju = shl i64 %index579, 3                    ; 2 uses
  %next.gep580 = getelementptr i8, ptr %.4, i64 %i.ju ; 2 uses
  %next.gep581 = getelementptr i8, ptr %.7.i.i, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep580, i64 16
  %wide.load582 = load <2 x i64>, ptr %next.gep580, align 1
  %wide.load583 = load <2 x i64>, ptr %i.jv, align 1
  %i.jw = getelementptr i8, ptr %next.gep581, i64 16
  store <2 x i64> %wide.load582, ptr %next.gep581, align 1
  store <2 x i64> %wide.load583, ptr %i.jw, align 1
  %index.next584 = add nuw i64 %index579, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next584, %n.vec577
  br i1 %i.jx, label %middle.block585, label %vector.body578, !llvm.loop !183

middle.block585:                                  ; preds = %vector.body578
  %cmp.n586 = icmp eq i64 %i.jp, %n.vec577
  br i1 %cmp.n586, label %LZ4_wildCopy8.exit72, label %.preheader185.preheader714

.preheader185.preheader714:                       ; preds = %.preheader185.preheader, %middle.block585
  %.09.i70.ph = phi ptr [ %.4, %.preheader185.preheader ], [ %i.js, %middle.block585 ]
  %.0.i71.ph = phi ptr [ %.7.i.i, %.preheader185.preheader ], [ %i.jt, %middle.block585 ]
  br label %.preheader185

bb.aw:                                            ; preds = %bb.av, %LZ4_wildCopy32.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i.i
  %.not440.i.i = icmp ne ptr %i.jy, %i.x
  %i.jz = icmp ugt ptr %i.jd, %i.z
  %or.cond457.i.i = select i1 %.not440.i.i, i1 true, i1 %i.jz
  br i1 %or.cond457.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i.i, ptr nonnull align 1 %.4, i64 %.5377.i.i, i1 false)
  %i.ka = ptrtoint ptr %i.jd to i64
  %i.kb = sub i64 %i.ka, %i.am
  %i.kc = trunc i64 %i.kb to i32
  br label %LZ4_decompress_safe_doubleDict.exit

.preheader185:                                    ; preds = %.preheader185.preheader714, %.preheader185
  %.09.i70 = phi ptr [ %i.kf, %.preheader185 ], [ %.09.i70.ph, %.preheader185.preheader714 ] ; 2 uses
  %.0.i71 = phi ptr [ %i.ke, %.preheader185 ], [ %.0.i71.ph, %.preheader185.preheader714 ] ; 2 uses
  %i.kd = load i64, ptr %.09.i70, align 1
  store i64 %i.kd, ptr %.0.i71, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.09.i70, i64 8
  %i.kg = icmp ult ptr %i.ke, %i.jd
  br i1 %i.kg, label %.preheader185, label %LZ4_wildCopy8.exit72, !llvm.loop !184

LZ4_wildCopy8.exit72:                             ; preds = %.preheader185, %middle.block585
  %.val94 = load i16, ptr %i.jg, align 1, !tbaa !27
  %i.kh = zext i16 %.val94 to i64                 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.kj = sub nsw i64 0, %i.kh
  %i.kk = getelementptr inbounds i8, ptr %i.jd, i64 %i.kj
  %i.kl = and i32 %.0371.i.i, 15
  %i.km = zext nneg i32 %i.kl to i64
  br label %.loopexit188

.loopexit188:                                     ; preds = %bb.ar, %LZ4_wildCopy8.exit72
  %.5 = phi ptr [ %i.ki, %LZ4_wildCopy8.exit72 ], [ %i.hu, %bb.ar ] ; 3 uses
  %.8380.i.i = phi i64 [ %i.km, %LZ4_wildCopy8.exit72 ], [ %i.hs, %bb.ar ] ; 2 uses
  %.0369.i.i = phi i64 [ %i.kh, %LZ4_wildCopy8.exit72 ], [ %i.ht, %bb.ar ]
  %.0362.i.i = phi ptr [ %i.kk, %LZ4_wildCopy8.exit72 ], [ %i.hw, %bb.ar ]
  %.9.i.i = phi ptr [ %i.jd, %LZ4_wildCopy8.exit72 ], [ %i.hp, %bb.ar ] ; 2 uses
  %i.kn = icmp eq i64 %.8380.i.i, 15
  br i1 %i.kn, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.loopexit188
  %i.ko = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.kq = icmp ugt ptr %i.kp, %i.ko
  br i1 %i.kq, label %LZ4_wildCopy32.exit.thread, label %bb.az, !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.kr = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.ks = zext i8 %i.kr to i64
  %.not23.i83 = icmp eq i8 %i.kr, -1
  br i1 %.not23.i83, label %.preheader184, label %read_variable_length.exit86, !prof !20

.preheader184:                                    ; preds = %bb.az, %bb.ba
  %.16 = phi ptr [ %i.kt, %bb.ba ], [ %i.kp, %bb.az ] ; 2 uses
  %.0.i85 = phi i64 [ %i.kx, %bb.ba ], [ 255, %bb.az ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.ku = icmp ugt ptr %i.kt, %i.ko
  br i1 %i.ku, label %LZ4_wildCopy32.exit.thread, label %bb.ba, !prof !20

bb.ba:                                            ; preds = %.preheader184
  %i.kv = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.kw = zext i8 %i.kv to i64
  %i.kx = add i64 %.0.i85, %i.kw                  ; 2 uses
  %i.ky = icmp eq i8 %i.kv, -1
  br i1 %i.ky, label %.preheader184, label %read_variable_length.exit86, !llvm.loop !83

read_variable_length.exit86:                      ; preds = %bb.ba, %bb.az
  %.17 = phi ptr [ %i.kp, %bb.az ], [ %i.kt, %bb.ba ] ; 2 uses
  %.019.i84 = phi i64 [ %i.ks, %bb.az ], [ %i.kx, %bb.ba ] ; 2 uses
  %i.kz = icmp ne i64 %.019.i84, -1               ; 2 uses
  %i.la = add i64 %.019.i84, 15                   ; 2 uses
  %i.lb = ptrtoint ptr %.9.i.i to i64
  %i.lc = xor i64 %i.lb, -1
  %i.ld = icmp ule i64 %i.la, %i.lc
  %.not181 = select i1 %i.kz, i1 %i.ld, i1 false
  %.9381.i.i = select i1 %i.kz, i64 %i.la, i64 15
  br i1 %.not181, label %bb.bb, label %LZ4_wildCopy32.exit.thread

bb.bb:                                            ; preds = %read_variable_length.exit86, %.loopexit188
  %.6 = phi ptr [ %.17, %read_variable_length.exit86 ], [ %.5, %.loopexit188 ]
  %.10382.i.i = phi i64 [ %.9381.i.i, %read_variable_length.exit86 ], [ %.8380.i.i, %.loopexit188 ]
  %i.le = add i64 %.10382.i.i, 4
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.x, %bb.y, %bb.bb
  %.2 = phi ptr [ %.6, %bb.bb ], [ %.13146, %bb.x ], [ %i.cf, %bb.y ] ; 15 uses
  %.11383.i.i = phi i64 [ %i.le, %bb.bb ], [ %i.cv, %bb.x ], [ %i.da, %bb.y ] ; 8 uses
  %.1370.i.i = phi i64 [ %.0369.i.i, %bb.bb ], [ %i.ce, %bb.y ], [ %i.ce, %bb.x ] ; 3 uses
  %.1363.i.i = phi ptr [ %.0362.i.i, %bb.bb ], [ %i.ch, %bb.y ], [ %i.ch, %bb.x ] ; 10 uses
  %.10.i.i = phi ptr [ %.9.i.i, %bb.bb ], [ %.2.i.i, %bb.y ], [ %.2.i.i, %bb.x ] ; 14 uses
  %.10.i.i590 = ptrtoaddr ptr %.10.i.i to i64     ; 13 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 %i.o
  %i.lg = icmp ult ptr %i.lf, %i.s
  %or.cond462.i.i = select i1 %i.ad, i1 %i.lg, i1 false, !prof !86
  br i1 %or.cond462.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.bc, !prof !86

bb.bc:                                            ; preds = %.loopexit202
  %i.lh = icmp ult ptr %.1363.i.i, %i.s
  %i.li = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 %.11383.i.i ; 16 uses
  br i1 %i.lh, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.lj = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.lk = icmp ugt ptr %i.li, %i.lj
  br i1 %i.lk, label %LZ4_wildCopy32.exit.thread, label %bb.be, !prof !20

bb.be:                                            ; preds = %bb.bd
  %i.ll = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.lm = ptrtoint ptr %.1363.i.i to i64          ; 3 uses
  %i.ln = sub i64 %i.ll, %i.lm                    ; 6 uses
  %.not445.i.i = icmp ugt i64 %.11383.i.i, %i.ln
  br i1 %.not445.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lo = sub i64 0, %i.ln
  %i.lp = getelementptr inbounds i8, ptr %i.ac, i64 %i.lo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10.i.i, ptr align 1 %i.lp, i64 %.11383.i.i, i1 false)
  br label %.preheader187

bb.bg:                                            ; preds = %bb.be
  %i.lq = sub nuw i64 %.11383.i.i, %i.ln          ; 2 uses
  %i.lr = sub i64 0, %i.ln
  %i.ls = getelementptr inbounds i8, ptr %i.ac, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10.i.i, ptr align 1 %i.ls, i64 %i.ln, i1 false)
end_hunk_8
begin_hunk_9_@LZ4_decompress_safe_continue:bb.a
  %i.on = getelementptr i8, ptr %next.gep619, i64 16
  store <2 x i64> %wide.load620, ptr %next.gep619, align 1
  store <2 x i64> %wide.load621, ptr %i.on, align 1
  %index.next622 = add nuw i64 %index617, 4       ; 2 uses
  %i.oo = icmp eq i64 %index.next622, %n.vec615
  br i1 %i.oo, label %middle.block623, label %vector.body616, !llvm.loop !188

middle.block623:                                  ; preds = %vector.body616
  %cmp.n624 = icmp eq i64 %i.of, %n.vec615
  br i1 %cmp.n624, label %LZ4_wildCopy8.exit, label %.preheader182.preheader709

.preheader182.preheader709:                       ; preds = %vector.memcheck609, %.preheader182.preheader, %middle.block623
  %.09.i.ph = phi ptr [ %.3365.i.i, %vector.memcheck609 ], [ %.3365.i.i, %.preheader182.preheader ], [ %i.oj, %middle.block623 ]
  %.0.i.ph = phi ptr [ %i.ns, %vector.memcheck609 ], [ %i.ns, %.preheader182.preheader ], [ %i.ok, %middle.block623 ]
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.preheader709, %.preheader182
  %.09.i = phi ptr [ %i.or, %.preheader182 ], [ %.09.i.ph, %.preheader182.preheader709 ] ; 2 uses
  %.0.i = phi ptr [ %i.oq, %.preheader182 ], [ %.0.i.ph, %.preheader182.preheader709 ] ; 2 uses
  %i.op = load i64, ptr %.09.i, align 1
  store i64 %i.op, ptr %.0.i, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.os = icmp ult ptr %i.oq, %i.nu
  br i1 %i.os, label %.preheader182, label %LZ4_wildCopy8.exit, !llvm.loop !189

LZ4_wildCopy8.exit:                               ; preds = %.preheader182, %middle.block623
  %i.ot = ptrtoint ptr %i.nu to i64
  %i.ou = ptrtoint ptr %i.ns to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = getelementptr inbounds i8, ptr %.3365.i.i, i64 %i.ov
  br label %bb.bo

bb.bo:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bn
  %.4366.i.i = phi ptr [ %i.ow, %LZ4_wildCopy8.exit ], [ %.3365.i.i, %bb.bn ] ; 6 uses
  %.15.i.i = phi ptr [ %i.nu, %LZ4_wildCopy8.exit ], [ %i.ns, %bb.bn ] ; 7 uses
  %i.ox = icmp ult ptr %.15.i.i, %i.li
  br i1 %i.ox, label %iter.check649, label %.preheader187

iter.check649:                                    ; preds = %bb.bo
  %i.oy = add i64 %.11383.i.i, %.10.i.i590
  %i.oz = add i64 %i.am, %i.y
  %i.pa = add i64 %i.oz, -7
  %i.pb = add i64 %.10.i.i590, 8
  %umax629 = tail call i64 @llvm.umax.i64(i64 %i.pa, i64 %i.pb)
  %i.pc = sub i64 %i.oy, %umax629                 ; 7 uses
  %min.iters.check631 = icmp ult i64 %i.pc, 4
  br i1 %min.iters.check631, label %.lr.ph263.preheader, label %vector.memcheck627

vector.memcheck627:                               ; preds = %iter.check649
  %i.pd = sub i64 %.10.i.i590, %.3365.i.i591
  %i.pe = add i64 %i.pd, 7
  %diff.check628 = icmp ult i64 %i.pe, 31
  br i1 %diff.check628, label %.lr.ph263.preheader, label %vector.main.loop.iter.check632

vector.main.loop.iter.check632:                   ; preds = %vector.memcheck627
  %min.iters.check633 = icmp ult i64 %i.pc, 32
  br i1 %min.iters.check633, label %vec.epilog.ph653, label %vector.ph634

vector.ph634:                                     ; preds = %vector.main.loop.iter.check632
  %n.mod.vf635 = and i64 %i.pc, 28
  %n.vec636 = and i64 %i.pc, -32                  ; 5 uses
  %i.pf = getelementptr i8, ptr %.15.i.i, i64 %n.vec636
  %i.pg = getelementptr i8, ptr %.4366.i.i, i64 %n.vec636
  br label %vector.body637

vector.body637:                                   ; preds = %vector.body637, %vector.ph634
  %index638 = phi i64 [ 0, %vector.ph634 ], [ %index.next643, %vector.body637 ] ; 3 uses
  %next.gep639 = getelementptr i8, ptr %.15.i.i, i64 %index638 ; 2 uses
  %next.gep640 = getelementptr i8, ptr %.4366.i.i, i64 %index638 ; 2 uses
  %i.ph = getelementptr i8, ptr %next.gep640, i64 16
  %wide.load641 = load <16 x i8>, ptr %next.gep640, align 1, !tbaa !8
  %wide.load642 = load <16 x i8>, ptr %i.ph, align 1, !tbaa !8
  %i.pi = getelementptr i8, ptr %next.gep639, i64 16
  store <16 x i8> %wide.load641, ptr %next.gep639, align 1, !tbaa !8
  store <16 x i8> %wide.load642, ptr %i.pi, align 1, !tbaa !8
  %index.next643 = add nuw i64 %index638, 32      ; 2 uses
  %i.pj = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.pj, label %middle.block644, label %vector.body637, !llvm.loop !190

middle.block644:                                  ; preds = %vector.body637
  %cmp.n645 = icmp eq i64 %i.pc, %n.vec636
  br i1 %cmp.n645, label %.preheader187, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block644
  %min.epilog.iters.check652 = icmp eq i64 %n.mod.vf635, 0
  br i1 %min.epilog.iters.check652, label %.lr.ph263.preheader, label %vec.epilog.ph653, !prof !96

vec.epilog.ph653:                                 ; preds = %vector.main.loop.iter.check632, %vec.epilog.iter.check651
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check632 ]
  %n.vec655 = and i64 %i.pc, -4                   ; 4 uses
  %i.pk = getelementptr i8, ptr %.15.i.i, i64 %n.vec655
  %i.pl = getelementptr i8, ptr %.4366.i.i, i64 %n.vec655
  br label %vec.epilog.vector.body656

vec.epilog.vector.body656:                        ; preds = %vec.epilog.vector.body656, %vec.epilog.ph653
  %index657 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph653 ], [ %index.next661, %vec.epilog.vector.body656 ] ; 3 uses
  %next.gep658 = getelementptr i8, ptr %.15.i.i, i64 %index657
  %next.gep659 = getelementptr i8, ptr %.4366.i.i, i64 %index657
  %wide.load660 = load <4 x i8>, ptr %next.gep659, align 1, !tbaa !8
  store <4 x i8> %wide.load660, ptr %next.gep658, align 1, !tbaa !8
  %index.next661 = add nuw i64 %index657, 4       ; 2 uses
  %i.pm = icmp eq i64 %index.next661, %n.vec655
  br i1 %i.pm, label %vec.epilog.middle.block662, label %vec.epilog.vector.body656, !llvm.loop !191

vec.epilog.middle.block662:                       ; preds = %vec.epilog.vector.body656
  %cmp.n663 = icmp eq i64 %i.pc, %n.vec655
  br i1 %cmp.n663, label %.preheader187, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %vector.memcheck627, %iter.check649, %vec.epilog.iter.check651, %vec.epilog.middle.block662
  %.16.i.i261.ph = phi ptr [ %.15.i.i, %iter.check649 ], [ %.15.i.i, %vector.memcheck627 ], [ %i.pf, %vec.epilog.iter.check651 ], [ %i.pk, %vec.epilog.middle.block662 ]
  %.5367.i.i260.ph = phi ptr [ %.4366.i.i, %iter.check649 ], [ %.4366.i.i, %vector.memcheck627 ], [ %i.pg, %vec.epilog.iter.check651 ], [ %i.pl, %vec.epilog.middle.block662 ]
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.16.i.i261 = phi ptr [ %i.pp, %.lr.ph263 ], [ %.16.i.i261.ph, %.lr.ph263.preheader ] ; 2 uses
  %.5367.i.i260 = phi ptr [ %i.pn, %.lr.ph263 ], [ %.5367.i.i260.ph, %.lr.ph263.preheader ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.5367.i.i260, i64 1
  %i.po = load i8, ptr %.5367.i.i260, align 1, !tbaa !8
  %i.pp = getelementptr inbounds nuw i8, ptr %.16.i.i261, i64 1 ; 2 uses
  store i8 %i.po, ptr %.16.i.i261, align 1, !tbaa !8
  %i.pq = icmp ult ptr %i.pp, %i.li
  br i1 %i.pq, label %.lr.ph263, label %.preheader187, !llvm.loop !192

bb.bp:                                            ; preds = %bb.bl
  %i.pr = load i64, ptr %.3365.i.i, align 1
  store i64 %i.pr, ptr %i.ns, align 1
  %i.ps = icmp ugt i64 %.11383.i.i, 16
  br i1 %i.ps, label %bb.bq, label %.preheader187

bb.bq:                                            ; preds = %bb.bp
  %i.pt = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 16 ; 4 uses
  %i.pu = add i64 %.11383.i.i, %.10.i.i590
  %i.pv = add i64 %.10.i.i590, 24
  %i.pw = tail call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.pv)
  %i.px = sub i64 %i.pw, %.10.i.i590
  %i.py = add i64 %i.px, -17                      ; 2 uses
  %i.pz = lshr i64 %i.py, 3
  %i.qa = add nuw nsw i64 %i.pz, 1                ; 2 uses
  %min.iters.check594 = icmp ult i64 %i.py, 104
  br i1 %min.iters.check594, label %scalar.ph593.preheader, label %vector.memcheck589

vector.memcheck589:                               ; preds = %bb.bq
  %i.qb = sub i64 %.10.i.i590, %.3365.i.i591
  %i.qc = add i64 %i.qb, 7
  %diff.check592 = icmp ult i64 %i.qc, 31
  br i1 %diff.check592, label %scalar.ph593.preheader, label %vector.ph595

vector.ph595:                                     ; preds = %vector.memcheck589
  %n.vec597 = and i64 %i.qa, 4611686018427387900  ; 3 uses
  %i.qd = shl i64 %n.vec597, 3                    ; 2 uses
  %i.qe = getelementptr i8, ptr %.3365.i.i, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.pt, i64 %i.qd
  br label %vector.body598

vector.body598:                                   ; preds = %vector.body598, %vector.ph595
  %index599 = phi i64 [ 0, %vector.ph595 ], [ %index.next604, %vector.body598 ] ; 2 uses
  %i.qg = shl i64 %index599, 3                    ; 2 uses
  %next.gep600 = getelementptr i8, ptr %.3365.i.i, i64 %i.qg ; 2 uses
  %next.gep601 = getelementptr i8, ptr %i.pt, i64 %i.qg ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %next.gep600, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %next.gep600, i64 24
  %wide.load602 = load <2 x i64>, ptr %i.qh, align 1
  %wide.load603 = load <2 x i64>, ptr %i.qi, align 1
  %i.qj = getelementptr i8, ptr %next.gep601, i64 16
  store <2 x i64> %wide.load602, ptr %next.gep601, align 1
  store <2 x i64> %wide.load603, ptr %i.qj, align 1
  %index.next604 = add nuw i64 %index599, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next604, %n.vec597
  br i1 %i.qk, label %middle.block605, label %vector.body598, !llvm.loop !193

middle.block605:                                  ; preds = %vector.body598
  %cmp.n606 = icmp eq i64 %i.qa, %n.vec597
  br i1 %cmp.n606, label %.preheader187, label %scalar.ph593.preheader

scalar.ph593.preheader:                           ; preds = %vector.memcheck589, %bb.bq, %middle.block605
  %.3365.i.i.pn.ph = phi ptr [ %.3365.i.i, %vector.memcheck589 ], [ %.3365.i.i, %bb.bq ], [ %i.qe, %middle.block605 ]
  %.0.i68.ph = phi ptr [ %i.pt, %vector.memcheck589 ], [ %i.pt, %bb.bq ], [ %i.qf, %middle.block605 ]
  br label %scalar.ph593

scalar.ph593:                                     ; preds = %scalar.ph593.preheader, %scalar.ph593
  %.3365.i.i.pn = phi ptr [ %.09.i67, %scalar.ph593 ], [ %.3365.i.i.pn.ph, %scalar.ph593.preheader ]
  %.0.i68 = phi ptr [ %i.qm, %scalar.ph593 ], [ %.0.i68.ph, %scalar.ph593.preheader ] ; 2 uses
  %.09.i67 = getelementptr inbounds nuw i8, ptr %.3365.i.i.pn, i64 8 ; 2 uses
  %i.ql = load i64, ptr %.09.i67, align 1
  store i64 %i.ql, ptr %.0.i68, align 1
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i68, i64 8 ; 2 uses
  %i.qn = icmp ult ptr %i.qm, %i.li
  br i1 %i.qn, label %scalar.ph593, label %.preheader187, !llvm.loop !194

.preheader187:                                    ; preds = %scalar.ph593, %.lr.ph263, %.lr.ph266, %bb.bp, %bb.bo, %vec.epilog.middle.block662, %middle.block644, %middle.block605, %bb.bf, %bb.bh, %vec.epilog.middle.block701, %middle.block683, %bb.n
  %.3.ph = phi ptr [ %.2, %bb.bf ], [ %1, %bb.n ], [ %.2, %middle.block683 ], [ %.2, %vec.epilog.middle.block701 ], [ %.2, %bb.bp ], [ %.2, %bb.bh ], [ %.2, %middle.block605 ], [ %.2, %.lr.ph266 ], [ %.2, %middle.block644 ], [ %.2, %vec.epilog.middle.block662 ], [ %.2, %.lr.ph263 ], [ %.2, %bb.bo ], [ %.2, %scalar.ph593 ] ; 3 uses
  %.6.i.i.ph = phi ptr [ %i.li, %bb.bf ], [ %2, %bb.n ], [ %i.mh, %middle.block683 ], [ %i.mm, %vec.epilog.middle.block701 ], [ %i.li, %bb.bp ], [ %i.li, %bb.bh ], [ %i.li, %middle.block605 ], [ %i.mr, %.lr.ph266 ], [ %i.li, %middle.block644 ], [ %i.li, %vec.epilog.middle.block662 ], [ %i.li, %.lr.ph263 ], [ %i.li, %bb.bo ], [ %i.li, %scalar.ph593 ] ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.qp = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.qq = zext i8 %i.qp to i32                    ; 3 uses
  %i.qr = lshr i32 %i.qq, 4                       ; 2 uses
  %cond.i.i253 = icmp eq i32 %i.qr, 15
  br i1 %cond.i.i253, label %._crit_edge, label %.lr.ph255

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.u, %read_variable_length.exit77, %read_variable_length.exit77.thread143, %bb.o, %read_variable_length.exit.thread126, %read_variable_length.exit, %bb.ac, %.thread151, %.preheader197, %.preheader194, %.preheader186, %.preheader184, %bb.ay, %._crit_edge, %read_variable_length.exit82, %read_variable_length.exit82.thread158, %bb.bm, %bb.bd, %.loopexit202, %read_variable_length.exit86, %bb.aw
  %.7 = phi ptr [ %.4, %bb.aw ], [ %.2, %.loopexit202 ], [ %.15161, %read_variable_length.exit82.thread158 ], [ %.2, %bb.bd ], [ %.17, %read_variable_length.exit86 ], [ %i.kt, %.preheader184 ], [ %i.ip, %read_variable_length.exit82 ], [ %.2, %bb.bm ], [ %i.kp, %bb.ay ], [ %i.bf, %.preheader197 ], [ %.lcssa213, %._crit_edge ], [ %i.ip, %.preheader186 ], [ %i.co, %.preheader194 ], [ %i.co, %read_variable_length.exit77 ], [ %.13146, %read_variable_length.exit77.thread143 ], [ %i.ax, %bb.o ], [ %.11129, %read_variable_length.exit.thread126 ], [ %i.bf, %read_variable_length.exit ], [ %.8, %bb.ac ], [ %.8, %.thread151 ], [ %i.ck, %bb.u ]
  %i.qs = ptrtoint ptr %.7 to i64
  %i.qt = ptrtoint ptr %1 to i64
  %.neg.i.i = sub i64 %i.qt, %i.qs
  %i.qu = trunc i64 %.neg.i.i to i32
  %i.qv = add nsw i32 %i.qu, -1
  br label %LZ4_decompress_safe_doubleDict.exit

LZ4_decompress_safe_doubleDict.exit:              ; preds = %LZ4_wildCopy32.exit.thread, %bb.ax, %bb.h, %bb.f
  %.0 = phi i32 [ %i.m, %bb.f ], [ %i.q, %bb.h ], [ %i.kc, %bb.ax ], [ %i.qv, %LZ4_wildCopy32.exit.thread ] ; 4 uses
  %i.qw = icmp slt i32 %.0, 1
  br i1 %i.qw, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.br

bb.br:                                            ; preds = %LZ4_decompress_safe_doubleDict.exit
  %i.qx = zext nneg i32 %.0 to i64                ; 2 uses
  %i.qy = load i64, ptr %i.a, align 8, !tbaa !171
  %i.qz = add i64 %i.qy, %i.qx
  store i64 %i.qz, ptr %i.a, align 8, !tbaa !171
  %i.ra = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qx
  store ptr %i.rb, ptr %i.i, align 8, !tbaa !173
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.bs:                                            ; preds = %bb.d
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.rc, align 8, !tbaa !175
  %i.rd = sub i64 0, %i.b
  %i.re = getelementptr inbounds i8, ptr %i.j, i64 %i.rd ; 2 uses
  store ptr %i.re, ptr %0, align 8, !tbaa !174
  %i.rf = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.re, i64 noundef %i.b) ; 4 uses
  %i.rg = icmp slt i32 %i.rf, 1
  br i1 %i.rg, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rh = zext nneg i32 %i.rf to i64              ; 2 uses
  store i64 %i.rh, ptr %i.a, align 8, !tbaa !171
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 %i.rh
  store ptr %i.ri, ptr %i.i, align 8, !tbaa !173
  br label %LZ4_decompress_safe_doubleDict.exit.thread

LZ4_decompress_safe_doubleDict.exit.thread:       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.c, %bb.bt, %bb.br, %bb.bs, %LZ4_decompress_safe_doubleDict.exit, %bb.b
  %.058 = phi i32 [ %.0, %LZ4_decompress_safe_doubleDict.exit ], [ %i.rf, %bb.bs ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.0, %bb.br ], [ %i.rf, %bb.bt ], [ -1, %bb.m ], [ %i.ak, %bb.l ], [ -1, %bb.k ], [ -1, %bb.i ]
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
  %i.g = zext nneg i32 %3 to i64                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %0, align 1, !tbaa !8
  %i.n = icmp ne i8 %i.m, 0
  %i.o = sext i1 %i.n to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_generic.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = icmp samesign ult i32 %3, 64
  br i1 %i.r, label %.preheader122, label %.preheader131

.preheader131:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader131
  %.0 = phi ptr [ %0, %.preheader131 ], [ %.0.be, %.backedge.backedge ] ; 3 uses
  %.0358.i = phi ptr [ %1, %.preheader131 ], [ %.0358.i.be, %.backedge.backedge ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.y = load i8, ptr %.0, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32                      ; 4 uses
  %i.aa = lshr i32 %i.z, 4                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ac = icmp eq i32 %i.aa, 15
  br i1 %i.ac, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.backedge
  %.not22.i = icmp ult ptr %i.x, %i.t
  br i1 %.not22.i, label %bb.h, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.h:                                             ; preds = %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !8    ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %.not23.i = icmp eq i8 %i.ad, -1
  br i1 %.not23.i, label %.preheader129, label %read_variable_length.exit.thread63, !prof !20

.preheader129:                                    ; preds = %bb.h, %bb.i
  %.10 = phi ptr [ %i.af, %bb.i ], [ %5, %bb.h ]  ; 2 uses
  %.0.i12 = phi i64 [ %i.aj, %bb.i ], [ 255, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 5 uses
  %i.ag = icmp ugt ptr %i.af, %i.t
  br i1 %i.ag, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %.preheader129
  %i.ah = load i8, ptr %.10, align 1, !tbaa !8    ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %.0.i12, %i.ai                  ; 3 uses
  %i.ak = icmp eq i8 %i.ah, -1
  br i1 %i.ak, label %.preheader129, label %read_variable_length.exit, !llvm.loop !83

read_variable_length.exit:                        ; preds = %bb.i
  %i.al = icmp eq i64 %i.aj, -1
  br i1 %i.al, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit.thread63

read_variable_length.exit.thread63:               ; preds = %bb.h, %read_variable_length.exit
  %.019.i67 = phi i64 [ %i.aj, %read_variable_length.exit ], [ %i.ae, %bb.h ]
  %.1166 = phi ptr [ %i.af, %read_variable_length.exit ], [ %5, %bb.h ] ; 5 uses
  %i.am = add i64 %.019.i67, 15                   ; 5 uses
  %i.an = ptrtoint ptr %.0358.i to i64
  %i.ao = xor i64 %i.an, -1
  %i.ap = icmp ugt i64 %i.am, %i.ao
  %i.aq = ptrtoint ptr %.1166 to i64
  %i.ar = xor i64 %i.aq, -1
  %i.as = icmp ugt i64 %i.am, %i.ar
  %or.cond = or i1 %i.ap, %i.as
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %bb.j, !prof !84

bb.j:                                             ; preds = %read_variable_length.exit.thread63
  %i.at = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.am ; 3 uses
  %i.au = icmp ugt ptr %i.at, %i.j
  %i.av = getelementptr inbounds nuw i8, ptr %.1166, i64 %i.am ; 2 uses
  %i.aw = icmp ugt ptr %i.av, %i.u
  %or.cond449.i = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond449.i, label %LZ4_wildCopy32.exit, label %.preheader128

.preheader128:                                    ; preds = %bb.j, %.preheader128
  %.011.i = phi ptr [ %i.ba, %.preheader128 ], [ %.1166, %bb.j ] ; 3 uses
  %.0.i26 = phi ptr [ %i.az, %.preheader128 ], [ %.0358.i, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i26, ptr noundef nonnull align 1 dereferenceable(16) %.011.i, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.bb = icmp ult ptr %i.az, %i.at
  br i1 %i.bb, label %.preheader128, label %LZ4_wildCopy32.exit.thread72, !llvm.loop !85

bb.k:                                             ; preds = %.backedge
  %.not.i = icmp ugt ptr %i.x, %i.s
  br i1 %.not.i, label %LZ4_wildCopy32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %.0358.i, i64 %i.ab
  br label %LZ4_wildCopy32.exit.thread72

LZ4_wildCopy32.exit.thread72:                     ; preds = %.preheader128, %bb.l
  %.1 = phi ptr [ %i.bc, %bb.l ], [ %i.av, %.preheader128 ] ; 3 uses
  %.2.i = phi ptr [ %i.bd, %bb.l ], [ %i.at, %.preheader128 ] ; 25 uses
  %.2.i415 = ptrtoaddr ptr %.2.i to i64           ; 7 uses
  %.val33 = load i16, ptr %.1, align 1, !tbaa !27 ; 5 uses
  %i.be = zext i16 %.val33 to i64                 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds i8, ptr %.2.i, i64 %i.bg ; 18 uses
  %i.bi = and i32 %i.z, 15                        ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 15
  br i1 %i.bj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread72
  %i.bk = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %i.bl = icmp ugt ptr %i.bk, %i.w
  br i1 %i.bl, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !8   ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %.not23.i13 = icmp eq i8 %i.bm, -1
  br i1 %.not23.i13, label %.preheader126, label %read_variable_length.exit16.thread80, !prof !20

.preheader126:                                    ; preds = %bb.n, %bb.o
  %.12 = phi ptr [ %i.bo, %bb.o ], [ %i.bk, %bb.n ] ; 2 uses
  %.0.i15 = phi i64 [ %i.bs, %bb.o ], [ 255, %bb.n ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.12, i64 1 ; 5 uses
  %i.bp = icmp ugt ptr %i.bo, %i.w
  br i1 %i.bp, label %LZ4_wildCopy32.exit.thread, label %bb.o, !prof !20

bb.o:                                             ; preds = %.preheader126
  %i.bq = load i8, ptr %.12, align 1, !tbaa !8    ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = add i64 %.0.i15, %i.br                  ; 3 uses
  %i.bt = icmp eq i8 %i.bq, -1
  br i1 %i.bt, label %.preheader126, label %read_variable_length.exit16, !llvm.loop !83

read_variable_length.exit16:                      ; preds = %bb.o
  %i.bu = icmp eq i64 %i.bs, -1
  br i1 %i.bu, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit16.thread80

read_variable_length.exit16.thread80:             ; preds = %bb.n, %read_variable_length.exit16
  %.019.i1484 = phi i64 [ %i.bs, %read_variable_length.exit16 ], [ %i.bn, %bb.n ]
  %.1383 = phi ptr [ %i.bo, %read_variable_length.exit16 ], [ %i.bk, %bb.n ] ; 3 uses
  %i.bv = add i64 %.019.i1484, 19                 ; 4 uses
  %i.bw = ptrtoint ptr %.2.i to i64
  %i.bx = xor i64 %i.bw, -1
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !20

bb.p:                                             ; preds = %read_variable_length.exit16.thread80
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.bv
  %.not435.i = icmp ult ptr %i.bz, %i.v
  br i1 %.not435.i, label %.thread88, label %.loopexit134

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread72
  %narrow.i = add nuw nsw i32 %i.bi, 4
  %i.ca = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.ca ; 2 uses
  %.not434.i = icmp ult ptr %i.cb, %i.v
  br i1 %.not434.i, label %bb.r, label %.loopexit134

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp uge ptr %i.bh, %i.b
  %i.cd = icmp ugt i16 %.val33, 7
  %or.cond5.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread88

bb.s:                                             ; preds = %bb.r
  %i.ce = load i64, ptr %i.bh, align 1
  store i64 %i.ce, ptr %.2.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ch = load i64, ptr %i.cg, align 1
  store i64 %i.ch, ptr %i.cf, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.ck = load i16, ptr %i.cj, align 1
  store i16 %i.ck, ptr %i.ci, align 1
  br label %.backedge.backedge

.thread88:                                        ; preds = %bb.p, %bb.r
  %.8 = phi ptr [ %i.bf, %bb.r ], [ %.1383, %bb.p ] ; 7 uses
  %.2374.i = phi i64 [ %i.ca, %bb.r ], [ %i.bv, %bb.p ] ; 4 uses
  %i.cl = icmp ult ptr %i.bh, %i.b
  br i1 %i.cl, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !86

bb.t:                                             ; preds = %.thread88
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.2374.i ; 9 uses
  %i.cn = icmp ult i16 %.val33, 16
  br i1 %i.cn, label %bb.u, label %.preheader124, !prof !20

bb.u:                                             ; preds = %bb.t
  switch i16 %.val33, label %bb.y [
    i16 1, label %bb.v
    i16 2, label %bb.w
    i16 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.cp, 16843009
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bh, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bh, align 1
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.cq = icmp samesign ult i16 %.val33, 8
  br i1 %i.cq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.2.i, align 1, !tbaa !16
  %i.cr = load i8, ptr %i.bh, align 1, !tbaa !8
  store i8 %i.cr, ptr %.2.i, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.2.i, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.be
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !35
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.dg = load i32, ptr %i.de, align 1
  store i32 %i.dg, ptr %i.df, align 1
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.be
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !35
  %i.dj = sext i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.de, i64 %i.dk
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dm = load i64, ptr %i.bh, align 1
  store i64 %i.dm, ptr %.2.i, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.023.i = phi ptr [ %i.dl, %bb.z ], [ %i.dn, %bb.aa ] ; 5 uses
  %.0.i31 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.do = add i64 %.2374.i, %.2.i415
  %i.dp = add i64 %.2.i415, 16
  %i.dq = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dp)
  %i.dr = sub i64 %i.dq, %.2.i415
  %i.ds = add i64 %i.dr, -9                       ; 2 uses
  %i.dt = lshr i64 %i.ds, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ds, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ab
  %.023.i416 = ptrtoaddr ptr %.023.i to i64
  %i.dv = sub i64 %.2.i415, %.023.i416
  %i.dw = add i64 %i.dv, 7
  %diff.check = icmp ult i64 %i.dw, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.du, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %.023.i, i64 %i.dx
  %i.dz = getelementptr i8, ptr %.0.i31, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.i, i64 %i.ea ; 2 uses
  %next.gep417 = getelementptr i8, ptr %.0.i31, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load418 = load <2 x i64>, ptr %i.eb, align 1
  %i.ec = getelementptr i8, ptr %next.gep417, i64 16
  store <2 x i64> %wide.load, ptr %next.gep417, align 1
  store <2 x i64> %wide.load418, ptr %i.ec, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %.backedge.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ab, %middle.block
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.ab ], [ %i.dy, %middle.block ]
  %.0.i.i.ph = phi ptr [ %.0.i31, %vector.memcheck ], [ %.0.i31, %bb.ab ], [ %i.dz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.eg, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ef, %scalar.ph ], [ %.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ee = load i64, ptr %.09.i.i, align 1
  store i64 %i.ee, ptr %.0.i.i, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.eh = icmp ult ptr %i.ef, %i.cm
  br i1 %i.eh, label %scalar.ph, label %.backedge.backedge, !llvm.loop !196

bb.ac:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.v ], [ %.sroa.0.2.insert.insert.i, %bb.w ], [ %.sroa.0.0.copyload2.i, %bb.x ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.ei = icmp samesign ugt i64 %.2374.i, 8
  br i1 %i.ei, label %.lr.ph.preheader, label %.backedge.backedge

.lr.ph.preheader:                                 ; preds = %bb.ac
  %.0.i30179 = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 4 uses
  %i.ej = add i64 %.2374.i, %.2.i415
  %i.ek = add i64 %.2.i415, 16
  %i.el = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.ek)
  %i.em = sub i64 %i.el, %.2.i415
  %i.en = add i64 %i.em, -9                       ; 2 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check421 = icmp ult i64 %i.en, 24
  br i1 %min.iters.check421, label %.lr.ph.preheader556, label %vector.ph422

vector.ph422:                                     ; preds = %.lr.ph.preheader
  %n.vec424 = and i64 %i.ep, 4611686018427387900  ; 3 uses
  %i.eq = shl i64 %n.vec424, 3                    ; 2 uses
  %i.er = getelementptr i8, ptr %.0.i30179, i64 %i.eq
  %i.es = getelementptr i8, ptr %.2.i, i64 %i.eq
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.et = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph422
  %index426 = phi i64 [ 0, %vector.ph422 ], [ %index.next430, %vector.body425 ] ; 2 uses
  %i.eu = shl i64 %index426, 3                    ; 2 uses
  %next.gep427 = getelementptr i8, ptr %.0.i30179, i64 %i.eu
  %i.ev = getelementptr i8, ptr %.0.i30179, i64 %i.eu
  %next.gep428 = getelementptr i8, ptr %i.ev, i64 16
  store <4 x i32> %i.et, ptr %next.gep427, align 1
  store <4 x i32> %i.et, ptr %next.gep428, align 1
  %index.next430 = add nuw i64 %index426, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next430, %n.vec424
  br i1 %i.ew, label %middle.block431, label %vector.body425, !llvm.loop !197

middle.block431:                                  ; preds = %vector.body425
  %cmp.n432 = icmp eq i64 %i.ep, %n.vec424
  br i1 %cmp.n432, label %.backedge.backedge, label %.lr.ph.preheader556

.backedge.backedge:                               ; preds = %.preheader124, %.lr.ph, %scalar.ph, %middle.block431, %middle.block, %bb.ac, %bb.s
  %.0.be = phi ptr [ %i.bf, %bb.s ], [ %.8, %middle.block ], [ %.8, %bb.ac ], [ %.8, %middle.block431 ], [ %.8, %scalar.ph ], [ %.8, %.lr.ph ], [ %.8, %.preheader124 ]
  %.0358.i.be = phi ptr [ %i.cb, %bb.s ], [ %i.cm, %middle.block ], [ %i.cm, %bb.ac ], [ %i.cm, %middle.block431 ], [ %i.cm, %scalar.ph ], [ %i.cm, %.lr.ph ], [ %i.cm, %.preheader124 ]
  br label %.backedge

.lr.ph.preheader556:                              ; preds = %.lr.ph.preheader, %middle.block431
  %.0.i30181.ph = phi ptr [ %.0.i30179, %.lr.ph.preheader ], [ %i.er, %middle.block431 ]
  %.pn.i180.ph = phi ptr [ %.2.i, %.lr.ph.preheader ], [ %i.es, %middle.block431 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader556, %.lr.ph
  %.0.i30181 = phi ptr [ %.0.i30, %.lr.ph ], [ %.0.i30181.ph, %.lr.ph.preheader556 ] ; 3 uses
  %.pn.i180 = phi ptr [ %.0.i30181, %.lr.ph ], [ %.pn.i180.ph, %.lr.ph.preheader556 ]
  store i32 %.sroa.9.0.i, ptr %.0.i30181, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i30 = getelementptr inbounds nuw i8, ptr %.0.i30181, i64 8 ; 2 uses
  %i.ex = icmp ult ptr %.0.i30, %i.cm
  br i1 %i.ex, label %.lr.ph, label %.backedge.backedge, !llvm.loop !198

.preheader124:                                    ; preds = %bb.t, %.preheader124
  %.011.i27 = phi ptr [ %i.fb, %.preheader124 ], [ %i.bh, %bb.t ] ; 3 uses
  %.0.i28 = phi ptr [ %i.fa, %.preheader124 ], [ %.2.i, %bb.t ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i28, ptr noundef nonnull align 1 dereferenceable(16) %.011.i27, i64 16, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i28, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i27, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ey, ptr noundef nonnull align 1 dereferenceable(16) %i.ez, i64 16, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i28, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.011.i27, i64 32
  %i.fc = icmp ult ptr %i.fa, %i.cm
  br i1 %i.fc, label %.preheader124, label %.backedge.backedge, !llvm.loop !85

.lr.ph184:                                        ; preds = %.preheader122, %bb.ae
  %.in = phi i32 [ %i.gf, %bb.ae ], [ %i.mz, %.preheader122 ]
  %i.fd = phi i32 [ %i.ge, %bb.ae ], [ %i.my, %.preheader122 ] ; 2 uses
  %i.fe = phi ptr [ %i.gc, %bb.ae ], [ %i.mw, %.preheader122 ] ; 4 uses
  %.6.i183 = phi ptr [ %i.gb, %bb.ae ], [ %.6.i.ph, %.preheader122 ] ; 4 uses
  %i.ff = zext nneg i32 %.in to i64               ; 3 uses
  %i.fg = icmp ult ptr %i.fe, %i.i
  %i.fh = icmp ule ptr %.6.i183, %i.j
  %i.fi = and i1 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ad, label %LZ4_wildCopy32.exit, !prof !29

bb.ad:                                            ; preds = %.lr.ph184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i183, ptr noundef nonnull align 1 dereferenceable(16) %i.fe, i64 16, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %.6.i183, i64 %i.ff ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff ; 3 uses
  %i.fl = and i32 %i.fd, 15                       ; 2 uses
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %.val = load i16, ptr %i.fk, align 1, !tbaa !27 ; 2 uses
  %i.fn = zext i16 %.val to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 2 ; 3 uses
  %i.fp = sub nsw i64 0, %i.fn
  %i.fq = getelementptr inbounds i8, ptr %i.fj, i64 %i.fp ; 5 uses
  %i.fr = icmp eq i32 %i.fl, 15
  %i.fs = icmp ult i16 %.val, 8
  %or.cond3.i.not115 = select i1 %i.fr, i1 true, i1 %i.fs
  %.not442.i = icmp ult ptr %i.fq, %i.b
  %or.cond110 = select i1 %or.cond3.i.not115, i1 true, i1 %.not442.i
  br i1 %or.cond110, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = load i64, ptr %i.fq, align 1
  store i64 %i.ft, ptr %i.fj, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fw = load i64, ptr %i.fv, align 1
  store i64 %i.fw, ptr %i.fu, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fz = load i16, ptr %i.fy, align 1
  store i16 %i.fz, ptr %i.fx, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 3 ; 2 uses
  %i.gd = load i8, ptr %i.fo, align 1, !tbaa !8
  %i.ge = zext i8 %i.gd to i32                    ; 3 uses
  %i.gf = lshr i32 %i.ge, 4                       ; 2 uses
  %cond.i = icmp eq i32 %i.gf, 15
  br i1 %cond.i, label %._crit_edge, label %.lr.ph184

._crit_edge:                                      ; preds = %bb.ae, %.preheader122
  %.3.lcssa = phi ptr [ %.3.ph, %.preheader122 ], [ %i.fo, %bb.ae ]
  %.6.i.lcssa = phi ptr [ %.6.i.ph, %.preheader122 ], [ %i.gb, %bb.ae ] ; 2 uses
  %.lcssa145 = phi ptr [ %i.mw, %.preheader122 ], [ %i.gc, %bb.ae ] ; 3 uses
  %.lcssa142 = phi i32 [ %i.my, %.preheader122 ], [ %i.ge, %bb.ae ]
  %i.gg = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 2 uses
  %.not22.i17 = icmp ult ptr %.lcssa145, %i.gg
  br i1 %.not22.i17, label %bb.af, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.af:                                            ; preds = %._crit_edge
  %6 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.gh = load i8, ptr %.lcssa145, align 1, !tbaa !8 ; 2 uses
  %i.gi = zext i8 %i.gh to i64
  %.not23.i19 = icmp eq i8 %i.gh, -1
  br i1 %.not23.i19, label %.preheader121, label %read_variable_length.exit21.thread95, !prof !20

.preheader121:                                    ; preds = %bb.af, %bb.ag
  %.14 = phi ptr [ %i.gj, %bb.ag ], [ %6, %bb.af ] ; 2 uses
  %.0.i20 = phi i64 [ %i.gn, %bb.ag ], [ 255, %bb.af ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.gk = icmp ugt ptr %i.gj, %i.gg
  br i1 %i.gk, label %LZ4_wildCopy32.exit.thread, label %bb.ag, !prof !20

bb.ag:                                            ; preds = %.preheader121
  %i.gl = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.gm = zext i8 %i.gl to i64
  %i.gn = add i64 %.0.i20, %i.gm                  ; 3 uses
  %i.go = icmp eq i8 %i.gl, -1
  br i1 %i.go, label %.preheader121, label %read_variable_length.exit21, !llvm.loop !83

read_variable_length.exit21:                      ; preds = %bb.ag
  %i.gp = icmp eq i64 %i.gn, -1
  br i1 %i.gp, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit21.thread95

read_variable_length.exit21.thread95:             ; preds = %bb.af, %read_variable_length.exit21
  %.019.i1899 = phi i64 [ %i.gn, %read_variable_length.exit21 ], [ %i.gi, %bb.af ]
  %.1598 = phi ptr [ %i.gj, %read_variable_length.exit21 ], [ %6, %bb.af ] ; 3 uses
  %i.gq = add i64 %.019.i1899, 15                 ; 3 uses
  %i.gr = ptrtoint ptr %.6.i.lcssa to i64
  %i.gs = xor i64 %i.gr, -1
  %i.gt = icmp ugt i64 %i.gq, %i.gs
  %i.gu = ptrtoint ptr %.1598 to i64
  %i.gv = xor i64 %i.gu, -1
  %i.gw = icmp ugt i64 %i.gq, %i.gv
  %or.cond113 = or i1 %i.gt, %i.gw
  br i1 %or.cond113, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph184, %read_variable_length.exit21.thread95
  %.4 = phi ptr [ %.1598, %read_variable_length.exit21.thread95 ], [ %i.fe, %.lr.ph184 ], [ %i.x, %bb.k ], [ %.1166, %bb.j ] ; 8 uses
  %.5377.i = phi i64 [ %i.gq, %read_variable_length.exit21.thread95 ], [ %i.ff, %.lr.ph184 ], [ %i.ab, %bb.k ], [ %i.am, %bb.j ] ; 5 uses
  %.0371.i = phi i32 [ %.lcssa142, %read_variable_length.exit21.thread95 ], [ %i.fd, %.lr.ph184 ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %.7.i = phi ptr [ %.6.i.lcssa, %read_variable_length.exit21.thread95 ], [ %.6.i183, %.lr.ph184 ], [ %.0358.i, %bb.k ], [ %.0358.i, %bb.j ] ; 6 uses
  %.7.i436 = ptrtoaddr ptr %.7.i to i64           ; 4 uses
  %.4437 = ptrtoaddr ptr %.4 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.5377.i ; 6 uses
  %i.gy = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.gz = icmp ugt ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %LZ4_wildCopy32.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.hc = icmp ugt ptr %i.ha, %i.hb
  br i1 %i.hc, label %bb.ai, label %.preheader120.preheader

.preheader120.preheader:                          ; preds = %bb.ah
  %i.hd = add nuw i64 %.5377.i, %.7.i436
  %i.he = add i64 %.7.i436, 8
  %i.hf = tail call i64 @llvm.umax.i64(i64 %i.hd, i64 %i.he)
  %i.hg = xor i64 %.7.i436, -1
  %i.hh = add i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 3
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check440 = icmp ult i64 %i.hh, 72
  %i.hk = sub i64 %.4437, %.7.i436
  %diff.check438 = icmp ugt i64 %i.hk, -32
  %or.cond522 = select i1 %min.iters.check440, i1 true, i1 %diff.check438
  br i1 %or.cond522, label %.preheader120.preheader527, label %vector.ph441

vector.ph441:                                     ; preds = %.preheader120.preheader
  %n.vec443 = and i64 %i.hj, 4611686018427387900  ; 3 uses
  %i.hl = shl i64 %n.vec443, 3                    ; 2 uses
  %i.hm = getelementptr i8, ptr %.4, i64 %i.hl
  %i.hn = getelementptr i8, ptr %.7.i, i64 %i.hl
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph441
  %index445 = phi i64 [ 0, %vector.ph441 ], [ %index.next450, %vector.body444 ] ; 2 uses
  %i.ho = shl i64 %index445, 3                    ; 2 uses
  %next.gep446 = getelementptr i8, ptr %.4, i64 %i.ho ; 2 uses
  %next.gep447 = getelementptr i8, ptr %.7.i, i64 %i.ho ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep446, i64 16
  %wide.load448 = load <2 x i64>, ptr %next.gep446, align 1
  %wide.load449 = load <2 x i64>, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %next.gep447, i64 16
  store <2 x i64> %wide.load448, ptr %next.gep447, align 1
  store <2 x i64> %wide.load449, ptr %i.hq, align 1
  %index.next450 = add nuw i64 %index445, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.hr, label %middle.block451, label %vector.body444, !llvm.loop !199

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %i.hj, %n.vec443
  br i1 %cmp.n452, label %LZ4_wildCopy8.exit11, label %.preheader120.preheader527

.preheader120.preheader527:                       ; preds = %.preheader120.preheader, %middle.block451
  %.09.i9.ph = phi ptr [ %.4, %.preheader120.preheader ], [ %i.hm, %middle.block451 ]
  %.0.i10.ph = phi ptr [ %.7.i, %.preheader120.preheader ], [ %i.hn, %middle.block451 ]
  br label %.preheader120

bb.ai:                                            ; preds = %bb.ah, %LZ4_wildCopy32.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %.4, i64 %.5377.i
  %.not440.i = icmp ne ptr %i.hs, %i.f
  %i.ht = icmp ugt ptr %i.gx, %i.h
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.ht
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i, ptr nonnull align 1 %.4, i64 %.5377.i, i1 false)
  %i.hu = ptrtoint ptr %i.gx to i64
  %i.hv = sub i64 %i.hu, %i.q
  %i.hw = trunc i64 %i.hv to i32
  br label %LZ4_decompress_generic.exit

.preheader120:                                    ; preds = %.preheader120.preheader527, %.preheader120
  %.09.i9 = phi ptr [ %i.hz, %.preheader120 ], [ %.09.i9.ph, %.preheader120.preheader527 ] ; 2 uses
  %.0.i10 = phi ptr [ %i.hy, %.preheader120 ], [ %.0.i10.ph, %.preheader120.preheader527 ] ; 2 uses
  %i.hx = load i64, ptr %.09.i9, align 1
  store i64 %i.hx, ptr %.0.i10, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.09.i9, i64 8
  %i.ia = icmp ult ptr %i.hy, %i.gx
  br i1 %i.ia, label %.preheader120, label %LZ4_wildCopy8.exit11, !llvm.loop !200

LZ4_wildCopy8.exit11:                             ; preds = %.preheader120, %middle.block451
  %.val32 = load i16, ptr %i.ha, align 1, !tbaa !27
  %i.ib = zext i16 %.val32 to i64                 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.id = sub nsw i64 0, %i.ib
  %i.ie = getelementptr inbounds i8, ptr %i.gx, i64 %i.id
  %i.if = and i32 %.0371.i, 15
  %i.ig = zext nneg i32 %i.if to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %LZ4_wildCopy8.exit11
  %.5 = phi ptr [ %i.ic, %LZ4_wildCopy8.exit11 ], [ %i.fo, %bb.ad ] ; 3 uses
  %.8380.i = phi i64 [ %i.ig, %LZ4_wildCopy8.exit11 ], [ %i.fm, %bb.ad ] ; 2 uses
  %.0369.i = phi i64 [ %i.ib, %LZ4_wildCopy8.exit11 ], [ %i.fn, %bb.ad ]
  %.0362.i = phi ptr [ %i.ie, %LZ4_wildCopy8.exit11 ], [ %i.fq, %bb.ad ]
  %.9.i = phi ptr [ %i.gx, %LZ4_wildCopy8.exit11 ], [ %i.fj, %bb.ad ] ; 2 uses
  %i.ih = icmp eq i64 %.8380.i, 15
  br i1 %i.ih, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.loopexit
  %i.ii = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.ik = icmp ugt ptr %i.ij, %i.ii
  br i1 %i.ik, label %LZ4_wildCopy32.exit.thread, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.il = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.im = zext i8 %i.il to i64
  %.not23.i22 = icmp eq i8 %i.il, -1
  br i1 %.not23.i22, label %.preheader119, label %read_variable_length.exit25, !prof !20

.preheader119:                                    ; preds = %bb.al, %bb.am
  %.16 = phi ptr [ %i.in, %bb.am ], [ %i.ij, %bb.al ] ; 2 uses
  %.0.i24 = phi i64 [ %i.ir, %bb.am ], [ 255, %bb.al ]
  %i.in = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.io = icmp ugt ptr %i.in, %i.ii
  br i1 %i.io, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %.preheader119
  %i.ip = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.iq = zext i8 %i.ip to i64
  %i.ir = add i64 %.0.i24, %i.iq                  ; 2 uses
  %i.is = icmp eq i8 %i.ip, -1
  br i1 %i.is, label %.preheader119, label %read_variable_length.exit25, !llvm.loop !83

read_variable_length.exit25:                      ; preds = %bb.am, %bb.al
  %.17 = phi ptr [ %i.ij, %bb.al ], [ %i.in, %bb.am ] ; 2 uses
  %.019.i23 = phi i64 [ %i.im, %bb.al ], [ %i.ir, %bb.am ] ; 2 uses
  %i.it = icmp ne i64 %.019.i23, -1               ; 2 uses
  %i.iu = add i64 %.019.i23, 15                   ; 2 uses
  %i.iv = ptrtoint ptr %.9.i to i64
  %i.iw = xor i64 %i.iv, -1
  %i.ix = icmp ule i64 %i.iu, %i.iw
  %.not117 = select i1 %i.it, i1 %i.ix, i1 false
  %.9381.i = select i1 %i.it, i64 %i.iu, i64 15
  br i1 %.not117, label %bb.an, label %LZ4_wildCopy32.exit.thread

bb.an:                                            ; preds = %read_variable_length.exit25, %.loopexit
  %.6 = phi ptr [ %.17, %read_variable_length.exit25 ], [ %.5, %.loopexit ]
  %.10382.i = phi i64 [ %.9381.i, %read_variable_length.exit25 ], [ %.8380.i, %.loopexit ]
  %i.iy = add i64 %.10382.i, 4
  br label %.loopexit134

.loopexit134:                                     ; preds = %bb.p, %bb.q, %bb.an
  %.2 = phi ptr [ %.6, %bb.an ], [ %.1383, %bb.p ], [ %i.bf, %bb.q ] ; 9 uses
  %.11383.i = phi i64 [ %i.iy, %bb.an ], [ %i.bv, %bb.p ], [ %i.ca, %bb.q ] ; 4 uses
  %.1370.i = phi i64 [ %.0369.i, %bb.an ], [ %i.be, %bb.q ], [ %i.be, %bb.p ] ; 3 uses
  %.1363.i = phi ptr [ %.0362.i, %bb.an ], [ %i.bh, %bb.q ], [ %i.bh, %bb.p ] ; 8 uses
  %.10.i = phi ptr [ %.9.i, %bb.an ], [ %.2.i, %bb.q ], [ %.2.i, %bb.p ] ; 11 uses
  %.10.i456 = ptrtoaddr ptr %.10.i to i64         ; 10 uses
  %i.iz = icmp ult ptr %.1363.i, %i.b
  br i1 %i.iz, label %LZ4_wildCopy32.exit.thread, label %bb.ao, !prof !86

bb.ao:                                            ; preds = %.loopexit134
  %i.ja = getelementptr inbounds nuw i8, ptr %.10.i, i64 %.11383.i ; 12 uses
  %i.jb = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.jc = icmp ult i64 %.1370.i, 8
  br i1 %i.jc, label %bb.ap, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %.10.i, align 1, !tbaa !16
  %i.jd = load i8, ptr %.1363.i, align 1, !tbaa !8
  store i8 %i.jd, ptr %.10.i, align 1, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %.1363.i, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.10.i, i64 1
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !8
  %i.jh = getelementptr inbounds nuw i8, ptr %.1363.i, i64 2
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %.10.i, i64 2
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %.1363.i, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.10.i, i64 3
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !8
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !35
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %.1363.i, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.10.i, i64 4
  %i.js = load i32, ptr %i.jq, align 1
  store i32 %i.js, ptr %i.jr, align 1
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1370.i
end_hunk_9
begin_hunk_10_@LZ4_decompress_safe_withSmallPrefix:bb.a
  %i.kv = getelementptr i8, ptr %next.gep485, i64 16
  store <2 x i64> %wide.load486, ptr %next.gep485, align 1
  store <2 x i64> %wide.load487, ptr %i.kv, align 1
  %index.next488 = add nuw i64 %index483, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next488, %n.vec481
  br i1 %i.kw, label %middle.block489, label %vector.body482, !llvm.loop !201

middle.block489:                                  ; preds = %vector.body482
  %cmp.n490 = icmp eq i64 %i.kn, %n.vec481
  br i1 %cmp.n490, label %LZ4_wildCopy8.exit, label %.preheader.preheader523

.preheader.preheader523:                          ; preds = %vector.memcheck475, %.preheader.preheader, %middle.block489
  %.09.i.ph = phi ptr [ %.3365.i, %vector.memcheck475 ], [ %.3365.i, %.preheader.preheader ], [ %i.kr, %middle.block489 ]
  %.0.i5.ph = phi ptr [ %i.ka, %vector.memcheck475 ], [ %i.ka, %.preheader.preheader ], [ %i.ks, %middle.block489 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader523, %.preheader
  %.09.i = phi ptr [ %i.kz, %.preheader ], [ %.09.i.ph, %.preheader.preheader523 ] ; 2 uses
  %.0.i5 = phi ptr [ %i.ky, %.preheader ], [ %.0.i5.ph, %.preheader.preheader523 ] ; 2 uses
  %i.kx = load i64, ptr %.09.i, align 1
  store i64 %i.kx, ptr %.0.i5, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i5, i64 8 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.la = icmp ult ptr %i.ky, %i.kc
  br i1 %i.la, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !202

LZ4_wildCopy8.exit:                               ; preds = %.preheader, %middle.block489
  %i.lb = ptrtoint ptr %i.kc to i64
  %i.lc = ptrtoint ptr %i.ka to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = getelementptr inbounds i8, ptr %.3365.i, i64 %i.ld
  br label %bb.au

bb.au:                                            ; preds = %LZ4_wildCopy8.exit, %bb.at
  %.4366.i = phi ptr [ %i.le, %LZ4_wildCopy8.exit ], [ %.3365.i, %bb.at ] ; 6 uses
  %.15.i = phi ptr [ %i.kc, %LZ4_wildCopy8.exit ], [ %i.ka, %bb.at ] ; 7 uses
  %i.lf = icmp ult ptr %.15.i, %i.ja
  br i1 %i.lf, label %iter.check, label %.preheader122

iter.check:                                       ; preds = %bb.au
  %i.lg = add i64 %.11383.i, %.10.i456
  %i.lh = add i64 %i.q, %i.g
  %i.li = add i64 %i.lh, -7
  %i.lj = add i64 %.10.i456, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.li, i64 %i.lj)
  %i.lk = sub i64 %i.lg, %umax                    ; 7 uses
  %min.iters.check496 = icmp ult i64 %i.lk, 4
  br i1 %min.iters.check496, label %.lr.ph191.preheader, label %vector.memcheck493

vector.memcheck493:                               ; preds = %iter.check
  %i.ll = sub i64 %.10.i456, %.3365.i457
  %i.lm = add i64 %i.ll, 7
  %diff.check494 = icmp ult i64 %i.lm, 31
  br i1 %diff.check494, label %.lr.ph191.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck493
  %min.iters.check497 = icmp ult i64 %i.lk, 32
  br i1 %min.iters.check497, label %vec.epilog.ph, label %vector.ph498

vector.ph498:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf499 = and i64 %i.lk, 28
  %n.vec500 = and i64 %i.lk, -32                  ; 5 uses
  %i.ln = getelementptr i8, ptr %.15.i, i64 %n.vec500
  %i.lo = getelementptr i8, ptr %.4366.i, i64 %n.vec500
  br label %vector.body501

vector.body501:                                   ; preds = %vector.body501, %vector.ph498
  %index502 = phi i64 [ 0, %vector.ph498 ], [ %index.next507, %vector.body501 ] ; 3 uses
  %next.gep503 = getelementptr i8, ptr %.15.i, i64 %index502 ; 2 uses
  %next.gep504 = getelementptr i8, ptr %.4366.i, i64 %index502 ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep504, i64 16
  %wide.load505 = load <16 x i8>, ptr %next.gep504, align 1, !tbaa !8
  %wide.load506 = load <16 x i8>, ptr %i.lp, align 1, !tbaa !8
  %i.lq = getelementptr i8, ptr %next.gep503, i64 16
  store <16 x i8> %wide.load505, ptr %next.gep503, align 1, !tbaa !8
  store <16 x i8> %wide.load506, ptr %i.lq, align 1, !tbaa !8
  %index.next507 = add nuw i64 %index502, 32      ; 2 uses
  %i.lr = icmp eq i64 %index.next507, %n.vec500
  br i1 %i.lr, label %middle.block508, label %vector.body501, !llvm.loop !203

middle.block508:                                  ; preds = %vector.body501
  %cmp.n509 = icmp eq i64 %i.lk, %n.vec500
  br i1 %cmp.n509, label %.preheader122, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block508
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf499, 0
  br i1 %min.epilog.iters.check, label %.lr.ph191.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec500, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec513 = and i64 %i.lk, -4                   ; 4 uses
  %i.ls = getelementptr i8, ptr %.15.i, i64 %n.vec513
  %i.lt = getelementptr i8, ptr %.4366.i, i64 %n.vec513
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index514 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next518, %vec.epilog.vector.body ] ; 3 uses
  %next.gep515 = getelementptr i8, ptr %.15.i, i64 %index514
  %next.gep516 = getelementptr i8, ptr %.4366.i, i64 %index514
  %wide.load517 = load <4 x i8>, ptr %next.gep516, align 1, !tbaa !8
  store <4 x i8> %wide.load517, ptr %next.gep515, align 1, !tbaa !8
  %index.next518 = add nuw i64 %index514, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next518, %n.vec513
  br i1 %i.lu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n519 = icmp eq i64 %i.lk, %n.vec513
  br i1 %cmp.n519, label %.preheader122, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %vector.memcheck493, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.16.i189.ph = phi ptr [ %.15.i, %iter.check ], [ %.15.i, %vector.memcheck493 ], [ %i.ln, %vec.epilog.iter.check ], [ %i.ls, %vec.epilog.middle.block ]
  %.5367.i188.ph = phi ptr [ %.4366.i, %iter.check ], [ %.4366.i, %vector.memcheck493 ], [ %i.lo, %vec.epilog.iter.check ], [ %i.lt, %vec.epilog.middle.block ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %.lr.ph191
  %.16.i189 = phi ptr [ %i.lx, %.lr.ph191 ], [ %.16.i189.ph, %.lr.ph191.preheader ] ; 2 uses
  %.5367.i188 = phi ptr [ %i.lv, %.lr.ph191 ], [ %.5367.i188.ph, %.lr.ph191.preheader ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.5367.i188, i64 1
  %i.lw = load i8, ptr %.5367.i188, align 1, !tbaa !8
  %i.lx = getelementptr inbounds nuw i8, ptr %.16.i189, i64 1 ; 2 uses
  store i8 %i.lw, ptr %.16.i189, align 1, !tbaa !8
  %i.ly = icmp ult ptr %i.lx, %i.ja
  br i1 %i.ly, label %.lr.ph191, label %.preheader122, !llvm.loop !205

bb.av:                                            ; preds = %bb.ar
  %i.lz = load i64, ptr %.3365.i, align 1
  store i64 %i.lz, ptr %i.ka, align 1
  %i.ma = icmp ugt i64 %.11383.i, 16
  br i1 %i.ma, label %bb.aw, label %.preheader122

bb.aw:                                            ; preds = %bb.av
  %i.mb = getelementptr inbounds nuw i8, ptr %.10.i, i64 16 ; 4 uses
  %i.mc = add i64 %.11383.i, %.10.i456
  %i.md = add i64 %.10.i456, 24
  %i.me = tail call i64 @llvm.umax.i64(i64 %i.mc, i64 %i.md)
  %i.mf = sub i64 %i.me, %.10.i456
  %i.mg = add i64 %i.mf, -17                      ; 2 uses
  %i.mh = lshr i64 %i.mg, 3
  %i.mi = add nuw nsw i64 %i.mh, 1                ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.mg, 104
  br i1 %min.iters.check460, label %scalar.ph459.preheader, label %vector.memcheck455

vector.memcheck455:                               ; preds = %bb.aw
  %i.mj = sub i64 %.10.i456, %.3365.i457
  %i.mk = add i64 %i.mj, 7
  %diff.check458 = icmp ult i64 %i.mk, 31
  br i1 %diff.check458, label %scalar.ph459.preheader, label %vector.ph461

vector.ph461:                                     ; preds = %vector.memcheck455
  %n.vec463 = and i64 %i.mi, 4611686018427387900  ; 3 uses
  %i.ml = shl i64 %n.vec463, 3                    ; 2 uses
  %i.mm = getelementptr i8, ptr %.3365.i, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mb, i64 %i.ml
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph461
  %index465 = phi i64 [ 0, %vector.ph461 ], [ %index.next470, %vector.body464 ] ; 2 uses
  %i.mo = shl i64 %index465, 3                    ; 2 uses
  %next.gep466 = getelementptr i8, ptr %.3365.i, i64 %i.mo ; 2 uses
  %next.gep467 = getelementptr i8, ptr %i.mb, i64 %i.mo ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %next.gep466, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep466, i64 24
  %wide.load468 = load <2 x i64>, ptr %i.mp, align 1
  %wide.load469 = load <2 x i64>, ptr %i.mq, align 1
  %i.mr = getelementptr i8, ptr %next.gep467, i64 16
  store <2 x i64> %wide.load468, ptr %next.gep467, align 1
  store <2 x i64> %wide.load469, ptr %i.mr, align 1
  %index.next470 = add nuw i64 %index465, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.ms, label %middle.block471, label %vector.body464, !llvm.loop !206

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.mi, %n.vec463
  br i1 %cmp.n472, label %.preheader122, label %scalar.ph459.preheader

scalar.ph459.preheader:                           ; preds = %vector.memcheck455, %bb.aw, %middle.block471
  %.3365.i.pn.ph = phi ptr [ %.3365.i, %vector.memcheck455 ], [ %.3365.i, %bb.aw ], [ %i.mm, %middle.block471 ]
  %.0.i7.ph = phi ptr [ %i.mb, %vector.memcheck455 ], [ %i.mb, %bb.aw ], [ %i.mn, %middle.block471 ]
  br label %scalar.ph459

scalar.ph459:                                     ; preds = %scalar.ph459.preheader, %scalar.ph459
  %.3365.i.pn = phi ptr [ %.09.i6, %scalar.ph459 ], [ %.3365.i.pn.ph, %scalar.ph459.preheader ]
  %.0.i7 = phi ptr [ %i.mu, %scalar.ph459 ], [ %.0.i7.ph, %scalar.ph459.preheader ] ; 2 uses
  %.09.i6 = getelementptr inbounds nuw i8, ptr %.3365.i.pn, i64 8 ; 2 uses
  %i.mt = load i64, ptr %.09.i6, align 1
  store i64 %i.mt, ptr %.0.i7, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8 ; 2 uses
  %i.mv = icmp ult ptr %i.mu, %i.ja
  br i1 %i.mv, label %scalar.ph459, label %.preheader122, !llvm.loop !207

.preheader122:                                    ; preds = %scalar.ph459, %.lr.ph191, %bb.av, %bb.au, %vec.epilog.middle.block, %middle.block508, %middle.block471, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %middle.block471 ], [ %.2, %.lr.ph191 ], [ %.2, %middle.block508 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.av ], [ %.2, %bb.au ], [ %.2, %scalar.ph459 ] ; 3 uses
  %.6.i.ph = phi ptr [ %1, %bb.f ], [ %i.ja, %middle.block471 ], [ %i.ja, %.lr.ph191 ], [ %i.ja, %middle.block508 ], [ %i.ja, %vec.epilog.middle.block ], [ %i.ja, %bb.av ], [ %i.ja, %bb.au ], [ %i.ja, %scalar.ph459 ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.mx = load i8, ptr %.3.ph, align 1, !tbaa !8
  %i.my = zext i8 %i.mx to i32                    ; 3 uses
  %i.mz = lshr i32 %i.my, 4                       ; 2 uses
  %cond.i182 = icmp eq i32 %i.mz, 15
  br i1 %cond.i182, label %._crit_edge, label %.lr.ph184

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit16, %read_variable_length.exit16.thread80, %bb.g, %read_variable_length.exit.thread63, %read_variable_length.exit, %.thread88, %.preheader129, %.preheader126, %.preheader121, %.preheader119, %bb.ak, %._crit_edge, %read_variable_length.exit21, %read_variable_length.exit21.thread95, %bb.as, %.loopexit134, %read_variable_length.exit25, %bb.ai
  %.7 = phi ptr [ %.4, %bb.ai ], [ %.2, %.loopexit134 ], [ %.2, %bb.as ], [ %.17, %read_variable_length.exit25 ], [ %i.in, %.preheader119 ], [ %i.gj, %read_variable_length.exit21 ], [ %i.bo, %.preheader126 ], [ %.1598, %read_variable_length.exit21.thread95 ], [ %.lcssa145, %._crit_edge ], [ %i.af, %.preheader129 ], [ %i.gj, %.preheader121 ], [ %i.ij, %bb.ak ], [ %i.bo, %read_variable_length.exit16 ], [ %.1383, %read_variable_length.exit16.thread80 ], [ %i.x, %bb.g ], [ %.1166, %read_variable_length.exit.thread63 ], [ %i.af, %read_variable_length.exit ], [ %i.bk, %bb.m ], [ %.8, %.thread88 ]
  %i.na = ptrtoint ptr %.7 to i64
  %i.nb = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.nb, %i.na
  %i.nc = trunc i64 %.neg.i to i32
  %i.nd = add nsw i32 %i.nc, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.aj, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.hw, %bb.aj ], [ %i.o, %bb.d ], [ -1, %bb.e ], [ %i.nd, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_fast_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !171  ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %2 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.b
  %.0.i53 = phi ptr [ %1, %bb.b ], [ %.4.i, %._crit_edge.i ] ; 2 uses
  %.080.i.i = phi ptr [ %2, %bb.b ], [ %i.ca, %._crit_edge.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1 ; 2 uses
  %i.i = load i8, ptr %.0.i53, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 4                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 15
  br i1 %i.m, label %.preheader34.i, label %bb.c

.preheader34.i:                                   ; preds = %.thread.i, %.preheader34.i
  %i.n = phi ptr [ %i.q, %.preheader34.i ], [ %i.h, %.thread.i ] ; 2 uses
  %.0.i2.i = phi i64 [ %i.r, %.preheader34.i ], [ 0, %.thread.i ]
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add i64 %.0.i2.i, %i.p                   ; 2 uses
  %i.s = icmp eq i8 %i.o, -1
  br i1 %i.s, label %.preheader34.i, label %read_long_length_no_check.exit.i, !llvm.loop !112

read_long_length_no_check.exit.i:                 ; preds = %.preheader34.i
  %i.t = add i64 %i.r, 15
  br label %bb.c

bb.c:                                             ; preds = %read_long_length_no_check.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.q, %read_long_length_no_check.exit.i ], [ %i.h, %.thread.i ] ; 2 uses
  %.086.i.i = phi i64 [ %i.t, %read_long_length_no_check.exit.i ], [ %i.l, %.thread.i ] ; 4 uses
  %i.u = ptrtoint ptr %.080.i.i to i64
  %i.v = sub i64 %i.f, %i.u
  %i.w = icmp ult i64 %i.v, %.086.i.i
  br i1 %i.w, label %LZ4_decompress_fast.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i.i, ptr nonnull align 1 %.1.i, i64 %.086.i.i, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.080.i.i, i64 %.086.i.i ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.086.i.i ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.f, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 12
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.x, %i.e
  br i1 %i.ac, label %LZ4_decompress_fast.exit, label %LZ4_decompress_fast.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = and i32 %i.j, 15                        ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %.val.i = load i16, ptr %i.y, align 1, !tbaa !27 ; 2 uses
  %i.af = zext i16 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ah = icmp eq i32 %i.ad, 15
  br i1 %i.ah, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %i.ai = phi ptr [ %i.al, %.preheader.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.am, %.preheader.i ], [ 0, %bb.f ]
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8   ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = add i64 %.0.i4.i, %i.ak                 ; 2 uses
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %.preheader.i, label %read_long_length_no_check.exit5.i, !llvm.loop !112

read_long_length_no_check.exit5.i:                ; preds = %.preheader.i
  %i.ao = add i64 %i.am, 15
  br label %bb.g

bb.g:                                             ; preds = %read_long_length_no_check.exit5.i, %bb.f
  %.4.i = phi ptr [ %i.al, %read_long_length_no_check.exit5.i ], [ %i.ag, %bb.f ]
  %.092.i.i = phi i64 [ %i.ao, %read_long_length_no_check.exit5.i ], [ %i.ae, %bb.f ] ; 5 uses
  %i.ap = add i64 %.092.i.i, 4                    ; 9 uses
  %i.aq = icmp ult i64 %i.aa, %i.ap
  %i.ar = sub i64 %i.z, %i.g
  %.not.i.i = icmp ult i64 %i.ar, %i.af
  %or.cond.i = select i1 %i.aq, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %LZ4_decompress_fast.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = sub nsw i64 0, %i.af
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 %i.as ; 7 uses
  %.not.i54 = icmp eq i64 %i.ap, 0
  br i1 %.not.i54, label %._crit_edge.i, label %iter.check267

iter.check267:                                    ; preds = %bb.h
  %min.iters.check253 = icmp ugt i64 %.092.i.i, -5
  %i.au = add i16 %.val.i, -1
  %diff.check252 = icmp ult i16 %i.au, 31
  %or.cond = select i1 %min.iters.check253, i1 true, i1 %diff.check252
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %iter.check267
  %min.iters.check255 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check255, label %vec.epilog.ph271, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %n.mod.vf257 = and i64 %i.ap, 28
  %n.vec258 = and i64 %i.ap, -32                  ; 4 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph256
  %index260 = phi i64 [ 0, %vector.ph256 ], [ %index.next263, %vector.body259 ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %index260 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load261 = load <16 x i8>, ptr %i.av, align 1, !tbaa !8
  %wide.load262 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %index260 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <16 x i8> %wide.load261, ptr %i.ax, align 1, !tbaa !8
  store <16 x i8> %wide.load262, ptr %i.ay, align 1, !tbaa !8
  %index.next263 = add nuw i64 %index260, 32      ; 2 uses
  %i.az = icmp eq i64 %index.next263, %n.vec258
  br i1 %i.az, label %middle.block264, label %vector.body259, !llvm.loop !208

middle.block264:                                  ; preds = %vector.body259
  %cmp.n265 = icmp eq i64 %i.ap, %n.vec258
  br i1 %cmp.n265, label %._crit_edge.i, label %vec.epilog.iter.check269

vec.epilog.iter.check269:                         ; preds = %middle.block264
  %min.epilog.iters.check270 = icmp eq i64 %n.mod.vf257, 0
  br i1 %min.epilog.iters.check270, label %.lr.ph.i.preheader, label %vec.epilog.ph271, !prof !96

vec.epilog.ph271:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check269
  %vec.epilog.resume.val266 = phi i64 [ %n.vec258, %vec.epilog.iter.check269 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec273 = and i64 %i.ap, -4                   ; 3 uses
  br label %vec.epilog.vector.body274

vec.epilog.vector.body274:                        ; preds = %vec.epilog.vector.body274, %vec.epilog.ph271
  %index275 = phi i64 [ %vec.epilog.resume.val266, %vec.epilog.ph271 ], [ %index.next277, %vec.epilog.vector.body274 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %index275
  %wide.load276 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %index275
  store <4 x i8> %wide.load276, ptr %i.bb, align 1, !tbaa !8
  %index.next277 = add nuw i64 %index275, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next277, %n.vec273
  br i1 %i.bc, label %vec.epilog.middle.block278, label %vec.epilog.vector.body274, !llvm.loop !209

vec.epilog.middle.block278:                       ; preds = %vec.epilog.vector.body274
  %cmp.n279 = icmp eq i64 %i.ap, %n.vec273
  br i1 %cmp.n279, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check267, %vec.epilog.iter.check269, %vec.epilog.middle.block278
  %.0.i40.i.ph = phi i64 [ 0, %iter.check267 ], [ %n.vec258, %vec.epilog.iter.check269 ], [ %n.vec273, %vec.epilog.middle.block278 ] ; 3 uses
  %i.bd = add i64 %.092.i.i, 3
  %i.be = sub i64 %i.bd, %.0.i40.i.ph
  %xtraiter305 = and i64 %.092.i.i, 3             ; 2 uses
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i40.i.prol = phi i64 [ %i.bi, %.lr.ph.i.prol ], [ %.0.i40.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i40.i.prol
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i40.i.prol
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !8
  %i.bi = add nuw i64 %.0.i40.i.prol, 1           ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !210

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i40.i.unr = phi i64 [ %.0.i40.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bj = icmp ult i64 %i.be, 3
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i40.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.0.i40.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i40.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i40.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !8
end_hunk_10
begin_hunk_11_@LZ4_decompress_fast_continue:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <16 x i8>, ptr %i.ih, align 1, !tbaa !8
  %wide.load212 = load <16 x i8>, ptr %i.ii, align 1, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <16 x i8> %wide.load, ptr %i.ij, align 1, !tbaa !8
  store <16 x i8> %wide.load212, ptr %i.ik, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.294.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i69.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec214 = and i64 %.294.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index215 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next217, %vec.epilog.vector.body ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %index215
  %wide.load216 = load <4 x i8>, ptr %i.im, align 1, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %index215
  store <4 x i8> %wide.load216, ptr %i.in, align 1, !tbaa !8
  %index.next217 = add nuw i64 %index215, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next217, %n.vec214
  br i1 %i.io, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !217

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n218 = icmp eq i64 %.294.i.i, %n.vec214
  br i1 %cmp.n218, label %._crit_edge.i71, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i43.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec214, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.294.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i69.prol.loopexit, label %.lr.ph.i69.prol

.lr.ph.i69.prol:                                  ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69.prol
  %.0.i43.i.prol = phi i64 [ %i.is, %.lr.ph.i69.prol ], [ %.0.i43.i.ph, %.lr.ph.i69.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i69.prol ], [ 0, %.lr.ph.i69.preheader ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %.0.i43.i.prol
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.0.i43.i.prol
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !8
  %i.is = add nuw i64 %.0.i43.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i69.prol.loopexit, label %.lr.ph.i69.prol, !llvm.loop !218

.lr.ph.i69.prol.loopexit:                         ; preds = %.lr.ph.i69.prol, %.lr.ph.i69.preheader
  %.0.i43.i.unr = phi i64 [ %.0.i43.i.ph, %.lr.ph.i69.preheader ], [ %i.is, %.lr.ph.i69.prol ]
  %i.it = sub i64 %.0.i43.i.ph, %.294.i.i
  %i.iu = icmp ugt i64 %i.it, -4
  br i1 %i.iu, label %._crit_edge.i71, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.prol.loopexit, %.lr.ph.i69
  %.0.i43.i = phi i64 [ %i.jk, %.lr.ph.i69 ], [ %.0.i43.i.unr, %.lr.ph.i69.prol.loopexit ] ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %.0.i43.i
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.0.i43.i
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !8
  %i.iy = add nuw i64 %.0.i43.i, 1                ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.iy
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !8
  %i.jc = add nuw i64 %.0.i43.i, 2                ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.jc
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !8
  %i.jg = add nuw i64 %.0.i43.i, 3                ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.jg
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !8
  %i.jk = add nuw i64 %.0.i43.i, 4                ; 2 uses
  %exitcond.not.i70.3 = icmp eq i64 %i.jk, %.294.i.i
  br i1 %exitcond.not.i70.3, label %._crit_edge.i71, label %.lr.ph.i69, !llvm.loop !219

._crit_edge.i71:                                  ; preds = %.lr.ph.i69.prol.loopexit, %.lr.ph.i69, %middle.block, %vec.epilog.middle.block, %bb.ak
  %i.jl = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.294.i.i ; 2 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.gm, %i.jm
  %i.jo = icmp ult i64 %i.jn, 5
  br i1 %i.jo, label %LZ4_decompress_fast.exit.thread, label %.thread.i59

LZ4_decompress_fast_extDict.exit:                 ; preds = %bb.ab
  %i.jp = ptrtoint ptr %i.hf to i64
  %i.jq = ptrtoint ptr %1 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = trunc i64 %i.jr to i32                  ; 3 uses
  %i.jt = icmp slt i32 %i.js, 1
  br i1 %i.jt, label %LZ4_decompress_fast.exit.thread, label %bb.al

bb.al:                                            ; preds = %LZ4_decompress_fast_extDict.exit
  store i64 %i.gk, ptr %i.a, align 8, !tbaa !171
  store ptr %i.gl, ptr %i.ck, align 8, !tbaa !173
  br label %LZ4_decompress_fast.exit.thread

LZ4_decompress_fast.exit.thread:                  ; preds = %bb.z, %bb.ae, %bb.ad, %._crit_edge.i71, %bb.l, %bb.q, %bb.p, %._crit_edge, %bb.c, %bb.g, %._crit_edge.i, %bb.n, %bb.ab, %bb.e, %bb.i, %bb.al, %bb.x, %LZ4_decompress_fast_extDict.exit, %LZ4_decompress_unsafe_generic.exit, %LZ4_decompress_fast.exit
  %.044 = phi i32 [ %i.gb, %LZ4_decompress_unsafe_generic.exit ], [ %i.js, %LZ4_decompress_fast_extDict.exit ], [ %i.ch, %LZ4_decompress_fast.exit ], [ %i.ch, %bb.i ], [ %i.gb, %bb.x ], [ %i.js, %bb.al ], [ -1, %bb.l ], [ -1, %bb.ab ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.n ], [ -1, %._crit_edge.i ], [ -1, %bb.g ], [ -1, %._crit_edge ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %._crit_edge.i71 ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.z ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %5 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %5, 65534
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.i = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_decompress_safe_partial_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %6, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %6 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.cv

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 65534
  %i.g = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 8 uses
  br i1 %i.f, label %bb.e, label %bb.ba

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %0, null
  %i.i = icmp slt i32 %i.g, 0
  %or.cond.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 11 uses
  %i.l = zext nneg i32 %i.g to i64                ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.o = icmp eq i32 %i.g, 0
  br i1 %i.o, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.q = ptrtoint ptr %1 to i64                   ; 18 uses
  %i.r = icmp samesign ult i32 %i.g, 64
  br i1 %i.r, label %.preheader146.i, label %.preheader156.i

.preheader156.i:                                  ; preds = %bb.h
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -17
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 -15 ; 2 uses
  %i.u = add nsw i64 %i.l, -32
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.w = add nsw i64 %i.l, -64                    ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.y = add i64 %i.q, 8
  %invariant.op = add i64 %i.q, 16
  %invariant.op1042 = add i64 %i.q, 16
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader156.i
  %.0.i = phi ptr [ %0, %.preheader156.i ], [ %.0.i.be, %.backedge.i.backedge ] ; 3 uses
  %.0358.i.idx.i = phi i64 [ 0, %.preheader156.i ], [ %.0358.i.idx.i.be, %.backedge.i.backedge ] ; 5 uses
  %.0358.i.ptr.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.0358.i.idx.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 7 uses
  %i.aa = load i8, ptr %.0.i, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  %i.ac = lshr i32 %i.ab, 4                       ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.ae = icmp eq i32 %i.ac, 15
  br i1 %i.ae, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.backedge.i
  %.not22.i.i = icmp ult ptr %i.z, %i.t
  br i1 %.not22.i.i, label %bb.j, label %LZ4_wildCopy32.exit.thread.i, !prof !29

bb.j:                                             ; preds = %bb.i
  %7 = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.z, align 1, !tbaa !8    ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %.not23.i.i = icmp eq i8 %i.af, -1
  br i1 %.not23.i.i, label %.preheader154.i, label %read_variable_length.exit.thread66.i, !prof !20

.preheader154.i:                                  ; preds = %bb.j, %bb.k
  %.11.i = phi ptr [ %i.ah, %bb.k ], [ %7, %bb.j ] ; 2 uses
  %.0.i15.i = phi i64 [ %i.al, %bb.k ], [ 255, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.11.i, i64 1 ; 5 uses
  %i.ai = icmp ugt ptr %i.ah, %i.t
  br i1 %i.ai, label %LZ4_wildCopy32.exit.thread.i, label %bb.k, !prof !20

bb.k:                                             ; preds = %.preheader154.i
  %i.aj = load i8, ptr %.11.i, align 1, !tbaa !8  ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = add i64 %.0.i15.i, %i.ak                ; 3 uses
  %i.am = icmp eq i8 %i.aj, -1
  br i1 %i.am, label %.preheader154.i, label %read_variable_length.exit.i, !llvm.loop !83

read_variable_length.exit.i:                      ; preds = %bb.k
  %i.an = icmp eq i64 %i.al, -1
  br i1 %i.an, label %LZ4_wildCopy32.exit.thread.i, label %read_variable_length.exit.thread66.i

read_variable_length.exit.thread66.i:             ; preds = %read_variable_length.exit.i, %bb.j
  %.019.i70.i = phi i64 [ %i.al, %read_variable_length.exit.i ], [ %i.ag, %bb.j ]
  %.1269.i = phi ptr [ %i.ah, %read_variable_length.exit.i ], [ %7, %bb.j ] ; 5 uses
  %i.ao = add i64 %.019.i70.i, 15                 ; 5 uses
  %i.ap = ptrtoint ptr %.0358.i.ptr.ptr.i to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  %i.as = ptrtoint ptr %.1269.i to i64
  %i.at = xor i64 %i.as, -1
  %i.au = icmp ugt i64 %i.ao, %i.at
  %or.cond.i = or i1 %i.ar, %i.au
  br i1 %or.cond.i, label %LZ4_wildCopy32.exit.thread.i, label %bb.l, !prof !84

bb.l:                                             ; preds = %read_variable_length.exit.thread66.i
  %.0358.i.add.i = add nsw i64 %i.ao, %.0358.i.idx.i ; 3 uses
  %.ptr123.i = getelementptr inbounds i8, ptr %1, i64 %.0358.i.add.i
  %i.av = icmp sgt i64 %.0358.i.add.i, %i.u
  %i.aw = getelementptr inbounds nuw i8, ptr %.1269.i, i64 %i.ao ; 2 uses
  %i.ax = icmp ugt ptr %i.aw, %i.v
  %or.cond449.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond449.i.i, label %LZ4_wildCopy32.exit.i, label %.preheader153.i

.preheader153.i:                                  ; preds = %bb.l, %.preheader153.i
  %.011.i.i = phi ptr [ %i.bb, %.preheader153.i ], [ %.1269.i, %bb.l ] ; 3 uses
  %.0.i29.i = phi ptr [ %i.ba, %.preheader153.i ], [ %.0358.i.ptr.ptr.i, %bb.l ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i29.i, ptr noundef nonnull align 1 dereferenceable(16) %.011.i.i, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i29.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i29.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %i.bc = icmp ult ptr %i.ba, %.ptr123.i
  br i1 %i.bc, label %.preheader153.i, label %LZ4_wildCopy32.exit.thread75.i, !llvm.loop !85

bb.m:                                             ; preds = %.backedge.i
  %.not.i.i = icmp ugt ptr %i.z, %i.s
  br i1 %.not.i.i, label %LZ4_wildCopy32.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i.ptr.ptr.i, ptr noundef nonnull align 1 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %.0358.i.add120.i = add nsw i64 %.0358.i.idx.i, %i.ad
  br label %LZ4_wildCopy32.exit.thread75.i

LZ4_wildCopy32.exit.thread75.i:                   ; preds = %.preheader153.i, %bb.n
  %.1.i = phi ptr [ %i.bd, %bb.n ], [ %i.aw, %.preheader153.i ] ; 3 uses
  %.2.i.idx.i = phi i64 [ %.0358.i.add120.i, %bb.n ], [ %.0358.i.add.i, %.preheader153.i ] ; 14 uses
  %.2.i.ptr.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.2.i.idx.i ; 18 uses
  %.val36.i = load i16, ptr %.1.i, align 1, !tbaa !27 ; 5 uses
  %i.be = zext i16 %.val36.i to i64               ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i, i64 2 ; 4 uses
  %.2.i.add.i = sub nsw i64 %.2.i.idx.i, %i.be    ; 4 uses
  %.ptr.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.2.i.add.i ; 14 uses
  %i.bg = and i32 %i.ab, 15                       ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 15
  br i1 %i.bh, label %bb.o, label %bb.s

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread75.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i, i64 3 ; 4 uses
  %i.bj = icmp ugt ptr %i.bi, %i.x
  br i1 %i.bj, label %LZ4_wildCopy32.exit.thread.i, label %bb.p, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !8   ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %.not23.i16.i = icmp eq i8 %i.bk, -1
  br i1 %.not23.i16.i, label %.preheader151.i, label %read_variable_length.exit19.thread83.i, !prof !20

.preheader151.i:                                  ; preds = %bb.p, %bb.q
  %.13.i = phi ptr [ %i.bm, %bb.q ], [ %i.bi, %bb.p ] ; 2 uses
  %.0.i18.i = phi i64 [ %i.bq, %bb.q ], [ 255, %bb.p ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 5 uses
  %i.bn = icmp ugt ptr %i.bm, %i.x
  br i1 %i.bn, label %LZ4_wildCopy32.exit.thread.i, label %bb.q, !prof !20

bb.q:                                             ; preds = %.preheader151.i
  %i.bo = load i8, ptr %.13.i, align 1, !tbaa !8  ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = add i64 %.0.i18.i, %i.bp                ; 3 uses
  %i.br = icmp eq i8 %i.bo, -1
  br i1 %i.br, label %.preheader151.i, label %read_variable_length.exit19.i, !llvm.loop !83

read_variable_length.exit19.i:                    ; preds = %bb.q
  %i.bs = icmp eq i64 %i.bq, -1
  br i1 %i.bs, label %LZ4_wildCopy32.exit.thread.i, label %read_variable_length.exit19.thread83.i

read_variable_length.exit19.thread83.i:           ; preds = %read_variable_length.exit19.i, %bb.p
  %.019.i1787.i = phi i64 [ %i.bq, %read_variable_length.exit19.i ], [ %i.bl, %bb.p ]
  %.1486.i = phi ptr [ %i.bm, %read_variable_length.exit19.i ], [ %i.bi, %bb.p ] ; 3 uses
  %i.bt = add i64 %.019.i1787.i, 19               ; 4 uses
  %i.bu = ptrtoint ptr %.2.i.ptr.ptr.i to i64
  %i.bv = xor i64 %i.bu, -1
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %LZ4_wildCopy32.exit.thread.i, label %bb.r, !prof !20

bb.r:                                             ; preds = %read_variable_length.exit19.thread83.i
  %i.bx = add nsw i64 %i.bt, %.2.i.idx.i
  %.not435.i.i = icmp slt i64 %i.bx, %i.w
  br i1 %.not435.i.i, label %.thread91.i, label %.loopexit159.i

bb.s:                                             ; preds = %LZ4_wildCopy32.exit.thread75.i
  %narrow.i.i = add nuw nsw i32 %i.bg, 4
  %i.by = zext nneg i32 %narrow.i.i to i64        ; 3 uses
  %.2.i.add121.i = add nsw i64 %.2.i.idx.i, %i.by ; 2 uses
  %.not434.i.i = icmp slt i64 %.2.i.add121.i, %i.w
  br i1 %.not434.i.i, label %bb.t, label %.loopexit159.i

bb.t:                                             ; preds = %bb.s
  %.old4.i.i = icmp ugt i16 %.val36.i, 7
  br i1 %.old4.i.i, label %bb.u, label %.thread91.i

bb.u:                                             ; preds = %bb.t
  %i.bz = load i64, ptr %.ptr.ptr.i, align 1
  store i64 %i.bz, ptr %.2.i.ptr.ptr.i, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 1
  store i64 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  %i.cf = load i16, ptr %i.ce, align 1
  store i16 %i.cf, ptr %i.cd, align 1
  br label %.backedge.i.backedge

.thread91.i:                                      ; preds = %bb.t, %bb.r
  %.9.i = phi ptr [ %i.bf, %bb.t ], [ %.1486.i, %bb.r ] ; 7 uses
  %.2374.i.i = phi i64 [ %i.by, %bb.t ], [ %i.bt, %bb.r ] ; 4 uses
  %i.cg = icmp slt i64 %.2.i.add.i, -65536
  br i1 %i.cg, label %LZ4_wildCopy32.exit.thread.i, label %bb.v, !prof !86

bb.v:                                             ; preds = %.thread91.i
  %.2.i.add122.i = add nsw i64 %.2374.i.i, %.2.i.idx.i ; 7 uses
  %.ptr126.i = getelementptr inbounds i8, ptr %1, i64 %.2.i.add122.i ; 3 uses
  %i.ch = icmp ult i16 %.val36.i, 16
  br i1 %i.ch, label %bb.w, label %.preheader149.i, !prof !20

bb.w:                                             ; preds = %bb.v
  switch i16 %.val36.i, label %bb.aa [
    i16 1, label %bb.x
    i16 2, label %bb.y
    i16 4, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.ci = load i8, ptr %.ptr.ptr.i, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i32
  %.sroa.0.0.isplat.i.i = mul nuw i32 %i.cj, 16843009
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %.sroa.0.0.copyload9.i.i = load i16, ptr %.ptr.ptr.i, align 1
  %.sroa.0.0.insert.ext.i.i = zext i16 %.sroa.0.0.copyload9.i.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i.i = shl nuw i32 %.sroa.0.0.insert.ext.i.i, 16
  %.sroa.0.2.insert.insert.i.i = or disjoint i32 %.sroa.0.2.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %.sroa.0.0.copyload2.i.i = load i32, ptr %.ptr.ptr.i, align 1
  br label %bb.ae

bb.aa:                                            ; preds = %bb.w
  %i.ck = icmp samesign ult i16 %.val36.i, 8
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %.2.i.ptr.ptr.i, align 1, !tbaa !16
  %i.cl = load i8, ptr %.ptr.ptr.i, align 1, !tbaa !8
  store i8 %i.cl, ptr %.2.i.ptr.ptr.i, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 3
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !8
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.be
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 4
  %i.da = load i32, ptr %i.cy, align 1
  store i32 %i.da, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.be
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !35
  %i.dd = sext i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.cy, i64 %i.de
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dg = load i64, ptr %.ptr.ptr.i, align 1
  store i64 %i.dg, ptr %.2.i.ptr.ptr.i, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.023.i.i = phi ptr [ %i.df, %bb.ab ], [ %i.dh, %bb.ac ] ; 5 uses
  %.0.i34.i = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 8 ; 4 uses
  %i.di = add i64 %.2374.i.i, %.2.i.idx.i
  %i.dj = add i64 %i.di, %i.q
  %.reass1043 = add i64 %.2.i.idx.i, %invariant.op1042
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %.reass1043)
  %i.dl = add i64 %.2.i.idx.i, %i.q
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = add i64 %i.dm, -9                       ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check724 = icmp ult i64 %i.dn, 56
  br i1 %min.iters.check724, label %scalar.ph723.preheader, label %vector.memcheck720

vector.memcheck720:                               ; preds = %bb.ad
  %.023.i.i721 = ptrtoaddr ptr %.023.i.i to i64
  %i.dq = add i64 %i.y, %.2.i.idx.i
  %i.dr = sub i64 %.023.i.i721, %i.dq
  %diff.check722 = icmp ugt i64 %i.dr, -32
  br i1 %diff.check722, label %scalar.ph723.preheader, label %vector.ph725

vector.ph725:                                     ; preds = %vector.memcheck720
  %n.vec727 = and i64 %i.dp, 4611686018427387900  ; 3 uses
  %i.ds = shl i64 %n.vec727, 3                    ; 2 uses
  %i.dt = getelementptr i8, ptr %.023.i.i, i64 %i.ds
  %i.du = getelementptr i8, ptr %.0.i34.i, i64 %i.ds
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph725
  %index729 = phi i64 [ 0, %vector.ph725 ], [ %index.next734, %vector.body728 ] ; 2 uses
  %i.dv = shl i64 %index729, 3                    ; 2 uses
  %next.gep730 = getelementptr i8, ptr %.023.i.i, i64 %i.dv ; 2 uses
  %next.gep731 = getelementptr i8, ptr %.0.i34.i, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep730, i64 16
  %wide.load732 = load <2 x i64>, ptr %next.gep730, align 1
  %wide.load733 = load <2 x i64>, ptr %i.dw, align 1
  %i.dx = getelementptr i8, ptr %next.gep731, i64 16
  store <2 x i64> %wide.load732, ptr %next.gep731, align 1
  store <2 x i64> %wide.load733, ptr %i.dx, align 1
  %index.next734 = add nuw i64 %index729, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next734, %n.vec727
  br i1 %i.dy, label %middle.block735, label %vector.body728, !llvm.loop !220

middle.block735:                                  ; preds = %vector.body728
  %cmp.n736 = icmp eq i64 %i.dp, %n.vec727
  br i1 %cmp.n736, label %.backedge.i.backedge, label %scalar.ph723.preheader

scalar.ph723.preheader:                           ; preds = %vector.memcheck720, %bb.ad, %middle.block735
  %.09.i.i.i.ph = phi ptr [ %.023.i.i, %vector.memcheck720 ], [ %.023.i.i, %bb.ad ], [ %i.dt, %middle.block735 ]
  %.0.i.i.i.ph = phi ptr [ %.0.i34.i, %vector.memcheck720 ], [ %.0.i34.i, %bb.ad ], [ %i.du, %middle.block735 ]
  br label %scalar.ph723

scalar.ph723:                                     ; preds = %scalar.ph723.preheader, %scalar.ph723
  %.09.i.i.i = phi ptr [ %i.eb, %scalar.ph723 ], [ %.09.i.i.i.ph, %scalar.ph723.preheader ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.ea, %scalar.ph723 ], [ %.0.i.i.i.ph, %scalar.ph723.preheader ] ; 2 uses
  %i.dz = load i64, ptr %.09.i.i.i, align 1
  store i64 %i.dz, ptr %.0.i.i.i, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.ec = icmp ult ptr %i.ea, %.ptr126.i
  br i1 %i.ec, label %scalar.ph723, label %.backedge.i.backedge, !llvm.loop !221

bb.ae:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.sroa.9.0.i.i = phi i32 [ %.sroa.0.0.isplat.i.i, %bb.x ], [ %.sroa.0.2.insert.insert.i.i, %bb.y ], [ %.sroa.0.0.copyload2.i.i, %bb.z ] ; 5 uses
  store i32 %.sroa.9.0.i.i, ptr %.2.i.ptr.ptr.i, align 1
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 4
  store i32 %.sroa.9.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 1
  %i.ed = icmp sgt i64 %.2374.i.i, 8
  br i1 %i.ed, label %.lr.ph.preheader.i, label %.backedge.i.backedge

.lr.ph.preheader.i:                               ; preds = %bb.ae
  %.0.i33203.i = getelementptr inbounds nuw i8, ptr %.2.i.ptr.ptr.i, i64 8 ; 4 uses
  %i.ee = add i64 %.2374.i.i, %.2.i.idx.i
  %i.ef = add i64 %i.ee, %i.q
  %.reass = add i64 %.2.i.idx.i, %invariant.op
  %i.eg = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 %.reass)
  %i.eh = add i64 %.2.i.idx.i, %i.q
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = add i64 %i.ei, -9                       ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check740 = icmp ult i64 %i.ej, 24
  br i1 %min.iters.check740, label %.lr.ph.i.preheader, label %vector.ph741

vector.ph741:                                     ; preds = %.lr.ph.preheader.i
  %n.vec743 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.em = shl i64 %n.vec743, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %.0.i33203.i, i64 %i.em
  %i.eo = getelementptr i8, ptr %.2.i.ptr.ptr.i, i64 %i.em
  %broadcast.splatinsert744 = insertelement <2 x i32> poison, i32 %.sroa.9.0.i.i, i64 0
  %i.ep = shufflevector <2 x i32> %broadcast.splatinsert744, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body746

vector.body746:                                   ; preds = %vector.body746, %vector.ph741
  %index747 = phi i64 [ 0, %vector.ph741 ], [ %index.next752, %vector.body746 ] ; 2 uses
  %i.eq = shl i64 %index747, 3                    ; 2 uses
  %next.gep748 = getelementptr i8, ptr %.0.i33203.i, i64 %i.eq
  %i.er = getelementptr i8, ptr %.0.i33203.i, i64 %i.eq
  %next.gep749 = getelementptr i8, ptr %i.er, i64 16
  store <4 x i32> %i.ep, ptr %next.gep748, align 1
  store <4 x i32> %i.ep, ptr %next.gep749, align 1
  %index.next752 = add nuw i64 %index747, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next752, %n.vec743
  br i1 %i.es, label %middle.block753, label %vector.body746, !llvm.loop !222

middle.block753:                                  ; preds = %vector.body746
  %cmp.n754 = icmp eq i64 %i.el, %n.vec743
  br i1 %cmp.n754, label %.backedge.i.backedge, label %.lr.ph.i.preheader

.backedge.i.backedge:                             ; preds = %.preheader149.i, %.lr.ph.i, %scalar.ph723, %middle.block753, %middle.block735, %bb.ae, %bb.u
  %.0.i.be = phi ptr [ %i.bf, %bb.u ], [ %.9.i, %middle.block735 ], [ %.9.i, %bb.ae ], [ %.9.i, %middle.block753 ], [ %.9.i, %scalar.ph723 ], [ %.9.i, %.lr.ph.i ], [ %.9.i, %.preheader149.i ]
  %.0358.i.idx.i.be = phi i64 [ %.2.i.add121.i, %bb.u ], [ %.2.i.add122.i, %middle.block735 ], [ %.2.i.add122.i, %bb.ae ], [ %.2.i.add122.i, %middle.block753 ], [ %.2.i.add122.i, %scalar.ph723 ], [ %.2.i.add122.i, %.lr.ph.i ], [ %.2.i.add122.i, %.preheader149.i ]
  br label %.backedge.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block753
  %.0.i33205.i.ph = phi ptr [ %.0.i33203.i, %.lr.ph.preheader.i ], [ %i.en, %middle.block753 ]
  %.pn.i204.i.ph = phi ptr [ %.2.i.ptr.ptr.i, %.lr.ph.preheader.i ], [ %i.eo, %middle.block753 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0.i33205.i = phi ptr [ %.0.i33.i, %.lr.ph.i ], [ %.0.i33205.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.pn.i204.i = phi ptr [ %.0.i33205.i, %.lr.ph.i ], [ %.pn.i204.i.ph, %.lr.ph.i.preheader ]
  store i32 %.sroa.9.0.i.i, ptr %.0.i33205.i, align 1
  %.sroa.9.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %.pn.i204.i, i64 12
  store i32 %.sroa.9.0.i.i, ptr %.sroa.9.0..sroa_idx3.i.i, align 1
  %.0.i33.i = getelementptr inbounds nuw i8, ptr %.0.i33205.i, i64 8 ; 2 uses
  %i.et = icmp ult ptr %.0.i33.i, %.ptr126.i
  br i1 %i.et, label %.lr.ph.i, label %.backedge.i.backedge, !llvm.loop !223

.preheader149.i:                                  ; preds = %bb.v, %.preheader149.i
  %.011.i30.i = phi ptr [ %i.ex, %.preheader149.i ], [ %.ptr.ptr.i, %bb.v ] ; 3 uses
  %.0.i31.i = phi ptr [ %i.ew, %.preheader149.i ], [ %.2.i.ptr.ptr.i, %bb.v ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i31.i, ptr noundef nonnull align 1 dereferenceable(16) %.011.i30.i, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i30.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eu, ptr noundef nonnull align 1 dereferenceable(16) %i.ev, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i30.i, i64 32
  %i.ey = icmp ult ptr %i.ew, %.ptr126.i
  br i1 %i.ey, label %.preheader149.i, label %.backedge.i.backedge, !llvm.loop !85

bb.af:                                            ; preds = %.lr.ph210.i, %bb.ah
  %.in.i = phi i32 [ %i.lz, %.lr.ph210.i ], [ %i.fw, %bb.ah ]
  %i.ez = phi i32 [ %i.ly, %.lr.ph210.i ], [ %i.fv, %bb.ah ] ; 2 uses
  %i.fa = phi ptr [ %i.lw, %.lr.ph210.i ], [ %i.ft, %bb.ah ] ; 4 uses
  %.6.i.ptr209.i = phi ptr [ %.6.i.ptr206.i, %.lr.ph210.i ], [ %.6.i.ptr.i, %bb.ah ]
  %.6.i.idx208.i = phi i64 [ %.6.i.idx.ph.i, %.lr.ph210.i ], [ %.add131.i, %bb.ah ] ; 3 uses
  %i.fb = zext nneg i32 %.in.i to i64             ; 3 uses
  %i.fc = icmp ult ptr %i.fa, %i.n
  %i.fd = icmp sle i64 %.6.i.idx208.i, %i.ma
  %i.fe = and i1 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ag, label %LZ4_wildCopy32.exit.i, !prof !29

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i.ptr209.i, ptr noundef nonnull align 1 dereferenceable(16) %i.fa, i64 16, i1 false)
  %.6.i.add.i = add nsw i64 %.6.i.idx208.i, %i.fb ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb ; 3 uses
  %i.fg = and i32 %i.ez, 15                       ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %.val.i = load i16, ptr %i.ff, align 1, !tbaa !27 ; 2 uses
  %i.fi = zext i16 %.val.i to i64                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2 ; 3 uses
  %.add.i = sub nsw i64 %.6.i.add.i, %i.fi        ; 2 uses
  %i.fk = icmp ne i32 %i.fg, 15
  %i.fl = icmp ugt i16 %.val.i, 7
  %or.cond3.i.i = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond3.i.i, label %bb.ah, label %.loopexit147.i

bb.ah:                                            ; preds = %bb.ag
  %.ptr134.i = getelementptr inbounds i8, ptr %1, i64 %.add.i ; 3 uses
  %.ptr133.i = getelementptr inbounds i8, ptr %1, i64 %.6.i.add.i ; 3 uses
  %i.fm = load i64, ptr %.ptr134.i, align 1
  store i64 %i.fm, ptr %.ptr133.i, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.ptr133.i, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.ptr134.i, i64 8
  %i.fp = load i64, ptr %i.fo, align 1
  store i64 %i.fp, ptr %i.fn, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.ptr133.i, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.ptr134.i, i64 16
  %i.fs = load i16, ptr %i.fr, align 1
  store i16 %i.fs, ptr %i.fq, align 1
  %.add130.i = add nuw nsw i64 %i.fh, 4
  %.add131.i = add nsw i64 %.add130.i, %.6.i.add.i ; 3 uses
  %.6.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.add131.i ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 3 ; 2 uses
  %i.fu = load i8, ptr %i.fj, align 1, !tbaa !8
  %i.fv = zext i8 %i.fu to i32                    ; 3 uses
  %i.fw = lshr i32 %i.fv, 4                       ; 2 uses
  %cond.i.i = icmp eq i32 %i.fw, 15
  br i1 %cond.i.i, label %._crit_edge.i, label %bb.af

._crit_edge.i:                                    ; preds = %bb.ah, %.preheader146.i
  %.3.lcssa.i = phi ptr [ %.3.ph.i, %.preheader146.i ], [ %i.fj, %bb.ah ]
  %.6.i.idx.lcssa.i = phi i64 [ %.6.i.idx.ph.i, %.preheader146.i ], [ %.add131.i, %bb.ah ]
  %.6.i.ptr.lcssa.i = phi ptr [ %.6.i.ptr206.i, %.preheader146.i ], [ %.6.i.ptr.i, %bb.ah ]
  %.lcssa170.i = phi ptr [ %i.lw, %.preheader146.i ], [ %i.ft, %bb.ah ] ; 3 uses
  %.lcssa167.i = phi i32 [ %i.ly, %.preheader146.i ], [ %i.fv, %bb.ah ]
  %i.fx = getelementptr inbounds i8, ptr %i.k, i64 -15 ; 2 uses
  %.not22.i20.i = icmp ult ptr %.lcssa170.i, %i.fx
  br i1 %.not22.i20.i, label %bb.ai, label %LZ4_wildCopy32.exit.thread.i, !prof !29

bb.ai:                                            ; preds = %._crit_edge.i
  %8 = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 2 ; 2 uses
  %i.fy = load i8, ptr %.lcssa170.i, align 1, !tbaa !8 ; 2 uses
  %i.fz = zext i8 %i.fy to i64
  %.not23.i22.i = icmp eq i8 %i.fy, -1
  br i1 %.not23.i22.i, label %.preheader145.i, label %read_variable_length.exit24.thread98.i, !prof !20

.preheader145.i:                                  ; preds = %bb.ai, %bb.aj
  %.15.i = phi ptr [ %i.ga, %bb.aj ], [ %8, %bb.ai ] ; 2 uses
  %.0.i23.i = phi i64 [ %i.ge, %bb.aj ], [ 255, %bb.ai ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.15.i, i64 1 ; 5 uses
  %i.gb = icmp ugt ptr %i.ga, %i.fx
  br i1 %i.gb, label %LZ4_wildCopy32.exit.thread.i, label %bb.aj, !prof !20

bb.aj:                                            ; preds = %.preheader145.i
  %i.gc = load i8, ptr %.15.i, align 1, !tbaa !8  ; 2 uses
  %i.gd = zext i8 %i.gc to i64
  %i.ge = add i64 %.0.i23.i, %i.gd                ; 3 uses
  %i.gf = icmp eq i8 %i.gc, -1
  br i1 %i.gf, label %.preheader145.i, label %read_variable_length.exit24.i, !llvm.loop !83

read_variable_length.exit24.i:                    ; preds = %bb.aj
  %i.gg = icmp eq i64 %i.ge, -1
  br i1 %i.gg, label %LZ4_wildCopy32.exit.thread.i, label %read_variable_length.exit24.thread98.i

read_variable_length.exit24.thread98.i:           ; preds = %read_variable_length.exit24.i, %bb.ai
  %.019.i21102.i = phi i64 [ %i.ge, %read_variable_length.exit24.i ], [ %i.fz, %bb.ai ]
  %.16101.i = phi ptr [ %i.ga, %read_variable_length.exit24.i ], [ %8, %bb.ai ] ; 3 uses
  %i.gh = add i64 %.019.i21102.i, 15              ; 3 uses
  %i.gi = ptrtoint ptr %.6.i.ptr.lcssa.i to i64
  %i.gj = xor i64 %i.gi, -1
  %i.gk = icmp ugt i64 %i.gh, %i.gj
  %i.gl = ptrtoint ptr %.16101.i to i64
  %i.gm = xor i64 %i.gl, -1
  %i.gn = icmp ugt i64 %i.gh, %i.gm
  %or.cond119.i = or i1 %i.gk, %i.gn
  br i1 %or.cond119.i, label %LZ4_wildCopy32.exit.thread.i, label %LZ4_wildCopy32.exit.i, !prof !84

LZ4_wildCopy32.exit.i:                            ; preds = %bb.m, %bb.l, %bb.af, %read_variable_length.exit24.thread98.i
  %.4.i = phi ptr [ %.16101.i, %read_variable_length.exit24.thread98.i ], [ %i.fa, %bb.af ], [ %i.z, %bb.m ], [ %.1269.i, %bb.l ] ; 11 uses
  %.5377.i.i = phi i64 [ %i.gh, %read_variable_length.exit24.thread98.i ], [ %i.fb, %bb.af ], [ %i.ad, %bb.m ], [ %i.ao, %bb.l ] ; 5 uses
  %.0371.i.i = phi i32 [ %.lcssa167.i, %read_variable_length.exit24.thread98.i ], [ %i.ez, %bb.af ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ]
  %.7.i.idx.i = phi i64 [ %.6.i.idx.lcssa.i, %read_variable_length.exit24.thread98.i ], [ %.6.i.idx208.i, %bb.af ], [ %.0358.i.idx.i, %bb.l ], [ %.0358.i.idx.i, %bb.m ] ; 8 uses
  %.4.i758 = ptrtoaddr ptr %.4.i to i64
  %.7.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.7.i.idx.i ; 7 uses
  %.7.i.add.i = add nsw i64 %.7.i.idx.i, %.5377.i.i ; 4 uses
  %.ptr136.i = getelementptr inbounds i8, ptr %1, i64 %.7.i.add.i ; 2 uses
  %i.go = add nsw i64 %i.l, -12
  %i.gp = icmp sgt i64 %.7.i.add.i, %i.go
  br i1 %i.gp, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %LZ4_wildCopy32.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.4.i, i64 %.5377.i.i ; 3 uses
  %i.gr = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.gs = icmp ugt ptr %i.gq, %i.gr
  br i1 %i.gs, label %bb.al, label %.preheader144.i.preheader

.preheader144.i.preheader:                        ; preds = %bb.ak
  %i.gt = add i64 %.7.i.idx.i, %.5377.i.i
  %i.gu = add i64 %i.gt, %i.q
  %i.gv = add i64 %.7.i.idx.i, %i.q
  %i.gw = add i64 %i.gv, 8
  %i.gx = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 %i.gw)
  %i.gy = add i64 %.7.i.idx.i, %i.q
  %i.gz = xor i64 %i.gy, -1
  %i.ha = add i64 %i.gx, %i.gz                    ; 2 uses
  %i.hb = lshr i64 %i.ha, 3
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check761 = icmp ult i64 %i.ha, 104
  br i1 %min.iters.check761, label %.preheader144.i.preheader838, label %vector.memcheck757

vector.memcheck757:                               ; preds = %.preheader144.i.preheader
  %i.hd = add i64 %.7.i.idx.i, %i.q
  %i.he = sub i64 %.4.i758, %i.hd
  %diff.check759 = icmp ugt i64 %i.he, -32
  br i1 %diff.check759, label %.preheader144.i.preheader838, label %vector.ph762

vector.ph762:                                     ; preds = %vector.memcheck757
  %n.vec764 = and i64 %i.hc, 4611686018427387900  ; 3 uses
  %i.hf = shl i64 %n.vec764, 3                    ; 2 uses
  %i.hg = getelementptr i8, ptr %.4.i, i64 %i.hf
  %i.hh = getelementptr i8, ptr %.7.i.ptr.i, i64 %i.hf
  br label %vector.body765

vector.body765:                                   ; preds = %vector.body765, %vector.ph762
  %index766 = phi i64 [ 0, %vector.ph762 ], [ %index.next771, %vector.body765 ] ; 2 uses
  %i.hi = shl i64 %index766, 3                    ; 2 uses
  %next.gep767 = getelementptr i8, ptr %.4.i, i64 %i.hi ; 2 uses
  %next.gep768 = getelementptr i8, ptr %.7.i.ptr.i, i64 %i.hi ; 2 uses
  %i.hj = getelementptr i8, ptr %next.gep767, i64 16
  %wide.load769 = load <2 x i64>, ptr %next.gep767, align 1
  %wide.load770 = load <2 x i64>, ptr %i.hj, align 1
  %i.hk = getelementptr i8, ptr %next.gep768, i64 16
  store <2 x i64> %wide.load769, ptr %next.gep768, align 1
  store <2 x i64> %wide.load770, ptr %i.hk, align 1
  %index.next771 = add nuw i64 %index766, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next771, %n.vec764
  br i1 %i.hl, label %middle.block772, label %vector.body765, !llvm.loop !224

middle.block772:                                  ; preds = %vector.body765
  %cmp.n773 = icmp eq i64 %i.hc, %n.vec764
  br i1 %cmp.n773, label %LZ4_wildCopy8.exit14.i, label %.preheader144.i.preheader838

.preheader144.i.preheader838:                     ; preds = %vector.memcheck757, %.preheader144.i.preheader, %middle.block772
  %.09.i12.i.ph = phi ptr [ %.4.i, %vector.memcheck757 ], [ %.4.i, %.preheader144.i.preheader ], [ %i.hg, %middle.block772 ]
  %.0.i13.i.ph = phi ptr [ %.7.i.ptr.i, %vector.memcheck757 ], [ %.7.i.ptr.i, %.preheader144.i.preheader ], [ %i.hh, %middle.block772 ]
  br label %.preheader144.i

bb.al:                                            ; preds = %bb.ak, %LZ4_wildCopy32.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.4.i, i64 %.5377.i.i
  %i.hn = icmp ugt ptr %i.hm, %i.k                ; 2 uses
  %i.ho = ptrtoint ptr %i.k to i64
  %i.hp = ptrtoint ptr %.4.i to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.7.i.ptr.i, i64 %i.hq
  %.0360.i.i = select i1 %i.hn, ptr %i.hr, ptr %.ptr136.i ; 2 uses
  %i.hs = icmp ugt ptr %.0360.i.i, %i.m
  br i1 %i.hs, label %.thread109.i, label %bb.am

.thread109.i:                                     ; preds = %bb.al
  %gepdiff142.i = sub nsw i64 %i.l, %.7.i.idx.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i.ptr.i, ptr nonnull align 1 %.4.i, i64 %gepdiff142.i, i1 false)
  br label %bb.az

bb.am:                                            ; preds = %bb.al
  %.6378.i.i = select i1 %i.hn, i64 %i.hq, i64 %.5377.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i.ptr.i, ptr nonnull align 1 %.4.i, i64 %.6378.i.i, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.4.i, i64 %.6378.i.i ; 2 uses
  %.7.i.add129.i = add nsw i64 %.6378.i.i, %.7.i.idx.i ; 2 uses
  %.ptr137.i = getelementptr inbounds i8, ptr %1, i64 %.7.i.add129.i
  %i.hu = icmp ne ptr %.0360.i.i, %i.m
  %i.hv = getelementptr inbounds i8, ptr %i.k, i64 -2
  %.not441.i.i = icmp ult ptr %i.ht, %i.hv
  %or.cond459.i.i = select i1 %i.hu, i1 %.not441.i.i, i1 false
  br i1 %or.cond459.i.i, label %LZ4_wildCopy8.exit14.i, label %bb.az

.preheader144.i:                                  ; preds = %.preheader144.i.preheader838, %.preheader144.i
  %.09.i12.i = phi ptr [ %i.hy, %.preheader144.i ], [ %.09.i12.i.ph, %.preheader144.i.preheader838 ] ; 2 uses
  %.0.i13.i = phi ptr [ %i.hx, %.preheader144.i ], [ %.0.i13.i.ph, %.preheader144.i.preheader838 ] ; 2 uses
  %i.hw = load i64, ptr %.09.i12.i, align 1
  store i64 %i.hw, ptr %.0.i13.i, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.09.i12.i, i64 8
  %i.hz = icmp ult ptr %i.hx, %.ptr136.i
  br i1 %i.hz, label %.preheader144.i, label %LZ4_wildCopy8.exit14.i, !llvm.loop !225

LZ4_wildCopy8.exit14.i:                           ; preds = %.preheader144.i, %middle.block772, %bb.am
  %.5.i = phi ptr [ %i.ht, %bb.am ], [ %i.gq, %middle.block772 ], [ %i.gq, %.preheader144.i ] ; 2 uses
  %.8.i.idx.i = phi i64 [ %.7.i.add129.i, %bb.am ], [ %.7.i.add.i, %middle.block772 ], [ %.7.i.add.i, %.preheader144.i ] ; 2 uses
  %.val35.i = load i16, ptr %.5.i, align 1, !tbaa !27
  %i.ia = zext i16 %.val35.i to i64               ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.5.i, i64 2
  %.8.i.add.i = sub nsw i64 %.8.i.idx.i, %i.ia
  %i.ic = and i32 %.0371.i.i, 15
  %i.id = zext nneg i32 %i.ic to i64
  br label %.loopexit147.i

.loopexit147.i:                                   ; preds = %bb.ag, %LZ4_wildCopy8.exit14.i
  %.6.i = phi ptr [ %i.ib, %LZ4_wildCopy8.exit14.i ], [ %i.fj, %bb.ag ] ; 3 uses
  %.8380.i.i = phi i64 [ %i.id, %LZ4_wildCopy8.exit14.i ], [ %i.fh, %bb.ag ] ; 2 uses
  %.0369.i.i = phi i64 [ %i.ia, %LZ4_wildCopy8.exit14.i ], [ %i.fi, %bb.ag ]
  %.0362.i.idx.i = phi i64 [ %.8.i.add.i, %LZ4_wildCopy8.exit14.i ], [ %.add.i, %bb.ag ]
  %.9.i.idx.i = phi i64 [ %.8.i.idx.i, %LZ4_wildCopy8.exit14.i ], [ %.6.i.add.i, %bb.ag ] ; 2 uses
  %.9.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.9.i.idx.i
  %i.ie = icmp eq i64 %.8380.i.i, 15
  br i1 %i.ie, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.loopexit147.i
  %i.if = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 4 uses
  %i.ih = icmp ugt ptr %i.ig, %i.if
  br i1 %i.ih, label %LZ4_wildCopy32.exit.thread.i, label %bb.ao, !prof !20

bb.ao:                                            ; preds = %bb.an
  %i.ii = load i8, ptr %.6.i, align 1, !tbaa !8   ; 2 uses
  %i.ij = zext i8 %i.ii to i64
  %.not23.i25.i = icmp eq i8 %i.ii, -1
  br i1 %.not23.i25.i, label %.preheader143.i, label %read_variable_length.exit28.i, !prof !20

.preheader143.i:                                  ; preds = %bb.ao, %bb.ap
  %.17.i = phi ptr [ %i.ik, %bb.ap ], [ %i.ig, %bb.ao ] ; 2 uses
  %.0.i27.i = phi i64 [ %i.io, %bb.ap ], [ 255, %bb.ao ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.17.i, i64 1 ; 4 uses
  %i.il = icmp ugt ptr %i.ik, %i.if
  br i1 %i.il, label %LZ4_wildCopy32.exit.thread.i, label %bb.ap, !prof !20

bb.ap:                                            ; preds = %.preheader143.i
  %i.im = load i8, ptr %.17.i, align 1, !tbaa !8  ; 2 uses
  %i.in = zext i8 %i.im to i64
  %i.io = add i64 %.0.i27.i, %i.in                ; 2 uses
  %i.ip = icmp eq i8 %i.im, -1
  br i1 %i.ip, label %.preheader143.i, label %read_variable_length.exit28.i, !llvm.loop !83

read_variable_length.exit28.i:                    ; preds = %bb.ap, %bb.ao
  %.18.i = phi ptr [ %i.ig, %bb.ao ], [ %i.ik, %bb.ap ] ; 2 uses
  %.019.i26.i = phi i64 [ %i.ij, %bb.ao ], [ %i.io, %bb.ap ] ; 2 uses
  %i.iq = icmp ne i64 %.019.i26.i, -1             ; 2 uses
  %i.ir = add i64 %.019.i26.i, 15                 ; 2 uses
  %i.is = ptrtoint ptr %.9.i.ptr.i to i64
  %i.it = xor i64 %i.is, -1
  %i.iu = icmp ule i64 %i.ir, %i.it
  %.not128.i = select i1 %i.iq, i1 %i.iu, i1 false
  %.9381.i.i = select i1 %i.iq, i64 %i.ir, i64 15
  br i1 %.not128.i, label %bb.aq, label %LZ4_wildCopy32.exit.thread.i

bb.aq:                                            ; preds = %read_variable_length.exit28.i, %.loopexit147.i
  %.7.i = phi ptr [ %.18.i, %read_variable_length.exit28.i ], [ %.6.i, %.loopexit147.i ]
  %.10382.i.i = phi i64 [ %.9381.i.i, %read_variable_length.exit28.i ], [ %.8380.i.i, %.loopexit147.i ]
  %i.iv = add i64 %.10382.i.i, 4
  br label %.loopexit159.i

.loopexit159.i:                                   ; preds = %bb.s, %bb.r, %bb.aq
  %.2.i = phi ptr [ %.7.i, %bb.aq ], [ %i.bf, %bb.s ], [ %.1486.i, %bb.r ] ; 5 uses
  %.11383.i.i = phi i64 [ %i.iv, %bb.aq ], [ %i.by, %bb.s ], [ %i.bt, %bb.r ] ; 4 uses
  %.1370.i.i = phi i64 [ %.0369.i.i, %bb.aq ], [ %i.be, %bb.r ], [ %i.be, %bb.s ] ; 3 uses
  %.1363.i.idx.i = phi i64 [ %.0362.i.idx.i, %bb.aq ], [ %.2.i.add.i, %bb.r ], [ %.2.i.add.i, %bb.s ] ; 4 uses
  %.10.i.idx.i = phi i64 [ %.9.i.idx.i, %bb.aq ], [ %.2.i.idx.i, %bb.r ], [ %.2.i.idx.i, %bb.s ] ; 12 uses
  %.10.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.10.i.idx.i ; 15 uses
  %.1363.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.1363.i.idx.i ; 13 uses
  %i.iw = icmp slt i64 %.1363.i.idx.i, -65536
  br i1 %i.iw, label %LZ4_wildCopy32.exit.thread.i, label %bb.ar, !prof !86

bb.ar:                                            ; preds = %.loopexit159.i
  %.10.i.add.i = add nsw i64 %.10.i.idx.i, %.11383.i.i ; 5 uses
  %.ptr140.i = getelementptr inbounds i8, ptr %1, i64 %.10.i.add.i
  %i.ix = add nsw i64 %i.l, -12
  %i.iy = icmp sgt i64 %.10.i.add.i, %i.ix
  br i1 %i.iy, label %bb.as, label %bb.au
end_hunk_11
begin_hunk_12_@LZ4_decompress_safe_partial_usingDict:bb.a
  %index806 = phi i64 [ 0, %vector.ph802 ], [ %index.next811, %vector.body805 ] ; 3 uses
  %next.gep807 = getelementptr i8, ptr %.10.i.ptr.i, i64 %index806 ; 2 uses
  %next.gep808 = getelementptr i8, ptr %.1363.i.ptr.i, i64 %index806 ; 2 uses
  %i.jl = getelementptr i8, ptr %next.gep808, i64 16
  %wide.load809 = load <16 x i8>, ptr %next.gep808, align 1, !tbaa !8
  %wide.load810 = load <16 x i8>, ptr %i.jl, align 1, !tbaa !8
  %i.jm = getelementptr i8, ptr %next.gep807, i64 16
  store <16 x i8> %wide.load809, ptr %next.gep807, align 1, !tbaa !8
  store <16 x i8> %wide.load810, ptr %i.jm, align 1, !tbaa !8
  %index.next811 = add nuw i64 %index806, 32      ; 2 uses
  %i.jn = icmp eq i64 %index.next811, %n.vec804
  br i1 %i.jn, label %middle.block812, label %vector.body805, !llvm.loop !226

middle.block812:                                  ; preds = %vector.body805
  %cmp.n813 = icmp eq i64 %i.jh, %n.vec804
  br i1 %cmp.n813, label %.loopexit.i, label %vec.epilog.iter.check819

vec.epilog.iter.check819:                         ; preds = %middle.block812
  %min.epilog.iters.check820 = icmp eq i64 %n.mod.vf803, 0
  br i1 %min.epilog.iters.check820, label %.lr.ph217.i.preheader, label %vec.epilog.ph821, !prof !96

vec.epilog.ph821:                                 ; preds = %vector.main.loop.iter.check800, %vec.epilog.iter.check819
  %vec.epilog.resume.val814 = phi i64 [ %n.vec804, %vec.epilog.iter.check819 ], [ 0, %vector.main.loop.iter.check800 ]
  %n.vec823 = and i64 %i.jh, -4                   ; 4 uses
  %i.jo = getelementptr i8, ptr %.10.i.ptr.i, i64 %n.vec823
  %i.jp = getelementptr i8, ptr %.1363.i.ptr.i, i64 %n.vec823
  br label %vec.epilog.vector.body824

vec.epilog.vector.body824:                        ; preds = %vec.epilog.vector.body824, %vec.epilog.ph821
  %index825 = phi i64 [ %vec.epilog.resume.val814, %vec.epilog.ph821 ], [ %index.next829, %vec.epilog.vector.body824 ] ; 3 uses
  %next.gep826 = getelementptr i8, ptr %.10.i.ptr.i, i64 %index825
  %next.gep827 = getelementptr i8, ptr %.1363.i.ptr.i, i64 %index825
  %wide.load828 = load <4 x i8>, ptr %next.gep827, align 1, !tbaa !8
  store <4 x i8> %wide.load828, ptr %next.gep826, align 1, !tbaa !8
  %index.next829 = add nuw i64 %index825, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next829, %n.vec823
  br i1 %i.jq, label %vec.epilog.middle.block830, label %vec.epilog.vector.body824, !llvm.loop !227

vec.epilog.middle.block830:                       ; preds = %vec.epilog.vector.body824
  %cmp.n831 = icmp eq i64 %i.jh, %n.vec823
  br i1 %cmp.n831, label %.loopexit.i, label %.lr.ph217.i.preheader

.lr.ph217.i.preheader:                            ; preds = %iter.check817, %vec.epilog.iter.check819, %vec.epilog.middle.block830
  %.14.i216.i.ph = phi ptr [ %.10.i.ptr.i, %iter.check817 ], [ %i.jj, %vec.epilog.iter.check819 ], [ %i.jo, %vec.epilog.middle.block830 ]
  %.2364.i215.i.ph = phi ptr [ %.1363.i.ptr.i, %iter.check817 ], [ %i.jk, %vec.epilog.iter.check819 ], [ %i.jp, %vec.epilog.middle.block830 ]
  br label %.lr.ph217.i

.lr.ph217.i:                                      ; preds = %.lr.ph217.i.preheader, %.lr.ph217.i
  %.14.i216.i = phi ptr [ %i.jt, %.lr.ph217.i ], [ %.14.i216.i.ph, %.lr.ph217.i.preheader ] ; 2 uses
  %.2364.i215.i = phi ptr [ %i.jr, %.lr.ph217.i ], [ %.2364.i215.i.ph, %.lr.ph217.i.preheader ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.2364.i215.i, i64 1
  %i.js = load i8, ptr %.2364.i215.i, align 1, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.14.i216.i, i64 1 ; 2 uses
  store i8 %i.js, ptr %.14.i216.i, align 1, !tbaa !8
  %i.ju = icmp ult ptr %i.jt, %.ptr141.i
  br i1 %i.ju, label %.lr.ph217.i, label %.loopexit.i, !llvm.loop !228

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10.i.ptr.i, ptr align 1 %.1363.i.ptr.i, i64 %i.iz, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph217.i, %middle.block812, %vec.epilog.middle.block830, %bb.at, %.preheader.i
  %i.jv = icmp eq i64 %.10.i.add132.i, %i.l
  br i1 %i.jv, label %bb.az, label %.preheader146.i

bb.au:                                            ; preds = %bb.ar
  %i.jw = icmp ult i64 %.1370.i.i, 8
  br i1 %i.jw, label %bb.av, label %bb.aw, !prof !20

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %.10.i.ptr.i, align 1, !tbaa !16
  %i.jx = load i8, ptr %.1363.i.ptr.i, align 1, !tbaa !8
  store i8 %i.jx, ptr %.10.i.ptr.i, align 1, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %.1363.i.ptr.i, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %.10.i.ptr.i, i64 1
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %.1363.i.ptr.i, i64 2
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !8
  %i.kd = getelementptr inbounds nuw i8, ptr %.10.i.ptr.i, i64 2
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !8
  %i.ke = getelementptr inbounds nuw i8, ptr %.1363.i.ptr.i, i64 3
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !8
  %i.kg = getelementptr inbounds nuw i8, ptr %.10.i.ptr.i, i64 3
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !8
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !35
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %.1363.i.ptr.i, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.10.i.ptr.i, i64 4
  %i.km = load i32, ptr %i.kk, align 1
  store i32 %i.km, ptr %i.kl, align 1
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1370.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !35
  %i.kp = sext i32 %i.ko to i64
  %i.kq = sub nsw i64 0, %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.kk, i64 %i.kq
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ks = load i64, ptr %.1363.i.ptr.i, align 1
  store i64 %i.ks, ptr %.10.i.ptr.i, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.1363.i.ptr.i, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.3365.i.i = phi ptr [ %i.kr, %bb.av ], [ %i.kt, %bb.aw ] ; 6 uses
  %.3365.i.i777 = ptrtoaddr ptr %.3365.i.i to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %.10.i.ptr.i, i64 8
  %i.kv = load i64, ptr %.3365.i.i, align 1
  store i64 %i.kv, ptr %i.ku, align 1
  %i.kw = icmp ugt i64 %.11383.i.i, 16
  br i1 %i.kw, label %bb.ay, label %.preheader146.i

bb.ay:                                            ; preds = %bb.ax
  %i.kx = getelementptr inbounds nuw i8, ptr %.10.i.ptr.i, i64 16 ; 4 uses
  %i.ky = add i64 %.10.i.idx.i, %.11383.i.i
  %i.kz = add i64 %i.ky, %i.q
  %i.la = add i64 %.10.i.idx.i, %i.q
  %i.lb = add i64 %i.la, 24
  %i.lc = tail call i64 @llvm.umax.i64(i64 %i.kz, i64 %i.lb)
  %i.ld = add i64 %.10.i.idx.i, %i.q
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = add i64 %i.le, -17                      ; 2 uses
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check780 = icmp ult i64 %i.lf, 136
  br i1 %min.iters.check780, label %scalar.ph779.preheader, label %vector.memcheck776

vector.memcheck776:                               ; preds = %bb.ay
  %i.li = add i64 %.10.i.idx.i, %i.q
  %i.lj = sub i64 %i.li, %.3365.i.i777
  %i.lk = add i64 %i.lj, 7
  %diff.check778 = icmp ult i64 %i.lk, 31
  br i1 %diff.check778, label %scalar.ph779.preheader, label %vector.ph781

vector.ph781:                                     ; preds = %vector.memcheck776
  %n.vec783 = and i64 %i.lh, 4611686018427387900  ; 3 uses
  %i.ll = shl i64 %n.vec783, 3                    ; 2 uses
  %i.lm = getelementptr i8, ptr %.3365.i.i, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.kx, i64 %i.ll
  br label %vector.body784

vector.body784:                                   ; preds = %vector.body784, %vector.ph781
  %index785 = phi i64 [ 0, %vector.ph781 ], [ %index.next790, %vector.body784 ] ; 2 uses
  %i.lo = shl i64 %index785, 3                    ; 2 uses
  %next.gep786 = getelementptr i8, ptr %.3365.i.i, i64 %i.lo ; 2 uses
  %next.gep787 = getelementptr i8, ptr %i.kx, i64 %i.lo ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %next.gep786, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %next.gep786, i64 24
  %wide.load788 = load <2 x i64>, ptr %i.lp, align 1
  %wide.load789 = load <2 x i64>, ptr %i.lq, align 1
  %i.lr = getelementptr i8, ptr %next.gep787, i64 16
  store <2 x i64> %wide.load788, ptr %next.gep787, align 1
  store <2 x i64> %wide.load789, ptr %i.lr, align 1
  %index.next790 = add nuw i64 %index785, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next790, %n.vec783
  br i1 %i.ls, label %middle.block791, label %vector.body784, !llvm.loop !229

middle.block791:                                  ; preds = %vector.body784
  %cmp.n792 = icmp eq i64 %i.lh, %n.vec783
  br i1 %cmp.n792, label %.preheader146.i, label %scalar.ph779.preheader

scalar.ph779.preheader:                           ; preds = %vector.memcheck776, %bb.ay, %middle.block791
  %.3365.i.pn.i.ph = phi ptr [ %.3365.i.i, %vector.memcheck776 ], [ %.3365.i.i, %bb.ay ], [ %i.lm, %middle.block791 ]
  %.0.i10.i.ph = phi ptr [ %i.kx, %vector.memcheck776 ], [ %i.kx, %bb.ay ], [ %i.ln, %middle.block791 ]
  br label %scalar.ph779

scalar.ph779:                                     ; preds = %scalar.ph779.preheader, %scalar.ph779
  %.3365.i.pn.i = phi ptr [ %.09.i9.i, %scalar.ph779 ], [ %.3365.i.pn.i.ph, %scalar.ph779.preheader ]
  %.0.i10.i = phi ptr [ %i.lu, %scalar.ph779 ], [ %.0.i10.i.ph, %scalar.ph779.preheader ] ; 2 uses
  %.09.i9.i = getelementptr inbounds nuw i8, ptr %.3365.i.pn.i, i64 8 ; 2 uses
  %i.lt = load i64, ptr %.09.i9.i, align 1
  store i64 %i.lt, ptr %.0.i10.i, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8 ; 2 uses
  %i.lv = icmp ult ptr %i.lu, %.ptr140.i
  br i1 %i.lv, label %scalar.ph779, label %.preheader146.i, !llvm.loop !230

.preheader146.i:                                  ; preds = %scalar.ph779, %bb.ax, %middle.block791, %.loopexit.i, %bb.h
  %.3.ph.i = phi ptr [ %0, %bb.h ], [ %.2.i, %.loopexit.i ], [ %.2.i, %middle.block791 ], [ %.2.i, %bb.ax ], [ %.2.i, %scalar.ph779 ] ; 3 uses
  %.6.i.idx.ph.i = phi i64 [ 0, %bb.h ], [ %.10.i.add132.i, %.loopexit.i ], [ %.10.i.add.i, %middle.block791 ], [ %.10.i.add.i, %bb.ax ], [ %.10.i.add.i, %scalar.ph779 ] ; 3 uses
  %.6.i.ptr206.i = getelementptr inbounds i8, ptr %1, i64 %.6.i.idx.ph.i ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  %i.lx = load i8, ptr %.3.ph.i, align 1, !tbaa !8
  %i.ly = zext i8 %i.lx to i32                    ; 3 uses
  %i.lz = lshr i32 %i.ly, 4                       ; 2 uses
  %cond.i207.i = icmp eq i32 %i.lz, 15
  br i1 %cond.i207.i, label %._crit_edge.i, label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %.preheader146.i
  %i.ma = add nsw i64 %i.l, -32
  br label %bb.af

bb.az:                                            ; preds = %.loopexit.i, %bb.am, %.thread109.i
  %.17.i.i = phi ptr [ %.ptr141.i, %.loopexit.i ], [ %.ptr137.i, %bb.am ], [ %i.m, %.thread109.i ]
  %i.mb = ptrtoint ptr %.17.i.i to i64
  %i.mc = sub i64 %i.mb, %i.q
  %i.md = trunc i64 %i.mc to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i:                     ; preds = %.thread91.i, %read_variable_length.exit19.thread83.i, %read_variable_length.exit19.i, %bb.o, %read_variable_length.exit.thread66.i, %read_variable_length.exit.i, %bb.i, %.preheader154.i, %.preheader151.i, %.preheader145.i, %.preheader143.i, %.loopexit159.i, %read_variable_length.exit28.i, %bb.an, %read_variable_length.exit24.thread98.i, %read_variable_length.exit24.i, %._crit_edge.i
  %.8.i = phi ptr [ %.2.i, %.loopexit159.i ], [ %i.bm, %.preheader151.i ], [ %.18.i, %read_variable_length.exit28.i ], [ %i.ga, %read_variable_length.exit24.i ], [ %i.ik, %.preheader143.i ], [ %.16101.i, %read_variable_length.exit24.thread98.i ], [ %.lcssa170.i, %._crit_edge.i ], [ %i.ga, %.preheader145.i ], [ %i.ah, %.preheader154.i ], [ %i.ig, %bb.an ], [ %.9.i, %.thread91.i ], [ %i.ah, %read_variable_length.exit.i ], [ %.1269.i, %read_variable_length.exit.thread66.i ], [ %i.z, %bb.i ], [ %.1486.i, %read_variable_length.exit19.thread83.i ], [ %i.bm, %read_variable_length.exit19.i ], [ %i.bi, %bb.o ]
  %i.me = ptrtoint ptr %.8.i to i64
  %i.mf = ptrtoint ptr %0 to i64
  %.neg.i.i = sub i64 %i.mf, %i.me
  %i.mg = trunc i64 %.neg.i.i to i32
  %i.mh = add nsw i32 %i.mg, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.ba:                                            ; preds = %bb.d
  %i.mi = sub nsw i64 0, %i.c
  %i.mj = getelementptr inbounds i8, ptr %1, i64 %i.mi ; 4 uses
  %i.mk = icmp eq ptr %0, null
  %i.ml = icmp slt i32 %i.g, 0
  %or.cond.i.i30 = or i1 %i.mk, %i.ml
  br i1 %or.cond.i.i30, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mm = sext i32 %2 to i64
  %i.mn = getelementptr inbounds i8, ptr %0, i64 %i.mm ; 11 uses
  %i.mo = zext nneg i32 %i.g to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 %i.mo ; 9 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mn, i64 -16
  %i.mr = getelementptr inbounds i8, ptr %i.mp, i64 -32 ; 2 uses
  %i.ms = icmp eq i32 %i.g, 0
  br i1 %i.ms, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bc, !prof !20

bb.bc:                                            ; preds = %bb.bb
  %i.mt = icmp eq i32 %2, 0
  br i1 %i.mt, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bd, !prof !20

bb.bd:                                            ; preds = %bb.bc
  %i.mu = ptrtoint ptr %i.mp to i64               ; 2 uses
  %i.mv = ptrtoint ptr %1 to i64
  %i.mw = icmp samesign ult i32 %i.g, 64
  br i1 %i.mw, label %.preheader129.i, label %.preheader139.i

.preheader139.i:                                  ; preds = %bb.bd
  %i.mx = getelementptr inbounds i8, ptr %i.mn, i64 -17
  %i.my = getelementptr inbounds i8, ptr %i.mn, i64 -15 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mn, i64 -32
  %i.na = getelementptr inbounds i8, ptr %i.mp, i64 -64 ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %i.mn, i64 -4 ; 2 uses
  br label %.backedge.i75

.backedge.i75:                                    ; preds = %.backedge.i75.backedge, %.preheader139.i
  %.0.i31 = phi ptr [ %0, %.preheader139.i ], [ %.0.i31.be, %.backedge.i75.backedge ] ; 3 uses
  %.0358.i.i = phi ptr [ %1, %.preheader139.i ], [ %.0358.i.i.be, %.backedge.i75.backedge ] ; 7 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0.i31, i64 1 ; 7 uses
  %i.nd = load i8, ptr %.0.i31, align 1, !tbaa !8
  %i.ne = zext i8 %i.nd to i32                    ; 4 uses
  %i.nf = lshr i32 %i.ne, 4                       ; 2 uses
  %i.ng = zext nneg i32 %i.nf to i64              ; 3 uses
  %i.nh = icmp eq i32 %i.nf, 15
  br i1 %i.nh, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %.backedge.i75
  %.not22.i.i94 = icmp ult ptr %i.nc, %i.my
  br i1 %.not22.i.i94, label %bb.bf, label %LZ4_wildCopy32.exit.thread.i55, !prof !29

bb.bf:                                            ; preds = %bb.be
  %9 = getelementptr inbounds nuw i8, ptr %.0.i31, i64 2 ; 2 uses
  %i.ni = load i8, ptr %i.nc, align 1, !tbaa !8   ; 2 uses
  %i.nj = zext i8 %i.ni to i64
  %.not23.i.i95 = icmp eq i8 %i.ni, -1
  br i1 %.not23.i.i95, label %.preheader137.i, label %read_variable_length.exit.thread67.i, !prof !20

.preheader137.i:                                  ; preds = %bb.bf, %bb.bg
  %.11.i99 = phi ptr [ %i.nk, %bb.bg ], [ %9, %bb.bf ] ; 2 uses
  %.0.i16.i = phi i64 [ %i.no, %bb.bg ], [ 255, %bb.bf ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.11.i99, i64 1 ; 5 uses
  %i.nl = icmp ugt ptr %i.nk, %i.my
  br i1 %i.nl, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bg, !prof !20

bb.bg:                                            ; preds = %.preheader137.i
  %i.nm = load i8, ptr %.11.i99, align 1, !tbaa !8 ; 2 uses
  %i.nn = zext i8 %i.nm to i64
  %i.no = add i64 %.0.i16.i, %i.nn                ; 3 uses
  %i.np = icmp eq i8 %i.nm, -1
  br i1 %i.np, label %.preheader137.i, label %read_variable_length.exit.i100, !llvm.loop !83

read_variable_length.exit.i100:                   ; preds = %bb.bg
  %i.nq = icmp eq i64 %i.no, -1
  br i1 %i.nq, label %LZ4_wildCopy32.exit.thread.i55, label %read_variable_length.exit.thread67.i

read_variable_length.exit.thread67.i:             ; preds = %read_variable_length.exit.i100, %bb.bf
  %.019.i71.i = phi i64 [ %i.no, %read_variable_length.exit.i100 ], [ %i.nj, %bb.bf ]
  %.1270.i = phi ptr [ %i.nk, %read_variable_length.exit.i100 ], [ %9, %bb.bf ] ; 5 uses
  %i.nr = add i64 %.019.i71.i, 15                 ; 5 uses
  %i.ns = ptrtoint ptr %.0358.i.i to i64
  %i.nt = xor i64 %i.ns, -1
  %i.nu = icmp ugt i64 %i.nr, %i.nt
  %i.nv = ptrtoint ptr %.1270.i to i64
  %i.nw = xor i64 %i.nv, -1
  %i.nx = icmp ugt i64 %i.nr, %i.nw
  %or.cond.i96 = or i1 %i.nu, %i.nx
  br i1 %or.cond.i96, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bh, !prof !84

bb.bh:                                            ; preds = %read_variable_length.exit.thread67.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.0358.i.i, i64 %i.nr ; 3 uses
  %i.nz = icmp ugt ptr %i.ny, %i.mr
  %i.oa = getelementptr inbounds nuw i8, ptr %.1270.i, i64 %i.nr ; 2 uses
  %i.ob = icmp ugt ptr %i.oa, %i.mz
  %or.cond449.i.i97 = select i1 %i.nz, i1 true, i1 %i.ob
  br i1 %or.cond449.i.i97, label %LZ4_wildCopy32.exit.i42, label %.preheader136.i

.preheader136.i:                                  ; preds = %bb.bh, %.preheader136.i
  %.011.i.i98 = phi ptr [ %i.of, %.preheader136.i ], [ %.1270.i, %bb.bh ] ; 3 uses
  %.0.i30.i = phi ptr [ %i.oe, %.preheader136.i ], [ %.0358.i.i, %bb.bh ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 1 dereferenceable(16) %.011.i.i98, i64 16, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %.011.i.i98, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.oc, ptr noundef nonnull align 1 dereferenceable(16) %i.od, i64 16, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 32 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.011.i.i98, i64 32
  %i.og = icmp ult ptr %i.oe, %i.ny
  br i1 %i.og, label %.preheader136.i, label %LZ4_wildCopy32.exit.thread76.i, !llvm.loop !85

bb.bi:                                            ; preds = %.backedge.i75
  %.not.i.i32 = icmp ugt ptr %i.nc, %i.mx
  br i1 %.not.i.i32, label %LZ4_wildCopy32.exit.i42, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0358.i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.nc, i64 16, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ng
  %i.oi = getelementptr inbounds nuw i8, ptr %.0358.i.i, i64 %i.ng
  br label %LZ4_wildCopy32.exit.thread76.i

LZ4_wildCopy32.exit.thread76.i:                   ; preds = %.preheader136.i, %bb.bj
  %.1.i33 = phi ptr [ %i.oh, %bb.bj ], [ %i.oa, %.preheader136.i ] ; 3 uses
  %.2.i.i = phi ptr [ %i.oi, %bb.bj ], [ %i.ny, %.preheader136.i ] ; 25 uses
  %.2.i.i630 = ptrtoaddr ptr %.2.i.i to i64       ; 7 uses
  %.val37.i = load i16, ptr %.1.i33, align 1, !tbaa !27 ; 5 uses
  %i.oj = zext i16 %.val37.i to i64               ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.1.i33, i64 2 ; 4 uses
  %i.ol = sub nsw i64 0, %i.oj
  %i.om = getelementptr inbounds i8, ptr %.2.i.i, i64 %i.ol ; 18 uses
  %i.on = and i32 %i.ne, 15                       ; 2 uses
  %i.oo = icmp eq i32 %i.on, 15
  br i1 %i.oo, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %LZ4_wildCopy32.exit.thread76.i
  %i.op = getelementptr inbounds nuw i8, ptr %.1.i33, i64 3 ; 4 uses
  %i.oq = icmp ugt ptr %i.op, %i.nb
  br i1 %i.oq, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bl, !prof !20

bb.bl:                                            ; preds = %bb.bk
  %i.or = load i8, ptr %i.ok, align 1, !tbaa !8   ; 2 uses
  %i.os = zext i8 %i.or to i64
  %.not23.i17.i = icmp eq i8 %i.or, -1
  br i1 %.not23.i17.i, label %.preheader134.i, label %read_variable_length.exit20.thread84.i, !prof !20

.preheader134.i:                                  ; preds = %bb.bl, %bb.bm
  %.13.i93 = phi ptr [ %i.ot, %bb.bm ], [ %i.op, %bb.bl ] ; 2 uses
  %.0.i19.i = phi i64 [ %i.ox, %bb.bm ], [ 255, %bb.bl ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.13.i93, i64 1 ; 5 uses
  %i.ou = icmp ugt ptr %i.ot, %i.nb
  br i1 %i.ou, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bm, !prof !20

bb.bm:                                            ; preds = %.preheader134.i
  %i.ov = load i8, ptr %.13.i93, align 1, !tbaa !8 ; 2 uses
  %i.ow = zext i8 %i.ov to i64
  %i.ox = add i64 %.0.i19.i, %i.ow                ; 3 uses
  %i.oy = icmp eq i8 %i.ov, -1
  br i1 %i.oy, label %.preheader134.i, label %read_variable_length.exit20.i, !llvm.loop !83

read_variable_length.exit20.i:                    ; preds = %bb.bm
  %i.oz = icmp eq i64 %i.ox, -1
  br i1 %i.oz, label %LZ4_wildCopy32.exit.thread.i55, label %read_variable_length.exit20.thread84.i

read_variable_length.exit20.thread84.i:           ; preds = %read_variable_length.exit20.i, %bb.bl
  %.019.i1888.i = phi i64 [ %i.ox, %read_variable_length.exit20.i ], [ %i.os, %bb.bl ]
  %.1487.i = phi ptr [ %i.ot, %read_variable_length.exit20.i ], [ %i.op, %bb.bl ] ; 3 uses
  %i.pa = add i64 %.019.i1888.i, 19               ; 4 uses
  %i.pb = ptrtoint ptr %.2.i.i to i64
  %i.pc = xor i64 %i.pb, -1
  %i.pd = icmp ugt i64 %i.pa, %i.pc
  br i1 %i.pd, label %LZ4_wildCopy32.exit.thread.i55, label %bb.bn, !prof !20

bb.bn:                                            ; preds = %read_variable_length.exit20.thread84.i
  %i.pe = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.pa
  %.not435.i.i92 = icmp ult ptr %i.pe, %i.na
  br i1 %.not435.i.i92, label %.thread92.i, label %.loopexit142.i

bb.bo:                                            ; preds = %LZ4_wildCopy32.exit.thread76.i
  %narrow.i.i34 = add nuw nsw i32 %i.on, 4
  %i.pf = zext nneg i32 %narrow.i.i34 to i64      ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.pf ; 2 uses
  %.not434.i.i35 = icmp ult ptr %i.pg, %i.na
  br i1 %.not434.i.i35, label %bb.bp, label %.loopexit142.i

bb.bp:                                            ; preds = %bb.bo
  %i.ph = icmp uge ptr %i.om, %i.mj
  %i.pi = icmp ugt i16 %.val37.i, 7
  %or.cond5.i.i = select i1 %i.ph, i1 %i.pi, i1 false
  br i1 %or.cond5.i.i, label %bb.bq, label %.thread92.i

bb.bq:                                            ; preds = %bb.bp
  %i.pj = load i64, ptr %i.om, align 1
  store i64 %i.pj, ptr %.2.i.i, align 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.pm = load i64, ptr %i.pl, align 1
  store i64 %i.pm, ptr %i.pk, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pp = load i16, ptr %i.po, align 1
  store i16 %i.pp, ptr %i.pn, align 1
  br label %.backedge.i75.backedge

.thread92.i:                                      ; preds = %bb.bp, %bb.bn
  %.9.i73 = phi ptr [ %i.ok, %bb.bp ], [ %.1487.i, %bb.bn ] ; 7 uses
  %.2374.i.i74 = phi i64 [ %i.pf, %bb.bp ], [ %i.pa, %bb.bn ] ; 4 uses
  %i.pq = icmp ult ptr %i.om, %i.mj
  br i1 %i.pq, label %LZ4_wildCopy32.exit.thread.i55, label %bb.br, !prof !86

bb.br:                                            ; preds = %.thread92.i
  %i.pr = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %.2374.i.i74 ; 9 uses
  %i.ps = icmp ult i16 %.val37.i, 16
  br i1 %i.ps, label %bb.bs, label %.preheader132.i, !prof !20

bb.bs:                                            ; preds = %bb.br
  switch i16 %.val37.i, label %bb.bw [
    i16 1, label %bb.bt
    i16 2, label %bb.bu
    i16 4, label %bb.bv
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.pt = load i8, ptr %i.om, align 1, !tbaa !8
  %i.pu = zext i8 %i.pt to i32
  %.sroa.0.0.isplat.i.i88 = mul nuw i32 %i.pu, 16843009
  br label %bb.ca

bb.bu:                                            ; preds = %bb.bs
  %.sroa.0.0.copyload9.i.i84 = load i16, ptr %i.om, align 1
  %.sroa.0.0.insert.ext.i.i85 = zext i16 %.sroa.0.0.copyload9.i.i84 to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i.i86 = shl nuw i32 %.sroa.0.0.insert.ext.i.i85, 16
  %.sroa.0.2.insert.insert.i.i87 = or disjoint i32 %.sroa.0.2.insert.shift.i.i86, %.sroa.0.0.insert.ext.i.i85
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bs
  %.sroa.0.0.copyload2.i.i77 = load i32, ptr %i.om, align 1
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.pv = icmp samesign ult i16 %.val37.i, 8
  br i1 %i.pv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %.2.i.i, align 1, !tbaa !16
  %i.pw = load i8, ptr %i.om, align 1, !tbaa !8
  store i8 %i.pw, ptr %.2.i.i, align 1, !tbaa !8
  %i.px = getelementptr inbounds nuw i8, ptr %i.om, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !8
  %i.pz = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.om, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !8
  %i.qc = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 2
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.om, i64 3
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !8
  %i.qf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 3
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !8
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.oj
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !35
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.qi ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  %i.ql = load i32, ptr %i.qj, align 1
  store i32 %i.ql, ptr %i.qk, align 1
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.oj
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !35
  %i.qo = sext i32 %i.qn to i64
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.qj, i64 %i.qp
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.qr = load i64, ptr %i.om, align 1
  store i64 %i.qr, ptr %.2.i.i, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.023.i.i89 = phi ptr [ %i.qq, %bb.bx ], [ %i.qs, %bb.by ] ; 5 uses
  %.0.i35.i = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8 ; 4 uses
  %i.qt = add i64 %.2374.i.i74, %.2.i.i630
  %i.qu = add i64 %.2.i.i630, 16
  %i.qv = tail call i64 @llvm.umax.i64(i64 %i.qt, i64 %i.qu)
  %i.qw = sub i64 %i.qv, %.2.i.i630
  %i.qx = add i64 %i.qw, -9                       ; 2 uses
  %i.qy = lshr i64 %i.qx, 3
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qx, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bz
  %.023.i.i89631 = ptrtoaddr ptr %.023.i.i89 to i64
  %i.ra = sub i64 %.2.i.i630, %.023.i.i89631
  %i.rb = add i64 %i.ra, 7
  %diff.check = icmp ult i64 %i.rb, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qz, 4611686018427387900     ; 3 uses
  %i.rc = shl i64 %n.vec, 3                       ; 2 uses
  %i.rd = getelementptr i8, ptr %.023.i.i89, i64 %i.rc
  %i.re = getelementptr i8, ptr %.0.i35.i, i64 %i.rc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.i.i89, i64 %i.rf ; 2 uses
  %next.gep632 = getelementptr i8, ptr %.0.i35.i, i64 %i.rf ; 2 uses
  %i.rg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load633 = load <2 x i64>, ptr %i.rg, align 1
  %i.rh = getelementptr i8, ptr %next.gep632, i64 16
  store <2 x i64> %wide.load, ptr %next.gep632, align 1
  store <2 x i64> %wide.load633, ptr %i.rh, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ri = icmp eq i64 %index.next, %n.vec
  br i1 %i.ri, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qz, %n.vec
  br i1 %cmp.n, label %.backedge.i75.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bz, %middle.block
  %.09.i.i.i90.ph = phi ptr [ %.023.i.i89, %vector.memcheck ], [ %.023.i.i89, %bb.bz ], [ %i.rd, %middle.block ]
  %.0.i.i.i91.ph = phi ptr [ %.0.i35.i, %vector.memcheck ], [ %.0.i35.i, %bb.bz ], [ %i.re, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i90 = phi ptr [ %i.rl, %scalar.ph ], [ %.09.i.i.i90.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i.i.i91 = phi ptr [ %i.rk, %scalar.ph ], [ %.0.i.i.i91.ph, %scalar.ph.preheader ] ; 2 uses
  %i.rj = load i64, ptr %.09.i.i.i90, align 1
  store i64 %i.rj, ptr %.0.i.i.i91, align 1
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.09.i.i.i90, i64 8
  %i.rm = icmp ult ptr %i.rk, %i.pr
  br i1 %i.rm, label %scalar.ph, label %.backedge.i75.backedge, !llvm.loop !232

bb.ca:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.sroa.9.0.i.i78 = phi i32 [ %.sroa.0.0.isplat.i.i88, %bb.bt ], [ %.sroa.0.2.insert.insert.i.i87, %bb.bu ], [ %.sroa.0.0.copyload2.i.i77, %bb.bv ] ; 5 uses
  store i32 %.sroa.9.0.i.i78, ptr %.2.i.i, align 1
  %.sroa.9.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  store i32 %.sroa.9.0.i.i78, ptr %.sroa.9.0..sroa_idx.i.i79, align 1
  %i.rn = icmp samesign ugt i64 %.2374.i.i74, 8
  br i1 %i.rn, label %.lr.ph.preheader.i80, label %.backedge.i75.backedge

.lr.ph.preheader.i80:                             ; preds = %bb.ca
  %.0.i34187.i = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8 ; 4 uses
  %i.ro = add i64 %.2374.i.i74, %.2.i.i630
  %i.rp = add i64 %.2.i.i630, 16
  %i.rq = tail call i64 @llvm.umax.i64(i64 %i.ro, i64 %i.rp)
  %i.rr = sub i64 %i.rq, %.2.i.i630
  %i.rs = add i64 %i.rr, -9                       ; 2 uses
  %i.rt = lshr i64 %i.rs, 3
  %i.ru = add nuw nsw i64 %i.rt, 1                ; 2 uses
  %min.iters.check636 = icmp ult i64 %i.rs, 24
  br i1 %min.iters.check636, label %.lr.ph.i81.preheader, label %vector.ph637

vector.ph637:                                     ; preds = %.lr.ph.preheader.i80
  %n.vec639 = and i64 %i.ru, 4611686018427387900  ; 3 uses
  %i.rv = shl i64 %n.vec639, 3                    ; 2 uses
  %i.rw = getelementptr i8, ptr %.0.i34187.i, i64 %i.rv
  %i.rx = getelementptr i8, ptr %.2.i.i, i64 %i.rv
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i.i78, i64 0
  %i.ry = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph637
  %index641 = phi i64 [ 0, %vector.ph637 ], [ %index.next645, %vector.body640 ] ; 2 uses
  %i.rz = shl i64 %index641, 3                    ; 2 uses
  %next.gep642 = getelementptr i8, ptr %.0.i34187.i, i64 %i.rz
  %i.sa = getelementptr i8, ptr %.0.i34187.i, i64 %i.rz
  %next.gep643 = getelementptr i8, ptr %i.sa, i64 16
  store <4 x i32> %i.ry, ptr %next.gep642, align 1
  store <4 x i32> %i.ry, ptr %next.gep643, align 1
  %index.next645 = add nuw i64 %index641, 4       ; 2 uses
  %i.sb = icmp eq i64 %index.next645, %n.vec639
  br i1 %i.sb, label %middle.block646, label %vector.body640, !llvm.loop !233

middle.block646:                                  ; preds = %vector.body640
  %cmp.n647 = icmp eq i64 %i.ru, %n.vec639
  br i1 %cmp.n647, label %.backedge.i75.backedge, label %.lr.ph.i81.preheader

.backedge.i75.backedge:                           ; preds = %.preheader132.i, %.lr.ph.i81, %scalar.ph, %middle.block646, %middle.block, %bb.ca, %bb.bq
  %.0.i31.be = phi ptr [ %i.ok, %bb.bq ], [ %.9.i73, %middle.block ], [ %.9.i73, %bb.ca ], [ %.9.i73, %middle.block646 ], [ %.9.i73, %scalar.ph ], [ %.9.i73, %.lr.ph.i81 ], [ %.9.i73, %.preheader132.i ]
  %.0358.i.i.be = phi ptr [ %i.pg, %bb.bq ], [ %i.pr, %middle.block ], [ %i.pr, %bb.ca ], [ %i.pr, %middle.block646 ], [ %i.pr, %scalar.ph ], [ %i.pr, %.lr.ph.i81 ], [ %i.pr, %.preheader132.i ]
  br label %.backedge.i75

.lr.ph.i81.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block646
  %.0.i34189.i.ph = phi ptr [ %.0.i34187.i, %.lr.ph.preheader.i80 ], [ %i.rw, %middle.block646 ]
  %.pn.i188.i.ph = phi ptr [ %.2.i.i, %.lr.ph.preheader.i80 ], [ %i.rx, %middle.block646 ]
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %.0.i34189.i = phi ptr [ %.0.i34.i83, %.lr.ph.i81 ], [ %.0.i34189.i.ph, %.lr.ph.i81.preheader ] ; 3 uses
  %.pn.i188.i = phi ptr [ %.0.i34189.i, %.lr.ph.i81 ], [ %.pn.i188.i.ph, %.lr.ph.i81.preheader ]
  store i32 %.sroa.9.0.i.i78, ptr %.0.i34189.i, align 1
  %.sroa.9.0..sroa_idx3.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 12
  store i32 %.sroa.9.0.i.i78, ptr %.sroa.9.0..sroa_idx3.i.i82, align 1
  %.0.i34.i83 = getelementptr inbounds nuw i8, ptr %.0.i34189.i, i64 8 ; 2 uses
  %i.sc = icmp ult ptr %.0.i34.i83, %i.pr
  br i1 %i.sc, label %.lr.ph.i81, label %.backedge.i75.backedge, !llvm.loop !234

.preheader132.i:                                  ; preds = %bb.br, %.preheader132.i
  %.011.i31.i = phi ptr [ %i.sg, %.preheader132.i ], [ %i.om, %bb.br ] ; 3 uses
  %.0.i32.i = phi ptr [ %i.sf, %.preheader132.i ], [ %.2.i.i, %bb.br ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i32.i, ptr noundef nonnull align 1 dereferenceable(16) %.011.i31.i, i64 16, i1 false)
  %i.sd = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %.011.i31.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sd, ptr noundef nonnull align 1 dereferenceable(16) %i.se, i64 16, i1 false)
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 32 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.011.i31.i, i64 32
  %i.sh = icmp ult ptr %i.sf, %i.pr
  br i1 %i.sh, label %.preheader132.i, label %.backedge.i75.backedge, !llvm.loop !85

.lr.ph192.i:                                      ; preds = %.preheader129.i, %bb.cc
  %.in.i41 = phi i32 [ %i.tk, %bb.cc ], [ %i.zn, %.preheader129.i ]
  %i.si = phi i32 [ %i.tj, %bb.cc ], [ %i.zm, %.preheader129.i ] ; 2 uses
  %i.sj = phi ptr [ %i.th, %bb.cc ], [ %i.zk, %.preheader129.i ] ; 4 uses
  %.6.i191.i = phi ptr [ %i.tg, %bb.cc ], [ %.6.i.ph.i, %.preheader129.i ] ; 4 uses
  %i.sk = zext nneg i32 %.in.i41 to i64           ; 3 uses
  %i.sl = icmp ult ptr %i.sj, %i.mq
  %i.sm = icmp ule ptr %.6.i191.i, %i.mr
  %i.sn = and i1 %i.sl, %i.sm
  br i1 %i.sn, label %bb.cb, label %LZ4_wildCopy32.exit.i42, !prof !29

bb.cb:                                            ; preds = %.lr.ph192.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6.i191.i, ptr noundef nonnull align 1 dereferenceable(16) %i.sj, i64 16, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %.6.i191.i, i64 %i.sk ; 6 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sk ; 3 uses
  %i.sq = and i32 %i.si, 15                       ; 2 uses
  %i.sr = zext nneg i32 %i.sq to i64              ; 2 uses
  %.val.i65 = load i16, ptr %i.sp, align 1, !tbaa !27 ; 2 uses
  %i.ss = zext i16 %.val.i65 to i64               ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 2 ; 3 uses
  %i.su = sub nsw i64 0, %i.ss
  %i.sv = getelementptr inbounds i8, ptr %i.so, i64 %i.su ; 5 uses
  %i.sw = icmp eq i32 %i.sq, 15
  %i.sx = icmp ult i16 %.val.i65, 8
  %or.cond3.i.not123.i = select i1 %i.sw, i1 true, i1 %i.sx
  %.not442.i.i = icmp ult ptr %i.sv, %i.mj
  %or.cond118.i = select i1 %or.cond3.i.not123.i, i1 true, i1 %.not442.i.i
  br i1 %or.cond118.i, label %.loopexit130.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sy = load i64, ptr %i.sv, align 1
  store i64 %i.sy, ptr %i.so, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.tb = load i64, ptr %i.ta, align 1
  store i64 %i.tb, ptr %i.sz, align 1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.te = load i16, ptr %i.td, align 1
  store i16 %i.te, ptr %i.tc, align 1
  %i.tf = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sr
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sp, i64 3 ; 2 uses
  %i.ti = load i8, ptr %i.st, align 1, !tbaa !8
  %i.tj = zext i8 %i.ti to i32                    ; 3 uses
  %i.tk = lshr i32 %i.tj, 4                       ; 2 uses
  %cond.i.i66 = icmp eq i32 %i.tk, 15
  br i1 %cond.i.i66, label %._crit_edge.i67, label %.lr.ph192.i

._crit_edge.i67:                                  ; preds = %bb.cc, %.preheader129.i
  %.3.lcssa.i68 = phi ptr [ %.3.ph.i40, %.preheader129.i ], [ %i.st, %bb.cc ]
  %.6.i.lcssa.i = phi ptr [ %.6.i.ph.i, %.preheader129.i ], [ %i.tg, %bb.cc ] ; 2 uses
  %.lcssa153.i = phi ptr [ %i.zk, %.preheader129.i ], [ %i.th, %bb.cc ] ; 3 uses
  %.lcssa150.i = phi i32 [ %i.zm, %.preheader129.i ], [ %i.tj, %bb.cc ]
  %i.tl = getelementptr inbounds i8, ptr %i.mn, i64 -15 ; 2 uses
  %.not22.i21.i = icmp ult ptr %.lcssa153.i, %i.tl
  br i1 %.not22.i21.i, label %bb.cd, label %LZ4_wildCopy32.exit.thread.i55, !prof !29

bb.cd:                                            ; preds = %._crit_edge.i67
  %10 = getelementptr inbounds nuw i8, ptr %.3.lcssa.i68, i64 2 ; 2 uses
  %i.tm = load i8, ptr %.lcssa153.i, align 1, !tbaa !8 ; 2 uses
  %i.tn = zext i8 %i.tm to i64
  %.not23.i23.i = icmp eq i8 %i.tm, -1
  br i1 %.not23.i23.i, label %.preheader128.i, label %read_variable_length.exit25.thread99.i, !prof !20

.preheader128.i:                                  ; preds = %bb.cd, %bb.ce
  %.15.i69 = phi ptr [ %i.to, %bb.ce ], [ %10, %bb.cd ] ; 2 uses
  %.0.i24.i = phi i64 [ %i.ts, %bb.ce ], [ 255, %bb.cd ]
  %i.to = getelementptr inbounds nuw i8, ptr %.15.i69, i64 1 ; 5 uses
  %i.tp = icmp ugt ptr %i.to, %i.tl
  br i1 %i.tp, label %LZ4_wildCopy32.exit.thread.i55, label %bb.ce, !prof !20

bb.ce:                                            ; preds = %.preheader128.i
  %i.tq = load i8, ptr %.15.i69, align 1, !tbaa !8 ; 2 uses
  %i.tr = zext i8 %i.tq to i64
  %i.ts = add i64 %.0.i24.i, %i.tr                ; 3 uses
  %i.tt = icmp eq i8 %i.tq, -1
  br i1 %i.tt, label %.preheader128.i, label %read_variable_length.exit25.i, !llvm.loop !83

read_variable_length.exit25.i:                    ; preds = %bb.ce
  %i.tu = icmp eq i64 %i.ts, -1
  br i1 %i.tu, label %LZ4_wildCopy32.exit.thread.i55, label %read_variable_length.exit25.thread99.i

read_variable_length.exit25.thread99.i:           ; preds = %read_variable_length.exit25.i, %bb.cd
  %.019.i22103.i = phi i64 [ %i.ts, %read_variable_length.exit25.i ], [ %i.tn, %bb.cd ]
  %.16102.i = phi ptr [ %i.to, %read_variable_length.exit25.i ], [ %10, %bb.cd ] ; 3 uses
  %i.tv = add i64 %.019.i22103.i, 15              ; 3 uses
  %i.tw = ptrtoint ptr %.6.i.lcssa.i to i64
  %i.tx = xor i64 %i.tw, -1
  %i.ty = icmp ugt i64 %i.tv, %i.tx
  %i.tz = ptrtoint ptr %.16102.i to i64
  %i.ua = xor i64 %i.tz, -1
  %i.ub = icmp ugt i64 %i.tv, %i.ua
  %or.cond121.i = or i1 %i.ty, %i.ub
  br i1 %or.cond121.i, label %LZ4_wildCopy32.exit.thread.i55, label %LZ4_wildCopy32.exit.i42, !prof !84

LZ4_wildCopy32.exit.i42:                          ; preds = %bb.bi, %bb.bh, %.lr.ph192.i, %read_variable_length.exit25.thread99.i
  %.4.i43 = phi ptr [ %.16102.i, %read_variable_length.exit25.thread99.i ], [ %i.sj, %.lr.ph192.i ], [ %i.nc, %bb.bi ], [ %.1270.i, %bb.bh ] ; 10 uses
  %.5377.i.i44 = phi i64 [ %i.tv, %read_variable_length.exit25.thread99.i ], [ %i.sk, %.lr.ph192.i ], [ %i.ng, %bb.bi ], [ %i.nr, %bb.bh ] ; 5 uses
  %.0371.i.i45 = phi i32 [ %.lcssa150.i, %read_variable_length.exit25.thread99.i ], [ %i.si, %.lr.ph192.i ], [ %i.ne, %bb.bh ], [ %i.ne, %bb.bi ]
  %.7.i.i = phi ptr [ %.6.i.lcssa.i, %read_variable_length.exit25.thread99.i ], [ %.6.i191.i, %.lr.ph192.i ], [ %.0358.i.i, %bb.bh ], [ %.0358.i.i, %bb.bi ] ; 11 uses
  %.7.i.i651 = ptrtoaddr ptr %.7.i.i to i64       ; 4 uses
  %.4.i43652 = ptrtoaddr ptr %.4.i43 to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 %.5377.i.i44 ; 5 uses
  %i.ud = getelementptr inbounds i8, ptr %i.mp, i64 -12
  %i.ue = icmp ugt ptr %i.uc, %i.ud
  br i1 %i.ue, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %LZ4_wildCopy32.exit.i42
  %i.uf = getelementptr inbounds nuw i8, ptr %.4.i43, i64 %.5377.i.i44 ; 3 uses
  %i.ug = getelementptr inbounds i8, ptr %i.mn, i64 -8
  %i.uh = icmp ugt ptr %i.uf, %i.ug
  br i1 %i.uh, label %bb.cg, label %.preheader127.i.preheader

.preheader127.i.preheader:                        ; preds = %bb.cf
  %i.ui = add nuw i64 %.5377.i.i44, %.7.i.i651
  %i.uj = add i64 %.7.i.i651, 8
  %i.uk = tail call i64 @llvm.umax.i64(i64 %i.ui, i64 %i.uj)
  %i.ul = xor i64 %.7.i.i651, -1
  %i.um = add i64 %i.uk, %i.ul                    ; 2 uses
  %i.un = lshr i64 %i.um, 3
  %i.uo = add nuw nsw i64 %i.un, 1                ; 2 uses
  %min.iters.check655 = icmp ult i64 %i.um, 72
  %i.up = sub i64 %.4.i43652, %.7.i.i651
  %diff.check653 = icmp ugt i64 %i.up, -32
  %or.cond834 = select i1 %min.iters.check655, i1 true, i1 %diff.check653
  br i1 %or.cond834, label %.preheader127.i.preheader892, label %vector.ph656

vector.ph656:                                     ; preds = %.preheader127.i.preheader
  %n.vec658 = and i64 %i.uo, 4611686018427387900  ; 3 uses
  %i.uq = shl i64 %n.vec658, 3                    ; 2 uses
  %i.ur = getelementptr i8, ptr %.4.i43, i64 %i.uq
  %i.us = getelementptr i8, ptr %.7.i.i, i64 %i.uq
  br label %vector.body659

vector.body659:                                   ; preds = %vector.body659, %vector.ph656
  %index660 = phi i64 [ 0, %vector.ph656 ], [ %index.next665, %vector.body659 ] ; 2 uses
  %i.ut = shl i64 %index660, 3                    ; 2 uses
  %next.gep661 = getelementptr i8, ptr %.4.i43, i64 %i.ut ; 2 uses
  %next.gep662 = getelementptr i8, ptr %.7.i.i, i64 %i.ut ; 2 uses
  %i.uu = getelementptr i8, ptr %next.gep661, i64 16
  %wide.load663 = load <2 x i64>, ptr %next.gep661, align 1
  %wide.load664 = load <2 x i64>, ptr %i.uu, align 1
  %i.uv = getelementptr i8, ptr %next.gep662, i64 16
  store <2 x i64> %wide.load663, ptr %next.gep662, align 1
  store <2 x i64> %wide.load664, ptr %i.uv, align 1
  %index.next665 = add nuw i64 %index660, 4       ; 2 uses
  %i.uw = icmp eq i64 %index.next665, %n.vec658
  br i1 %i.uw, label %middle.block666, label %vector.body659, !llvm.loop !235

middle.block666:                                  ; preds = %vector.body659
  %cmp.n667 = icmp eq i64 %i.uo, %n.vec658
  br i1 %cmp.n667, label %LZ4_wildCopy8.exit15.i, label %.preheader127.i.preheader892

.preheader127.i.preheader892:                     ; preds = %.preheader127.i.preheader, %middle.block666
  %.09.i13.i.ph = phi ptr [ %.4.i43, %.preheader127.i.preheader ], [ %i.ur, %middle.block666 ]
  %.0.i14.i.ph = phi ptr [ %.7.i.i, %.preheader127.i.preheader ], [ %i.us, %middle.block666 ]
  br label %.preheader127.i

bb.cg:                                            ; preds = %bb.cf, %LZ4_wildCopy32.exit.i42
  %i.ux = getelementptr inbounds nuw i8, ptr %.4.i43, i64 %.5377.i.i44
  %i.uy = icmp ugt ptr %i.ux, %i.mn               ; 2 uses
  %i.uz = ptrtoint ptr %i.mn to i64
  %i.va = ptrtoint ptr %.4.i43 to i64
  %i.vb = sub i64 %i.uz, %i.va                    ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 %i.vb
  %.0360.i.i60 = select i1 %i.uy, ptr %i.vc, ptr %i.uc ; 2 uses
  %i.vd = icmp ugt ptr %.0360.i.i60, %i.mp
  br i1 %i.vd, label %.thread110.i, label %bb.ch

.thread110.i:                                     ; preds = %bb.cg
  %i.ve = ptrtoint ptr %.7.i.i to i64
  %i.vf = sub i64 %i.mu, %i.ve                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i.i, ptr nonnull align 1 %.4.i43, i64 %i.vf, i1 false)
  %i.vg = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 %i.vf
  br label %bb.cu

bb.ch:                                            ; preds = %bb.cg
  %.6378.i.i61 = select i1 %i.uy, i64 %i.vb, i64 %.5377.i.i44 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7.i.i, ptr nonnull align 1 %.4.i43, i64 %.6378.i.i61, i1 false)
  %i.vh = getelementptr inbounds nuw i8, ptr %.4.i43, i64 %.6378.i.i61 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 %.6378.i.i61 ; 2 uses
  %i.vj = icmp ne ptr %.0360.i.i60, %i.mp
  %i.vk = getelementptr inbounds i8, ptr %i.mn, i64 -2
  %.not441.i.i62 = icmp ult ptr %i.vh, %i.vk
  %or.cond459.i.i63 = select i1 %i.vj, i1 %.not441.i.i62, i1 false
  br i1 %or.cond459.i.i63, label %LZ4_wildCopy8.exit15.i, label %bb.cu

.preheader127.i:                                  ; preds = %.preheader127.i.preheader892, %.preheader127.i
  %.09.i13.i = phi ptr [ %i.vn, %.preheader127.i ], [ %.09.i13.i.ph, %.preheader127.i.preheader892 ] ; 2 uses
  %.0.i14.i = phi ptr [ %i.vm, %.preheader127.i ], [ %.0.i14.i.ph, %.preheader127.i.preheader892 ] ; 2 uses
  %i.vl = load i64, ptr %.09.i13.i, align 1
  store i64 %i.vl, ptr %.0.i14.i, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 8 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.09.i13.i, i64 8
  %i.vo = icmp ult ptr %i.vm, %i.uc
  br i1 %i.vo, label %.preheader127.i, label %LZ4_wildCopy8.exit15.i, !llvm.loop !236

LZ4_wildCopy8.exit15.i:                           ; preds = %.preheader127.i, %middle.block666, %bb.ch
  %.5.i46 = phi ptr [ %i.vh, %bb.ch ], [ %i.uf, %middle.block666 ], [ %i.uf, %.preheader127.i ] ; 2 uses
  %.8.i.i = phi ptr [ %i.vi, %bb.ch ], [ %i.uc, %middle.block666 ], [ %i.uc, %.preheader127.i ] ; 2 uses
  %.val36.i47 = load i16, ptr %.5.i46, align 1, !tbaa !27
  %i.vp = zext i16 %.val36.i47 to i64             ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.5.i46, i64 2
  %i.vr = sub nsw i64 0, %i.vp
  %i.vs = getelementptr inbounds i8, ptr %.8.i.i, i64 %i.vr
  %i.vt = and i32 %.0371.i.i45, 15
  %i.vu = zext nneg i32 %i.vt to i64
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %bb.cb, %LZ4_wildCopy8.exit15.i
  %.6.i48 = phi ptr [ %i.vq, %LZ4_wildCopy8.exit15.i ], [ %i.st, %bb.cb ] ; 3 uses
  %.8380.i.i49 = phi i64 [ %i.vu, %LZ4_wildCopy8.exit15.i ], [ %i.sr, %bb.cb ] ; 2 uses
  %.0369.i.i50 = phi i64 [ %i.vp, %LZ4_wildCopy8.exit15.i ], [ %i.ss, %bb.cb ]
  %.0362.i.i = phi ptr [ %i.vs, %LZ4_wildCopy8.exit15.i ], [ %i.sv, %bb.cb ]
  %.9.i.i = phi ptr [ %.8.i.i, %LZ4_wildCopy8.exit15.i ], [ %i.so, %bb.cb ] ; 2 uses
  %i.vv = icmp eq i64 %.8380.i.i49, 15
  br i1 %i.vv, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %.loopexit130.i
  %i.vw = getelementptr inbounds i8, ptr %i.mn, i64 -4 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.6.i48, i64 1 ; 4 uses
  %i.vy = icmp ugt ptr %i.vx, %i.vw
  br i1 %i.vy, label %LZ4_wildCopy32.exit.thread.i55, label %bb.cj, !prof !20

bb.cj:                                            ; preds = %bb.ci
  %i.vz = load i8, ptr %.6.i48, align 1, !tbaa !8 ; 2 uses
  %i.wa = zext i8 %i.vz to i64
  %.not23.i26.i = icmp eq i8 %i.vz, -1
  br i1 %.not23.i26.i, label %.preheader126.i, label %read_variable_length.exit29.i, !prof !20

.preheader126.i:                                  ; preds = %bb.cj, %bb.ck
  %.17.i59 = phi ptr [ %i.wb, %bb.ck ], [ %i.vx, %bb.cj ] ; 2 uses
  %.0.i28.i = phi i64 [ %i.wf, %bb.ck ], [ 255, %bb.cj ]
  %i.wb = getelementptr inbounds nuw i8, ptr %.17.i59, i64 1 ; 4 uses
  %i.wc = icmp ugt ptr %i.wb, %i.vw
  br i1 %i.wc, label %LZ4_wildCopy32.exit.thread.i55, label %bb.ck, !prof !20

bb.ck:                                            ; preds = %.preheader126.i
  %i.wd = load i8, ptr %.17.i59, align 1, !tbaa !8 ; 2 uses
  %i.we = zext i8 %i.wd to i64
  %i.wf = add i64 %.0.i28.i, %i.we                ; 2 uses
  %i.wg = icmp eq i8 %i.wd, -1
  br i1 %i.wg, label %.preheader126.i, label %read_variable_length.exit29.i, !llvm.loop !83

read_variable_length.exit29.i:                    ; preds = %bb.ck, %bb.cj
  %.18.i53 = phi ptr [ %i.vx, %bb.cj ], [ %i.wb, %bb.ck ] ; 2 uses
  %.019.i27.i = phi i64 [ %i.wa, %bb.cj ], [ %i.wf, %bb.ck ] ; 2 uses
  %i.wh = icmp ne i64 %.019.i27.i, -1             ; 2 uses
  %i.wi = add i64 %.019.i27.i, 15                 ; 2 uses
  %i.wj = ptrtoint ptr %.9.i.i to i64
  %i.wk = xor i64 %i.wj, -1
  %i.wl = icmp ule i64 %i.wi, %i.wk
  %.not125.i = select i1 %i.wh, i1 %i.wl, i1 false
  %.9381.i.i54 = select i1 %i.wh, i64 %i.wi, i64 15
  br i1 %.not125.i, label %bb.cl, label %LZ4_wildCopy32.exit.thread.i55

bb.cl:                                            ; preds = %read_variable_length.exit29.i, %.loopexit130.i
  %.7.i51 = phi ptr [ %.18.i53, %read_variable_length.exit29.i ], [ %.6.i48, %.loopexit130.i ]
  %.10382.i.i52 = phi i64 [ %.9381.i.i54, %read_variable_length.exit29.i ], [ %.8380.i.i49, %.loopexit130.i ]
  %i.wm = add i64 %.10382.i.i52, 4
  br label %.loopexit142.i

.loopexit142.i:                                   ; preds = %bb.bo, %bb.bn, %bb.cl
  %.2.i36 = phi ptr [ %.7.i51, %bb.cl ], [ %i.ok, %bb.bo ], [ %.1487.i, %bb.bn ] ; 5 uses
  %.11383.i.i37 = phi i64 [ %i.wm, %bb.cl ], [ %i.pf, %bb.bo ], [ %i.pa, %bb.bn ] ; 4 uses
  %.1370.i.i38 = phi i64 [ %.0369.i.i50, %bb.cl ], [ %i.oj, %bb.bn ], [ %i.oj, %bb.bo ] ; 3 uses
  %.1363.i.i = phi ptr [ %.0362.i.i, %bb.cl ], [ %i.om, %bb.bn ], [ %i.om, %bb.bo ] ; 16 uses
  %.10.i.i = phi ptr [ %.9.i.i, %bb.cl ], [ %.2.i.i, %bb.bn ], [ %.2.i.i, %bb.bo ] ; 20 uses
  %.1363.i.i691 = ptrtoaddr ptr %.1363.i.i to i64
  %.10.i.i671 = ptrtoaddr ptr %.10.i.i to i64     ; 8 uses
  %i.wn = icmp ult ptr %.1363.i.i, %i.mj
  br i1 %i.wn, label %LZ4_wildCopy32.exit.thread.i55, label %bb.cm, !prof !86

bb.cm:                                            ; preds = %.loopexit142.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 %.11383.i.i37 ; 5 uses
  %i.wp = getelementptr inbounds i8, ptr %i.mp, i64 -12
  %i.wq = icmp ugt ptr %i.wo, %i.wp
  br i1 %i.wq, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.wr = ptrtoint ptr %.10.i.i to i64
  %i.ws = sub i64 %i.mu, %i.wr
  %i.wt = tail call i64 @llvm.umin.i64(i64 %.11383.i.i37, i64 %i.ws) ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 %i.wt ; 3 uses
end_hunk_12
begin_hunk_13_@LZ4_decompress_safe_partial_usingDict:bb.a

vector.ph696:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf697 = and i64 %i.wz, 28
  %n.vec698 = and i64 %i.wz, -32                  ; 5 uses
  %i.xb = getelementptr i8, ptr %.10.i.i, i64 %n.vec698
  %i.xc = getelementptr i8, ptr %.1363.i.i, i64 %n.vec698
  br label %vector.body699

vector.body699:                                   ; preds = %vector.body699, %vector.ph696
  %index700 = phi i64 [ 0, %vector.ph696 ], [ %index.next705, %vector.body699 ] ; 3 uses
  %next.gep701 = getelementptr i8, ptr %.10.i.i, i64 %index700 ; 2 uses
  %next.gep702 = getelementptr i8, ptr %.1363.i.i, i64 %index700 ; 2 uses
  %i.xd = getelementptr i8, ptr %next.gep702, i64 16
  %wide.load703 = load <16 x i8>, ptr %next.gep702, align 1, !tbaa !8
  %wide.load704 = load <16 x i8>, ptr %i.xd, align 1, !tbaa !8
  %i.xe = getelementptr i8, ptr %next.gep701, i64 16
  store <16 x i8> %wide.load703, ptr %next.gep701, align 1, !tbaa !8
  store <16 x i8> %wide.load704, ptr %i.xe, align 1, !tbaa !8
  %index.next705 = add nuw i64 %index700, 32      ; 2 uses
  %i.xf = icmp eq i64 %index.next705, %n.vec698
  br i1 %i.xf, label %middle.block706, label %vector.body699, !llvm.loop !237

middle.block706:                                  ; preds = %vector.body699
  %cmp.n707 = icmp eq i64 %i.wz, %n.vec698
  br i1 %cmp.n707, label %.loopexit.i71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block706
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf697, 0
  br i1 %min.epilog.iters.check, label %.lr.ph198.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec698, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec711 = and i64 %i.wz, -4                   ; 4 uses
  %i.xg = getelementptr i8, ptr %.10.i.i, i64 %n.vec711
  %i.xh = getelementptr i8, ptr %.1363.i.i, i64 %n.vec711
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index712 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next716, %vec.epilog.vector.body ] ; 3 uses
  %next.gep713 = getelementptr i8, ptr %.10.i.i, i64 %index712
  %next.gep714 = getelementptr i8, ptr %.1363.i.i, i64 %index712
  %wide.load715 = load <4 x i8>, ptr %next.gep714, align 1, !tbaa !8
  store <4 x i8> %wide.load715, ptr %next.gep713, align 1, !tbaa !8
  %index.next716 = add nuw i64 %index712, 4       ; 2 uses
  %i.xi = icmp eq i64 %index.next716, %n.vec711
  br i1 %i.xi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n717 = icmp eq i64 %i.wz, %n.vec711
  br i1 %cmp.n717, label %.loopexit.i71, label %.lr.ph198.i.preheader

.lr.ph198.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14.i197.i.ph = phi ptr [ %.10.i.i, %iter.check ], [ %i.xb, %vec.epilog.iter.check ], [ %i.xg, %vec.epilog.middle.block ]
  %.2364.i196.i.ph = phi ptr [ %.1363.i.i, %iter.check ], [ %i.xc, %vec.epilog.iter.check ], [ %i.xh, %vec.epilog.middle.block ]
  br label %.lr.ph198.i

.lr.ph198.i:                                      ; preds = %.lr.ph198.i.preheader, %.lr.ph198.i
  %.14.i197.i = phi ptr [ %i.xl, %.lr.ph198.i ], [ %.14.i197.i.ph, %.lr.ph198.i.preheader ] ; 2 uses
  %.2364.i196.i = phi ptr [ %i.xj, %.lr.ph198.i ], [ %.2364.i196.i.ph, %.lr.ph198.i.preheader ] ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.2364.i196.i, i64 1
  %i.xk = load i8, ptr %.2364.i196.i, align 1, !tbaa !8
  %i.xl = getelementptr inbounds nuw i8, ptr %.14.i197.i, i64 1 ; 2 uses
  store i8 %i.xk, ptr %.14.i197.i, align 1, !tbaa !8
  %i.xm = icmp ult ptr %i.xl, %i.wv
  br i1 %i.xm, label %.lr.ph198.i, label %.loopexit.i71, !llvm.loop !239

bb.co:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10.i.i, ptr align 1 %.1363.i.i, i64 %i.wt, i1 false)
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.lr.ph198.i, %middle.block706, %vec.epilog.middle.block, %bb.co, %.preheader.i72
  %i.xn = icmp eq ptr %i.wv, %i.mp
  br i1 %i.xn, label %bb.cu, label %.preheader129.i

bb.cp:                                            ; preds = %bb.cm
  %i.xo = icmp ult i64 %.1370.i.i38, 8
  br i1 %i.xo, label %bb.cq, label %bb.cr, !prof !20

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %.10.i.i, align 1, !tbaa !16
  %i.xp = load i8, ptr %.1363.i.i, align 1, !tbaa !8
  store i8 %i.xp, ptr %.10.i.i, align 1, !tbaa !8
  %i.xq = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !8
  %i.xs = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 1
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !8
  %i.xt = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 2
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !8
  %i.xv = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 2
  store i8 %i.xu, ptr %i.xv, align 1, !tbaa !8
  %i.xw = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 3
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !8
  %i.xy = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 3
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !8
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1370.i.i38
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !35
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 %i.yb ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 4
  %i.ye = load i32, ptr %i.yc, align 1
  store i32 %i.ye, ptr %i.yd, align 1
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1370.i.i38
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !35
  %i.yh = sext i32 %i.yg to i64
  %i.yi = sub nsw i64 0, %i.yh
  %i.yj = getelementptr inbounds i8, ptr %i.yc, i64 %i.yi
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.yk = load i64, ptr %.1363.i.i, align 1
  store i64 %i.yk, ptr %.10.i.i, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.1363.i.i, i64 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.3365.i.i39 = phi ptr [ %i.yj, %bb.cq ], [ %i.yl, %bb.cr ] ; 6 uses
  %.3365.i.i39672 = ptrtoaddr ptr %.3365.i.i39 to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 8
  %i.yn = load i64, ptr %.3365.i.i39, align 1
  store i64 %i.yn, ptr %i.ym, align 1
  %i.yo = icmp ugt i64 %.11383.i.i37, 16
  br i1 %i.yo, label %bb.ct, label %.preheader129.i

bb.ct:                                            ; preds = %bb.cs
  %i.yp = getelementptr inbounds nuw i8, ptr %.10.i.i, i64 16 ; 4 uses
  %i.yq = add i64 %.11383.i.i37, %.10.i.i671
  %i.yr = add i64 %.10.i.i671, 24
  %i.ys = tail call i64 @llvm.umax.i64(i64 %i.yq, i64 %i.yr)
  %i.yt = sub i64 %i.ys, %.10.i.i671
  %i.yu = add i64 %i.yt, -17                      ; 2 uses
  %i.yv = lshr i64 %i.yu, 3
  %i.yw = add nuw nsw i64 %i.yv, 1                ; 2 uses
  %min.iters.check675 = icmp ult i64 %i.yu, 104
  br i1 %min.iters.check675, label %scalar.ph674.preheader, label %vector.memcheck670

vector.memcheck670:                               ; preds = %bb.ct
  %i.yx = sub i64 %.10.i.i671, %.3365.i.i39672
  %i.yy = add i64 %i.yx, 7
  %diff.check673 = icmp ult i64 %i.yy, 31
  br i1 %diff.check673, label %scalar.ph674.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %vector.memcheck670
  %n.vec678 = and i64 %i.yw, 4611686018427387900  ; 3 uses
  %i.yz = shl i64 %n.vec678, 3                    ; 2 uses
  %i.za = getelementptr i8, ptr %.3365.i.i39, i64 %i.yz
  %i.zb = getelementptr i8, ptr %i.yp, i64 %i.yz
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph676
  %index680 = phi i64 [ 0, %vector.ph676 ], [ %index.next685, %vector.body679 ] ; 2 uses
  %i.zc = shl i64 %index680, 3                    ; 2 uses
  %next.gep681 = getelementptr i8, ptr %.3365.i.i39, i64 %i.zc ; 2 uses
  %next.gep682 = getelementptr i8, ptr %i.yp, i64 %i.zc ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %next.gep681, i64 8
  %i.ze = getelementptr inbounds nuw i8, ptr %next.gep681, i64 24
  %wide.load683 = load <2 x i64>, ptr %i.zd, align 1
  %wide.load684 = load <2 x i64>, ptr %i.ze, align 1
  %i.zf = getelementptr i8, ptr %next.gep682, i64 16
  store <2 x i64> %wide.load683, ptr %next.gep682, align 1
  store <2 x i64> %wide.load684, ptr %i.zf, align 1
  %index.next685 = add nuw i64 %index680, 4       ; 2 uses
  %i.zg = icmp eq i64 %index.next685, %n.vec678
  br i1 %i.zg, label %middle.block686, label %vector.body679, !llvm.loop !240

middle.block686:                                  ; preds = %vector.body679
  %cmp.n687 = icmp eq i64 %i.yw, %n.vec678
  br i1 %cmp.n687, label %.preheader129.i, label %scalar.ph674.preheader

scalar.ph674.preheader:                           ; preds = %vector.memcheck670, %bb.ct, %middle.block686
  %.3365.i.pn.i70.ph = phi ptr [ %.3365.i.i39, %vector.memcheck670 ], [ %.3365.i.i39, %bb.ct ], [ %i.za, %middle.block686 ]
  %.0.i11.i.ph = phi ptr [ %i.yp, %vector.memcheck670 ], [ %i.yp, %bb.ct ], [ %i.zb, %middle.block686 ]
  br label %scalar.ph674

scalar.ph674:                                     ; preds = %scalar.ph674.preheader, %scalar.ph674
  %.3365.i.pn.i70 = phi ptr [ %.09.i10.i, %scalar.ph674 ], [ %.3365.i.pn.i70.ph, %scalar.ph674.preheader ]
  %.0.i11.i = phi ptr [ %i.zi, %scalar.ph674 ], [ %.0.i11.i.ph, %scalar.ph674.preheader ] ; 2 uses
  %.09.i10.i = getelementptr inbounds nuw i8, ptr %.3365.i.pn.i70, i64 8 ; 2 uses
  %i.zh = load i64, ptr %.09.i10.i, align 1
  store i64 %i.zh, ptr %.0.i11.i, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8 ; 2 uses
  %i.zj = icmp ult ptr %i.zi, %i.wo
  br i1 %i.zj, label %scalar.ph674, label %.preheader129.i, !llvm.loop !241

.preheader129.i:                                  ; preds = %scalar.ph674, %bb.cs, %middle.block686, %.loopexit.i71, %bb.bd
  %.3.ph.i40 = phi ptr [ %0, %bb.bd ], [ %.2.i36, %.loopexit.i71 ], [ %.2.i36, %middle.block686 ], [ %.2.i36, %bb.cs ], [ %.2.i36, %scalar.ph674 ] ; 3 uses
  %.6.i.ph.i = phi ptr [ %1, %bb.bd ], [ %i.wv, %.loopexit.i71 ], [ %i.wo, %middle.block686 ], [ %i.wo, %bb.cs ], [ %i.wo, %scalar.ph674 ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.3.ph.i40, i64 1 ; 2 uses
  %i.zl = load i8, ptr %.3.ph.i40, align 1, !tbaa !8
  %i.zm = zext i8 %i.zl to i32                    ; 3 uses
  %i.zn = lshr i32 %i.zm, 4                       ; 2 uses
  %cond.i190.i = icmp eq i32 %i.zn, 15
  br i1 %cond.i190.i, label %._crit_edge.i67, label %.lr.ph192.i

bb.cu:                                            ; preds = %.loopexit.i71, %bb.ch, %.thread110.i
  %.17.i.i64 = phi ptr [ %i.mp, %.loopexit.i71 ], [ %i.vi, %bb.ch ], [ %i.vg, %.thread110.i ]
  %i.zo = ptrtoint ptr %.17.i.i64 to i64
  %i.zp = sub i64 %i.zo, %i.mv
  %i.zq = trunc i64 %i.zp to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i55:                   ; preds = %.thread92.i, %read_variable_length.exit20.thread84.i, %read_variable_length.exit20.i, %bb.bk, %read_variable_length.exit.thread67.i, %read_variable_length.exit.i100, %bb.be, %.preheader137.i, %.preheader134.i, %.preheader128.i, %.preheader126.i, %.loopexit142.i, %read_variable_length.exit29.i, %bb.ci, %read_variable_length.exit25.thread99.i, %read_variable_length.exit25.i, %._crit_edge.i67
  %.8.i56 = phi ptr [ %.2.i36, %.loopexit142.i ], [ %i.ot, %.preheader134.i ], [ %.18.i53, %read_variable_length.exit29.i ], [ %i.to, %read_variable_length.exit25.i ], [ %i.wb, %.preheader126.i ], [ %.16102.i, %read_variable_length.exit25.thread99.i ], [ %.lcssa153.i, %._crit_edge.i67 ], [ %i.to, %.preheader128.i ], [ %i.nk, %.preheader137.i ], [ %i.vx, %bb.ci ], [ %.9.i73, %.thread92.i ], [ %i.nk, %read_variable_length.exit.i100 ], [ %.1270.i, %read_variable_length.exit.thread67.i ], [ %i.nc, %bb.be ], [ %.1487.i, %read_variable_length.exit20.thread84.i ], [ %i.ot, %read_variable_length.exit20.i ], [ %i.op, %bb.bk ]
  %i.zr = ptrtoint ptr %.8.i56 to i64
  %i.zs = ptrtoint ptr %0 to i64
  %.neg.i.i57 = sub i64 %i.zs, %i.zr
  %i.zt = trunc i64 %.neg.i.i57 to i32
  %i.zu = add nsw i32 %i.zt, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.cv:                                            ; preds = %bb.c
  %i.zv = tail call i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %i.c)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_decompress_safe_partial_withPrefix64k.exit:   ; preds = %LZ4_wildCopy32.exit.thread.i55, %bb.cu, %bb.bc, %bb.bb, %bb.ba, %LZ4_wildCopy32.exit.thread.i, %bb.az, %bb.g, %bb.f, %bb.e, %bb.cv, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.zv, %bb.cv ], [ 0, %bb.f ], [ -1, %bb.e ], [ %i.mh, %LZ4_wildCopy32.exit.thread.i ], [ -1, %bb.g ], [ %i.md, %bb.az ], [ -1, %bb.ba ], [ %i.zu, %LZ4_wildCopy32.exit.thread.i55 ], [ -1, %bb.bc ], [ %i.zq, %bb.cu ], [ 0, %bb.bb ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @LZ4_decompress_fast_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %._crit_edge76, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %._crit_edge76, label %bb.j

._crit_edge76:                                    ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = sub nsw i64 0, %.pre-phi
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge76
  %.026 = phi ptr [ %0, %._crit_edge76 ], [ %.4, %._crit_edge ] ; 2 uses
  %.080.i = phi ptr [ %1, %._crit_edge76 ], [ %i.cd, %._crit_edge ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.l = load i8, ptr %.026, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = lshr i32 %i.m, 4                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 15
  br i1 %i.p, label %.preheader50, label %bb.c

.preheader50:                                     ; preds = %.thread, %.preheader50
  %i.q = phi ptr [ %i.t, %.preheader50 ], [ %i.k, %.thread ] ; 2 uses
  %.0.i15 = phi i64 [ %i.u, %.preheader50 ], [ 0, %.thread ]
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.u = add i64 %.0.i15, %i.s                    ; 2 uses
  %i.v = icmp eq i8 %i.r, -1
  br i1 %i.v, label %.preheader50, label %read_long_length_no_check.exit, !llvm.loop !112

read_long_length_no_check.exit:                   ; preds = %.preheader50
  %i.w = add i64 %i.u, 15
  br label %bb.c

bb.c:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.t, %read_long_length_no_check.exit ], [ %i.k, %.thread ] ; 2 uses
  %.086.i = phi i64 [ %i.w, %read_long_length_no_check.exit ], [ %i.o, %.thread ] ; 4 uses
  %i.x = ptrtoint ptr %.080.i to i64
  %i.y = sub i64 %i.i, %i.x
  %i.z = icmp ult i64 %i.y, %.086.i
  br i1 %i.z, label %LZ4_decompress_unsafe_generic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1, i64 %.086.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 %.086.i ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.i, %i.ac                     ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 12
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq ptr %i.aa, %i.f
  br i1 %i.af, label %bb.i, label %LZ4_decompress_unsafe_generic.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = and i32 %i.m, 15                        ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %.val = load i16, ptr %i.ab, align 1, !tbaa !27 ; 2 uses
  %i.ai = zext i16 %.val to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ak = icmp eq i32 %i.ag, 15
  br i1 %i.ak, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f, %.preheader
  %i.al = phi ptr [ %i.ao, %.preheader ], [ %i.aj, %bb.f ] ; 2 uses
  %.0.i17 = phi i64 [ %i.ap, %.preheader ], [ 0, %bb.f ]
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8   ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ap = add i64 %.0.i17, %i.an                  ; 2 uses
  %i.aq = icmp eq i8 %i.am, -1
  br i1 %i.aq, label %.preheader, label %read_long_length_no_check.exit18, !llvm.loop !112

read_long_length_no_check.exit18:                 ; preds = %.preheader
  %i.ar = add i64 %i.ap, 15
  br label %bb.g

bb.g:                                             ; preds = %read_long_length_no_check.exit18, %bb.f
  %.4 = phi ptr [ %i.ao, %read_long_length_no_check.exit18 ], [ %i.aj, %bb.f ]
  %.092.i = phi i64 [ %i.ar, %read_long_length_no_check.exit18 ], [ %i.ah, %bb.f ] ; 5 uses
  %i.as = add i64 %.092.i, 4                      ; 9 uses
  %i.at = icmp ult i64 %i.ad, %i.as
  %i.au = sub i64 %i.ac, %i.j
  %.not.i = icmp ult i64 %i.au, %i.ai
  %or.cond = select i1 %i.at, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = sub nsw i64 0, %i.ai
  %i.aw = getelementptr inbounds i8, ptr %i.aa, i64 %i.av ; 7 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge, label %iter.check138

iter.check138:                                    ; preds = %bb.h
  %min.iters.check124 = icmp ugt i64 %.092.i, -5
  %i.ax = add i16 %.val, -1
  %diff.check123 = icmp ult i16 %i.ax, 31
  %or.cond152 = select i1 %min.iters.check124, i1 true, i1 %diff.check123
  br i1 %or.cond152, label %.lr.ph.preheader, label %vector.main.loop.iter.check125

vector.main.loop.iter.check125:                   ; preds = %iter.check138
  %min.iters.check126 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check126, label %vec.epilog.ph142, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check125
  %n.mod.vf128 = and i64 %i.as, 28
  %n.vec129 = and i64 %i.as, -32                  ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph127
  %index131 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body130 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index131 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load132 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !8
  %wide.load133 = load <16 x i8>, ptr %i.az, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index131 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <16 x i8> %wide.load132, ptr %i.ba, align 1, !tbaa !8
  store <16 x i8> %wide.load133, ptr %i.bb, align 1, !tbaa !8
  %index.next134 = add nuw i64 %index131, 32      ; 2 uses
  %i.bc = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.bc, label %middle.block135, label %vector.body130, !llvm.loop !242

middle.block135:                                  ; preds = %vector.body130
  %cmp.n136 = icmp eq i64 %i.as, %n.vec129
  br i1 %cmp.n136, label %._crit_edge, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block135
  %min.epilog.iters.check141 = icmp eq i64 %n.mod.vf128, 0
  br i1 %min.epilog.iters.check141, label %.lr.ph.preheader, label %vec.epilog.ph142, !prof !96

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check125, %vec.epilog.iter.check140
  %vec.epilog.resume.val137 = phi i64 [ %n.vec129, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check125 ]
  %n.vec144 = and i64 %i.as, -4                   ; 3 uses
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph142
  %index146 = phi i64 [ %vec.epilog.resume.val137, %vec.epilog.ph142 ], [ %index.next148, %vec.epilog.vector.body145 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index146
  %wide.load147 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index146
  store <4 x i8> %wide.load147, ptr %i.be, align 1, !tbaa !8
  %index.next148 = add nuw i64 %index146, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next148, %n.vec144
  br i1 %i.bf, label %vec.epilog.middle.block149, label %vec.epilog.vector.body145, !llvm.loop !243

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body145
  %cmp.n150 = icmp eq i64 %i.as, %n.vec144
  br i1 %cmp.n150, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check138, %vec.epilog.iter.check140, %vec.epilog.middle.block149
  %.0.i63.ph = phi i64 [ 0, %iter.check138 ], [ %n.vec129, %vec.epilog.iter.check140 ], [ %n.vec144, %vec.epilog.middle.block149 ] ; 3 uses
  %i.bg = add i64 %.092.i, 3
  %i.bh = sub i64 %i.bg, %.0.i63.ph
  %xtraiter166 = and i64 %.092.i, 3               ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i63.prol = phi i64 [ %i.bl, %.lr.ph.prol ], [ %.0.i63.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter168 = phi i64 [ %prol.iter168.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i63.prol
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i63.prol
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !8
  %i.bl = add nuw i64 %.0.i63.prol, 1             ; 2 uses
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !244

end_hunk_13
