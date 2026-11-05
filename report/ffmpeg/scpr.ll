Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/scpr?download=true
inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 78
begin_hunk_0_@decode_unit3:bb.a
  store i16 %i.aph, ptr %i.api, align 2, !tbaa !58
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %i.ape
  store i16 %i.aoz, ptr %i.apj, align 2, !tbaa !58
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i173, 1 ; 2 uses
  %exitcond.not.i176 = icmp eq i64 %indvars.iv.next.i175, 64
  br i1 %exitcond.not.i176, label %._crit_edge.i177, label %bb.ee, !llvm.loop !197

._crit_edge.i177:                                 ; preds = %bb.eg
  %i.apk = zext nneg i8 %i.ame to i32
  %i.apl = shl nuw i32 1, %i.apk                  ; 4 uses
  %i.apm = lshr i32 %i.apl, 1
  %i.apn = sub i32 %i.apl, %i.apm
  %i.apo = trunc i32 %i.apl to i16
  %i.app = trunc i32 %i.apn to i16
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 1804
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge63.i, %._crit_edge.i177
  %indvars.iv72.i = phi i64 [ 0, %._crit_edge.i177 ], [ %indvars.iv.next73.i, %._crit_edge63.i ] ; 5 uses
  %.05664.i = phi i32 [ 0, %._crit_edge.i177 ], [ %i.apy, %._crit_edge63.i ] ; 3 uses
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %indvars.iv72.i ; 2 uses
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !58 ; 2 uses
  %i.aps = zext i16 %i.apr to i32
  %.not.i178 = icmp eq i16 %i.apr, 0
  br i1 %.not.i178, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i16 %i.apo, ptr %i.apq, align 2, !tbaa !58
  %i.apt = trunc i32 %.05664.i to i16
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv72.i
  store i16 %i.apt, ptr %i.apu, align 2, !tbaa !58
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv72.i
  store i16 %i.app, ptr %i.apv, align 2, !tbaa !58
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.055.i = phi i32 [ %i.aps, %bb.eh ], [ %i.apl, %bb.ei ]
  %i.apw = add nsw i32 %.05664.i, 127
  %i.apx = ashr i32 %i.apw, 7                     ; 2 uses
  %i.apy = add nsw i32 %.055.i, %.05664.i         ; 2 uses
  %i.apz = add nsw i32 %i.apy, -1
  %i.aqa = ashr i32 %i.apz, 7
  %i.aqb = add nsw i32 %i.aqa, 1                  ; 2 uses
  %i.aqc = icmp ugt i32 %i.aqb, 32
  br i1 %i.aqc, label %decode_adaptive6.exit.thread.thread209, label %.preheader.i

decode_adaptive6.exit.thread.thread209:           ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %decode_adaptive6.exit.thread.thread207

.preheader.i:                                     ; preds = %bb.ej
  %i.aqd = sub nsw i32 %i.aqb, %i.apx             ; 2 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0
  br i1 %i.aqe, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.aqf = trunc i64 %indvars.iv72.i to i8
  %i.aqg = sext i32 %i.apx to i64
  %scevgep68.i = getelementptr i8, ptr %scevgep.i, i64 %i.aqg
  %i.aqh = zext nneg i32 %i.aqd to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep68.i, i8 %i.aqf, i64 %i.aqh, i1 false), !tbaa !49
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %.lr.ph62.i, %.preheader.i
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, 256
  br i1 %exitcond75.not.i, label %decode_adaptive6.exit.thread, label %bb.eh, !llvm.loop !198

decode_adaptive6.exit.thread:                     ; preds = %._crit_edge63.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %5, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %decode_adaptive6.exit.thread.thread

decode_adaptive6.exit.thread.thread:              ; preds = %bb.du, %bb.ed, %.critedge.sink.split.i, %decode_adaptive6.exit.thread
  %i.aqi = phi i16 [ %i.ajv, %bb.du ], [ %i.ami, %bb.ed ], [ %i.aom, %.critedge.sink.split.i ], [ %i.ami, %decode_adaptive6.exit.thread ]
  %i.aqj = phi i16 [ %i.ajx, %bb.du ], [ %i.amh, %bb.ed ], [ %i.aon, %.critedge.sink.split.i ], [ %i.amh, %decode_adaptive6.exit.thread ]
  %i.aqk = zext i16 %i.aqj to i32
  %i.aql = zext i16 %i.aqi to i32
  %i.aqm = load i32, ptr %i.g, align 4, !tbaa !52 ; 2 uses
  %i.aqn = lshr i32 %i.aqm, 12
  %i.aqo = mul i32 %i.aqn, %i.aqk
  %i.aqp = and i32 %i.aqm, 4095
  %i.aqq = sub nsw i32 %i.aqp, %i.aql
  %i.aqr = add i32 %i.aqq, %i.aqo                 ; 4 uses
  %i.aqs = icmp ult i32 %i.aqr, 8388608
  br i1 %i.aqs, label %.lr.ph.i182, label %decode3.exit185

.lr.ph.i182:                                      ; preds = %decode_adaptive6.exit.thread.thread
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !48
  %i.aqv = ptrtoint ptr %i.aqu to i64             ; 2 uses
  %.promoted.i183 = load ptr, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.aqw = ptrtoint ptr %.promoted.i183 to i64
  %i.aqx = sub i64 %i.aqv, %i.aqw
  %i.aqy = trunc i64 %i.aqx to i32
  %i.aqz = icmp sgt i32 %i.aqy, 0
  br i1 %i.aqz, label %.lr.ph, label %decode3.exit185

