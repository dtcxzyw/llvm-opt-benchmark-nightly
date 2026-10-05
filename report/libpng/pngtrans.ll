Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngtrans?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@png_do_bgr:bb.a
  %lcmp.mod105 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.ce = load i8, ptr %.06074.epil.init, align 1, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.06074.epil.init, i64 4 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27
  store i8 %i.cg, ptr %.06074.epil.init, align 1, !tbaa !27
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %.06074.epil.init, i64 1 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.06074.epil.init, i64 5 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !27
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !27
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !27
  br label %.loopexit

.loopexit.loopexit101.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit101.unr-lcssa, %.lr.ph.preheader
  %.05772.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bv, %.loopexit.loopexit101.unr-lcssa ] ; 5 uses
  %lcmp.mod102 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cl = load i8, ptr %.05772.epil.init, align 1, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.05772.epil.init, i64 4 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  store i8 %i.cn, ptr %.05772.epil.init, align 1, !tbaa !27
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %.05772.epil.init, i64 1 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %.05772.epil.init, i64 5 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !27
  store i8 %i.cr, ptr %i.co, align 1, !tbaa !27
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit101.unr-lcssa, %.lr.ph76.epil.preheader, %.loopexit.loopexit100.unr-lcssa, %.loopexit.loopexit99.unr-lcssa, %.lr.ph79.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph82.epil, %.preheader70, %.preheader68, %.preheader66, %.preheader, %bb.c, %bb.b, %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @png_do_check_palette_indexes(ptr noalias nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i16, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.e = load i8, ptr %i.d, align 1, !tbaa !38
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = shl nuw i32 1, %i.f
  %i.h = icmp sgt i32 %i.g, %i.c
  %.not = icmp ne i16 %i.b, 0
  %or.cond.not96 = and i1 %.not, %i.h
  %i.i = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.j = icmp eq i32 %i.i, 1
  %or.cond75 = select i1 %or.cond.not96, i1 %i.j, i1 false
  br i1 %or.cond75, label %.split, label %.loopexit

.split:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 7 uses
  %i.p = load i32, ptr %1, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.r = load i8, ptr %i.q, align 1, !tbaa !42
  %i.s = zext i8 %i.r to i32
  %i.t = mul i32 %i.p, %i.s
  %i.u = sub i32 0, %i.t
  %i.v = and i32 %i.u, 7                          ; 3 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true)
  switch i32 %i.w, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader76
    i32 2, label %.preheader78
    i32 3, label %.preheader80
  ]

.preheader80:                                     ; preds = %.split
  %.not97 = icmp eq i64 %i.n, 0
  br i1 %.not97, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %.promoted = load i32, ptr %i.x, align 4, !tbaa !82
  br label %bb.r

.preheader78:                                     ; preds = %.split
  %.not98 = icmp eq i64 %i.n, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader78
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 3 uses
  %.promoted86 = load i32, ptr %i.y, align 4, !tbaa !82 ; 2 uses
  %i.z = load i8, ptr %i.o, align 1, !tbaa !27
  %i.aa = zext i8 %i.z to i32
  %i.ab = lshr i32 %i.aa, %i.v                    ; 2 uses
  %i.ac = and i32 %i.ab, 15                       ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, %.promoted86
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %.promoted86) ; 2 uses
  %i.af = lshr i32 %i.ab, 4                       ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.af, %i.ae
  %i.ah = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %i.ae) ; 2 uses
  %i.ai = or i1 %i.ad, %i.ag
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph85
  store i32 %i.ah, ptr %i.y, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph85
  %i.aj = icmp sgt i64 %i.n, 1
  br i1 %i.aj, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.o, i64 -1
  br label %bb.o

