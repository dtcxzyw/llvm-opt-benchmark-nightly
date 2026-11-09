Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/scpr?download=true
inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 78
begin_hunk_0_@decode_unit3:bb.a
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
  br i1 %i.y, label %._crit_edge281, label %.lr.ph280

bb.b:                                             ; preds = %bb.k
  %.0100.neg = xor i32 %i.dq, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = add nsw i32 %i.du, %.0100.neg
  %i.ad = add nsw i32 %i.ac, %i.ab                ; 2 uses
  %i.ae = icmp ult i32 %i.i, %i.ad
  br i1 %i.ae, label %._crit_edge281.loopexit, label %.lr.ph280, !llvm.loop !208

._crit_edge281.loopexit:                          ; preds = %bb.b
  %i.af = add nuw nsw i32 %i.dq, 1
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.lr.ph181
  %indvars.iv.lcssa = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %._crit_edge281.loopexit ] ; 7 uses
  %.1178.lcssa = phi i32 [ 0, %.lr.ph181 ], [ %i.du, %._crit_edge281.loopexit ]
  %.0100177.lcssa = phi i32 [ 0, %.lr.ph181 ], [ %i.af, %._crit_edge281.loopexit ]
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

.preheader.i:                                     ; preds = %._crit_edge281
  %.not.not30.i = icmp samesign ult i32 %i.ai, %i.as
  br i1 %.not.not30.i, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.au = zext i16 %i.ar to i64                   ; 9 uses
  %i.av = sub i64 %i.au, %indvars.iv.lcssa        ; 7 uses
  %min.iters.check309 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check309, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = getelementptr i8, ptr %0, i64 %indvars.iv.lcssa
  %i.ax = getelementptr i8, ptr %i.aw, i64 12
  %i.ay = getelementptr i8, ptr %0, i64 %i.au
  %i.az = getelementptr i8, ptr %i.ay, i64 13
  %i.ba = shl nuw nsw i64 %indvars.iv.lcssa, 1
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 268
  %i.bd = shl nuw nsw i64 %i.au, 1
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 270
  %bound0321 = icmp ult ptr %i.ax, %i.bf
  %bound1322 = icmp ult ptr %i.bc, %i.az
  %found.conflict323 = and i1 %bound0321, %bound1322
  br i1 %found.conflict323, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check325 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph326

vector.ph326:                                     ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %i.av, 12
  %n.vec327 = and i64 %i.av, -16                  ; 4 uses
  %i.bh = sub i64 %i.au, %n.vec327
  br label %vector.body328

vector.body328:                                   ; preds = %vector.ph326, %vector.body328
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.bi = sub i64 %i.au, %index329                ; 3 uses
  %i.bj = add nsw i64 %i.bi, -1                   ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.v, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -7
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -15
  %wide.load330 = load <8 x i8>, ptr %i.bl, align 1, !tbaa !49, !alias.scope !227, !noalias !228
  %wide.load331 = load <8 x i8>, ptr %i.bm, align 1, !tbaa !49, !alias.scope !227, !noalias !228
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bi ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -7
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -15
  store <8 x i8> %wide.load330, ptr %i.bo, align 1, !tbaa !49, !alias.scope !227, !noalias !228
  store <8 x i8> %wide.load331, ptr %i.bp, align 1, !tbaa !49, !alias.scope !227, !noalias !228
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.bj ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -14
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -30
  %wide.load332 = load <8 x i16>, ptr %i.br, align 2, !tbaa !58, !alias.scope !228
  %wide.load333 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !58, !alias.scope !228
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -14
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -30
  store <8 x i16> %wide.load332, ptr %i.bu, align 2, !tbaa !58, !alias.scope !228
  store <8 x i16> %wide.load333, ptr %i.bv, align 2, !tbaa !58, !alias.scope !228
  %index.next334 = add nuw i64 %index329, 16      ; 2 uses
  %i.bw = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.bw, label %middle.block335, label %vector.body328, !llvm.loop !212

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.av, %n.vec327
  br i1 %cmp.n336, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block335
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec327, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec337 = and i64 %i.av, -4                   ; 3 uses
  %i.bx = sub i64 %i.au, %n.vec337
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index338 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next341, %vec.epilog.vector.body ] ; 2 uses
  %i.by = sub i64 %i.au, %index338                ; 3 uses
  %i.bz = add nsw i64 %i.by, -1                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -3
  %wide.load339 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !49, !alias.scope !227, !noalias !228
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.by
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -3
  store <4 x i8> %wide.load339, ptr %i.cd, align 1, !tbaa !49, !alias.scope !227, !noalias !228
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.bz
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -6
  %wide.load340 = load <4 x i16>, ptr %i.cf, align 2, !tbaa !58, !alias.scope !228
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.by
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -6
  store <4 x i16> %wide.load340, ptr %i.ch, align 2, !tbaa !58, !alias.scope !228
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next341, %n.vec337
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.av, %n.vec337
  br i1 %cmp.n342, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block335, %vec.epilog.middle.block, %.preheader.i
  %i.cj = trunc i32 %i.ak to i8
  store i8 %i.cj, ptr %i.ag, align 1, !tbaa !49
  store i16 50, ptr %i.ah, align 2, !tbaa !58
  %i.ck = add i16 %i.ar, 1                        ; 5 uses
  store i16 %i.ck, ptr %i.s, align 4, !tbaa !66
  %.not.i = icmp samesign ugt i32 %i.ai, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.v, i64 %indvars.iv.next.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !49
  %i.co = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !58
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !58
  %.not.not.i = icmp sgt i64 %indvars.iv.next.i, %indvars.iv.lcssa
  br i1 %.not.not.i, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !214

bb.c:                                             ; preds = %._crit_edge.i
  %i.cr = add i8 %i.g, 1
  store i8 %i.cr, ptr %i.f, align 2, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.cs = add nsw i32 %i.a, 50
  %i.ct = icmp sgt i32 %i.a, 3996
  br i1 %i.ct, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.cu = zext i16 %i.ck to i32
  %i.cv = sub nsw i32 256, %i.cu                  ; 3 uses
  %.not.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext i16 %i.ck to i64    ; 3 uses
  %min.iters.check345 = icmp ult i16 %i.ck, 8
  br i1 %min.iters.check345, label %scalar.ph344.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %.lr.ph.i.i
  %n.vec347 = and i64 %wide.trip.count.i.i, 65528 ; 3 uses
  %i.cw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cv, i64 0
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %vec.phi350 = phi <4 x i32> [ %i.cw, %vector.ph346 ], [ %i.df, %vector.body348 ]
  %vec.phi351 = phi <4 x i32> [ zeroinitializer, %vector.ph346 ], [ %i.dg, %vector.body348 ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index349 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %wide.load352 = load <4 x i16>, ptr %i.cx, align 2, !tbaa !58 ; 2 uses
  %wide.load353 = load <4 x i16>, ptr %i.cy, align 2, !tbaa !58 ; 2 uses
  %i.cz = lshr <4 x i16> %wide.load352, splat (i16 1)
  %i.da = lshr <4 x i16> %wide.load353, splat (i16 1)
  %i.db = sub <4 x i16> %wide.load352, %i.cz      ; 2 uses
  %i.dc = sub <4 x i16> %wide.load353, %i.da      ; 2 uses
  store <4 x i16> %i.db, ptr %i.cx, align 2, !tbaa !58
  store <4 x i16> %i.dc, ptr %i.cy, align 2, !tbaa !58
  %i.dd = zext <4 x i16> %i.db to <4 x i32>
  %i.de = zext <4 x i16> %i.dc to <4 x i32>
  %i.df = add <4 x i32> %vec.phi350, %i.dd        ; 2 uses
  %i.dg = add <4 x i32> %vec.phi351, %i.de        ; 2 uses
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.dh, label %middle.block355, label %vector.body348, !llvm.loop !215

middle.block355:                                  ; preds = %vector.body348
  %bin.rdx356 = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx356) ; 2 uses
  %cmp.n357 = icmp eq i64 %n.vec347, %wide.trip.count.i.i
  br i1 %cmp.n357, label %.thread, label %scalar.ph344.preheader