bb.ek:                                            ; preds = %.lr.ph
  %i.ara = ptrtoint ptr %i.arf to i64
  %i.arb = sub i64 %i.aqv, %i.ara
  %i.arc = trunc i64 %i.arb to i32
  %i.ard = icmp sgt i32 %i.arc, 0
  br i1 %i.ard, label %.lr.ph, label %decode3.exit185, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i182, %bb.ek
  %.09.i184399 = phi i32 [ %i.arj, %bb.ek ], [ %i.aqr, %.lr.ph.i182 ] ; 2 uses
  %i.are = phi ptr [ %i.arf, %bb.ek ], [ %.promoted.i183, %.lr.ph.i182 ] ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 1 ; 3 uses
  store ptr %i.arf, ptr %i.f, align 8, !tbaa !50
  %i.arg = load i8, ptr %i.are, align 1, !tbaa !49
  %i.arh = zext i8 %i.arg to i32
  %i.ari = shl nuw nsw i32 %.09.i184399, 8
  %i.arj = or disjoint i32 %i.ari, %i.arh         ; 3 uses
  %i.ark = icmp ult i32 %.09.i184399, 32768
  br i1 %i.ark, label %bb.ek, label %.decode3.exit185.loopexit_crit_edge, !llvm.loop !1

.decode3.exit185.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %decode3.exit185, !llvm.loop !1

decode3.exit185:                                  ; preds = %bb.ek, %.lr.ph.i182, %.decode3.exit185.loopexit_crit_edge, %decode_adaptive6.exit.thread.thread
  %.0.lcssa.i181 = phi i32 [ %i.aqr, %decode_adaptive6.exit.thread.thread ], [ %i.arj, %.decode3.exit185.loopexit_crit_edge ], [ %i.aqr, %.lr.ph.i182 ], [ %i.arj, %bb.ek ]
  store i32 %.0.lcssa.i181, ptr %i.g, align 4, !tbaa !52
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !53
  %i.arn = add i32 %i.arm, 1                      ; 2 uses
  store i32 %i.arn, ptr %i.arl, align 4, !tbaa !53
  %i.aro = icmp eq i32 %i.arn, 131072
  br i1 %i.aro, label %bb.el, label %sync_code3.exit

bb.el:                                            ; preds = %decode3.exit185
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !48 ; 2 uses
  %i.arr = load ptr, ptr %i.f, align 8, !tbaa !47 ; 3 uses
  %i.ars = ptrtoint ptr %i.arq to i64
  %i.art = ptrtoint ptr %i.arr to i64
  %i.aru = sub i64 %i.ars, %i.art
  %i.arv = icmp slt i64 %i.aru, 4
  br i1 %i.arv, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store ptr %i.arq, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i186

bb.en:                                            ; preds = %bb.el
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  store ptr %i.arw, ptr %i.f, align 8, !tbaa !50
  %i.arx = load i32, ptr %i.arr, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i186

bytestream2_get_le32.exit.i186:                   ; preds = %bb.en, %bb.em
  %.0.i.i187 = phi i32 [ 0, %bb.em ], [ %i.arx, %bb.en ]
  store i32 %.0.i.i187, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.arl, align 8, !tbaa !53
  br label %sync_code3.exit

bb.eo:                                            ; preds = %bb.a
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 780
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.asc = getelementptr inbounds nuw i8, ptr %1, i64 1804
  %i.asd = tail call fastcc i32 @decode_value3(ptr noundef %0, i32 noundef 255, ptr noundef nonnull %i.ary, ptr noundef nonnull %i.arz, ptr noundef nonnull %i.asa, ptr noundef nonnull %i.asb, ptr noundef nonnull %i.asc, ptr noundef %3)
  br label %decode_adaptive6.exit.thread.thread207

sync_code3.exit:                                  ; preds = %bytestream2_get_le32.exit.i186, %decode3.exit185, %bytestream2_get_le32.exit.i154, %decode3.exit153, %bytestream2_get_le32.exit.i130, %decode3.exit, %bytestream2_get_le32.exit.i113, %decode_static3.exit.thread, %bytestream2_get_le32.exit.i99, %decode_static2.exit, %bytestream2_get_le32.exit.i84, %decode_static1.exit, %bytestream2_get_le32.exit.i, %bytestream2_get_byte.exit83, %bb.a
  %i.ase = load i32, ptr %3, align 4, !tbaa !42
  %i.asf = icmp ugt i32 %i.ase, 255
  %. = select i1 %i.asf, i32 -1094995529, i32 0
  br label %decode_adaptive6.exit.thread.thread207

decode_adaptive6.exit.thread.thread207:           ; preds = %bb.ea, %decode_adaptive6.exit.thread.thread209, %decode_static3.exit.thread202, %sync_code3.exit, %bb.eo
  %.074 = phi i32 [ %., %sync_code3.exit ], [ -1094995529, %decode_adaptive6.exit.thread.thread209 ], [ %i.asd, %bb.eo ], [ -1094995529, %decode_static3.exit.thread202 ], [ -1094995529, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %.074
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @decode_adaptive45(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4096) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef range(i32 4, 17) %6) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !42     ; 11 uses
  %i.b = icmp ult i32 %i.a, 2049
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.098173 = phi i32 [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.099172 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.c = shl nuw nsw i32 %.098173, 1              ; 2 uses
  %i.d = add i32 %.099172, 1                      ; 2 uses
  %i.e = icmp samesign ult i32 %.098173, 1025
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.099.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ] ; 8 uses
  %.098.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.c, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !67    ; 4 uses
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = lshr i32 %1, %.099.lcssa                 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 23 uses
  %i.k = zext i8 %i.g to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k ; 6 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !58   ; 3 uses
  %i.n = zext i16 %i.m to i32
  store i32 %i.n, ptr %5, align 4, !tbaa !42
  %i.o = sub i32 4096, %.098.lcssa
  %i.p = lshr i32 %i.o, %.099.lcssa
  %i.q = trunc i32 %i.p to i16
  %i.r = add i16 %i.m, %i.q
  store i16 %i.r, ptr %i.l, align 2, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !66   ; 3 uses
  %.not186 = icmp eq i16 %i.t, 0
  br i1 %.not186, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %._crit_edge
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %wide.trip.count = zext i16 %i.t to i64
  %i.w = load i8, ptr %i.v, align 4, !tbaa !49
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = icmp samesign ult i32 %i.i, %i.x
  br i1 %i.y, label %._crit_edge287, label %.lr.ph286

