Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/core?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@b3Free:bb.a
  %i.b = load ptr, ptr @b3_freeFcn, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.b(ptr noundef nonnull %0) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = trunc i64 %1 to i32
  %i.d = atomicrmw sub ptr @b3_byteCount, i32 %i.c seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden ptr @b3GrowAlloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %b3Alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr @b3_byteCount, i32 %2 seq_cst, align 4 ; 0 uses
  %i.c = add i32 %2, 15
  %i.d = and i32 %i.c, -16                        ; 2 uses
  %i.e = load ptr, ptr @b3_allocFcn, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr %i.e(i32 noundef %i.d, i32 noundef 16) #16, !inline_history !12
  br label %b3Alloc.exit

bb.d:                                             ; preds = %bb.b
  %i.g = sext i32 %i.d to i64
  %i.h = tail call noalias align 16 ptr @aligned_alloc(i64 noundef 16, i64 noundef %i.g) #17
  br label %b3Alloc.exit

b3Alloc.exit:                                     ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %bb.e, label %b3Free.exit

bb.e:                                             ; preds = %b3Alloc.exit
  %i.j = zext nneg i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.i, ptr align 1 %0, i64 %i.j, i1 false)
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %b3Free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @b3_freeFcn, align 8, !tbaa !11 ; 2 uses
  %.not.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.l(ptr noundef nonnull %0) #16, !inline_history !14
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %0) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = atomicrmw sub ptr @b3_byteCount, i32 %1 seq_cst, align 4 ; 0 uses
  br label %b3Free.exit

b3Free.exit:                                      ; preds = %bb.i, %bb.e, %b3Alloc.exit
  ret ptr %.1.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @b3GetByteCount() local_unnamed_addr #10 {