scalar.ph344.preheader:                           ; preds = %.lr.ph.i.i, %middle.block355
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec347, %middle.block355 ]
  %.01213.i.i.ph = phi i32 [ %i.cv, %.lr.ph.i.i ], [ %i.di, %middle.block355 ]
  br label %scalar.ph344

scalar.ph344:                                     ; preds = %scalar.ph344.preheader, %scalar.ph344
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph344 ], [ %indvars.iv.i.i.ph, %scalar.ph344.preheader ] ; 2 uses
  %.01213.i.i = phi i32 [ %i.do, %scalar.ph344 ], [ %.01213.i.i.ph, %scalar.ph344.preheader ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !58 ; 2 uses
  %i.dl = lshr i16 %i.dk, 1
  %i.dm = sub i16 %i.dk, %i.dl                    ; 2 uses
  store i16 %i.dm, ptr %i.dj, align 2, !tbaa !58
  %i.dn = zext i16 %i.dm to i32
  %i.do = add i32 %.01213.i.i, %i.dn              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %scalar.ph344, !llvm.loop !216

.lr.ph280:                                        ; preds = %.lr.ph181, %bb.b
  %i.dp = phi i32 [ %i.ad, %bb.b ], [ %i.x, %.lr.ph181 ] ; 2 uses
  %i.dq = phi i32 [ %i.ab, %bb.b ], [ %i.x, %.lr.ph181 ] ; 4 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph181 ] ; 5 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv279
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !58
  %i.dt = zext i16 %i.ds to i32                   ; 2 uses
  %i.du = add nuw nsw i32 %i.dp, %i.dt            ; 4 uses
  %i.dv = icmp samesign ugt i32 %i.du, %i.i
  br i1 %i.dv, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph280
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv279 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv279 to i32
  store i32 %i.dq, ptr %2, align 4, !tbaa !42
  %i.dy = shl i32 %i.dp, %.099.lcssa
  %i.dz = trunc i32 %i.dy to i16
  store i16 %i.dz, ptr %4, align 2, !tbaa !58
  %i.ea = shl i32 %i.dt, %.099.lcssa
  %i.eb = trunc i32 %i.ea to i16
  store i16 %i.eb, ptr %3, align 2, !tbaa !58
  %i.ec = load i32, ptr %5, align 4, !tbaa !42
  %i.ed = trunc i32 %i.ec to i16
  store i16 %i.ed, ptr %i.l, align 2, !tbaa !58
  %i.ee = load i16, ptr %i.dw, align 2, !tbaa !58
  %i.ef = add i16 %i.ee, 50                       ; 2 uses
  store i16 %i.ef, ptr %i.dw, align 2, !tbaa !58
  %i.eg = add nsw i32 %i.a, 50
  %.not = icmp eq i32 %i.dx, %i.h
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = load i16, ptr %i.l, align 2, !tbaa !58
  %i.ei = icmp ugt i16 %i.ef, %i.eh
  br i1 %i.ei, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ej = trunc i64 %indvars.iv279 to i8
  store i8 %i.ej, ptr %i.f, align 2, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ek = add i32 %i.a, -3997
  %i.el = icmp ult i32 %i.ek, -4097
  br i1 %i.el, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.em = load i16, ptr %i.s, align 4, !tbaa !66  ; 4 uses
  %i.en = zext i16 %i.em to i32
  %i.eo = sub nsw i32 256, %i.en                  ; 3 uses
  %.not.i109 = icmp eq i16 %i.em, 0
  br i1 %.not.i109, label %.thread, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.j
  %wide.trip.count.i = zext i16 %i.em to i64      ; 3 uses
  %min.iters.check = icmp ult i16 %i.em, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i110
  %n.vec = and i64 %wide.trip.count.i, 65528      ; 3 uses
  %i.ep = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.eo, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ep, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi284 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.eq, align 2, !tbaa !58 ; 2 uses
  %wide.load285 = load <4 x i16>, ptr %i.er, align 2, !tbaa !58 ; 2 uses
  %i.es = lshr <4 x i16> %wide.load, splat (i16 1)
  %i.et = lshr <4 x i16> %wide.load285, splat (i16 1)
  %i.eu = sub <4 x i16> %wide.load, %i.es         ; 2 uses
  %i.ev = sub <4 x i16> %wide.load285, %i.et      ; 2 uses
  store <4 x i16> %i.eu, ptr %i.eq, align 2, !tbaa !58
  store <4 x i16> %i.ev, ptr %i.er, align 2, !tbaa !58
  %i.ew = zext <4 x i16> %i.eu to <4 x i32>
  %i.ex = zext <4 x i16> %i.ev to <4 x i32>
  %i.ey = add <4 x i32> %vec.phi, %i.ew           ; 2 uses
  %i.ez = add <4 x i32> %vec.phi284, %i.ex        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i110, %middle.block
  %indvars.iv.i111.ph = phi i64 [ 0, %.lr.ph.i110 ], [ %n.vec, %middle.block ]
  %.01213.i.ph = phi i32 [ %i.eo, %.lr.ph.i110 ], [ %i.fb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %scalar.ph ], [ %indvars.iv.i111.ph, %scalar.ph.preheader ] ; 2 uses
  %.01213.i = phi i32 [ %i.fh, %scalar.ph ], [ %.01213.i.ph, %scalar.ph.preheader ]
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i111 ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !58 ; 2 uses
  %i.fe = lshr i16 %i.fd, 1
  %i.ff = sub i16 %i.fd, %i.fe                    ; 2 uses
  store i16 %i.ff, ptr %i.fc, align 2, !tbaa !58
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add i32 %.01213.i, %i.fg                ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %scalar.ph, !llvm.loop !218

bb.k:                                             ; preds = %.lr.ph280
  %indvars.iv.next = add nuw nsw i64 %indvars.iv279, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge182.loopexit, label %bb.b, !llvm.loop !208

._crit_edge182.loopexit:                          ; preds = %bb.k
  %i.fi = add nuw nsw i32 %i.dq, 1
  br label %._crit_edge182

