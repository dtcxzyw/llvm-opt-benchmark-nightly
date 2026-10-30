Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/save-tiff?download=true
inline.NumInlined: 98
inline.NumDeleted: 15
begin_hunk_0_@_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi4EEEPKc:bb.a
_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload, 1  ; 2 uses
  %i.b = add nsw i32 %.sroa.3.0.copyload, -1
  %i.c = mul nsw i32 %i.b, %.sroa.4.0.copyload
  %narrow = select i1 %.not.i.i, i32 0, i32 %i.c
  %.sroa.0.0.idx = sext i32 %narrow to i64
  %.sroa.0.0 = getelementptr inbounds [4 x i8], ptr %.sroa.04.0.copyload, i64 %.sroa.0.0.idx
  tail call fastcc void @_ZN7msdfgenL15writeTiffHeaderEP8_IO_FILEiii(ptr noundef %i.a, i32 noundef %.sroa.2.0.copyload, i32 noundef %.sroa.3.0.copyload, i32 noundef 4)
  %i.d = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i
  %i.e = sub nsw i32 0, %.sroa.4.0.copyload
  %.sroa.9.0 = select i1 %.not.i.i, i32 %.sroa.4.0.copyload, i32 %i.e
  %i.f = shl nsw i32 %.sroa.2.0.copyload, 2
  %i.g = sext i32 %i.f to i64
  %i.h = sext i32 %.sroa.9.0 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.3.0.copyload to i64
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.a)
  %.not10.i = icmp eq i32 %i.i, 0
  br label %_ZN7msdfgen13saveTiffFloatILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.j = mul nsw i64 %indvars.iv.i, %i.h
  %i.k = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.j
  %i.l = tail call i64 @fwrite(ptr noundef %i.k, i64 noundef 4, i64 noundef %i.g, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !17

_ZN7msdfgen13saveTiffFloatILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit: ; preds = %bb.a, %._crit_edge.i
  %.08.i = phi i1 [ %.not10.i, %._crit_edge.i ], [ false, %bb.a ]
  ret i1 %.08.i
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN7msdfgenL15writeTiffHeaderEP8_IO_FILEiii(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i16, align 2                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = alloca float, align 4                    ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i16, align 2                      ; 4 uses
  %i.r = alloca i16, align 2                      ; 4 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i16, align 2                      ; 4 uses
  %i.w = alloca i16, align 2                      ; 4 uses
  %i.x = alloca i16, align 2                      ; 4 uses
  %i.y = alloca i16, align 2                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i16, align 2                     ; 4 uses
  %i.ac = alloca i16, align 2                     ; 4 uses
  %i.ad = alloca i16, align 2                     ; 4 uses
  %i.ae = alloca i16, align 2                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca i16, align 2                     ; 4 uses
  %i.ah = alloca i16, align 2                     ; 4 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %i.ak = alloca i16, align 2                     ; 4 uses
  %i.al = alloca i16, align 2                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i16, align 2                     ; 4 uses
  %i.ap = alloca i16, align 2                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %i.as = alloca i16, align 2                     ; 4 uses
  %i.at = alloca i16, align 2                     ; 4 uses
  %i.au = alloca i32, align 4                     ; 4 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = alloca i16, align 2                     ; 4 uses
  %i.ax = alloca i16, align 2                     ; 4 uses
  %i.ay = alloca i16, align 2                     ; 4 uses
  %i.az = alloca i16, align 2                     ; 4 uses
  %i.ba = alloca i32, align 4                     ; 4 uses
  %i.bb = alloca i16, align 2                     ; 4 uses
  %i.bc = alloca i16, align 2                     ; 4 uses
  %i.bd = alloca i32, align 4                     ; 4 uses
  %i.be = alloca i32, align 4                     ; 4 uses
  %i.bf = alloca i16, align 2                     ; 4 uses
  %i.bg = alloca i16, align 2                     ; 4 uses
  %i.bh = alloca i16, align 2                     ; 4 uses
  %i.bi = alloca i16, align 2                     ; 4 uses
  %i.bj = alloca i32, align 4                     ; 4 uses
  %i.bk = alloca i16, align 2                     ; 4 uses
  %i.bl = alloca i16, align 2                     ; 4 uses
  %i.bm = alloca i16, align 2                     ; 4 uses
  %i.bn = alloca i16, align 2                     ; 4 uses
  %i.bo = alloca i32, align 4                     ; 4 uses
  %i.bp = alloca i16, align 2                     ; 4 uses
  %i.bq = alloca i16, align 2                     ; 4 uses
  %i.br = alloca i16, align 2                     ; 4 uses
  %i.bs = alloca i16, align 2                     ; 4 uses
  %i.bt = alloca i32, align 4                     ; 4 uses
  %i.bu = alloca i32, align 4                     ; 4 uses
  %i.bv = alloca i16, align 2                     ; 4 uses
  %i.bw = alloca i16, align 2                     ; 4 uses
  %i.bx = alloca i32, align 4                     ; 4 uses
  %i.by = alloca i32, align 4                     ; 4 uses
  %i.bz = alloca i16, align 2                     ; 4 uses
  %i.ca = alloca i16, align 2                     ; 4 uses
  %i.cb = alloca i32, align 4                     ; 4 uses
  %i.cc = alloca i32, align 4                     ; 4 uses
  %i.cd = alloca i16, align 2                     ; 4 uses
  %i.ce = alloca i16, align 2                     ; 4 uses
  %i.cf = alloca i16, align 2                     ; 4 uses
  %i.cg = alloca i32, align 4                     ; 4 uses
  %i.ch = alloca i16, align 2                     ; 4 uses
  %i.ci = alloca i16, align 2                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store i16 18761, ptr %i.ci, align 2, !tbaa !21
  %i.cj = call i64 @fwrite(ptr noundef nonnull %i.ci, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store i16 42, ptr %i.ch, align 2, !tbaa !21
  %i.ck = call i64 @fwrite(ptr noundef nonnull %i.ch, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i32 8, ptr %i.cg, align 4, !tbaa !11
  %i.cl = call i64 @fwrite(ptr noundef nonnull %i.cg, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i16 15, ptr %i.cf, align 2, !tbaa !21
  %i.cm = call i64 @fwrite(ptr noundef nonnull %i.cf, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i16 256, ptr %i.ce, align 2, !tbaa !21
  %i.cn = call i64 @fwrite(ptr noundef nonnull %i.ce, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i16 4, ptr %i.cd, align 2, !tbaa !21
  %i.co = call i64 @fwrite(ptr noundef nonnull %i.cd, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store i32 1, ptr %i.cc, align 4, !tbaa !11
  %i.cp = call i64 @fwrite(ptr noundef nonnull %i.cc, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i32 %1, ptr %i.cb, align 4, !tbaa !11
  %i.cq = call i64 @fwrite(ptr noundef nonnull %i.cb, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store i16 257, ptr %i.ca, align 2, !tbaa !21
  %i.cr = call i64 @fwrite(ptr noundef nonnull %i.ca, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i16 4, ptr %i.bz, align 2, !tbaa !21
  %i.cs = call i64 @fwrite(ptr noundef nonnull %i.bz, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i32 1, ptr %i.by, align 4, !tbaa !11
  %i.ct = call i64 @fwrite(ptr noundef nonnull %i.by, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i32 %2, ptr %i.bx, align 4, !tbaa !11
  %i.cu = call i64 @fwrite(ptr noundef nonnull %i.bx, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i16 258, ptr %i.bw, align 2, !tbaa !21
  %i.cv = call i64 @fwrite(ptr noundef nonnull %i.bw, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store i16 3, ptr %i.bv, align 2, !tbaa !21
  %i.cw = call i64 @fwrite(ptr noundef nonnull %i.bv, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i32 %3, ptr %i.bu, align 4, !tbaa !11
  %i.cx = call i64 @fwrite(ptr noundef nonnull %i.bu, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.cy = icmp samesign ugt i32 %3, 1             ; 4 uses
  br i1 %i.cy, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i32 194, ptr %i.bt, align 4, !tbaa !11
  %i.cz = call i64 @fwrite(ptr noundef nonnull %i.bt, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %4 = mul nuw nsw i32 %3, 12
  %5 = add nuw nsw i32 %4, 210
  %6 = shl nuw nsw i32 %3, 1                      ; 2 uses
  %7 = add nuw nsw i32 %6, 194
  %8 = add nuw nsw i32 %6, 202
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i16 32, ptr %i.bs, align 2, !tbaa !21
  %i.da = call i64 @fwrite(ptr noundef nonnull %i.bs, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store i16 0, ptr %i.br, align 2, !tbaa !21
  %i.db = call i64 @fwrite(ptr noundef nonnull %i.br, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %9 = phi i32 [ 210, %bb.c ], [ %5, %bb.b ]
  %10 = phi i32 [ 194, %bb.c ], [ %7, %bb.b ]
  %i.dc = phi i32 [ 202, %bb.c ], [ %8, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i16 259, ptr %i.bq, align 2, !tbaa !21
  %i.dd = call i64 @fwrite(ptr noundef nonnull %i.bq, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i16 3, ptr %i.bp, align 2, !tbaa !21
  %i.de = call i64 @fwrite(ptr noundef nonnull %i.bp, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i32 1, ptr %i.bo, align 4, !tbaa !11
  %i.df = call i64 @fwrite(ptr noundef nonnull %i.bo, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i16 1, ptr %i.bn, align 2, !tbaa !21
  %i.dg = call i64 @fwrite(ptr noundef nonnull %i.bn, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i16 0, ptr %i.bm, align 2, !tbaa !21
  %i.dh = call i64 @fwrite(ptr noundef nonnull %i.bm, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i16 262, ptr %i.bl, align 2, !tbaa !21
  %i.di = call i64 @fwrite(ptr noundef nonnull %i.bl, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i16 3, ptr %i.bk, align 2, !tbaa !21
  %i.dj = call i64 @fwrite(ptr noundef nonnull %i.bk, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store i32 1, ptr %i.bj, align 4, !tbaa !11
  %i.dk = call i64 @fwrite(ptr noundef nonnull %i.bj, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.dl = icmp samesign ugt i32 %3, 2
  %i.dm = select i1 %i.dl, i16 2, i16 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i16 %i.dm, ptr %i.bi, align 2, !tbaa !21
  %i.dn = call i64 @fwrite(ptr noundef nonnull %i.bi, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i16 0, ptr %i.bh, align 2, !tbaa !21
  %i.do = call i64 @fwrite(ptr noundef nonnull %i.bh, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i16 273, ptr %i.bg, align 2, !tbaa !21
  %i.dp = call i64 @fwrite(ptr noundef nonnull %i.bg, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i16 4, ptr %i.bf, align 2, !tbaa !21
  %i.dq = call i64 @fwrite(ptr noundef nonnull %i.bf, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i32 1, ptr %i.be, align 4, !tbaa !11
  %i.dr = call i64 @fwrite(ptr noundef nonnull %i.be, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i32 %9, ptr %i.bd, align 4, !tbaa !11
  %i.ds = call i64 @fwrite(ptr noundef nonnull %i.bd, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i16 277, ptr %i.bc, align 2, !tbaa !21
  %i.dt = call i64 @fwrite(ptr noundef nonnull %i.bc, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i16 3, ptr %i.bb, align 2, !tbaa !21
  %i.du = call i64 @fwrite(ptr noundef nonnull %i.bb, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i32 1, ptr %i.ba, align 4, !tbaa !11
  %i.dv = call i64 @fwrite(ptr noundef nonnull %i.ba, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.dw = trunc nuw nsw i32 %3 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i16 %i.dw, ptr %i.az, align 2, !tbaa !21
  %i.dx = call i64 @fwrite(ptr noundef nonnull %i.az, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i16 0, ptr %i.ay, align 2, !tbaa !21
  %i.dy = call i64 @fwrite(ptr noundef nonnull %i.ay, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i16 278, ptr %i.ax, align 2, !tbaa !21
  %i.dz = call i64 @fwrite(ptr noundef nonnull %i.ax, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i16 4, ptr %i.aw, align 2, !tbaa !21
  %i.ea = call i64 @fwrite(ptr noundef nonnull %i.aw, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i32 1, ptr %i.av, align 4, !tbaa !11
  %i.eb = call i64 @fwrite(ptr noundef nonnull %i.av, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i32 %2, ptr %i.au, align 4, !tbaa !11
  %i.ec = call i64 @fwrite(ptr noundef nonnull %i.au, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i16 279, ptr %i.at, align 2, !tbaa !21
  %i.ed = call i64 @fwrite(ptr noundef nonnull %i.at, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i16 4, ptr %i.as, align 2, !tbaa !21
  %i.ee = call i64 @fwrite(ptr noundef nonnull %i.as, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i32 1, ptr %i.ar, align 4, !tbaa !11
  %i.ef = call i64 @fwrite(ptr noundef nonnull %i.ar, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.eg = shl nuw nsw i32 %3, 2                   ; 2 uses
  %i.eh = mul i32 %2, %1
  %i.ei = mul i32 %i.eh, %i.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i32 %i.ei, ptr %i.aq, align 4, !tbaa !11
  %i.ej = call i64 @fwrite(ptr noundef nonnull %i.aq, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i16 282, ptr %i.ap, align 2, !tbaa !21
  %i.ek = call i64 @fwrite(ptr noundef nonnull %i.ap, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i16 5, ptr %i.ao, align 2, !tbaa !21
  %i.el = call i64 @fwrite(ptr noundef nonnull %i.ao, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 1, ptr %i.an, align 4, !tbaa !11
  %i.em = call i64 @fwrite(ptr noundef nonnull %i.an, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i32 %10, ptr %i.am, align 4, !tbaa !11
  %i.en = call i64 @fwrite(ptr noundef nonnull %i.am, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i16 283, ptr %i.al, align 2, !tbaa !21
  %i.eo = call i64 @fwrite(ptr noundef nonnull %i.al, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i16 5, ptr %i.ak, align 2, !tbaa !21
  %i.ep = call i64 @fwrite(ptr noundef nonnull %i.ak, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i32 1, ptr %i.aj, align 4, !tbaa !11
  %i.eq = call i64 @fwrite(ptr noundef nonnull %i.aj, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i32 %i.dc, ptr %i.ai, align 4, !tbaa !11
  %i.er = call i64 @fwrite(ptr noundef nonnull %i.ai, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i16 296, ptr %i.ah, align 2, !tbaa !21
  %i.es = call i64 @fwrite(ptr noundef nonnull %i.ah, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i16 3, ptr %i.ag, align 2, !tbaa !21
  %i.et = call i64 @fwrite(ptr noundef nonnull %i.ag, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i32 1, ptr %i.af, align 4, !tbaa !11
  %i.eu = call i64 @fwrite(ptr noundef nonnull %i.af, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i16 2, ptr %i.ae, align 2, !tbaa !21
  %i.ev = call i64 @fwrite(ptr noundef nonnull %i.ae, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i16 0, ptr %i.ad, align 2, !tbaa !21
  %i.ew = call i64 @fwrite(ptr noundef nonnull %i.ad, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i16 339, ptr %i.ac, align 2, !tbaa !21
  %i.ex = call i64 @fwrite(ptr noundef nonnull %i.ac, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i16 3, ptr %i.ab, align 2, !tbaa !21
  %i.ey = call i64 @fwrite(ptr noundef nonnull %i.ab, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 %3, ptr %i.aa, align 4, !tbaa !11
  %i.ez = call i64 @fwrite(ptr noundef nonnull %i.aa, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.cy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fa = shl nuw nsw i32 %3, 1
  %i.fb = add nuw nsw i32 %i.fa, 210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %i.fb, ptr %i.z, align 4, !tbaa !11
  %i.fc = call i64 @fwrite(ptr noundef nonnull %i.z, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i16 3, ptr %i.y, align 2, !tbaa !21
  %i.fd = call i64 @fwrite(ptr noundef nonnull %i.y, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i16 0, ptr %i.x, align 2, !tbaa !21
  %i.fe = call i64 @fwrite(ptr noundef nonnull %i.x, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i16 340, ptr %i.w, align 2, !tbaa !21
  %i.ff = call i64 @fwrite(ptr noundef nonnull %i.w, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i16 11, ptr %i.v, align 2, !tbaa !21
  %i.fg = call i64 @fwrite(ptr noundef nonnull %i.v, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %3, ptr %i.u, align 4, !tbaa !11
  %i.fh = call i64 @fwrite(ptr noundef nonnull %i.u, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fi = add nuw nsw i32 %i.eg, 210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i32 %i.fi, ptr %i.t, align 4, !tbaa !11
  %i.fj = call i64 @fwrite(ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !23
  %i.fk = call i64 @fwrite(ptr noundef nonnull %i.s, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i16 341, ptr %i.r, align 2, !tbaa !21
  %i.fl = call i64 @fwrite(ptr noundef nonnull %i.r, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i16 11, ptr %i.q, align 2, !tbaa !21
  %i.fm = call i64 @fwrite(ptr noundef nonnull %i.q, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 %3, ptr %i.p, align 4, !tbaa !11
  %i.fn = call i64 @fwrite(ptr noundef nonnull %i.p, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.cy, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.fo = shl nuw nsw i32 %3, 3
  %i.fp = add nuw nsw i32 %i.fo, 210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %i.fp, ptr %i.o, align 4, !tbaa !11
  %i.fq = call i64 @fwrite(ptr noundef nonnull %i.o, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 0, ptr %i.m, align 4, !tbaa !11
  %i.fr = call i64 @fwrite(ptr noundef nonnull %i.m, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.04.i = phi i32 [ 0, %bb.k ], [ %i.ft, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i16 32, ptr %i.l, align 2, !tbaa !21
  %i.fs = call i64 @fwrite(ptr noundef nonnull %i.l, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ft = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ft, %3
  br i1 %exitcond.not.i, label %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit, label %bb.l, !llvm.loop !18

_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 300, ptr %i.k, align 4, !tbaa !11
  %i.fu = call i64 @fwrite(ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 1, ptr %i.j, align 4, !tbaa !11
  %i.fv = call i64 @fwrite(ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 300, ptr %i.i, align 4, !tbaa !11
  %i.fw = call i64 @fwrite(ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 1, ptr %i.h, align 4, !tbaa !11
  %i.fx = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit
  %.04.i116 = phi i32 [ 0, %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit ], [ %i.fz, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 3, ptr %i.g, align 2, !tbaa !21
  %i.fy = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fz = add nuw nsw i32 %.04.i116, 1            ; 2 uses
  %exitcond.not.i117 = icmp eq i32 %i.fz, %3
  br i1 %exitcond.not.i117, label %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118, label %bb.m, !llvm.loop !18

_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118: ; preds = %bb.m, %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118
  %.04.i119 = phi i32 [ %i.gb, %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118 ], [ 0, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !23
  %i.ga = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gb = add nuw nsw i32 %.04.i119, 1            ; 2 uses
  %exitcond.not.i120 = icmp eq i32 %i.gb, %3
  br i1 %exitcond.not.i120, label %_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit, label %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118, !llvm.loop !19

_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit: ; preds = %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118, %_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit
  %.04.i121 = phi i32 [ %i.gd, %_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit ], [ 0, %_ZN7msdfgenL18writeValueRepeatedItEEvP8_IO_FILET_i.exit118 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !23
  %i.gc = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gd = add nuw nsw i32 %.04.i121, 1            ; 2 uses
  %exitcond.not.i122 = icmp eq i32 %i.gd, %3
  br i1 %exitcond.not.i122, label %_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit123, label %_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit, !llvm.loop !19

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !23
  %i.ge = call i64 @fwrite(ptr noundef nonnull %i.n, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 0, ptr %i.m, align 4, !tbaa !11
  %i.gf = call i64 @fwrite(ptr noundef nonnull %i.m, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 300, ptr %i.d, align 4, !tbaa !11
  %i.gg = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.c, align 4, !tbaa !11
  %i.gh = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 300, ptr %i.b, align 4, !tbaa !11
  %i.gi = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !11
  %i.gj = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7msdfgenL18writeValueRepeatedIfEEvP8_IO_FILET_i.exit123

end_hunk_0
