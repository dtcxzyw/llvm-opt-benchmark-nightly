Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/vba_extract?download=true
inline.NumInlined: 47
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_vba_readdir_new:bb.a

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %.not903 = icmp eq ptr %.10660, null
  br i1 %.not903, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  call void @free(ptr noundef nonnull %.10660) #15
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.not904 = icmp eq i32 %.32, 0
  br i1 %.not904, label %bb.mh, label %.thread1087

.thread1087:                                      ; preds = %bb.b, %bb.mf
  %.321067107910851093 = phi i32 [ %.32, %bb.mf ], [ 8, %bb.b ] ; 2 uses
  %.136451070107710861091 = phi ptr [ %.13645, %bb.mf ], [ null, %bb.b ] ; 2 uses
  %i.us = load i32, ptr %5, align 4, !tbaa !14    ; 2 uses
  %i.ut = icmp sgt i32 %i.us, -1
  br i1 %i.ut, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %.thread1087
  %i.uu = call i32 @close(i32 noundef %i.us) #15  ; 0 uses
  store i32 -1, ptr %5, align 4, !tbaa !14
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %.thread1087, %bb.mf
  %.321067107910851094 = phi i32 [ %.321067107910851093, %bb.mg ], [ %.321067107910851093, %.thread1087 ], [ 0, %bb.mf ] ; 2 uses
  %.136451070107710861092 = phi ptr [ %.136451070107710861091, %bb.mg ], [ %.136451070107710861091, %.thread1087 ], [ %.13645, %bb.mf ] ; 2 uses
  %i.uv = load ptr, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %.not905 = icmp eq ptr %i.uv, null
  br i1 %.not905, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  call void @free(ptr noundef nonnull %i.uv) #15
  store ptr null, ptr %i.d, align 8, !tbaa !10
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %i.uw = load ptr, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %.not906 = icmp eq ptr %i.uw, null
  br i1 %.not906, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  call void @free(ptr noundef nonnull %i.uw) #15
  store ptr null, ptr %i.c, align 8, !tbaa !10
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mj
  %.not907 = icmp eq ptr %.136451070107710861092, null
  br i1 %.not907, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @free(ptr noundef nonnull %.136451070107710861092) #15
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml
  %i.ux = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %.not908 = icmp eq ptr %i.ux, null
  br i1 %.not908, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  call void @free(ptr noundef nonnull %i.ux) #15
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mn, %bb.mo, %bb.a
  %.0702 = phi i32 [ %.321067107910851094, %bb.mn ], [ 3, %bb.a ], [ %.321067107910851094, %bb.mo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0702
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @cli_vba_inflate(i32 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca [4096 x i8], align 16             ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = icmp slt i32 %0, 0
  br i1 %i.d, label %.thread129, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @blobCreate() #15          ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread129, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.g = add nsw i64 %1, 3
  %i.h = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.g, i32 noundef 0) #15 ; 0 uses
  %i.i = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 1) #15
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.c, %.loopexit140
  %.073154 = phi i32 [ %.3, %.loopexit140 ], [ 1, %bb.c ]
  %.076153 = phi i32 [ %.177145, %.loopexit140 ], [ 0, %bb.c ]
  %i.k = icmp ne i32 %.073154, 0
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.loopexit
  %.174152 = phi i1 [ %i.k, %.preheader ], [ true, %.loopexit ]
  %.075151 = phi i32 [ 1, %.preheader ], [ %i.ef, %.loopexit ] ; 3 uses
  %.177150 = phi i32 [ %.076153, %.preheader ], [ %.6.ph, %.loopexit ] ; 16 uses
  %i.l = and i32 %.177150, 4095                   ; 10 uses
  %i.m = load i8, ptr %i.a, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i32
  %i.o = and i32 %.075151, %i.n
  %.not96 = icmp eq i32 %i.o, 0
  br i1 %.not96, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i = icmp eq i64 %i.p, 2
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @blobDestroy(ptr noundef nonnull %i.e) #15
  %.not100 = icmp eq ptr %2, null
  br i1 %.not100, label %.thread129, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %2, align 8, !tbaa !12
  br label %.thread129