._crit_edge182:                                   ; preds = %._crit_edge182.loopexit, %._crit_edge
  %.0102.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.u, %._crit_edge182.loopexit ] ; 4 uses
  %.0100.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fi, %._crit_edge182.loopexit ]
  %.1.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.du, %._crit_edge182.loopexit ]
  store i16 %i.m, ptr %i.l, align 2, !tbaa !58
  %i.fj = add nuw nsw i32 %.0100.lcssa, %i.i
  %i.fk = sub nsw i32 %i.fj, %.1.lcssa            ; 2 uses
  store i32 %i.fk, ptr %2, align 4, !tbaa !42
  %i.fl = shl i32 %i.i, %.099.lcssa
  %i.fm = trunc i32 %i.fl to i16
  store i16 %i.fm, ptr %4, align 2, !tbaa !58
  %i.fn = shl nuw i32 1, %.099.lcssa
  %i.fo = trunc i32 %i.fn to i16
  store i16 %i.fo, ptr %3, align 2, !tbaa !58
  %i.fp = load i16, ptr %i.s, align 4, !tbaa !66  ; 3 uses
  %i.fq = zext i16 %i.fp to i32                   ; 2 uses
  %i.fr = icmp eq i32 %6, %i.fq
  br i1 %i.fr, label %.thread, label %.preheader.i114

.preheader.i114:                                  ; preds = %._crit_edge182
  %.not.not30.i115 = icmp samesign ult i32 %.0102.lcssa, %i.fq
  br i1 %.not.not30.i115, label %iter.check422, label %.preheader.._crit_edge_crit_edge.i116

.preheader.._crit_edge_crit_edge.i116:            ; preds = %.preheader.i114
  %.pre.i117 = zext nneg i32 %.0102.lcssa to i64
  br label %._crit_edge.i118

iter.check422:                                    ; preds = %.preheader.i114
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.ft = zext i16 %i.fp to i64                   ; 9 uses
  %i.fu = zext nneg i32 %.0102.lcssa to i64       ; 7 uses
  %i.fv = sub nsw i64 %i.ft, %i.fu                ; 7 uses
  %min.iters.check388 = icmp ult i64 %i.fv, 4
  br i1 %min.iters.check388, label %vec.epilog.scalar.ph424.preheader, label %vector.memcheck389

vector.memcheck389:                               ; preds = %iter.check422
  %i.fw = getelementptr i8, ptr %0, i64 %i.fu
  %i.fx = getelementptr i8, ptr %i.fw, i64 12
  %i.fy = getelementptr i8, ptr %0, i64 %i.ft
  %i.fz = getelementptr i8, ptr %i.fy, i64 13
  %i.ga = shl nuw nsw i64 %i.fu, 1
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 268
  %i.gd = shl nuw nsw i64 %i.ft, 1
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 270
  %bound0405 = icmp ult ptr %i.fx, %i.gf
  %bound1406 = icmp ult ptr %i.gc, %i.fz
  %found.conflict407 = and i1 %bound0405, %bound1406
  br i1 %found.conflict407, label %vec.epilog.scalar.ph424.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %vector.memcheck389
  %min.iters.check410 = icmp ult i64 %i.fv, 16
  br i1 %min.iters.check410, label %vec.epilog.ph426, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.gg = and i64 %i.fv, 12
  %n.vec412 = and i64 %i.fv, -16                  ; 4 uses
  %i.gh = sub nsw i64 %i.ft, %n.vec412
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph411, %vector.body413
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %i.gi = sub i64 %i.ft, %index414                ; 3 uses
  %i.gj = add nsw i64 %i.gi, -1                   ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.fs, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -7
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -15
  %wide.load415 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !49, !alias.scope !229, !noalias !230
  %wide.load416 = load <8 x i8>, ptr %i.gm, align 1, !tbaa !49, !alias.scope !229, !noalias !230
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gi ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -7
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -15
  store <8 x i8> %wide.load415, ptr %i.go, align 1, !tbaa !49, !alias.scope !229, !noalias !230
  store <8 x i8> %wide.load416, ptr %i.gp, align 1, !tbaa !49, !alias.scope !229, !noalias !230
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.gj ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -14
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -30
  %wide.load417 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !58, !alias.scope !230
  %wide.load418 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !58, !alias.scope !230
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gi ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -14
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -30
  store <8 x i16> %wide.load417, ptr %i.gu, align 2, !tbaa !58, !alias.scope !230
  store <8 x i16> %wide.load418, ptr %i.gv, align 2, !tbaa !58, !alias.scope !230
  %index.next419 = add nuw i64 %index414, 16      ; 2 uses
  %i.gw = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.gw, label %middle.block420, label %vector.body413, !llvm.loop !222

middle.block420:                                  ; preds = %vector.body413
  %cmp.n421 = icmp eq i64 %i.fv, %n.vec412
  br i1 %cmp.n421, label %._crit_edge.i118, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block420
  %min.epilog.iters.check425 = icmp eq i64 %i.gg, 0
  br i1 %min.epilog.iters.check425, label %vec.epilog.scalar.ph424.preheader, label %vec.epilog.ph426, !prof !68

vec.epilog.ph426:                                 ; preds = %vector.main.loop.iter.check409, %vec.epilog.iter.check423
  %vec.epilog.resume.val427 = phi i64 [ %n.vec412, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check409 ]
  %n.vec428 = and i64 %i.fv, -4                   ; 3 uses
  %i.gx = sub nsw i64 %i.ft, %n.vec428
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph426
  %index430 = phi i64 [ %vec.epilog.resume.val427, %vec.epilog.ph426 ], [ %index.next433, %vec.epilog.vector.body429 ] ; 2 uses
  %i.gy = sub i64 %i.ft, %index430                ; 3 uses
  %i.gz = add nsw i64 %i.gy, -1                   ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.fs, i64 %i.gz
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -3
  %wide.load431 = load <4 x i8>, ptr %i.hb, align 1, !tbaa !49, !alias.scope !229, !noalias !230
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gy
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -3
  store <4 x i8> %wide.load431, ptr %i.hd, align 1, !tbaa !49, !alias.scope !229, !noalias !230
  %i.he = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.gz
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -6
  %wide.load432 = load <4 x i16>, ptr %i.hf, align 2, !tbaa !58, !alias.scope !230
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gy
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -6
  store <4 x i16> %wide.load432, ptr %i.hh, align 2, !tbaa !58, !alias.scope !230
  %index.next433 = add nuw i64 %index430, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next433, %n.vec428
  br i1 %i.hi, label %vec.epilog.middle.block434, label %vec.epilog.vector.body429, !llvm.loop !223

vec.epilog.middle.block434:                       ; preds = %vec.epilog.vector.body429
  %cmp.n435 = icmp eq i64 %i.fv, %n.vec428
  br i1 %cmp.n435, label %._crit_edge.i118, label %vec.epilog.scalar.ph424.preheader

vec.epilog.scalar.ph424.preheader:                ; preds = %iter.check422, %vector.memcheck389, %vec.epilog.iter.check423, %vec.epilog.middle.block434
  %indvars.iv.i132.ph = phi i64 [ %i.ft, %iter.check422 ], [ %i.ft, %vector.memcheck389 ], [ %i.gh, %vec.epilog.iter.check423 ], [ %i.gx, %vec.epilog.middle.block434 ]
  br label %vec.epilog.scalar.ph424