.preheader76:                                     ; preds = %.split
  %.not99 = icmp eq i64 %i.n, 0
  br i1 %.not99, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %.preheader76
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 3 uses
  %.promoted90 = load i32, ptr %i.al, align 4, !tbaa !82 ; 2 uses
  %i.am = load i8, ptr %i.o, align 1, !tbaa !27
  %i.an = zext i8 %i.am to i32
  %i.ao = lshr i32 %i.an, %i.v                    ; 4 uses
  %i.ap = and i32 %i.ao, 3                        ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %.promoted90
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %.promoted90) ; 2 uses
  %i.as = lshr i32 %i.ao, 2
  %i.at = and i32 %i.as, 3                        ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, %i.ar
  %i.av = tail call i32 @llvm.umax.i32(i32 %i.at, i32 %i.ar) ; 2 uses
  %i.aw = or i1 %i.aq, %i.au
  %i.ax = lshr i32 %i.ao, 4
  %i.ay = and i32 %i.ax, 3                        ; 2 uses
  %i.az = icmp samesign ugt i32 %i.ay, %i.av
  %spec.select.peel = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.av) ; 2 uses
  %i.ba = or i1 %i.aw, %i.az
  %i.bb = lshr i32 %i.ao, 6                       ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.bb, %spec.select.peel
  %spec.select94.peel = tail call i32 @llvm.umax.i32(i32 %i.bb, i32 %spec.select.peel) ; 2 uses
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph89
  store i32 %spec.select94.peel, ptr %i.al, align 4, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph89
  %i.be = icmp sgt i64 %i.n, 1
  br i1 %i.be, label %.peel.next106, label %.loopexit

.peel.next106:                                    ; preds = %bb.e
  %i.bf = getelementptr inbounds i8, ptr %i.o, i64 -1
  br label %bb.l

.preheader:                                       ; preds = %.split
  %.not100 = icmp eq i64 %i.n, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 3 uses
  %i.bh = load i8, ptr %i.o, align 1, !tbaa !27
  %i.bi = zext i8 %i.bh to i32
  %i.bj = lshr i32 %i.bi, %i.v
  %.not73.peel = icmp eq i32 %i.bj, 0
  br i1 %.not73.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph93
  store i32 1, ptr %i.bg, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph93
  %i.bk = icmp sgt i64 %i.n, 1
  br i1 %i.bk, label %.peel.next109, label %.loopexit

.peel.next109:                                    ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -1 ; 3 uses
  %i.bm = ptrtoaddr ptr %i.l to i64               ; 2 uses
  %i.bn = add i64 %i.n, %i.bm                     ; 2 uses
  %i.bo = add i64 %i.bn, -2
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bo)
  %i.bq = xor i64 %i.bp, -1
  %i.br = add i64 %i.bn, %i.bq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next109
  %n.vec = and i64 %i.br, -8                      ; 3 uses
  %i.bs = sub i64 0, %n.vec
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %bb.i, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.i ] ; 2 uses
  %i.bu = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 -3
  %i.bw = getelementptr i8, ptr %next.gep, i64 -7
  %wide.load = load <4 x i8>, ptr %i.bv, align 1, !tbaa !27
  %wide.load126 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !27
  %i.bx = shufflevector <4 x i8> %wide.load126, <4 x i8> %wide.load, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %.scalar = bitcast <8 x i8> %i.bx to i64
  %.not142 = icmp eq i64 %.scalar, 0
  br i1 %.not142, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vector.body
  store i32 1, ptr %i.bg, align 4, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %vector.body, %bb.h
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %bb.i
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next109, %middle.block
  %.092.ph = phi ptr [ %i.bl, %.peel.next109 ], [ %i.bt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.k
  %.092 = phi ptr [ %i.ca, %bb.k ], [ %.092.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bz = load i8, ptr %.092, align 1, !tbaa !27
  %.not73 = icmp eq i8 %i.bz, 0
  br i1 %.not73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %scalar.ph
  store i32 1, ptr %i.bg, align 4, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %scalar.ph
  %i.ca = getelementptr inbounds i8, ptr %.092, i64 -1 ; 2 uses
  %i.cb = icmp ugt ptr %i.ca, %i.l
  br i1 %i.cb, label %scalar.ph, label %.loopexit, !llvm.loop !76

bb.l:                                             ; preds = %.peel.next106, %bb.n
  %i.cc = phi i32 [ %spec.select94.peel, %.peel.next106 ], [ %spec.select94, %bb.n ] ; 2 uses
  %.188 = phi ptr [ %i.bf, %.peel.next106 ], [ %i.cu, %bb.n ] ; 2 uses
  %i.cd = load i8, ptr %.188, align 1, !tbaa !27
  %i.ce = zext i8 %i.cd to i32                    ; 4 uses
  %i.cf = and i32 %i.ce, 3                        ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %i.cc
  %i.ch = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.cc) ; 2 uses
  %i.ci = lshr i32 %i.ce, 2
  %i.cj = and i32 %i.ci, 3                        ; 2 uses
  %i.ck = icmp samesign ugt i32 %i.cj, %i.ch
  %i.cl = tail call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.ch) ; 2 uses
  %i.cm = or i1 %i.cg, %i.ck
  %i.cn = lshr i32 %i.ce, 4
  %i.co = and i32 %i.cn, 3                        ; 2 uses
  %i.cp = icmp samesign ugt i32 %i.co, %i.cl
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.co, i32 %i.cl) ; 2 uses
  %i.cq = or i1 %i.cm, %i.cp
  %i.cr = lshr i32 %i.ce, 6                       ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, %spec.select
  %spec.select94 = tail call i32 @llvm.umax.i32(i32 %i.cr, i32 %spec.select) ; 2 uses
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %spec.select94, ptr %i.al, align 4, !tbaa !82
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cu = getelementptr inbounds i8, ptr %.188, i64 -1 ; 2 uses
  %i.cv = icmp ugt ptr %i.cu, %i.l
  br i1 %i.cv, label %bb.l, label %.loopexit, !llvm.loop !77