bb.h:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i32 %i.l, 16
  %i.r = select i1 %i.q, i32 11, i32 12
  %i.s = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.u = icmp samesign ugt <4 x i32> %i.t, <i32 32, i32 64, i32 128, i32 256>
  %i.v = icmp samesign ugt i32 %i.l, 512
  %.neg104 = sext i1 %i.v to i32
  %i.w = icmp samesign ugt i32 %i.l, 1024
  %.neg105 = sext i1 %i.w to i32
  %i.x = icmp samesign ugt i32 %i.l, 2048
  %.neg106 = sext i1 %i.x to i32
  %i.y = bitcast <4 x i1> %i.u to i4
  %i.z = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.y)
  %i.aa = zext nneg i4 %i.z to i32
  %op.rdx = sub nsw i32 %.neg104, %i.aa
  %op.rdx175 = add nsw i32 %.neg105, %.neg106
  %op.rdx176 = add nsw i32 %op.rdx, %op.rdx175
  %op.rdx177 = add nsw i32 %op.rdx176, %i.r       ; 2 uses
  %i.ab = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %notmask = shl nsw i32 -1, %op.rdx177
  %i.ad = trunc nsw i32 %notmask to i16
  %i.ae = xor i16 %i.ad, -1
  %i.af = and i16 %i.ab, %i.ae                    ; 6 uses
  %i.ag = add nuw nsw i16 %i.af, 3                ; 7 uses
  %i.ah = lshr i32 %i.ac, %op.rdx177              ; 4 uses
  %i.ai = xor i32 %i.ah, -1                       ; 5 uses
  %i.aj = add i32 %.177150, %i.ai                 ; 2 uses
  %i.ak = zext nneg i16 %i.ag to i32              ; 4 uses
  %i.al = add i32 %i.aj, %i.ak
  %i.am = and i32 %i.al, 4095
  %i.an = icmp samesign ult i32 %i.am, %i.l
  %i.ao = add nuw nsw i32 %i.l, %i.ak
  %i.ap = icmp samesign ult i32 %i.ao, 4096
  %or.cond109 = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond109, label %bb.i, label %iter.check

bb.i:                                             ; preds = %bb.h
  %i.aq = and i32 %i.aj, 4095                     ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, %i.ak
  %i.as = icmp samesign ult i32 %i.ar, 4096
  br i1 %i.as, label %bb.j, label %iter.check

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i32 %i.l to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.at
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ax = zext nneg i16 %i.ag to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull align 1 dereferenceable(1) %i.aw, i64 %i.ax, i1 false)
  %i.ay = add i32 %.177150, %i.ak
  br label %.loopexit