bb.a:
  %i.a = load atomic i32, ptr @b3_byteCount seq_cst, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @b3AllocZeroed(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %b3Alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = atomicrmw add ptr @b3_byteCount, i32 %i.b seq_cst, align 4 ; 0 uses
  %i.d = add i32 %i.b, 15
  %i.e = and i32 %i.d, -16                        ; 2 uses
  %i.f = load ptr, ptr @b3_allocFcn, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr %i.f(i32 noundef %i.e, i32 noundef 16) #16, !inline_history !12
  br label %b3Alloc.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sext i32 %i.e to i64
  %i.i = tail call noalias align 16 ptr @aligned_alloc(i64 noundef 16, i64 noundef %i.h) #17
  br label %b3Alloc.exit

b3Alloc.exit:                                     ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1.i, i8 0, i64 %0, i1 false)
  ret ptr %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @b3StrCpy(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.b) #16 ; 0 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.b
  store i8 0, ptr %i.d, align 1, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i64 1, 0) i64 @b3Hash64NonZero(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 9 uses
  %i.c = icmp samesign ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.h, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i32 %1, 3
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = xor i64 %i.b, 4766890152743124950        ; 2 uses
  %i.f = icmp samesign ugt i32 %1, 7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %.0.copyload.i6 = load i64, ptr %0, align 1
  %.0.copyload.i = load i64, ptr %i.h, align 1
  br label %rapidhash_internal.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %.0.copyload.i36 = load i32, ptr %0, align 1
  %i.j = zext i32 %.0.copyload.i36 to i64
  %.0.copyload.i35 = load i32, ptr %i.i, align 1
  %i.k = zext i32 %.0.copyload.i35 to i64
  br label %rapidhash_internal.exit

bb.g:                                             ; preds = %bb.c
  %i.l = load i8, ptr %0, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 45
  %i.o = getelementptr i8, ptr %0, i64 %i.b
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.n, %i.r
  %i.t = lshr i64 %i.b, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  br label %rapidhash_internal.exit

bb.h:                                             ; preds = %bb.b
  %i.x = icmp samesign ugt i32 %1, 112
  br i1 %i.x, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.h, %.preheader
  %.0122.i = phi i64 [ %i.cq, %.preheader ], [ %i.b, %bb.h ]
  %.0120.i = phi ptr [ %i.cp, %.preheader ], [ %0, %bb.h ] ; 15 uses
  %.0119.i = phi i64 [ %i.ag, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0118.i = phi i64 [ %i.aq, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0117.i = phi i64 [ %i.ba, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0116.i = phi i64 [ %i.bk, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0115.i = phi i64 [ %i.bu, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0114.i = phi i64 [ %i.ce, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0.i = phi i64 [ %i.co, %.preheader ], [ 4766890152743124950, %bb.h ]
  %.0.copyload.i20 = load i64, ptr %.0120.i, align 1
  %i.y = xor i64 %.0.copyload.i20, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.0120.i, i64 8
  %.0.copyload.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i19, %.0119.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0120.i, i64 16
  %.0.copyload.i18 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i18, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.0120.i, i64 24
  %.0.copyload.i17 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i17, %.0118.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0120.i, i64 32
  %.0.copyload.i16 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i16, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.0120.i, i64 40
  %.0.copyload.i15 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i15, %.0117.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0120.i, i64 48
  %.0.copyload.i14 = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i14, 5573817676018592327
  %i.bd = getelementptr inbounds nuw i8, ptr %.0120.i, i64 56
  %.0.copyload.i13 = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i13, %.0116.i
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0120.i, i64 64
  %.0.copyload.i12 = load i64, ptr %i.bl, align 1
  %i.bm = xor i64 %.0.copyload.i12, -6884282663029611473
  %i.bn = getelementptr inbounds nuw i8, ptr %.0120.i, i64 72
  %.0.copyload.i11 = load i64, ptr %i.bn, align 1
  %i.bo = xor i64 %.0.copyload.i11, %.0115.i
  %i.bp = zext i64 %i.bm to i128
  %i.bq = zext i64 %i.bo to i128
  %i.br = mul nuw i128 %i.bq, %i.bp               ; 2 uses
  %i.bs = lshr i128 %i.br, 64
  %i.bt = xor i128 %i.bs, %i.br
  %i.bu = trunc i128 %i.bt to i64                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0120.i, i64 80
  %.0.copyload.i10 = load i64, ptr %i.bv, align 1
  %i.bw = xor i64 %.0.copyload.i10, -1800455987208640293
  %i.bx = getelementptr inbounds nuw i8, ptr %.0120.i, i64 88
  %.0.copyload.i9 = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i9, %.0114.i
  %i.bz = zext i64 %i.bw to i128
  %i.ca = zext i64 %i.by to i128
  %i.cb = mul nuw i128 %i.ca, %i.bz               ; 2 uses
  %i.cc = lshr i128 %i.cb, 64
  %i.cd = xor i128 %i.cc, %i.cb
  %i.ce = trunc i128 %i.cd to i64                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0120.i, i64 96
  %.0.copyload.i8 = load i64, ptr %i.cf, align 1
  %i.cg = xor i64 %.0.copyload.i8, -8003715239535429492
  %i.ch = getelementptr inbounds nuw i8, ptr %.0120.i, i64 104
  %.0.copyload.i7 = load i64, ptr %i.ch, align 1
  %i.ci = xor i64 %.0.copyload.i7, %.0.i
  %i.cj = zext i64 %i.cg to i128
  %i.ck = zext i64 %i.ci to i128
  %i.cl = mul nuw i128 %i.ck, %i.cj               ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = xor i128 %i.cm, %i.cl
  %i.co = trunc i128 %i.cn to i64                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0120.i, i64 112 ; 3 uses
  %i.cq = add i64 %.0122.i, -112                  ; 5 uses
  %i.cr = icmp ugt i64 %i.cq, 112
  br i1 %i.cr, label %.preheader, label %bb.i, !llvm.loop !15

bb.i:                                             ; preds = %.preheader
  %i.cs = xor i64 %i.aq, %i.ag
  %i.ct = xor i64 %i.cs, %i.ba
  %i.cu = xor i64 %i.ct, %i.bk
  %i.cv = xor i64 %i.cu, %i.bu
  %i.cw = xor i64 %i.cv, %i.ce
  %i.cx = xor i64 %i.cw, %i.co                    ; 2 uses
  %i.cy = icmp samesign ugt i64 %i.cq, 16
  br i1 %i.cy, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.h, %bb.i
  %.1.i111 = phi i64 [ %i.cx, %bb.i ], [ 4766890152743124950, %bb.h ]
  %.1121.i110 = phi ptr [ %i.cp, %bb.i ], [ %0, %bb.h ] ; 18 uses
  %.1123.i108 = phi i64 [ %i.cq, %bb.i ], [ %i.b, %bb.h ] ; 11 uses
  %.0.copyload.i32 = load i64, ptr %.1121.i110, align 1
  %i.cz = xor i64 %.0.copyload.i32, 5418857496715711651
  %i.da = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 8
  %.0.copyload.i31 = load i64, ptr %i.da, align 1
  %i.db = xor i64 %.0.copyload.i31, %.1.i111
  %i.dc = zext i64 %i.cz to i128
  %i.dd = zext i64 %i.db to i128
  %i.de = mul nuw i128 %i.dd, %i.dc               ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64                 ; 2 uses
  %i.di = icmp samesign ugt i64 %.1123.i108, 32
  br i1 %i.di, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 16
  %.0.copyload.i30 = load i64, ptr %i.dj, align 1
  %i.dk = xor i64 %.0.copyload.i30, 5418857496715711651
  %i.dl = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 24
  %.0.copyload.i29 = load i64, ptr %i.dl, align 1
  %i.dm = xor i64 %.0.copyload.i29, %i.dh
  %i.dn = zext i64 %i.dk to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = lshr i128 %i.dp, 64
  %i.dr = xor i128 %i.dq, %i.dp
  %i.ds = trunc i128 %i.dr to i64                 ; 2 uses
  %i.dt = icmp samesign ugt i64 %.1123.i108, 48
  br i1 %i.dt, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 32
  %.0.copyload.i28 = load i64, ptr %i.du, align 1
  %i.dv = xor i64 %.0.copyload.i28, -8378864009470890807
  %i.dw = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 40
  %.0.copyload.i27 = load i64, ptr %i.dw, align 1
  %i.dx = xor i64 %.0.copyload.i27, %i.ds
  %i.dy = zext i64 %i.dv to i128
  %i.dz = zext i64 %i.dx to i128
  %i.ea = mul nuw i128 %i.dz, %i.dy               ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = xor i128 %i.eb, %i.ea
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = icmp samesign ugt i64 %.1123.i108, 64
  br i1 %i.ee, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 48
  %.0.copyload.i26 = load i64, ptr %i.ef, align 1
  %i.eg = xor i64 %.0.copyload.i26, -8378864009470890807
  %i.eh = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 56
  %.0.copyload.i25 = load i64, ptr %i.eh, align 1
  %i.ei = xor i64 %.0.copyload.i25, %i.ed
  %i.ej = zext i64 %i.eg to i128
  %i.ek = zext i64 %i.ei to i128
  %i.el = mul nuw i128 %i.ek, %i.ej               ; 2 uses
  %i.em = lshr i128 %i.el, 64
  %i.en = xor i128 %i.em, %i.el
  %i.eo = trunc i128 %i.en to i64                 ; 2 uses
  %i.ep = icmp samesign ugt i64 %.1123.i108, 80
  br i1 %i.ep, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.eq = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 64
  %.0.copyload.i24 = load i64, ptr %i.eq, align 1
  %i.er = xor i64 %.0.copyload.i24, 5418857496715711651
  %i.es = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 72
  %.0.copyload.i23 = load i64, ptr %i.es, align 1
  %i.et = xor i64 %.0.copyload.i23, %i.eo
  %i.eu = zext i64 %i.er to i128
  %i.ev = zext i64 %i.et to i128
  %i.ew = mul nuw i128 %i.ev, %i.eu               ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = xor i128 %i.ex, %i.ew
  %i.ez = trunc i128 %i.ey to i64                 ; 2 uses
  %i.fa = icmp samesign ugt i64 %.1123.i108, 96
  br i1 %i.fa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fb = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 80
  %.0.copyload.i22 = load i64, ptr %i.fb, align 1
  %i.fc = xor i64 %.0.copyload.i22, -8378864009470890807
  %i.fd = getelementptr inbounds nuw i8, ptr %.1121.i110, i64 88
  %.0.copyload.i21 = load i64, ptr %i.fd, align 1
  %i.fe = xor i64 %.0.copyload.i21, %i.ez
  %i.ff = zext i64 %i.fc to i128
  %i.fg = zext i64 %i.fe to i128
  %i.fh = mul nuw i128 %i.fg, %i.ff               ; 2 uses
  %i.fi = lshr i128 %i.fh, 64
  %i.fj = xor i128 %i.fi, %i.fh
  %i.fk = trunc i128 %i.fj to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.thread, %bb.i
  %.1121.i109 = phi ptr [ %.1121.i110, %bb.n ], [ %.1121.i110, %bb.m ], [ %.1121.i110, %bb.l ], [ %.1121.i110, %bb.k ], [ %.1121.i110, %bb.j ], [ %.1121.i110, %.thread ], [ %i.cp, %bb.i ]
  %.1123.i107 = phi i64 [ %.1123.i108, %bb.n ], [ %.1123.i108, %bb.m ], [ %.1123.i108, %bb.l ], [ %.1123.i108, %bb.k ], [ %.1123.i108, %bb.j ], [ %.1123.i108, %.thread ], [ %i.cq, %bb.i ] ; 3 uses
  %.2.i = phi i64 [ %i.fk, %bb.n ], [ %i.ez, %bb.m ], [ %i.eo, %bb.l ], [ %i.ed, %bb.k ], [ %i.ds, %bb.j ], [ %i.dh, %.thread ], [ %i.cx, %bb.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.1121.i109, i64 %.1123.i107 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -16
  %.0.copyload.i34 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i34, %.1123.i107
  %i.fo = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %.0.copyload.i33 = load i64, ptr %i.fo, align 1
  br label %rapidhash_internal.exit

rapidhash_internal.exit:                          ; preds = %bb.e, %bb.f, %bb.g, %bb.o
  %.0103 = phi i64 [ %.0.copyload.i6, %bb.e ], [ %i.j, %bb.f ], [ %i.s, %bb.g ], [ %i.fn, %bb.o ]
  %.0102 = phi i64 [ %.0.copyload.i, %bb.e ], [ %i.k, %bb.f ], [ %i.w, %bb.g ], [ %.0.copyload.i33, %bb.o ]
  %.2124.i = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %.1123.i107, %bb.o ]
  %.3.i = phi i64 [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ 4766890152743124950, %bb.g ], [ %.2.i, %bb.o ]
  %i.fp = xor i64 %.0103, -8378864009470890807
  %i.fq = xor i64 %.3.i, %.0102
  %i.fr = zext i64 %i.fp to i128
  %i.fs = zext i64 %i.fq to i128
  %i.ft = mul nuw i128 %i.fs, %i.fr               ; 2 uses
  %i.fu = trunc i128 %i.ft to i64
  %i.fv = lshr i128 %i.ft, 64
  %i.fw = trunc nuw i128 %i.fv to i64
  %i.fx = xor i64 %i.fu, -6148914691236517206
  %i.fy = xor i64 %.2124.i, %i.fw
  %i.fz = xor i64 %i.fy, -8378864009470890807
  %i.ga = zext i64 %i.fx to i128
  %i.gb = zext i64 %i.fz to i128
  %i.gc = mul nuw i128 %i.gb, %i.ga               ; 2 uses
  %i.gd = lshr i128 %i.gc, 64
  %i.ge = xor i128 %i.gd, %i.gc
  %i.gf = trunc i128 %i.ge to i64
  %i.gg = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %rapidhash_internal.exit
  %.0 = phi i64 [ %i.gg, %rapidhash_internal.exit ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{ptr @b3Alloc}
!13 = !{!4, !4, i64 0}
!14 = !{ptr @b3Free}
!15 = distinct !{!15, !17}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"llvm.loop.mustprogress"}
end_hunk_0
