Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmetadata?download=true
inline.NumInlined: 93
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac21encodeGainmapMetadataEPKS0_RSt6vectorIhSaIhEE:bb.a
  %i.av = load i32, ptr %i.p, align 4, !tbaa !6
  %.not114 = icmp eq i32 %i.av, %i.j
  br i1 %.not114, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !6
  %.not115 = icmp eq i32 %i.aw, %i.j
  br i1 %.not115, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.c
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.2 = phi i8 [ 0, %bb.n ], [ %.0104, %bb.m ]    ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !6
  %.not111.1 = icmp eq i32 %i.ay, %i.j
  br i1 %.not111.1, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !6
  %.not112.1 = icmp eq i32 %i.ba, %i.j
  br i1 %.not112.1, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !6
  %.not113.1 = icmp eq i32 %i.bc, %i.j
  br i1 %.not113.1, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !6
  %.not114.1 = icmp eq i32 %i.be, %i.j
  br i1 %.not114.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !6
  %.not115.1 = icmp eq i32 %i.bg, %i.j
  br i1 %.not115.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.2.1 = phi i8 [ 0, %bb.u ], [ %.2, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !6
  %.not111.2 = icmp eq i32 %i.bi, %i.j
  br i1 %.not111.2, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !6
  %.not112.2 = icmp eq i32 %i.bk, %i.j
  br i1 %.not112.2, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !6
  %.not113.2 = icmp eq i32 %i.bm, %i.j
  br i1 %.not113.2, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !6
  %.not114.2 = icmp eq i32 %i.bo, %i.j
  br i1 %.not114.2, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !6
  %.not115.2 = icmp eq i32 %i.bq, %i.j
  br i1 %.not115.2, label %bb.d, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  br label %bb.d

bb.ab:                                            ; preds = %_ZN8ultrahdr13streamWriteU8ERSt6vectorIhSaIhEEh.exit
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.j)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !28
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.ac
  %indvars.iv128 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next129, %bb.ac ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv128
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv128
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cc)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv128
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.ce)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv128
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cg)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv128
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.ci)
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count
  br i1 %exitcond132.not, label %.loopexit, label %bb.ac, !llvm.loop !37

bb.ad:                                            ; preds = %_ZN8ultrahdr13streamWriteU8ERSt6vectorIhSaIhEEh.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !28
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.ck)
  %i.cl = load i32, ptr %i.i, align 4, !tbaa !26
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cn)
  %i.co = load i32, ptr %i.k, align 4, !tbaa !27
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ae
  %indvars.iv123 = phi i64 [ 0, %bb.ad ], [ %indvars.iv.next124, %bb.ae ] ; 11 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv123
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cu)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv123
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cw)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv123
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cy)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv123
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.da)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv123
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.dc)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv123
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.de)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv123
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.dg)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv123
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.di)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv123
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteS32ERSt6vectorIhSaIhEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.dk)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv123
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !6
  tail call void @_ZN8ultrahdr14streamWriteU32ERSt6vectorIhSaIhEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.dm)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count
  br i1 %exitcond127.not, label %.loopexit, label %bb.ae, !llvm.loop !38

.loopexit:                                        ; preds = %bb.ae, %bb.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac21decodeGainmapMetadataERKSt6vectorIhSaIhEEPS0_(ptr dead_on_unwind noalias nofree writable sret(%struct.uhdr_error_info) align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 27 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(50) %i.e, ptr noundef nonnull align 1 dereferenceable(50) @.str.3, i64 50, i1 false)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !47
  %i.h = load ptr, ptr %1, align 8, !tbaa !13, !noalias !47 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %.not.i = icmp ugt i64 %i.k, 1
  br i1 %.not.i, label %bb.d, label %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit

_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit: ; preds = %bb.c
  store i32 4, ptr %0, align 4, !tbaa !18, !alias.scope !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !19, !alias.scope !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = trunc nuw nsw i64 %i.k to i32
  %i.o = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 256, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %i.n) #17 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !18
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %.thread, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %3 = load i16, ptr %i.h, align 1, !noalias !47  ; 2 uses
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  store i64 2, ptr %i.a, align 8, !tbaa !15, !noalias !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false), !alias.scope !47
  %.not130 = icmp eq i16 %3, 0
  br i1 %.not130, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit, %bb.d
  %.0170173176 = phi i16 [ %4, %bb.d ], [ -1, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit ]
  store i32 6, ptr %0, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = zext i16 %.0170173176 to i32
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %i.r) #17 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %.not.i163 = icmp ugt i64 %i.k, 3
  br i1 %.not.i163, label %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread, label %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164

_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread: ; preds = %bb.e
  store i64 4, ptr %i.a, align 8, !tbaa !15, !noalias !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.t, i8 0, i64 256, i1 false), !alias.scope !48
  br label %bb.f

_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164: ; preds = %bb.e
  store i32 4, ptr %0, align 4, !tbaa !18, !alias.scope !48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.u, align 4, !tbaa !19, !alias.scope !48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = trunc nuw nsw i64 %i.k to i32
  %i.x = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 256, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %i.w) #17 ; 0 uses
  %.pr177 = load i32, ptr %0, align 4, !tbaa !18
  %.not131 = icmp eq i32 %.pr177, 0
  br i1 %.not131, label %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge, label %.loopexit

_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge: ; preds = %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !49
  %.pre200 = load ptr, ptr %1, align 8, !tbaa !13, !noalias !49 ; 2 uses
  %.pre202 = ptrtoint ptr %.pre to i64
  %.pre203 = ptrtoint ptr %.pre200 to i64
  %.pre205 = sub i64 %.pre202, %.pre203
  br label %bb.f

bb.f:                                             ; preds = %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread
  %.pre-phi206 = phi i64 [ %.pre205, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge ], [ %i.k, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread ] ; 2 uses
  %i.y = phi ptr [ %.pre200, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge ], [ %i.h, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread ]
  %i.z = phi i64 [ 2, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge ], [ 4, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %.not.i165 = icmp ult i64 %i.z, %.pre-phi206
  br i1 %.not.i165, label %bb.g, label %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit

_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit: ; preds = %bb.f
  store i32 4, ptr %0, align 4, !tbaa !18, !alias.scope !49
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.aa, align 4, !tbaa !19, !alias.scope !49
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = trunc nuw nsw i64 %i.z to i32
  %i.ad = trunc nuw nsw i64 %.pre-phi206 to i32
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ab, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %i.ac, i32 noundef %i.ad) #17 ; 0 uses
  %.pr179 = load i32, ptr %0, align 4, !tbaa !18
  %.not132 = icmp eq i32 %.pr179, 0
  br i1 %.not132, label %.thread183, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.af = or disjoint i64 %i.z, 1
  store i64 %i.af, ptr %i.a, align 8, !tbaa !15, !noalias !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12, !noalias !49 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false), !alias.scope !49
  %i.ai = lshr i8 %i.ah, 6                        ; 2 uses
  %i.aj = or i8 %i.ai, 1                          ; 2 uses
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = icmp sgt i8 %i.ah, -1
  %i.am = icmp eq i8 %i.aj, 3
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %.thread183, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 6, ptr %0, align 4, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.an, align 4, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ao, i64 noundef 256, ptr noundef nonnull @.str.5, i32 noundef 2) #17 ; 0 uses
  br label %.loopexit