bb.b:                                             ; preds = %bb.k
  %.0100.neg = xor i32 %i.dy, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = add nsw i32 %i.ec, %.0100.neg
  %i.ad = add nsw i32 %i.ac, %i.ab                ; 2 uses
  %i.ae = icmp ult i32 %i.i, %i.ad
  br i1 %i.ae, label %._crit_edge287.loopexit, label %.lr.ph286, !llvm.loop !208

._crit_edge287.loopexit:                          ; preds = %bb.b
  %i.af = add nuw nsw i32 %i.dy, 1
  br label %._crit_edge287

._crit_edge287:                                   ; preds = %._crit_edge287.loopexit, %.lr.ph181
  %indvars.iv.lcssa = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %._crit_edge287.loopexit ] ; 8 uses
  %.1178.lcssa = phi i32 [ 0, %.lr.ph181 ], [ %i.ec, %._crit_edge287.loopexit ]
  %.0100177.lcssa = phi i32 [ 0, %.lr.ph181 ], [ %i.af, %._crit_edge287.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.lcssa
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.lcssa
  %i.ai = trunc nuw nsw i64 %indvars.iv.lcssa to i32 ; 2 uses
  %i.aj = sub nsw i32 %i.i, %.1178.lcssa
  %i.ak = add nsw i32 %i.aj, %.0100177.lcssa      ; 2 uses
  store i32 %i.ak, ptr %2, align 4, !tbaa !42
  %i.al = shl i32 %i.i, %.099.lcssa
  %i.am = trunc i32 %i.al to i16
  store i16 %i.am, ptr %4, align 2, !tbaa !58
  %i.an = shl nuw i32 1, %.099.lcssa
  %i.ao = trunc i32 %i.an to i16
  store i16 %i.ao, ptr %3, align 2, !tbaa !58
  %i.ap = load i32, ptr %5, align 4, !tbaa !42
  %i.aq = trunc i32 %i.ap to i16
  store i16 %i.aq, ptr %i.l, align 2, !tbaa !58
  %i.ar = load i16, ptr %i.s, align 4, !tbaa !66  ; 3 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp eq i32 %6, %i.as
  br i1 %i.at, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge287
  %.not.not30.i = icmp samesign ult i32 %i.ai, %i.as
  br i1 %.not.not30.i, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.au = zext i16 %i.ar to i64                   ; 10 uses
  %i.av = sub i64 %i.au, %indvars.iv.lcssa        ; 7 uses
  %min.iters.check315 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check315, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = getelementptr i8, ptr %0, i64 %indvars.iv.lcssa
  %i.ax = getelementptr i8, ptr %i.aw, i64 13     ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.au
  %i.az = getelementptr i8, ptr %i.ay, i64 13     ; 3 uses
  %i.ba = shl nuw nsw i64 %indvars.iv.lcssa, 1    ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 270    ; 3 uses
  %i.bd = shl nuw nsw i64 %i.au, 1                ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 270    ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 %indvars.iv.lcssa
  %i.bh = getelementptr i8, ptr %i.bg, i64 12     ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 %i.au
  %i.bj = getelementptr i8, ptr %i.bi, i64 12     ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 %i.ba
  %i.bl = getelementptr i8, ptr %i.bk, i64 268    ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bd
  %i.bn = getelementptr i8, ptr %i.bm, i64 268    ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bf
  %bound1 = icmp ult ptr %i.bc, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound0316 = icmp ult ptr %i.ax, %i.bj
  %bound1317 = icmp ult ptr %i.bh, %i.az
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx = or i1 %found.conflict, %found.conflict318
  %bound0319 = icmp ult ptr %i.ax, %i.bn
  %bound1320 = icmp ult ptr %i.bl, %i.az
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %conflict.rdx, %found.conflict321
  %bound0323 = icmp ult ptr %i.bc, %i.bj
  %bound1324 = icmp ult ptr %i.bh, %i.bf
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  %bound0327 = icmp ult ptr %i.bc, %i.bn
  %bound1328 = icmp ult ptr %i.bl, %i.bf
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %conflict.rdx326, %found.conflict329
  br i1 %conflict.rdx330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check331 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check331, label %vec.epilog.ph, label %vector.ph332

vector.ph332:                                     ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.av, 12
  %n.vec333 = and i64 %i.av, -16                  ; 4 uses
  %i.bp = sub i64 %i.au, %n.vec333
  br label %vector.body334

vector.body334:                                   ; preds = %vector.ph332, %vector.body334
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.bq = sub i64 %i.au, %index335                ; 3 uses
  %i.br = add nsw i64 %i.bq, -1                   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.v, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -7
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -15
  %wide.load336 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !49, !alias.scope !231
  %wide.load337 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !49, !alias.scope !231
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -7
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -15
  store <8 x i8> %wide.load336, ptr %i.bw, align 1, !tbaa !49, !alias.scope !232, !noalias !233
  store <8 x i8> %wide.load337, ptr %i.bx, align 1, !tbaa !49, !alias.scope !232, !noalias !233
  %i.by = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.br ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -14
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -30
  %wide.load338 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !58, !alias.scope !234
  %wide.load339.a = load <8 x i16>, ptr %i.ca, align 2, !tbaa !58, !alias.scope !234
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bq ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -14
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -30
  store <8 x i16> %wide.load338, ptr %i.cc, align 2, !tbaa !58, !alias.scope !235, !noalias !236
  store <8 x i16> %wide.load339.a, ptr %i.cd, align 2, !tbaa !58, !alias.scope !235, !noalias !236
  %index.next340 = add nuw i64 %index335, 16      ; 2 uses
  %i.ce = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.ce, label %middle.block341, label %vector.body334, !llvm.loop !214

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342.a = icmp eq i64 %i.av, %n.vec333
  br i1 %cmp.n342.a, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block341
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec333, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec343 = and i64 %i.av, -4                   ; 3 uses
  %i.cf = sub i64 %i.au, %n.vec343
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index344 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next347, %vec.epilog.vector.body ] ; 2 uses
  %i.cg = sub i64 %i.au, %index344                ; 3 uses
  %i.ch = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.v, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -3
  %wide.load345 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !49, !alias.scope !231
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cg
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -3
  store <4 x i8> %wide.load345, ptr %i.cl, align 1, !tbaa !49, !alias.scope !232, !noalias !233
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ch
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -6
  %wide.load346 = load <4 x i16>, ptr %i.cn, align 2, !tbaa !58, !alias.scope !234
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cg
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -6
  store <4 x i16> %wide.load346, ptr %i.cp, align 2, !tbaa !58, !alias.scope !235, !noalias !236
  %index.next347 = add nuw i64 %index344, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next347, %n.vec343
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !215

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n348 = icmp eq i64 %i.av, %n.vec343
  br i1 %cmp.n348, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block341, %vec.epilog.middle.block, %.preheader.i
  %i.cr = trunc i32 %i.ak to i8
  store i8 %i.cr, ptr %i.ag, align 1, !tbaa !49
  store i16 50, ptr %i.ah, align 2, !tbaa !58
  %i.cs = add i16 %i.ar, 1                        ; 5 uses
  store i16 %i.cs, ptr %i.s, align 4, !tbaa !66
  %.not.i = icmp samesign ugt i32 %i.ai, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.v, i64 %indvars.iv.next.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !49
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !58
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !58
  %.not.not.i = icmp sgt i64 %indvars.iv.next.i, %indvars.iv.lcssa
  br i1 %.not.not.i, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !216