._crit_edge.i118:                                 ; preds = %vec.epilog.scalar.ph424, %middle.block420, %vec.epilog.middle.block434, %.preheader.._crit_edge_crit_edge.i116
  %.pre-phi.i119 = phi i64 [ %.pre.i117, %.preheader.._crit_edge_crit_edge.i116 ], [ %i.fu, %middle.block420 ], [ %i.fu, %vec.epilog.middle.block434 ], [ %i.fu, %vec.epilog.scalar.ph424 ] ; 2 uses
  %i.hj = trunc i32 %i.fk to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.pre-phi.i119
  store i8 %i.hj, ptr %i.hl, align 1, !tbaa !49
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.pre-phi.i119
  store i16 50, ptr %i.hm, align 2, !tbaa !58
  %i.hn = add i16 %i.fp, 1                        ; 5 uses
  store i16 %i.hn, ptr %i.s, align 4, !tbaa !66
  %.not.i120 = icmp samesign ugt i32 %.0102.lcssa, %i.h
  br i1 %.not.i120, label %bb.m, label %bb.l

vec.epilog.scalar.ph424:                          ; preds = %vec.epilog.scalar.ph424.preheader, %vec.epilog.scalar.ph424
  %indvars.iv.i132 = phi i64 [ %indvars.iv.next.i133, %vec.epilog.scalar.ph424 ], [ %indvars.iv.i132.ph, %vec.epilog.scalar.ph424.preheader ] ; 3 uses
  %indvars.iv.next.i133 = add nsw i64 %indvars.iv.i132, -1 ; 4 uses
  %i.ho = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv.next.i133
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !49
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.i132
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !49
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next.i133
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !58
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i132
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !58
  %.not.not.i134 = icmp sgt i64 %indvars.iv.next.i133, %i.fu
  br i1 %.not.not.i134, label %vec.epilog.scalar.ph424, label %._crit_edge.i118, !llvm.loop !224

bb.l:                                             ; preds = %._crit_edge.i118
  %i.hu = add i8 %i.g, 1
  store i8 %i.hu, ptr %i.f, align 2, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i118
  %i.hv = add nsw i32 %i.a, 50
  %i.hw = icmp sgt i32 %i.a, 3996
  br i1 %i.hw, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.hx = zext i16 %i.hn to i32
  %i.hy = sub nsw i32 256, %i.hx                  ; 3 uses
  %.not.i.i122 = icmp eq i16 %i.hn, 0
  br i1 %.not.i.i122, label %.thread, label %.lr.ph.i.i123

.lr.ph.i.i123:                                    ; preds = %bb.n
  %wide.trip.count.i.i124 = zext i16 %i.hn to i64 ; 3 uses
  %min.iters.check438 = icmp ult i16 %i.hn, 8
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %.lr.ph.i.i123
  %n.vec440 = and i64 %wide.trip.count.i.i124, 65528 ; 3 uses
  %i.hz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hy, i64 0
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph439
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next447, %vector.body441 ] ; 2 uses
  %vec.phi443 = phi <4 x i32> [ %i.hz, %vector.ph439 ], [ %i.ii, %vector.body441 ]
  %vec.phi444 = phi <4 x i32> [ zeroinitializer, %vector.ph439 ], [ %i.ij, %vector.body441 ]
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index442 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %wide.load445 = load <4 x i16>, ptr %i.ia, align 2, !tbaa !58 ; 2 uses
  %wide.load446 = load <4 x i16>, ptr %i.ib, align 2, !tbaa !58 ; 2 uses
  %i.ic = lshr <4 x i16> %wide.load445, splat (i16 1)
  %i.id = lshr <4 x i16> %wide.load446, splat (i16 1)
  %i.ie = sub <4 x i16> %wide.load445, %i.ic      ; 2 uses
  %i.if = sub <4 x i16> %wide.load446, %i.id      ; 2 uses
  store <4 x i16> %i.ie, ptr %i.ia, align 2, !tbaa !58
  store <4 x i16> %i.if, ptr %i.ib, align 2, !tbaa !58
  %i.ig = zext <4 x i16> %i.ie to <4 x i32>
  %i.ih = zext <4 x i16> %i.if to <4 x i32>
  %i.ii = add <4 x i32> %vec.phi443, %i.ig        ; 2 uses
  %i.ij = add <4 x i32> %vec.phi444, %i.ih        ; 2 uses
  %index.next447 = add nuw i64 %index442, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next447, %n.vec440
  br i1 %i.ik, label %middle.block448, label %vector.body441, !llvm.loop !225

middle.block448:                                  ; preds = %vector.body441
  %bin.rdx449 = add <4 x i32> %i.ij, %i.ii
  %i.il = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx449) ; 2 uses
  %cmp.n450 = icmp eq i64 %n.vec440, %wide.trip.count.i.i124
  br i1 %cmp.n450, label %.thread, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.lr.ph.i.i123, %middle.block448
  %indvars.iv.i.i125.ph = phi i64 [ 0, %.lr.ph.i.i123 ], [ %n.vec440, %middle.block448 ]
  %.01213.i.i126.ph = phi i32 [ %i.hy, %.lr.ph.i.i123 ], [ %i.il, %middle.block448 ]
  br label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.preheader, %scalar.ph437
  %indvars.iv.i.i125 = phi i64 [ %indvars.iv.next.i.i127, %scalar.ph437 ], [ %indvars.iv.i.i125.ph, %scalar.ph437.preheader ] ; 2 uses
  %.01213.i.i126 = phi i32 [ %i.ir, %scalar.ph437 ], [ %.01213.i.i126.ph, %scalar.ph437.preheader ]
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i125 ; 2 uses
  %i.in = load i16, ptr %i.im, align 2, !tbaa !58 ; 2 uses
  %i.io = lshr i16 %i.in, 1
  %i.ip = sub i16 %i.in, %i.io                    ; 2 uses
  store i16 %i.ip, ptr %i.im, align 2, !tbaa !58
  %i.iq = zext i16 %i.ip to i32
  %i.ir = add i32 %.01213.i.i126, %i.iq           ; 2 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i125, 1 ; 2 uses
  %exitcond.not.i.i128 = icmp eq i64 %indvars.iv.next.i.i127, %wide.trip.count.i.i124
  br i1 %exitcond.not.i.i128, label %.thread, label %scalar.ph437, !llvm.loop !226

.thread:                                          ; preds = %scalar.ph, %scalar.ph344, %scalar.ph437, %middle.block, %middle.block355, %middle.block448, %bb.m, %._crit_edge182, %bb.n, %bb.i, %bb.j, %bb.d, %._crit_edge281, %bb.e
  %.1142.sink = phi i32 [ %i.do, %scalar.ph344 ], [ %i.ir, %scalar.ph437 ], [ %i.a, %._crit_edge281 ], [ %i.cs, %bb.d ], [ %i.cv, %bb.e ], [ %i.eg, %bb.i ], [ %i.eo, %bb.j ], [ %i.a, %._crit_edge182 ], [ %i.hv, %bb.m ], [ %i.hy, %bb.n ], [ %i.il, %middle.block448 ], [ %i.di, %middle.block355 ], [ %i.fb, %middle.block ], [ %i.fh, %scalar.ph ]
  %.2105 = phi i32 [ 1, %scalar.ph344 ], [ 1, %scalar.ph437 ], [ 0, %._crit_edge281 ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %._crit_edge182 ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %middle.block448 ], [ 1, %middle.block355 ], [ 1, %middle.block ], [ 1, %scalar.ph ]
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
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.be
  store i16 %i.bb, ptr %i.bf, align 2, !tbaa !58
  %indvars.iv.next67.1 = or disjoint i64 %indvars.iv66, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next67.1
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next67.1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !49
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bk
  store i16 %i.bh, ptr %i.bl, align 2, !tbaa !58
  %indvars.iv.next67.2 = or disjoint i64 %indvars.iv66, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next67.2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next67.2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !49
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bq
  store i16 %i.bn, ptr %i.br, align 2, !tbaa !58
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.preheader.loopexit.unr-lcssa, label %bb.a, !llvm.loop !231