.thread183:                                       ; preds = %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit, %bb.g
  %i.aq = phi i32 [ %i.ak, %bb.g ], [ 3, %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit ] ; 4 uses
  %i.ar = phi i8 [ %i.ai, %bb.g ], [ 3, %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit ]
  %.0169182186 = phi i8 [ %i.ah, %bb.g ], [ -1, %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 137
  %.lobit = and i8 %i.ar, 1
  store i8 %.lobit, ptr %i.as, align 1, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.au = lshr i8 %.0169182186, 2
  %.lobit133 = and i8 %i.au, 1
  store i8 %.lobit133, ptr %i.at, align 4, !tbaa !25
  %i.av = and i8 %.0169182186, 8
  %.not134 = icmp eq i8 %i.av, 0
  br i1 %.not134, label %bb.t, label %bb.i

bb.i:                                             ; preds = %.thread183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 1, ptr %i.b, align 4, !tbaa !6
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.aw = load i32, ptr %0, align 4, !tbaa !18
  %.not150 = icmp eq i32 %i.aw, 0
  br i1 %.not150, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ay = load i32, ptr %0, align 4, !tbaa !18
  %.not151 = icmp eq i32 %i.ay, 0
  br i1 %.not151, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.b, align 4, !tbaa !6   ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bc = load i32, ptr %0, align 4, !tbaa !18
  %.not152 = icmp eq i32 %i.bc, 0
  br i1 %.not152, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 108
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.r
  %indvars.iv = phi i64 [ 0, %bb.l ], [ %indvars.iv.next, %bb.r ] ; 11 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bo = load i32, ptr %0, align 4, !tbaa !18
  %.not153 = icmp eq i32 %i.bo, 0
  br i1 %.not153, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.az, ptr %i.bp, align 4, !tbaa !6
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.br = load i32, ptr %0, align 4, !tbaa !18
  %.not154 = icmp eq i32 %i.br, 0
  br i1 %.not154, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  store i32 %i.az, ptr %i.bs, align 4, !tbaa !6
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bu = load i32, ptr %0, align 4, !tbaa !18
  %.not155 = icmp eq i32 %i.bu, 0
  br i1 %.not155, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  store i32 %i.az, ptr %i.bv, align 4, !tbaa !6
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bx = load i32, ptr %0, align 4, !tbaa !18
  %.not156 = icmp eq i32 %i.bx, 0
  br i1 %.not156, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  store i32 %i.az, ptr %i.by, align 4, !tbaa !6
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ca = load i32, ptr %0, align 4, !tbaa !18
  %.not157 = icmp eq i32 %i.ca, 0
  br i1 %.not157, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge160, label %bb.m, !llvm.loop !45

bb.s:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

bb.t:                                             ; preds = %.thread183
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cd = load i32, ptr %0, align 4, !tbaa !18
  %.not135 = icmp eq i32 %i.cd, 0
  br i1 %.not135, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 124
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFloatToFractionEPKNS_25uhdr_gainmap_metadata_extEPS0_:bb.a
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.ct = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs)
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load float, ptr %i.cu, align 4, !tbaa !32
  %i.cy = fpext contract float %i.cx to double
  %i.cz = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cw, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.cy) #17 ; 0 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.db = load float, ptr %i.da, align 4, !tbaa !32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.de = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd)
  br i1 %i.de, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dg, align 4, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load float, ptr %i.df, align 4, !tbaa !32
  %i.dj = fpext contract float %i.di to double
  %i.dk = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dh, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.dj) #17 ; 0 uses
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !32
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.dp = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do)
  br i1 %i.dp, label %bb.j, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dr, align 4, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load float, ptr %i.dq, align 4, !tbaa !32
  %i.du = fpext contract float %i.dt to double
  %i.dv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ds, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.du) #17 ; 0 uses
  br label %bb.aa