bb.c:                                             ; preds = %._crit_edge.i
  %i.cz = add i8 %i.g, 1
  store i8 %i.cz, ptr %i.f, align 2, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.da = add nsw i32 %i.a, 50
  %i.db = icmp sgt i32 %i.a, 3996
  br i1 %i.db, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.dc = zext i16 %i.cs to i32
  %i.dd = sub nsw i32 256, %i.dc                  ; 3 uses
  %.not.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext i16 %i.cs to i64    ; 3 uses
  %min.iters.check351 = icmp ult i16 %i.cs, 8
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph.i.i
  %n.vec353 = and i64 %wide.trip.count.i.i, 65528 ; 3 uses
  %i.de = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dd, i64 0
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body354 ] ; 2 uses
  %vec.phi356 = phi <4 x i32> [ %i.de, %vector.ph352 ], [ %i.dn, %vector.body354 ]
  %vec.phi357 = phi <4 x i32> [ zeroinitializer, %vector.ph352 ], [ %i.do, %vector.body354 ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index355 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %wide.load358 = load <4 x i16>, ptr %i.df, align 2, !tbaa !58 ; 2 uses
  %wide.load359 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !58 ; 2 uses
  %i.dh = lshr <4 x i16> %wide.load358, splat (i16 1)
  %i.di = lshr <4 x i16> %wide.load359, splat (i16 1)
  %i.dj = sub <4 x i16> %wide.load358, %i.dh      ; 2 uses
  %i.dk = sub <4 x i16> %wide.load359, %i.di      ; 2 uses
  store <4 x i16> %i.dj, ptr %i.df, align 2, !tbaa !58
  store <4 x i16> %i.dk, ptr %i.dg, align 2, !tbaa !58
  %i.dl = zext <4 x i16> %i.dj to <4 x i32>
  %i.dm = zext <4 x i16> %i.dk to <4 x i32>
  %i.dn = add <4 x i32> %vec.phi356, %i.dl        ; 2 uses
  %i.do = add <4 x i32> %vec.phi357, %i.dm        ; 2 uses
  %index.next360 = add nuw i64 %index355, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.dp, label %middle.block361, label %vector.body354, !llvm.loop !217

middle.block361:                                  ; preds = %vector.body354
  %bin.rdx362 = add <4 x i32> %i.do, %i.dn
  %i.dq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx362) ; 2 uses
  %cmp.n363 = icmp eq i64 %n.vec353, %wide.trip.count.i.i
  br i1 %cmp.n363, label %.thread, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %.lr.ph.i.i, %middle.block361
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec353, %middle.block361 ]
  %.01213.i.i.ph = phi i32 [ %i.dd, %.lr.ph.i.i ], [ %i.dq, %middle.block361 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph350 ], [ %indvars.iv.i.i.ph, %scalar.ph350.preheader ] ; 2 uses
  %.01213.i.i = phi i32 [ %i.dw, %scalar.ph350 ], [ %.01213.i.i.ph, %scalar.ph350.preheader ]
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !58 ; 2 uses
  %i.dt = lshr i16 %i.ds, 1
  %i.du = sub i16 %i.ds, %i.dt                    ; 2 uses
  store i16 %i.du, ptr %i.dr, align 2, !tbaa !58
  %i.dv = zext i16 %i.du to i32
  %i.dw = add i32 %.01213.i.i, %i.dv              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %scalar.ph350, !llvm.loop !218