.preheader.preheader.loopexit.unr-lcssa:          ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next67.3, %.preheader.preheader.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv66.epil = phi i64 [ %indvars.iv66.epil.init, %.epil.preheader ], [ %indvars.iv.next67.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv66.epil
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv66.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !49
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bw
  store i16 %i.bt, ptr %i.bx, align 2, !tbaa !58
  %indvars.iv.next67.epil = add nuw nsw i64 %indvars.iv66.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.preheader, label %bb.b, !llvm.loop !232

.preheader.preheader:                             ; preds = %.preheader.preheader.loopexit.unr-lcssa, %bb.b, %vector.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %indvars.iv70 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next71.1, %.preheader ] ; 4 uses
  %.159 = phi i16 [ 0, %.preheader.preheader ], [ %i.ch, %.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv70
  %i.bz = load i16, ptr %i.by, align 4, !tbaa !58 ; 2 uses
  %.idx78 = shl nuw nsw i64 %indvars.iv70, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx78 ; 2 uses
  store i16 %i.bz, ptr %i.ca, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i16 %.159, ptr %i.cb, align 2, !tbaa !58
  %i.cc = add i16 %i.bz, %.159                    ; 2 uses
  %indvars.iv.next71 = or disjoint i64 %indvars.iv70, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next71
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !58 ; 2 uses
  %.idx78.1 = shl nuw nsw i64 %indvars.iv.next71, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx78.1 ; 2 uses
  store i16 %i.ce, ptr %i.cf, align 4, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %i.cc, ptr %i.cg, align 2, !tbaa !58
  %i.ch = add i16 %i.ce, %i.cc
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %exitcond72.not.1 = icmp eq i64 %indvars.iv.next71.1, 256
  br i1 %exitcond72.not.1, label %bb.c, label %.preheader, !llvm.loop !233

bb.c:                                             ; preds = %.preheader
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = add i8 %.fr82, -1                       ; 3 uses
  store i8 %i.ci, ptr %i.c, align 1, !tbaa !70
  %.not55 = icmp eq i8 %i.ci, 0
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -1
  %spec.select = select i1 %.not55, i32 0, i32 %i.ck
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.cl = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %i.cm = sub nsw i32 256, %i.aq
  %i.cn = shl i32 %i.cm, %i.cl                    ; 2 uses
  br i1 %.not63, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %.thread
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 268
  %wide.trip.count76 = zext i16 %i.ap to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv73 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next74, %bb.e ] ; 4 uses
  %.261 = phi i32 [ %i.cn, %.lr.ph62 ], [ %i.cw, %bb.e ]
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv73 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !58 ; 2 uses
  %i.ct = lshr i16 %i.cs, 1
  %i.cu = sub i16 %i.cs, %i.ct                    ; 2 uses
  store i16 %i.cu, ptr %i.cr, align 2, !tbaa !58
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add i32 %.261, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv73
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !49
  %i.cz = zext i8 %i.cy to i64
  %.idx = shl nuw nsw i64 %i.cz, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.idx79 = shl nuw nsw i64 %indvars.iv73, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx79
  %i.dc = load <2 x i16>, ptr %i.da, align 4, !tbaa !58
  store <2 x i16> %i.dc, ptr %i.db, align 2, !tbaa !58
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge, label %bb.e, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.e, %.thread
  %.2.lcssa = phi i32 [ %i.cn, %.thread ], [ %i.cw, %bb.e ]
  %i.dd = trunc i32 %.2.lcssa to i16
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !69
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dh
  store i16 %i.dd, ptr %i.di, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_run_p(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, -2147483648) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 -536870912, 536870912) %7, i32 noundef range(i32 -536870912, 536870912) %8, ptr nofree noundef nonnull captures(none) %9, ptr nofree noundef nonnull captures(none) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef nonnull writeonly captures(none) %14, ptr nofree noundef nonnull writeonly captures(none) %15) unnamed_addr #7 {
bb.a:
  switch i32 %1, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader243
    i32 2, label %.preheader246
    i32 3, label %.preheader249
    i32 4, label %.preheader252
    i32 5, label %.preheader255
  ]

.preheader255:                                    ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = xor i32 %11, -1
  %i.c = shl nsw i32 %3, 4                        ; 2 uses
  %i.d = add nsw i32 %13, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = add nsw i32 %12, %i.c
  br label %bb.ag

.preheader252:                                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = xor i32 %11, -1
  %i.i = shl nsw i32 %3, 4                        ; 2 uses
  %i.j = add nsw i32 %13, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = add nsw i32 %12, %i.i
  br label %bb.y

.preheader249:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = shl nsw i32 %3, 4                        ; 2 uses
  %i.o = add nsw i32 %13, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = add nsw i32 %12, %i.n
  br label %bb.t

.preheader246:                                    ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = shl nsw i32 %3, 4                        ; 2 uses
  %i.t = add nsw i32 %13, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = add nsw i32 %12, %i.s
  br label %bb.n