.critedge:                                        ; preds = %bb.j
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge
  %i.dw = load i32, ptr %i.ay, align 4, !tbaa !6  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !6
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !6
  %i.dz = load i32, ptr %i.az, align 4, !tbaa !6  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !6
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.dz, ptr %i.eb, align 4, !tbaa !6
  %i.ec = load i32, ptr %2, align 4, !tbaa !6     ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !6
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !6
  %i.ef = load i32, ptr %i.bb, align 4, !tbaa !6  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !6
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !6
  %i.ei = load i32, ptr %i.bd, align 4, !tbaa !6  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !6
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !6
  %i.el = load i32, ptr %i.be, align 4, !tbaa !6  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.el, ptr %i.em, align 4, !tbaa !6
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.el, ptr %i.en, align 4, !tbaa !6
  %i.eo = load i32, ptr %i.bg, align 4, !tbaa !6  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !6
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.eo, ptr %i.eq, align 4, !tbaa !6
  %i.er = load i32, ptr %i.bh, align 4, !tbaa !6  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.er, ptr %i.es, align 4, !tbaa !6
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 %i.er, ptr %i.et, align 4, !tbaa !6
  %i.eu = load i32, ptr %i.bj, align 4, !tbaa !6  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !6
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !6
  %i.ex = load i32, ptr %i.bk, align 4, !tbaa !6  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !6
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !54
  %i.fc = fpext contract float %i.fb to double
  %i.fd = tail call contract double @log2(double noundef %i.fc) #17, !tbaa !6
  %i.fe = fptrunc contract double %i.fd to float
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fh = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.fe, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fg)
  br i1 %i.fh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fi, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load float, ptr %i.fa, align 4, !tbaa !54
  %i.fl = fpext contract float %i.fk to double
  %i.fm = tail call contract double @log2(double noundef %i.fl) #17, !tbaa !6
  %i.fn = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fj, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.fm) #17 ; 0 uses
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !55
  %i.fq = fpext contract float %i.fp to double
  %i.fr = tail call contract double @log2(double noundef %i.fq) #17, !tbaa !6
  %i.fs = fptrunc contract double %i.fr to float
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.fv = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.fs, ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fu)
  br i1 %i.fv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fw, align 4, !tbaa !19
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load float, ptr %i.fo, align 8, !tbaa !55
  %i.fz = fpext contract float %i.fy to double
  %i.ga = tail call contract double @log2(double noundef %i.fz) #17, !tbaa !6
  %i.gb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fx, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.ga) #17 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.w, %bb.y, %bb.z, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 omnipotent char", !7, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!10 = !{!9, !8, i64 8}
!11 = !{!9, !8, i64 16}
!12 = !{!4, !4, i64 0}
!13 = !{!9, !8, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTS14uhdr_codec_err", !4, i64 0}
!17 = !{!"_ZTS15uhdr_error_info", !16, i64 0, !5, i64 4, !4, i64 8}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !5, i64 4}
!20 = !{!"bool", !4, i64 0}
!21 = !{!"_ZTSN8ultrahdr26uhdr_gainmap_metadata_fracE", !4, i64 0, !4, i64 12, !4, i64 24, !4, i64 36, !4, i64 48, !4, i64 60, !4, i64 72, !4, i64 84, !4, i64 96, !4, i64 108, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !20, i64 136, !20, i64 137}
!22 = !{!21, !20, i64 137}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!21, !20, i64 136}
!26 = !{!21, !5, i64 124}
!27 = !{!21, !5, i64 132}
!28 = !{!21, !5, i64 120}
!29 = !{!21, !5, i64 128}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"float", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTS21uhdr_gainmap_metadata", !4, i64 0, !4, i64 12, !4, i64 24, !4, i64 36, !4, i64 48, !31, i64 60, !31, i64 64, !5, i64 68}
!34 = !{!33, !5, i64 68}
!35 = !{!"short", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !"_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm"}
!40 = distinct !{!40, !39, !"_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm: argument 0"}
!41 = distinct !{!41, !"_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm"}
!42 = distinct !{!42, !41, !"_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm: argument 0"}
!43 = distinct !{!43, !"_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm"}
!44 = distinct !{!44, !43, !"_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm: argument 0"}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = !{!40}
!48 = !{!42}
!49 = !{!44}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !14, i64 8, !4, i64 16}
!52 = !{!51, !14, i64 8}
!53 = distinct !{!53, !30}
!54 = !{!33, !31, i64 60}
!55 = !{!33, !31, i64 64}
end_hunk_1