.lr.ph286:                                        ; preds = %.lr.ph181, %bb.b
  %i.dx = phi i32 [ %i.ad, %bb.b ], [ %i.x, %.lr.ph181 ] ; 2 uses
  %i.dy = phi i32 [ %i.ab, %bb.b ], [ %i.x, %.lr.ph181 ] ; 4 uses
  %indvars.iv285 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph181 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv285
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !58
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = add nuw nsw i32 %i.dx, %i.eb            ; 4 uses
  %i.ed = icmp samesign ugt i32 %i.ec, %i.i
  br i1 %i.ed, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph286
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv285 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv285 to i32
  store i32 %i.dy, ptr %2, align 4, !tbaa !42
  %i.eg = shl i32 %i.dx, %.099.lcssa
  %i.eh = trunc i32 %i.eg to i16
  store i16 %i.eh, ptr %4, align 2, !tbaa !58
  %i.ei = shl i32 %i.eb, %.099.lcssa
  %i.ej = trunc i32 %i.ei to i16
  store i16 %i.ej, ptr %3, align 2, !tbaa !58
  %i.ek = load i32, ptr %5, align 4, !tbaa !42
  %i.el = trunc i32 %i.ek to i16
  store i16 %i.el, ptr %i.l, align 2, !tbaa !58
  %i.em = load i16, ptr %i.ee, align 2, !tbaa !58
  %i.en = add i16 %i.em, 50                       ; 2 uses
  store i16 %i.en, ptr %i.ee, align 2, !tbaa !58
  %i.eo = add nsw i32 %i.a, 50
  %.not = icmp eq i32 %i.ef, %i.h
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ep = load i16, ptr %i.l, align 2, !tbaa !58
  %i.eq = icmp ugt i16 %i.en, %i.ep
  br i1 %i.eq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.er = trunc i64 %indvars.iv285 to i8
  store i8 %i.er, ptr %i.f, align 2, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.es = add i32 %i.a, -3997
  %i.et = icmp ult i32 %i.es, -4097
  br i1 %i.et, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.eu = load i16, ptr %i.s, align 4, !tbaa !66  ; 4 uses
  %i.ev = zext i16 %i.eu to i32
  %i.ew = sub nsw i32 256, %i.ev                  ; 3 uses
  %.not.i109 = icmp eq i16 %i.eu, 0
  br i1 %.not.i109, label %.thread, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.j
  %wide.trip.count.i = zext i16 %i.eu to i64      ; 3 uses
  %min.iters.check = icmp ult i16 %i.eu, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i110
  %n.vec = and i64 %wide.trip.count.i, 65528      ; 3 uses
  %i.ex = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ew, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ex, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi290 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.ey, align 2, !tbaa !58 ; 2 uses
  %wide.load291 = load <4 x i16>, ptr %i.ez, align 2, !tbaa !58 ; 2 uses
  %i.fa = lshr <4 x i16> %wide.load, splat (i16 1)
  %i.fb = lshr <4 x i16> %wide.load291, splat (i16 1)
  %i.fc = sub <4 x i16> %wide.load, %i.fa         ; 2 uses
  %i.fd = sub <4 x i16> %wide.load291, %i.fb      ; 2 uses
  store <4 x i16> %i.fc, ptr %i.ey, align 2, !tbaa !58
  store <4 x i16> %i.fd, ptr %i.ez, align 2, !tbaa !58
  %i.fe = zext <4 x i16> %i.fc to <4 x i32>
  %i.ff = zext <4 x i16> %i.fd to <4 x i32>
  %i.fg = add <4 x i32> %vec.phi, %i.fe           ; 2 uses
  %i.fh = add <4 x i32> %vec.phi290, %i.ff        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fh, %i.fg
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i110, %middle.block
  %indvars.iv.i111.ph = phi i64 [ 0, %.lr.ph.i110 ], [ %n.vec, %middle.block ]
  %.01213.i.ph = phi i32 [ %i.ew, %.lr.ph.i110 ], [ %i.fj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %scalar.ph ], [ %indvars.iv.i111.ph, %scalar.ph.preheader ] ; 2 uses
  %.01213.i = phi i32 [ %i.fp, %scalar.ph ], [ %.01213.i.ph, %scalar.ph.preheader ]
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i111 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !58 ; 2 uses
  %i.fm = lshr i16 %i.fl, 1
  %i.fn = sub i16 %i.fl, %i.fm                    ; 2 uses
  store i16 %i.fn, ptr %i.fk, align 2, !tbaa !58
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add i32 %.01213.i, %i.fo                ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %scalar.ph, !llvm.loop !220

bb.k:                                             ; preds = %.lr.ph286
  %indvars.iv.next = add nuw nsw i64 %indvars.iv285, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge182.loopexit, label %bb.b, !llvm.loop !208

._crit_edge182.loopexit:                          ; preds = %bb.k
  %i.fq = add nuw nsw i32 %i.dy, 1
  br label %._crit_edge182

._crit_edge182:                                   ; preds = %._crit_edge182.loopexit, %._crit_edge
  %.0102.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.u, %._crit_edge182.loopexit ] ; 4 uses
  %.0100.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fq, %._crit_edge182.loopexit ]
  %.1.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ec, %._crit_edge182.loopexit ]
  store i16 %i.m, ptr %i.l, align 2, !tbaa !58
  %i.fr = add nuw nsw i32 %.0100.lcssa, %i.i
  %i.fs = sub nsw i32 %i.fr, %.1.lcssa            ; 2 uses
  store i32 %i.fs, ptr %2, align 4, !tbaa !42
  %i.ft = shl i32 %i.i, %.099.lcssa
  %i.fu = trunc i32 %i.ft to i16
  store i16 %i.fu, ptr %4, align 2, !tbaa !58
  %i.fv = shl nuw i32 1, %.099.lcssa
  %i.fw = trunc i32 %i.fv to i16
  store i16 %i.fw, ptr %3, align 2, !tbaa !58
  %i.fx = load i16, ptr %i.s, align 4, !tbaa !66  ; 3 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = icmp eq i32 %6, %i.fy
  br i1 %i.fz, label %.thread, label %.preheader.i114

.preheader.i114:                                  ; preds = %._crit_edge182
  %.not.not30.i115 = icmp samesign ult i32 %.0102.lcssa, %i.fy
  br i1 %.not.not30.i115, label %iter.check428, label %.preheader.._crit_edge_crit_edge.i116