.preheader243:                                    ; preds = %bb.a
  %i.w = xor i32 %11, -1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.y = shl nsw i32 %3, 4                        ; 2 uses
  %i.z = add nsw i32 %13, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = add nsw i32 %12, %i.y
  %.pre282 = load i32, ptr %9, align 4, !tbaa !42
  br label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ad = shl nsw i32 %3, 4                       ; 2 uses
  %i.ae = add nsw i32 %13, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = add nsw i32 %12, %i.ad
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.in267 = phi i32 [ %2, %.preheader ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ah = add nsw i32 %.in267, -1
  %i.ai = load i32, ptr %10, align 4, !tbaa !42   ; 2 uses
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !59
  %.not238 = icmp ult i32 %i.ai, %i.aj
  br i1 %.not238, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ak = mul i32 %i.ai, %7
  %i.al = load i32, ptr %9, align 4, !tbaa !42
  %i.am = add i32 %i.al, %i.ak
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.an
  store i32 %4, ptr %i.ao, align 4, !tbaa !42
  %i.ap = load i32, ptr %9, align 4, !tbaa !42
  %i.aq = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.aq, ptr %9, align 4, !tbaa !42
  %.not239 = icmp ult i32 %i.aq, %i.ae
  br i1 %.not239, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !51
  %.not240 = icmp ult i32 %i.aq, %i.ar
  br i1 %.not240, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.ag, ptr %9, align 4, !tbaa !42
  %i.as = load i32, ptr %10, align 4, !tbaa !42
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %10, align 4, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = icmp samesign ugt i32 %.in267, 1
  br i1 %i.au, label %bb.b, label %.loopexit, !llvm.loop !235

bb.g:                                             ; preds = %.preheader243, %bb.m
  %i.av = phi i32 [ %.pre282, %.preheader243 ], [ %i.bn, %bb.m ] ; 2 uses
  %.in266 = phi i32 [ %2, %.preheader243 ], [ %i.aw, %bb.m ] ; 2 uses
  %i.aw = add nsw i32 %.in266, -1
  %i.ax = icmp eq i32 %i.av, 0
  %.pre283 = load i32, ptr %10, align 4, !tbaa !42 ; 3 uses
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp eq i32 %.pre283, 0
  br i1 %i.ay, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0195 = phi i32 [ -1, %bb.g ], [ %i.w, %bb.h ]
  %i.az = load i32, ptr %i.x, align 4, !tbaa !59
  %.not235 = icmp ult i32 %.pre283, %i.az
  br i1 %.not235, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ba = mul i32 %.pre283, %7
  %i.bb = add i32 %i.ba, %i.av                    ; 2 uses
  %i.bc = add i32 %i.bb, %.0195
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42 ; 2 uses
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !42
  %i.bi = load i32, ptr %9, align 4, !tbaa !42
  %i.bj = add i32 %i.bi, 1                        ; 4 uses
  store i32 %i.bj, ptr %9, align 4, !tbaa !42
  %.not236 = icmp ult i32 %i.bj, %i.z
  br i1 %.not236, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.aa, align 8, !tbaa !51
  %.not237 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not237, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %i.ab, ptr %9, align 4, !tbaa !42
  %i.bl = load i32, ptr %10, align 4, !tbaa !42
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %10, align 4, !tbaa !42
  %.pre = load i32, ptr %9, align 4, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = phi i32 [ %.pre, %bb.l ], [ %i.bj, %bb.k ]
  %i.bo = icmp samesign ugt i32 %.in266, 1
  br i1 %i.bo, label %bb.g, label %.loopexit, !llvm.loop !236

bb.n:                                             ; preds = %.preheader246, %bb.s
  %.in265 = phi i32 [ %2, %.preheader246 ], [ %i.bp, %bb.s ] ; 2 uses
  %i.bp = add nsw i32 %.in265, -1
  %i.bq = load i32, ptr %10, align 4, !tbaa !42   ; 4 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !59
  %.not232 = icmp ult i32 %i.bq, %i.bs
  br i1 %.not232, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bt = add i32 %i.bq, -1
  %i.bu = mul i32 %i.bt, %7
  %i.bv = load i32, ptr %9, align 4, !tbaa !42    ; 2 uses
  %i.bw = add i32 %i.bv, %i.bu
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !42 ; 2 uses
  %i.ca = mul i32 %i.bq, %7
  %i.cb = add i32 %i.bv, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cc
  store i32 %i.bz, ptr %i.cd, align 4, !tbaa !42
  %i.ce = load i32, ptr %9, align 4, !tbaa !42
  %i.cf = add i32 %i.ce, 1                        ; 3 uses
  store i32 %i.cf, ptr %9, align 4, !tbaa !42
  %.not233 = icmp ult i32 %i.cf, %i.t
  br i1 %.not233, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %i.u, align 8, !tbaa !51
  %.not234 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not234, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.v, ptr %9, align 4, !tbaa !42
  %i.ch = load i32, ptr %10, align 4, !tbaa !42
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %10, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = icmp samesign ugt i32 %.in265, 1
  br i1 %i.cj, label %bb.n, label %.loopexit, !llvm.loop !237

bb.t:                                             ; preds = %.preheader249, %bb.x
  %.in264 = phi i32 [ %2, %.preheader249 ], [ %i.ck, %bb.x ] ; 2 uses
  %i.ck = add nsw i32 %.in264, -1
  %i.cl = load i32, ptr %10, align 4, !tbaa !42   ; 3 uses
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !59
  %.not229 = icmp ult i32 %i.cl, %i.cm
  br i1 %.not229, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.cn = mul i32 %i.cl, %8
  %i.co = load i32, ptr %9, align 4, !tbaa !42    ; 2 uses
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42 ; 2 uses
  %i.ct = mul i32 %i.cl, %7
  %i.cu = add i32 %i.co, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cv
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !42
  %i.cx = load i32, ptr %9, align 4, !tbaa !42
  %i.cy = add i32 %i.cx, 1                        ; 3 uses
  store i32 %i.cy, ptr %9, align 4, !tbaa !42
  %.not230 = icmp ult i32 %i.cy, %i.o
  br i1 %.not230, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = load i32, ptr %i.p, align 8, !tbaa !51
  %.not231 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not231, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 %i.q, ptr %9, align 4, !tbaa !42
  %i.da = load i32, ptr %10, align 4, !tbaa !42
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %10, align 4, !tbaa !42
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dc = icmp samesign ugt i32 %.in264, 1
  br i1 %i.dc, label %bb.t, label %.loopexit, !llvm.loop !238

bb.y:                                             ; preds = %.preheader252, %bb.af
  %.in263 = phi i32 [ %2, %.preheader252 ], [ %i.dd, %bb.af ] ; 2 uses
  %i.dd = add nsw i32 %.in263, -1
  %i.de = load i32, ptr %10, align 4, !tbaa !42   ; 5 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = load i32, ptr %i.g, align 4, !tbaa !59
  %.not222 = icmp ult i32 %i.de, %i.dg
  br i1 %.not222, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i32, ptr %9, align 4, !tbaa !42    ; 3 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = icmp eq i32 %i.de, 1
  br i1 %i.dj, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1 = phi i32 [ -1, %bb.aa ], [ %i.h, %bb.ab ]  ; 2 uses
  %i.dk = add i32 %i.de, -1
  %i.dl = mul i32 %i.dk, %7
  %i.dm = add i32 %i.dh, %i.dl                    ; 2 uses
  %i.dn = shl i32 %i.dm, 2                        ; 3 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !49
  %i.dr = mul i32 %i.de, %7
  %i.ds = add i32 %i.dh, %i.dr                    ; 2 uses
  %i.dt = add i32 %.1, %i.ds
  %i.du = shl i32 %i.dt, 2                        ; 3 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !49
  %.tr225 = add i8 %i.dx, %i.dq
  %i.dy = add i32 %.1, %i.dm
  %i.dz = shl i32 %i.dy, 2                        ; 3 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !49
  %i.ed = or disjoint i32 %i.dn, 1
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !49
  %i.eh = or disjoint i32 %i.du, 1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !49
  %.tr223 = add i8 %i.ek, %i.eg
  %i.el = or disjoint i32 %i.dz, 1
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !49
  %i.ep = or disjoint i32 %i.dn, 2
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !49
  %i.et = or disjoint i32 %i.du, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !49
  %.tr = add i8 %i.ew, %i.es
  %i.ex = or disjoint i32 %i.dz, 2
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !49
  %.narrow = sub i8 %.tr, %i.fa
  %i.fb = zext i8 %.narrow to i32
  %i.fc = shl nuw nsw i32 %i.fb, 16
  %.narrow224 = sub i8 %.tr223, %i.eo
  %i.fd = zext i8 %.narrow224 to i32
  %i.fe = shl nuw nsw i32 %i.fd, 8
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %.narrow226 = sub i8 %.tr225, %i.ec
  %i.fg = zext i8 %.narrow226 to i32
  %i.fh = or disjoint i32 %i.ff, %i.fg            ; 2 uses
  %i.fi = zext i32 %i.ds to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fi
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !42
  %i.fk = load i32, ptr %9, align 4, !tbaa !42
  %i.fl = add i32 %i.fk, 1                        ; 3 uses
  store i32 %i.fl, ptr %9, align 4, !tbaa !42
  %.not227 = icmp ult i32 %i.fl, %i.j
  br i1 %.not227, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fm = load i32, ptr %i.k, align 8, !tbaa !51
  %.not228 = icmp ult i32 %i.fl, %i.fm
  br i1 %.not228, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 %i.l, ptr %9, align 4, !tbaa !42
  %i.fn = load i32, ptr %10, align 4, !tbaa !42
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %10, align 4, !tbaa !42
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fp = icmp samesign ugt i32 %.in263, 1
  br i1 %i.fp, label %bb.y, label %.loopexit, !llvm.loop !239

bb.ag:                                            ; preds = %.preheader255, %bb.an
  %.in = phi i32 [ %2, %.preheader255 ], [ %i.fq, %bb.an ] ; 2 uses
  %i.fq = add nsw i32 %.in, -1
  %i.fr = load i32, ptr %10, align 4, !tbaa !42   ; 5 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = load i32, ptr %i.a, align 4, !tbaa !59
  %.not = icmp ult i32 %i.fr, %i.ft
  br i1 %.not, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.fu = load i32, ptr %9, align 4, !tbaa !42    ; 3 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fw = icmp eq i32 %i.fr, 1
  br i1 %i.fw, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2 = phi i32 [ -1, %bb.ai ], [ %i.b, %bb.aj ]
  %i.fx = add i32 %i.fr, -1
  %i.fy = mul i32 %i.fx, %7
  %i.fz = add i32 %i.fu, %i.fy
  %i.ga = add i32 %i.fz, %.2
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !42 ; 2 uses
  %i.ge = mul i32 %i.fr, %7
  %i.gf = add i32 %i.fu, %i.ge
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gd, ptr %i.gh, align 4, !tbaa !42
  %i.gi = load i32, ptr %9, align 4, !tbaa !42
  %i.gj = add i32 %i.gi, 1                        ; 3 uses
  store i32 %i.gj, ptr %9, align 4, !tbaa !42
  %.not220 = icmp ult i32 %i.gj, %i.d
  br i1 %.not220, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i32, ptr %i.e, align 8, !tbaa !51
  %.not221 = icmp ult i32 %i.gj, %i.gk
  br i1 %.not221, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 %i.f, ptr %9, align 4, !tbaa !42
  %i.gl = load i32, ptr %10, align 4, !tbaa !42
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %10, align 4, !tbaa !42
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gn = icmp samesign ugt i32 %.in, 1
  br i1 %i.gn, label %bb.ag, label %.loopexit, !llvm.loop !240

.loopexit:                                        ; preds = %bb.an, %bb.af, %bb.x, %bb.s, %bb.m, %bb.f, %bb.a
  %.6 = phi i32 [ %4, %bb.a ], [ %4, %bb.f ], [ %i.bf, %bb.m ], [ %i.bz, %bb.s ], [ %i.cs, %bb.x ], [ %i.fh, %bb.af ], [ %i.gd, %bb.an ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !31
  %i.gq = icmp eq i32 %i.gp, 16                   ; 2 uses
  %. = select i1 %i.gq, i32 2, i32 4
  %.310 = select i1 %i.gq, i32 16, i32 18
  %i.gr = lshr i32 %.6, %.
  %i.gs = lshr i32 %.6, %.310
  %.sink = and i32 %i.gr, 4032
  store i32 %.sink, ptr %15, align 4, !tbaa !42
  %storemerge = and i32 %i.gs, 63
  store i32 %storemerge, ptr %14, align 4, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.ag, %bb.ah, %bb.ab, %bb.y, %bb.z, %bb.t, %bb.n, %bb.o, %bb.i, %bb.h, %bb.b, %.loopexit
  %.2198 = phi i32 [ 0, %.loopexit ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.n ], [ -1094995529, %bb.b ], [ -1094995529, %bb.t ], [ -1094995529, %bb.i ], [ -1094995529, %bb.h ], [ -1094995529, %bb.o ], [ -1094995529, %bb.z ], [ -1094995529, %bb.y ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.aj ]
  ret i32 %.2198
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"AVRational", !8, i64 0, !8, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !11, i64 0}
!20 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"p2 _ZTS15AVFrameSideData", !27, i64 0}
!29 = !{!"AVCodecContext", !12, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !14, i64 40, !11, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !16, i64 72, !8, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !17, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !20, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !18, i64 428, !18, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !8, i64 488, !8, i64 492, !16, i64 496, !16, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !22, i64 536, !11, i64 544, !23, i64 552, !23, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !24, i64 728, !16, i64 736, !8, i64 744, !8, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !8, i64 784, !8, i64 788, !15, i64 792, !8, i64 800, !8, i64 804, !15, i64 808, !11, i64 816, !15, i64 824, !26, i64 832, !8, i64 840, !28, i64 848, !8, i64 856, !8, i64 860}
!30 = !{!29, !11, i64 32}
!31 = !{!29, !8, i64 648}
!32 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!33 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!34 = !{!"RangeCoder", !8, i64 0, !8, i64 4, !8, i64 8}
!35 = !{!"RunModel3", !8, i64 0, !7, i64 4, !7, i64 1028, !7, i64 1540}
!36 = !{!"FillModel3", !8, i64 0, !7, i64 4, !7, i64 24, !7, i64 34}
!37 = !{!"SCPRContext", !8, i64 0, !32, i64 8, !32, i64 16, !33, i64 24, !34, i64 48, !7, i64 60, !7, i64 13418556, !7, i64 13418724, !7, i64 13424892, !7, i64 13425920, !7, i64 13426948, !7, i64 13426972, !7, i64 13427244, !8, i64 13431348, !8, i64 13431352, !8, i64 13431356, !26, i64 13431360, !8, i64 13431368, !8, i64 13431372, !7, i64 13431376, !7, i64 35992144, !35, i64 36001576, !35, i64 36003148, !36, i64 36004720, !7, i64 36004788, !7, i64 36005316, !7, i64 36011532, !11, i64 36011968, !11, i64 36011976}
!38 = !{!37, !11, i64 36011968}
!39 = !{!37, !11, i64 36011976}
!40 = !{!37, !8, i64 13431372}
!41 = !{!37, !8, i64 13431368}
!42 = !{!8, !8, i64 0}
!43 = !{!37, !8, i64 13431356}
!44 = !{!37, !26, i64 13431360}
!45 = !{!37, !32, i64 8}
!46 = !{!37, !32, i64 16}
!47 = !{!33, !16, i64 0}
!48 = !{!33, !16, i64 8}
!49 = !{!7, !7, i64 0}
!50 = !{!16, !16, i64 0}
!51 = !{!29, !8, i64 112}
!52 = !{!34, !8, i64 0}
!53 = !{!34, !8, i64 8}
!54 = !{!"short", !7, i64 0}
!55 = !{!"PixelModel3", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !54, i64 4, !8, i64 8, !7, i64 12, !7, i64 268, !7, i64 780, !7, i64 1292, !7, i64 1804}
!56 = !{!55, !7, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!54, !54, i64 0}
!59 = !{!29, !8, i64 116}
!60 = !{!34, !8, i64 4}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"PixelModel", !7, i64 0, !7, i64 1024, !8, i64 1088}
!64 = !{!63, !8, i64 1088}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!55, !54, i64 4}
!67 = !{!55, !7, i64 2}
!68 = !{!"branch_weights", i32 4, i32 12}
!69 = !{!55, !7, i64 1}
!70 = !{!55, !7, i64 3}
!71 = !{!29, !8, i64 136}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !57}
!78 = distinct !{null, null}
!79 = distinct !{!79, !57, !61, !62}
!80 = distinct !{!80, !57, !61, !62}
!81 = distinct !{!81, !57, !61, !62}
!82 = distinct !{!82, !57, !61, !62}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !57, !61, !62}
!85 = distinct !{!85, !57}
!86 = distinct !{!86, !57, !61, !62}
!87 = distinct !{!87, !57, !61, !62}
!88 = distinct !{!88, !57}
!89 = distinct !{!89, !57}
!90 = distinct !{!90, !57, !61, !62}
!91 = distinct !{!91, !57}
!92 = distinct !{!92, !57}
!93 = distinct !{!93, !57, !118}
!94 = distinct !{!94, !57}
!95 = distinct !{!95, !57}
!96 = distinct !{!96, !57}
!97 = distinct !{!97, !57}
!98 = distinct !{!98, !57}
!99 = distinct !{!99, !57}
!100 = distinct !{!100, !57}
!101 = distinct !{!101, !57, !118}
!102 = distinct !{!102, !57, !61, !62}
!103 = distinct !{!103, !57, !62, !61}
!104 = distinct !{!104, !57}
!105 = distinct !{!105, !57}
!106 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !25, i64 48, !8, i64 56, !15, i64 64, !15, i64 72, !11, i64 80, !23, i64 88, !17, i64 96}
!107 = !{!106, !16, i64 24}
!108 = !{!106, !8, i64 32}
!109 = !{!33, !16, i64 16}
!110 = !{!37, !8, i64 0}
!111 = !{!"p2 omnipotent char", !27, i64 0}
!112 = !{!"p2 _ZTS11AVBufferRef", !27, i64 0}
!113 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!114 = !{!"AVFrame", !7, i64 0, !7, i64 64, !111, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !8, i64 160, !11, i64 168, !8, i64 176, !8, i64 180, !7, i64 184, !112, i64 248, !8, i64 256, !28, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !15, i64 304, !113, i64 312, !8, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !11, i64 376, !20, i64 384, !15, i64 408, !8, i64 416}
!115 = !{!114, !8, i64 276}
!116 = !{!37, !8, i64 13431352}
!117 = !{!37, !8, i64 13431348}
!118 = !{!"llvm.loop.unswitch.partial.disable"}
!119 = !{!37, !8, i64 48}
!120 = !{!15, !15, i64 0}
!121 = !{!114, !8, i64 120}
!122 = !{!32, !32, i64 0}
!123 = distinct !{!123, !57}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57, !61, !62}
!126 = distinct !{!126, !57}
!127 = distinct !{null}
!128 = distinct !{!128, !57, !61, !62}
!129 = distinct !{!129, !57}
!130 = distinct !{!130, !57, !61, !62}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !57}
!133 = distinct !{!133, !57}
!134 = distinct !{!134, !57}
!135 = distinct !{!135, !57}
!136 = distinct !{!136, !57}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = distinct !{!139, !57, !61, !62}
!140 = distinct !{!140, !57}
!141 = distinct !{!141, !57, !61, !62}
!142 = distinct !{!142, !57, !61, !62}
!143 = distinct !{!143, !65}
!144 = distinct !{!144, !57, !61}
!145 = distinct !{!145, !57}
!146 = !{!"branch_weights", i32 4, i32 28}
!147 = distinct !{!147, !57}
!148 = distinct !{!148, !57}
!149 = distinct !{!149, !57}
!150 = distinct !{!150, !57}
!151 = distinct !{!151, !57}
!152 = distinct !{!152, !57}
!153 = distinct !{!153, i1 false, !"LVerDomain"}
!154 = distinct !{!154, !153}
!155 = distinct !{!155, !153}
!156 = distinct !{!156, !153}
!157 = distinct !{!157, !57, !61, !62}
!158 = distinct !{!158, !57, !61, !62}
!159 = distinct !{!159, !57, !61}
!160 = distinct !{!160, !57, !61, !62}
!161 = distinct !{!161, !57, !62, !61}
!162 = distinct !{!162, !57}
!163 = distinct !{!163, !57}
!164 = distinct !{!164, !57}
!165 = distinct !{!165, !57}
!166 = distinct !{!166, !57}
!167 = distinct !{!167, !57}
!168 = distinct !{!168, !57}
!169 = distinct !{!169, !57}
!170 = distinct !{!170, !57, !61, !62}
!171 = distinct !{!171, !57, !62, !61}
!172 = distinct !{!172, !57}
!173 = distinct !{!173, !57}
!174 = distinct !{!174, !65}
!175 = distinct !{!175, !57}
!176 = distinct !{!176, !57}
!177 = distinct !{!177, i1 false, !"LVerDomain"}
!178 = distinct !{!178, !177}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !57, !61, !62}
!181 = distinct !{!181, !57, !61}
!182 = distinct !{!182, !57, !61, !62}
!183 = distinct !{!183, !57, !61, !62}
!184 = distinct !{!184, !57, !62, !61}
!185 = distinct !{!185, !57, !61, !62}
!186 = distinct !{!186, !57, !62, !61}
!187 = distinct !{!187, !57, !61, !62}
!188 = distinct !{!188, !57, !62, !61}
!189 = distinct !{!189, !57}
!190 = distinct !{!190, !57}
!191 = distinct !{!191, !57}
!192 = distinct !{!192, !57, !61, !62}
!193 = distinct !{!193, !57, !62, !61}
!194 = distinct !{!194, !57}
!195 = distinct !{!195, !57}
!196 = distinct !{!196, !57}
!197 = distinct !{!197, !57}
!198 = distinct !{!198, !57}
!199 = !{!11, !11, i64 0}
!200 = !{!154}
!201 = !{!155}
!202 = !{!156, !154}
!203 = !{!156}
!204 = !{!55, !8, i64 8}
!205 = !{!178}
!206 = !{!179}
!207 = distinct !{!207, !57}
!208 = distinct !{!208, !57}
!209 = distinct !{!209, i1 false, !"LVerDomain"}
!210 = distinct !{!210, !209}
!211 = distinct !{!211, !209}
!212 = distinct !{!212, !57, !61, !62}
!213 = distinct !{!213, !57, !61, !62}
!214 = distinct !{!214, !57, !61}
!215 = distinct !{!215, !57, !61, !62}
!216 = distinct !{!216, !57, !62, !61}
!217 = distinct !{!217, !57, !61, !62}
!218 = distinct !{!218, !57, !62, !61}
!219 = distinct !{!219, i1 false, !"LVerDomain"}
!220 = distinct !{!220, !219}
!221 = distinct !{!221, !219}
!222 = distinct !{!222, !57, !61, !62}
!223 = distinct !{!223, !57, !61, !62}
!224 = distinct !{!224, !57, !61}
!225 = distinct !{!225, !57, !61, !62}
!226 = distinct !{!226, !57, !62, !61}
!227 = !{!210}
!228 = !{!211}
!229 = !{!220}
!230 = !{!221}
!231 = distinct !{!231, !57}
!232 = distinct !{!232, !65}
!233 = distinct !{!233, !57}
!234 = distinct !{!234, !57}
!235 = distinct !{!235, !57}
!236 = distinct !{!236, !57}
!237 = distinct !{!237, !57}
!238 = distinct !{!238, !57}
!239 = distinct !{!239, !57}
!240 = distinct !{!240, !57}
end_hunk_0