iter.check:                                       ; preds = %bb.i, %bb.h
  %3 = zext i16 %i.af to i32
  %4 = add nuw nsw i32 %3, 3                      ; 5 uses
  %min.iters.check = icmp eq i16 %i.af, 0
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.az = add nuw nsw i16 %i.af, 2
  %i.ba = trunc i32 %.177150 to i12               ; 2 uses
  %i.bb = trunc i16 %i.az to i12                  ; 2 uses
  %i.bc = xor i12 %i.ba, -1
  %i.bd = icmp ult i12 %i.bc, %i.bb
  %i.be = trunc i32 %i.ah to i12
  %i.bf = sub i12 %i.be, %i.ba
  %i.bg = icmp ult i12 %i.bf, %i.bb
  %i.bh = icmp ugt i16 %i.af, 4093
  %i.bi = or i1 %i.bg, %i.bh
  %i.bj = or i1 %i.bd, %i.bi
  br i1 %i.bj, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bk = zext i32 %.177150 to i64
  %.mask = and i32 %.177150, 4095
  %i.bl = zext nneg i32 %.mask to i64
  %i.bm = xor i32 %i.ah, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  %i.bp = and i64 %i.bo, 4095
  %i.bq = sub nsw i64 %i.bp, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check165 = icmp ult i16 %i.af, 29
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i32 %4, 28
  %n.vec = and i32 %4, 8160                       ; 5 uses
  %i.bs = trunc nuw nsw i32 %n.vec to i16
  %i.bt = sub nsw i16 %i.ag, %i.bs
  %i.bu = add i32 %.177150, %n.vec                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i32 %.177150, %index                ; 2 uses
  %i.bw = add i32 %i.bv, %i.ai
  %i.bx = and i32 %i.bw, 4095
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !tbaa !13
  %wide.load166 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !13
  %i.cb = and i32 %i.bv, 4095
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %wide.load, ptr %i.cd, align 1, !tbaa !13
  store <16 x i8> %wide.load166, ptr %i.ce, align 1, !tbaa !13
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.cf = icmp eq i32 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.br, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec168 = and i32 %4, 8188                    ; 4 uses
  %i.cg = trunc nuw nsw i32 %n.vec168 to i16
  %i.ch = sub nsw i16 %i.ag, %i.cg
  %i.ci = add i32 %.177150, %n.vec168             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index169 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next171, %vec.epilog.vector.body ] ; 2 uses
  %i.cj = add i32 %.177150, %index169             ; 2 uses
  %i.ck = add i32 %i.cj, %i.ai
  %i.cl = and i32 %i.ck, 4095
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cm
  %wide.load170 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !13
  %i.co = and i32 %i.cj, 4095
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cp
  store <4 x i8> %wide.load170, ptr %i.cq, align 1, !tbaa !13
  %index.next171 = add nuw i32 %index169, 4       ; 2 uses
  %i.cr = icmp eq i32 %index.next171, %n.vec168
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n172 = icmp eq i32 %4, %n.vec168
  br i1 %cmp.n172, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0149.ph = phi i16 [ %i.ag, %iter.check ], [ %i.ag, %vector.scevcheck ], [ %i.ag, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ] ; 4 uses
  %.278148.ph = phi i32 [ %.177150, %iter.check ], [ %.177150, %vector.scevcheck ], [ %.177150, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i16 %.0149.ph, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cs = add nsw i16 %.0149.ph, -1
  %i.ct = add i32 %.278148.ph, %i.ai
  %i.cu = and i32 %i.ct, 4095
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = add i32 %.278148.ph, 1                  ; 2 uses
  %i.cz = and i32 %.278148.ph, 4095
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.da
  store i8 %i.cx, ptr %i.db, align 1, !tbaa !13
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.0149.unr = phi i16 [ %.0149.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cs, %vec.epilog.scalar.ph.prol ]
  %.278148.unr = phi i32 [ %.278148.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %i.dc = icmp eq i16 %.0149.ph, 1
  br i1 %i.dc, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0149 = phi i16 [ %i.dm, %vec.epilog.scalar.ph ], [ %.0149.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.278148 = phi i32 [ %i.ds, %vec.epilog.scalar.ph ], [ %.278148.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dd = add i32 %.278148, %i.ai
  %i.de = and i32 %i.dd, 4095
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = add i32 %.278148, 1
  %i.dj = and i32 %.278148, 4095
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dk
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !13
  %i.dm = add i16 %.0149, -2                      ; 2 uses
  %i.dn = sub i32 %.278148, %i.ah
  %i.do = and i32 %i.dn, 4095
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !13
  %i.ds = add i32 %.278148, 2                     ; 2 uses
  %i.dt = and i32 %i.di, 4095
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.du
  store i8 %i.dr, ptr %i.dv, align 1, !tbaa !13
  %.not107.1 = icmp eq i16 %i.dm, 0
  br i1 %.not107.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !68

bb.k:                                             ; preds = %bb.d
  %i.dw = icmp ne i32 %.177150, 0
  %i.dx = icmp eq i32 %i.l, 0
  %or.cond4 = and i1 %i.dw, %i.dx
  %or.cond6 = and i1 %or.cond4, %.174152
  br i1 %or.cond6, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dy = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not97 = icmp eq i64 %i.dy, 2
  br i1 %.not97, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @blobDestroy(ptr noundef nonnull %i.e) #15
  %.not98 = icmp eq ptr %2, null
  br i1 %.not98, label %.thread129, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %2, align 8, !tbaa !12
  br label %.thread129

bb.o:                                             ; preds = %bb.k
  %i.dz = zext nneg i32 %i.l to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dz
  %i.eb = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ea, i64 noundef 1) #15
  %i.ec = icmp eq i64 %i.eb, 1
  %i.ed = zext i1 %i.ec to i32
  %spec.select = add i32 %.177150, %i.ed
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.ee = call i32 @blobAddData(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i64 noundef 4096) #15 ; 0 uses
  br label %.loopexit140

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.o
  %.6.ph = phi i32 [ %i.ay, %bb.j ], [ %spec.select, %bb.o ], [ %i.ci, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ds, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ef = shl nuw nsw i32 %.075151, 1
  %i.eg = icmp samesign ult i32 %.075151, 128
  br i1 %i.eg, label %bb.d, label %.loopexit140

.loopexit140:                                     ; preds = %.loopexit, %bb.p
  %.177145 = phi i32 [ %.177150, %bb.p ], [ %.6.ph, %.loopexit ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.p ], [ 1, %.loopexit ]
  %i.eh = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 1) #15
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %.preheader, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.loopexit140
  %i.ej = and i32 %.177145, 4095
  %i.ek = zext nneg i32 %i.ej to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.076.lcssa = phi i64 [ 0, %bb.c ], [ %i.ek, %._crit_edge.loopexit ]
  %i.el = call i32 @blobAddData(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i64 noundef %.076.lcssa) #15
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  call void @blobDestroy(ptr noundef nonnull %i.e) #15
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %.thread129, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 0, ptr %2, align 8, !tbaa !12
  br label %.thread129

bb.s:                                             ; preds = %._crit_edge
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = call i64 @blobGetDataSize(ptr noundef nonnull %i.e) #15
  store i64 %i.en, ptr %2, align 8, !tbaa !12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eo = call ptr @blobToMem(ptr noundef nonnull %i.e) #15
  br label %.thread129

.thread129:                                       ; preds = %bb.g, %bb.f, %bb.n, %bb.m, %bb.q, %bb.r, %bb.b, %bb.a, %bb.u
  %.686 = phi ptr [ %i.eo, %bb.u ], [ null, %bb.a ], [ null, %bb.q ], [ null, %bb.b ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.686
}

declare i32 @cli_gentempfd_with_prefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cli_codepage_to_utf8(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @cli_ole2_get_property_name2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uniq_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @vba_normalize(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %spec.store.select14.si.unfold.false
  %.080 = phi i32 [ %.2, %spec.store.select14.si.unfold.false ], [ 0, %bb.a ] ; 8 uses
  %.07279 = phi i64 [ %i.am, %spec.store.select14.si.unfold.false ], [ 0, %bb.a ] ; 10 uses
  %.07378 = phi i64 [ %.3, %spec.store.select14.si.unfold.false ], [ 0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.07279
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.b, label %.loopexit [
    i8 34, label %bb.c
    i8 95, label %.preheader148.preheader
    i8 13, label %.preheader.peel
    i8 10, label %bb.e
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

.preheader.peel:                                  ; preds = %.lr.ph.jt2.peel, %.lr.ph, %.lr.ph.jt0
  %.07378106.ph = phi i64 [ %.07378, %.lr.ph ], [ %.3.jt0, %.lr.ph.jt0 ], [ %i.q, %.lr.ph.jt2.peel ] ; 3 uses
  %.0727996.ph = phi i64 [ %.07279, %.lr.ph ], [ %i.an, %.lr.ph.jt0 ], [ %i.s, %.lr.ph.jt2.peel ] ; 2 uses
  %.08090.ph = phi i32 [ %.080, %.lr.ph ], [ %.2.jt0, %.lr.ph.jt0 ], [ 2, %.lr.ph.jt2.peel ] ; 2 uses
  %i.c = icmp eq i32 %.08090.ph, 2
  %i.d = add i64 %.07378106.ph, 1                 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.07378106.ph
  store i8 13, ptr %i.e, align 1, !tbaa !13
  br i1 %i.c, label %bb.b, label %spec.store.select14.si.unfold.false

bb.b:                                             ; preds = %.preheader.peel
  %i.f = add nuw i64 %.0727996.ph, 1              ; 9 uses
  %exitcond.not.jt3.peel = icmp eq i64 %i.f, %1
  br i1 %exitcond.not.jt3.peel, label %._crit_edge, label %.lr.ph.jt3.peel

.lr.ph.jt3.peel:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.h, label %.loopexit [
    i8 34, label %.thread
    i8 95, label %.preheader148.preheader
    i8 13, label %.preheader.preheader.peel.newph
    i8 10, label %.loopexit147
    i8 9, label %spec.store.select14.si.unfold.false.sink.split
    i8 32, label %spec.store.select14.si.unfold.false.sink.split
  ]

.preheader.preheader.peel.newph:                  ; preds = %.lr.ph.jt3.peel
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 13, ptr %i.i, align 1, !tbaa !13
  %i.j = add i64 %.07378106.ph, 2
  br label %spec.store.select14.si.unfold.false

.lr.ph.jt0:                                       ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13    ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 34, label %bb.c
    i8 95, label %.preheader148.preheader
    i8 13, label %.preheader.peel
    i8 10, label %spec.store.select14.si.unfold.false.sink.split
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.jt0, %.lr.ph
  %.07378104 = phi i64 [ %.3.jt0, %.lr.ph.jt0 ], [ %.07378, %.lr.ph ] ; 2 uses
  %.0727994 = phi i64 [ %i.an, %.lr.ph.jt0 ], [ %.07279, %.lr.ph ] ; 2 uses
  %.08088 = phi i32 [ %.2.jt0, %.lr.ph.jt0 ], [ %.080, %.lr.ph ] ; 2 uses
  %i.m = icmp eq i32 %.08088, 1
  br i1 %i.m, label %.thread.thread, label %.thread

end_hunk_0