.preheader.._crit_edge_crit_edge.i116:            ; preds = %.preheader.i114
  %.pre.i117 = zext nneg i32 %.0102.lcssa to i64
  br label %._crit_edge.i118

iter.check428:                                    ; preds = %.preheader.i114
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.gb = zext i16 %i.fx to i64                   ; 10 uses
  %i.gc = zext nneg i32 %.0102.lcssa to i64       ; 8 uses
  %i.gd = sub nsw i64 %i.gb, %i.gc                ; 7 uses
  %min.iters.check394 = icmp ult i64 %i.gd, 4
  br i1 %min.iters.check394, label %vec.epilog.scalar.ph430.preheader, label %vector.memcheck395

vector.memcheck395:                               ; preds = %iter.check428
  %i.ge = getelementptr i8, ptr %0, i64 %i.gc
  %i.gf = getelementptr i8, ptr %i.ge, i64 13     ; 3 uses
  %i.gg = getelementptr i8, ptr %0, i64 %i.gb
  %i.gh = getelementptr i8, ptr %i.gg, i64 13     ; 3 uses
  %i.gi = shl nuw nsw i64 %i.gc, 1                ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 270    ; 3 uses
  %i.gl = shl nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 270    ; 3 uses
  %i.go = getelementptr i8, ptr %0, i64 %i.gc
  %i.gp = getelementptr i8, ptr %i.go, i64 12     ; 2 uses
  %i.gq = getelementptr i8, ptr %0, i64 %i.gb
  %i.gr = getelementptr i8, ptr %i.gq, i64 12     ; 2 uses
  %i.gs = getelementptr i8, ptr %0, i64 %i.gi
  %i.gt = getelementptr i8, ptr %i.gs, i64 268    ; 2 uses
  %i.gu = getelementptr i8, ptr %0, i64 %i.gl
  %i.gv = getelementptr i8, ptr %i.gu, i64 268    ; 2 uses
  %bound0396 = icmp ult ptr %i.gf, %i.gn
  %bound1397 = icmp ult ptr %i.gk, %i.gh
  %found.conflict398 = and i1 %bound0396, %bound1397
  %bound0399 = icmp ult ptr %i.gf, %i.gr
  %bound1400 = icmp ult ptr %i.gp, %i.gh
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %found.conflict398, %found.conflict401
  %bound0403 = icmp ult ptr %i.gf, %i.gv
  %bound1404 = icmp ult ptr %i.gt, %i.gh
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %i.gk, %i.gr
  %bound1408 = icmp ult ptr %i.gp, %i.gn
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  %bound0411 = icmp ult ptr %i.gk, %i.gv
  %bound1412 = icmp ult ptr %i.gt, %i.gn
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  br i1 %conflict.rdx414, label %vec.epilog.scalar.ph430.preheader, label %vector.main.loop.iter.check415

vector.main.loop.iter.check415:                   ; preds = %vector.memcheck395
  %min.iters.check416 = icmp ult i64 %i.gd, 16
  br i1 %min.iters.check416, label %vec.epilog.ph432, label %vector.ph417

vector.ph417:                                     ; preds = %vector.main.loop.iter.check415
  %i.gw = and i64 %i.gd, 12
  %n.vec418 = and i64 %i.gd, -16                  ; 4 uses
  %i.gx = sub nsw i64 %i.gb, %n.vec418
  br label %vector.body419

vector.body419:                                   ; preds = %vector.ph417, %vector.body419
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next425, %vector.body419 ] ; 2 uses
  %i.gy = sub i64 %i.gb, %index420                ; 3 uses
  %i.gz = add nsw i64 %i.gy, -1                   ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.ga, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -7
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -15
  %wide.load421 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !49, !alias.scope !237
  %wide.load422 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !49, !alias.scope !237
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gy ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -7
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -15
  store <8 x i8> %wide.load421, ptr %i.he, align 1, !tbaa !49, !alias.scope !238, !noalias !239
  store <8 x i8> %wide.load422, ptr %i.hf, align 1, !tbaa !49, !alias.scope !238, !noalias !239
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.gz ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -14
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 -30
  %wide.load423 = load <8 x i16>, ptr %i.hh, align 2, !tbaa !58, !alias.scope !240
  %wide.load424 = load <8 x i16>, ptr %i.hi, align 2, !tbaa !58, !alias.scope !240
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gy ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -14
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -30
  store <8 x i16> %wide.load423, ptr %i.hk, align 2, !tbaa !58, !alias.scope !241, !noalias !242
  store <8 x i16> %wide.load424, ptr %i.hl, align 2, !tbaa !58, !alias.scope !241, !noalias !242
  %index.next425 = add nuw i64 %index420, 16      ; 2 uses
  %i.hm = icmp eq i64 %index.next425, %n.vec418
  br i1 %i.hm, label %middle.block426, label %vector.body419, !llvm.loop !226

middle.block426:                                  ; preds = %vector.body419
  %cmp.n427 = icmp eq i64 %i.gd, %n.vec418
  br i1 %cmp.n427, label %._crit_edge.i118, label %vec.epilog.iter.check429

vec.epilog.iter.check429:                         ; preds = %middle.block426
  %min.epilog.iters.check431 = icmp eq i64 %i.gw, 0
  br i1 %min.epilog.iters.check431, label %vec.epilog.scalar.ph430.preheader, label %vec.epilog.ph432, !prof !68

vec.epilog.ph432:                                 ; preds = %vector.main.loop.iter.check415, %vec.epilog.iter.check429
  %vec.epilog.resume.val433 = phi i64 [ %n.vec418, %vec.epilog.iter.check429 ], [ 0, %vector.main.loop.iter.check415 ]
  %n.vec434 = and i64 %i.gd, -4                   ; 3 uses
  %i.hn = sub nsw i64 %i.gb, %n.vec434
  br label %vec.epilog.vector.body435