bb.o:                                             ; preds = %.peel.next, %bb.q
  %i.cw = phi i32 [ %i.ah, %.peel.next ], [ %i.de, %bb.q ] ; 2 uses
  %.284 = phi ptr [ %i.ak, %.peel.next ], [ %i.dg, %bb.q ] ; 2 uses
  %i.cx = load i8, ptr %.284, align 1, !tbaa !27
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = and i32 %i.cy, 15                       ; 2 uses
  %i.da = icmp sgt i32 %i.cz, %i.cw
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.cw) ; 2 uses
  %i.dc = lshr i32 %i.cy, 4                       ; 2 uses
  %i.dd = icmp samesign ugt i32 %i.dc, %i.db
  %i.de = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 %i.db) ; 2 uses
  %i.df = or i1 %i.da, %i.dd
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.de, ptr %i.y, align 4, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.dg = getelementptr inbounds i8, ptr %.284, i64 -1 ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.l
  br i1 %i.dh, label %bb.o, label %.loopexit, !llvm.loop !78

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %i.di = phi i32 [ %.promoted, %.lr.ph ], [ %i.dm, %bb.t ] ; 2 uses
  %.382 = phi ptr [ %i.o, %.lr.ph ], [ %i.dn, %bb.t ] ; 2 uses
  %i.dj = load i8, ptr %.382, align 1, !tbaa !27
  %i.dk = zext i8 %i.dj to i32                    ; 3 uses
  %i.dl = icmp slt i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.dk, ptr %i.x, align 4, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.dm = phi i32 [ %i.di, %bb.r ], [ %i.dk, %bb.s ]
  %i.dn = getelementptr inbounds i8, ptr %.382, i64 -1 ; 2 uses
  %i.do = icmp ugt ptr %i.dn, %i.l
  br i1 %i.do, label %bb.r, label %.loopexit, !llvm.loop !79

.loopexit:                                        ; preds = %bb.t, %bb.q, %bb.n, %bb.k, %middle.block, %bb.c, %bb.e, %bb.g, %.preheader80, %.preheader78, %.preheader76, %.preheader, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_user_transform_info(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28
  %i.d = and i32 %i.c, 32768
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = and i32 %i.f, 64
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %1, ptr %i.h, align 8, !tbaa !43
  %i.i = trunc i32 %2 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %i.i, ptr %i.j, align 8, !tbaa !84
  %i.k = trunc i32 %3 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 %i.k, ptr %i.l, align 1, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @png_get_user_transform_ptr(ptr noalias nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @png_get_current_row_number(ptr noalias nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i8 @png_get_current_pass_number(ptr noalias nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.b = load i8, ptr %i.a, align 1, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.b, %bb.b ], [ 8, %bb.a ]
  ret i8 %.0
}
end_hunk_0