vec.epilog.vector.body435:                        ; preds = %vec.epilog.vector.body435, %vec.epilog.ph432
  %index436 = phi i64 [ %vec.epilog.resume.val433, %vec.epilog.ph432 ], [ %index.next439, %vec.epilog.vector.body435 ] ; 2 uses
  %i.ho = sub i64 %i.gb, %index436                ; 3 uses
  %i.hp = add nsw i64 %i.ho, -1                   ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.ga, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -3
  %wide.load437 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !49, !alias.scope !237
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ho
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -3
  store <4 x i8> %wide.load437, ptr %i.ht, align 1, !tbaa !49, !alias.scope !238, !noalias !239
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.hp
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -6
  %wide.load438 = load <4 x i16>, ptr %i.hv, align 2, !tbaa !58, !alias.scope !240
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ho
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -6
  store <4 x i16> %wide.load438, ptr %i.hx, align 2, !tbaa !58, !alias.scope !241, !noalias !242
  %index.next439 = add nuw i64 %index436, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.hy, label %vec.epilog.middle.block440, label %vec.epilog.vector.body435, !llvm.loop !227

vec.epilog.middle.block440:                       ; preds = %vec.epilog.vector.body435
  %cmp.n441 = icmp eq i64 %i.gd, %n.vec434
  br i1 %cmp.n441, label %._crit_edge.i118, label %vec.epilog.scalar.ph430.preheader

vec.epilog.scalar.ph430.preheader:                ; preds = %iter.check428, %vector.memcheck395, %vec.epilog.iter.check429, %vec.epilog.middle.block440
  %indvars.iv.i132.ph = phi i64 [ %i.gb, %iter.check428 ], [ %i.gb, %vector.memcheck395 ], [ %i.gx, %vec.epilog.iter.check429 ], [ %i.hn, %vec.epilog.middle.block440 ]
  br label %vec.epilog.scalar.ph430

._crit_edge.i118:                                 ; preds = %vec.epilog.scalar.ph430, %middle.block426, %vec.epilog.middle.block440, %.preheader.._crit_edge_crit_edge.i116
  %.pre-phi.i119 = phi i64 [ %.pre.i117, %.preheader.._crit_edge_crit_edge.i116 ], [ %i.gc, %middle.block426 ], [ %i.gc, %vec.epilog.middle.block440 ], [ %i.gc, %vec.epilog.scalar.ph430 ] ; 2 uses
  %i.hz = trunc i32 %i.fs to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.pre-phi.i119
  store i8 %i.hz, ptr %i.ib, align 1, !tbaa !49
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.pre-phi.i119
  store i16 50, ptr %i.ic, align 2, !tbaa !58
  %i.id = add i16 %i.fx, 1                        ; 5 uses
  store i16 %i.id, ptr %i.s, align 4, !tbaa !66
  %.not.i120 = icmp samesign ugt i32 %.0102.lcssa, %i.h
  br i1 %.not.i120, label %bb.m, label %bb.l

vec.epilog.scalar.ph430:                          ; preds = %vec.epilog.scalar.ph430.preheader, %vec.epilog.scalar.ph430
  %indvars.iv.i132 = phi i64 [ %indvars.iv.next.i133, %vec.epilog.scalar.ph430 ], [ %indvars.iv.i132.ph, %vec.epilog.scalar.ph430.preheader ] ; 3 uses
  %indvars.iv.next.i133 = add nsw i64 %indvars.iv.i132, -1 ; 4 uses
  %i.ie = getelementptr inbounds i8, ptr %i.ga, i64 %indvars.iv.next.i133
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !49
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.i132
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !49
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next.i133
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !58
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i132
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !58
  %.not.not.i134 = icmp sgt i64 %indvars.iv.next.i133, %i.gc
  br i1 %.not.not.i134, label %vec.epilog.scalar.ph430, label %._crit_edge.i118, !llvm.loop !228

bb.l:                                             ; preds = %._crit_edge.i118
  %i.ik = add i8 %i.g, 1
  store i8 %i.ik, ptr %i.f, align 2, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i118
  %i.il = add nsw i32 %i.a, 50
  %i.im = icmp sgt i32 %i.a, 3996
  br i1 %i.im, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.in = zext i16 %i.id to i32
  %i.io = sub nsw i32 256, %i.in                  ; 3 uses
  %.not.i.i122 = icmp eq i16 %i.id, 0
  br i1 %.not.i.i122, label %.thread, label %.lr.ph.i.i123

.lr.ph.i.i123:                                    ; preds = %bb.n
  %wide.trip.count.i.i124 = zext i16 %i.id to i64 ; 3 uses
  %min.iters.check444 = icmp ult i16 %i.id, 8
  br i1 %min.iters.check444, label %scalar.ph443.preheader, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph.i.i123
  %n.vec446 = and i64 %wide.trip.count.i.i124, 65528 ; 3 uses
  %i.ip = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.io, i64 0
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next453, %vector.body447 ] ; 2 uses
  %vec.phi449 = phi <4 x i32> [ %i.ip, %vector.ph445 ], [ %i.iy, %vector.body447 ]
  %vec.phi450 = phi <4 x i32> [ zeroinitializer, %vector.ph445 ], [ %i.iz, %vector.body447 ]
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index448 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %wide.load451 = load <4 x i16>, ptr %i.iq, align 2, !tbaa !58 ; 2 uses
  %wide.load452 = load <4 x i16>, ptr %i.ir, align 2, !tbaa !58 ; 2 uses
  %i.is = lshr <4 x i16> %wide.load451, splat (i16 1)
  %i.it = lshr <4 x i16> %wide.load452, splat (i16 1)
  %i.iu = sub <4 x i16> %wide.load451, %i.is      ; 2 uses
  %i.iv = sub <4 x i16> %wide.load452, %i.it      ; 2 uses
  store <4 x i16> %i.iu, ptr %i.iq, align 2, !tbaa !58
  store <4 x i16> %i.iv, ptr %i.ir, align 2, !tbaa !58
  %i.iw = zext <4 x i16> %i.iu to <4 x i32>
  %i.ix = zext <4 x i16> %i.iv to <4 x i32>
  %i.iy = add <4 x i32> %vec.phi449, %i.iw        ; 2 uses
  %i.iz = add <4 x i32> %vec.phi450, %i.ix        ; 2 uses
  %index.next453 = add nuw i64 %index448, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next453, %n.vec446
  br i1 %i.ja, label %middle.block454, label %vector.body447, !llvm.loop !229

middle.block454:                                  ; preds = %vector.body447
  %bin.rdx455 = add <4 x i32> %i.iz, %i.iy
  %i.jb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx455) ; 2 uses
  %cmp.n456 = icmp eq i64 %n.vec446, %wide.trip.count.i.i124
  br i1 %cmp.n456, label %.thread, label %scalar.ph443.preheader

scalar.ph443.preheader:                           ; preds = %.lr.ph.i.i123, %middle.block454
  %indvars.iv.i.i125.ph = phi i64 [ 0, %.lr.ph.i.i123 ], [ %n.vec446, %middle.block454 ]
  %.01213.i.i126.ph = phi i32 [ %i.io, %.lr.ph.i.i123 ], [ %i.jb, %middle.block454 ]
  br label %scalar.ph443

scalar.ph443:                                     ; preds = %scalar.ph443.preheader, %scalar.ph443
  %indvars.iv.i.i125 = phi i64 [ %indvars.iv.next.i.i127, %scalar.ph443 ], [ %indvars.iv.i.i125.ph, %scalar.ph443.preheader ] ; 2 uses
  %.01213.i.i126 = phi i32 [ %i.jh, %scalar.ph443 ], [ %.01213.i.i126.ph, %scalar.ph443.preheader ]
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i125 ; 2 uses
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !58 ; 2 uses
  %i.je = lshr i16 %i.jd, 1
  %i.jf = sub i16 %i.jd, %i.je                    ; 2 uses
  store i16 %i.jf, ptr %i.jc, align 2, !tbaa !58
  %i.jg = zext i16 %i.jf to i32
  %i.jh = add i32 %.01213.i.i126, %i.jg           ; 2 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i125, 1 ; 2 uses
  %exitcond.not.i.i128 = icmp eq i64 %indvars.iv.next.i.i127, %wide.trip.count.i.i124
  br i1 %exitcond.not.i.i128, label %.thread, label %scalar.ph443, !llvm.loop !230

.thread:                                          ; preds = %scalar.ph, %scalar.ph350, %scalar.ph443, %middle.block, %middle.block361, %middle.block454, %bb.m, %._crit_edge182, %bb.n, %bb.i, %bb.j, %bb.d, %._crit_edge287, %bb.e
  %.1142.sink = phi i32 [ %i.dw, %scalar.ph350 ], [ %i.jh, %scalar.ph443 ], [ %i.a, %._crit_edge287 ], [ %i.da, %bb.d ], [ %i.dd, %bb.e ], [ %i.eo, %bb.i ], [ %i.ew, %bb.j ], [ %i.a, %._crit_edge182 ], [ %i.il, %bb.m ], [ %i.io, %bb.n ], [ %i.jb, %middle.block454 ], [ %i.dq, %middle.block361 ], [ %i.fj, %middle.block ], [ %i.fp, %scalar.ph ]
  %.2105 = phi i32 [ 1, %scalar.ph350 ], [ 1, %scalar.ph443 ], [ 0, %._crit_edge287 ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %._crit_edge182 ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %middle.block454 ], [ 1, %middle.block361 ], [ 1, %middle.block ], [ 1, %scalar.ph ]
  store i32 %.1142.sink, ptr %5, align 4, !tbaa !42
  ret i32 %.2105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rescale_dec(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
vector.ph:
  %i.a = alloca [256 x i16], align 16             ; 42 uses
  %i.b = alloca [512 x i16], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !70
  %.fr82 = freeze i8 %i.d                         ; 3 uses
  %.not = icmp eq i8 %.fr82, 0                    ; 2 uses
  %i.e = zext i8 %.fr82 to i32
  %i.f = add nsw i32 %i.e, -1
  %i.g = shl nuw i32 1, %i.f
  %i.h = trunc i32 %i.g to i16
  %i.i = select i1 %.not, i16 1, i16 %i.h
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.a, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.j, align 16, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> %broadcast.splat, ptr %i.k, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.l, align 16, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> %broadcast.splat, ptr %i.m, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.n, align 16, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> %broadcast.splat, ptr %i.o, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.p, align 16, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <8 x i16> %broadcast.splat, ptr %i.q, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.r, align 16, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <8 x i16> %broadcast.splat, ptr %i.s, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.t, align 16, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <8 x i16> %broadcast.splat, ptr %i.u, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.v, align 16, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <8 x i16> %broadcast.splat, ptr %i.w, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.x, align 16, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <8 x i16> %broadcast.splat, ptr %i.y, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.z, align 16, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <8 x i16> %broadcast.splat, ptr %i.aa, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.ab, align 16, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <8 x i16> %broadcast.splat, ptr %i.ac, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 16, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.af, align 16, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.ah, align 16, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <8 x i16> %broadcast.splat, ptr %i.ai, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.aj, align 16, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.al, align 16, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <8 x i16> %broadcast.splat, ptr %i.am, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.an, align 16, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !66 ; 5 uses
  %i.aq = zext i16 %i.ap to i32
  %.not63 = icmp eq i16 %i.ap, 0                  ; 2 uses
  br i1 %.not63, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %vector.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %wide.trip.count = zext i16 %i.ap to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.at = icmp ult i16 %i.ap, 4
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next67.3, %bb.a ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.a ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv66
  %i.av = load i16, ptr %i.au, align 2, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv66
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !49
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ay
  store i16 %i.av, ptr %i.az, align 2, !tbaa !58
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next67
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next67
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !49
end_hunk_0
